@interface UIStatusBarVisualProvider
@end

@implementation UIStatusBarVisualProvider

void __66___UIStatusBarVisualProvider_DynamicSplit_leadingItemCutoffWidths__block_invoke()
{
  v0 = qword_1ED49A988;
  qword_1ED49A988 = &unk_1EFE2D300;
}

void __67___UIStatusBarVisualProvider_DynamicSplit_trailingItemCutoffWidths__block_invoke()
{
  v0 = qword_1ED49A998;
  qword_1ED49A998 = &unk_1EFE2D318;
}

uint64_t __87___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  v4 = v3;
  if (v2 == 1)
  {
    v5 = [*(a1 + 32) view];
    v6 = [v5 layer];
    v7 = [v6 presentationLayer];
    v8 = [v7 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_1EFE2EA48;
    }

    [v4 setFromValue:v9];
    [v4 setToValue:&unk_1EFE2EA58];
    [v4 setDuration:*(a1 + 40) * 0.35];
    LODWORD(v10) = 1045220557;
    LODWORD(v11) = 1.0;
    LODWORD(v12) = 1.0;
    v13 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v10 :v11 :v12];
    [v4 setTimingFunction:v13];

    v14 = [*(a1 + 32) view];
    v15 = [v14 layer];
    [v15 addAnimation:v4 forKey:@"blur"];

    [*(a1 + 32) setDynamicHidingAlpha:0.0];
    CGAffineTransformMakeScale(&v31, 0.5, 0.5);
    v16 = *(a1 + 32);
    v30 = v31;
    [v16 setDynamicHidingTransform:&v30];
  }

  else
  {
    [v3 setFromValue:&unk_1EFE2EA58];
    [v4 setToValue:&unk_1EFE2EA48];
    [v4 setDuration:*(a1 + 40)];
    LODWORD(v17) = 1045220557;
    LODWORD(v18) = 1.0;
    LODWORD(v19) = 1.0;
    v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :v17 :v18 :v19];
    [v4 setTimingFunction:v20];

    v21 = [*(a1 + 32) view];
    v22 = [v21 layer];
    [v22 addAnimation:v4 forKey:@"blur"];

    [*(a1 + 32) setDynamicHidingAlpha:1.0];
    v23 = *(a1 + 32);
    v24 = *(MEMORY[0x1E695EFD0] + 16);
    *&v30.a = *MEMORY[0x1E695EFD0];
    *&v30.c = v24;
    *&v30.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v23 setDynamicHidingTransform:&v30];
  }

  CGAffineTransformMakeScale(&v29, *(a1 + 48), *(a1 + 48));
  v25 = *(a1 + 32);
  v30 = v29;
  result = [v25 setDynamicScaleTransform:&v30];
  if ((*(a1 + 56) & 1) == 0)
  {
    CGAffineTransformMakeScale(&v28, *(a1 + 48), *(a1 + 48));
    v27 = *(a1 + 32);
    v30 = v28;
    return [v27 setDynamicScaleTransform:&v30];
  }

  return result;
}

uint64_t __87___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toDynamicallyHidden_scale___block_invoke_98(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

uint64_t __69___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

uint64_t __69___UIStatusBarVisualProvider_DynamicSplit_updateDisplayItem_toScale___block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setDynamicScaleTransform:&v4];
}

void __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained statusBar];
  v3 = [(UIView *)v2 _isInVisibleHierarchy];

  if (v3)
  {
    [WeakRetained avoidanceFrameUpdatedFromFrame:*(a1 + 32) withAnimationSettings:*(a1 + 80) options:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }
}

void __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained deferredAvoidanceFrameUpdateBlock];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }
}

void __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cutoutLayoutGuide];
  v1 = [v2 owningView];
  [v1 layoutSubviews];
}

void __104___UIStatusBarVisualProvider_DynamicSplit_avoidanceFrameUpdatedFromFrame_withAnimationSettings_options___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cutoutLayoutGuide];
  v1 = [v2 owningView];
  [v1 layoutSubviews];
}

void __72___UIStatusBarVisualProvider_DynamicSplitMedium_leadingItemCutoffWidths__block_invoke()
{
  v0 = qword_1ED49A9A8;
  qword_1ED49A9A8 = &unk_1EFE2D330;
}

void __73___UIStatusBarVisualProvider_DynamicSplitMedium_trailingItemCutoffWidths__block_invoke()
{
  v0 = qword_1ED49A9B8;
  qword_1ED49A9B8 = &unk_1EFE2D348;
}

