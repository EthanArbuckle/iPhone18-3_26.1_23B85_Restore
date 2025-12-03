@interface PXGTransition
- (PXGTransition)initWithAnimations:(id)animations layout:(id)layout;
- (void)animateToFinalStateWithCompletionBlock:(id)block;
- (void)animateToInitialStateWithCompletionBlock:(id)block;
- (void)setFractionCompleted:(float)completed;
@end

@implementation PXGTransition

- (void)setFractionCompleted:(float)completed
{
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTransition.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"!_invalid"}];
  }

  if (!self->_animatingTowardsFinalState && !self->_animatingTowardsInitialState)
  {
    self->_fractionCompleted = completed;
  }
}

- (void)animateToFinalStateWithCompletionBlock:(id)block
{
  *&self->_animatingTowardsInitialState = 256;
  v4 = [block copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;
}

- (void)animateToInitialStateWithCompletionBlock:(id)block
{
  *&self->_animatingTowardsInitialState = 1;
  v4 = [block copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;
}

- (PXGTransition)initWithAnimations:(id)animations layout:(id)layout
{
  animationsCopy = animations;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = PXGTransition;
  v9 = [(PXGTransition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_animations, animations);
    objc_storeStrong(&v10->_layout, layout);
    v10->_isIntercative = 1;
  }

  return v10;
}

@end