@interface _UIFocusAnimationContext
- (_UIFocusAnimationContext)initWithDuration:(double)a3;
@end

@implementation _UIFocusAnimationContext

- (_UIFocusAnimationContext)initWithDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIFocusAnimationContext;
  result = [(_UIFocusAnimationContext *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

@end