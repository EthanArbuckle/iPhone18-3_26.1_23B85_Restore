@interface TVRUIAlertFadeAnimationController
- (TVRUIAlertFadeAnimationController)initWithAnimationType:(int64_t)type visualStyle:(id)style;
- (double)transitionDuration:(id)duration;
- (void)_runDismissalAnimationWithTransition:(id)transition;
- (void)_runPresentationAnimationWithTransition:(id)transition;
- (void)animateTransition:(id)transition;
@end

@implementation TVRUIAlertFadeAnimationController

- (TVRUIAlertFadeAnimationController)initWithAnimationType:(int64_t)type visualStyle:(id)style
{
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = TVRUIAlertFadeAnimationController;
  v8 = [(TVRUIAlertFadeAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualStyle, style);
    v9->_animationType = type;
  }

  return v9;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if ([(TVRUIAlertFadeAnimationController *)self animationType])
  {
    [(TVRUIAlertFadeAnimationController *)self _runDismissalAnimationWithTransition:transitionCopy];
  }

  else
  {
    [(TVRUIAlertFadeAnimationController *)self _runPresentationAnimationWithTransition:transitionCopy];
  }
}

- (double)transitionDuration:(id)duration
{
  visualStyle = [(TVRUIAlertFadeAnimationController *)self visualStyle];
  [visualStyle crossfadeDuration];
  v5 = v4;

  return v5;
}

- (void)_runPresentationAnimationWithTransition:(id)transition
{
  transitionCopy = transition;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "#TVRUIAlertFadeAnimationController - Animate transition: presenting", buf, 2u);
  }

  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  v7 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  [v6 setAlpha:0.0];
  [v7 bounds];
  [v6 setFrame:?];
  [(TVRUIAlertFadeAnimationController *)self transitionDuration:transitionCopy];
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D75D40]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__TVRUIAlertFadeAnimationController__runPresentationAnimationWithTransition___block_invoke;
  v19[3] = &unk_279D87C20;
  v20 = v6;
  v11 = v6;
  v12 = [v10 initWithDuration:0 curve:v19 animations:v9];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __77__TVRUIAlertFadeAnimationController__runPresentationAnimationWithTransition___block_invoke_2;
  v17 = &unk_279D88028;
  v18 = transitionCopy;
  v13 = transitionCopy;
  [v12 addCompletion:&v14];
  [v12 startAnimation];
}

- (void)_runDismissalAnimationWithTransition:(id)transition
{
  transitionCopy = transition;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "#TVRUIAlertFadeAnimationController - Animate transition: dismissing", buf, 2u);
  }

  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  v7 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  [v6 setAlpha:1.0];
  [v7 bounds];
  [v6 setFrame:?];
  [(TVRUIAlertFadeAnimationController *)self transitionDuration:transitionCopy];
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D75D40]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__TVRUIAlertFadeAnimationController__runDismissalAnimationWithTransition___block_invoke;
  v19[3] = &unk_279D87C20;
  v20 = v6;
  v11 = v6;
  v12 = [v10 initWithDuration:0 curve:v19 animations:v9];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __74__TVRUIAlertFadeAnimationController__runDismissalAnimationWithTransition___block_invoke_2;
  v17 = &unk_279D88028;
  v18 = transitionCopy;
  v13 = transitionCopy;
  [v12 addCompletion:&v14];
  [v12 startAnimation];
}

@end