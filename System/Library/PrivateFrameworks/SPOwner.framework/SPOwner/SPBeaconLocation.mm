@interface SPBeaconLocation
- (SPBeaconLocation)initWithCoder:(id)coder;
- (SPBeaconLocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy source:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconLocation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconLocation alloc];
  timestamp = [(SPBeaconLocation *)self timestamp];
  [(SPBeaconLocation *)self latitude];
  v7 = v6;
  [(SPBeaconLocation *)self longitude];
  v9 = v8;
  [(SPBeaconLocation *)self horizontalAccuracy];
  v11 = v10;
  source = [(SPBeaconLocation *)self source];
  v13 = [(SPBeaconLocation *)v4 initWithTimestamp:timestamp latitude:source longitude:v7 horizontalAccuracy:v9 source:v11];

  return v13;
}

- (SPBeaconLocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy source:(id)source
{
  timestampCopy = timestamp;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = SPBeaconLocation;
  v15 = [(SPBeaconLocation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timestamp, timestamp);
    v16->_latitude = latitude;
    v16->_longitude = longitude;
    v16->_horizontalAccuracy = accuracy;
    objc_storeStrong(&v16->_source, source);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeObject:self->_source forKey:@"source"];
}

- (SPBeaconLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  [coderCopy decodeDoubleForKey:@"latitude"];
  self->_latitude = v7;
  [coderCopy decodeDoubleForKey:@"longitude"];
  self->_longitude = v8;
  [coderCopy decodeDoubleForKey:@"horizontalAccuracy"];
  self->_horizontalAccuracy = v9;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];

  source = self->_source;
  self->_source = v10;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SPBeaconLocation *)self latitude];
  v6 = v5;
  [(SPBeaconLocation *)self longitude];
  v8 = v7;
  timestamp = [(SPBeaconLocation *)self timestamp];
  [(SPBeaconLocation *)self horizontalAccuracy];
  v11 = v10;
  source = [(SPBeaconLocation *)self source];
  v13 = [v3 stringWithFormat:@"<%@ %p: %.06f/%.06f %@ (%.0f) source: %@>", v4, self, v6, v8, timestamp, v11, source];

  return v13;
}

@end