void __78___UIStatusBarVisualProvider_LegacyPhone_actionable_highlighted_initialPress___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = a2;
    v3 = [UIColor colorWithWhite:0.0 alpha:0.3];
    [v2 setBackgroundColor:?];
  }

  else
  {
    v3 = a2;
    [v3 setBackgroundColor:0];
  }
}

void __70___UIStatusBarVisualProvider_LegacyPhone__updateLowerRegionsWithData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 statusBar];
  v10 = [v5 regionWithIdentifier:v4];

  v6 = [v10 isEnabled];
  if (*(a1 + 48) == 1)
  {
    [v10 enableWithToken:12];
  }

  else
  {
    [v10 disableWithToken:12];
  }

  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
    v9 = v10;
  }

  else
  {
    v8 = v6 ^ [v10 isEnabled];
    v9 = v10;
    v7 = *(*(a1 + 40) + 8);
  }

  *(v7 + 24) = v8;
}

uint64_t __71___UIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) expandedBaselineOffset];
  v3 = v2;
  v4 = [*(a1 + 32) statusBar];
  v5 = [v4 regionWithIdentifier:@"expandedLowerLeading"];
  v6 = [v5 displayItems];
  v7 = [v6 count];

  if (v7)
  {
    [*(a1 + 32) dualLineExpandedBaselineOffset];
    v3 = v8;
  }

  result = [*(*(a1 + 32) + 200) constant];
  if (v3 != v10)
  {
    [*(*(a1 + 32) + 200) setConstant:v3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71___UIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke_2;
    v11[3] = &unk_1E70F3590;
    v11[4] = *(a1 + 32);
    return [UIView animateWithDuration:v11 animations:0.25];
  }

  return result;
}

void __71___UIStatusBarVisualProvider_LegacyPhone__updateExpandedTrailingRegion__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 layoutIfNeeded];
}

void __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (CGRectIsNull(*(*(*(a1 + 32) + 8) + 32)) || CGRectIsNull(*(*(*(a1 + 40) + 8) + 32)))
  {
    v7[2](v7, 1);
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 8);
    v18 = *(v9 + 40);
    v19 = *(v9 + 56);
    MinX = CGRectGetMinX(*(*(v8 + 8) + 32));
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_2;
    v13[3] = &unk_1E70F3B20;
    v14 = v6;
    v15 = MinX;
    v16 = v18;
    v17 = v19;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_3;
    v11[3] = &unk_1E7103030;
    v12 = v7;
    [UIView _animateUsingSpringWithTension:0 friction:v13 interactive:v11 animations:100.0 completion:20.0];
  }
}

uint64_t __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setAbsoluteFrame:{v2, v3, v4, v5}];
}

uint64_t __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 view];
  v14 = [v13 window];
  if (v14)
  {
    v15 = v14;
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v16 = CGRectContainsRect(*(a1 + 40), v19);

    if (v16)
    {
      v17 = *(*(a1 + 32) + 8);
      v17[4] = v6;
      v17[5] = v8;
      v17[6] = v10;
      v17[7] = v12;
    }
  }

  else
  {
  }

  [v4 setFloating:1];

  return 1;
}

void __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 type] == 1 && (objc_msgSend(v7, "absoluteFrame"), v9 = *(*(a1 + 32) + 8), v9[4] = v10, v9[5] = v11, v9[6] = v12, v9[7] = v13, !CGRectIsNull(*(*(*(a1 + 40) + 8) + 32))))
  {
    v14 = *(*(a1 + 32) + 8);
    [v7 setAbsoluteFrame:{CGRectGetMinX(*(*(*(a1 + 40) + 8) + 32)), v14[5], v14[6], v14[7]}];
    [v7 setAlpha:0.0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_6;
    v21[3] = &unk_1E70FE3F8;
    v15 = v7;
    v16 = *(a1 + 32);
    v22 = v15;
    v23 = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_7;
    v19[3] = &unk_1E7103030;
    v20 = v8;
    [UIView _animateUsingSpringWithTension:0 friction:v21 interactive:v19 animations:100.0 completion:20.0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_8;
    v17[3] = &unk_1E70F3590;
    v18 = v15;
    [UIView animateWithDuration:0 delay:v17 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    (*(v8 + 2))(v8, 1);
  }
}

void __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 type] == 3)
  {
    [v7 absoluteFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v7 identifier];
    v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];
    v19 = 40;
    if (v17 == v18)
    {
      v19 = 32;
    }

    v20 = *(*(a1 + v19) + 8);
    v21 = v20[4];
    v22 = v20[5];
    v23 = v20[6];
    v24 = v20[7];

    v33.origin.x = v21;
    v33.origin.y = v22;
    v33.size.width = v23;
    v33.size.height = v24;
    if (!CGRectIsNull(v33))
    {
      [v7 setAbsoluteFrame:{v21, v22, v23, v24}];
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_10;
    v27[3] = &unk_1E70F3B20;
    v28 = v7;
    v29 = v10;
    v30 = v12;
    v31 = v14;
    v32 = v16;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_11;
    v25[3] = &unk_1E7103030;
    v26 = v8;
    [UIView _animateUsingSpringWithTension:0 friction:v27 interactive:v25 animations:100.0 completion:20.0];
  }

  else
  {
    (*(v8 + 2))(v8, 1);
  }
}

