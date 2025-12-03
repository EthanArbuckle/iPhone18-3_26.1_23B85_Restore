@interface _UIFullFontSize
+ (id)defaultValue;
+ (id)valued:(double)valued;
- (BOOL)isEqual:(id)equal;
- (BOOL)setNeedsEvaluation;
- (_UIFullFontSize)initWithValue:(double)value isDefault:(BOOL)default;
- (double)valueWithEvaluationIfNeeded:(id)needed;
- (id)overrideUnlessDefault:(double)value;
@end

@implementation _UIFullFontSize

+ (id)defaultValue
{
  v2 = [_UIFullFontSize alloc];
  [off_1E70ECC18 defaultFontSize];
  v3 = [(_UIFullFontSize *)v2 initWithValue:1 isDefault:?];

  return v3;
}

- (_UIFullFontSize)initWithValue:(double)value isDefault:(BOOL)default
{
  v7.receiver = self;
  v7.super_class = _UIFullFontSize;
  result = [(_UIFullFontSize *)&v7 init];
  if (result)
  {
    result->_value = value;
    result->_isDefault = default;
    result->_needsEvaluation = default;
  }

  return result;
}

+ (id)valued:(double)valued
{
  v3 = [[_UIFullFontSize alloc] initWithValue:0 isDefault:valued];

  return v3;
}

- (id)overrideUnlessDefault:(double)value
{
  v5 = [_UIFullFontSize alloc];
  if (self->_isDefault)
  {
    value = self->_value;
  }

  v6 = [(_UIFullFontSize *)v5 initWithValue:value isDefault:?];
  if (self->_isDefault)
  {
    v6->_needsEvaluation = self->_needsEvaluation;
  }

  return v6;
}

- (BOOL)setNeedsEvaluation
{
  isDefault = self->_isDefault;
  if (isDefault)
  {
    self->_needsEvaluation = 1;
  }

  return isDefault;
}

- (double)valueWithEvaluationIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (__PAIR64__(self->_needsEvaluation, self->_isDefault) == 0x100000001)
  {
    self->_needsEvaluation = 0;
    self->_value = (*(neededCopy + 2))(neededCopy);
  }

  value = self->_value;

  return value;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isDefault = self->_isDefault;
    v7 = *(v5 + 16);
    v8 = isDefault == 1 && (v7 & 1) != 0 || isDefault == v7 && !self->_needsEvaluation && (*(v5 + 17) & 1) == 0 && vabdd_f64(self->_value, v5[1]) < 0.00000011920929;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end