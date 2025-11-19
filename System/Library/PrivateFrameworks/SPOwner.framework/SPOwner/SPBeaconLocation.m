@interface SPBeaconLocation
- (SPBeaconLocation)initWithCoder:(id)a3;
- (SPBeaconLocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 source:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconLocation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconLocation alloc];
  v5 = [(SPBeaconLocation *)self timestamp];
  [(SPBeaconLocation *)self latitude];
  v7 = v6;
  [(SPBeaconLocation *)self longitude];
  v9 = v8;
  [(SPBeaconLocation *)self horizontalAccuracy];
  v11 = v10;
  v12 = [(SPBeaconLocation *)self source];
  v13 = [(SPBeaconLocation *)v4 initWithTimestamp:v5 latitude:v12 longitude:v7 horizontalAccuracy:v9 source:v11];

  return v13;
}

- (SPBeaconLocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 source:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SPBeaconLocation;
  v15 = [(SPBeaconLocation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_timestamp, a3);
    v16->_latitude = a4;
    v16->_longitude = a5;
    v16->_horizontalAccuracy = a6;
    objc_storeStrong(&v16->_source, a7);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeObject:self->_source forKey:@"source"];
}

- (SPBeaconLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v5;

  [v4 decodeDoubleForKey:@"latitude"];
  self->_latitude = v7;
  [v4 decodeDoubleForKey:@"longitude"];
  self->_longitude = v8;
  [v4 decodeDoubleForKey:@"horizontalAccuracy"];
  self->_horizontalAccuracy = v9;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];

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
  v9 = [(SPBeaconLocation *)self timestamp];
  [(SPBeaconLocation *)self horizontalAccuracy];
  v11 = v10;
  v12 = [(SPBeaconLocation *)self source];
  v13 = [v3 stringWithFormat:@"<%@ %p: %.06f/%.06f %@ (%.0f) source: %@>", v4, self, v6, v8, v9, v11, v12];

  return v13;
}

@end