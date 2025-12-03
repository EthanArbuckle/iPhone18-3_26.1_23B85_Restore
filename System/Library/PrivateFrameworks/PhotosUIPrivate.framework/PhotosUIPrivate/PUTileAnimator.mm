@interface PUTileAnimator
- (PUTilingViewControllerTransition)currentTransition;
- (void)animateTileController:(id)controller toLayoutInfo:(id)info withOptions:(id)options completionHandler:(id)handler;
- (void)prepareTileControllerForAnimation:(id)animation withInitialLayoutInfo:(id)info;
- (void)transitionDidBeginAnimation:(id)animation;
- (void)transitionWillBeginAnimation:(id)animation;
- (void)updateAnimationForTileController:(id)controller withRepositionedTargetLayoutInfo:(id)info;
@end

@implementation PUTileAnimator

- (PUTilingViewControllerTransition)currentTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  return WeakRetained;
}

- (void)transitionDidBeginAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  if (WeakRetained != animationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"transition == _currentTransition"}];
  }

  objc_storeWeak(&self->_currentTransition, 0);
}

- (void)transitionWillBeginAnimation:(id)animation
{
  obj = animation;
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"!_currentTransition"}];
  }

  objc_storeWeak(&self->_currentTransition, obj);
}

- (void)updateAnimationForTileController:(id)controller withRepositionedTargetLayoutInfo:(id)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:26 description:@"must be implemented by concrete subclass"];
}

- (void)animateTileController:(id)controller toLayoutInfo:(id)info withOptions:(id)options completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:22 description:@"must be implemented by concrete subclass"];
}

- (void)prepareTileControllerForAnimation:(id)animation withInitialLayoutInfo:(id)info
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:18 description:@"must be implemented by concrete subclass"];
}

@end