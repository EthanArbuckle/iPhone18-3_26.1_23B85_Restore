@interface PREditorTitleViewControllerCSTransitionWrapper
- (PREditorTitleViewControllerCSTransitionWrapper)initWithCSTransitioning:(id)transitioning;
@end

@implementation PREditorTitleViewControllerCSTransitionWrapper

- (PREditorTitleViewControllerCSTransitionWrapper)initWithCSTransitioning:(id)transitioning
{
  transitioningCopy = transitioning;
  v9.receiver = self;
  v9.super_class = PREditorTitleViewControllerCSTransitionWrapper;
  v6 = [(PREditorTitleViewControllerCSTransitionWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_csTransitioning, transitioning);
  }

  return v7;
}

@end