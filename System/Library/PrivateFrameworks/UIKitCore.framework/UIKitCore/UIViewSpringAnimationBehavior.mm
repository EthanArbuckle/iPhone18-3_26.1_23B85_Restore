@interface UIViewSpringAnimationBehavior
+ (UIViewSpringAnimationBehavior)behaviorWithDampingRatio:(double)ratio response:(double)response;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (UIViewSpringAnimationBehavior)init;
- (void)setTrackingDampingRatio:(double)ratio response:(double)response dampingRatioSmoothing:(double)smoothing responseSmoothing:(double)responseSmoothing;
@end

@implementation UIViewSpringAnimationBehavior

- (UIViewSpringAnimationBehavior)init
{
  v8.receiver = self;
  v8.super_class = UIViewSpringAnimationBehavior;
  result = [(UIViewSpringAnimationBehavior *)&v8 init];
  if (result)
  {
    *&result->_trackingDampingRatio = xmmword_18A6836B0;
    *&result->_dampingRatio = xmmword_18A6836C0;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_dampingRatioSmoothing = _Q0;
    *&result->_inertialTargetSmoothing = xmmword_18A6836D0;
  }

  return result;
}

+ (UIViewSpringAnimationBehavior)behaviorWithDampingRatio:(double)ratio response:(double)response
{
  v6 = objc_opt_new();
  [v6 setDampingRatio:ratio response:response];

  return v6;
}

- (void)setTrackingDampingRatio:(double)ratio response:(double)response dampingRatioSmoothing:(double)smoothing responseSmoothing:(double)responseSmoothing
{
  self->_trackingDampingRatio = ratio;
  self->_trackingResponse = response;
  self->_dampingRatioSmoothing = smoothing;
  self->_responseSmoothing = responseSmoothing;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 == 1)
  {
    if (!toState)
    {
      *&retstr->var2 = 257;
      *&retstr->var4 = *&self->var6;
    }

    *&retstr->var6 = *&self->var4;
    retstr->var0 = self->var1;
    v5 = 8;
    v6 = 16;
  }

  else
  {
    *&retstr->var0 = *&self->var6;
    retstr->var6 = 0.0;
    retstr->var7 = 0.0;
    if (toState != 1)
    {
      return self;
    }

    retstr->var9 = self->var9;
    v6 = 56;
    v5 = 56;
  }

  *(&retstr->var0 + v5) = *(&self->var0 + v6);
  return self;
}

@end