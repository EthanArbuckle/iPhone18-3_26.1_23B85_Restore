@interface UIWindowSceneActivationAnimator
@end

@implementation UIWindowSceneActivationAnimator

void __58___UIWindowSceneActivationAnimator_prewarmWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___UIWindowSceneActivationAnimator_prewarmWithCompletion___block_invoke_2;
  block[3] = &unk_1E71177E8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __58___UIWindowSceneActivationAnimator_prewarmWithCompletion___block_invoke_2(uint64_t a1)
{
  v60[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained state];
  v4 = [*(a1 + 32) error];

  if (v4)
  {
    v3 = 2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(a1 + 32);
      v6 = [v5 sceneContainerContextId];
      v7 = [WeakRetained incomingScenePortalView];
      v8 = [v7 portalLayer];
      [v8 setSourceContextId:v6];

      v9 = [v5 sceneContainerRenderId];
      v10 = [WeakRetained incomingScenePortalView];
      v11 = [v10 portalLayer];
      [v11 setSourceLayerRenderId:v9];

      v12 = [WeakRetained morphContainerView];
      v13 = [v12 window];
      [v5 sceneFrame];
      [v13 _convertRectFromSceneReferenceSpace:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = [v12 superview];
      v55 = v12;
      v23 = [v12 window];
      [v22 convertRect:v23 fromView:{v15, v17, v19, v21}];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [v12 setFrame:{v25, v27, v29, v31}];
      v32 = objc_opt_new();
      [v32 setSourceContextId:{objc_msgSend(v5, "sceneContainerContextId")}];
      [v32 setSourceLayerRenderId:{objc_msgSend(v5, "sceneContainerRenderId")}];
      [v32 setDuration:INFINITY];
      v3 = 1;
      [v32 setUsesNormalizedCoordinates:1];
      v59[0] = 0;
      v59[1] = 0;
      v33 = [MEMORY[0x1E696B098] valueWithBytes:v59 objCType:"{CGPoint=dd}"];
      v60[0] = v33;
      v58 = xmmword_18A64B730;
      v34 = [MEMORY[0x1E696B098] valueWithBytes:&v58 objCType:"{CGPoint=dd}"];
      v60[1] = v34;
      __asm { FMOV            V0.2D, #1.0 }

      v57 = _Q0;
      v40 = [MEMORY[0x1E696B098] valueWithBytes:&v57 objCType:"{CGPoint=dd}"];
      v60[2] = v40;
      v56 = xmmword_18A64B720;
      v41 = [MEMORY[0x1E696B098] valueWithBytes:&v56 objCType:"{CGPoint=dd}"];
      v60[3] = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
      [v32 setSourcePoints:v42];

      [WeakRetained setIncomingSceneAnchorAnimation:v32];
      [v5 sceneFrame];
      [WeakRetained setExpectedFrame:?];
      [v5 sceneCornerRadii];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [WeakRetained setExpectedCornerRadii:{v44, v46, v48, v50}];
      v51 = [WeakRetained incomingScenePortalView];
      [v51 setFrame:{0.0, 0.0, v29, v31}];
    }
  }

  [WeakRetained setState:v3];
  v52 = *(a1 + 40);
  if (v52)
  {
    v53 = [WeakRetained state] == 1;
    v54 = [WeakRetained morphContainerView];
    (*(v52 + 16))(v52, v53, v54);
  }
}

void __76___UIWindowSceneActivationAnimator__runAnimationWithSourcePreview_velocity___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) morphContainer];
  [v1 _performAllAlongsideAnimations:v2];
}

uint64_t __82___UIWindowSceneActivationAnimator__runLegacyAnimationWithSourcePreview_velocity___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) setBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v2 = *(a1 + 112);
  v4[0] = *(a1 + 96);
  v4[1] = v2;
  v4[2] = *(a1 + 128);
  [*(a1 + 32) setTransform:v4];
  [*(a1 + 32) setExpanded:1];
  [*(a1 + 32) layoutIfNeeded];
  return [*(a1 + 40) _performAllAlongsideAnimations:*(a1 + 32)];
}

void __50___UIWindowSceneActivationAnimator_setDeparented___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [v2 deparentingPortalAlphaSourceView];
  [v4 setAlpha:v3];

  v7 = [*(a1 + 32) deparentingWrapper];
  v5 = [v7 layer];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  [v5 setValue:v6 forKeyPath:@"filters.opacityPair.inputAmount"];
}

void __85___UIWindowSceneActivationAnimator__sendCompletionActionCallingAlongsideCompletions___block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __85___UIWindowSceneActivationAnimator__sendCompletionActionCallingAlongsideCompletions___block_invoke_3;
  v1[3] = &unk_1E70F35E0;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __85___UIWindowSceneActivationAnimator__sendCompletionActionCallingAlongsideCompletions___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _cleanUp];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _performAllAlongsideCompletions];
  }

  return result;
}

@end