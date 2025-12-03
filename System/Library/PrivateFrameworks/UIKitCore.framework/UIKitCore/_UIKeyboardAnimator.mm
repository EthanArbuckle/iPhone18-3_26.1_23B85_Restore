@interface _UIKeyboardAnimator
- (_UIKeyboardAnimator)init;
- (void)applyToKeyboardOperations:(id)operations;
- (void)prepareForAnimationWithState:(id)state;
- (void)runAnimationWithState:(id)state;
@end

@implementation _UIKeyboardAnimator

- (_UIKeyboardAnimator)init
{
  v6.receiver = self;
  v6.super_class = _UIKeyboardAnimator;
  v2 = [(_UIKeyboardAnimator *)&v6 init];
  if (v2)
  {
    v3 = [_UIKeyboardAnimatorAnimationStyle animationStyleWithAnimator:v2];
    style = v2->_style;
    v2->_style = v3;
  }

  return v2;
}

- (void)applyToKeyboardOperations:(id)operations
{
  operationsCopy = operations;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v5 pushAnimationStyle:self->_style];
  operationsCopy[2](operationsCopy);

  [v5 popAnimationStyle];
}

- (void)prepareForAnimationWithState:(id)state
{
  stateCopy = state;
  [stateCopy startFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  animatingView = [stateCopy animatingView];

  [animatingView setFrame:{v5, v7, v9, v11}];
}

- (void)runAnimationWithState:(id)state
{
  stateCopy = state;
  [stateCopy endFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  animatingView = [stateCopy animatingView];

  [animatingView setFrame:{v5, v7, v9, v11}];
}

@end