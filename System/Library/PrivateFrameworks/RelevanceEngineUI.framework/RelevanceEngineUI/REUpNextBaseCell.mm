@interface REUpNextBaseCell
+ (id)_shadowImage;
+ (void)initialize;
- (REUpNextBaseCell)initWithFrame:(CGRect)frame;
- (REUpNextCellDelegate)delegate;
- (void)_updateColorOverlay;
- (void)applyLayoutAttributes:(id)attributes;
- (void)configureWithContent:(id)content;
- (void)didLongPress:(id)press;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentBrightness:(double)brightness animated:(BOOL)animated;
- (void)setContentImage:(id)image animated:(BOOL)animated;
- (void)setForegroundTextColorToColor:(id)color shouldOverrideContentHeaderColor:(BOOL)headerColor;
- (void)setHighlightBehavior:(unint64_t)behavior;
- (void)setHighlightInsets:(UIEdgeInsets)insets;
- (void)setOverrideContentImage:(id)image;
@end

@implementation REUpNextBaseCell

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_0_5 = 0x4018000000000000;
  }
}

+ (id)_shadowImage
{
  if (_shadowImage_onceToken != -1)
  {
    +[REUpNextBaseCell _shadowImage];
  }

  v3 = _shadowImage_shadowImage;

  return v3;
}

void __32__REUpNextBaseCell__shadowImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v0 imageNamed:@"platter_shadow" inBundle:v1 compatibleWithTraitCollection:0];

  v2 = [v4 resizableImageWithCapInsets:1 resizingMode:{0.0, *&kActiveLayout_0_5, 0.0, *&kActiveLayout_0_5}];
  v3 = _shadowImage_shadowImage;
  _shadowImage_shadowImage = v2;
}

- (REUpNextBaseCell)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = REUpNextBaseCell;
  v3 = [(REUpNextBaseCell *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v5 = *(v3 + 100);
    *(v3 + 100) = whiteColor;

    _shadowImage = [objc_opt_class() _shadowImage];
    [_shadowImage size];
    *(v3 + 81) = v7;
    *(v3 + 82) = v8;
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:_shadowImage];
    v10 = *(v3 + 83);
    *(v3 + 83) = v9;

    layer = [*(v3 + 83) layer];
    [layer setZPosition:-2.0];

    layer2 = [MEMORY[0x277CD9ED0] layer];
    v13 = *(v3 + 84);
    *(v3 + 84) = layer2;

    [*(v3 + 84) setAllowsGroupBlending:0];
    v14 = *(v3 + 84);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [v14 setContentsScale:?];

    v16 = objc_alloc(MEMORY[0x277D75D18]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v18 = *(v3 + 85);
    *(v3 + 85) = v17;

    v19 = *(v3 + 85);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v19 setBackgroundColor:clearColor];

    layer3 = [*(v3 + 85) layer];
    [layer3 setZPosition:1.0];

    *(v3 + 87) = 0;
    [v3 addSubview:*(v3 + 83)];
    contentView = [v3 contentView];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [contentView setBackgroundColor:clearColor2];

    contentView2 = [v3 contentView];
    [contentView2 addSubview:*(v3 + 85)];

    layer4 = [v3 layer];
    [layer4 addSublayer:*(v3 + 84)];

    [*(v3 + 84) setZPosition:-2.0];
    v26 = *MEMORY[0x277CDA138];
    [*(v3 + 84) setCornerCurve:*MEMORY[0x277CDA138]];
    [*(v3 + 84) setCornerRadius:*&kActiveLayout_0_5];
    [*(v3 + 84) setMasksToBounds:1];
    layer5 = [*(v3 + 85) layer];
    [layer5 setCornerCurve:v26];

    layer6 = [*(v3 + 85) layer];
    [layer6 setCornerRadius:*&kActiveLayout_0_5];

    layer7 = [*(v3 + 85) layer];
    [layer7 setMasksToBounds:1];

    *(v3 + 90) = 0;
    v30 = *(MEMORY[0x277D768C8] + 16);
    *(v3 + 728) = *MEMORY[0x277D768C8];
    *(v3 + 744) = v30;
    v31 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel_didLongPress_];
    v32 = *(v3 + 86);
    *(v3 + 86) = v31;

    [*(v3 + 86) setDelegate:v3];
    [*(v3 + 86) setCancelsTouchesInView:0];
    [v3 addGestureRecognizer:*(v3 + 86)];
  }

  return v3;
}

- (void)didLongPress:(id)press
{
  delegate = [(REUpNextBaseCell *)self delegate];
  [delegate cellDidLongPress:self];
}

- (void)setHighlightBehavior:(unint64_t)behavior
{
  if (self->_behavior == behavior)
  {
    return;
  }

  v12 = v7;
  v13 = v3;
  self->_behavior = behavior;
  if (!behavior)
  {
    v10 = 0.0;
    goto LABEL_6;
  }

  if (behavior == 1)
  {
    v10 = -1.0;
LABEL_6:
    v11 = [(UIView *)self->_overlayView layer:v8];
    [v11 setZPosition:v10];
  }

  [(REUpNextBaseCell *)self _updateColorOverlay];
}

