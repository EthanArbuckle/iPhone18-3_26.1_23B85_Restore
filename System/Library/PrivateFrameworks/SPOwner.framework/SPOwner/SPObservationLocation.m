@interface SPObservationLocation
- (SPObservationLocation)initWithCoder:(id)a3;
- (SPObservationLocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 altitude:(double)a7 verticalAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 course:(double)a11 courseAccuracy:(double)a12 floorLevel:(id)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPObservationLocation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPObservationLocation alloc];
  v5 = [(SPObservationLocation *)self timestamp];
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
  v23 = [(SPObservationLocation *)self floorLevel];
  v24 = [(SPObservationLocation *)v4 initWithTimestamp:v5 latitude:v23 longitude:v26 horizontalAccuracy:v8 altitude:v10 verticalAccuracy:v12 speed:v14 speedAccuracy:v16 course:v18 courseAccuracy:v20 floorLevel:v22];

  return v24;
}

- (SPObservationLocation)initWithTimestamp:(id)a3 latitude:(double)a4 longitude:(double)a5 horizontalAccuracy:(double)a6 altitude:(double)a7 verticalAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 course:(double)a11 courseAccuracy:(double)a12 floorLevel:(id)a13
{
  v24 = a3;
  v25 = a13;
  v29.receiver = self;
  v29.super_class = SPObservationLocation;
  v26 = [(SPObservationLocation *)&v29 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_timestamp, a3);
    v27->_latitude = a4;
    v27->_longitude = a5;
    v27->_horizontalAccuracy = a6;
    v27->_altitude = a7;
    v27->_verticalAccuracy = a8;
    v27->_speed = a9;
    v27->_speedAccuracy = a10;
    v27->_course = a11;
    v27->_courseAccuracy = a12;
    objc_storeStrong(&v27->_floorLevel, a13);
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeDouble:@"altitude" forKey:self->_altitude];
  [v5 encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [v5 encodeDouble:@"speed" forKey:self->_speed];
  [v5 encodeDouble:@"speedAccuracy" forKey:self->_speedAccuracy];
  [v5 encodeDouble:@"course" forKey:self->_course];
  [v5 encodeDouble:@"courseAccuracy" forKey:self->_courseAccuracy];
  [v5 encodeObject:self->_floorLevel forKey:@"floorLevel"];
}

- (SPObservationLocation)initWithCoder:(id)a3
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
  [v4 decodeDoubleForKey:@"altitude"];
  self->_altitude = v10;
  [v4 decodeDoubleForKey:@"verticalAccuracy"];
  self->_verticalAccuracy = v11;
  [v4 decodeDoubleForKey:@"speed"];
  self->_speed = v12;
  [v4 decodeDoubleForKey:@"speedAccuracy"];
  self->_speedAccuracy = v13;
  [v4 decodeDoubleForKey:@"course"];
  self->_course = v14;
  [v4 decodeDoubleForKey:@"courseAccuracy"];
  self->_courseAccuracy = v15;
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floorLevel"];

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
  v21 = [(SPObservationLocation *)self floorLevel];
  v22 = [(SPObservationLocation *)self timestamp];
  v23 = [v3 stringWithFormat:@"SPObservationLocation Latitude: %f Longitude: %f hAcc: %f alt: %f(acc:%f) speed: %f(acc:%f) course: %f(acc:%f) floor: %@ %@", v25, v6, v8, v10, v12, v14, v16, v18, v20, v21, v22];

  return v23;
}

@end