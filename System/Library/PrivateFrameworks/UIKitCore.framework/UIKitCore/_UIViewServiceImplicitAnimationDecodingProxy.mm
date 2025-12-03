@interface _UIViewServiceImplicitAnimationDecodingProxy
+ (id)proxyDecodingAnimationsForTarget:(id)target;
- (void)__animateNextInvocationOfSelector:(id)selector withAnimationAttributes:(id)attributes animationsEnabled:(BOOL)enabled;
- (void)forwardInvocation:(id)invocation;
@end

@implementation _UIViewServiceImplicitAnimationDecodingProxy

+ (id)proxyDecodingAnimationsForTarget:(id)target
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____UIViewServiceImplicitAnimationDecodingProxy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, target);

  return v3;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if ([invocationCopy selector] == self->_implicitAnimationSelector && (v5 = self->_animationAttributes) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___UIViewServiceImplicitAnimationDecodingProxy_forwardInvocation___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = invocationCopy;
    selfCopy = self;
    [UIView _animateWithAttributes:v5 animations:v8 completion:0];
    self->_implicitAnimationSelector = 0;
    animationAttributes = self->_animationAttributes;
    self->_animationAttributes = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIViewServiceImplicitAnimationDecodingProxy;
    [(_UITargetedProxy *)&v7 forwardInvocation:invocationCopy];
  }
}

- (void)__animateNextInvocationOfSelector:(id)selector withAnimationAttributes:(id)attributes animationsEnabled:(BOOL)enabled
{
  objc_storeStrong(&self->_animationAttributes, attributes);
  selectorCopy = selector;
  self->_animationsEnabled = enabled;
  p_implicitAnimationSelector = &self->_implicitAnimationSelector;
  v10 = NSSelectorFromString(selectorCopy);

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *p_implicitAnimationSelector = v11;
}

@end