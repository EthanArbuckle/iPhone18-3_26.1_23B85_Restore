@interface _UIMotionEffectEvent
- (_UIMotionEffectEvent)initWithTimestamp:(double)a3;
@end

@implementation _UIMotionEffectEvent

- (_UIMotionEffectEvent)initWithTimestamp:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIMotionEffectEvent;
  result = [(_UIMotionEffectEvent *)&v5 init];
  if (result)
  {
    result->_timestamp = a3;
  }

  return result;
}

@end