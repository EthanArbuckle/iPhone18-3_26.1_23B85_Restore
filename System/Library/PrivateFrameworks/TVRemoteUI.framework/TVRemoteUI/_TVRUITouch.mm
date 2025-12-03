@interface _TVRUITouch
- (_TVRUITouch)initWithTimestamp:(double)timestamp touchPhase:(int64_t)phase fingerIndex:(int64_t)index;
@end

@implementation _TVRUITouch

- (_TVRUITouch)initWithTimestamp:(double)timestamp touchPhase:(int64_t)phase fingerIndex:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = _TVRUITouch;
  result = [(_TVRUITouch *)&v9 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_phase = phase;
    result->_fingerIndex = index;
  }

  return result;
}

@end