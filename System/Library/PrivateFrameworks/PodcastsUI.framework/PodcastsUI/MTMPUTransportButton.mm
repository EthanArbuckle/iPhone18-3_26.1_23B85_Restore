@interface MTMPUTransportButton
+ (id)defaultDisabledColor;
+ (id)skipIntervalImageForInterval:(double)a3 baseImage:(id)a4 font:(id)a5 scale:(double)a6;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isEnabled;
- (BOOL)shouldTrack;
- (MTMPUTransportButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)transportButtonImageViewContentMode;
- (void)_updateDisabledTransportButtonImage;
- (void)_updateHighlightedTransportButtonImage;
- (void)_updateRegularTransportButtonImage;
- (void)_updateSelectedTransportButtonImage;
- (void)applyTransportButtonLayoutAttributes:(id *)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setDisabledColor:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlightedColor:(id)a3;
- (void)setRegularColor:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedColor:(id)a3;
- (void)setShouldInferColorsFromTintColor:(BOOL)a3;
- (void)setTransportButtonImage:(id)a3;
- (void)setTransportButtonImageViewContentMode:(int64_t)a3;
@end

@implementation MTMPUTransportButton

+ (id)defaultDisabledColor
{
  v2 = [a1 defaultRegularColor];
  v3 = [v2 colorWithAlphaComponent:0.4];

  return v3;
}

- (MTMPUTransportButton)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = MTMPUTransportButton;
  v3 = [(MTMPUTransportButton *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MTMPUTransportButtonEventHandler);
    transportButtonEventHandler = v3->_transportButtonEventHandler;
    v3->_transportButtonEventHandler = v4;

    [(MTMPUTransportButtonEventHandler *)v3->_transportButtonEventHandler setButton:v3];
    v6 = [objc_opt_class() defaultHighlightedColor];
    highlightedColor = v3->_highlightedColor;
    v3->_highlightedColor = v6;

    v8 = [objc_opt_class() defaultDisabledColor];
    disabledColor = v3->_disabledColor;
    v3->_disabledColor = v8;

    v10 = [objc_opt_class() defaultRegularColor];
    regularColor = v3->_regularColor;
    v3->_regularColor = v10;

    v12 = [objc_opt_class() defaultSelectedColor];
    selectedColor = v3->_selectedColor;
    v3->_selectedColor = v12;
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__MTMPUTransportButton_hitTest_withEvent___block_invoke;
  v12[3] = &unk_2782BEAD8;
  v15 = x;
  v16 = y;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler performHitTestingBlock:v12];

  return v10;
}

id __42__MTMPUTransportButton_hitTest_withEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = MTMPUTransportButton;
  v2 = objc_msgSendSuper2(&v4, sel_hitTest_withEvent_, v1, *(a1 + 48), *(a1 + 56));

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTMPUTransportButton;
  [(MTMPUTransportButton *)&v3 layoutSubviews];
  if (self->_selectionIndicatorLayer)
  {
    [(MTMPUTransportButton *)self bounds];
    [(MTMPUTransportButton *)self imageRectForContentRect:?];
    v5 = CGRectInset(v4, -4.0, -4.0);
    [(CALayer *)self->_selectionIndicatorLayer setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  }
}

