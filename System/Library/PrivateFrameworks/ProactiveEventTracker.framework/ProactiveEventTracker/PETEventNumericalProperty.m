@interface PETEventNumericalProperty
- (BOOL)isValidValue:(id)a3;
- (PETEventNumericalProperty)initWithName:(id)a3 range:(_NSRange)a4 clampValues:(BOOL)a5;
- (_NSRange)validRange;
- (id)_loggingKeyStringRepresentationForValue:(id)a3;
- (id)description;
- (unint64_t)_unsignedIntegerValueForNumericValue:(id)a3;
@end

@implementation PETEventNumericalProperty

- (unint64_t)_unsignedIntegerValueForNumericValue:(id)a3
{
  if (self->_clampValues)
  {
    p_validRange = &self->_validRange;
    location = self->_validRange.location;
    v6 = [a3 unsignedIntegerValue];
    v7 = p_validRange->location + p_validRange->length - 1;
    if (v6 < v7)
    {
      v7 = v6;
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

    return [a3 unsignedIntegerValue];
  }
}

- (id)_loggingKeyStringRepresentationForValue:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PETEventNumericalProperty *)self isValidValue:v4])
  {
    v11 = 0;
    v5 = [(PETEventNumericalProperty *)self _unsignedIntegerValueForNumericValue:v4];
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

- (BOOL)isValidValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_clampValues)
    {
      v5 = 1;
    }

    else
    {
      v6 = [v4 unsignedIntegerValue];
      location = self->_validRange.location;
      v9 = v6 >= location;
      v8 = v6 - location;
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
  v4 = [(PETEventProperty *)self name];
  v5 = NSStringFromRange(self->_validRange);
  v6 = [v3 stringWithFormat:@"Numerical: Name=%@ Range=%@", v4, v5];

  return v6;
}

- (PETEventNumericalProperty)initWithName:(id)a3 range:(_NSRange)a4 clampValues:(BOOL)a5
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = PETEventNumericalProperty;
  result = [(PETEventProperty *)&v9 initWithName:a3];
  if (result)
  {
    result->_validRange.location = location;
    result->_validRange.length = length;
    result->_clampValues = a5;
  }

  return result;
}

@end