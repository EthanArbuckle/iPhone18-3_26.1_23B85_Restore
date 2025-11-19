@interface _TVRUITouch
- (_TVRUITouch)initWithTimestamp:(double)a3 touchPhase:(int64_t)a4 fingerIndex:(int64_t)a5;
@end

@implementation _TVRUITouch

- (_TVRUITouch)initWithTimestamp:(double)a3 touchPhase:(int64_t)a4 fingerIndex:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = _TVRUITouch;
  result = [(_TVRUITouch *)&v9 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_phase = a4;
    result->_fingerIndex = a5;
  }

  return result;
}

@end