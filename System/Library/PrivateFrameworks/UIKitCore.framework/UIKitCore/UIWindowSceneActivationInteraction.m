@interface UIWindowSceneActivationInteraction
- (BOOL)_canAnimateSceneActivationWithConfiguration:(id)a3;
- (BOOL)_shouldActivateForEndingPinch:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (UIView)view;
- (UIWindowSceneActivationInteraction)initWithConfigurationProvider:(UIWindowSceneActivationInteractionConfigurationProvider)configurationProvider errorHandler:(void *)errorHandler;
- (id)_requestConfigurationForLocation:(CGPoint)a3;
- (id)_targetedPreviewForContinuingEffectWithPreview:(id)a3;
- (void)_animateExpansionWithVelocity:(double)a3;
- (void)_cancelInteraction;
- (void)_endEffectWithVelocity:(double)a3 forActiveConfigurationWithCompletionStatus:(BOOL)a4;
- (void)_handlePinchGesture:(id)a3;
- (void)_prepareEffectForActiveConfigurationAtLocation:(CGPoint)a3 completion:(id)a4;
- (void)_prepareSceneActivationConfiguration:(id)a3;
- (void)_prewarmAnimationWithCompletion:(id)a3;
- (void)_requestSceneActivationWithConfiguration:(id)a3 animated:(BOOL)a4 sender:(id)a5 errorHandler:(id)a6;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIWindowSceneActivationInteraction

- (UIWindowSceneActivationInteraction)initWithConfigurationProvider:(UIWindowSceneActivationInteractionConfigurationProvider)configurationProvider errorHandler:(void *)errorHandler
{
  v6 = configurationProvider;
  v7 = errorHandler;
  v11.receiver = self;
  v11.super_class = UIWindowSceneActivationInteraction;
  v8 = [(UIWindowSceneActivationInteraction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(UIWindowSceneActivationInteraction *)v8 setConfigurationProvider:v6];
    [(UIWindowSceneActivationInteraction *)v9 setErrorHandler:v7];
  }

  return v9;
}

- (void)willMoveToView:(id)a3
{
  v4 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  v5 = [v4 view];
  v6 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [v5 removeGestureRecognizer:v6];

  v7 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v9 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
    [WeakRetained removeInteraction:v9];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_view, v4);
  if ([UIApp supportsMultipleScenes])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);

    if (WeakRetained)
    {
      v6 = [(UIWindowSceneActivationInteraction *)self pinchGR];

      if (!v6)
      {
        v7 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:sel__handlePinchGesture_];
        [(UIWindowSceneActivationInteraction *)self setPinchGR:v7];

        v8 = [(UIWindowSceneActivationInteraction *)self pinchGR];
        [v8 setName:@"com.apple.UIKit.UIWindowSceneActivationInteraction.pinch"];

        v9 = [(UIWindowSceneActivationInteraction *)self pinchGR];
        [v9 setDelegate:self];
      }

      v10 = objc_loadWeakRetained(&self->_view);
      v11 = [(UIWindowSceneActivationInteraction *)self pinchGR];
      [v10 addGestureRecognizer:v11];

      v12 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];

      if (!v12)
      {
        v13 = objc_opt_new();
        [(UIWindowSceneActivationInteraction *)self setDoubleTapInteraction:v13];

        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke;
        v23[3] = &unk_1E7122780;
        objc_copyWeak(&v24, &location);
        v14 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
        [v14 setShouldContinueProcessingSecondTap:v23];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke_2;
        v21[3] = &unk_1E7106120;
        objc_copyWeak(&v22, &location);
        v15 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
        [v15 setDidDoubleTap:v21];

        v19 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v20, &location);
        v16 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction:v19];
        [v16 setDidTimeOut:&v19];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&v22);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v17 = objc_loadWeakRetained(&self->_view);
      v18 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
      [v17 addInteraction:v18];
    }
  }
}

BOOL __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _requestConfigurationForLocation:{a2, a3}];
  v7 = v6 != 0;

  return v7;
}

void __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke_2(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained view];
    v8 = [v7 _viewControllerForAncestor];
    v9 = [v8 transitionCoordinator];

    if (!v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke_3;
      v10[3] = &unk_1E70F3590;
      v10[4] = v6;
      [v6 _prepareEffectForActiveConfigurationAtLocation:v10 completion:{a2, a3}];
    }
  }
}

