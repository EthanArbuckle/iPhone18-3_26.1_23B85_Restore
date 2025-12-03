@interface TLKButton
+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)statistics withSize:(CGImage *)size;
+ (id)blurColorForColor:(id)color;
+ (id)blurColorForImage:(id)image forButtonSize:(CGSize)size withOffsetRight:(float)right withOffsetBottom:(float)bottom;
- (CGSize)fixedSize;
- (CGSize)intrinsicContentSize;
- (TLKButton)init;
- (UIImage)imageOnImageView;
- (UIView)containerView;
- (id)_innerProgressLayer;
- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width;
- (id)_outerProgressLayer;
- (id)iconColor;
- (void)_beginIndeterminateAnimation;
- (void)_updateInnerProgressLayerStroke;
- (void)addTarget:(id)target forAction:(SEL)action;
- (void)beginIndeterminateAnimation;
- (void)didMoveToWindow;
- (void)endIndeterminateAnimation;
- (void)hideProgressAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setButtonSelectionState:(BOOL)state;
- (void)setContainerView:(id)view;
- (void)setOverlayImage:(id)image;
- (void)setProgress:(float)progress animated:(BOOL)animated;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOuterProgressLayerStroke;
@end

@implementation TLKButton

- (TLKButton)init
{
  v10.receiver = self;
  v10.super_class = TLKButton;
  v2 = [(TLKButton *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKButton *)v2 setBackgroundView:v3];

    backgroundView = [(TLKButton *)v2 backgroundView];
    [(TLKButton *)v2 addSubview:backgroundView];

    v5 = objc_opt_new();
    [(TLKButton *)v2 setImageView:v5];

    imageView = [(TLKButton *)v2 imageView];
    [(TLKButton *)v2 addSubview:imageView];

    v7 = [TLKTapContainerButton buttonWithType:0];
    [(TLKButton *)v2 setButton:v7];

    button = [(TLKButton *)v2 button];
    [(TLKButton *)v2 addSubview:button];

    [(TLKButton *)v2 setToggled:0];
  }

  return v2;
}

- (UIImage)imageOnImageView
{
  imageView = [(TLKButton *)self imageView];
  v2ImageView = [imageView imageView];
  image = [v2ImageView image];

  return image;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKButton;
  [(TLKButton *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKButton *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKButton *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKButton;
  [(TLKButton *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v35.receiver = self;
  v35.super_class = TLKButton;
  appearanceCopy = appearance;
  [(UIView *)&v35 tlk_updateForAppearance:appearanceCopy];
  [(TLKButton *)self setButtonSelectionState:[(TLKButton *)self isToggled]];
  if (self->_overlayImage)
  {
    backgroundView = [(TLKButton *)self backgroundView];
    [appearanceCopy disableAppearanceForView:backgroundView];

    [(TLKButton *)self intrinsicContentSize];
    v7 = v6;
    v9 = v8;
    [(UIImage *)self->_overlayImage size];
    v11 = v10;
    v13 = v12;
    v14 = self->_overlayImage;
    imageView = [(TLKButton *)self imageView];
    [imageView setProminence:1];

    v16 = [TLKAppearance appearanceWithStyle:2];
    imageView2 = [(TLKButton *)self imageView];
    [v16 overrideAppearanceForView:imageView2];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __37__TLKButton_tlk_updateForAppearance___block_invoke;
    v29[3] = &unk_1E7FD8E70;
    v31 = v7;
    v32 = v9;
    v33 = v11;
    v34 = v13;
    v29[4] = self;
    v30 = v14;
    button = v14;
    [TLKUtilities dispatchAsyncIfNecessary:v29];
  }

  else
  {
    imageView3 = [(TLKButton *)self imageView];
    [TLKAppearance disableAppearanceOverrideForView:imageView3];

    quaternaryColor = [appearanceCopy quaternaryColor];
    backgroundView2 = [(TLKButton *)self backgroundView];
    [backgroundView2 setBackgroundColor:quaternaryColor];

    backgroundView3 = [(TLKButton *)self backgroundView];
    [appearanceCopy enableAppearanceForView:backgroundView3];

    v23 = [appearanceCopy isDark] ^ 1;
    imageView4 = [(TLKButton *)self imageView];
    [imageView4 setProminence:v23];

    [(TLKButton *)self _updateInnerProgressLayerStroke];
    [(TLKButton *)self updateOuterProgressLayerStroke];
    button = [(TLKButton *)self button];
    [appearanceCopy enableAppearanceForContainer:button];
  }

  [(TLKButton *)self intrinsicContentSize];
  v26 = v25 * 0.5;
  backgroundView4 = [(TLKButton *)self backgroundView];
  layer = [backgroundView4 layer];
  [layer setCornerRadius:v26];
}

void __37__TLKButton_tlk_updateForAppearance___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) overlayImage];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = (*(a1 + 64) - v4) * 0.5;
  *&v6 = v6;
  v7 = (*(a1 + 72) - v5) * 0.5;
  *&v7 = v7;
  v8 = [v2 blurColorForImage:v3 forButtonSize:v4 withOffsetRight:v5 withOffsetBottom:{v6, v7}];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__TLKButton_tlk_updateForAppearance___block_invoke_2;
  v12[3] = &unk_1E7FD8E48;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v15 = v8;
  v11 = v8;
  [TLKUtilities dispatchMainIfNecessary:v12];
}

void __37__TLKButton_tlk_updateForAppearance___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) overlayImage];

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) backgroundView];
    [v5 setBackgroundColor:v4];
  }
}

