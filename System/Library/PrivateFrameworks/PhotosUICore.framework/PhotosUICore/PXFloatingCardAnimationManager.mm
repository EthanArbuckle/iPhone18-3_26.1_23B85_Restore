@interface PXFloatingCardAnimationManager
- (PXFloatingCardAnimation)heightAnimation;
- (id)defaultHeightAnimation;
- (void)popHeightAnimation;
- (void)pushHeightAnimation:(id)animation;
@end

@implementation PXFloatingCardAnimationManager

- (void)popHeightAnimation
{
  heightAnimationPushCount = self->_heightAnimationPushCount;
  if (!heightAnimationPushCount)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardAnimationManager.m" lineNumber:218 description:@"Calls to popHeightAnimation must mirror push calls"];

    heightAnimationPushCount = self->_heightAnimationPushCount;
  }

  v4 = heightAnimationPushCount - 1;
  self->_heightAnimationPushCount = v4;
  if (!v4)
  {
    heightAnimation = self->_heightAnimation;
    self->_heightAnimation = 0;
  }
}

- (void)pushHeightAnimation:(id)animation
{
  animationCopy = animation;
  if (!animationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFloatingCardAnimationManager.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"animation"}];

    animationCopy = 0;
  }

  heightAnimationPushCount = self->_heightAnimationPushCount;
  self->_heightAnimationPushCount = heightAnimationPushCount + 1;
  if (!heightAnimationPushCount)
  {
    v9 = animationCopy;
    objc_storeStrong(&self->_heightAnimation, animation);
    animationCopy = v9;
  }
}

- (PXFloatingCardAnimation)heightAnimation
{
  heightAnimation = self->_heightAnimation;
  if (heightAnimation)
  {
    defaultHeightAnimation = heightAnimation;
  }

  else
  {
    defaultHeightAnimation = [(PXFloatingCardAnimationManager *)self defaultHeightAnimation];
  }

  return defaultHeightAnimation;
}

- (id)defaultHeightAnimation
{
  if (defaultHeightAnimation_onceToken != -1)
  {
    dispatch_once(&defaultHeightAnimation_onceToken, &__block_literal_global_4382);
  }

  v3 = defaultHeightAnimation_defaultAnimation;

  return v3;
}

void __56__PXFloatingCardAnimationManager_defaultHeightAnimation__block_invoke()
{
  v0 = [PXFloatingCardAnimation animationUsingDefaultSpringWithInitialVelocity:0.0 delay:0.0];
  v1 = defaultHeightAnimation_defaultAnimation;
  defaultHeightAnimation_defaultAnimation = v0;
}

@end