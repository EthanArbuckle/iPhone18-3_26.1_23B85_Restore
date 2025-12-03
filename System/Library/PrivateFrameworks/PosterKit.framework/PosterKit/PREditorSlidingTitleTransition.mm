@interface PREditorSlidingTitleTransition
- (PREditorSlidingTitleTransition)initWithSourceTitleViewController:(id)controller destinationTitleViewController:(id)viewController;
- (void)cleanUp;
@end

@implementation PREditorSlidingTitleTransition

- (PREditorSlidingTitleTransition)initWithSourceTitleViewController:(id)controller destinationTitleViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v14.receiver = self;
  v14.super_class = PREditorSlidingTitleTransition;
  v9 = [(PREditorSlidingTitleTransition *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceTitleViewController, controller);
    objc_storeStrong(&v10->_destinationTitleViewController, viewController);
    view = [viewControllerCopy view];
    [view setHidden:0];

    view2 = [controllerCopy view];
    [view2 setHidden:0];
  }

  return v10;
}

- (void)cleanUp
{
  sourceTitleViewController = [(PREditorSlidingTitleTransition *)self sourceTitleViewController];
  destinationTitleViewController = [(PREditorSlidingTitleTransition *)self destinationTitleViewController];
  view = [sourceTitleViewController view];
  layer = [view layer];
  animationKey = [(PREditorSlidingTitleTransition *)self animationKey];
  [layer removeAnimationForKey:animationKey];

  view2 = [destinationTitleViewController view];
  [view2 setHidden:0];

  if (sourceTitleViewController != destinationTitleViewController)
  {
    view3 = [sourceTitleViewController view];
    [view3 setHidden:1];
  }
}

@end