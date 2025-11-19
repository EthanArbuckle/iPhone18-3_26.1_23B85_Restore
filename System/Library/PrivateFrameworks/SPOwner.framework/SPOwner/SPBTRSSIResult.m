@interface SPBTRSSIResult
- (SPBTRSSIResult)initWithBeaconIdentifier:(id)a3 timestamp:(id)a4 bucket:(int64_t)a5 rssi:(int64_t)a6;
- (SPBTRSSIResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBTRSSIResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBTRSSIResult alloc];
  v5 = [(SPBTRSSIResult *)self beaconIdentifier];
  v6 = [(SPBTRSSIResult *)self timestamp];
  v7 = [(SPBTRSSIResult *)v4 initWithBeaconIdentifier:v5 timestamp:v6 bucket:[(SPBTRSSIResult *)self bucket] rssi:[(SPBTRSSIResult *)self rssi]];

  return v7;
}

- (SPBTRSSIResult)initWithBeaconIdentifier:(id)a3 timestamp:(id)a4 bucket:(int64_t)a5 rssi:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SPBTRSSIResult;
  v13 = [(SPBTRSSIResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_beaconIdentifier, a3);
    objc_storeStrong(&v14->_timestamp, a4);
    v14->_bucket = a5;
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
  [v5 encodeInteger:self->_bucket forKey:@"bucket"];
  [v5 encodeInteger:self->_rssi forKey:@"rssi"];
}

- (SPBTRSSIResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v7;

  self->_bucket = [v4 decodeIntegerForKey:@"bucket"];
  v9 = [v4 decodeIntegerForKey:@"rssi"];

  self->_rssi = v9;
  return self;
}

- (id)description
{
  bucket = self->_bucket;
  if (bucket > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279B58F18[bucket];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(SPBTRSSIResult *)self beaconIdentifier];
  v8 = [v5 stringWithFormat:@"<%@ %p: %@ %@ %ld>", v6, self, v7, v4, -[SPBTRSSIResult rssi](self, "rssi")];

  return v8;
}

@end