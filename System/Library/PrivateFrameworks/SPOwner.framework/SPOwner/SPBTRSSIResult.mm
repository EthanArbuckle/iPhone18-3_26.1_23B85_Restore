@interface SPBTRSSIResult
- (SPBTRSSIResult)initWithBeaconIdentifier:(id)identifier timestamp:(id)timestamp bucket:(int64_t)bucket rssi:(int64_t)rssi;
- (SPBTRSSIResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBTRSSIResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBTRSSIResult alloc];
  beaconIdentifier = [(SPBTRSSIResult *)self beaconIdentifier];
  timestamp = [(SPBTRSSIResult *)self timestamp];
  v7 = [(SPBTRSSIResult *)v4 initWithBeaconIdentifier:beaconIdentifier timestamp:timestamp bucket:[(SPBTRSSIResult *)self bucket] rssi:[(SPBTRSSIResult *)self rssi]];

  return v7;
}

- (SPBTRSSIResult)initWithBeaconIdentifier:(id)identifier timestamp:(id)timestamp bucket:(int64_t)bucket rssi:(int64_t)rssi
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = SPBTRSSIResult;
  v13 = [(SPBTRSSIResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_beaconIdentifier, identifier);
    objc_storeStrong(&v14->_timestamp, timestamp);
    v14->_bucket = bucket;
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
  [coderCopy encodeInteger:self->_bucket forKey:@"bucket"];
  [coderCopy encodeInteger:self->_rssi forKey:@"rssi"];
}

- (SPBTRSSIResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v7;

  self->_bucket = [coderCopy decodeIntegerForKey:@"bucket"];
  v9 = [coderCopy decodeIntegerForKey:@"rssi"];

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
  beaconIdentifier = [(SPBTRSSIResult *)self beaconIdentifier];
  v8 = [v5 stringWithFormat:@"<%@ %p: %@ %@ %ld>", v6, self, beaconIdentifier, v4, -[SPBTRSSIResult rssi](self, "rssi")];

  return v8;
}

@end