uint64_t __83___UIStatusBarVisualProvider_LegacyPhone__backgroundActivityDetailRemovalAnimation__block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 view];
  v14 = [v13 window];
  if (v14)
  {
    v15 = v14;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v16 = CGRectContainsRect(*(a1 + 48), v22);

    if (v16)
    {
      v17 = [v4 identifier];
      v18 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarFullBackgroundActivityItem];

      if (v17 == v18)
      {
        v19 = *(a1 + 32);
      }

      else
      {
        v19 = *(a1 + 40);
      }

      v20 = *(v19 + 8);
      v20[4] = v6;
      v20[5] = v8;
      v20[6] = v10;
      v20[7] = v12;
    }
  }

  else
  {
  }

  return 1;
}

void __70___UIStatusBarVisualProvider_Pad_actionable_highlighted_initialPress___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = a2;
    v3 = [UIColor colorWithWhite:0.0 alpha:0.3];
    [v2 setBackgroundColor:?];
  }

  else
  {
    v3 = a2;
    [v3 setBackgroundColor:0];
  }
}

void __70___UIStatusBarVisualProvider_Pad__updateConstraintsForAvoidanceFrame___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x1E695E0F0]];
}

id __87___UIStatusBarVisualProvider_Split_visualProviderSubclassForScreen_visualProviderInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 nativeDisplayWidth];
  if (vabdd_f64(v8, *(a1 + 48)) <= 0.0001)
  {
    [*(a1 + 32) _nativeScale];
    v10 = v9;
    if (objc_opt_respondsToSelector())
    {
      [a2 referenceScreenScale];
    }

    else
    {
      [*(a1 + 32) _scale];
    }

    v12 = v10 / v11;
    v13 = *(a1 + 64);
    v14 = *(a1 + 56) * v12;
    result = [a2 notchSize];
    if (vabdd_f64(v16, v14) <= 0.0001 && vabdd_f64(v15, v12 * v13) <= 0.0001)
    {
      result = _UIStatusBarGetVisualProviderSubclassForScreenWithVisualProviderInfo(a2, *(a1 + 32), 0);
      *(*(*(a1 + 40) + 8) + 24) = result;
      *a4 = 1;
    }
  }

  return result;
}

void __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 setAbsoluteFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_2;
  v20[3] = &unk_1E70F3B20;
  v21 = v6;
  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_3;
  v18[3] = &unk_1E7103030;
  v19 = v7;
  v16 = v7;
  v17 = v6;
  [UIView _animateUsingSpringWithTension:0 friction:v20 interactive:v18 animations:100.0 completion:20.0];
}

uint64_t __65___UIStatusBarVisualProvider_Split_animationForProminentLocation__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 absoluteFrame];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return 1;
}

void __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 _collapseChargingBoltTransformForDisplayItem:v8];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
  }

  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  [v8 setTransform:v20];
  [v8 setAlpha:0.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_2;
  v17[3] = &unk_1E70F35B8;
  v11 = *(a1 + 32);
  v18 = v8;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_3;
  v15[3] = &unk_1E70FE248;
  v15[4] = v11;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [UIView animateWithDuration:v17 animations:v15 completion:0.3];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_5;
  v14[3] = &unk_1E70F3590;
  v14[4] = *(a1 + 32);
  [v7 addTimeout:v14 withHandler:0.6];
}

uint64_t __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 _expandedChargingBoltTransformForDisplayItem:*(a1 + 32)];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = MEMORY[0x1E695DFF0];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_4;
    v9 = &unk_1E70F4130;
    objc_copyWeak(&v10, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v6 block:3.0];
    [*(a1 + 32) setBatteryExpansionTimer:{v4, v6, v7, v8, v9}];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) _collapseBattery];
  }

  return (*(*(a1 + 40) + 16))();
}

void __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _collapseBattery];
}

