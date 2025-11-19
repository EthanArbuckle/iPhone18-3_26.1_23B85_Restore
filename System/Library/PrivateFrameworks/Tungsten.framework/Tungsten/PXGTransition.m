@interface PXGTransition
- (PXGTransition)initWithAnimations:(id)a3 layout:(id)a4;
- (void)animateToFinalStateWithCompletionBlock:(id)a3;
- (void)animateToInitialStateWithCompletionBlock:(id)a3;
- (void)setFractionCompleted:(float)a3;
@end

@implementation PXGTransition

- (void)setFractionCompleted:(float)a3
{
  if (self->_invalid)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXGTransition.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"!_invalid"}];
  }

  if (!self->_animatingTowardsFinalState && !self->_animatingTowardsInitialState)
  {
    self->_fractionCompleted = a3;
  }
}

- (void)animateToFinalStateWithCompletionBlock:(id)a3
{
  *&self->_animatingTowardsInitialState = 256;
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;
}

- (void)animateToInitialStateWithCompletionBlock:(id)a3
{
  *&self->_animatingTowardsInitialState = 1;
  v4 = [a3 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;
}

- (PXGTransition)initWithAnimations:(id)a3 layout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXGTransition;
  v9 = [(PXGTransition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_animations, a3);
    objc_storeStrong(&v10->_layout, a4);
    v10->_isIntercative = 1;
  }

  return v10;
}

@end