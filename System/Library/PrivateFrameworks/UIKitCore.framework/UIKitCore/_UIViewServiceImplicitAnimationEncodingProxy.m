@interface _UIViewServiceImplicitAnimationEncodingProxy
+ (id)proxyEncodingAnimationsForTarget:(id)a3 controlMessageTarget:(id)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIViewServiceImplicitAnimationEncodingProxy

+ (id)proxyEncodingAnimationsForTarget:(id)a3 controlMessageTarget:(id)a4
{
  v6 = a4;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____UIViewServiceImplicitAnimationEncodingProxy;
  v7 = objc_msgSendSuper2(&v10, sel_proxyWithTarget_, a3);
  v8 = v7[2];
  v7[2] = v6;

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (pthread_main_np() == 1)
  {
    v5 = +[UIView _currentAnimationAttributes];
    if (v5)
    {
      controlMessageTarget = self->_controlMessageTarget;
      if (controlMessageTarget)
      {
        v7 = NSStringFromSelector([v4 selector]);
        [controlMessageTarget __animateNextInvocationOfSelector:v7 withAnimationAttributes:v5 animationsEnabled:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UIViewServiceImplicitAnimationEncodingProxy;
  [(_UITargetedProxy *)&v8 forwardInvocation:v4];
}

@end