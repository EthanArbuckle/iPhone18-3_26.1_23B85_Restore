@interface _UIFocusAnimationContext
- (_UIFocusAnimationContext)initWithDuration:(double)duration;
@end

@implementation _UIFocusAnimationContext

- (_UIFocusAnimationContext)initWithDuration:(double)duration
{
  v5.receiver = self;
  v5.super_class = _UIFocusAnimationContext;
  result = [(_UIFocusAnimationContext *)&v5 init];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

@end