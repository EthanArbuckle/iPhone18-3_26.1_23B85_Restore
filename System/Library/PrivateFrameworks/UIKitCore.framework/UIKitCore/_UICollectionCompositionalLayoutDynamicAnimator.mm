@interface _UICollectionCompositionalLayoutDynamicAnimator
- (BOOL)_animatorStep:(double)a3;
- (id)behaviorForIdentifier:(id *)a1;
@end

@implementation _UICollectionCompositionalLayoutDynamicAnimator

- (id)behaviorForIdentifier:(id *)a1
{
  if (a1)
  {
    v4 = a1;
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_behaviorForIdentifier_ object:v4 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3557 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
    }

    a1 = [v4[42] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)_animatorStep:(double)a3
{
  v7.receiver = self;
  v7.super_class = _UICollectionCompositionalLayoutDynamicAnimator;
  v4 = [(UIDynamicAnimator *)&v7 _animatorStep:a3];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, 0);
  }

  return v4;
}

@end