void __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setActiveConfiguration:0];
}

- (id)_targetedPreviewForContinuingEffectWithPreview:(id)a3
{
  v3 = a3;
  v4 = [_UIWindowSceneActivationEffectDescriptor descriptorWithPreview:v3];
  v5 = +[_UIContentEffectManager sharedManager];
  v6 = [v5 compatibleEffectForDescriptor:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 previewForContinuingToEffectWithPreview:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handlePinchGesture:(id)a3
{
  v12 = a3;
  if ([v12 state] == 1)
  {
    v4 = [(UIWindowSceneActivationInteraction *)self view];
    [v12 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(UIWindowSceneActivationInteraction *)self _requestConfigurationForLocation:v6, v8];
    [(UIWindowSceneActivationInteraction *)self _prepareEffectForActiveConfigurationAtLocation:0 completion:v6, v8];
  }

  else if ([v12 state] == 2)
  {
    v10 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [v12 scale];
    [v10 advanceToScale:?];
  }

  else if ([v12 state] >= 3)
  {
    v11 = [(UIWindowSceneActivationInteraction *)self _shouldActivateForEndingPinch:v12];
    [v12 velocity];
    [(UIWindowSceneActivationInteraction *)self _endEffectWithVelocity:v11 forActiveConfigurationWithCompletionStatus:?];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v4 = [a4 name];
  v5 = [v4 hasPrefix:@"com.apple.UIKit.multi-select"];

  return v5;
}

- (BOOL)_shouldActivateForEndingPinch:(id)a3
{
  v3 = a3;
  v4 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v4 pinchEndingProjectionDuration];
  v6 = v5;

  v7 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v7 pinchActivationScaleThreshold];
  v9 = v8;

  [v3 scale];
  v11 = v10;
  [v3 velocity];
  v13 = v11 + v6 * v12;
  v14 = [v3 state];

  return v13 > v9 && v14 == 3;
}

- (void)_cancelInteraction
{
  v3 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [v3 setEnabled:0];

  v4 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [v4 setEnabled:1];
}

- (void)_prewarmAnimationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [_UIWindowSceneActivationAnimator alloc];
  v6 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
  v7 = [(_UIWindowSceneActivationAnimator *)v5 initWithConfiguration:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__UIWindowSceneActivationInteraction__prewarmAnimationWithCompletion___block_invoke;
  v10[3] = &unk_1E71227A8;
  v10[4] = self;
  v11 = v7;
  v12 = v4;
  v8 = v4;
  v9 = v7;
  [(_UIWindowSceneActivationAnimator *)v9 prewarmWithCompletion:v10];
  [(UIWindowSceneActivationInteraction *)self setAnimator:v9];
}

void __70__UIWindowSceneActivationInteraction__prewarmAnimationWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = [v4 activeEffect];
    v9 = [v6 platterContainer];

    v7 = [v9 superview];
    [v9 center];
    [v7 convertPoint:v5 toView:?];
    [v9 setCenter:?];

    [v5 addSubview:v9];
    [*(a1 + 40) deparent];
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

- (id)_requestConfigurationForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];

  if (!v6)
  {
    v7 = [(UIWindowSceneActivationInteraction *)self configurationProvider];
    v8 = (v7)[2](v7, self, x, y);

    if (v8)
    {
      v9 = [v8 copy];

      v10 = [(UIWindowSceneActivationInteraction *)self view];
      v11 = [v10 window];
      v12 = [v11 windowScene];

      v13 = [(UIWindowSceneActivationInteraction *)self view];
      _UIWindowSceneActivationPrepareConfiguration(v9, v13, self, v12, &__block_literal_global_542);
    }
  }

  return [(UIWindowSceneActivationInteraction *)self activeConfiguration];
}

