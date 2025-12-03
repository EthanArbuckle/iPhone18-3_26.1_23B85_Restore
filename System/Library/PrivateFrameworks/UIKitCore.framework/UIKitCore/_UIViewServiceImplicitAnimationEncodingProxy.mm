@interface _UIViewServiceImplicitAnimationEncodingProxy
+ (id)proxyEncodingAnimationsForTarget:(id)target controlMessageTarget:(id)messageTarget;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIViewServiceImplicitAnimationEncodingProxy

+ (id)proxyEncodingAnimationsForTarget:(id)target controlMessageTarget:(id)messageTarget
{
  messageTargetCopy = messageTarget;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____UIViewServiceImplicitAnimationEncodingProxy;
  v7 = objc_msgSendSuper2(&v10, sel_proxyWithTarget_, target);
  v8 = v7[2];
  v7[2] = messageTargetCopy;

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (pthread_main_np() == 1)
  {
    v5 = +[UIView _currentAnimationAttributes];
    if (v5)
    {
      controlMessageTarget = self->_controlMessageTarget;
      if (controlMessageTarget)
      {
        v7 = NSStringFromSelector([invocationCopy selector]);
        [controlMessageTarget __animateNextInvocationOfSelector:v7 withAnimationAttributes:v5 animationsEnabled:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UIViewServiceImplicitAnimationEncodingProxy;
  [(_UITargetedProxy *)&v8 forwardInvocation:invocationCopy];
}

@end