- (BOOL)isEnabled
{
  v4.receiver = self;
  v4.super_class = MTMPUTransportButton;
  return [(MTMPUTransportButton *)&v4 isEnabled]|| [(MTMPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldFakeEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MTMPUTransportButton;
  [(MTMPUTransportButton *)&v6 setEnabled:?];
  if ([(MTMPUTransportButton *)self isSelected]&& [(MTMPUTransportButton *)self shouldShowBackgroundForSelectedState])
  {
    LODWORD(v5) = 1053609165;
    if (v3)
    {
      *&v5 = 1.0;
    }

    [(CALayer *)self->_selectionIndicatorLayer setOpacity:v5];
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = self;
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v7 = a4;
  v8 = a3;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler beginTrackingWithTouch:v8 withEvent:v7];
  v10.receiver = v5;
  v10.super_class = MTMPUTransportButton;
  LOBYTE(v5) = [(MTMPUTransportButton *)&v10 beginTrackingWithTouch:v8 withEvent:v7];

  return v5;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v5 = a3;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler cancelTrackingWithEvent:v5];
  v6.receiver = self;
  v6.super_class = MTMPUTransportButton;
  [(MTMPUTransportButton *)&v6 cancelTrackingWithEvent:v5];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  transportButtonEventHandler = self->_transportButtonEventHandler;
  v7 = a4;
  v8 = a3;
  [(MTMPUTransportButtonEventHandler *)transportButtonEventHandler endTrackingWithTouch:v8 withEvent:v7];
  v9.receiver = self;
  v9.super_class = MTMPUTransportButton;
  [(MTMPUTransportButton *)&v9 endTrackingWithTouch:v8 withEvent:v7];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = MTMPUTransportButton;
  [(MTMPUTransportButton *)&v12 setSelected:?];
  if ([(MTMPUTransportButton *)self shouldShowBackgroundForSelectedState])
  {
    selectionIndicatorLayer = self->_selectionIndicatorLayer;
    if (v3)
    {
      if (!selectionIndicatorLayer)
      {
        v6 = [MEMORY[0x277CD9ED0] layer];
        v7 = self->_selectionIndicatorLayer;
        self->_selectionIndicatorLayer = v6;

        v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.12];
        -[CALayer setBackgroundColor:](self->_selectionIndicatorLayer, "setBackgroundColor:", [v8 CGColor]);

        [(CALayer *)self->_selectionIndicatorLayer setCornerRadius:3.0];
        [(CALayer *)self->_selectionIndicatorLayer setOpacity:0.0];
        v9 = [(MTMPUTransportButton *)self layer];
        [v9 insertSublayer:self->_selectionIndicatorLayer atIndex:0];
      }

      [(MTMPUTransportButton *)self setNeedsLayout];
      v10 = [(MTMPUTransportButton *)self isEnabled];
      selectionIndicatorLayer = self->_selectionIndicatorLayer;
      if (v10)
      {
        LODWORD(v11) = 1.0;
      }

      else
      {
        LODWORD(v11) = 1053609165;
      }
    }

    else
    {
      v11 = 0.0;
    }

    [(CALayer *)selectionIndicatorLayer setOpacity:v11];
  }
}

- (BOOL)shouldTrack
{
  v4.receiver = self;
  v4.super_class = MTMPUTransportButton;
  return [(MTMPUTransportButton *)&v4 shouldTrack]|| [(MTMPUTransportButtonEventHandler *)self->_transportButtonEventHandler shouldForceTrackingEnabled];
}

- (void)applyTransportButtonLayoutAttributes:(id *)a3
{
  x = a3->var1.origin.x;
  y = a3->var1.origin.y;
  width = a3->var1.size.width;
  height = a3->var1.size.height;
  [(MTMPUTransportButton *)self setImageEdgeInsets:MTMPUEdgeInsetsRectInsets(x, y, width, height, a3->var0.origin.x, a3->var0.origin.y, a3->var0.size.width, a3->var0.size.height)];

  [(MTMPUTransportButton *)self setFrame:x, y, width, height];
}

- (int64_t)transportButtonImageViewContentMode
{
  v2 = [(MTMPUTransportButton *)self imageView];
  v3 = [v2 contentMode];

  return v3;
}

- (void)setTransportButtonImageViewContentMode:(int64_t)a3
{
  v4 = [(MTMPUTransportButton *)self imageView];
  [v4 setContentMode:a3];
}

- (void)setDisabledColor:(id)a3
{
  v5 = a3;
  if (self->_disabledColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_disabledColor, a3);
    v5 = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MTMPUTransportButton *)self _updateDisabledTransportButtonImage];
      v5 = v6;
    }
  }
}

- (void)setHighlightedColor:(id)a3
{
  v5 = a3;
  if (self->_highlightedColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightedColor, a3);
    v5 = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MTMPUTransportButton *)self _updateHighlightedTransportButtonImage];
      v5 = v6;
    }
  }
}

