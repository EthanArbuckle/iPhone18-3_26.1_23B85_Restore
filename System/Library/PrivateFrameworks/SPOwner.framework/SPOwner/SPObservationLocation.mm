@interface SPObservationLocation
- (SPObservationLocation)initWithCoder:(id)coder;
- (SPObservationLocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy speed:(double)speed speedAccuracy:(double)self0 course:(double)self1 courseAccuracy:(double)self2 floorLevel:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPObservationLocation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPObservationLocation alloc];
  timestamp = [(SPObservationLocation *)self timestamp];
  [(SPObservationLocation *)self latitude];
  v26 = v6;
  [(SPObservationLocation *)self longitude];
  v8 = v7;
  [(SPObservationLocation *)self horizontalAccuracy];
  v10 = v9;
  [(SPObservationLocation *)self altitude];
  v12 = v11;
  [(SPObservationLocation *)self verticalAccuracy];
  v14 = v13;
  [(SPObservationLocation *)self speed];
  v16 = v15;
  [(SPObservationLocation *)self speedAccuracy];
  v18 = v17;
  [(SPObservationLocation *)self course];
  v20 = v19;
  [(SPObservationLocation *)self courseAccuracy];
  v22 = v21;
  floorLevel = [(SPObservationLocation *)self floorLevel];
  v24 = [(SPObservationLocation *)v4 initWithTimestamp:timestamp latitude:floorLevel longitude:v26 horizontalAccuracy:v8 altitude:v10 verticalAccuracy:v12 speed:v14 speedAccuracy:v16 course:v18 courseAccuracy:v20 floorLevel:v22];

  return v24;
}

- (SPObservationLocation)initWithTimestamp:(id)timestamp latitude:(double)latitude longitude:(double)longitude horizontalAccuracy:(double)accuracy altitude:(double)altitude verticalAccuracy:(double)verticalAccuracy speed:(double)speed speedAccuracy:(double)self0 course:(double)self1 courseAccuracy:(double)self2 floorLevel:(id)self3
{
  timestampCopy = timestamp;
  levelCopy = level;
  v29.receiver = self;
  v29.super_class = SPObservationLocation;
  v26 = [(SPObservationLocation *)&v29 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_timestamp, timestamp);
    v27->_latitude = latitude;
    v27->_longitude = longitude;
    v27->_horizontalAccuracy = accuracy;
    v27->_altitude = altitude;
    v27->_verticalAccuracy = verticalAccuracy;
    v27->_speed = speed;
    v27->_speedAccuracy = speedAccuracy;
    v27->_course = course;
    v27->_courseAccuracy = courseAccuracy;
    objc_storeStrong(&v27->_floorLevel, level);
  }

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [coderCopy encodeDouble:@"speed" forKey:self->_speed];
  [coderCopy encodeDouble:@"speedAccuracy" forKey:self->_speedAccuracy];
  [coderCopy encodeDouble:@"course" forKey:self->_course];
  [coderCopy encodeDouble:@"courseAccuracy" forKey:self->_courseAccuracy];
  [coderCopy encodeObject:self->_floorLevel forKey:@"floorLevel"];
}

- (SPObservationLocation)initWithCoder:(id)coder
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
  [coderCopy decodeDoubleForKey:@"altitude"];
  self->_altitude = v10;
  [coderCopy decodeDoubleForKey:@"verticalAccuracy"];
  self->_verticalAccuracy = v11;
  [coderCopy decodeDoubleForKey:@"speed"];
  self->_speed = v12;
  [coderCopy decodeDoubleForKey:@"speedAccuracy"];
  self->_speedAccuracy = v13;
  [coderCopy decodeDoubleForKey:@"course"];
  self->_course = v14;
  [coderCopy decodeDoubleForKey:@"courseAccuracy"];
  self->_courseAccuracy = v15;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floorLevel"];

  floorLevel = self->_floorLevel;
  self->_floorLevel = v16;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(SPObservationLocation *)self latitude];
  v25 = v4;
  [(SPObservationLocation *)self longitude];
  v6 = v5;
  [(SPObservationLocation *)self horizontalAccuracy];
  v8 = v7;
  [(SPObservationLocation *)self altitude];
  v10 = v9;
  [(SPObservationLocation *)self verticalAccuracy];
  v12 = v11;
  [(SPObservationLocation *)self speed];
  v14 = v13;
  [(SPObservationLocation *)self speedAccuracy];
  v16 = v15;
  [(SPObservationLocation *)self course];
  v18 = v17;
  [(SPObservationLocation *)self courseAccuracy];
  v20 = v19;
  floorLevel = [(SPObservationLocation *)self floorLevel];
  timestamp = [(SPObservationLocation *)self timestamp];
  v23 = [v3 stringWithFormat:@"SPObservationLocation Latitude: %f Longitude: %f hAcc: %f alt: %f(acc:%f) speed: %f(acc:%f) course: %f(acc:%f) floor: %@ %@", v25, v6, v8, v10, v12, v14, v16, v18, v20, floorLevel, timestamp];

  return v23;
}

@end