- (void)setHighlightInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_overlayInsets.top), vceqq_f64(v4, *&self->_overlayInsets.bottom)))) & 1) == 0)
  {
    self->_overlayInsets = insets;
    [(REUpNextBaseCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = REUpNextBaseCell;
  [(REUpNextBaseCell *)&v3 prepareForReuse];
  [(REUpNextBaseCell *)self setContentBrightness:0 animated:1.0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = REUpNextBaseCell;
  [(REUpNextBaseCell *)&v13 layoutSubviews];
  [(REUpNextBaseCell *)self bounds];
  x = v14.origin.x;
  width = v14.size.width;
  v5 = CGRectGetMaxY(v14) - *&kActiveLayout_0_5;
  height = self->_shadowSize.height;
  overlayView = self->_overlayView;
  [(REUpNextBaseCell *)self bounds];
  [(UIView *)overlayView setFrame:v8 + self->_overlayInsets.left, v9 + self->_overlayInsets.top, v10 - (self->_overlayInsets.left + self->_overlayInsets.right), v11 - (self->_overlayInsets.top + self->_overlayInsets.bottom)];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  imageLayer = self->_imageLayer;
  [(REUpNextBaseCell *)self bounds];
  [(CALayer *)imageLayer setFrame:?];
  [(UIImageView *)self->_shadowView setFrame:x, v5, width, height];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)setContentBrightness:(double)brightness animated:(BOOL)animated
{
  contentBrightness = self->_contentBrightness;
  brightnessCopy = brightness;
  if (vabds_f32(contentBrightness, brightnessCopy) >= 0.00000011921)
  {
    animatedCopy = animated;
    v9 = [MEMORY[0x277D75348] colorWithWhite:brightness alpha:1.0];
    cGColor = [v9 CGColor];

    v11 = [MEMORY[0x277D75348] colorWithWhite:self->_contentBrightness alpha:1.0];
    cGColor2 = [v11 CGColor];

    if (animatedCopy)
    {
      v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contentsMultiplyColor"];
      [v13 setToValue:cGColor];
      [v13 setFromValue:cGColor2];
      [v13 setDuration:0.5];
      v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
      [v13 setTimingFunction:v14];

      [v13 setFillMode:*MEMORY[0x277CDA228]];
      [(CALayer *)self->_imageLayer addAnimation:v13 forKey:@"brightnessBoost"];
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CALayer *)self->_imageLayer setContentsMultiplyColor:cGColor];
    [MEMORY[0x277CD9FF0] commit];
    self->_contentBrightness = brightness;
  }
}

- (void)setContentImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  if (self->_contentImage != imageCopy)
  {
    v10 = imageCopy;
    if (!self->_overrideContentImage)
    {
      if (animatedCopy)
      {
        v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contents"];
        [v8 setToValue:{-[UIImage CGImage](v10, "CGImage")}];
        [v8 setFromValue:{-[UIImage CGImage](self->_contentImage, "CGImage")}];
        [v8 setDuration:1.0];
        v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
        [v8 setTimingFunction:v9];

        [(CALayer *)self->_imageLayer addAnimation:v8 forKey:@"contentsFade"];
      }

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(CALayer *)self->_imageLayer setContents:[(UIImage *)v10 CGImage]];
      [MEMORY[0x277CD9FF0] commit];
    }

    objc_storeStrong(&self->_contentImage, image);
    imageCopy = v10;
  }
}

- (void)setOverrideContentImage:(id)image
{
  imageCopy = image;
  if (self->_overrideContentImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_overrideContentImage, image);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    imageLayer = self->_imageLayer;
    v7 = v8;
    [(CALayer *)imageLayer setContents:[(UIImage *)v8 CGImage]];
    [MEMORY[0x277CD9FF0] commit];
    imageCopy = v8;
  }
}

- (void)configureWithContent:(id)content
{
  objc_storeStrong(&self->_content, content);
  contentCopy = content;
  tintColor = [contentCopy tintColor];

  [(REUpNextBaseCell *)self setTintColor:tintColor];
}

- (void)setForegroundTextColorToColor:(id)color shouldOverrideContentHeaderColor:(BOOL)headerColor
{
  v6 = [color copy];
  defaultTextColor = self->_defaultTextColor;
  self->_defaultTextColor = v6;

  self->_shouldOverrideContentHeaderColor = headerColor;

  [(REUpNextBaseCell *)self defaultTextColorDidChange];
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = REUpNextBaseCell;
  [(REUpNextBaseCell *)&v7 applyLayoutAttributes:attributesCopy];
  -[REUpNextBaseCell setHidden:](self, "setHidden:", [attributesCopy isHidden]);
  _isInAnimationBlock = [MEMORY[0x277D75D18] _isInAnimationBlock];
  if ((_isInAnimationBlock & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
  }

  self->_darkeningAmount = 0.0;
  [(REUpNextBaseCell *)self _updateColorOverlay];
  if (!self->_overrideContentImage)
  {
    imageLayer = self->_imageLayer;
    [attributesCopy unitFrameOnScreen];
    [(CALayer *)imageLayer setContentsRect:?];
  }

  [(UIImageView *)self->_shadowView setAlpha:1.0];
  if ((_isInAnimationBlock & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_updateColorOverlay
{
  if ([(REUpNextBaseCell *)self isHighlighted])
  {
    behavior = self->_behavior;
    if (behavior == 1)
    {
      overlayView = self->_overlayView;
      v5 = MEMORY[0x277D75348];
      v6 = 0.3;
      v7 = 0.1;
    }

    else
    {
      if (behavior)
      {
        return;
      }

      overlayView = self->_overlayView;
      v5 = MEMORY[0x277D75348];
      v6 = 1.0;
      v7 = 0.25;
    }

    v9 = [v5 colorWithWhite:v6 alpha:v7];
    v10 = overlayView;
  }

  else
  {
    v8 = self->_overlayView;
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:self->_darkeningAmount];
    v10 = v8;
  }

  v11 = v9;
  [(UIView *)v10 setBackgroundColor:?];
}

- (REUpNextCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end