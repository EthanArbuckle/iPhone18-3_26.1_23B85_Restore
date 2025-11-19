@interface PUTileAnimator
- (PUTilingViewControllerTransition)currentTransition;
- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6;
- (void)prepareTileControllerForAnimation:(id)a3 withInitialLayoutInfo:(id)a4;
- (void)transitionDidBeginAnimation:(id)a3;
- (void)transitionWillBeginAnimation:(id)a3;
- (void)updateAnimationForTileController:(id)a3 withRepositionedTargetLayoutInfo:(id)a4;
@end

@implementation PUTileAnimator

- (PUTilingViewControllerTransition)currentTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  return WeakRetained;
}

- (void)transitionDidBeginAnimation:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  if (WeakRetained != v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"transition == _currentTransition"}];
  }

  objc_storeWeak(&self->_currentTransition, 0);
}

- (void)transitionWillBeginAnimation:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentTransition);

  if (WeakRetained)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"!_currentTransition"}];
  }

  objc_storeWeak(&self->_currentTransition, obj);
}

- (void)updateAnimationForTileController:(id)a3 withRepositionedTargetLayoutInfo:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:26 description:@"must be implemented by concrete subclass"];
}

- (void)animateTileController:(id)a3 toLayoutInfo:(id)a4 withOptions:(id)a5 completionHandler:(id)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:22 description:@"must be implemented by concrete subclass"];
}

- (void)prepareTileControllerForAnimation:(id)a3 withInitialLayoutInfo:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUTileAnimator.m" lineNumber:18 description:@"must be implemented by concrete subclass"];
}

@end