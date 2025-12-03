@interface SXQuickLookComponentErrorTransitionContext
- (SXQuickLookComponentErrorTransitionContext)initWithError:(id)error;
@end

@implementation SXQuickLookComponentErrorTransitionContext

- (SXQuickLookComponentErrorTransitionContext)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = SXQuickLookComponentErrorTransitionContext;
  v6 = [(SXQuickLookComponentErrorTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

@end