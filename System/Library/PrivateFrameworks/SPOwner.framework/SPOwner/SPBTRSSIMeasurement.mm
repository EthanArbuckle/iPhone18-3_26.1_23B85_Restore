@interface SPBTRSSIMeasurement
- (SPBTRSSIMeasurement)initWithBeaconIdentifier:(id)identifier timestamp:(id)timestamp channel:(int64_t)channel rssi:(int64_t)rssi;
- (SPBTRSSIMeasurement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBTRSSIMeasurement

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBTRSSIMeasurement alloc];
  beaconIdentifier = [(SPBTRSSIMeasurement *)self beaconIdentifier];
  timestamp = [(SPBTRSSIMeasurement *)self timestamp];
  v7 = [(SPBTRSSIMeasurement *)v4 initWithBeaconIdentifier:beaconIdentifier timestamp:timestamp channel:[(SPBTRSSIMeasurement *)self channel] rssi:[(SPBTRSSIMeasurement *)self rssi]];

  return v7;
}

- (SPBTRSSIMeasurement)initWithBeaconIdentifier:(id)identifier timestamp:(id)timestamp channel:(int64_t)channel rssi:(int64_t)rssi
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = SPBTRSSIMeasurement;
  v13 = [(SPBTRSSIMeasurement *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_beaconIdentifier, identifier);
    objc_storeStrong(&v14->_timestamp, timestamp);
    v14->_channel = channel;
    v14->_rssi = rssi;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  beaconIdentifier = self->_beaconIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_channel forKey:@"channel"];
  [coderCopy encodeInteger:self->_rssi forKey:@"rssi"];
}

- (SPBTRSSIMeasurement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v7;

  self->_channel = [coderCopy decodeIntegerForKey:@"channel"];
  v9 = [coderCopy decodeIntegerForKey:@"rssi"];

  self->_rssi = v9;
  return self;
}

- (id)description
{
  channel = self->_channel;
  v4 = @"channel38";
  v5 = @"channel39";
  if (channel != 39)
  {
    v5 = 0;
  }

  if (channel != 38)
  {
    v4 = v5;
  }

  v6 = @"channelOther";
  v7 = @"channel37";
  if (channel != 37)
  {
    v7 = 0;
  }

  if (channel)
  {
    v6 = v7;
  }

  if (channel <= 37)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  beaconIdentifier = [(SPBTRSSIMeasurement *)self beaconIdentifier];
  v12 = [v9 stringWithFormat:@"<%@ %p: %@ %ld %@>", v10, self, beaconIdentifier, -[SPBTRSSIMeasurement rssi](self, "rssi"), v8];

  return v12;
}

@end