void __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  v9 = [v6 item];
  [v8 center];
  v11 = v10;
  v13 = v12;
  [v8 setCenter:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];
  v14 = [v8 layer];
  [v14 setShouldRasterize:0];

  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeScale(&v30, 1.4, 1.4);
  v15 = [v8 _shouldReverseLayoutDirection];
  v16 = -6.0;
  if (v15)
  {
    v16 = 6.0;
  }

  t2 = v30;
  CGAffineTransformTranslate(&v29, &t2, v16, -1.0);
  v30 = v29;
  if (v8)
  {
    [v8 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v30;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v30 = v29;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_7;
  v20[3] = &unk_1E7120E58;
  v24 = v29;
  v21 = v6;
  v22 = v8;
  v25 = v11;
  v26 = v13;
  v23 = v9;
  v17 = v9;
  v18 = v8;
  v19 = v6;
  [UIView animateWithDuration:v20 animations:v7 completion:0.3];
}

uint64_t __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v4[2] = *(a1 + 88);
  [*(a1 + 32) setTransform:v4];
  [*(a1 + 40) setCenter:{*(a1 + 104), *(a1 + 112)}];
  return [*(a1 + 48) setHighlighted:1];
}

uint64_t __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 center];
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;

  return 1;
}

void __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_10;
  v12[3] = &unk_1E70F3590;
  v13 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_11;
  v9[3] = &unk_1E70FE248;
  v10 = v13;
  v11 = v6;
  v7 = v6;
  v8 = v13;
  [UIView animateWithDuration:v12 animations:v9 completion:0.1];
}

uint64_t __72___UIStatusBarVisualProvider_Split__additionAnimationForBatteryCharging__block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setFloating:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 40) + 8);
  v10 = v9[4];
  v11 = v9[5];
  v12 = v9[6];
  v13 = v9[7];
  v14 = a2;
  [v7 setAbsoluteFrame:{v10, v11, v12, v13}];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_2;
  v21[3] = &unk_1E70F35B8;
  v15 = *(a1 + 32);
  v22 = v7;
  v23 = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_3;
  v19[3] = &unk_1E70FE248;
  v19[4] = v15;
  v20 = v8;
  v16 = v8;
  v17 = v7;
  [UIView animateWithDuration:v21 animations:v19 completion:0.3];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_4;
  v18[3] = &unk_1E70F3590;
  v18[4] = *(a1 + 32);
  [v14 addTimeout:v18 withHandler:0.6];
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 _collapseChargingBoltTransformForDisplayItem:*(a1 + 32)];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setTransform:v5];
  return [*(a1 + 32) setAlpha:0.0];
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_3(uint64_t a1)
{
  if ([*(*(a1 + 32) + 136) isEnabled])
  {
    [*(*(a1 + 32) + 136) setEnabled:0];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) isEnabled];
  if (result)
  {
    [*(*(a1 + 32) + 136) setEnabled:0];
    v3 = *(a1 + 32);

    return [v3 _resetBattery];
  }

  return result;
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v5 = *(*(a1 + 32) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;
  [v4 setFloating:1];

  return 1;
}

void __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  v9 = [v6 item];
  [v8 center];
  v11 = v10;
  v13 = v12;
  [v8 setCenter:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_7;
  v23[3] = &unk_1E7103E40;
  v24 = v6;
  v27 = v11;
  v28 = v13;
  v25 = v8;
  v26 = v9;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_8;
  v19[3] = &unk_1E710B1B0;
  v14 = *(a1 + 32);
  v20 = v25;
  v21 = v14;
  v22 = v7;
  v15 = v7;
  v16 = v25;
  v17 = v9;
  v18 = v6;
  [UIView animateWithDuration:v23 animations:v19 completion:0.3];
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 40) setCenter:{*(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 48) setHighlighted:0];
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setShouldRasterize:1];

  [*(a1 + 40) _resetBattery];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 center];
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;

  return 1;
}

void __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  [v5 setAlpha:0.0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71___UIStatusBarVisualProvider_Split__removalAnimationForBatteryCharging__block_invoke_11;
  v8[3] = &unk_1E70F3590;
  v9 = v5;
  v7 = v5;
  [UIView animateWithDuration:0 delay:v8 options:v6 animations:0.15 completion:0.2];
}

