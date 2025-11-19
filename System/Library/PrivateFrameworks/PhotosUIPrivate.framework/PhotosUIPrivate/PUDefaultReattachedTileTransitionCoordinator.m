@interface PUDefaultReattachedTileTransitionCoordinator
- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5;
@end

@implementation PUDefaultReattachedTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)a3 toLayoutInfo:(id)a4 withAnimationType:(int64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = PUDefaultReattachedTileTransitionCoordinator;
  v9 = [(PUDefaultTileTransitionCoordinator *)&v12 optionsForAnimatingTileController:v8 toLayoutInfo:a4 withAnimationType:a5];
  v10 = [(PUDefaultReattachedTileTransitionCoordinator *)self context];
  -[PUDefaultTileTransitionCoordinator configureOptions:forSpringAnimationsZoomingIn:](self, "configureOptions:forSpringAnimationsZoomingIn:", v9, [v10 isZoomingIn]);
  if (v10)
  {
    [v10 velocityForTileController:v8];
    [v9 setInitialVelocity:?];
  }

  return v9;
}

@end