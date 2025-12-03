@interface PXTileTransitionSimpleAnimationCoordinator
- (PXTileTransitionSimpleAnimationCoordinator)initWithAnimationOptions:(id)options;
@end

@implementation PXTileTransitionSimpleAnimationCoordinator

- (PXTileTransitionSimpleAnimationCoordinator)initWithAnimationOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = PXTileTransitionSimpleAnimationCoordinator;
  v6 = [(PXTileTransitionSimpleAnimationCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animationOptions, options);
  }

  return v7;
}

@end