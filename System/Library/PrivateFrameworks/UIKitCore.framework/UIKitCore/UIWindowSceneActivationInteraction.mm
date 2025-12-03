@interface UIWindowSceneActivationInteraction
- (BOOL)_canAnimateSceneActivationWithConfiguration:(id)configuration;
- (BOOL)_shouldActivateForEndingPinch:(id)pinch;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (UIView)view;
- (UIWindowSceneActivationInteraction)initWithConfigurationProvider:(UIWindowSceneActivationInteractionConfigurationProvider)configurationProvider errorHandler:(void *)errorHandler;
- (id)_requestConfigurationForLocation:(CGPoint)location;
- (id)_targetedPreviewForContinuingEffectWithPreview:(id)preview;
- (void)_animateExpansionWithVelocity:(double)velocity;
- (void)_cancelInteraction;
- (void)_endEffectWithVelocity:(double)velocity forActiveConfigurationWithCompletionStatus:(BOOL)status;
- (void)_handlePinchGesture:(id)gesture;
- (void)_prepareEffectForActiveConfigurationAtLocation:(CGPoint)location completion:(id)completion;
- (void)_prepareSceneActivationConfiguration:(id)configuration;
- (void)_prewarmAnimationWithCompletion:(id)completion;
- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
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

- (void)willMoveToView:(id)view
{
  pinchGR = [(UIWindowSceneActivationInteraction *)self pinchGR];
  view = [pinchGR view];
  pinchGR2 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [view removeGestureRecognizer:pinchGR2];

  doubleTapInteraction = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];

  if (doubleTapInteraction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    doubleTapInteraction2 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
    [WeakRetained removeInteraction:doubleTapInteraction2];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  if ([UIApp supportsMultipleScenes])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);

    if (WeakRetained)
    {
      pinchGR = [(UIWindowSceneActivationInteraction *)self pinchGR];

      if (!pinchGR)
      {
        v7 = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:sel__handlePinchGesture_];
        [(UIWindowSceneActivationInteraction *)self setPinchGR:v7];

        pinchGR2 = [(UIWindowSceneActivationInteraction *)self pinchGR];
        [pinchGR2 setName:@"com.apple.UIKit.UIWindowSceneActivationInteraction.pinch"];

        pinchGR3 = [(UIWindowSceneActivationInteraction *)self pinchGR];
        [pinchGR3 setDelegate:self];
      }

      v10 = objc_loadWeakRetained(&self->_view);
      pinchGR4 = [(UIWindowSceneActivationInteraction *)self pinchGR];
      [v10 addGestureRecognizer:pinchGR4];

      doubleTapInteraction = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];

      if (!doubleTapInteraction)
      {
        v13 = objc_opt_new();
        [(UIWindowSceneActivationInteraction *)self setDoubleTapInteraction:v13];

        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke;
        v23[3] = &unk_1E7122780;
        objc_copyWeak(&v24, &location);
        doubleTapInteraction2 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
        [doubleTapInteraction2 setShouldContinueProcessingSecondTap:v23];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __52__UIWindowSceneActivationInteraction_didMoveToView___block_invoke_2;
        v21[3] = &unk_1E7106120;
        objc_copyWeak(&v22, &location);
        doubleTapInteraction3 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
        [doubleTapInteraction3 setDidDoubleTap:v21];

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
      doubleTapInteraction4 = [(UIWindowSceneActivationInteraction *)self doubleTapInteraction];
      [v17 addInteraction:doubleTapInteraction4];
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

- (id)_targetedPreviewForContinuingEffectWithPreview:(id)preview
{
  previewCopy = preview;
  v4 = [_UIWindowSceneActivationEffectDescriptor descriptorWithPreview:previewCopy];
  v5 = +[_UIContentEffectManager sharedManager];
  v6 = [v5 compatibleEffectForDescriptor:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 previewForContinuingToEffectWithPreview:previewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    view = [(UIWindowSceneActivationInteraction *)self view];
    [gestureCopy locationInView:view];
    v6 = v5;
    v8 = v7;

    v9 = [(UIWindowSceneActivationInteraction *)self _requestConfigurationForLocation:v6, v8];
    [(UIWindowSceneActivationInteraction *)self _prepareEffectForActiveConfigurationAtLocation:0 completion:v6, v8];
  }

  else if ([gestureCopy state] == 2)
  {
    activeEffect = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [gestureCopy scale];
    [activeEffect advanceToScale:?];
  }

  else if ([gestureCopy state] >= 3)
  {
    v11 = [(UIWindowSceneActivationInteraction *)self _shouldActivateForEndingPinch:gestureCopy];
    [gestureCopy velocity];
    [(UIWindowSceneActivationInteraction *)self _endEffectWithVelocity:v11 forActiveConfigurationWithCompletionStatus:?];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  name = [gestureRecognizer name];
  v5 = [name hasPrefix:@"com.apple.UIKit.multi-select"];

  return v5;
}

- (BOOL)_shouldActivateForEndingPinch:(id)pinch
{
  pinchCopy = pinch;
  v4 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v4 pinchEndingProjectionDuration];
  v6 = v5;

  v7 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  [v7 pinchActivationScaleThreshold];
  v9 = v8;

  [pinchCopy scale];
  v11 = v10;
  [pinchCopy velocity];
  v13 = v11 + v6 * v12;
  state = [pinchCopy state];

  return v13 > v9 && state == 3;
}

- (void)_cancelInteraction
{
  pinchGR = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [pinchGR setEnabled:0];

  pinchGR2 = [(UIWindowSceneActivationInteraction *)self pinchGR];
  [pinchGR2 setEnabled:1];
}

- (void)_prewarmAnimationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [_UIWindowSceneActivationAnimator alloc];
  activeConfiguration = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
  v7 = [(_UIWindowSceneActivationAnimator *)v5 initWithConfiguration:activeConfiguration];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__UIWindowSceneActivationInteraction__prewarmAnimationWithCompletion___block_invoke;
  v10[3] = &unk_1E71227A8;
  v10[4] = self;
  v11 = v7;
  v12 = completionCopy;
  v8 = completionCopy;
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

- (id)_requestConfigurationForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  activeConfiguration = [(UIWindowSceneActivationInteraction *)self activeConfiguration];

  if (!activeConfiguration)
  {
    configurationProvider = [(UIWindowSceneActivationInteraction *)self configurationProvider];
    v8 = (configurationProvider)[2](configurationProvider, self, x, y);

    if (v8)
    {
      v9 = [v8 copy];

      view = [(UIWindowSceneActivationInteraction *)self view];
      window = [view window];
      windowScene = [window windowScene];

      view2 = [(UIWindowSceneActivationInteraction *)self view];
      _UIWindowSceneActivationPrepareConfiguration(v9, view2, self, windowScene, &__block_literal_global_542);
    }
  }

  return [(UIWindowSceneActivationInteraction *)self activeConfiguration];
}

