@interface _UIFullFontSize
+ (id)defaultValue;
+ (id)valued:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)setNeedsEvaluation;
- (_UIFullFontSize)initWithValue:(double)a3 isDefault:(BOOL)a4;
- (double)valueWithEvaluationIfNeeded:(id)a3;
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

- (_UIFullFontSize)initWithValue:(double)a3 isDefault:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _UIFullFontSize;
  result = [(_UIFullFontSize *)&v7 init];
  if (result)
  {
    result->_value = a3;
    result->_isDefault = a4;
    result->_needsEvaluation = a4;
  }

  return result;
}

+ (id)valued:(double)a3
{
  v3 = [[_UIFullFontSize alloc] initWithValue:0 isDefault:a3];

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

- (double)valueWithEvaluationIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (__PAIR64__(self->_needsEvaluation, self->_isDefault) == 0x100000001)
  {
    self->_needsEvaluation = 0;
    self->_value = (*(v4 + 2))(v4);
  }

  value = self->_value;

  return value;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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