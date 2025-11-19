@interface SXQuickLookComponentPresentationTransitionContext
- (SXQuickLookComponentPresentationTransitionContext)initWithFile:(id)a3;
@end

@implementation SXQuickLookComponentPresentationTransitionContext

- (SXQuickLookComponentPresentationTransitionContext)initWithFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXQuickLookComponentPresentationTransitionContext;
  v6 = [(SXQuickLookComponentPresentationTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, a3);
  }

  return v7;
}

@end