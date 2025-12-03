@interface _UICollectionCompositionalLayoutDynamicAnimator
- (BOOL)_animatorStep:(double)step;
- (id)behaviorForIdentifier:(id *)identifier;
@end

@implementation _UICollectionCompositionalLayoutDynamicAnimator

- (id)behaviorForIdentifier:(id *)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_behaviorForIdentifier_ object:identifierCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3557 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
    }

    identifier = [identifierCopy[42] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return identifier;
}

- (BOOL)_animatorStep:(double)step
{
  v7.receiver = self;
  v7.super_class = _UICollectionCompositionalLayoutDynamicAnimator;
  v4 = [(UIDynamicAnimator *)&v7 _animatorStep:step];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, 0);
  }

  return v4;
}

@end