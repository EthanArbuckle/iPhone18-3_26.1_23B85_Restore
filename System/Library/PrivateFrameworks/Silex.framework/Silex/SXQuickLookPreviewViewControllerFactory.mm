@interface SXQuickLookPreviewViewControllerFactory
- (id)viewControllerForFile:(id)file transitionContext:(id)context;
@end

@implementation SXQuickLookPreviewViewControllerFactory

- (id)viewControllerForFile:(id)file transitionContext:(id)context
{
  contextCopy = context;
  fileCopy = file;
  v7 = [[SXQuickLookPreviewViewController alloc] initWithFile:fileCopy transitionContext:contextCopy];

  return v7;
}

@end