@interface UIPointerArbiterCore
@end

@implementation UIPointerArbiterCore

void __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_2;
  v8[3] = &unk_1E7109FE8;
  v9 = *(a1 + 32);
  v10 = WeakRetained;
  v11 = *(a1 + 40);
  v13 = *(a1 + 56);
  objc_copyWeak(v16, (a1 + 72));
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v12 = v5;
  v16[1] = v6;
  v14 = *(a1 + 64);
  v7 = v3;
  v15 = v7;
  [WeakRetained _preparePointerPortalSourceCollectionWithCompletion:v8];

  objc_destroyWeak(v16);
}

void __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    [*(a1 + 32) setPointerPortalSourceCollection:v9];
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_3;
    v18[3] = &unk_1E7109FC0;
    v19 = *(a1 + 32);
    v25 = *(a1 + 64);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    objc_copyWeak(v28, (a1 + 88));
    v23 = *(a1 + 56);
    v15 = *(a1 + 48);
    v16 = *(a1 + 96);
    v24 = v15;
    v28[1] = v16;
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    [v13 _prepareContentMatchMoveSourceForPointerRegion:v14 completion:v18];

    objc_destroyWeak(v28);
  }

  else
  {
    (*(*(a1 + 80) + 16))();
    v17 = *(a1 + 72);
    if (v17)
    {
      (*(v17 + 16))();
    }
  }
}

void __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setContentMatchMoveSource:v5];
  v7 = *(a1 + 80);
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 40), *(a1 + 48), v6, *(a1 + 56));
  }

  v8 = UIApp;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_4;
  v11[3] = &unk_1E7109F98;
  objc_copyWeak(v17, (a1 + 104));
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 112);
  v14 = v9;
  v17[1] = v10;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  [v8 _performBlockAfterCATransactionCommits:v11];

  objc_destroyWeak(v17);
}

void __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _setActiveHoverRegion:*(a1 + 32) style:*(a1 + 40) forPointerRegion:*(a1 + 48) transactionID:*(a1 + 80) completion:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

void __63___UIPointerArbiterCore_iOS_exitRegion_removeStyle_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (*(a1 + 64) == 1 && ([WeakRetained activePointerRegion], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", *(a1 + 32)), v5, v6))
  {
    [v4 _setActiveHoverRegion:0 style:0 forPointerRegion:*(a1 + 32) transactionID:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    [v4 _clearMatchMoveSourceForRegion:*(a1 + 32) immediately:0];
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  v8[2]();
}

void __99___UIPointerArbiterCore_iOS__setActiveHoverRegion_style_forPointerRegion_transactionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (!*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if ([WeakRetained transactionRevisionID] == *(a1 + 64))
    {
      v4 = [WeakRetained pointerPortalView];
      [v4 removeFromSuperview];

      v5 = [WeakRetained overlayEffectPortalView];
      [v5 removeFromSuperview];

      v6 = [WeakRetained samplingBackdropView];
      [v6 setPaused:1];

      v7 = [WeakRetained samplingBackdropView];
      [v7 removeFromSuperview];
    }

    [WeakRetained _clearMatchMoveSourceForRegion:*(a1 + 40) immediately:1];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void __72___UIPointerArbiterCore_iOS__clearMatchMoveSourceForRegion_immediately___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activePointerRegion];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) pointerRegionToMatchMoveSourceMap];
    v5 = [v4 objectForKey:*(a1 + 40)];

    if (v5)
    {
      v6 = [*(a1 + 32) pointerRegionToMatchMoveSourceMap];
      [v6 removeObjectForKey:*(a1 + 40)];

      v7 = [*(a1 + 32) pointerClientController];
      v9[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v7 invalidateContentMatchMoveSources:v8 completion:0];
    }
  }
}

uint64_t __52___UIPointerArbiterCore_iOS_endScrollingWithRegion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_9) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "endScrollingWithRegion: %@ resetting style for that region, after delay", &v5, 0xCu);
  }

  return [*(a1 + 40) exitRegion:*(a1 + 32) removeStyle:1 completion:0];
}

void __52___UIPointerArbiterCore_iOS__performNextTransaction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setHasRunningTransaction:0];
    [v2 _performNextTransaction];
    WeakRetained = v2;
  }
}

