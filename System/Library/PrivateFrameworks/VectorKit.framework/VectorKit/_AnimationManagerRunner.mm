@interface _AnimationManagerRunner
- (_AnimationManagerRunner)initWithAnimationManager:(void *)manager;
@end

@implementation _AnimationManagerRunner

- (_AnimationManagerRunner)initWithAnimationManager:(void *)manager
{
  v8.receiver = self;
  v8.super_class = _AnimationManagerRunner;
  v4 = [(_AnimationManagerRunner *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_animationManager = manager;
    v6 = v4;
  }

  return v5;
}

@end