- (void)setOverlayImage:(id)image
{
  imageCopy = image;
  if (imageCopy && self->_overlayImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_overlayImage, image);
    [(UIView *)self tlk_updateWithCurrentAppearance];
    [(TLKButton *)self setButtonSelectionState:[(TLKButton *)self isToggled]];
    imageCopy = v6;
  }
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  button = [(TLKButton *)self button];
  [button setContainerView:viewCopy];
}

- (UIView)containerView
{
  button = [(TLKButton *)self button];
  containerView = [button containerView];

  return containerView;
}

- (CGSize)intrinsicContentSize
{
  [(TLKButton *)self fixedSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    toggledImage = [(TLKButton *)self toggledImage];
    [toggledImage size];
    v10 = v9;
    v12 = v11;

    untoggledImage = [(TLKButton *)self untoggledImage];
    [untoggledImage size];
    v15 = v14;
    v17 = v16;

    if (v10 >= v12)
    {
      v18 = v10;
    }

    else
    {
      v18 = v12;
    }

    if (v15 >= v17)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    if (v18 < v19)
    {
      v18 = v19;
    }

    v20 = ceil(v18);
    v7 = v20 + v20;
    v6 = v20 + v20;
  }

  else
  {
    [(TLKButton *)self fixedSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TLKButton;
  [(TLKButton *)&v21 layoutSubviews];
  [(TLKButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundView = [(TLKButton *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

  button = [(TLKButton *)self button];
  [button setFrame:{v4, v6, v8, v10}];

  imageView = [(TLKButton *)self imageView];
  [imageView intrinsicContentSize];
  v15 = v14;
  v17 = v16;

  [(TLKButton *)self bounds];
  v18 = CGRectGetMidX(v22) - v15 * 0.5;
  [(TLKButton *)self bounds];
  v19 = CGRectGetMidY(v23) - v17 * 0.5;
  imageView2 = [(TLKButton *)self imageView];
  [imageView2 setFrame:{v18, v19, v15, v17}];
}

- (void)hideProgressAnimated:(BOOL)animated
{
  _outerProgressLayer = [(TLKButton *)self _outerProgressLayer];
  [_outerProgressLayer setHidden:1];

  _innerProgressLayer = [(TLKButton *)self _innerProgressLayer];
  [_innerProgressLayer setHidden:1];

  if (self->_indeterminate)
  {
    [(TLKButton *)self endIndeterminateAnimation];

    [(TLKButton *)self setButtonSelectionState:0];
  }
}

- (void)setButtonSelectionState:(BOOL)state
{
  stateCopy = state;
  v5 = [TLKImage alloc];
  v6 = &OBJC_IVAR___TLKButton__untoggledImage;
  if (stateCopy)
  {
    v6 = &OBJC_IVAR___TLKButton__toggledImage;
  }

  v8 = [(TLKImage *)v5 initWithImage:*(&self->super.super.super.isa + *v6)];
  self->_toggled = stateCopy;
  imageView = [(TLKButton *)self imageView];
  [imageView setTlkImage:v8];

  [(TLKButton *)self invalidateIntrinsicContentSize];
  [(TLKButton *)self setNeedsLayout];
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
  [(TLKButton *)self showPlayIndicator:0];
  _outerProgressLayer = [(TLKButton *)self _outerProgressLayer];
  [_outerProgressLayer setHidden:1];

  _innerProgressLayer = [(TLKButton *)self _innerProgressLayer];
  [_innerProgressLayer setHidden:0];

  if (self->_progress != progress)
  {
    if (progress > 0.00000011921 && self->_indeterminate)
    {
      [(TLKButton *)self endIndeterminateAnimation];
    }

    self->_progress = fmax(fmin(progress, 1.0), 0.0);
    _innerProgressLayer2 = [(TLKButton *)self _innerProgressLayer];
    outerProgressLayer = [(TLKButton *)self outerProgressLayer];
    [outerProgressLayer removeAllAnimations];

    if (animated)
    {
      v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      [v10 setDuration:0.2];
      [v10 setFillMode:*MEMORY[0x1E69797E8]];
      [v10 setRemovedOnCompletion:0];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_progress];
      [v10 setToValue:v11];

      [_innerProgressLayer2 addAnimation:v10 forKey:0];
    }

    else
    {
      [_innerProgressLayer2 removeAllAnimations];
      [_innerProgressLayer2 setStrokeEnd:self->_progress];
    }
  }
}

- (void)beginIndeterminateAnimation
{
  [(TLKButton *)self setProgress:0 animated:0.0];
  outerProgressLayer = self->_outerProgressLayer;
  if (self->_indeterminate)
  {
    animationKeys = [(CAShapeLayer *)outerProgressLayer animationKeys];
    v5 = [animationKeys count];

    if (v5)
    {
      return;
    }
  }

  else
  {
    [(CAShapeLayer *)outerProgressLayer setStrokeStart:0.119999997];
    self->_indeterminate = 1;
  }

  window = [(TLKButton *)self window];

  if (window)
  {

    [(TLKButton *)self _beginIndeterminateAnimation];
  }
}

- (void)endIndeterminateAnimation
{
  if (self->_indeterminate)
  {
    _outerProgressLayer = [(TLKButton *)self _outerProgressLayer];
    [_outerProgressLayer setStrokeStart:0.0];
    [_outerProgressLayer removeAllAnimations];
    _outerProgressLayer2 = [(TLKButton *)self _outerProgressLayer];
    CGAffineTransformMakeRotation(&v7, -1.57079633);
    [_outerProgressLayer2 setAffineTransform:&v7];

    self->_indeterminate = 0;
    [(TLKButton *)self updateOuterProgressLayerStroke];
    _outerProgressLayer3 = [(TLKButton *)self _outerProgressLayer];
    [_outerProgressLayer3 setHidden:1];

    _innerProgressLayer = [(TLKButton *)self _innerProgressLayer];
    [_innerProgressLayer setHidden:1];
  }
}

- (void)_beginIndeterminateAnimation
{
  _outerProgressLayer = [(TLKButton *)self _outerProgressLayer];
  [_outerProgressLayer setHidden:0];

  _innerProgressLayer = [(TLKButton *)self _innerProgressLayer];
  [_innerProgressLayer setHidden:1];

  [(TLKButton *)self updateOuterProgressLayerStroke];
  _outerProgressLayer2 = [(TLKButton *)self _outerProgressLayer];
  [_outerProgressLayer2 removeAllAnimations];

  _outerProgressLayer3 = [(TLKButton *)self _outerProgressLayer];
  CGAffineTransformMakeRotation(&v24, -1.57079633);
  [_outerProgressLayer3 setAffineTransform:&v24];

  v7 = objc_opt_new();
  v8 = 0.0;
  for (i = -1; i != 3; ++i)
  {
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeRotation(&m, v8 * 3.14159265 * 0.5);
    CATransform3DMakeAffineTransform(&v24, &m);
    memset(&m, 0, sizeof(m));
    CGAffineTransformMakeRotation(&v17, i * 3.14159265 * 0.5);
    CATransform3DMakeAffineTransform(&m, &v17);
    v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v19 = *&m.m31;
    v20 = *&m.m33;
    v21 = *&m.m41;
    v22 = *&m.m43;
    *&v17.a = *&m.m11;
    *&v17.c = *&m.m13;
    *&v17.tx = *&m.m21;
    v18 = *&m.m23;
    v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v17];
    [v10 setFromValue:v11];

    v19 = *&v24.m31;
    v20 = *&v24.m33;
    v21 = *&v24.m41;
    v22 = *&v24.m43;
    *&v17.a = *&v24.m11;
    *&v17.c = *&v24.m13;
    *&v17.tx = *&v24.m21;
    v18 = *&v24.m23;
    v12 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v17];
    [v10 setToValue:v12];

    [v10 setDuration:0.25];
    [v10 setBeginTime:v8 * 0.25];
    [v7 addObject:v10];

    v8 = v8 + 1.0;
  }

  animation = [MEMORY[0x1E6979308] animation];
  [animation setDuration:1.0];
  LODWORD(v14) = 2139095039;
  [animation setRepeatCount:v14];
  v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [animation setTimingFunction:v15];

  [animation setAnimations:v7];
  outerProgressLayer = [(TLKButton *)self outerProgressLayer];
  [outerProgressLayer addAnimation:animation forKey:0];
}

- (id)_outerProgressLayer
{
  outerProgressLayer = self->_outerProgressLayer;
  if (!outerProgressLayer)
  {
    [(TLKButton *)self intrinsicContentSize];
    v6 = [(TLKButton *)self _newShapeViewWithBounds:0.0 lineWidth:0.0, v4, v5, 1.5];
    v7 = self->_outerProgressLayer;
    self->_outerProgressLayer = v6;

    v8 = self->_outerProgressLayer;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setBackgroundColor:](v8, "setBackgroundColor:", [clearColor CGColor]);

    v10 = self->_outerProgressLayer;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10, "setFillColor:", [clearColor2 CGColor]);

    innerProgressLayer = self->_innerProgressLayer;
    button = [(TLKButton *)self button];
    layer = [button layer];
    v15 = layer;
    v16 = self->_outerProgressLayer;
    if (innerProgressLayer)
    {
      [layer insertSublayer:v16 below:self->_innerProgressLayer];
    }

    else
    {
      [layer addSublayer:v16];
    }

    [(TLKButton *)self updateOuterProgressLayerStroke];
    outerProgressLayer = self->_outerProgressLayer;
  }

  return outerProgressLayer;
}

- (id)_innerProgressLayer
{
  innerProgressLayer = self->_innerProgressLayer;
  if (!innerProgressLayer)
  {
    [(TLKButton *)self intrinsicContentSize];
    v6 = [(TLKButton *)self _newShapeViewWithBounds:0.0 lineWidth:0.0, v4, v5, 2.0];
    v7 = self->_innerProgressLayer;
    self->_innerProgressLayer = v6;

    v8 = self->_innerProgressLayer;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setBackgroundColor:](v8, "setBackgroundColor:", [clearColor CGColor]);

    v10 = MEMORY[0x1E69DC888];
    v11 = self->_innerProgressLayer;
    clearColor2 = [v10 clearColor];
    -[CAShapeLayer setFillColor:](v11, "setFillColor:", [clearColor2 CGColor]);

    [(CAShapeLayer *)v11 setStrokeEnd:0.0];
    button = [(TLKButton *)self button];
    layer = [button layer];
    [layer addSublayer:self->_innerProgressLayer];

    [(TLKButton *)self _updateInnerProgressLayerStroke];
    innerProgressLayer = self->_innerProgressLayer;
  }

  return innerProgressLayer;
}

