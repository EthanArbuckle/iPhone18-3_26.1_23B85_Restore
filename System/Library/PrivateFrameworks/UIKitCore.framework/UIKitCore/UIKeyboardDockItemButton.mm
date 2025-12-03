@interface UIKeyboardDockItemButton
- (BOOL)pointInsideTapActionRegion:(CGPoint)region;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)rectWithSize:(CGSize)size forContentRect:(CGRect)rect withAlignmentRectInsets:(UIEdgeInsets)insets;
- (CGRect)tapActionRegion;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (void)addAnimatitionIfNeeded;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
- (void)setupDictationAnimationButtonIfNeeded;
- (void)updateFillColor;
@end

@implementation UIKeyboardDockItemButton

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = UIKeyboardDockItemButton;
  [(UIButton *)&v28 layoutSubviews];
  identifier = [(UIKeyboardDockItemButton *)self identifier];
  v4 = [identifier isEqualToString:@"dictationRunning"];

  if (v4)
  {
    imageView = [(UIButton *)self imageView];
    layer = [imageView layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979D98]];
  }

  debugHitLayer = [(UIKeyboardDockItemButton *)self debugHitLayer];

  if (debugHitLayer)
  {
    debugHitLayer2 = [(UIKeyboardDockItemButton *)self debugHitLayer];
    [debugHitLayer2 removeFromSuperlayer];

    [(UIKeyboardDockItemButton *)self setDebugHitLayer:0];
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_1ED499F00 != -1)
    {
      dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
    }

    if (_MergedGlobals_17_3 == 1)
    {
      layer2 = [MEMORY[0x1E69794A0] layer];
      [(UIKeyboardDockItemButton *)self setDebugHitLayer:layer2];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      v10 = [UIBezierPath bezierPathWithOvalInRect:?];
      cGPath = [v10 CGPath];
      debugHitLayer3 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [debugHitLayer3 setPath:cGPath];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      debugHitLayer4 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [debugHitLayer4 setBounds:{v14, v16, v18, v20}];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      MidX = CGRectGetMidX(v29);
      [(UIKeyboardDockItemButton *)self tapActionRegion];
      MidY = CGRectGetMidY(v30);
      debugHitLayer5 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [debugHitLayer5 setPosition:{MidX, MidY}];

      layer3 = [(UIView *)self layer];
      debugHitLayer6 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      layer4 = [(UIView *)self layer];
      [layer3 insertSublayer:debugHitLayer6 below:layer4];

      [(UIKeyboardDockItemButton *)self updateFillColor];
    }
  }
}

- (void)updateFillColor
{
  _lightStyleRenderConfig = [(UIView *)self _lightStyleRenderConfig];
  shapeLayer = [(UIKeyboardDockItemButton *)self shapeLayer];

  if (shapeLayer)
  {
    if (_lightStyleRenderConfig)
    {
      +[UIKeyboardDockItem _standardGlyphColor];
    }

    else
    {
      +[UIKeyboardDockItem _darkStyleGlyphColor];
    }
    v5 = ;
    cGColor = [v5 CGColor];
    shapeLayer2 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [shapeLayer2 setFillColor:cGColor];
  }

  if (qword_1ED499F00 != -1)
  {
    dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
  }

  if (_MergedGlobals_17_3 == 1)
  {
    v11 = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.4];
    v8 = v11;
    cGColor2 = [v11 CGColor];
    debugHitLayer = [(UIKeyboardDockItemButton *)self debugHitLayer];
    [debugHitLayer setFillColor:cGColor2];
  }
}

