@interface _UIEventComponentPhaseValue
- (_UIEventComponentPhaseValue)initWithValue:(int64_t)value underlyingValue:(int64_t)underlyingValue;
@end

@implementation _UIEventComponentPhaseValue

- (_UIEventComponentPhaseValue)initWithValue:(int64_t)value underlyingValue:(int64_t)underlyingValue
{
  v7.receiver = self;
  v7.super_class = _UIEventComponentPhaseValue;
  result = [(_UIEventComponentPhaseValue *)&v7 init];
  if (result)
  {
    result->_value = value;
    result->_underlyingValue = underlyingValue;
  }

  return result;
}

@end