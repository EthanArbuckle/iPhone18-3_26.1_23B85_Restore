@interface _REDoubleFeatureValue
+ (id)featureValueWithDouble:(double)double;
- (BOOL)isEqual:(id)equal;
- (_REDoubleFeatureValue)initWithValue:(double)value;
- (unint64_t)hash;
@end

@implementation _REDoubleFeatureValue

- (_REDoubleFeatureValue)initWithValue:(double)value
{
  v5.receiver = self;
  v5.super_class = _REDoubleFeatureValue;
  result = [(_REDoubleFeatureValue *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

+ (id)featureValueWithDouble:(double)double
{
  if (featureValueWithDouble__onceToken != -1)
  {
    +[_REDoubleFeatureValue featureValueWithDouble:];
  }

  if (fabs(double) < *&REFloatingPointTaggedPointerPrecision)
  {
    v4 = featureValueWithDouble__ZeroValue;
LABEL_7:
    v5 = v4;
    goto LABEL_9;
  }

  if (fabs(double + -1.0) < *&REFloatingPointTaggedPointerPrecision)
  {
    v4 = featureValueWithDouble__OneValue;
    goto LABEL_7;
  }

  v5 = [[_REDoubleFeatureValue alloc] initWithValue:double];
LABEL_9:

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_value, equalCopy->_value) < *&REFloatingPointTaggedPointerPrecision;
  }

  return v5;
}

@end