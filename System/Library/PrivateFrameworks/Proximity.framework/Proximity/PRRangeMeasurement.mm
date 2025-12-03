@interface PRRangeMeasurement
+ (PRRangeMeasurement)measurementWithRange:(double)range uncertainty:(double)uncertainty;
- (BOOL)isEqual:(id)equal;
- (PRRangeMeasurement)initWithCoder:(id)coder;
- (PRRangeMeasurement)initWithRange:(double)range uncertainty:(double)uncertainty;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRRangeMeasurement

- (PRRangeMeasurement)initWithRange:(double)range uncertainty:(double)uncertainty
{
  v7.receiver = self;
  v7.super_class = PRRangeMeasurement;
  result = [(PRRangeMeasurement *)&v7 init];
  if (result)
  {
    result->_measurement = range;
    result->_uncertainty = uncertainty;
  }

  return result;
}

+ (PRRangeMeasurement)measurementWithRange:(double)range uncertainty:(double)uncertainty
{
  v4 = [[PRRangeMeasurement alloc] initWithRange:range uncertainty:uncertainty];

  return v4;
}

- (PRRangeMeasurement)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"RangeMeasurement"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"RangeUncertainty"];
  v8 = v7;

  return [(PRRangeMeasurement *)self initWithRange:v6 uncertainty:v8];
}

- (void)encodeWithCoder:(id)coder
{
  measurement = self->_measurement;
  coderCopy = coder;
  [coderCopy encodeDouble:@"RangeMeasurement" forKey:measurement];
  [coderCopy encodeDouble:@"RangeUncertainty" forKey:self->_uncertainty];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRRangeMeasurement alloc];
  measurement = self->_measurement;
  uncertainty = self->_uncertainty;

  return [(PRRangeMeasurement *)v4 initWithRange:measurement uncertainty:uncertainty];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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