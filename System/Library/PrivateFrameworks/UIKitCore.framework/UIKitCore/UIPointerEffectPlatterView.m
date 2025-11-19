@interface UIPointerEffectPlatterView
@end

@implementation UIPointerEffectPlatterView

void __46___UIPointerEffectPlatterView_setShadowAlpha___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _newShadowView];
  [*(a1 + 32) setShadowView:v2];

  v3 = *(a1 + 32);
  v5 = [v3 shadowView];
  v4 = [*(a1 + 32) contentView];
  [v3 insertSubview:v5 aboveSubview:v4];
}

void __43___UIPointerEffectPlatterView_setTintMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[54];
  if ((v3 - 1) >= 2)
  {
    if (!v3)
    {
      v13 = [v2 tintView];
      [v13 removeFromSuperview];

      [*(a1 + 32) setTintView:0];
      v14 = [*(a1 + 32) lumaTrackingView];
      [v14 removeFromSuperview];

      v15 = *(a1 + 32);

      [v15 setLumaTrackingView:0];
    }
  }

  else
  {
    v4 = [v2 _newTintView];
    [*(a1 + 32) setTintView:v4];

    [*(a1 + 32) _layoutTintView];
    v5 = *(a1 + 32);
    v6 = [v5 tintView];
    [v5 addSubview:v6];

    v7 = *(a1 + 32);
    v8 = [v7 tintView];
    v9 = [v7 _newLumaTrackingViewForTintView:v8];
    [*(a1 + 32) setLumaTrackingView:v9];

    v10 = [*(a1 + 32) lumaTrackingView];
    v11 = [v10 layer];
    [v11 setName:@"_UIPointerContentEffectPlatterView.lumaTrackingView"];

    v12 = *(a1 + 32);
    v16 = [v12 lumaTrackingView];
    [v12 addSubview:v16];
  }
}

void __52___UIPointerEffectPlatterView_setSpecularHighlight___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[57];
  v4 = [v2 specularOverlayView];
  v5 = v4;
  if (v3)
  {

    if (v5)
    {
      v6 = [*(a1 + 32) specularOverlayView];
      [v6 removeFromSuperview];

      [*(a1 + 32) setSpecularOverlayView:0];
    }

    v7 = [*(a1 + 32) _specularOverlayView:*(*(a1 + 32) + 456) withOptions:{objc_msgSend(*(a1 + 32), "specularOptions")}];
    [*(a1 + 32) setSpecularOverlayView:v7];

    v8 = *(a1 + 32);
    v10 = [v8 specularOverlayView];
    [v8 addSubview:v10];
  }

  else
  {
    [v4 removeFromSuperview];

    v9 = *(a1 + 32);

    [v9 setSpecularOverlayView:0];
  }
}

@end