- (void)_prepareEffectForActiveConfigurationAtLocation:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  completionCopy = completion;
  activeConfiguration = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
  if (activeConfiguration && (v9 = activeConfiguration, [(UIWindowSceneActivationInteraction *)self activeConfiguration], v10 = objc_claimAutoreleasedReturnValue(), IsAnimatable = _UIWindowSceneActivationIsAnimatable(v10), v10, v9, IsAnimatable))
  {
    view = [(UIWindowSceneActivationInteraction *)self view];
    v13 = [_UIWindowSceneActivationIdentifier identifierWithLocation:view inView:x, y];

    activeConfiguration2 = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
    preview = [activeConfiguration2 preview];

    v16 = [_UIWindowSceneActivationEffectDescriptor descriptorWithPreview:preview];
    v17 = +[_UIContentEffectManager sharedManager];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __96__UIWindowSceneActivationInteraction__prepareEffectForActiveConfigurationAtLocation_completion___block_invoke;
    v21[3] = &unk_1E71227D0;
    v22 = v16;
    v18 = v16;
    v19 = [v17 compatibleEffectForKey:v13 descriptor:v18 constructor:v21];
    [(UIWindowSceneActivationInteraction *)self setActiveEffect:v19];

    activeEffect = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [activeEffect begin];

    [(UIWindowSceneActivationInteraction *)self _prewarmAnimationWithCompletion:completionCopy];
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

- (void)_endEffectWithVelocity:(double)velocity forActiveConfigurationWithCompletionStatus:(BOOL)status
{
  if (status)
  {
    activeConfiguration = [(UIWindowSceneActivationInteraction *)self activeConfiguration];
    errorHandler = [(UIWindowSceneActivationInteraction *)self errorHandler];
    _UIWindowSceneActivateConfiguration(activeConfiguration, 0, errorHandler);
  }

  else
  {
    activeEffect = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [activeEffect endExpanded:0 withVelocity:velocity];

    animator = [(UIWindowSceneActivationInteraction *)self animator];
    [animator reparent];
    activeEffect2 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__UIWindowSceneActivationInteraction__endEffectWithVelocity_forActiveConfigurationWithCompletionStatus___block_invoke;
    v11[3] = &unk_1E71227F8;
    v12 = animator;
    activeConfiguration = animator;
    [activeEffect2 addCompletion:v11];
  }

  [(UIWindowSceneActivationInteraction *)self setActiveConfiguration:0];
  [(UIWindowSceneActivationInteraction *)self setActiveEffect:0];
  [(UIWindowSceneActivationInteraction *)self setAnimator:0];
}

- (void)_animateExpansionWithVelocity:(double)velocity
{
  animator = [(UIWindowSceneActivationInteraction *)self animator];
  activeEffect = [(UIWindowSceneActivationInteraction *)self activeEffect];
  handOffPreview = [activeEffect handOffPreview];
  v8 = [animator animateWithSourcePreview:handOffPreview velocity:velocity];

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
    activeEffect2 = [(UIWindowSceneActivationInteraction *)self activeEffect];
    [activeEffect2 endExpanded:0 withVelocity:velocity];
  }
}

void __68__UIWindowSceneActivationInteraction__animateExpansionWithVelocity___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activeEffect];
  [v1 endExpanded:0 withVelocity:0.0];
}

- (void)_prepareSceneActivationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy _setAnimationSource:2];
  [(UIWindowSceneActivationInteraction *)self setActiveConfiguration:configurationCopy];
}

- (BOOL)_canAnimateSceneActivationWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  activeConfiguration = [(UIWindowSceneActivationInteraction *)self activeConfiguration];

  return activeConfiguration == configurationCopy;
}

- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler
{
  animatedCopy = animated;
  configurationCopy = configuration;
  senderCopy = sender;
  handlerCopy = handler;
  if (animatedCopy)
  {
    pinchGR = [(UIWindowSceneActivationInteraction *)self pinchGR];
    [pinchGR velocity];
    [(UIWindowSceneActivationInteraction *)self _animateExpansionWithVelocity:?];
  }

  [UIApp _requestSceneActivationWithConfiguration:configurationCopy animated:0 sender:senderCopy errorHandler:handlerCopy];
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end