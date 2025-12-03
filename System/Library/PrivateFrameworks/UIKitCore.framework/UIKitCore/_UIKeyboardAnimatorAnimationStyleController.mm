@interface _UIKeyboardAnimatorAnimationStyleController
- (_UIKeyboardAnimatorAnimationStyleController)initWithAnimator:(id)animator;
- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement;
- (void)completeAnimationWithHost:(id)host context:(id)context;
@end

@implementation _UIKeyboardAnimatorAnimationStyleController

- (_UIKeyboardAnimatorAnimationStyleController)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  v9.receiver = self;
  v9.super_class = _UIKeyboardAnimatorAnimationStyleController;
  v6 = [(_UIKeyboardAnimatorAnimationStyleController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, animator);
  }

  return v7;
}

- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement
{
  endPlacementCopy = endPlacement;
  placementCopy = placement;
  hostCopy = host;
  v11 = [[_UIKeyboardAnimatorAnimationStyleControllerContext alloc] initWithHost:hostCopy startPlacement:placementCopy endPlacement:endPlacementCopy];

  [(_UIKeyboardAnimator *)self->_animator prepareForAnimationWithState:v11];

  return v11;
}

- (void)completeAnimationWithHost:(id)host context:(id)context
{
  animator = self->_animator;
  contextCopy = context;
  [(_UIKeyboardAnimator *)animator completeAnimationWithState:contextCopy];
  [contextCopy complete];
}

@end