@interface _UIViewControllerImmediateAnimationTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerImmediateAnimationTransitionCoordinator)initWithContainerView:(id)a3;
@end

@implementation _UIViewControllerImmediateAnimationTransitionCoordinator

- (_UIViewControllerImmediateAnimationTransitionCoordinator)initWithContainerView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIViewControllerImmediateAnimationTransitionCoordinator;
  v5 = [(_UIViewControllerImmediateAnimationTransitionCoordinator *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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

- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v9[2](v9, self);
  }

  if (v10)
  {
    v10[2](v10, self);
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