void __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 view];
  v11 = [*(a1 + 32) statusBar];
  v12 = [v11 regions];
  v13 = [v12 objectForKeyedSubscript:@"systemUpdates"];

  v14 = [v7 type];
  [v10 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [*(a1 + 32) statusBar];
  v24 = [v23 containerView];
  [v10 convertRect:v24 toView:{v16, v18, v20, v22}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (*(a1 + 48) == (v14 == 1))
  {
    v33 = [v13 layoutItem];
    [v33 _ui_frame];
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v26;
    v54.origin.y = v28;
    v54.size.width = v30;
    v54.size.height = v32;
    v35 = MaxX - CGRectGetMaxX(v54);
  }

  else
  {
    v55.origin.x = v26;
    v55.origin.y = v28;
    v55.size.width = v30;
    v55.size.height = v32;
    MinX = CGRectGetMinX(v55);
    v33 = [v13 layoutItem];
    [v33 _ui_frame];
    v35 = MinX - CGRectGetMinX(v56);
  }

  if (*(a1 + 48))
  {
    v37 = -v35;
  }

  else
  {
    v37 = v35;
  }

  if (v14 == 1)
  {
    [v8 setAlpha:0.0];
    CGAffineTransformMakeTranslation(&v52, -v37, 0.0);
    v51 = v52;
    [v8 setTransform:&v51];
    v38 = vcvtd_n_f64_u64([*(a1 + 40) count], 2uLL);
    v39 = 0x20000;
  }

  else
  {
    v40 = [*(a1 + 32) systemUpdatesTimer];
    [v40 invalidate];

    [*(a1 + 32) setSystemUpdatesTimer:0];
    [*(a1 + 32) _resumeSystemUpdateData];
    v38 = 0.0;
    v39 = 0x10000;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_2;
  v47[3] = &unk_1E70F6848;
  v48 = v8;
  v49 = v14;
  v50 = v37;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_3;
  v44[3] = &unk_1E7104F38;
  v45 = v9;
  v46 = v14;
  v44[4] = *(a1 + 32);
  v41 = v9;
  v42 = v8;
  [UIView animateWithDuration:v39 delay:v47 options:v44 animations:0.66 completion:v38];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_6;
  v43[3] = &unk_1E70F3590;
  v43[4] = *(a1 + 32);
  [v7 addTimeout:v43 withHandler:2.0];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7.a = *MEMORY[0x1E695EFD0];
    *&v7.c = v2;
    *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeTranslation(&v7, *(a1 + 48), 0.0);
  }

  v3 = *(a1 + 32);
  v6 = v7;
  [v3 setTransform:&v6];
  v4 = 0.0;
  if (*(a1 + 40) == 1)
  {
    v4 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v4];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _delaySystemUpdateData];
      objc_initWeak(&location, *(a1 + 32));
      v3 = MEMORY[0x1E695DFF0];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_4;
      v7[3] = &unk_1E70F4130;
      objc_copyWeak(&v8, &location);
      v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:2.0];
      [*(a1 + 32) setSystemUpdatesTimer:v4];

      [*(a1 + 32) _collapseBattery];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _disableSystemUpdates];
    (*(*(a1 + 40) + 16))();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_5;
    v6[3] = &unk_1E70F3590;
    v6[4] = *(a1 + 32);
    return [UIView performWithoutAnimation:v6];
  }
}

void __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _disableSystemUpdates];
    v2 = [v3 statusBar];
    [v2 updateWithAnimations:MEMORY[0x1E695E0F0]];

    [v3 _resumeSystemUpdateData];
    WeakRetained = v3;
  }
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x1E695E0F0]];

  v3 = *(a1 + 32);

  return [v3 _resumeSystemUpdateData];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _disableSystemUpdates];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_7;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v3];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x1E695E0F0]];

  v3 = *(a1 + 32);

  return [v3 _resumeSystemUpdateData];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 type] == 2)
  {
    [v4 setFloating:1];
  }

  return 1;
}

void __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [a2 type];
  if ((v9 - 1) > 1)
  {
    v8[2](v8, 1);
  }

  else
  {
    v10 = v9;
    if (v9 == 2)
    {
      v11 = *(a1 + 32);
      v12 = [v7 identifier];
      v13 = [v11 objectForKeyedSubscript:v12];
      v14 = [v13 integerValue];
    }

    else
    {
      v15 = [v7 region];
      v16 = [v15 displayItems];
      v14 = [v16 indexOfObject:v7];

      [v7 setAlpha:0.0];
    }

    v17 = 0.0;
    if (v10 == 1)
    {
      v17 = 0.5;
    }

    v18 = v17 + v14 * 0.2;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_10;
    v19[3] = &unk_1E70F32F0;
    v20 = v7;
    v21 = v10;
    [UIView animateWithDuration:0 delay:v19 options:v8 animations:0.25 completion:v18];
  }
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_10(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = 0.0;
  if (*(v2 + 8) == 1)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha:v3];
}

uint64_t __87___UIStatusBarVisualProvider_Split__systemUpdateAnimationForDisplayItemWithIdentifier___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 type] == 2)
  {
    [v5 setFloating:1];
    v6 = [v5 region];
    v7 = [v6 displayItems];
    v8 = [v7 indexOfObject:v5];

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v10 = *(a1 + 32);
    v11 = [v5 identifier];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  return 1;
}

