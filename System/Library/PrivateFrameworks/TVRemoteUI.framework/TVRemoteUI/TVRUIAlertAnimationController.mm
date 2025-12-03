@interface TVRUIAlertAnimationController
- (CGAffineTransform)scaleTransform;
- (TVRUIAlertAnimationController)initWithAnimationType:(int64_t)type visualStyle:(id)style;
- (void)_runDismissalAnimationWithTransition:(id)transition;
- (void)_runPresentationAnimationWithTransition:(id)transition;
- (void)animateTransition:(id)transition;
- (void)setScaleTransform:(CGAffineTransform *)transform;
@end

@implementation TVRUIAlertAnimationController

- (TVRUIAlertAnimationController)initWithAnimationType:(int64_t)type visualStyle:(id)style
{
  styleCopy = style;
  v13.receiver = self;
  v13.super_class = TVRUIAlertAnimationController;
  v8 = [(TVRUIAlertAnimationController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_visualStyle, style);
    v9->_animationType = type;
    v9->_foregroundBlurRadius = 20.0;
    CGAffineTransformMakeScale(&v12, 1.92, 1.92);
    v10 = *&v12.c;
    *&v9->_scaleTransform.a = *&v12.a;
    *&v9->_scaleTransform.c = v10;
    *&v9->_scaleTransform.tx = *&v12.tx;
  }

  return v9;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if ([(TVRUIAlertAnimationController *)self animationType])
  {
    [(TVRUIAlertAnimationController *)self _runDismissalAnimationWithTransition:transitionCopy];
  }

  else
  {
    [(TVRUIAlertAnimationController *)self _runPresentationAnimationWithTransition:transitionCopy];
  }
}

- (void)_runPresentationAnimationWithTransition:(id)transition
{
  transitionCopy = transition;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Animate transition: presenting", buf, 2u);
  }

  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77248]];
  v7 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  backgroundMaterialView = [(TVRUIAlertAnimationController *)self backgroundMaterialView];

  if (backgroundMaterialView)
  {
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    backgroundMaterialView2 = [(TVRUIAlertAnimationController *)self backgroundMaterialView];
    [backgroundMaterialView2 setFrame:{v10, v12, v14, v16}];

    backgroundMaterialView3 = [(TVRUIAlertAnimationController *)self backgroundMaterialView];
    [backgroundMaterialView3 setAutoresizingMask:18];

    backgroundMaterialView4 = [(TVRUIAlertAnimationController *)self backgroundMaterialView];
    [v7 insertSubview:backgroundMaterialView4 atIndex:0];
  }

  v20 = objc_alloc(MEMORY[0x277D75D68]);
  visualStyle = [(TVRUIAlertAnimationController *)self visualStyle];
  foregroundVisualEffect = [visualStyle foregroundVisualEffect];
  v23 = [v20 initWithEffect:foregroundVisualEffect];
  [(TVRUIAlertAnimationController *)self setForegroundVisualEffectView:v23];

  [v6 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  foregroundVisualEffectView = [(TVRUIAlertAnimationController *)self foregroundVisualEffectView];
  [foregroundVisualEffectView setFrame:{v25, v27, v29, v31}];

  foregroundVisualEffectView2 = [(TVRUIAlertAnimationController *)self foregroundVisualEffectView];
  [v6 addSubview:foregroundVisualEffectView2];

  [v6 setAlpha:0.0];
  [(TVRUIAlertAnimationController *)self scaleTransform];
  *buf = v48;
  v46 = v49;
  v47 = v50;
  [v6 setTransform:buf];
  v34 = +[TVRUICubicSpringAnimator standardSpringAnimator];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __73__TVRUIAlertAnimationController__runPresentationAnimationWithTransition___block_invoke;
  v43[3] = &unk_279D88230;
  v43[4] = self;
  v44 = v6;
  v35 = v6;
  [v34 addAnimations:v43];
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __73__TVRUIAlertAnimationController__runPresentationAnimationWithTransition___block_invoke_2;
  v40 = &unk_279D882A0;
  selfCopy = self;
  v42 = transitionCopy;
  v36 = transitionCopy;
  [v34 addCompletion:&v37];
  [v34 startAnimation];
}

uint64_t __73__TVRUIAlertAnimationController__runPresentationAnimationWithTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundVisualEffectView];
  [v2 setEffect:0];

  v3 = [*(a1 + 32) backgroundMaterialView];
  [v3 setWeighting:1.0];

  [*(a1 + 40) setAlpha:1.0];
  v4 = *(a1 + 40);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v5;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v4 setTransform:v7];
}

uint64_t __73__TVRUIAlertAnimationController__runPresentationAnimationWithTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundVisualEffectView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 40);

  return [v3 completeTransition:1];
}

- (void)_runDismissalAnimationWithTransition:(id)transition
{
  transitionCopy = transition;
  v5 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Animate transition: dismissing", buf, 2u);
  }

  v6 = [transitionCopy viewForKey:*MEMORY[0x277D77238]];
  v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [(TVRUIAlertAnimationController *)self setForegroundVisualEffectView:v7];

  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  foregroundVisualEffectView = [(TVRUIAlertAnimationController *)self foregroundVisualEffectView];
  [foregroundVisualEffectView setFrame:{v9, v11, v13, v15}];

  foregroundVisualEffectView2 = [(TVRUIAlertAnimationController *)self foregroundVisualEffectView];
  [v6 addSubview:foregroundVisualEffectView2];

  [v6 setAlpha:1.0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *buf = *MEMORY[0x277CBF2C0];
  v27 = v18;
  v28 = *(MEMORY[0x277CBF2C0] + 32);
  [v6 setTransform:buf];
  v19 = +[TVRUICubicSpringAnimator standardSpringAnimator];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __70__TVRUIAlertAnimationController__runDismissalAnimationWithTransition___block_invoke;
  v24[3] = &unk_279D88230;
  v24[4] = self;
  v25 = v6;
  v20 = v6;
  [v19 addAnimations:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__TVRUIAlertAnimationController__runDismissalAnimationWithTransition___block_invoke_2;
  v22[3] = &unk_279D88028;
  v23 = transitionCopy;
  v21 = transitionCopy;
  [v19 addCompletion:v22];
  [v19 startAnimation];
}

void __70__TVRUIAlertAnimationController__runDismissalAnimationWithTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visualStyle];
  v3 = [v2 foregroundVisualEffect];

  v4 = [*(a1 + 32) foregroundVisualEffectView];
  [v4 setEffect:v3];

  v5 = [*(a1 + 32) backgroundMaterialView];
  [v5 setWeighting:0.0];

  [*(a1 + 40) setAlpha:0.0];
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 scaleTransform];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  v7 = *(a1 + 40);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [v7 setTransform:v8];
}

- (CGAffineTransform)scaleTransform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setScaleTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_scaleTransform.c = *&transform->c;
  *&self->_scaleTransform.tx = v4;
  *&self->_scaleTransform.a = v3;
}

@end