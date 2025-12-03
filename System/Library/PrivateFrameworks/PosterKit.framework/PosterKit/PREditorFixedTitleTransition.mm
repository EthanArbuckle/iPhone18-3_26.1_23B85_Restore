@interface PREditorFixedTitleTransition
- (PREditorFixedTitleTransition)initWithSourceTitleViewController:(id)controller destinationTitleViewController:(id)viewController anchorView:(id)view;
- (void)cleanUp;
@end

@implementation PREditorFixedTitleTransition

- (PREditorFixedTitleTransition)initWithSourceTitleViewController:(id)controller destinationTitleViewController:(id)viewController anchorView:(id)view
{
  v25[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = PREditorFixedTitleTransition;
  v12 = [(PREditorFixedTitleTransition *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceTitleViewController, controller);
    objc_storeStrong(&v13->_destinationTitleViewController, viewController);
    if (controllerCopy != viewControllerCopy)
    {
      view = [viewControllerCopy view];
      [view setHidden:1];

      view2 = [controllerCopy view];
      [view2 setHidden:0];
    }

    animation = [MEMORY[0x1E69793B8] animation];
    layer = [viewCopy layer];
    [animation setSourceLayer:layer];

    [animation setDuration:INFINITY];
    [animation setFillMode:*MEMORY[0x1E69797E0]];
    [animation setRemovedOnCompletion:0];
    [animation setUsesNormalizedCoordinates:1];
    [animation setAppliesY:1];
    [animation setAppliesX:1];
    v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
    v25[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [animation setSourcePoints:v19];

    view3 = [controllerCopy view];
    layer2 = [view3 layer];
    animationKey = [(PREditorFixedTitleTransition *)v13 animationKey];
    [layer2 addAnimation:animation forKey:animationKey];
  }

  return v13;
}

- (void)cleanUp
{
  sourceTitleViewController = [(PREditorFixedTitleTransition *)self sourceTitleViewController];
  destinationTitleViewController = [(PREditorFixedTitleTransition *)self destinationTitleViewController];
  view = [sourceTitleViewController view];
  layer = [view layer];
  animationKey = [(PREditorFixedTitleTransition *)self animationKey];
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