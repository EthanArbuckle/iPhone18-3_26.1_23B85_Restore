@interface SPSecureLocation
+ (id)_stringFromMotionState:(int64_t)state;
+ (id)_stringFromPublishReason:(int64_t)reason;
- (SPSecureLocation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSecureLocation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPSecureLocation);
  findMyId = [(SPSecureLocation *)self findMyId];
  [(SPSecureLocation *)v4 setFindMyId:findMyId];

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
  floor = [(SPSecureLocation *)self floor];
  [(SPSecureLocation *)v4 setFloor:floor];

  timestamp = [(SPSecureLocation *)self timestamp];
  [(SPSecureLocation *)v4 setTimestamp:timestamp];

  [(SPSecureLocation *)v4 setMotionActivityState:[(SPSecureLocation *)self motionActivityState]];
  [(SPSecureLocation *)v4 setPublishReason:[(SPSecureLocation *)self publishReason]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  findMyId = self->_findMyId;
  coderCopy = coder;
  [coderCopy encodeObject:findMyId forKey:@"findMyId"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeDouble:@"verticalAccuracy" forKey:self->_verticalAccuracy];
  [coderCopy encodeDouble:@"speed" forKey:self->_speed];
  [coderCopy encodeDouble:@"course" forKey:self->_course];
  [coderCopy encodeDouble:@"altitude" forKey:self->_altitude];
  [coderCopy encodeObject:self->_floor forKey:@"floor"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_motionActivityState forKey:@"motionActivityState"];
  [coderCopy encodeInteger:self->_publishReason forKey:@"publishReason"];
  [coderCopy encodeObject:self->_locationLabel forKey:@"locationLabel"];
}

- (SPSecureLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyId"];
  findMyId = self->_findMyId;
  self->_findMyId = v5;

  [coderCopy decodeDoubleForKey:@"latitude"];
  self->_latitude = v7;
  [coderCopy decodeDoubleForKey:@"longitude"];
  self->_longitude = v8;
  [coderCopy decodeDoubleForKey:@"horizontalAccuracy"];
  self->_horizontalAccuracy = v9;
  [coderCopy decodeDoubleForKey:@"verticalAccuracy"];
  self->_verticalAccuracy = v10;
  [coderCopy decodeDoubleForKey:@"speed"];
  self->_speed = v11;
  [coderCopy decodeDoubleForKey:@"course"];
  self->_course = v12;
  [coderCopy decodeDoubleForKey:@"altitude"];
  self->_altitude = v13;
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floor"];
  floor = self->_floor;
  self->_floor = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  timestamp = self->_timestamp;
  self->_timestamp = v16;

  self->_motionActivityState = [coderCopy decodeIntegerForKey:@"motionActivityState"];
  self->_publishReason = [coderCopy decodeIntegerForKey:@"publishReason"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationLabel"];

  locationLabel = self->_locationLabel;
  self->_locationLabel = v18;

  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  findMyId = [(SPSecureLocation *)self findMyId];
  [(SPSecureLocation *)self latitude];
  v7 = v6;
  [(SPSecureLocation *)self longitude];
  v9 = v8;
  timestamp = [(SPSecureLocation *)self timestamp];
  [(SPSecureLocation *)self horizontalAccuracy];
  v12 = v11;
  [(SPSecureLocation *)self verticalAccuracy];
  v14 = v13;
  [(SPSecureLocation *)self speed];
  v16 = v15;
  [(SPSecureLocation *)self altitude];
  v18 = v17;
  floor = [(SPSecureLocation *)self floor];
  v20 = [SPSecureLocation _stringFromMotionState:[(SPSecureLocation *)self motionActivityState]];
  v21 = [SPSecureLocation _stringFromPublishReason:[(SPSecureLocation *)self publishReason]];
  locationLabel = [(SPSecureLocation *)self locationLabel];
  v23 = [v3 stringWithFormat:@"<%@ %p: %@ %.06f/%.06f %@ ha %.06f va %.06f sp %.06f alt %0.06f fl %@ mstate %@ pubreason %@ lbl %@>", v4, self, findMyId, v7, v9, timestamp, v12, v14, v16, v18, floor, v20, v21, locationLabel];

  return v23;
}

+ (id)_stringFromPublishReason:(int64_t)reason
{
  if (reason <= 4)
  {
    if (reason <= 2)
    {
      if (reason == 1)
      {
        return @"slc";
      }

      if (reason == 2)
      {
        return @"visitStart";
      }

      return @"unknown";
    }

    if (reason == 3)
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
    if (reason > 6)
    {
      switch(reason)
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

    if (reason == 5)
    {
      return @"ondemand";
    }

    else
    {
      return @"shallow";
    }
  }
}

+ (id)_stringFromMotionState:(int64_t)state
{
  if ((state - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_279B59EC0[state - 1];
  }
}

@end