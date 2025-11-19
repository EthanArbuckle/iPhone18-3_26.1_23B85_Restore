@interface UIResponseFactorViewSpringAnimationBehavior
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (UIResponseFactorViewSpringAnimationBehavior)initWithWrapedBehavior:(id)a3 responseFactor:(double)a4;
@end

@implementation UIResponseFactorViewSpringAnimationBehavior

- (UIResponseFactorViewSpringAnimationBehavior)initWithWrapedBehavior:(id)a3 responseFactor:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = UIResponseFactorViewSpringAnimationBehavior;
  v8 = [(UIResponseFactorViewSpringAnimationBehavior *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedBehavior, a3);
    v9->_responseFactor = a4;
  }

  return v9;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  v5 = *&a5;
  v6 = *&a4;
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  v9 = [(UIResponseFactorViewSpringAnimationBehavior *)self wrappedBehavior];
  v10 = v9;
  if (v9)
  {
    [v9 parametersForTransitionFromState:v6 toState:v5];
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