- (void)_prepareEffectForActiveConfigurationAtLocation:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
  if (v8 && (v9 = v8, [(UIWindowSceneActivationInteraction *)self activeConfiguration], v10 = objc_claimAutoreleasedReturnValue(), IsAnimatable = _UIWindowSceneActivationIsAnimatable(v10), v10, v9, IsAnimatable))
  {
    v12 = [(UIWindowSceneActivationInteraction *)self view];
    v13 = [_UIWindowSceneActivationIdentifier identifierWithLocation:v12 inView:x, y];

    v14 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
    v15 = [v14 preview];

    v16 = [_UIWindowSceneActivationEffectDescriptor descriptorWithPreview:v15];
    v17 = +[_UIContentEffectManager sharedManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__UIWindowSceneActivationInteraction__prepareEffectForActiveConfigurationAtLocation_completion___block_invoke;
    v21[3] = &unk_1E71227D0;
    v22 = v16;
    v18 = v16;
    v19 = [v17 compatibleEffectForKey:v13 descriptor:v18 constructor:v21];
    [(UIWindowSceneActivationInteraction *)self setActiveEffect:v19];

    v20 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [v20 begin];

    [(UIWindowSceneActivationInteraction *)self _prewarmAnimationWithCompletion:v7];
  }

  else
  {
    [(UIWindowSceneActivationInteraction *)self _cancelInteraction];
  }
}

_UIWindowSceneActivationEffect *__96__UIWindowSceneActivationInteraction__prepareEffectForActiveConfigurationAtLocation_completion___block_invoke(uint64_t a1)
{
  v1 = [[_UIWindowSceneActivationEffect alloc] initWithDescriptor:*(a1 + 32)];

  return v1;
}

- (void)_endEffectWithVelocity:(double)a3 forActiveConfigurationWithCompletionStatus:(BOOL)a4
{
  if (a4)
  {
    v5 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
    v6 = [(UIWindowSceneActivationInteraction *)self errorHandler];
    _UIWindowSceneActivateConfiguration(v5, 0, v6);
  }

  else
  {
    v8 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [v8 endExpanded:0 withVelocity:a3];

    v9 = [(UIWindowSceneActivationInteraction *)self animator];
    [v9 reparent];
    v10 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__UIWindowSceneActivationInteraction__endEffectWithVelocity_forActiveConfigurationWithCompletionStatus___block_invoke;
    v11[3] = &unk_1E71227F8;
    v12 = v9;
    v5 = v9;
    [v10 addCompletion:v11];
  }

  [(UIWindowSceneActivationInteraction *)self setActiveConfiguration:0];
  [(UIWindowSceneActivationInteraction *)self setActiveEffect:0];
  [(UIWindowSceneActivationInteraction *)self setAnimator:0];
}

- (void)_animateExpansionWithVelocity:(double)a3
{
  v5 = [(UIWindowSceneActivationInteraction *)self animator];
  v6 = [(UIWindowSceneActivationInteraction *)self activeEffect];
  v7 = [v6 handOffPreview];
  v8 = [v5 animateWithSourcePreview:v7 velocity:a3];

  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__UIWindowSceneActivationInteraction__animateExpansionWithVelocity___block_invoke;
    v10[3] = &unk_1E70F3590;
    v10[4] = self;
    [UIView performWithoutAnimation:v10];
  }

  else
  {
    v9 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [v9 endExpanded:0 withVelocity:a3];
  }
}

void __68__UIWindowSceneActivationInteraction__animateExpansionWithVelocity___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activeEffect];
  [v1 endExpanded:0 withVelocity:0.0];
}

- (void)_prepareSceneActivationConfiguration:(id)a3
{
  v4 = a3;
  [v4 _setAnimationSource:2];
  [(UIWindowSceneActivationInteraction *)self setActiveConfiguration:v4];
}

- (BOOL)_canAnimateSceneActivationWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];

  return v5 == v4;
}

- (void)_requestSceneActivationWithConfiguration:(id)a3 animated:(BOOL)a4 sender:(id)a5 errorHandler:(id)a6
{
  v8 = a4;
  v13 = a3;
  v10 = a5;
  v11 = a6;
  if (v8)
  {
    v12 = [(UIWindowSceneActivationInteraction *)self pinchGR];
    [v12 velocity];
    [(UIWindowSceneActivationInteraction *)self _animateExpansionWithVelocity:?];
  }

  [UIApp _requestSceneActivationWithConfiguration:v13 animated:0 sender:v10 errorHandler:v11];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end