void __64___UIStatusBarVisualProvider_Split__updateLowerRegionsWithData___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) regionWithIdentifier:a2];
  v3 = [v7 isEnabled];
  if (*(a1 + 48) == 1)
  {
    [v7 enableWithToken:12];
  }

  else
  {
    [v7 disableWithToken:12];
  }

  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    v5 = 1;
    v6 = v7;
  }

  else
  {
    v5 = v3 ^ [v7 isEnabled];
    v6 = v7;
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = v5;
}

void __65___UIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation] - 1;
  v3 = [*(a1 + 40) expandedPillPlacement];
  [v3 setEnabled:v2 > 1];

  v4 = [*(a1 + 32) currentAggregatedData];
  v5 = [v4 secondaryCellularEntry];

  if (v5)
  {
    v6 = [v5 isEnabled] ^ 1;
    if (v2 > 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = [*(a1 + 32) regionWithIdentifier:@"expandedLeading"];
  v9 = [v8 displayItems];
  v10 = [v9 count];

  v11 = [*(a1 + 32) regionWithIdentifier:@"expandedLowerTrailing"];
  v12 = [v11 displayItems];
  v13 = [v12 count];

  if (v10 || v13 || (v14 = 0.0, v7))
  {
    [*(a1 + 40) lowerExpandedBaselineOffset];
    v14 = v15;
  }

  [*(*(a1 + 40) + 168) constant];
  if (v14 != v16)
  {
    [*(*(a1 + 40) + 168) setConstant:v14];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65___UIStatusBarVisualProvider_Split__updateExpandedTrailingRegion__block_invoke_2;
    v17[3] = &unk_1E70F3590;
    v18 = *(a1 + 32);
    [UIView animateWithDuration:v17 animations:0.25];
  }
}

BOOL __70___UIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[_UIStatusBarBatteryItem iconDisplayIdentifier];
  v4 = v2 == v3;

  return v4;
}

BOOL __70___UIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[(_UIStatusBarCellularItem *)_UIStatusBarCellularCondensedItem];
  v4 = v2 == v3;

  return v4;
}

BOOL __70___UIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[_UIStatusBarCellularCondensedItem dualSignalStrengthDisplayIdentifier];
  v4 = v2 == v3;

  return v4;
}

BOOL __70___UIStatusBarVisualProvider_FixedSplit__orderedDisplayItemPlacements__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = +[(_UIStatusBarItem *)_UIStatusBarThermalItem];
  v4 = v2 == v3;

  return v4;
}

void __73___UIStatusBarVisualProvider_FixedSplit__updateSystemNavigationWithData___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBar];
  [v1 updateWithAnimations:MEMORY[0x1E695E0F0]];
}

void __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 region];
  v9 = [v8 identifier];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 32);
  v64 = *(*(*(a1 + 40) + 8) + 40);
  v13 = *(*(*(a1 + 48) + 8) + 24);
  v14 = v64;
  [v12 airplaneTravelOffsetInProposedPartWithIdentifier:&v64 animationType:v13];
  v56 = v15;
  v16 = v64;

  [v6 absoluteFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) statusBar];
  [v25 frameForPartWithIdentifier:v16 includeInternalItems:1];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v34 = v18;
    v35 = v20;
    v36 = v22;
    v37 = v24;
    if (*(a1 + 64))
    {
      MinX = CGRectGetMinX(*&v34);
      v65.origin.x = v27;
      v65.origin.y = v29;
      v65.size.width = v31;
      v65.size.height = v33;
      v39 = MinX - CGRectGetMaxX(v65) - v56;
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v34);
      v67.origin.x = v27;
      v67.origin.y = v29;
      v67.size.width = v31;
      v67.size.height = v33;
      v39 = v56 + MaxX - CGRectGetMinX(v67);
    }

    CGAffineTransformMakeTranslation(&v63, -v39, 0.0);
    v62 = v63;
    [v6 setTransform:&v62];
    v46 = 0x20000;
  }

  else
  {
    v40 = v27;
    v41 = v29;
    v42 = v31;
    v43 = v33;
    if (*(a1 + 64))
    {
      v44 = CGRectGetMinX(*&v40);
      v66.origin.x = v18;
      v66.origin.y = v20;
      v66.size.width = v22;
      v66.size.height = v24;
      v39 = v44 - CGRectGetMaxX(v66) - v56;
    }

    else
    {
      v47 = CGRectGetMaxX(*&v40);
      v68.origin.x = v18;
      v68.origin.y = v20;
      v68.size.width = v22;
      v68.size.height = v24;
      v39 = v56 + v47 - CGRectGetMinX(v68);
    }

    v46 = 0x10000;
  }

  [*(a1 + 32) airplaneSpeedForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  v49 = 1.0 / v48;
  v50 = -v39;
  if (v39 >= 0.0)
  {
    v50 = v39;
  }

  *(*(*(a1 + 56) + 8) + 24) = v50 * v49;
  [*(a1 + 32) airplaneShouldFadeForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  v51 = *(a1 + 48);
  if (v52 != 0.0 && *(*(v51 + 8) + 24) == 1)
  {
    [v6 setAlpha:0.0];
    v51 = *(a1 + 48);
  }

  v53 = *(*(*(a1 + 56) + 8) + 24);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_2;
  v57[3] = &unk_1E7120FA0;
  v60 = v51;
  v61 = v39;
  v54 = *(a1 + 32);
  v58 = v6;
  v59 = v54;
  v55 = v6;
  [UIView animateWithDuration:v46 delay:v57 options:v7 animations:v53 completion:0.0];
}

uint64_t __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *(MEMORY[0x1E695EFD0] + 16);
    *&v8.a = *MEMORY[0x1E695EFD0];
    *&v8.c = v2;
    *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeTranslation(&v8, *(a1 + 56), 0.0);
  }

  v3 = *(a1 + 32);
  v7 = v8;
  [v3 setTransform:&v7];
  result = [*(a1 + 40) airplaneShouldFadeForAnimationType:*(*(*(a1 + 48) + 8) + 24)];
  if (v5 != 0.0)
  {
    v6 = 1.0;
    if (*(*(*(a1 + 48) + 8) + 24) == 2)
    {
      v6 = 0.0;
    }

    return [*(a1 + 32) setAlpha:v6];
  }

  return result;
}

