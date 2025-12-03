@interface TUISeparatedFlickSelectorView
- (BOOL)wantsUserInteractionEnabled;
- (UIEdgeInsets)stackLayoutMargins;
- (id)variantCellWithString:(id)string annotation:(id)annotation;
- (void)decorateVariantView;
- (void)layoutSubviews;
- (void)setInitialHighlight;
@end

@implementation TUISeparatedFlickSelectorView

- (void)setInitialHighlight
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  if ([associatedTree flickDirection] == -1)
  {

    goto LABEL_7;
  }

  arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
  v5 = [arrangedVariantCells count];

  if (v5 != 1)
  {
LABEL_7:
    v8.receiver = self;
    v8.super_class = TUISeparatedFlickSelectorView;
    [(TUIKeyPopupView *)&v8 setInitialHighlight];
    return;
  }

  arrangedVariantCells2 = [(TUIKeyPopupView *)self arrangedVariantCells];
  firstObject = [arrangedVariantCells2 firstObject];
  [firstObject setHighlighted:1];
}

- (id)variantCellWithString:(id)string annotation:(id)annotation
{
  annotationCopy = annotation;
  stringCopy = string;
  v8 = [TUISeparatedFlickVariantCell alloc];
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUISeparatedFlickVariantCell *)v8 initWithFrame:stringCopy string:annotationCopy annotation:renderTraits traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  touchesForwardingView = [(TUIKeyPopupView *)self touchesForwardingView];
  superview = [touchesForwardingView superview];
  [(TUISeparatedFlickVariantCell *)v10 setTouchesForwardingView:superview];

  return v10;
}

- (BOOL)wantsUserInteractionEnabled
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  v3 = [associatedTree flickDirection] == -1;

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
  variantView = [(TUIKeyPopupView *)self variantView];
  layer = [variantView layer];
  if (variantView)
  {
    [variantView transform3D];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DTranslate(&v8, &v7, 0.0, 0.0, 6.0);
  v7 = v8;
  [variantView setTransform3D:&v7];
  v4 = MEMORY[0x1E695E118];
  [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.acceptsUpstreamHitTesting"];
  [layer setValue:v4 forKeyPath:@"separatedOptions.platter.enabled"];
  [layer setValue:&unk_1F03D9098 forKeyPath:@"separatedOptions.platter.frontDepthForNormals"];
  [layer setValue:&unk_1F03D90A8 forKeyPath:@"separatedOptions.platter.mainSpecularStrength"];
  [layer setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.platter.fillSpecularStrength"];
  [layer setValue:&unk_1F03D90C8 forKeyPath:@"separatedOptions.platter.mainSpecularExponent"];
  [layer setValue:&unk_1F03D90D8 forKeyPath:@"separatedOptions.platter.fillSpecularExponent"];
  [layer setValue:&unk_1F03D90E8 forKeyPath:@"separatedOptions.platter.fakeFresnelMaxDist"];
  [layer setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.platter.fakeFresnelStrength"];
  [layer setValue:&unk_1F03D9098 forKeyPath:@"separatedOptions.platter.fakeFresnelFalloff"];
  [layer setValue:&unk_1F03D90B8 forKeyPath:@"separatedOptions.geometry.frontBevel"];
  [layer setValue:&unk_1F03D90F8 forKeyPath:@"separatedOptions.geometry.flatDepth"];
  [layer setValue:&unk_1F03D90F8 forKeyPath:@"separatedOptions.geometry.backBevel"];
  [layer setValue:&unk_1F03D9108 forKeyPath:@"separatedOptions.shadows.expansionOpacity"];
  [layer setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.expansionRadius"];
  [layer setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.expansionSize"];
  [layer setValue:&unk_1F03D9118 forKeyPath:@"separatedOptions.shadows.maxDynamicOffset"];
  [layer setValue:&unk_1F03D9128 forKeyPath:@"separatedOptions.shadows.expansionTargetZ"];
  LODWORD(v5) = 1017370378;
  [layer setShadowOpacity:v5];
  [layer setShadowRadius:1.0];
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [layer setShadowColor:{objc_msgSend(systemWhiteColor, "CGColor")}];

  [layer setShadowOffset:{0.5, 2.0}];
  [layer setShadowPathIsBounds:1];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = TUISeparatedFlickSelectorView;
  [(TUIKeyPopupView *)&v10 layoutSubviews];
  [(TUISeparatedFlickSelectorView *)self stackLayoutMargins];
  v5 = v3 + v4;
  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide layoutFrame];
  v7 = (v5 + CGRectGetHeight(v11)) * 0.5;
  variantView = [(TUIKeyPopupView *)self variantView];
  layer = [variantView layer];
  [layer setCornerRadius:v7];
}

@end