- (void)updateOuterProgressLayerStroke
{
  iconColor = [(TLKButton *)self iconColor];
  outerProgressLayer = self->_outerProgressLayer;
  v4 = iconColor;
  -[CAShapeLayer setStrokeColor:](outerProgressLayer, "setStrokeColor:", [iconColor CGColor]);
  v5 = self->_outerProgressLayer;
  backgroundView = [(TLKButton *)self backgroundView];
  layer = [backgroundView layer];
  compositingFilter = [layer compositingFilter];
  [(CAShapeLayer *)v5 setCompositingFilter:compositingFilter];
}

- (void)_updateInnerProgressLayerStroke
{
  iconColor = [(TLKButton *)self iconColor];
  innerProgressLayer = self->_innerProgressLayer;
  v4 = iconColor;
  -[CAShapeLayer setStrokeColor:](innerProgressLayer, "setStrokeColor:", [iconColor CGColor]);
  v5 = self->_innerProgressLayer;
  backgroundView = [(TLKButton *)self backgroundView];
  layer = [backgroundView layer];
  compositingFilter = [layer compositingFilter];
  [(CAShapeLayer *)v5 setCompositingFilter:compositingFilter];
}

- (id)iconColor
{
  v2 = [TLKAppearance bestAppearanceForView:self];
  v3 = [v2 colorForProminence:1];

  return v3;
}

- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width
{
  v14 = CGRectInset(bounds, width * 0.5, width * 0.5);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  layer = [MEMORY[0x1E69794A0] layer];
  [layer setFrame:{x, y, width, height}];
  CGAffineTransformMakeRotation(&v13, -1.57079633);
  [layer setAffineTransform:&v13];
  v10 = layer;
  [v10 setLineWidth:width];
  [v10 bounds];
  v11 = CGPathCreateWithEllipseInRect(v15, 0);
  [v10 setPath:v11];
  [v10 setLineCap:@"round"];
  CGPathRelease(v11);

  return v10;
}

- (void)addTarget:(id)target forAction:(SEL)action
{
  targetCopy = target;
  button = [(TLKButton *)self button];
  [button addTarget:targetCopy action:action forControlEvents:64];
}

+ (id)blurColorForImage:(id)image forButtonSize:(CGSize)size withOffsetRight:(float)right withOffsetBottom:(float)bottom
{
  width = size.width;
  imageCopy = image;
  imageCopy2 = image;
  cGImage = [imageCopy2 CGImage];
  [imageCopy2 scale];
  v15 = v14;
  [imageCopy2 size];
  v17 = v15 * v16;
  [imageCopy2 size];
  v19 = v18;

  v20 = width * v15;
  v28.origin.x = v17 - right * v15 - v20;
  v28.origin.y = v15 * v19 - bottom * v15 - v20;
  v28.size.width = v20;
  v28.size.height = v20;
  v29 = CGRectIntegral(v28);
  v21 = CGImageCreateWithImageInRect(cGImage, v29);
  v26 = 0u;
  v22 = objc_opt_class();
  if (v22)
  {
    [v22 _calculateStatistics:v21 withSize:{v20, v20}];
  }

  else
  {
    v26 = 0u;
  }

  CGImageRelease(v21);
  v23 = [MEMORY[0x1E69DC888] colorWithRed:v26 green:0.0 blue:0.0 alpha:?];
  v24 = [self blurColorForColor:v23];

  return v24;
}

