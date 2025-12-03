@interface RTMotionActivityPedometerData
- (BOOL)isEqual:(id)equal;
- (RTMotionActivityPedometerData)initWithCoder:(id)coder;
- (RTMotionActivityPedometerData)initWithDateInterval:(id)interval numberOfSteps:(unint64_t)steps distance:(double)distance;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTMotionActivityPedometerData

- (RTMotionActivityPedometerData)initWithDateInterval:(id)interval numberOfSteps:(unint64_t)steps distance:(double)distance
{
  intervalCopy = interval;
  if (intervalCopy)
  {
    v15.receiver = self;
    v15.super_class = RTMotionActivityPedometerData;
    v10 = [(RTMotionActivityPedometerData *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_dateInterval, interval);
      v11->_numberOfSteps = steps;
      v11->_distance = distance;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  dateInterval = [(RTMotionActivityPedometerData *)self dateInterval];
  numberOfSteps = [(RTMotionActivityPedometerData *)self numberOfSteps];
  [(RTMotionActivityPedometerData *)self distance];
  v7 = [v3 stringWithFormat:@"dateInterval, %@, number of steps, %lu, distance, %.3f, ", dateInterval, numberOfSteps, v6];

  return v7;
}

- (RTMotionActivityPedometerData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"DateInterval"];
  v6 = [coderCopy decodeIntegerForKey:@"NumberOfSteps"];
  [coderCopy decodeDoubleForKey:@"Distance"];
  v8 = v7;

  v9 = [(RTMotionActivityPedometerData *)self initWithDateInterval:v5 numberOfSteps:v6 distance:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"DateInterval"];
  [coderCopy encodeInteger:self->_numberOfSteps forKey:@"NumberOfSteps"];
  [coderCopy encodeDouble:@"Distance" forKey:self->_distance];
}

- (unint64_t)hash
{
  dateInterval = [(RTMotionActivityPedometerData *)self dateInterval];
  v4 = [dateInterval hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTMotionActivityPedometerData numberOfSteps](self, "numberOfSteps")}];
  v6 = [v5 hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(RTMotionActivityPedometerData *)self distance];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateInterval = [(RTMotionActivityPedometerData *)self dateInterval];
      dateInterval2 = [(RTMotionActivityPedometerData *)v5 dateInterval];
      if ([dateInterval isEqualToDateInterval:dateInterval2] && (v8 = -[RTMotionActivityPedometerData numberOfSteps](self, "numberOfSteps"), v8 == -[RTMotionActivityPedometerData numberOfSteps](v5, "numberOfSteps")))
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