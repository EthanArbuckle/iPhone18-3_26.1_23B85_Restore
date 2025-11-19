@interface UIFloatingShadowView
@end

@implementation UIFloatingShadowView

uint64_t __39___UIFloatingShadowView_initWithFrame___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShadowContentsCenter:{0.5, 0.5, 0.01, 0.01}];
  [*(a1 + 32) setShadowRadius:20.0];
  [*(a1 + 32) setShadowOpacity:0.2];
  [*(a1 + 32) setShadowVerticalOffset:25.0];
  [*(a1 + 32) setShadowExpansion:35.0];
  [*(a1 + 32) setShadowEnabled:1];
  [*(a1 + 32) setCornerRadius:6.0];
  v2 = *(a1 + 32);

  return [v2 _updateShadowLayer];
}

void __48___UIFloatingShadowView__setShadowImageIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) shadowRadius];
  v3 = v2;
  [*(a1 + 32) cornerRadius];
  v5 = [_UIStretchableShadow shadowWithRadius:v3 cornerRadius:v4];
  v6 = *(a1 + 32);
  v7 = [UIImage imageWithCGImage:v5];
  [v6 setShadowImage:v7];
}

void __51___UIFloatingShadowView__shadowPathForSize_radius___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = _MergedGlobals_3_3;
  _MergedGlobals_3_3 = v0;
}

@end