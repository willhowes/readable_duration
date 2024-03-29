require 'readable_duration'

describe '#readable_duration' do
  it 'Handles 1 second' do
    expect(readable_duration(1)).to eq("1 second")
  end

  it 'Handles 2 seconds' do
    expect(readable_duration(2)).to eq("2 seconds")
  end

  it 'Handles 62 seconds correctly' do
    expect(readable_duration(62)).to eq("1 minute and 2 seconds")
  end

  it 'handles 61 seconds correctly' do
    expect(readable_duration(61)).to eq("1 minute and 1 second")
  end

  it 'handles 2 minutes' do
    expect(readable_duration(120)).to eq("2 minutes")
  end

  it 'handles 1 hour' do
    expect(readable_duration(3600)).to eq("1 hour")
  end

  it 'handles 2 hours' do
    expect(readable_duration(7200)).to eq("2 hours")
  end

  it 'handles 1 hour and 2 minutes' do
    expect(readable_duration(3720)).to eq("1 hour and 2 minutes")
  end

  it 'handles 1 hour, 1 minute and 2 seconds' do
    expect(readable_duration(3662)).to eq("1 hour, 1 minute and 2 seconds")
  end

  it 'handles 1 day' do
    expect(readable_duration(86400)).to eq('1 day')
  end

  it 'handles 2 days' do
    expect(readable_duration(172800)).to eq('2 days')
  end

  it 'handles 2 days, 2 hours, 2 minutes and 2 seconds' do
    expect(readable_duration(180122)).to eq('2 days, 2 hours, 2 minutes and 2 seconds')
  end

  it 'handles 1 year' do
    expect(readable_duration(31536000)).to eq('1 year')
  end

  it 'handles 1 year, 2 days, 2 minutes and 2 seconds' do
    expect(readable_duration(31716122)).to eq('1 year, 2 days, 2 hours, 2 minutes and 2 seconds')
  end

  it 'returns "now" if 0 given' do
    expect(readable_duration(0)).to eq('now')
  end
end
