@interface _UIEventComponentPhaseValue
- (_UIEventComponentPhaseValue)initWithValue:(int64_t)a3 underlyingValue:(int64_t)a4;
@end

@implementation _UIEventComponentPhaseValue

- (_UIEventComponentPhaseValue)initWithValue:(int64_t)a3 underlyingValue:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _UIEventComponentPhaseValue;
  result = [(_UIEventComponentPhaseValue *)&v7 init];
  if (result)
  {
    result->_value = a3;
    result->_underlyingValue = a4;
  }

  return result;
}

@end