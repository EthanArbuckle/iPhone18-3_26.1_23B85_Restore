@interface UIGravityWellEffect
@end

@implementation UIGravityWellEffect

uint64_t __37___UIGravityWellEffect_endForHandOff__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tearDownEffectViews];
  v2 = *(a1 + 32);

  return [v2 _performAllCompletions];
}

id __65___UIGravityWellEffect_effectWithDescriptor_continuationPreview___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setPreview:v3];
  v5 = [v3 target];
  v6 = [v5 container];
  v7 = [v3 target];

  [v7 center];
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) container];
  [v6 convertPoint:v12 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  [v4 setPositionInPrimaryContainer:{v14, v16, 0.0}];

  return v4;
}

void __43___UIGravityWellEffect__installEffectViews__block_invoke(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) secondaryBodies];
  v3 = [v2 count] != 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___UIGravityWellEffect__installEffectViews__block_invoke_2;
  aBlock[3] = &__block_descriptor_33_e54_v24__0___UIGravityWellEffectBody_8___UIMorphingView_16l;
  v54 = v3;
  v4 = _Block_copy(aBlock);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [*(v1 + 32) secondaryBodies];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(v4 + 2))(v4, *(*(&v49 + 1) + 8 * i), 0);
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  v10 = [*(v1 + 32) continuationPreview];
  if ([v10 _isVisible])
  {
    v43 = v1;
    v11 = objc_opt_new();
    [v11 setUseOpacityPairFilter:1];
    v42 = [v10 view];
    v12 = [[_UIPortalView alloc] initWithSourceView:v42];
    [(_UIPortalView *)v12 setHidesSourceView:1];
    v13 = v11;
    v41 = v12;
    [v11 addContentView:v12];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v10;
    obj = [v10 _matchableProperties];
    v15 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v45 + 1) + 8 * j);
          v20 = objc_opt_new();
          v21 = [v14 view];
          v22 = [v21 layer];
          [v20 setSourceLayer:v22];

          [v20 setKeyPath:v19];
          [v20 setDuration:INFINITY];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UIGravityWellEffect.propertyMatch.%@", v19];
          [v13 addAnimation:v20 forKey:v23];
        }

        v16 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v16);
    }

    v1 = v43;
    v10 = v14;
    v24 = v13;
  }

  else
  {
    v24 = 0;
  }

  v25 = [*(v1 + 32) primaryBody];
  (*(v4 + 2))(v4, v25, v24);

  v26 = [*(v1 + 32) primaryBody];
  v27 = [v26 preview];
  v28 = [v27 target];

  v29 = [v28 container];
  v30 = [*(v1 + 32) primaryBody];
  v31 = [v30 preview];
  v32 = [v31 view];

  v33 = [v32 superview];

  v34 = [*(v1 + 32) primaryBody];
  v35 = [v34 anchorView];
  if (v29 == v33)
  {
    [v29 insertSubview:v35 aboveSubview:v32];
  }

  else
  {
    [v29 addSubview:v35];
  }

  v36 = [*(v1 + 32) primaryBody];
  v37 = [v36 anchorView];
  [v29 bringSubviewToFront:v37];

  [v32 _bringAncestorControlledCollectionSubviewToFrontAmongCoplanarPeers];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v29;
    v39 = [v38 _verticalScrollIndicator];
    [v38 bringSubviewToFront:v39];

    v40 = [v38 _horizontalScrollIndicator];
    [v38 bringSubviewToFront:v40];
  }
}

void __43___UIGravityWellEffect__installEffectViews__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 preview];
  v8 = *(a1 + 32);
  v9 = [v7 view];
  v10 = [v9 traitCollection];
  v11 = _UIContextMenuGetPlatformMetrics([v10 userInterfaceIdiom]);

  v12 = [v11 shouldApplyShadowHandler];
  v13 = v12;
  if (v12)
  {
    v14 = (*(v12 + 16))(v12, v7);
  }

  else
  {
    v14 = 1;
  }

  v15 = [v7 parameters];
  [v15 setAppliesShadow:v14];

  _UIContextMenuMagicMorphAnimationEnabled();
  v16 = objc_opt_new();
  v17 = [v11 previewShadowSettings];
  [v16 setShadowSettings:v17];

  v18 = [v11 submenuSeparatedOptions];
  [v16 setSeparatedOptions:v18];

  v19 = [v11 shouldApplyClippingHandler];
  [v16 setShouldApplyClippingHandler:v19];

  [v16 setPreventPreviewRasterization:1];
  [v16 setAlwaysCompact:v8];
  [v16 setCollapsedPreview:v7];
  [v16 setCollapsedShadowStyle:1];
  [v16 setCollapsedShadowIntensity:0.0];
  [v7 size];
  [v16 setBounds:{0.0, 0.0, v20, v21}];
  [v16 setUserInteractionEnabled:0];
  [v16 setHideChromeWhenCollapsed:0];
  [v16 setWantsEdgeAntialiasing:v8];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v22 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v56 = _UIInternalPreference_ClickUIDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
    {
      while (v22 >= v56)
      {
        _UIInternalPreferenceSync(v22, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
        v56 = _UIInternalPreference_ClickUIDebugEnabled;
        if (v22 == _UIInternalPreference_ClickUIDebugEnabled)
        {
          goto LABEL_7;
        }
      }

      if (byte_1EA95E0FC)
      {
        v57 = +[UIColor redColor];
        v58 = [v57 CGColor];
        v59 = [v16 layer];
        [v59 setBorderColor:v58];

        v60 = [v16 layer];
        [v60 setBorderWidth:1.0];
      }
    }
  }

