@interface _UISimpleTransitioningDelegate
- (_UISimpleTransitioningDelegate)initWithAnimator:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
@end

@implementation _UISimpleTransitioningDelegate

- (_UISimpleTransitioningDelegate)initWithAnimator:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UISimpleTransitioningDelegate;
  v6 = [(_UISimpleTransitioningDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animator, a3);
    v8 = v7;
  }

  return v7;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  if (a4 == 1)
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