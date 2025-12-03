@interface _UISimpleTransitioningDelegate
- (_UISimpleTransitioningDelegate)initWithAnimator:(id)animator;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
@end

@implementation _UISimpleTransitioningDelegate

- (_UISimpleTransitioningDelegate)initWithAnimator:(id)animator
{
  animatorCopy = animator;
  v10.receiver = self;
  v10.super_class = _UISimpleTransitioningDelegate;
  v6 = [(_UISimpleTransitioningDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, animator);
    v8 = v7;
  }

  return v7;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  if (operation == 1)
  {
    v7 = self->_animator;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end