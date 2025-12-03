@interface _UIWindowSceneActivationAnimator
- (BOOL)animateWithSourcePreview:(id)preview velocity:(double)velocity;
- (CGRect)expectedFrame;
- (FBSScene)sourceFBSScene;
- (UIRectCornerRadii)expectedCornerRadii;
- (_UIMagicMorphAnimation)morphAnimation;
- (_UIWindowSceneActivationAnimator)initWithConfiguration:(id)configuration;
- (double)_startingShadowIntensity;
- (id)_previewForIncomingScenePortal;
- (id)_sourceViewContainer;
- (int64_t)_preferredCollapsedShadowStyle;
- (void)_cleanUp;
- (void)_performAllAlongsideAnimations:(id)animations;
- (void)_performAllAlongsideCompletions;
- (void)_runAnimationWithSourcePreview:(id)preview velocity:(double)velocity;
- (void)_runLegacyAnimationWithSourcePreview:(id)preview velocity:(double)velocity;
- (void)_sendBSAction:(id)action;
- (void)_sendCompletionActionCallingAlongsideCompletions:(BOOL)completions;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)cancel;
- (void)dealloc;
- (void)prewarmWithCompletion:(id)completion;
- (void)setDeparented:(BOOL)deparented;
@end

@implementation _UIWindowSceneActivationAnimator

