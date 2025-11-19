@interface PRRangeMeasurement
+ (PRRangeMeasurement)measurementWithRange:(double)a3 uncertainty:(double)a4;
- (BOOL)isEqual:(id)a3;
- (PRRangeMeasurement)initWithCoder:(id)a3;
- (PRRangeMeasurement)initWithRange:(double)a3 uncertainty:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRRangeMeasurement

- (PRRangeMeasurement)initWithRange:(double)a3 uncertainty:(double)a4
{
  v7.receiver = self;
  v7.super_class = PRRangeMeasurement;
  result = [(PRRangeMeasurement *)&v7 init];
  if (result)
  {
    result->_measurement = a3;
    result->_uncertainty = a4;
  }

  return result;
}

+ (PRRangeMeasurement)measurementWithRange:(double)a3 uncertainty:(double)a4
{
  v4 = [[PRRangeMeasurement alloc] initWithRange:a3 uncertainty:a4];

  return v4;
}

- (PRRangeMeasurement)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"RangeMeasurement"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"RangeUncertainty"];
  v8 = v7;

  return [(PRRangeMeasurement *)self initWithRange:v6 uncertainty:v8];
}

- (void)encodeWithCoder:(id)a3
{
  measurement = self->_measurement;
  v5 = a3;
  [v5 encodeDouble:@"RangeMeasurement" forKey:measurement];
  [v5 encodeDouble:@"RangeUncertainty" forKey:self->_uncertainty];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRRangeMeasurement alloc];
  measurement = self->_measurement;
  uncertainty = self->_uncertainty;

  return [(PRRangeMeasurement *)v4 initWithRange:measurement uncertainty:uncertainty];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PRRangeMeasurement *)self measurement];
    v7 = v6;
    [v5 measurement];
    if (v7 == v8)
    {
      [(PRRangeMeasurement *)self uncertainty];
      v10 = v9;
      [v5 uncertainty];
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

  return v12;
}

@end