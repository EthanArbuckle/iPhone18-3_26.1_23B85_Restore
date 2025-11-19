@interface PREditorTitleViewControllerCSTransitionWrapper
- (PREditorTitleViewControllerCSTransitionWrapper)initWithCSTransitioning:(id)a3;
@end

@implementation PREditorTitleViewControllerCSTransitionWrapper

- (PREditorTitleViewControllerCSTransitionWrapper)initWithCSTransitioning:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PREditorTitleViewControllerCSTransitionWrapper;
  v6 = [(PREditorTitleViewControllerCSTransitionWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_csTransitioning, a3);
  }

  return v7;
}

@end