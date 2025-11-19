@interface RTMotionActivityPedometerData
- (BOOL)isEqual:(id)a3;
- (RTMotionActivityPedometerData)initWithCoder:(id)a3;
- (RTMotionActivityPedometerData)initWithDateInterval:(id)a3 numberOfSteps:(unint64_t)a4 distance:(double)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTMotionActivityPedometerData

- (RTMotionActivityPedometerData)initWithDateInterval:(id)a3 numberOfSteps:(unint64_t)a4 distance:(double)a5
{
  v9 = a3;
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = RTMotionActivityPedometerData;
    v10 = [(RTMotionActivityPedometerData *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_dateInterval, a3);
      v11->_numberOfSteps = a4;
      v11->_distance = a5;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTMotionActivityPedometerData *)self dateInterval];
  v5 = [(RTMotionActivityPedometerData *)self numberOfSteps];
  [(RTMotionActivityPedometerData *)self distance];
  v7 = [v3 stringWithFormat:@"dateInterval, %@, number of steps, %lu, distance, %.3f, ", v4, v5, v6];

  return v7;
}

- (RTMotionActivityPedometerData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"DateInterval"];
  v6 = [v4 decodeIntegerForKey:@"NumberOfSteps"];
  [v4 decodeDoubleForKey:@"Distance"];
  v8 = v7;

  v9 = [(RTMotionActivityPedometerData *)self initWithDateInterval:v5 numberOfSteps:v6 distance:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"DateInterval"];
  [v5 encodeInteger:self->_numberOfSteps forKey:@"NumberOfSteps"];
  [v5 encodeDouble:@"Distance" forKey:self->_distance];
}

- (unint64_t)hash
{
  v3 = [(RTMotionActivityPedometerData *)self dateInterval];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTMotionActivityPedometerData numberOfSteps](self, "numberOfSteps")}];
  v6 = [v5 hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(RTMotionActivityPedometerData *)self distance];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTMotionActivityPedometerData *)self dateInterval];
      v7 = [(RTMotionActivityPedometerData *)v5 dateInterval];
      if ([v6 isEqualToDateInterval:v7] && (v8 = -[RTMotionActivityPedometerData numberOfSteps](self, "numberOfSteps"), v8 == -[RTMotionActivityPedometerData numberOfSteps](v5, "numberOfSteps")))
      {
        [(RTMotionActivityPedometerData *)self distance];
        v10 = v9;
        [(RTMotionActivityPedometerData *)v5 distance];
        v12 = v10 == v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end