uint64_t __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 type];
  if (*(*(*(a1 + 32) + 8) + 24) == 2)
  {
    [v5 setFloating:1];
  }

  return 1;
}

void __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 region];
  v11 = [v10 identifier];
  v12 = [v11 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  if (!v12)
  {
    v9[2](v9, 1);
    goto LABEL_18;
  }

  v13 = *(*(*(a1 + 48) + 8) + 24);
  if (v13 == 1)
  {
    if ([v7 type] == 2)
    {
      v14 = *(*(*(a1 + 56) + 8) + 24) * 0.5;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_5;
      v86[3] = &unk_1E70F3590;
      v87 = v8;
      [UIView animateWithDuration:v86 animations:v9 completion:v14];

      goto LABEL_18;
    }

    v13 = *(*(*(a1 + 48) + 8) + 24);
  }

  if (v13 != 2)
  {
    v42 = *(*(*(a1 + 64) + 8) + 40);
    v43 = [v8 identifier];
    v44 = [v42 objectForKeyedSubscript:v43];

    if (v44)
    {
      [v44 CGRectValue];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [v8 absoluteFrame];
      x = v88.origin.x;
      y = v88.origin.y;
      width = v88.size.width;
      height = v88.size.height;
      v89.origin.x = v46;
      v89.origin.y = v48;
      v89.size.width = v50;
      v89.size.height = v52;
      if (CGRectEqualToRect(v88, v89))
      {
        v9[2](v9, 1);
LABEL_17:

        goto LABEL_18;
      }

      [v8 setAbsoluteFrame:{v46, v48, v50, v52}];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_11;
      v66[3] = &unk_1E70F3B20;
      v67 = v8;
      v68 = x;
      v69 = y;
      v70 = width;
      v71 = height;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_12;
      v64[3] = &unk_1E7103030;
      v65 = v9;
      [UIView _animateUsingSpringWithTension:0 friction:v66 interactive:v64 animations:100.0 completion:20.0];

      v57 = v67;
    }

    else
    {
      [v8 setAlpha:0.0];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_13;
      v62[3] = &unk_1E70F3590;
      v63 = v8;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_14;
      v60[3] = &unk_1E7103030;
      v61 = v9;
      [UIView _animateUsingSpringWithTension:0 friction:v62 interactive:v60 animations:100.0 completion:20.0];

      v57 = v63;
    }

    goto LABEL_17;
  }

  v15 = [*(a1 + 32) statusBar];
  v16 = [v15 regions];
  v17 = [v16 objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
  v18 = [v17 displayItems];

  v19 = *(*(*(a1 + 56) + 8) + 24);
  v20 = v19 / [v18 count];
  v58 = v20 * ([v18 indexOfObject:v8] + 1);
  v59 = v20 + *(*(*(a1 + 56) + 8) + 24);
  v21 = *(*(*(a1 + 64) + 8) + 40);
  v22 = [v8 identifier];
  v23 = [v21 objectForKeyedSubscript:v22];
  [v23 CGRectValue];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v8 absoluteFrame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if ([v7 type] == 3)
  {
    [v8 setAbsoluteFrame:{v25, v27, v29, v31}];
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_6;
  v72[3] = &unk_1E7120FF0;
  v40 = v7;
  v41 = *(a1 + 32);
  v73 = v40;
  v74 = v41;
  v75 = v8;
  v76 = v25;
  v77 = v27;
  v78 = v29;
  v79 = v31;
  v80 = v33;
  v81 = v35;
  v82 = v37;
  v83 = v39;
  v84 = v58;
  v85 = v59;
  [UIView animateKeyframesWithDuration:"animateKeyframesWithDuration:delay:options:animations:completion:" delay:0 options:v72 animations:v9 completion:?];

LABEL_18:
}

void __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) type] == 3)
  {
    [*(a1 + 40) airplaneObstacleFadeOutDuration];
    v3 = v2;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_7;
    v19[3] = &unk_1E70F3B20;
    v4 = &v20;
    v20 = *(a1 + 48);
    v5 = *(a1 + 72);
    v21 = *(a1 + 56);
    v22 = v5;
    [UIView addKeyframeWithRelativeStartTime:v19 relativeDuration:0.0 animations:v3];
    [*(a1 + 40) airplaneObstacleFadeOutDuration];
    v7 = v6;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_8;
    v15[3] = &unk_1E70F3B20;
    v16 = *(a1 + 48);
    v17 = *(a1 + 88);
    v18 = *(a1 + 104);
    [UIView addKeyframeWithRelativeStartTime:v15 relativeDuration:v7 animations:0.0];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_9;
    v13[3] = &unk_1E70F3590;
    v4 = &v14;
    v14 = *(a1 + 48);
    [UIView addKeyframeWithRelativeStartTime:v13 relativeDuration:0.0 animations:0.0];
  }

  v8 = *(a1 + 120) / *(a1 + 128);
  [*(a1 + 40) airplaneObstacleFadeInDuration];
  v10 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_10;
  v11[3] = &unk_1E70F3590;
  v12 = *(a1 + 48);
  [UIView addKeyframeWithRelativeStartTime:v11 relativeDuration:v8 animations:v10];
}