- (void)setRegularColor:(id)a3
{
  v5 = a3;
  if (self->_regularColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_regularColor, a3);
    v5 = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MTMPUTransportButton *)self _updateRegularTransportButtonImage];
      v5 = v6;
    }
  }
}

- (void)setSelectedColor:(id)a3
{
  v5 = a3;
  if (self->_selectedColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedColor, a3);
    v5 = v6;
    if (!self->_shouldInferColorsFromTintColor)
    {
      [(MTMPUTransportButton *)self _updateSelectedTransportButtonImage];
      v5 = v6;
    }
  }
}

- (void)setShouldInferColorsFromTintColor:(BOOL)a3
{
  if (self->_shouldInferColorsFromTintColor != a3)
  {
    self->_shouldInferColorsFromTintColor = a3;
    if (a3)
    {
      [(MTMPUTransportButton *)self setImage:0 forState:1];
      [(MTMPUTransportButton *)self setImage:0 forState:4];
      v4 = [(UIImage *)self->_transportButtonImage imageWithRenderingMode:2];
      [(MTMPUTransportButton *)self setImage:v4 forState:0];
    }

    else
    {
      [(MTMPUTransportButton *)self _updateRegularTransportButtonImage];
      [(MTMPUTransportButton *)self _updateDisabledTransportButtonImage];
      [(MTMPUTransportButton *)self _updateHighlightedTransportButtonImage];

      [(MTMPUTransportButton *)self _updateSelectedTransportButtonImage];
    }
  }
}

- (void)setTransportButtonImage:(id)a3
{
  v5 = a3;
  transportButtonImage = self->_transportButtonImage;
  if (transportButtonImage != v5)
  {
    v8 = v5;
    transportButtonImage = [transportButtonImage isEqual:v5];
    v5 = v8;
    if ((transportButtonImage & 1) == 0)
    {
      objc_storeStrong(&self->_transportButtonImage, a3);
      if (self->_shouldInferColorsFromTintColor)
      {
        v7 = [(UIImage *)self->_transportButtonImage imageWithRenderingMode:2];
        [(MTMPUTransportButton *)self setImage:v7 forState:0];
      }

      else
      {
        [(MTMPUTransportButton *)self _updateHighlightedTransportButtonImage];
        [(MTMPUTransportButton *)self _updateRegularTransportButtonImage];
        [(MTMPUTransportButton *)self _updateSelectedTransportButtonImage];
        transportButtonImage = [(MTMPUTransportButton *)self _updateDisabledTransportButtonImage];
      }

      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](transportButtonImage, v5);
}

- (void)_updateDisabledTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_disabledColor];
  [(MTMPUTransportButton *)self setImage:v3 forState:2];
}

- (void)_updateHighlightedTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_highlightedColor];
  [(MTMPUTransportButton *)self setImage:v3 forState:1];
}

- (void)_updateRegularTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_regularColor];
  [(MTMPUTransportButton *)self setImage:v3 forState:0];
}

- (void)_updateSelectedTransportButtonImage
{
  v3 = [(UIImage *)self->_transportButtonImage _flatImageWithColor:self->_selectedColor];
  [(MTMPUTransportButton *)self setImage:v3 forState:4];
}

+ (id)skipIntervalImageForInterval:(double)a3 baseImage:(id)a4 font:(id)a5 scale:(double)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  [v11 size];
  UIGraphicsBeginImageContextWithOptions(v30, 0, a6);
  [v11 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

  v12 = [a1 _stringForDisplayedSkipInterval:fabs(a3)];
  v13 = *MEMORY[0x277D740C0];
  v27[0] = *MEMORY[0x277D740A8];
  v27[1] = v13;
  v28[0] = v10;
  v14 = [MEMORY[0x277D75348] blackColor];
  v28[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  [v12 sizeWithAttributes:v15];
  v17 = v16;
  v19 = v18;
  UIRectGetCenter();
  v21 = v20;
  v23 = MTMPUFloatRoundForScale(v22 - v17 * 0.5, a6);
  [v12 drawAtPoint:v15 withAttributes:{v23, MTMPUFloatRoundForScale(v21 - v19 * 0.5, a6)}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v25 = [v24 _imageThatSuppressesAccessibilityHairlineThickening];

  return v25;
}

@end