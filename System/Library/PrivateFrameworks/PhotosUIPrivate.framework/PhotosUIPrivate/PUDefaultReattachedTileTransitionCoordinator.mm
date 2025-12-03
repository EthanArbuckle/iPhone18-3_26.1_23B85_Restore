@interface PUDefaultReattachedTileTransitionCoordinator
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
@end

@implementation PUDefaultReattachedTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PUDefaultReattachedTileTransitionCoordinator;
  v9 = [(PUDefaultTileTransitionCoordinator *)&v12 optionsForAnimatingTileController:controllerCopy toLayoutInfo:info withAnimationType:type];
  context = [(PUDefaultReattachedTileTransitionCoordinator *)self context];
  -[PUDefaultTileTransitionCoordinator configureOptions:forSpringAnimationsZoomingIn:](self, "configureOptions:forSpringAnimationsZoomingIn:", v9, [context isZoomingIn]);
  if (context)
  {
    [context velocityForTileController:controllerCopy];
    [v9 setInitialVelocity:?];
  }

  return v9;
}

@end