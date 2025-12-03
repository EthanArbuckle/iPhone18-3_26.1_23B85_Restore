@interface _UIKeyboardAnimatorAnimationStyle
+ (_UIKeyboardAnimatorAnimationStyle)animationStyleWithAnimator:(id)animator;
- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement;
- (void)defaultLaunchAnimation:(id)animation afterStarted:(id)started completion:(id)completion;
- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position;
@end

@implementation _UIKeyboardAnimatorAnimationStyle

+ (_UIKeyboardAnimatorAnimationStyle)animationStyleWithAnimator:(id)animator
{
  animatorCopy = animator;
  animationStyleDefault = [self animationStyleDefault];
  v6 = animationStyleDefault;
  if (animationStyleDefault)
  {
    objc_storeWeak((animationStyleDefault + 48), animatorCopy);
    v6[9] = 2;
  }

  return v6;
}

- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement
{
  v5 = [_UIKeyboardAnimatorAnimationStyleController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  v7 = [(_UIKeyboardAnimatorAnimationStyleController *)v5 initWithAnimator:WeakRetained];

  return v7;
}

- (void)launchAnimation:(id)animation afterStarted:(id)started completion:(id)completion forHost:(id)host fromCurrentPosition:(BOOL)position
{
  objc_storeStrong(&self->_currentHost, host);
  hostCopy = host;
  completionCopy = completion;
  startedCopy = started;
  animationCopy = animation;
  self->_currentFromPosition = position;
  WeakRetained = objc_loadWeakRetained(&self->_animator);
  [WeakRetained performAnimation:animationCopy afterStarted:startedCopy onCompletion:completionCopy];

  currentHost = self->_currentHost;
  self->_currentHost = 0;
}

- (void)defaultLaunchAnimation:(id)animation afterStarted:(id)started completion:(id)completion
{
  currentHost = self->_currentHost;
  currentFromPosition = self->_currentFromPosition;
  v7.receiver = self;
  v7.super_class = _UIKeyboardAnimatorAnimationStyle;
  [(UIInputViewAnimationStyle *)&v7 launchAnimation:animation afterStarted:started completion:completion forHost:currentHost fromCurrentPosition:currentFromPosition];
}

@end