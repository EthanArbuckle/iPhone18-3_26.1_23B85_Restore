@interface SXQuickLookTransitionContext
- (SXQuickLookTransitionContext)initWithOriginView:(id)view;
@end

@implementation SXQuickLookTransitionContext

- (SXQuickLookTransitionContext)initWithOriginView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SXQuickLookTransitionContext;
  v6 = [(SXQuickLookTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originView, view);
  }

  return v7;
}

@end