LABEL_7:

  [v5 setEffectView:v16];
  if (v6)
  {
    [v5 setAnchorView:v6];
    v23 = [v5 effectView];
    [v6 addContentView:v23];
  }

  else
  {
    v24 = [(UIView *)[_UIGravityWellEffectAnchorView alloc] initWithFrame:0.0, 0.0, 2.0, 2.0];
    [v5 setAnchorView:v24];

    v25 = [v7 target];
    v26 = v25;
    if (v25)
    {
      [v25 transform];
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
    }

    v27 = [v5 anchorView];
    v61[0] = v62;
    v61[1] = v63;
    v61[2] = v64;
    [v27 setTransform:v61];

    v23 = [v5 anchorView];
    v28 = [v5 effectView];
    [v23 addSubview:v28];
  }

  v29 = [v5 anchorView];
  [v29 bounds];
  v32 = v31 + v30 * 0.5;
  v35 = v34 + v33 * 0.5;
  v36 = [v5 effectView];
  [v36 setCenter:{v32, v35}];

  v37 = [v5 anchorView];
  [v37 setUserInteractionEnabled:0];

  v38 = [v7 target];
  [v38 center];
  v40 = v39;
  v42 = v41;
  v43 = [v5 anchorView];
  [v43 setCenter:{v40, v42}];

  v44 = [v7 target];
  v45 = [v44 container];

  v46 = [v7 view];
  v47 = [v7 target];
  v48 = [v47 container];
  v49 = [v48 _isRenderedHorizontallyFlipped];
  v50 = [v5 anchorView];
  [v50 _setFlipsHorizontalAxis:v49];

  v51 = [v7 target];
  v52 = [v51 container];
  v53 = [v5 anchorView];
  [v52 addSubview:v53];

  v54 = [v46 superview];

  v55 = [v5 anchorView];
  if (v45 == v54)
  {
    [v45 insertSubview:v55 aboveSubview:v46];
  }

  else
  {
    [v45 addSubview:v55];
  }
}

void __48___UIGravityWellEffect__updateToProgress_state___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") + 1}];
  v2 = [*(a1 + 40) preview];
  [v2 size];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = (v7 + 8.0) / v7;
  if (v8 < 0.9)
  {
    v8 = 0.9;
  }

  v9 = *(a1 + 48);
  v10 = 1.0 - v9 + v9 * v8;
  v11 = v9 + (1.0 - v9) * 0.0;
  v12 = [*(a1 + 40) effectView];
  [v12 setCollapsedShadowIntensity:v11];

  v13 = [*(a1 + 32) continuationPreview];
  v14 = [v13 _isVisible];

  if (v14)
  {
    [*(a1 + 32) continuationPreview];
  }

  else
  {
    [*(a1 + 40) preview];
  }
  v15 = ;
  v16 = [v15 target];
  v17 = v16;
  if (v16)
  {
    [v16 transform];
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  v55 = v43;

  v43 = v55;
  CGAffineTransformScale(&v54, &v43, v10, v10);
  v18 = [*(a1 + 40) anchorView];
  v43 = v54;
  [v18 setTransform:&v43];

  v19 = [*(a1 + 40) effectView];
  [v19 setHideChromeWhenCollapsed:0];

  if (!_AXSReduceMotionEnabled())
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = [*(a1 + 32) secondaryBodies];
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v50 + 1) + 8 * i);
          [v25 positionInPrimaryContainer];
          v27 = v26 - *(a1 + 56);
          [v25 positionInPrimaryContainer];
          v29 = v28 - *(a1 + 64);
          [v25 positionInPrimaryContainer];
          v31 = v30 - *(a1 + 72);
          v32 = atan2(v29, v27);
          v33 = hypot(v27, v29);
          v34 = [*(a1 + 32) secondaryBodies];
          v35 = [v34 lastObject];
          [v35 distanceFromPrimaryBody];
          v37 = v33 / v36;

          v38 = (1.0 - v37) * (1.0 - v37);
          v39 = *(a1 + 48);
          v40 = v39 * (v38 * 20.0 + (1.0 - v38) * 10.0);
          if (v40 < v33)
          {
            v33 = v40;
          }

          v41 = __sincos_stret(v32);
          CATransform3DMakeTranslation(&v49, -(v33 * v41.__cosval), -(v33 * v41.__sinval), v31 * v39 + (1.0 - v39) * 0.0);
          v42 = [v25 effectView];
          v45 = *&v49.m31;
          v46 = *&v49.m33;
          v47 = *&v49.m41;
          v48 = *&v49.m43;
          *&v43.a = *&v49.m11;
          *&v43.c = *&v49.m13;
          *&v43.tx = *&v49.m21;
          v44 = *&v49.m23;
          [v42 setTransform3D:&v43];
        }

        v22 = [v20 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v22);
    }
  }
}

uint64_t __48___UIGravityWellEffect__updateToProgress_state___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") - 1}];
  [*(a1 + 32) animationCount];
  result = [*(a1 + 32) animationCount];
  if (!result)
  {
    result = [*(a1 + 32) state];
    if (!result)
    {
      [*(a1 + 32) _tearDownEffectViews];
      v3 = *(a1 + 32);

      return [v3 _performAllCompletions];
    }
  }

  return result;
}

@end