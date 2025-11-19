@interface PRAngleMeasurement
+ (PRAngleMeasurement)measurementWithAngle:(double)a3 uncertainty:(double)a4;
- (BOOL)isEqual:(id)a3;
- (PRAngleMeasurement)initWithAngle:(double)a3 uncertainty:(double)a4;
- (PRAngleMeasurement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRAngleMeasurement

- (PRAngleMeasurement)initWithAngle:(double)a3 uncertainty:(double)a4
{
  v7.receiver = self;
  v7.super_class = PRAngleMeasurement;
  result = [(PRAngleMeasurement *)&v7 init];
  if (result)
  {
    result->_measurement = a3;
    result->_uncertainty = a4;
  }

  return result;
}

+ (PRAngleMeasurement)measurementWithAngle:(double)a3 uncertainty:(double)a4
{
  v4 = [[PRAngleMeasurement alloc] initWithAngle:a3 uncertainty:a4];

  return v4;
}

- (PRAngleMeasurement)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"AngleMeasurement"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"AngleUncertainty"];
  v8 = v7;

  return [(PRAngleMeasurement *)self initWithAngle:v6 uncertainty:v8];
}

- (void)encodeWithCoder:(id)a3
{
  measurement = self->_measurement;
  v5 = a3;
  [v5 encodeDouble:@"AngleMeasurement" forKey:measurement];
  [v5 encodeDouble:@"AngleUncertainty" forKey:self->_uncertainty];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRAngleMeasurement alloc];
  measurement = self->_measurement;
  uncertainty = self->_uncertainty;

  return [(PRAngleMeasurement *)v4 initWithAngle:measurement uncertainty:uncertainty];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PRAngleMeasurement *)self measurement];
    v7 = v6;
    [v5 measurement];
    if (v7 == v8)
    {
      [(PRAngleMeasurement *)self uncertainty];
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