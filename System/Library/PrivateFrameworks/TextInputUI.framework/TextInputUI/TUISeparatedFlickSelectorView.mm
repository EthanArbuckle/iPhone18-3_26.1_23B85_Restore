@interface TUISeparatedFlickSelectorView
- (BOOL)wantsUserInteractionEnabled;
- (UIEdgeInsets)stackLayoutMargins;
- (id)variantCellWithString:(id)a3 annotation:(id)a4;
- (void)decorateVariantView;
- (void)layoutSubviews;
- (void)setInitialHighlight;
@end

@implementation TUISeparatedFlickSelectorView

- (void)setInitialHighlight
{
  v3 = [(TUIKeyPopupView *)self associatedTree];
  if ([v3 flickDirection] == -1)
  {

    goto LABEL_7;
  }

  v4 = [(TUIKeyPopupView *)self arrangedVariantCells];
  v5 = [v4 count];

  if (v5 != 1)
  {
LABEL_7:
    v8.receiver = self;
    v8.super_class = TUISeparatedFlickSelectorView;
    [(TUIKeyPopupView *)&v8 setInitialHighlight];
    return;
  }

  v7 = [(TUIKeyPopupView *)self arrangedVariantCells];
  v6 = [v7 firstObject];
  [v6 setHighlighted:1];
}

- (id)variantCellWithString:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUISeparatedFlickVariantCell alloc];
  v9 = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUISeparatedFlickVariantCell *)v8 initWithFrame:v7 string:v6 annotation:v9 traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v11 = [(TUIKeyPopupView *)self touchesForwardingView];
  v12 = [v11 superview];
  [(TUISeparatedFlickVariantCell *)v10 setTouchesForwardingView:v12];

  return v10;
}

- (BOOL)wantsUserInteractionEnabled
{
  v2 = [(TUIKeyPopupView *)self associatedTree];
  v3 = [v2 flickDirection] == -1;

  return v3;
}

- (UIEdgeInsets)stackLayoutMargins
{
  v2 = 8.0;
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)decorateVariantView
{
  v2 = [(TUIKeyPopupView *)self variantView];
  v3 = [v2 layer];
  if (v2)
  {
    [v2 transform3D];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DTranslate(&v8, &v7, 0.0, 0.0, 6.0);
  v7 = v8;
  [v2 setTransform3D:&v7];
  v4 = MEMORY[0x1E695E118];
  [v3 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.acceptsUpstreamHitTesting"];
  [v3 setValue:v4 forKeyPath:@"separatedOptions.platter.enabled"];
  [v3 setValue:&unk_1F03D9098 forKeyPath:@"separatedOptions.platter.frontDepthForNormals"];
  [v3 setValue:&unk_1F03D90A8 forKeyPath:@"separatedOptions.platter.mainSpecularStrength"];
  [v3 setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.platter.fillSpecularStrength"];
  [v3 setValue:&unk_1F03D90C8 forKeyPath:@"separatedOptions.platter.mainSpecularExponent"];
  [v3 setValue:&unk_1F03D90D8 forKeyPath:@"separatedOptions.platter.fillSpecularExponent"];
  [v3 setValue:&unk_1F03D90E8 forKeyPath:@"separatedOptions.platter.fakeFresnelMaxDist"];
  [v3 setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.platter.fakeFresnelStrength"];
  [v3 setValue:&unk_1F03D9098 forKeyPath:@"separatedOptions.platter.fakeFresnelFalloff"];
  [v3 setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.geometry.frontBevel"];
  [v3 setValue:&unk_1F03D90F8 forKeyPath:@"separatedOptions.geometry.flatDepth"];
  [v3 setValue:&unk_1F03D90F8 forKeyPath:@"separatedOptions.geometry.backBevel"];
  [v3 setValue:&unk_1F03D9108 forKeyPath:@"separatedOptions.shadows.expansionOpacity"];
  [v3 setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.expansionRadius"];
  [v3 setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.expansionSize"];
  [v3 setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.maxDynamicOffset"];
  [v3 setValue:&unk_1F03D9128 forKeyPath:@"separatedOptions.shadows.expansionTargetZ"];
  LODWORD(v5) = 1017370378;
  [v3 setShadowOpacity:v5];
  [v3 setShadowRadius:1.0];
  v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v3 setShadowColor:{objc_msgSend(v6, "CGColor")}];

  [v3 setShadowOffset:{0.5, 2.0}];
  [v3 setShadowPathIsBounds:1];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = TUISeparatedFlickSelectorView;
  [(TUIKeyPopupView *)&v10 layoutSubviews];
  [(TUISeparatedFlickSelectorView *)self stackLayoutMargins];
  v5 = v3 + v4;
  v6 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v6 layoutFrame];
  v7 = (v5 + CGRectGetHeight(v11)) * 0.5;
  v8 = [(TUIKeyPopupView *)self variantView];
  v9 = [v8 layer];
  [v9 setCornerRadius:v7];
}

@end