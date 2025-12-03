@interface UIResponseFactorViewSpringAnimationBehavior
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (UIResponseFactorViewSpringAnimationBehavior)initWithWrapedBehavior:(id)behavior responseFactor:(double)factor;
@end

@implementation UIResponseFactorViewSpringAnimationBehavior

- (UIResponseFactorViewSpringAnimationBehavior)initWithWrapedBehavior:(id)behavior responseFactor:(double)factor
{
  behaviorCopy = behavior;
  v11.receiver = self;
  v11.super_class = UIResponseFactorViewSpringAnimationBehavior;
  v8 = [(UIResponseFactorViewSpringAnimationBehavior *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedBehavior, behavior);
    v9->_responseFactor = factor;
  }

  return v9;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  v5 = *&a5;
  v6 = *&toState;
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  wrappedBehavior = [(UIResponseFactorViewSpringAnimationBehavior *)self wrappedBehavior];
  v10 = wrappedBehavior;
  if (wrappedBehavior)
  {
    [wrappedBehavior parametersForTransitionFromState:v6 toState:v5];
  }

  else
  {
    *&retstr->var7 = 0u;
    *&retstr->var9 = 0u;
    *&retstr->var2 = 0u;
    *&retstr->var5 = 0u;
    *&retstr->var0 = 0u;
  }

  result = [(UIResponseFactorViewSpringAnimationBehavior *)self responseFactor];
  retstr->var1 = v12 * retstr->var1;
  return result;
}

@end