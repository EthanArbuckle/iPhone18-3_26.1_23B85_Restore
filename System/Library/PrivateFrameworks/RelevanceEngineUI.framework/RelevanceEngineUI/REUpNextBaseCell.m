@interface REUpNextBaseCell
+ (id)_shadowImage;
+ (void)initialize;
- (REUpNextBaseCell)initWithFrame:(CGRect)a3;
- (REUpNextCellDelegate)delegate;
- (void)_updateColorOverlay;
- (void)applyLayoutAttributes:(id)a3;
- (void)configureWithContent:(id)a3;
- (void)didLongPress:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentBrightness:(double)a3 animated:(BOOL)a4;
- (void)setContentImage:(id)a3 animated:(BOOL)a4;
- (void)setForegroundTextColorToColor:(id)a3 shouldOverrideContentHeaderColor:(BOOL)a4;
- (void)setHighlightBehavior:(unint64_t)a3;
- (void)setHighlightInsets:(UIEdgeInsets)a3;
- (void)setOverrideContentImage:(id)a3;
@end

@implementation REUpNextBaseCell

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (REUpNextBaseCell)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = REUpNextBaseCell;
  v3 = [(REUpNextBaseCell *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = *(v3 + 100);
    *(v3 + 100) = v4;

    v6 = [objc_opt_class() _shadowImage];
    [v6 size];
    *(v3 + 81) = v7;
    *(v3 + 82) = v8;
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    v10 = *(v3 + 83);
    *(v3 + 83) = v9;

    v11 = [*(v3 + 83) layer];
    [v11 setZPosition:-2.0];

    v12 = [MEMORY[0x277CD9ED0] layer];
    v13 = *(v3 + 84);
    *(v3 + 84) = v12;

    [*(v3 + 84) setAllowsGroupBlending:0];
    v14 = *(v3 + 84);
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 scale];
    [v14 setContentsScale:?];

    v16 = objc_alloc(MEMORY[0x277D75D18]);
    v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v18 = *(v3 + 85);
    *(v3 + 85) = v17;

    v19 = *(v3 + 85);
    v20 = [MEMORY[0x277D75348] clearColor];
    [v19 setBackgroundColor:v20];

    v21 = [*(v3 + 85) layer];
    [v21 setZPosition:1.0];

    *(v3 + 87) = 0;
    [v3 addSubview:*(v3 + 83)];
    v22 = [v3 contentView];
    v23 = [MEMORY[0x277D75348] clearColor];
    [v22 setBackgroundColor:v23];

    v24 = [v3 contentView];
    [v24 addSubview:*(v3 + 85)];

    v25 = [v3 layer];
    [v25 addSublayer:*(v3 + 84)];

    [*(v3 + 84) setZPosition:-2.0];
    v26 = *MEMORY[0x277CDA138];
    [*(v3 + 84) setCornerCurve:*MEMORY[0x277CDA138]];
    [*(v3 + 84) setCornerRadius:*&kActiveLayout_0_5];
    [*(v3 + 84) setMasksToBounds:1];
    v27 = [*(v3 + 85) layer];
    [v27 setCornerCurve:v26];

    v28 = [*(v3 + 85) layer];
    [v28 setCornerRadius:*&kActiveLayout_0_5];

    v29 = [*(v3 + 85) layer];
    [v29 setMasksToBounds:1];

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

- (void)didLongPress:(id)a3
{
  v4 = [(REUpNextBaseCell *)self delegate];
  [v4 cellDidLongPress:self];
}

- (void)setHighlightBehavior:(unint64_t)a3
{
  if (self->_behavior == a3)
  {
    return;
  }

  v12 = v7;
  v13 = v3;
  self->_behavior = a3;
  if (!a3)
  {
    v10 = 0.0;
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v10 = -1.0;
LABEL_6:
    v11 = [(UIView *)self->_overlayView layer:v8];
    [v11 setZPosition:v10];
  }

  [(REUpNextBaseCell *)self _updateColorOverlay];
}

- (void)setHighlightInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_overlayInsets.top), vceqq_f64(v4, *&self->_overlayInsets.bottom)))) & 1) == 0)
  {
    self->_overlayInsets = a3;
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

- (void)setContentBrightness:(double)a3 animated:(BOOL)a4
{
  contentBrightness = self->_contentBrightness;
  v6 = a3;
  if (vabds_f32(contentBrightness, v6) >= 0.00000011921)
  {
    v7 = a4;
    v9 = [MEMORY[0x277D75348] colorWithWhite:a3 alpha:1.0];
    v10 = [v9 CGColor];

    v11 = [MEMORY[0x277D75348] colorWithWhite:self->_contentBrightness alpha:1.0];
    v12 = [v11 CGColor];

    if (v7)
    {
      v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"contentsMultiplyColor"];
      [v13 setToValue:v10];
      [v13 setFromValue:v12];
      [v13 setDuration:0.5];
      v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
      [v13 setTimingFunction:v14];

      [v13 setFillMode:*MEMORY[0x277CDA228]];
      [(CALayer *)self->_imageLayer addAnimation:v13 forKey:@"brightnessBoost"];
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CALayer *)self->_imageLayer setContentsMultiplyColor:v10];
    [MEMORY[0x277CD9FF0] commit];
    self->_contentBrightness = a3;
  }
}

- (void)setContentImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_contentImage != v7)
  {
    v10 = v7;
    if (!self->_overrideContentImage)
    {
      if (v4)
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

    objc_storeStrong(&self->_contentImage, a3);
    v7 = v10;
  }
}

- (void)setOverrideContentImage:(id)a3
{
  v5 = a3;
  if (self->_overrideContentImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_overrideContentImage, a3);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    imageLayer = self->_imageLayer;
    v7 = v8;
    [(CALayer *)imageLayer setContents:[(UIImage *)v8 CGImage]];
    [MEMORY[0x277CD9FF0] commit];
    v5 = v8;
  }
}

- (void)configureWithContent:(id)a3
{
  objc_storeStrong(&self->_content, a3);
  v5 = a3;
  v6 = [v5 tintColor];

  [(REUpNextBaseCell *)self setTintColor:v6];
}

- (void)setForegroundTextColorToColor:(id)a3 shouldOverrideContentHeaderColor:(BOOL)a4
{
  v6 = [a3 copy];
  defaultTextColor = self->_defaultTextColor;
  self->_defaultTextColor = v6;

  self->_shouldOverrideContentHeaderColor = a4;

  [(REUpNextBaseCell *)self defaultTextColorDidChange];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = REUpNextBaseCell;
  [(REUpNextBaseCell *)&v7 applyLayoutAttributes:v4];
  -[REUpNextBaseCell setHidden:](self, "setHidden:", [v4 isHidden]);
  v5 = [MEMORY[0x277D75D18] _isInAnimationBlock];
  if ((v5 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
  }

  self->_darkeningAmount = 0.0;
  [(REUpNextBaseCell *)self _updateColorOverlay];
  if (!self->_overrideContentImage)
  {
    imageLayer = self->_imageLayer;
    [v4 unitFrameOnScreen];
    [(CALayer *)imageLayer setContentsRect:?];
  }

  [(UIImageView *)self->_shadowView setAlpha:1.0];
  if ((v5 & 1) == 0)
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