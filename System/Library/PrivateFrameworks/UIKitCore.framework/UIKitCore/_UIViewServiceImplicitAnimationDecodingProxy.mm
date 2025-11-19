@interface _UIViewServiceImplicitAnimationDecodingProxy
+ (id)proxyDecodingAnimationsForTarget:(id)a3;
- (void)__animateNextInvocationOfSelector:(id)a3 withAnimationAttributes:(id)a4 animationsEnabled:(BOOL)a5;
- (void)forwardInvocation:(id)a3;
@end

@implementation _UIViewServiceImplicitAnimationDecodingProxy

+ (id)proxyDecodingAnimationsForTarget:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UIViewServiceImplicitAnimationDecodingProxy;
  v3 = objc_msgSendSuper2(&v5, sel_proxyWithTarget_, a3);

  return v3;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if ([v4 selector] == self->_implicitAnimationSelector && (v5 = self->_animationAttributes) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66___UIViewServiceImplicitAnimationDecodingProxy_forwardInvocation___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v4;
    v10 = self;
    [UIView _animateWithAttributes:v5 animations:v8 completion:0];
    self->_implicitAnimationSelector = 0;
    animationAttributes = self->_animationAttributes;
    self->_animationAttributes = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIViewServiceImplicitAnimationDecodingProxy;
    [(_UITargetedProxy *)&v7 forwardInvocation:v4];
  }
}

- (void)__animateNextInvocationOfSelector:(id)a3 withAnimationAttributes:(id)a4 animationsEnabled:(BOOL)a5
{
  objc_storeStrong(&self->_animationAttributes, a4);
  v8 = a3;
  self->_animationsEnabled = a5;
  p_implicitAnimationSelector = &self->_implicitAnimationSelector;
  v10 = NSSelectorFromString(v8);

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