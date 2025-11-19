@interface _UIWindowSceneActivationAnimator
- (BOOL)animateWithSourcePreview:(id)a3 velocity:(double)a4;
- (CGRect)expectedFrame;
- (FBSScene)sourceFBSScene;
- (UIRectCornerRadii)expectedCornerRadii;
- (_UIMagicMorphAnimation)morphAnimation;
- (_UIWindowSceneActivationAnimator)initWithConfiguration:(id)a3;
- (double)_startingShadowIntensity;
- (id)_previewForIncomingScenePortal;
- (id)_sourceViewContainer;
- (int64_t)_preferredCollapsedShadowStyle;
- (void)_cleanUp;
- (void)_performAllAlongsideAnimations:(id)a3;
- (void)_performAllAlongsideCompletions;
- (void)_runAnimationWithSourcePreview:(id)a3 velocity:(double)a4;
- (void)_runLegacyAnimationWithSourcePreview:(id)a3 velocity:(double)a4;
- (void)_sendBSAction:(id)a3;
- (void)_sendCompletionActionCallingAlongsideCompletions:(BOOL)a3;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)prewarmWithCompletion:(id)a3;
- (void)setDeparented:(BOOL)a3;
@end

@implementation _UIWindowSceneActivationAnimator

- (_UIWindowSceneActivationAnimator)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIWindowSceneActivationAnimator;
  v6 = [(_UIWindowSceneActivationAnimator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [v5 options];
    v9 = [v8 requestingScene];
    v10 = [v9 _FBSScene];
    objc_storeWeak(&v7->_sourceFBSScene, v10);
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

- (void)prewarmWithCompletion:(id)a3
{
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55 = [(_UIWindowSceneActivationAnimator *)self _sourceViewContainer];
  v5 = [UIView alloc];
  [v55 bounds];
  v6 = [(UIView *)v5 initWithFrame:?];
  [(UIView *)v6 setAutoresizesSubviews:1];
  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v60[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v9 = [(UIView *)v6 layer];
  [v9 setFilters:v8];

  v10 = [(UIView *)v6 layer];
  [v10 setValue:&unk_1EFE2E7E8 forKeyPath:@"filters.opacityPair.inputAmount"];

  [(_UIWindowSceneActivationAnimator *)self setDeparentingWrapper:v6];
  v11 = [UIView alloc];
  v12 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [v12 bounds];
  v13 = [(UIView *)v11 initWithFrame:?];

  [(UIView *)v13 setAutoresizingMask:18];
  v14 = [(UIView *)v13 layer];
  [v14 setName:@"_UIWindowSceneActivationAnimator.morphContainerView"];

  v15 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [v15 addSubview:v13];

  [(_UIWindowSceneActivationAnimator *)self setMorphContainerView:v13];
  v16 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
  [v55 addSubview:v16];

  v17 = [[UIView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  [(UIView *)v17 setUserInteractionEnabled:0];
  [(UIView *)v17 setAlpha:0.0];
  [v55 addSubview:v17];
  [(_UIWindowSceneActivationAnimator *)self setDeparentingPortalAlphaSourceView:v17];

  v18 = [[_UIPortalView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
  v19 = +[UIColor systemBackgroundColor];
  [(UIView *)v18 setBackgroundColor:v19];

  [(_UIPortalView *)v18 setName:@"_UIWindowSceneActivation.scene"];
  [(_UIPortalView *)v18 setAllowsHitTesting:1];
  [(_UIPortalView *)v18 setHidesSourceView:1];
  v20 = [(UIView *)v18 layer];
  [v20 setShadowPathIsBounds:1];

  v21 = [(UIView *)v18 layer];
  [v21 setShadowRadius:56.0];

  v22 = [(UIView *)v18 layer];
  [v22 setShadowOffset:{0.0, 7.0}];

  v23 = [(UIView *)v18 layer];
  LODWORD(v24) = 1047904911;
  [v23 setShadowOpacity:v24];

  [(_UIWindowSceneActivationAnimator *)self setIncomingScenePortalView:v18];
  v25 = [(_UIWindowSceneActivationAnimator *)self configuration];
  v26 = [v25 options];

  v52 = [v26 _effectivelyWantsProminence];
  v54 = [v26 _effectivelyWantsFullscreen];
  v27 = [v26 requestingScene];
  v28 = [v27 session];

  if (v28)
  {
    v53 = [v28 persistentIdentifier];
  }

  else
  {
    v53 = 0;
  }

  v29 = [v55 _window];
  if (v54)
  {
    v30 = _UISheetSize(v29, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  else
  {
    v30 = _UISheetSize(v29, 1, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  v32 = v30;
  v33 = v31;

  v34 = [v55 _window];
  v35 = [v34 screen];

  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [v35 coordinateSpace];
  v45 = [v35 fixedCoordinateSpace];
  [v44 convertRect:v45 toCoordinateSpace:{round(v37 + v41 * 0.5 - v32 * 0.5), round(v39 + v43 * 0.5 - v33 * 0.5), v32, v33}];
  [(_UIWindowSceneActivationAnimator *)self setExpectedFrame:?];

  [(_UIWindowSceneActivationAnimator *)self setExpectedCornerRadii:10.0, 10.0, 10.0, 10.0];
  v46 = [v26 _interactionIdentifier];
  if (!v46)
  {
    v47 = [MEMORY[0x1E696AFB0] UUID];
    v46 = [v47 UUIDString];

    [v26 _setInteractionIdentifier:v46];
  }

  objc_initWeak(&location, self);
  v48 = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  v49 = [(_UIWindowSceneActivationAnimator *)self deparentingPortalAlphaSourceView];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __58___UIWindowSceneActivationAnimator_prewarmWithCompletion___block_invoke;
  v56[3] = &unk_1E7117810;
  objc_copyWeak(&v58, &location);
  v50 = v4;
  v57 = v50;
  v51 = [_UIWindowSceneActivationPrewarmAction actionWithMorphContainer:v48 alphaSource:v49 sourceIdentifier:v53 interactionIdentifier:v46 requestCenterSlot:v52 requestFullscreen:v54 responseHandler:v56];

  [(_UIWindowSceneActivationAnimator *)self _sendBSAction:v51];
  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);
}

- (BOOL)animateWithSourcePreview:(id)a3 velocity:(double)a4
{
  v6 = a3;
  v7 = [(_UIWindowSceneActivationAnimator *)self state];
  if (v7 == 2)
  {
    [(_UIWindowSceneActivationAnimator *)self cancel];
  }

  else
  {
    v8 = [v6 target];
    v9 = [v8 container];

    v10 = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
    v11 = [v10 layer];
    v12 = [(_UIWindowSceneActivationAnimator *)self incomingSceneAnchorAnimation];
    [v11 addAnimation:v12 forKey:@"_UIWindowSceneActivationAnimator.incomingScene.matchPosition"];

    v13 = [v10 window];
    [(_UIWindowSceneActivationAnimator *)self expectedFrame];
    [v13 _convertRectFromSceneReferenceSpace:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [v10 superview];
    v23 = [v10 window];
    [v22 convertRect:v23 fromView:{v15, v17, v19, v21}];
    [v10 setFrame:?];

    v24 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
    LOBYTE(v23) = [v9 isDescendantOfView:v24];

    if ((v23 & 1) == 0)
    {
      v25 = [v6 view];
      v26 = [v25 superview];

      v27 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
      if (v26 == v9)
      {
        v28 = [v6 view];
        [v9 insertSubview:v27 aboveSubview:v28];
      }

      else
      {
        [v9 addSubview:v27];
      }
    }

    if (_UISolariumEnabled())
    {
      [(_UIWindowSceneActivationAnimator *)self _runAnimationWithSourcePreview:v6 velocity:a4];
    }

    else
    {
      [(_UIWindowSceneActivationAnimator *)self _runLegacyAnimationWithSourcePreview:v6 velocity:a4];
    }

    [(_UIWindowSceneActivationAnimator *)self deparent];
  }

  return v7 != 2;
}

- (void)_runAnimationWithSourcePreview:(id)a3 velocity:(double)a4
{
  v6 = a3;
  v7 = [(_UIWindowSceneActivationAnimator *)self morphAnimation];
  v8 = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  [v7 setClientContainerView:v8];
  [v7 morphTo:v6 reparentWithoutAnimation:1 alongsideAnimations:0 completion:0];

  v9 = [(_UIWindowSceneActivationAnimator *)self _previewForIncomingScenePortal];
  if (fabs(a4) >= 2.22044605e-16)
  {
    v10 = [v7 morphContainer];
    v11 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v11 pinchEndPlatterVelocityMultiplier];
    v13 = v12;

    v14 = [v9 target];
    [v14 center];
    v16 = v15;
    v18 = v17;
    [v10 center];
    v20 = v16 - v19;
    v22 = v18 - v21;

    v30[0] = v13 * v20;
    v30[1] = v13 * v22;
    v23 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGPoint=dd}"];
    [v10 _setVelocity:v23 forKey:@"position"];

    v29[0] = 0;
    v29[1] = 0;
    *&v29[2] = v13 * a4;
    *&v29[3] = v13 * a4;
    v24 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v10 _setVelocity:v24 forKey:@"bounds"];
  }

  v26[4] = self;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __76___UIWindowSceneActivationAnimator__runAnimationWithSourcePreview_velocity___block_invoke;
  v27[3] = &unk_1E70F35B8;
  v27[4] = self;
  v28 = v7;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __76___UIWindowSceneActivationAnimator__runAnimationWithSourcePreview_velocity___block_invoke_2;
  v26[3] = &unk_1E70F3590;
  v25 = v7;
  [v25 morphTo:v9 reparentWithoutAnimation:1 alongsideAnimations:v27 completion:v26];
}

- (void)_runLegacyAnimationWithSourcePreview:(id)a3 velocity:(double)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setAllowsUserInteractionInExpandedPreview:1];
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  [v7 setOverrideExpandedCornerRadius:?];
  [(_UIWindowSceneActivationAnimator *)self _startingShadowIntensity];
  [v7 setCollapsedShadowIntensity:?];
  [v7 setAllowsElasticMorph:1];
  [v7 setPreferredMorphingAxis:1];
  [v7 setHidesCollapsedSourceView:0];
  [v7 setCollapsedPreview:v6];
  v8 = [(_UIWindowSceneActivationAnimator *)self _previewForIncomingScenePortal];
  [v7 setExpandedPreview:v8];

  [v7 setCollapsedShadowStyle:{-[_UIWindowSceneActivationAnimator _preferredCollapsedShadowStyle](self, "_preferredCollapsedShadowStyle")}];
  [v7 setExpandedShadowStyle:3];
  v9 = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  [v9 addSubview:v7];
  v10 = [v6 target];
  v11 = [v6 target];
  v12 = [v11 container];

  [v10 center];
  v14 = v13;
  v16 = v15;
  [v6 size];
  v18 = v17;
  v20 = v19;

  v21 = [v7 superview];
  [v12 convertRect:v21 toView:{0.0, 0.0, v18, v20}];
  [v7 setFrame:?];

  v22 = [v7 superview];
  [v12 convertPoint:v22 toView:{v14, v16}];
  v24 = v23;
  v26 = v25;

  if ([v12 _isRenderedHorizontallyFlipped])
  {
    v27 = [v7 superview];
    [v27 bounds];
    v24 = CGRectGetWidth(v69) - v24;
  }

  [v7 setCenter:{v24, v26}];
  if (v10)
  {
    [v10 transform];
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
  [v9 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v28 + v32 * 0.5;
  v37 = v30 + v34 * 0.5;
  if (fabs(a4) >= 2.22044605e-16)
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
    *&v63[2] = v40 * a4;
    *&v63[3] = v40 * a4;
    v44 = [MEMORY[0x1E696B098] valueWithBytes:v63 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v7 _setVelocity:v44 forKey:@"bounds"];
  }

  v45 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
  v46 = [v45 morph];
  v47 = [v46 springAnimationBehavior];
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
  v53 = self;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __82___UIWindowSceneActivationAnimator__runLegacyAnimationWithSourcePreview_velocity___block_invoke_2;
  v50[3] = &unk_1E70F3FD8;
  v50[4] = self;
  v49 = v7;
  [UIView _animateUsingSpringBehavior:v47 tracking:0 animations:v51 completion:v50];
}

- (void)cancel
{
  v3 = [(_UIWindowSceneActivationAnimator *)self state];
  if ((v3 - 1) <= 1)
  {
    v4 = v3;
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

- (void)addAnimations:(id)a3
{
  v4 = a3;
  alongsideAnimations = self->_alongsideAnimations;
  aBlock = v4;
  if (!alongsideAnimations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alongsideAnimations;
    self->_alongsideAnimations = v6;

    v4 = aBlock;
    alongsideAnimations = self->_alongsideAnimations;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)alongsideAnimations addObject:v8];
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  alongsideCompletions = self->_alongsideCompletions;
  aBlock = v4;
  if (!alongsideCompletions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alongsideCompletions;
    self->_alongsideCompletions = v6;

    v4 = aBlock;
    alongsideCompletions = self->_alongsideCompletions;
  }

  v8 = _Block_copy(v4);
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

- (void)setDeparented:(BOOL)a3
{
  if (self->_deparented != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_deparented = a3;
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
  v2 = [(_UIWindowSceneActivationAnimator *)self configuration];
  v3 = [v2 preview];
  v4 = [v3 target];
  v5 = [v4 container];

  return v5;
}

- (id)_previewForIncomingScenePortal
{
  v3 = [(_UIWindowSceneActivationAnimator *)self incomingScenePortalView];
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v5 = v4;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v7 = v6;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v9 = v8;
  [(_UIWindowSceneActivationAnimator *)self expectedCornerRadii];
  v11 = v10;
  v12 = [v3 layer];
  v24[0] = v9;
  v24[1] = v9;
  v24[2] = v11;
  v24[3] = v11;
  v24[4] = v7;
  v24[5] = v7;
  v24[6] = v5;
  v24[7] = v5;
  [v12 setCornerRadii:v24];

  v13 = [(_UIWindowSceneActivationAnimator *)self morphContainerView];
  v14 = [UIPreviewTarget alloc];
  [v13 bounds];
  v19 = [(UIPreviewTarget *)v14 initWithContainer:v13 center:v16 + v15 * 0.5, v18 + v17 * 0.5];
  v20 = objc_opt_new();
  v21 = [v3 backgroundColor];
  [v20 setBackgroundColor:v21];

  v22 = [[UITargetedPreview alloc] initWithView:v3 parameters:v20 target:v19];

  return v22;
}

- (void)_sendCompletionActionCallingAlongsideCompletions:(BOOL)a3
{
  v3 = a3;
  [(_UIWindowSceneActivationAnimator *)self setState:3];
  v5 = [(_UIWindowSceneActivationAnimator *)self configuration];
  v6 = [v5 options];
  v7 = [v6 _interactionIdentifier];

  if ([(_UIWindowSceneActivationAnimator *)self isDeallocating])
  {
    [(_UIWindowSceneActivationAnimator *)self _cleanUp];
    if (v3)
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
    v14 = self;
    LOBYTE(v15) = v3;
    v8 = &v10;
  }

  v9 = [_UIWindowSceneActivationCleanupAction actionWithInteractionIdentifier:v7 responseHandler:v8, v10, v11, v12, v13, v14, v15];
  [(_UIWindowSceneActivationAnimator *)self _sendBSAction:v9];
}

- (void)_cleanUp
{
  v3 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];

  if (v3)
  {
    v4 = [(_UIWindowSceneActivationAnimator *)self deparentingWrapper];
    [v4 removeFromSuperview];

    [(_UIWindowSceneActivationAnimator *)self setDeparentingWrapper:0];
    [(_UIWindowSceneActivationAnimator *)self setMorphContainerView:0];
    [(_UIWindowSceneActivationAnimator *)self setIncomingScenePortalView:0];
    v5 = [(_UIWindowSceneActivationAnimator *)self deparentingPortalAlphaSourceView];
    [v5 removeFromSuperview];

    [(_UIWindowSceneActivationAnimator *)self setDeparentingPortalAlphaSourceView:0];
    [(_UIWindowSceneActivationAnimator *)self setState:4];
    v6 = [(_UIWindowSceneActivationAnimator *)self morphAnimation];
    [v6 cancel];
  }
}

- (void)_performAllAlongsideAnimations:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(_UIWindowSceneActivationAnimator *)self alongsideAnimations];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(_UIWindowSceneActivationAnimator *)self alongsideCompletions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  alongsideCompletions = self->_alongsideCompletions;
  self->_alongsideCompletions = 0;
}

- (void)_sendBSAction:(id)a3
{
  v4 = a3;
  v6 = [(_UIWindowSceneActivationAnimator *)self sourceFBSScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];

  [v6 sendActions:v5];
}

- (double)_startingShadowIntensity
{
  v2 = [(_UIWindowSceneActivationAnimator *)self configuration];
  v3 = [v2 _animationSource];

  if (v3 == 2)
  {
    v5 = +[_UIWindowSceneActivationSettingsDomain rootSettings];
    [v5 pinchPlatterMaxShadowIntensity];
    v7 = v6;

    return v7;
  }

  else
  {
    result = 0.0;
    if (v3 == 1)
    {
      return 1.0;
    }
  }

  return result;
}

- (int64_t)_preferredCollapsedShadowStyle
{
  v2 = [(_UIWindowSceneActivationAnimator *)self configuration];
  v3 = [v2 _animationSource];

  if (v3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 1);
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