id __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69793C0];
  v3 = a2;
  v4 = [v2 animation];
  [v4 setSourceContextId:{objc_msgSend(v3, "sourceContextID")}];
  v5 = [v3 sourceLayerRenderID];

  [v4 setSourceLayerRenderId:v5];
  [v4 setKeyPath:@"transform"];
  [v4 setAdditive:1];
  [v4 setFillMode:*MEMORY[0x1E69797E0]];
  [v4 setRemovedOnCompletion:0];
  [v4 setDuration:INFINITY];

  return v4;
}

void __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 firstObject];

  if (v5 && WeakRetained)
  {
    v6 = [WeakRetained pointerRegionToMatchMoveSourceMap];

    if (!v6)
    {
      v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      [WeakRetained setPointerRegionToMatchMoveSourceMap:v7];
    }

    v8 = [WeakRetained pointerRegionToMatchMoveSourceMap];
    [v8 setObject:v5 forKey:*(a1 + 32)];

    v9 = *(a1 + 40);
    v10 = [_UIPointerContentEffectAnimationBuilder alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke_3;
    v13[3] = &unk_1E710A0A8;
    v15 = *(a1 + 48);
    v11 = v5;
    v14 = v11;
    v12 = [(_UIPointerContentEffectAnimationBuilder *)v10 initWithCreationHandler:v13];
    (*(v9 + 16))(v9, v11, v12);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __81___UIPointerArbiterCore_iOS__preparePointerPortalSourceCollectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pointerPortalSource];
    v6 = _UIFrozenPortalWithSource(v5, @"_UIPointerArbiter.pointer");
    [*(a1 + 32) setPointerPortalView:v6];

    v7 = [v4 overlayEffectPortalSource];
    v8 = _UIFrozenPortalWithSource(v7, @"_UIPointerArbiter.specularOverlay");
    [*(a1 + 32) setOverlayEffectPortalView:v8];

    v9 = [[_UILumaTrackingBackdropView alloc] initWithTransitionBoundaries:*(a1 + 32) delegate:0.45 frame:0.55, 0.0, 0.0, 1.0, 1.0];
    [(_UILumaTrackingBackdropView *)v9 setPaused:0];
    v10 = [v4 samplingMatchMoveSource];
    v11 = [MEMORY[0x1E69793B8] animation];
    [v11 setSourceContextId:{objc_msgSend(v10, "sourceContextID")}];
    [v11 setSourceLayerRenderId:{objc_msgSend(v10, "sourceLayerRenderID")}];
    [v11 setFillMode:*MEMORY[0x1E69797E0]];
    [v11 setRemovedOnCompletion:0];
    [v11 setDuration:INFINITY];
    [v11 setUsesNormalizedCoordinates:1];
    v12 = [MEMORY[0x1E696B098] valueWithCGPoint:{-0.5, -0.5}];
    v23[0] = v12;
    v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, -0.5}];
    v23[1] = v13;
    v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, 0.5}];
    v23[2] = v14;
    v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{-0.5, 0.5}];
    v23[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v11 setSourcePoints:v16];

    v17 = [(UIView *)v9 layer];
    [v17 addAnimation:v11 forKey:@"samplingBackdropMatchMove"];

    [*(a1 + 32) setSamplingBackdropView:v9];
    [*(a1 + 32) setPointerPortalSourceCollection:v4];
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) pointerPortalSourceCollection];
    v20 = [*(a1 + 32) pointerPortalView];
    v21 = [*(a1 + 32) overlayEffectPortalView];
    v22 = [*(a1 + 32) samplingBackdropView];
    (*(v18 + 16))(v18, v19, v20, v21, v22);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __69___UIPointerArbiterCore_iOS_backgroundLumaView_didTransitionToLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained lastSentHoverRegion];
  v5 = [v4 mutableCopy];

  v6 = [WeakRetained activePointerStyle];
  [v6 _pointerIntensityForMaterialLuminance:{objc_msgSend(WeakRetained, "lastMaterialLuminance")}];
  [v5 setPointerVisualIntensity:?];

  [v5 setPreferredPointerMaterialLuminance:{objc_msgSend(WeakRetained, "lastMaterialLuminance")}];
  [WeakRetained setLastSentHoverRegion:v5];
  v7 = [WeakRetained pointerClientController];
  [v7 setActiveHoverRegion:v5 transitionCompletion:0];

  v3[2](v3);
}

@end