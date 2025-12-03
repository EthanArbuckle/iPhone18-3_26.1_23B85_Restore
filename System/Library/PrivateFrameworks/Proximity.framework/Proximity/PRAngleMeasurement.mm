@interface PRAngleMeasurement
+ (PRAngleMeasurement)measurementWithAngle:(double)angle uncertainty:(double)uncertainty;
- (BOOL)isEqual:(id)equal;
- (PRAngleMeasurement)initWithAngle:(double)angle uncertainty:(double)uncertainty;
- (PRAngleMeasurement)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRAngleMeasurement

- (PRAngleMeasurement)initWithAngle:(double)angle uncertainty:(double)uncertainty
{
  v7.receiver = self;
  v7.super_class = PRAngleMeasurement;
  result = [(PRAngleMeasurement *)&v7 init];
  if (result)
  {
    result->_measurement = angle;
    result->_uncertainty = uncertainty;
  }

  return result;
}

+ (PRAngleMeasurement)measurementWithAngle:(double)angle uncertainty:(double)uncertainty
{
  v4 = [[PRAngleMeasurement alloc] initWithAngle:angle uncertainty:uncertainty];

  return v4;
}

- (PRAngleMeasurement)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"AngleMeasurement"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"AngleUncertainty"];
  v8 = v7;

  return [(PRAngleMeasurement *)self initWithAngle:v6 uncertainty:v8];
}

- (void)encodeWithCoder:(id)coder
{
  measurement = self->_measurement;
  coderCopy = coder;
  [coderCopy encodeDouble:@"AngleMeasurement" forKey:measurement];
  [coderCopy encodeDouble:@"AngleUncertainty" forKey:self->_uncertainty];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRAngleMeasurement alloc];
  measurement = self->_measurement;
  uncertainty = self->_uncertainty;

  return [(PRAngleMeasurement *)v4 initWithAngle:measurement uncertainty:uncertainty];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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