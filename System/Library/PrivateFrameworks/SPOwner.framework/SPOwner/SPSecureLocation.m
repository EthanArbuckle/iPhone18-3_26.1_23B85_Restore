@interface SPSecureLocation
+ (id)_stringFromMotionState:(int64_t)a3;
+ (id)_stringFromPublishReason:(int64_t)a3;
- (SPSecureLocation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSecureLocation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPSecureLocation);
  v5 = [(SPSecureLocation *)self findMyId];
  [(SPSecureLocation *)v4 setFindMyId:v5];

  [(SPSecureLocation *)self longitude];
  [(SPSecureLocation *)v4 setLongitude:?];
  [(SPSecureLocation *)self latitude];
  [(SPSecureLocation *)v4 setLatitude:?];
  [(SPSecureLocation *)self speed];
  [(SPSecureLocation *)v4 setSpeed:?];
  [(SPSecureLocation *)self horizontalAccuracy];
  [(SPSecureLocation *)v4 setHorizontalAccuracy:?];
  [(SPSecureLocation *)self verticalAccuracy];
  [(SPSecureLocation *)v4 setVerticalAccuracy:?];
  [(SPSecureLocation *)self course];
  [(SPSecureLocation *)v4 setCourse:?];
  [(SPSecureLocation *)self altitude];
  [(SPSecureLocation *)v4 setAltitude:?];
  v6 = [(SPSecureLocation *)self floor];
  [(SPSecureLocation *)v4 setFloor:v6];

  v7 = [(SPSecureLocation *)self timestamp];
  [(SPSecureLocation *)v4 setTimestamp:v7];

  [(SPSecureLocation *)v4 setMotionActivityState:[(SPSecureLocation *)self motionActivityState]];
  [(SPSecureLocation *)v4 setPublishReason:[(SPSecureLocation *)self publishReason]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  findMyId = self->_findMyId;
  v5 = a3;
  [v5 encodeObject:findMyId forKey:@"findMyId"];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [v5 encodeDouble:@"speed" forKey:self->_speed];
  [v5 encodeDouble:@"course" forKey:self->_course];
  [v5 encodeDouble:@"altitude" forKey:self->_altitude];
  [v5 encodeObject:self->_floor forKey:@"floor"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_motionActivityState forKey:@"motionActivityState"];
  [v5 encodeInteger:self->_publishReason forKey:@"publishReason"];
  [v5 encodeObject:self->_locationLabel forKey:@"locationLabel"];
}

- (SPSecureLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyId"];
  findMyId = self->_findMyId;
  self->_findMyId = v5;

  [v4 decodeDoubleForKey:@"latitude"];
  self->_latitude = v7;
  [v4 decodeDoubleForKey:@"longitude"];
  self->_longitude = v8;
  [v4 decodeDoubleForKey:@"horizontalAccuracy"];
  self->_horizontalAccuracy = v9;
  [v4 decodeDoubleForKey:@"verticalAccuracy"];
  self->_verticalAccuracy = v10;
  [v4 decodeDoubleForKey:@"speed"];
  self->_speed = v11;
  [v4 decodeDoubleForKey:@"course"];
  self->_course = v12;
  [v4 decodeDoubleForKey:@"altitude"];
  self->_altitude = v13;
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floor"];
  floor = self->_floor;
  self->_floor = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v16;

  self->_motionActivityState = [v4 decodeIntegerForKey:@"motionActivityState"];
  self->_publishReason = [v4 decodeIntegerForKey:@"publishReason"];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationLabel"];

  locationLabel = self->_locationLabel;
  self->_locationLabel = v18;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPSecureLocation *)self findMyId];
  [(SPSecureLocation *)self latitude];
  v7 = v6;
  [(SPSecureLocation *)self longitude];
  v9 = v8;
  v10 = [(SPSecureLocation *)self timestamp];
  [(SPSecureLocation *)self horizontalAccuracy];
  v12 = v11;
  [(SPSecureLocation *)self verticalAccuracy];
  v14 = v13;
  [(SPSecureLocation *)self speed];
  v16 = v15;
  [(SPSecureLocation *)self altitude];
  v18 = v17;
  v19 = [(SPSecureLocation *)self floor];
  v20 = [SPSecureLocation _stringFromMotionState:[(SPSecureLocation *)self motionActivityState]];
  v21 = [SPSecureLocation _stringFromPublishReason:[(SPSecureLocation *)self publishReason]];
  v22 = [(SPSecureLocation *)self locationLabel];
  v23 = [v3 stringWithFormat:@"<%@ %p: %@ %.06f/%.06f %@ ha %.06f va %.06f sp %.06f alt %0.06f fl %@ mstate %@ pubreason %@ lbl %@>", v4, self, v5, v7, v9, v10, v12, v14, v16, v18, v19, v20, v21, v22];

  return v23;
}

+ (id)_stringFromPublishReason:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        return @"slc";
      }

      if (a3 == 2)
      {
        return @"visitStart";
      }

      return @"unknown";
    }

    if (a3 == 3)
    {
      return @"heartbeat";
    }

    else
    {
      return @"bystander";
    }
  }

  else
  {
    if (a3 > 6)
    {
      switch(a3)
      {
        case 7:
          return @"live";
        case 8:
          return @"stewie";
        case 100:
          return @"legacyLocate";
      }

      return @"unknown";
    }

    if (a3 == 5)
    {
      return @"ondemand";
    }

    else
    {
      return @"shallow";
    }
  }
}

+ (id)_stringFromMotionState:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279B59EC0[a3 - 1];
  }
}

@end