+ (id)blurColorForColor:(id)color
{
  colorCopy = color;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0;
  v4 = colorCopy;
  if ([colorCopy getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8])
  {
    v10 = v10 * 1.8;
    v5 = [MEMORY[0x1E69DC888] colorWithHue:v11 saturation:? brightness:? alpha:?];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.980392157 alpha:0.78];
    v4 = [v5 _colorBlendedWithColor:v6 compositingFilter:*MEMORY[0x1E6979D40]];
  }

  return v4;
}

+ ($8452678F12DBC466148836A9D382CAFC)_calculateStatistics:(SEL)statistics withSize:(CGImage *)size
{
  height = a5.height;
  width = a5.width;
  v9 = a5.width;
  v10 = a5.height;
  v11 = 4 * a5.width;
  *&retstr->var3 = 0u;
  p_var3 = &retstr->var3;
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  v13 = malloc_type_malloc(v11 * a5.height, 0x28A5659FuLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v15 = CGBitmapContextCreate(v13, v9, v10, 8uLL, v11, DeviceRGB, 0x4001u);
  v57.size.width = width;
  v57.size.height = height;
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  CGContextDrawImage(v15, v57, size);
  CGContextRelease(v15);
  CGColorSpaceRelease(DeviceRGB);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    v26 = v25;
    v27 = qword_1BBA67F80[v24];
    if (v27 < v10)
    {
      v28 = v13 + (v11 + 4) * v27 + 1;
      v29 = v27;
      do
      {
        v30 = v28;
        for (i = v27; i < v9; v30 += 4 * v27)
        {
          v32 = *(v30 - 1);
          v16 += v32;
          v33 = *v30;
          v17 += v33;
          v34 = v30[1];
          v18 += v34;
          v19 += v30[2];
          v20 += (v32 * v32);
          v21 += (v33 * v33);
          v22 += (v34 * v34);
          ++v23;
          i += v27;
        }

        v29 += v27;
        v28 += v11 * v27;
      }

      while (v29 < v10);
    }

    v25 = 0;
    v24 = 1;
  }

  while ((v26 & 1) != 0);
  if (v23 <= 1)
  {
    v23 = 1;
  }

  v35 = 1.0 / v23;
  v36 = (v35 * v16);
  v37 = (v35 * v17);
  v38 = (v35 * v18);
  v39 = fmax(-((v36 * v36) - v20 * v35), 0.0);
  v40 = sqrtf(v39);
  v41 = fmax(-((v37 * v37) - v21 * v35), 0.0);
  v42 = sqrtf(v41);
  v43 = fmax(-((v38 * v38) - v22 * v35), 0.0);
  v44 = sqrtf(v43);
  v55 = 0.0;
  v56 = 0;
  v54 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  v45 = v36 * 0.00392156863;
  v46 = v37 * 0.00392156863;
  v47 = v38 * 0.00392156863;
  __SK_RGBtoHSV(&v56, &v55, &v54, v45, v46, v47);
  __SK_RGBtoHSV(&v53, &v52, &v51, v40 * 0.00392156863, v42 * 0.00392156863, v44 * 0.00392156863);
  free(v13);
  retstr->var0 = v45;
  retstr->var1 = v46;
  retstr->var2 = v47;
  *p_var3 = v56;
  v49 = v54;
  retstr->var4 = v55;
  retstr->var5 = v49;
  v50 = v52;
  retstr->var7 = v51;
  retstr->var8 = v50;
  retstr->var6 = (v35 * v19) * 0.00392156863;
  return result;
}

- (CGSize)fixedSize
{
  width = self->_fixedSize.width;
  height = self->_fixedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end