- (_UIWindowSceneActivationAnimator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = _UIWindowSceneActivationAnimator;
  v6 = [(_UIWindowSceneActivationAnimator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    options = [configurationCopy options];
    requestingScene = [options requestingScene];
    _FBSScene = [requestingScene _FBSScene];
    objc_storeWeak(&v7->_sourceFBSScene, _FBSScene);
  }

  return v7;
}

- (void)dealloc
{
  [(_UIWindowSceneActivationAnimator *)self setIsDeallocating:1];
  [(_UIWindowSceneActivationAnimator *)self cancel];
  v3.receiver = self;
  v3.super_class = _UIWindowSceneActivationAnimator;
  [(_UIWindowSceneActivationAnimator *)&v3 dealloc];
}

- (void)prewarmWithCompletion:(id)completion
{
  v60[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _sourceViewContainer = [(_UIWindowSceneActivationAnimator *)self _sourceViewContainer];
  v5 = [UIView alloc];
  [_sourceViewContainer bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  [(UIView *)v6 setAutoresizesSubviews:1];
  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v60[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  layer = [(UIView *)v6 layer];
  [layer setFilters:v8];

  layer2 = [(UIView *)v6 layer];
  [layer2 setValue:&unk_1EFE2E7E8 forKeyPath:@"filters.opacityPair.inputAmount"];

  [(_UIWindowSceneActivationAnimator *)self setDeparentingWrapper:v6];
  v11 = [UIView alloc];
  deparentingWrapper = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [deparentingWrapper bounds];
  v13 = [(UIView *)v11 initWithFrame:?];

  [(UIView *)v13 setAutoresizingMask:18];
  layer3 = [(UIView *)v13 layer];
  [layer3 setName:@"_UIWindowSceneActivationAnimator.morphContainerView"];

  deparentingWrapper2 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [deparentingWrapper2 addSubview:v13];

  [(_UIWindowSceneActivationAnimator *)self setMorphContainerView:v13];
  deparentingWrapper3 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [_sourceViewContainer addSubview:deparentingWrapper3];

  v17 = [[UIView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  [(UIView *)v17 setUserInteractionEnabled:0];
  [(UIView *)v17 setAlpha:0.0];
  [_sourceViewContainer addSubview:v17];
  [(_UIWindowSceneActivationAnimator *)self setDeparentingPortalAlphaSourceView:v17];

  v18 = [[_UIPortalView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  v19 = +[UIColor systemBackgroundColor];
  [(UIView *)v18 setBackgroundColor:v19];

  [(_UIPortalView *)v18 setName:@"_UIWindowSceneActivation.scene"];
  [(_UIPortalView *)v18 setAllowsHitTesting:1];
  [(_UIPortalView *)v18 setHidesSourceView:1];
  layer4 = [(UIView *)v18 layer];
  [layer4 setShadowPathIsBounds:1];

  layer5 = [(UIView *)v18 layer];
  [layer5 setShadowRadius:56.0];

  layer6 = [(UIView *)v18 layer];
  [layer6 setShadowOffset:{0.0, 7.0}];

  layer7 = [(UIView *)v18 layer];
  LODWORD(v24) = 1047904911;
  [layer7 setShadowOpacity:v24];

  [(_UIWindowSceneActivationAnimator *)self setIncomingScenePortalView:v18];
  configuration = [(_UIWindowSceneActivationAnimator *)self configuration];
  options = [configuration options];

  _effectivelyWantsProminence = [options _effectivelyWantsProminence];
  _effectivelyWantsFullscreen = [options _effectivelyWantsFullscreen];
  requestingScene = [options requestingScene];
  session = [requestingScene session];

  if (session)
  {
    persistentIdentifier = [session persistentIdentifier];
  }

  else
  {
    persistentIdentifier = 0;
  }

  _window = [_sourceViewContainer _window];
  if (_effectivelyWantsFullscreen)
  {
    v30 = _UISheetSize(_window, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  else
  {
    v30 = _UISheetSize(_window, 1, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  v32 = v30;
  v33 = v31;

  _window2 = [_sourceViewContainer _window];
  screen = [_window2 screen];

  [screen bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  coordinateSpace = [screen coordinateSpace];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  [coordinateSpace convertRect:fixedCoordinateSpace toCoordinateSpace:{round(v37 + v41 * 0.5 - v32 * 0.5), round(v39 + v43 * 0.5 - v33 * 0.5), v32, v33}];
  [(_UIWindowSceneActivationAnimator *)self setExpectedFrame:?];

  [(_UIWindowSceneActivationAnimator *)self setExpectedCornerRadii:10.0, 10.0, 10.0, 10.0];
  _interactionIdentifier = [options _interactionIdentifier];
  if (!_interactionIdentifier)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    _interactionIdentifier = [uUID UUIDString];

    [options _setInteractionIdentifier:_interactionIdentifier];
  }

  objc_initWeak(&location, self);
  morphContainerView = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  deparentingPortalAlphaSourceView = [(_UIWindowSceneActivationAnimator *)self deparentingPortalAlphaSourceView];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __58___UIWindowSceneActivationAnimator_prewarmWithCompletion___block_invoke;
  v56[3] = &unk_1E7117810;
  objc_copyWeak(&v58, &location);
  v50 = completionCopy;
  v57 = v50;
  v51 = [_UIWindowSceneActivationPrewarmAction actionWithMorphContainer:morphContainerView alphaSource:deparentingPortalAlphaSourceView sourceIdentifier:persistentIdentifier interactionIdentifier:_interactionIdentifier requestCenterSlot:_effectivelyWantsProminence requestFullscreen:_effectivelyWantsFullscreen responseHandler:v56];

  [(_UIWindowSceneActivationAnimator *)self _sendBSAction:v51];
  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
}

- (BOOL)animateWithSourcePreview:(id)preview velocity:(double)velocity
{
  previewCopy = preview;
  state = [(_UIWindowSceneActivationAnimator *)self state];
  if (state == 2)
  {
    [(_UIWindowSceneActivationAnimator *)self cancel];
  }

  else
  {
    target = [previewCopy target];
    container = [target container];

    morphContainerView = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
    layer = [morphContainerView layer];
    incomingSceneAnchorAnimation = [(_UIWindowSceneActivationAnimator *)self incomingSceneAnchorAnimation];
    [layer addAnimation:incomingSceneAnchorAnimation forKey:@"_UIWindowSceneActivationAnimator.incomingScene.matchPosition"];

    window = [morphContainerView window];
    [(_UIWindowSceneActivationAnimator *)self expectedFrame];
    [window _convertRectFromSceneReferenceSpace:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    superview = [morphContainerView superview];
    window2 = [morphContainerView window];
    [superview convertRect:window2 fromView:{v15, v17, v19, v21}];
    [morphContainerView setFrame:?];

    deparentingWrapper = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
    LOBYTE(window2) = [container isDescendantOfView:deparentingWrapper];

    if ((window2 & 1) == 0)
    {
      view = [previewCopy view];
      superview2 = [view superview];

      deparentingWrapper2 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
      if (superview2 == container)
      {
        view2 = [previewCopy view];
        [container insertSubview:deparentingWrapper2 aboveSubview:view2];
      }

      else
      {
        [container addSubview:deparentingWrapper2];
      }
    }

    if (_UISolariumEnabled())
    {
      [(_UIWindowSceneActivationAnimator *)self _runAnimationWithSourcePreview:previewCopy velocity:velocity];
    }

    else
    {
      [(_UIWindowSceneActivationAnimator *)self _runLegacyAnimationWithSourcePreview:previewCopy velocity:velocity];
    }

    [(_UIWindowSceneActivationAnimator *)self deparent];
  }

  return state != 2;
}

- (void)_runAnimationWithSourcePreview:(id)preview velocity:(double)velocity
{
  previewCopy = preview;
  morphAnimation = [(_UIWindowSceneActivationAnimator *)self morphAnimation];
  morphContainerView = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  [morphAnimation setClientContainerView:morphContainerView];
  [morphAnimation morphTo:previewCopy reparentWithoutAnimation:1 alongsideAnimations:0 completion:0];

  _previewForIncomingScenePortal = [(_UIWindowSceneActivationAnimator *)self _previewForIncomingScenePortal];
  if (fabs(velocity) >= 2.22044605e-16)
  {
    morphContainer = [morphAnimation morphContainer];
    v11 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v11 pinchEndPlatterVelocityMultiplier];
    v13 = v12;

    target = [_previewForIncomingScenePortal target];
    [target center];
    v16 = v15;
    v18 = v17;
    [morphContainer center];
    v20 = v16 - v19;
    v22 = v18 - v21;

    v30[0] = v13 * v20;
    v30[1] = v13 * v22;
    v23 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGPoint=dd}"];
    [morphContainer _setVelocity:v23 forKey:@"position"];

    v29[0] = 0;
    v29[1] = 0;
    *&v29[2] = v13 * velocity;
    *&v29[3] = v13 * velocity;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [morphContainer _setVelocity:v24 forKey:@"bounds"];
  }

  v26[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __76___UIWindowSceneActivationAnimator__runAnimationWithSourcePreview_velocity___block_invoke;
  v27[3] = &unk_1E70F35B8;
  v27[4] = self;
  v28 = morphAnimation;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76___UIWindowSceneActivationAnimator__runAnimationWithSourcePreview_velocity___block_invoke_2;
  v26[3] = &unk_1E70F3590;
  v25 = morphAnimation;
  [v25 morphTo:_previewForIncomingScenePortal reparentWithoutAnimation:1 alongsideAnimations:v27 completion:v26];
}

- (void)_runLegacyAnimationWithSourcePreview:(id)preview velocity:(double)velocity
{
  previewCopy = preview;
  v7 = objc_opt_new();
  [v7 setAllowsUserInteractionInExpandedPreview:1];
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  [v7 setOverrideExpandedCornerRadius:?];
  [(_UIWindowSceneActivationAnimator *)self _startingShadowIntensity];
  [v7 setCollapsedShadowIntensity:?];
  [v7 setAllowsElasticMorph:1];
  [v7 setPreferredMorphingAxis:1];
  [v7 setHidesCollapsedSourceView:0];
  [v7 setCollapsedPreview:previewCopy];
  _previewForIncomingScenePortal = [(_UIWindowSceneActivationAnimator *)self _previewForIncomingScenePortal];
  [v7 setExpandedPreview:_previewForIncomingScenePortal];

  [v7 setCollapsedShadowStyle:{-[_UIWindowSceneActivationAnimator _preferredCollapsedShadowStyle](self, "_preferredCollapsedShadowStyle")}];
  [v7 setExpandedShadowStyle:3];
  morphContainerView = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  [morphContainerView addSubview:v7];
  target = [previewCopy target];
  target2 = [previewCopy target];
  container = [target2 container];

  [target center];
  v14 = v13;
  v16 = v15;
  [previewCopy size];
  v18 = v17;
  v20 = v19;

  superview = [v7 superview];
  [container convertRect:superview toView:{0.0, 0.0, v18, v20}];
  [v7 setFrame:?];

  superview2 = [v7 superview];
  [container convertPoint:superview2 toView:{v14, v16}];
  v24 = v23;
  v26 = v25;

  if ([container _isRenderedHorizontallyFlipped])
  {
    superview3 = [v7 superview];
    [superview3 bounds];
    v24 = CGRectGetWidth(v69) - v24;
  }

  [v7 setCenter:{v24, v26}];
  if (target)
  {
    [target transform];
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
  }

  v65[0] = v66;
  v65[1] = v67;
  v65[2] = v68;
  [v7 setTransform:v65];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];
  [morphContainerView bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v28 + v32 * 0.5;
  v37 = v30 + v34 * 0.5;
  if (fabs(velocity) >= 2.22044605e-16)
  {
    v38 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v38 pinchEndPlatterVelocityMultiplier];
    v40 = v39;

    [v7 center];
    v64[0] = v40 * (v36 - v41);
    v64[1] = v40 * (v37 - v42);
    v43 = [MEMORY[0x1E696B098] valueWithBytes:v64 objCType:"{CGPoint=dd}"];
    [v7 _setVelocity:v43 forKey:@"position"];

    v63[0] = 0;
    v63[1] = 0;
    *&v63[2] = v40 * velocity;
    *&v63[3] = v40 * velocity;
    v44 = [MEMORY[0x1E696B098] valueWithBytes:v63 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v7 _setVelocity:v44 forKey:@"bounds"];
  }

  v45 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  morph = [v45 morph];
  springAnimationBehavior = [morph springAnimationBehavior];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __82___UIWindowSceneActivationAnimator__runLegacyAnimationWithSourcePreview_velocity___block_invoke;
  v51[3] = &unk_1E7117838;
  v54 = v36;
  v55 = v37;
  v56 = v29;
  v57 = v31;
  v58 = v33;
  v59 = v35;
  v48 = *(MEMORY[0x1E695EFD0] + 16);
  v60 = *MEMORY[0x1E695EFD0];
  v61 = v48;
  v62 = *(MEMORY[0x1E695EFD0] + 32);
  v52 = v7;
  selfCopy = self;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __82___UIWindowSceneActivationAnimator__runLegacyAnimationWithSourcePreview_velocity___block_invoke_2;
  v50[3] = &unk_1E70F3FD8;
  v50[4] = self;
  v49 = v7;
  [UIView _animateUsingSpringBehavior:springAnimationBehavior tracking:0 animations:v51 completion:v50];
}

- (void)cancel
{
  state = [(_UIWindowSceneActivationAnimator *)self state];
  if ((state - 1) <= 1)
  {
    v4 = state;
    [(_UIWindowSceneActivationAnimator *)self setState:3];
    [(_UIWindowSceneActivationAnimator *)self reparent];
    if (v4 == 1)
    {

      [(_UIWindowSceneActivationAnimator *)self _sendCompletionActionCallingAlongsideCompletions:0];
    }

    else
    {

      [(_UIWindowSceneActivationAnimator *)self _cleanUp];
    }
  }
}

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  alongsideAnimations = self->_alongsideAnimations;
  aBlock = animationsCopy;
  if (!alongsideAnimations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alongsideAnimations;
    self->_alongsideAnimations = array;

    animationsCopy = aBlock;
    alongsideAnimations = self->_alongsideAnimations;
  }

  v8 = _Block_copy(animationsCopy);
  [(NSMutableArray *)alongsideAnimations addObject:v8];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  alongsideCompletions = self->_alongsideCompletions;
  aBlock = completionCopy;
  if (!alongsideCompletions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alongsideCompletions;
    self->_alongsideCompletions = array;

    completionCopy = aBlock;
    alongsideCompletions = self->_alongsideCompletions;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)alongsideCompletions addObject:v8];
}

- (_UIMagicMorphAnimation)morphAnimation
{
  morphAnimation = self->_morphAnimation;
  if (!morphAnimation)
  {
    v4 = objc_opt_new();
    v5 = self->_morphAnimation;
    self->_morphAnimation = v4;

    [(_UIMagicMorphAnimation *)self->_morphAnimation setCleansUpAutomatically:0];
    morphAnimation = self->_morphAnimation;
  }

  return morphAnimation;
}

- (void)setDeparented:(BOOL)deparented
{
  if (self->_deparented != deparented)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_deparented = deparented;
    v6 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50___UIWindowSceneActivationAnimator_setDeparented___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView _animateUsingSpringBehavior:v6 tracking:0 animations:v7 completion:0];
  }
}

- (id)_sourceViewContainer
{
  configuration = [(_UIWindowSceneActivationAnimator *)self configuration];
  preview = [configuration preview];
  target = [preview target];
  container = [target container];

  return container;
}

- (id)_previewForIncomingScenePortal
{
  incomingScenePortalView = [(_UIWindowSceneActivationAnimator *)self incomingScenePortalView];
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v5 = v4;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v7 = v6;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v9 = v8;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v11 = v10;
  layer = [incomingScenePortalView layer];
  v24[0] = v9;
  v24[1] = v9;
  v24[2] = v11;
  v24[3] = v11;
  v24[4] = v7;
  v24[5] = v7;
  v24[6] = v5;
  v24[7] = v5;
  [layer setCornerRadii:v24];

  morphContainerView = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  v14 = [UIPreviewTarget alloc];
  [morphContainerView bounds];
  v19 = [(UIPreviewTarget *)v14 initWithContainer:morphContainerView center:v16 + v15 * 0.5, v18 + v17 * 0.5];
  v20 = objc_opt_new();
  backgroundColor = [incomingScenePortalView backgroundColor];
  [v20 setBackgroundColor:backgroundColor];

  v22 = [[UITargetedPreview alloc] initWithView:incomingScenePortalView parameters:v20 target:v19];

  return v22;
}

- (void)_sendCompletionActionCallingAlongsideCompletions:(BOOL)completions
{
  completionsCopy = completions;
  [(_UIWindowSceneActivationAnimator *)self setState:3];
  configuration = [(_UIWindowSceneActivationAnimator *)self configuration];
  options = [configuration options];
  _interactionIdentifier = [options _interactionIdentifier];

  if ([(_UIWindowSceneActivationAnimator *)self isDeallocating])
  {
    [(_UIWindowSceneActivationAnimator *)self _cleanUp];
    if (completionsCopy)
    {
      [(_UIWindowSceneActivationAnimator *)self _performAllAlongsideCompletions];
    }

    v8 = &__block_literal_global_391;
  }

  else
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __85___UIWindowSceneActivationAnimator__sendCompletionActionCallingAlongsideCompletions___block_invoke_2;
    v13 = &unk_1E7117860;
    selfCopy = self;
    LOBYTE(v15) = completionsCopy;
    v8 = &v10;
  }

  v9 = [_UIWindowSceneActivationCleanupAction actionWithInteractionIdentifier:_interactionIdentifier responseHandler:v8, v10, v11, v12, v13, selfCopy, v15];
  [(_UIWindowSceneActivationAnimator *)self _sendBSAction:v9];
}

- (void)_cleanUp
{
  deparentingWrapper = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];

  if (deparentingWrapper)
  {
    deparentingWrapper2 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
    [deparentingWrapper2 removeFromSuperview];

    [(_UIWindowSceneActivationAnimator *)self setDeparentingWrapper:0];
    [(_UIWindowSceneActivationAnimator *)self setMorphContainerView:0];
    [(_UIWindowSceneActivationAnimator *)self setIncomingScenePortalView:0];
    deparentingPortalAlphaSourceView = [(_UIWindowSceneActivationAnimator *)self deparentingPortalAlphaSourceView];
    [deparentingPortalAlphaSourceView removeFromSuperview];

    [(_UIWindowSceneActivationAnimator *)self setDeparentingPortalAlphaSourceView:0];
    [(_UIWindowSceneActivationAnimator *)self setState:4];
    morphAnimation = [(_UIWindowSceneActivationAnimator *)self morphAnimation];
    [morphAnimation cancel];
  }
}

- (void)_performAllAlongsideAnimations:(id)animations
{
  v16 = *MEMORY[0x1E69E9840];
  animationsCopy = animations;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  alongsideAnimations = [(_UIWindowSceneActivationAnimator *)self alongsideAnimations];
  v6 = [alongsideAnimations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(alongsideAnimations);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [alongsideAnimations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;
}

- (void)_performAllAlongsideCompletions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  alongsideCompletions = [(_UIWindowSceneActivationAnimator *)self alongsideCompletions];
  v4 = [alongsideCompletions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(alongsideCompletions);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [alongsideCompletions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  alongsideCompletions = self->_alongsideCompletions;
  self->_alongsideCompletions = 0;
}

- (void)_sendBSAction:(id)action
{
  actionCopy = action;
  sourceFBSScene = [(_UIWindowSceneActivationAnimator *)self sourceFBSScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];

  [sourceFBSScene sendActions:v5];
}

- (double)_startingShadowIntensity
{
  configuration = [(_UIWindowSceneActivationAnimator *)self configuration];
  _animationSource = [configuration _animationSource];

  if (_animationSource == 2)
  {
    v5 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v5 pinchPlatterMaxShadowIntensity];
    v7 = v6;

    return v7;
  }

  else
  {
    result = 0.0;
    if (_animationSource == 1)
    {
      return 1.0;
    }
  }

  return result;
}

- (int64_t)_preferredCollapsedShadowStyle
{
  configuration = [(_UIWindowSceneActivationAnimator *)self configuration];
  _animationSource = [configuration _animationSource];

  if (_animationSource == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (_animationSource == 1);
  }
}

- (FBSScene)sourceFBSScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceFBSScene);

  return WeakRetained;
}

- (CGRect)expectedFrame
{
  x = self->_expectedFrame.origin.x;
  y = self->_expectedFrame.origin.y;
  width = self->_expectedFrame.size.width;
  height = self->_expectedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIRectCornerRadii)expectedCornerRadii
{
  topLeft = self->_expectedCornerRadii.topLeft;
  bottomLeft = self->_expectedCornerRadii.bottomLeft;
  bottomRight = self->_expectedCornerRadii.bottomRight;
  topRight = self->_expectedCornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

@end