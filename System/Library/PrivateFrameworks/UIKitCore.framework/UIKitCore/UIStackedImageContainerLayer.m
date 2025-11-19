@interface UIStackedImageContainerLayer
@end

@implementation UIStackedImageContainerLayer

void __57___UIStackedImageContainerLayer__layerStackObservingKeys__block_invoke()
{
  v0 = qword_1EA994A90;
  qword_1EA994A90 = &unk_1EFE2E068;
}

uint64_t __63___UIStackedImageContainerLayer__updateRadiosityFromLayerStack__block_invoke(uint64_t result, uint64_t a2, double a3, double a4)
{
  v6 = *(result + 32);
  if (*(result + 40) == *(v6 + 144))
  {
    v7 = result;
    [*(v6 + 272) setContents:a2];
    v8 = (*(v7 + 32) + 104);
    *v8 = a3;
    v8[1] = a4;
    *(*(v7 + 32) + 120) = 1;
    v9 = *(v7 + 32);

    return [v9 setNeedsLayout];
  }

  return result;
}

uint64_t __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v2 == v3)
  {
    return [v4 _applyFocusDirectionTransformWithAnimationCoordinator:v5];
  }

  else
  {
    return [v4 _updateLayerForSelectionWithAnimationCoordinator:v5];
  }
}

uint64_t __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _resetAnimatingToNormalState];
  *(*(a1 + 32) + 74) = 0;
  return result;
}

uint64_t __96___UIStackedImageContainerLayer__setControlState_animated_focusAnimationCoordinator_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[194] == 1)
  {
    [*(a1 + 32) _setLayerStackInflated:1 seed:*(a1 + 48)];
    v2 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 _updateLayerForSelectionWithAnimationCoordinator:WeakRetained];

  [*(*(a1 + 32) + 496) alpha];
  v5 = v4 == 0.0;
  v6 = 1.0;
  if (!v5)
  {
    v6 = 0.0;
  }

  v7 = *(*(a1 + 32) + 496);

  return [v7 setAlpha:v6];
}

void __47___UIStackedImageContainerLayer__setFlatImage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 248) setContents:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 248);
  if (*(a1 + 40) == *(v2 + 216))
  {
    v4 = [v2 _imageStackContentsGravity];
    [v3 setContentsGravity:v4];
  }

  else
  {
    [*(v2 + 248) setContentsGravity:*MEMORY[0x1E6979DF0]];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 248);
  if (*(v5 + 216))
  {
    [*(v5 + 248) setBackgroundColor:0];
  }

  else
  {
    v7 = [*(v5 + 504) placeholderImage];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      if (qword_1EA994AB0 != -1)
      {
        dispatch_once(&qword_1EA994AB0, &__block_literal_global_629);
      }

      v8 = qword_1EA994AA8;
    }

    [v6 setBackgroundColor:v8];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 280);
  v11 = [*(v9 + 504) placeholderImage];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    if (qword_1EA994AB0 != -1)
    {
      dispatch_once(&qword_1EA994AB0, &__block_literal_global_629);
    }

    v12 = qword_1EA994AA8;
  }

  [v10 setBackgroundColor:v12];

  v13 = *(a1 + 32);
  v14 = *(v13 + 280);
  v15 = [*(v13 + 504) placeholderImage];
  [v14 setContents:{objc_msgSend(v15, "CGImage")}];

  v16 = *(a1 + 32);
  v17 = v16[35];
  v18 = [v16 _imageStackContentsGravity];
  [v17 setContentsGravity:v18];
}

void __45___UIStackedImageContainerLayer__randomImage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EA994A98;
  qword_1EA994A98 = v0;
}

void __52___UIStackedImageContainerLayer__setParallaxImages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [v11 setDelegate:*(a1 + 32)];
  [v11 setAnchorPoint:{0.5, 0.5}];
  [*(a1 + 32) _positionAndSizeForLayerImage:*(a1 + 40)];
  v6 = v5;
  v8 = v7;
  [v11 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v11 setPosition:{v6, v8}];
  [v11 setAllowsGroupOpacity:0];
  [v11 setAllowsEdgeAntialiasing:1];
  v9 = [*(a1 + 32) _imageStackContentsGravity];
  [v11 setContentsGravity:v9];

  [v11 setZPosition:*(a1 + 48) * 0.001];
  [*(a1 + 32) contentsScale];
  [v11 setContentsScale:?];
  [*(a1 + 32) rasterizationScale];
  [v11 setRasterizationScale:?];
  if (a3 && [*(a1 + 40) blendMode] == 1)
  {
    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
    [v11 setCompositingFilter:v10];
  }
}

uint64_t __62___UIStackedImageContainerLayer__updateInnerParallaxTransform__block_invoke(uint64_t a1)
{
  result = _UIInternalPreferenceUsesDefault(&_MergedGlobals_960, @"UISolariumNewStackedImageRenderingInnerParallaxProgressiveScale", _UIInternalPreferenceUpdateBool);
  if ((result & 1) != 0 || byte_1ED48B88C)
  {
    result = _UIInternalPreferenceUsesDefault(&dword_1ED48B890, @"UISolariumNewStackedImageRenderingInnerParallaxAsymmetricScale", _UIInternalPreferenceUpdateBool);
    if (*(a1 + 40) == 1)
    {
      return _UIInternalPreferenceUsesDefault(&unk_1ED48B8B8, @"UISolariumNewStackedImageRenderingInnerParallaxFocusedAdditionalScaleAmount", _UIInternalPreferenceUpdateDouble);
    }
  }

  return result;
}

@end