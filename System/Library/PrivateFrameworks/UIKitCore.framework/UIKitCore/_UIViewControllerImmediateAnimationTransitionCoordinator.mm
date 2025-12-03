@interface _UIViewControllerImmediateAnimationTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerImmediateAnimationTransitionCoordinator)initWithContainerView:(id)view;
@end

@implementation _UIViewControllerImmediateAnimationTransitionCoordinator

- (_UIViewControllerImmediateAnimationTransitionCoordinator)initWithContainerView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIViewControllerImmediateAnimationTransitionCoordinator;
  v5 = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)&v9 init];
  if (v5)
  {
    if (viewCopy)
    {
      v6 = viewCopy;
    }

    else
    {
      v6 = objc_alloc_init(UIView);
    }

    containerView = v5->_containerView;
    v5->_containerView = v6;
  }

  return v5;
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  animationCopy = animation;
  completionCopy = completion;
  if (animationCopy)
  {
    animationCopy[2](animationCopy, self);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, self);
  }

  return 1;
}

- (CGAffineTransform)targetTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

@end