uint64_t __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);

  return [v6 setAbsoluteFrame:{v2, v3, v4, v5}];
}

uint64_t __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 displayItemAbsoluteFrames];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v7 type];
  if (v11 == 2)
  {
    [v5 setFloating:1];
  }

  return 1;
}

void __58___UIStatusBarVisualProvider_iOS_animationForAirplaneMode__block_invoke_16(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[(_UIStatusBarItem *)_UIStatusBarIndicatorAirplaneModeItem];
  if ([v5 isEqual:v3])
  {
  }

  else
  {
    v4 = [*(a1 + 32) containsObject:v5];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) addSubAnimation:*(a1 + 48) forDisplayItemWithIdentifier:v5];
      [*(a1 + 32) addObject:v5];
    }
  }
}

void __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_2;
  v7[3] = &unk_1E70F3590;
  v8 = v5;
  v6 = v5;
  [UIView animateWithDuration:4 delay:v7 options:a4 animations:0.333333333 completion:0.0];
}

void __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, *(*(*(a1 + 32) + 8) + 32) - (v9 + v8 * 0.5), *(*(*(a1 + 32) + 8) + 40) - (v11 + v10 * 0.5));
  v15 = v17;
  CGAffineTransformScale(&v16, &v15, 0.66, 0.66);
  v17 = v16;
  [v6 setAlpha:0.0];
  v16 = v17;
  [v6 setTransform:&v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_4;
  v13[3] = &unk_1E70F3590;
  v14 = v6;
  v12 = v6;
  [UIView animateWithDuration:v13 animations:v7 completion:0.333333333];
}

uint64_t __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __63___UIStatusBarVisualProvider_iOS_animationForProminentLocation__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 absoluteFrame];
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 32) = v6 + v5 * 0.5;
  *(v8 + 40) = v9 + v7 * 0.5;
  [v4 setFloating:1];

  return 1;
}

void __109___UIStatusBarVisualProvider_PillRegionCoordinator__updateBackgroundActivityWithEntry_timeEntry_needsUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _hideActivityDetailAndUpdate:1];
}

void __103___UIStatusBarVisualProvider_PillRegionCoordinator_updateRegion_highlighted_initialPress_cornerRadius___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = a2;
    v3 = [UIColor colorWithWhite:0.0 alpha:0.3];
    [v2 setBackgroundColor:?];
  }

  else
  {
    v3 = a2;
    [v3 setBackgroundColor:0];
  }
}

@end