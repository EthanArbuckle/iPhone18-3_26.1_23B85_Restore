@interface PETEventNumericalProperty
- (BOOL)isValidValue:(id)value;
- (PETEventNumericalProperty)initWithName:(id)name range:(_NSRange)range clampValues:(BOOL)values;
- (_NSRange)validRange;
- (id)_loggingKeyStringRepresentationForValue:(id)value;
- (id)description;
- (unint64_t)_unsignedIntegerValueForNumericValue:(id)value;
@end

@implementation PETEventNumericalProperty

- (unint64_t)_unsignedIntegerValueForNumericValue:(id)value
{
  if (self->_clampValues)
  {
    p_validRange = &self->_validRange;
    location = self->_validRange.location;
    unsignedIntegerValue = [value unsignedIntegerValue];
    v7 = p_validRange->location + p_validRange->length - 1;
    if (unsignedIntegerValue < v7)
    {
      v7 = unsignedIntegerValue;
    }

    if (location <= v7)
    {
      return v7;
    }

    else
    {
      return location;
    }
  }

  else
  {

    return [value unsignedIntegerValue];
  }
}

- (id)_loggingKeyStringRepresentationForValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ([(PETEventNumericalProperty *)self isValidValue:valueCopy])
  {
    v11 = 0;
    v5 = [(PETEventNumericalProperty *)self _unsignedIntegerValueForNumericValue:valueCopy];
    v6 = &v11;
    do
    {
      *--v6 = (v5 % 0xA) | 0x30;
      v7 = v5 > 9;
      v5 /= 0xAuLL;
    }

    while (v7);
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:&v11 - v6 encoding:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isValidValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_clampValues)
    {
      v5 = 1;
    }

    else
    {
      unsignedIntegerValue = [valueCopy unsignedIntegerValue];
      location = self->_validRange.location;
      v9 = unsignedIntegerValue >= location;
      v8 = unsignedIntegerValue - location;
      v9 = !v9 || v8 >= self->_validRange.length;
      v5 = !v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_NSRange)validRange
{
  p_validRange = &self->_validRange;
  location = self->_validRange.location;
  length = p_validRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(PETEventProperty *)self name];
  v5 = NSStringFromRange(self->_validRange);
  v6 = [v3 stringWithFormat:@"Numerical: Name=%@ Range=%@", name, v5];

  return v6;
}

- (PETEventNumericalProperty)initWithName:(id)name range:(_NSRange)range clampValues:(BOOL)values
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = PETEventNumericalProperty;
  result = [(PETEventProperty *)&v9 initWithName:name];
  if (result)
  {
    result->_validRange.location = location;
    result->_validRange.length = length;
    result->_clampValues = values;
  }

  return result;
}

@end