@interface RTMapsSupportOptions
- (RTMapsSupportOptions)initWithDateInterval:(id)interval location:(id)location distance:(double)distance;
@end

@implementation RTMapsSupportOptions

- (RTMapsSupportOptions)initWithDateInterval:(id)interval location:(id)location distance:(double)distance
{
  intervalCopy = interval;
  locationCopy = location;
  v14.receiver = self;
  v14.super_class = RTMapsSupportOptions;
  v11 = [(RTMapsSupportOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, interval);
    objc_storeStrong(&v12->_location, location);
    v12->_distance = distance;
  }

  return v12;
}

@end