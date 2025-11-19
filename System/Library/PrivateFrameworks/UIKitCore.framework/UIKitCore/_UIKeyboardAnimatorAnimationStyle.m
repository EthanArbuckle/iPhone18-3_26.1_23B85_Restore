@interface _UIKeyboardAnimatorAnimationStyle
+ (_UIKeyboardAnimatorAnimationStyle)animationStyleWithAnimator:(id)a3;
- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4;
- (void)defaultLaunchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5;
- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7;
@end

@implementation _UIKeyboardAnimatorAnimationStyle

+ (_UIKeyboardAnimatorAnimationStyle)animationStyleWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [a1 animationStyleDefault];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak((v5 + 48), v4);
    v6[9] = 2;
  }

  return v6;
}

- (id)controllerForStartPlacement:(id)a3 endPlacement:(id)a4
{
  v5 = [_UIKeyboardAnimatorAnimationStyleController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  v7 = [(_UIKeyboardAnimatorAnimationStyleController *)v5 initWithAnimator:WeakRetained];

  return v7;
}

- (void)launchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5 forHost:(id)a6 fromCurrentPosition:(BOOL)a7
{
  objc_storeStrong(&self->_currentHost, a6);
  v18 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  self->_currentFromPosition = a7;
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  [WeakRetained performAnimation:v15 afterStarted:v14 onCompletion:v13];

  currentHost = self->_currentHost;
  self->_currentHost = 0;
}

- (void)defaultLaunchAnimation:(id)a3 afterStarted:(id)a4 completion:(id)a5
{
  currentHost = self->_currentHost;
  currentFromPosition = self->_currentFromPosition;
  v7.receiver = self;
  v7.super_class = _UIKeyboardAnimatorAnimationStyle;
  [(UIInputViewAnimationStyle *)&v7 launchAnimation:a3 afterStarted:a4 completion:a5 forHost:currentHost fromCurrentPosition:currentFromPosition];
}

@end