@interface UIDragSetDownItemAnimation
@end

@implementation UIDragSetDownItemAnimation

void __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [objc_opt_class() defaultSingleItemAnimationForPlatterView:*(a1 + 32)];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_2(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [objc_opt_class() defaultMultiItemAnimationForPlatterView:*(a1 + 32)];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_3(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8 = [objc_opt_class() defaultDropAnimationForPlatterView:*(a1 + 32)];
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v8 animations:v5, v6, v7];
}

void __62___UIDragSetDownItemAnimation_configureSystemDefaultAnimation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained animationReachedTarget];

  [*(a1 + 32) removeFromSuperview];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 animationCompleted];
}

void __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained dropContainerView];
  [WeakRetained targetFrame];
  v5 = v4 + v3 * 0.5;
  v8 = v7 + v6 * 0.5;
  [WeakRetained setCenter:{v5, v8, 0.0}];
  [v2 _currentScreenScale];
  v10 = UIPointRoundToScale(v5, v8, v9);
  v12 = v11;
  v13 = [WeakRetained platterContainerView];
  v14 = [v13 superview];
  [v2 convertPoint:v14 toCoordinateSpace:{v10, v12}];
  v16 = v15;
  v18 = v17;

  v19 = [WeakRetained platterContainerView];
  [v19 setCenter:{v16, v18}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = [WeakRetained propertyAnimator];
  v21 = [v20 _animations];
  v22 = [v21 copy];

  v23 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        (*(*(*(&v27 + 1) + 8 * i) + 16))();
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v24);
  }
}

void __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) setLifted:0];
  [*(a1 + 32) setBackgroundVisible:1];
  [*(a1 + 32) setShadowVisible:1];
  [*(a1 + 32) setConstrainSize:0];
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) setStackRotation:0.0];
  [*(a1 + 32) setAppliesOriginalRotation:{objc_msgSend(WeakRetained, "previewMode") != 4}];
  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 40) setStackRotation:0.0];
  v3 = 0uLL;
  memset(&v14, 0, sizeof(v14));
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 targetTransformIncludingAppliedTransform:0];
    v3 = 0uLL;
  }

  *&v13.c = v3;
  *&v13.tx = v3;
  *&v13.a = v3;
  v11 = v14;
  CATransform3DGetAffineTransform(&t1, &v11);
  v5 = [WeakRetained targetedDropPreview];
  v6 = [v5 target];
  v7 = v6;
  if (v6)
  {
    [v6 transform];
  }

  else
  {
    memset(&v11, 0, 48);
  }

  CGAffineTransformConcat(&v13, &t1, &v11);

  v8 = *(a1 + 48);
  v9 = [WeakRetained targetedDropPreview];
  v10 = [v9 _duiPreview];
  [v10 unscaledSize];
  *&v11.m11 = *&v13.a;
  *&v11.m13 = *&v13.c;
  *&v11.m21 = *&v13.tx;
  [v8 applyTransform:&v11 withSize:?];
}

void __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained animationReachedTarget];
  v3 = [WeakRetained propertyAnimator];
  v4 = [v3 _completions];
  v5 = [v4 copy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_6;
  aBlock[3] = &unk_1E70F3590;
  v6 = v5;
  v24 = v6;
  v7 = _Block_copy(aBlock);
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  else if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 transform];
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
      memset(&t1, 0, sizeof(t1));
    }

    v10 = *(a1 + 64);
    *&t2.a = *(a1 + 48);
    *&t2.c = v10;
    *&t2.tx = *(a1 + 80);
    CGAffineTransformConcat(&v22, &t1, &t2);
    t1 = v22;
    [v9 setTransform:&t1];
  }

  if ([WeakRetained updatedPreviewWasAdded])
  {
    v11 = [WeakRetained updatedAppPlatterView];
    v12 = [v11 sourceView];
    [v12 removeFromSuperview];
  }

  else
  {
    v11 = [WeakRetained updatedAppPlatterView];
    v13 = [v11 sourceView];
    v12 = v13;
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v14 = [WeakRetained updatedTargetedDropPreview];
    v15 = [v14 target];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v19, &t1, &t2);
    v17 = [WeakRetained updatedAppPlatterView];
    v18 = [v17 sourceView];
    t1 = v19;
    [v18 setTransform:&t1];
  }

  if (v7)
  {
    v7[2](v7);
  }

  [WeakRetained animationCompleted];
}

void __77___UIDragSetDownItemAnimation_configureCrossfadingAnimationToTargetedPreview__block_invoke_6(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __80___UIDragSetDownItemAnimation_reparentRetargetingContainerViewInTargetContainer__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 120) setAlpha:1.0];
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [*(*(a1 + 32) + 120) layer];
  [v4 setFilters:v3];

  v5 = [*(*(a1 + 32) + 120) layer];
  [v5 setValue:&unk_1EFE2F0B8 forKeyPath:@"filters.opacityPair.inputAmount"];
}

uint64_t __57___UIDragSetDownItemAnimation_performTrackingAnimations___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __55___UIDragSetDownItemAnimation_performSpringAnimations___block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __57___UIDragSetDownItemAnimation_animationCompletionHandler__block_invoke(uint64_t result)
{
  --*(*(result + 32) + 20);
  v3 = *(result + 32);
  if (!*(v3 + 20) && (*(v3 + 18) & 1) == 0)
  {
    v11 = v1;
    v12 = v2;
    v4 = result;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = *(*(v4 + 32) + 112);
    if (has_internal_diagnostics)
    {
      if (!v6)
      {
        v7 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "The completion handler must be not be nil for this set down animation", buf, 2u);
        }
      }
    }

    else if (!v6)
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_DNDSetDownReparentingCrossfadeDuration_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "The completion handler must be not be nil for this set down animation", v9, 2u);
      }
    }

    return [*(v4 + 32) executeCompletionHandler];
  }

  return result;
}

uint64_t __55___UIDragSetDownItemAnimation_updateAnimationTargeting__block_invoke(uint64_t a1)
{
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___UIDragSetDownItemAnimation_updateAnimationTargeting__block_invoke_2;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048615 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

void __55___UIDragSetDownItemAnimation_updateAnimationTargeting__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 128) setAlpha:0.0];
  v2 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [*(*(a1 + 32) + 120) layer];
  [v4 setFilters:v3];

  v5 = [*(*(a1 + 32) + 120) layer];
  [v5 setValue:&unk_1EFE2F0C8 forKeyPath:@"filters.opacityPair.inputAmount"];
}

void __57___UIDragSetDownItemAnimation_updateTargetedDropPreview___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateTargetedDropPreview:*(a1 + 32)];
}

uint64_t __57___UIDragSetDownItemAnimation_updateTargetedDropPreview___block_invoke_2(uint64_t a1)
{
  memset(&v11, 0, sizeof(v11));
  v2 = *(*(a1 + 32) + 144);
  if (v2)
  {
    [v2 targetTransform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CATransform3DGetAffineTransform(&t1, &v9);
  v3 = [*(*(a1 + 32) + 80) target];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v9, 0, 48);
  }

  CGAffineTransformConcat(&v11, &t1, &v9);

  v5 = *(a1 + 32);
  v6 = *(v5 + 160);
  v7 = [*(v5 + 80) _duiPreview];
  [v7 unscaledSize];
  *&v9.m11 = *&v11.a;
  *&v9.m13 = *&v11.c;
  *&v9.m21 = *&v11.tx;
  [v6 applyTransform:&v9 withSize:?];

  [*(*(a1 + 32) + 144) setAlpha:1.0];
  return [*(*(a1 + 32) + 136) setAlpha:0.0];
}

@end