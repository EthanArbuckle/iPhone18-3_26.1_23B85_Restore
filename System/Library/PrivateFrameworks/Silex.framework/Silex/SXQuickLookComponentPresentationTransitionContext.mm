@interface SXQuickLookComponentPresentationTransitionContext
- (SXQuickLookComponentPresentationTransitionContext)initWithFile:(id)file;
@end

@implementation SXQuickLookComponentPresentationTransitionContext

- (SXQuickLookComponentPresentationTransitionContext)initWithFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = SXQuickLookComponentPresentationTransitionContext;
  v6 = [(SXQuickLookComponentPresentationTransitionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, file);
  }

  return v7;
}

@end