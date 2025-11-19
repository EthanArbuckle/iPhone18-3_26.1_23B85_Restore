@interface RTMapsSupportOptions
- (RTMapsSupportOptions)initWithDateInterval:(id)a3 location:(id)a4 distance:(double)a5;
@end

@implementation RTMapsSupportOptions

- (RTMapsSupportOptions)initWithDateInterval:(id)a3 location:(id)a4 distance:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RTMapsSupportOptions;
  v11 = [(RTMapsSupportOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, a3);
    objc_storeStrong(&v12->_location, a4);
    v12->_distance = a5;
  }

  return v12;
}

@end