@interface PXTileTransitionSimpleAnimationCoordinator
- (PXTileTransitionSimpleAnimationCoordinator)initWithAnimationOptions:(id)a3;
@end

@implementation PXTileTransitionSimpleAnimationCoordinator

- (PXTileTransitionSimpleAnimationCoordinator)initWithAnimationOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXTileTransitionSimpleAnimationCoordinator;
  v6 = [(PXTileTransitionSimpleAnimationCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animationOptions, a3);
  }

  return v7;
}

@end