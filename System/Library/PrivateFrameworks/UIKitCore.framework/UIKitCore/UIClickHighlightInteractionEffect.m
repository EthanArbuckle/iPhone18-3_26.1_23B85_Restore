@interface UIClickHighlightInteractionEffect
@end

@implementation UIClickHighlightInteractionEffect

void __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v2 = [*(a1 + 32) targetedPreview];
  v3 = [v2 parameters];
  v4 = [v3 _previewMode];

  if (*(*(a1 + 32) + 24))
  {
    v5 = 1.0;
    v6 = 1.0;
    if (v4 == 1)
    {
      v6 = fmax(fmin(*(a1 + 56) / 0.1, 1.0), 0.0);
    }

    [*(a1 + 40) setBackgroundAlpha:v6];
    v7 = *(*(a1 + 32) + 8);
    if (v7 == 2)
    {
      v15 = [*(a1 + 40) anchorView];
      v16 = [v15 layer];
      [v16 setZPosition:100.0];

      [*(a1 + 48) maximumProgress];
      v18 = (*(a1 + 56) + -1.0) / (v17 + -1.0);
      [*(a1 + 40) bounds];
      Width = CGRectGetWidth(v34);
      [*(a1 + 40) bounds];
      Height = CGRectGetHeight(v35);
      if (Width >= Height)
      {
        Height = Width;
      }

      v21 = _UIPlatterLiftScaleForEdgeDimensions(Height);
      v5 = fmax(fmin(1.0 - v18 + v18 * v21, v21), 1.0);
      [*(a1 + 40) setShadowAlpha:v18 + (1.0 - v18) * 0.0];
    }

    else if (v7 == 1)
    {
      [*(a1 + 40) bounds];
      x = v32.origin.x;
      y = v32.origin.y;
      v10 = v32.size.width;
      v11 = v32.size.height;
      v12 = CGRectGetWidth(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = v10;
      v33.size.height = v11;
      v13 = CGRectGetHeight(v33);
      if (v12 >= v13)
      {
        v13 = v12;
      }

      v14 = fmin((v13 + -14.36) / v13, 0.96);
      if (v14 < 0.87)
      {
        v14 = 0.87;
      }

      v5 = 1.0 - *(a1 + 56) + *(a1 + 56) * v14;
    }

    if (_AXSReduceMotionEnabled())
    {
      v5 = 1.0;
    }

    v22 = [*(a1 + 40) anchorView];
    [v22 setProgress:1.0];
  }

  else
  {
    [*(a1 + 40) setShadowAlpha:0.0];
    v5 = 1.0;
    if (v4 == 1)
    {
      [*(a1 + 40) setBackgroundAlpha:0.0];
    }
  }

  v23 = [*(a1 + 32) continuationPreview];
  v24 = [v23 _isVisible];

  if (v24)
  {
    [*(a1 + 32) continuationPreview];
  }

  else
  {
    [*(a1 + 32) targetedPreview];
  }
  v25 = ;
  v26 = [v25 target];
  v27 = v26;
  if (v26)
  {
    [v26 transform];
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  v31 = v30;

  v30 = v31;
  CGAffineTransformScale(&v29, &v30, v5, v5);
  v28 = [*(a1 + 40) anchorView];
  v30 = v29;
  [v28 setTransform:&v30];
}

uint64_t __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke_2(uint64_t a1)
{
  --*(*(a1 + 32) + 16);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = *(*(a1 + 32) + 16);
  if (has_internal_diagnostics)
  {
    if (v3 < 0)
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "Over-decremented highlight effect animation count!", buf, 2u);
      }
    }
  }

  else if (v3 < 0)
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &kClickHighlightMatchMoveAnimationKey_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Over-decremented highlight effect animation count!", v7, 2u);
    }
  }

  result = *(a1 + 32);
  if (!*(result + 16) && (*(result + 24) & 1) == 0)
  {
    return [result _completeHighlightEffect];
  }

  return result;
}

uint64_t __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke_46(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048613 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end