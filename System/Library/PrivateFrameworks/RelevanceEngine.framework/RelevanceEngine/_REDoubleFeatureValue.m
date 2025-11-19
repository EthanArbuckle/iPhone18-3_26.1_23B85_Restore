@interface _REDoubleFeatureValue
+ (id)featureValueWithDouble:(double)a3;
- (BOOL)isEqual:(id)a3;
- (_REDoubleFeatureValue)initWithValue:(double)a3;
- (unint64_t)hash;
@end

@implementation _REDoubleFeatureValue

- (_REDoubleFeatureValue)initWithValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = _REDoubleFeatureValue;
  result = [(_REDoubleFeatureValue *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

+ (id)featureValueWithDouble:(double)a3
{
  if (featureValueWithDouble__onceToken != -1)
  {
    +[_REDoubleFeatureValue featureValueWithDouble:];
  }

  if (fabs(a3) < *&REFloatingPointTaggedPointerPrecision)
  {
    v4 = featureValueWithDouble__ZeroValue;
LABEL_7:
    v5 = v4;
    goto LABEL_9;
  }

  if (fabs(a3 + -1.0) < *&REFloatingPointTaggedPointerPrecision)
  {
    v4 = featureValueWithDouble__OneValue;
    goto LABEL_7;
  }

  v5 = [[_REDoubleFeatureValue alloc] initWithValue:a3];
LABEL_9:

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_value, v4->_value) < *&REFloatingPointTaggedPointerPrecision;
  }

  return v5;
}

@end