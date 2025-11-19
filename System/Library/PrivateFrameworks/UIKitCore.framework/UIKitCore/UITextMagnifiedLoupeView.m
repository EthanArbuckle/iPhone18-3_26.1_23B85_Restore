@interface UITextMagnifiedLoupeView
@end

@implementation UITextMagnifiedLoupeView

void __46___UITextMagnifiedLoupeView_setModelPosition___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_16) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Expected _transitionGroupCompletion to be nil. This could cause adverse behavior when closing the magnifier loupe.", v1, 2u);
  }
}

void __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[418] = 1;
    v2 = WeakRetained;
    [WeakRetained layoutSubviews];
    WeakRetained = v2;
  }
}

void __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[419] = 1;
    v2 = WeakRetained;
    [WeakRetained layoutSubviews];
    WeakRetained = v2;
  }
}

uint64_t __55___UITextMagnifiedLoupeView__updateOpenLoupeAnimation___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __56___UITextMagnifiedLoupeView__updateCloseLoupeAnimation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 416) = 1;
    v3 = WeakRetained;
    [*(a1 + 40) increment];
    [v3 _resetAnimationState];
    [v3 layoutSubviews];
    [v3 modelPosition];
    [v3 _updatePortalViewTransformForPosition:? zoomScale:?];
    WeakRetained = v3;
  }
}

uint64_t __56___UITextMagnifiedLoupeView__updateCloseLoupeAnimation___block_invoke_2(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048635 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

void __56___UITextMagnifiedLoupeView__configuredGroupCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[416] = 0;
  }

  v6 = WeakRetained;
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  [v3 setHidden:1];
  [v4 setHiddenForLoupeAnimation:0];
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
  }
}

void __43___UITextMagnifiedLoupeView_loupeZoomScale__block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"_UITextMagnifiedLoupeViewZoomScale"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
    *&loupeZoomScale___loupeZoomScale_0 = v2;
  }
}

void __46___UITextMagnifiedLoupeView_loupeZoomOutScale__block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"_UITextMagnifiedLoupeViewZoomOutScale"];

  v1 = v3;
  if (v3)
  {
    [v3 floatValue];
    v1 = v3;
    *&loupeZoomOutScale___loupeZoomOutScale_0 = v2;
  }
}

@end