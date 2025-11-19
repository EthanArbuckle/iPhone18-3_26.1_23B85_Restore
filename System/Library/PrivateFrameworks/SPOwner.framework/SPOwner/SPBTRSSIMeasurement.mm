@interface SPBTRSSIMeasurement
- (SPBTRSSIMeasurement)initWithBeaconIdentifier:(id)a3 timestamp:(id)a4 channel:(int64_t)a5 rssi:(int64_t)a6;
- (SPBTRSSIMeasurement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBTRSSIMeasurement

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBTRSSIMeasurement alloc];
  v5 = [(SPBTRSSIMeasurement *)self beaconIdentifier];
  v6 = [(SPBTRSSIMeasurement *)self timestamp];
  v7 = [(SPBTRSSIMeasurement *)v4 initWithBeaconIdentifier:v5 timestamp:v6 channel:[(SPBTRSSIMeasurement *)self channel] rssi:[(SPBTRSSIMeasurement *)self rssi]];

  return v7;
}

- (SPBTRSSIMeasurement)initWithBeaconIdentifier:(id)a3 timestamp:(id)a4 channel:(int64_t)a5 rssi:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SPBTRSSIMeasurement;
  v13 = [(SPBTRSSIMeasurement *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_beaconIdentifier, a3);
    objc_storeStrong(&v14->_timestamp, a4);
    v14->_channel = a5;
    v14->_rssi = a6;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  beaconIdentifier = self->_beaconIdentifier;
  v5 = a3;
  [v5 encodeObject:beaconIdentifier forKey:@"beaconIdentifier"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_channel forKey:@"channel"];
  [v5 encodeInteger:self->_rssi forKey:@"rssi"];
}

- (SPBTRSSIMeasurement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v7;

  self->_channel = [v4 decodeIntegerForKey:@"channel"];
  v9 = [v4 decodeIntegerForKey:@"rssi"];

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
  v11 = [(SPBTRSSIMeasurement *)self beaconIdentifier];
  v12 = [v9 stringWithFormat:@"<%@ %p: %@ %ld %@>", v10, self, v11, -[SPBTRSSIMeasurement rssi](self, "rssi"), v8];

  return v12;
}

@end