@interface _UIMotionEffectEvent
- (_UIMotionEffectEvent)initWithTimestamp:(double)timestamp;
@end

@implementation _UIMotionEffectEvent

- (_UIMotionEffectEvent)initWithTimestamp:(double)timestamp
{
  v5.receiver = self;
  v5.super_class = _UIMotionEffectEvent;
  result = [(_UIMotionEffectEvent *)&v5 init];
  if (result)
  {
    result->_timestamp = timestamp;
  }

  return result;
}

@end