- (void)setupDictationAnimationButtonIfNeeded
{
  identifier = [(UIKeyboardDockItemButton *)self identifier];
  if (![identifier isEqualToString:@"dictationRunning"] || ((-[UIView frame](self, "frame"), v4 = *MEMORY[0x1E695F060], v5 = *(MEMORY[0x1E695F060] + 8), v6 == *MEMORY[0x1E695F060]) ? (v7 = v3 == v5) : (v7 = 0), v7))
  {
  }

  else
  {
    imageView = [(UIButton *)self imageView];
    [imageView frame];
    v10 = v9;
    v12 = v11;

    if (v10 != v4 || v12 != v5)
    {
      shapeLayer = [(UIKeyboardDockItemButton *)self shapeLayer];

      if (!shapeLayer)
      {
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        layer = [MEMORY[0x1E69794A0] layer];
        [(UIKeyboardDockItemButton *)self setShapeLayer:layer];

        v18 = [UIBezierPath bezierPathWithOvalInRect:v15, v16, 48.0, 48.0];
        cGPath = [v18 CGPath];
        shapeLayer2 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [shapeLayer2 setPath:cGPath];

        shapeLayer3 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [shapeLayer3 setBounds:{v15, v16, 48.0, 48.0}];

        imageView2 = [(UIButton *)self imageView];
        [imageView2 center];
        v24 = v23;
        v26 = v25;
        shapeLayer4 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [shapeLayer4 setPosition:{v24, v26}];

        layer2 = [(UIView *)self layer];
        shapeLayer5 = [(UIKeyboardDockItemButton *)self shapeLayer];
        imageView3 = [(UIButton *)self imageView];
        layer3 = [imageView3 layer];
        [layer2 insertSublayer:shapeLayer5 below:layer3];

        [(UIKeyboardDockItemButton *)self updateFillColor];
      }
    }
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = UIKeyboardDockItemButton;
  [(UIView *)&v3 didMoveToSuperview];
  [(UIKeyboardDockItemButton *)self setupDictationAnimationButtonIfNeeded];
}

- (CGRect)rectWithSize:(CGSize)size forContentRect:(CGRect)rect withAlignmentRectInsets:(UIEdgeInsets)insets
{
  height = rect.size.height;
  width = rect.size.width;
  v7 = size.height;
  v8 = size.width;
  if ([(UIView *)self contentMode:size.width]== UIViewContentModeLeft)
  {
    [(UIButton *)self imageEdgeInsets];
    v11 = 0.0 - v10;
  }

  else if ([(UIView *)self contentMode]== UIViewContentModeRight)
  {
    [(UIButton *)self imageEdgeInsets];
    v11 = width - v8 + v12;
  }

  else if ([(UIView *)self contentMode]== UIViewContentModeCenter)
  {
    UIRoundToViewScale(self);
    v11 = v13;
  }

  else
  {
    v11 = *MEMORY[0x1E695EFF8];
  }

  [(UIButton *)self imageEdgeInsets];
  v15 = height - v7 + v14;
  v16 = v11;
  v17 = v8;
  v18 = v7;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  currentImage = [(UIButton *)self currentImage];
  [currentImage size];
  v10 = v9;
  v12 = v11;
  currentImage2 = [(UIButton *)self currentImage];
  [currentImage2 alignmentRectInsets];
  [(UIKeyboardDockItemButton *)self rectWithSize:v10 forContentRect:v12 withAlignmentRectInsets:x, y, width, height, v14, v15, v16, v17];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  v20[1] = *MEMORY[0x1E69E9840];
  currentTitle = [(UIButton *)self currentTitle];
  v19 = *off_1E70EC918;
  v5 = [off_1E70ECC18 systemFontOfSize:16.0];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [currentTitle sizeWithAttributes:v6];
  [(UIKeyboardDockItemButton *)self rectWithSize:0 forContentRect:0 withAlignmentRectInsets:0, 0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (qword_1ED499F00 != -1)
    {
      dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
    }

    if (_MergedGlobals_17_3 == 1)
    {
      v8 = +[UIColor orangeColor];
      [v8 setFill];

      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      CGContextFillRect(v10, v12);
    }
  }

  v11.receiver = self;
  v11.super_class = UIKeyboardDockItemButton;
  [(UIView *)&v11 drawRect:x, y, width, height];
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = UIKeyboardDockItemButton;
  [(UIButton *)&v4 setTintColor:color];
  [(UIKeyboardDockItemButton *)self updateFillColor];
}

- (BOOL)pointInsideTapActionRegion:(CGPoint)region
{
  y = region.y;
  x = region.x;
  if (_os_feature_enabled_impl())
  {
    [(UIKeyboardDockItemButton *)self tapActionRegion];
    v6 = [UIBezierPath bezierPathWithOvalInRect:?];
    v7 = [v6 containsPoint:{x, y}];

    return v7;
  }

  else
  {
    [(UIKeyboardDockItemButton *)self tapActionRegion];
    v13 = x;
    v14 = y;

    return CGRectContainsPoint(*&v9, *&v13);
  }
}

- (void)addAnimatitionIfNeeded
{
  shapeLayer = [(UIKeyboardDockItemButton *)self shapeLayer];
  animationKeys = [shapeLayer animationKeys];

  v4 = [animationKeys containsObject:@"opacityAnimation"];
  v5 = MEMORY[0x1E6979EB8];
  if ((v4 & 1) == 0)
  {
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v6 setDuration:1.0];
    LODWORD(v7) = 2139095039;
    [v6 setRepeatCount:v7];
    [v6 setAutoreverses:1];
    [v6 setFromValue:&unk_1EFE2E7B8];
    [v6 setToValue:&unk_1EFE2E7C8];
    v8 = [MEMORY[0x1E69793D0] functionWithName:*v5];
    [v6 setTimingFunction:v8];

    shapeLayer2 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [shapeLayer2 addAnimation:v6 forKey:@"opacityAnimation"];
  }

  if (([animationKeys containsObject:@"scaleXYanimation"] & 1) == 0)
  {
    v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
    [v10 setFromValue:&unk_1EFE31C00];
    [v10 setToValue:&unk_1EFE2E7D8];
    [v10 setDuration:1.0];
    LODWORD(v11) = 2139095039;
    [v10 setRepeatCount:v11];
    [v10 setAutoreverses:1];
    v12 = [MEMORY[0x1E69793D0] functionWithName:*v5];
    [v10 setTimingFunction:v12];

    shapeLayer3 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [shapeLayer3 addAnimation:v10 forKey:@"scaleXYanimation"];
  }
}

- (CGRect)tapActionRegion
{
  x = self->_tapActionRegion.origin.x;
  y = self->_tapActionRegion.origin.y;
  width = self->_tapActionRegion.size.width;
  height = self->_tapActionRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end