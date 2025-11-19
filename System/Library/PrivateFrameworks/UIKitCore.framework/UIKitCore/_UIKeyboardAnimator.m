@interface _UIKeyboardAnimator
- (_UIKeyboardAnimator)init;
- (void)applyToKeyboardOperations:(id)a3;
- (void)prepareForAnimationWithState:(id)a3;
- (void)runAnimationWithState:(id)a3;
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

- (void)applyToKeyboardOperations:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v5 pushAnimationStyle:self->_style];
  v4[2](v4);

  [v5 popAnimationStyle];
}

- (void)prepareForAnimationWithState:(id)a3
{
  v3 = a3;
  [v3 startFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 animatingView];

  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)runAnimationWithState:(id)a3
{
  v3 = a3;
  [v3 endFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 animatingView];

  [v12 setFrame:{v5, v7, v9, v11}];
}

@end