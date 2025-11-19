@interface UIKeyboardDockItemButton
- (BOOL)pointInsideTapActionRegion:(CGPoint)a3;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)rectWithSize:(CGSize)a3 forContentRect:(CGRect)a4 withAlignmentRectInsets:(UIEdgeInsets)a5;
- (CGRect)tapActionRegion;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (void)addAnimatitionIfNeeded;
- (void)didMoveToSuperview;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
- (void)setupDictationAnimationButtonIfNeeded;
- (void)updateFillColor;
@end

@implementation UIKeyboardDockItemButton

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = UIKeyboardDockItemButton;
  [(UIButton *)&v28 layoutSubviews];
  v3 = [(UIKeyboardDockItemButton *)self identifier];
  v4 = [v3 isEqualToString:@"dictationRunning"];

  if (v4)
  {
    v5 = [(UIButton *)self imageView];
    v6 = [v5 layer];
    [v6 setCompositingFilter:*MEMORY[0x1E6979D98]];
  }

  v7 = [(UIKeyboardDockItemButton *)self debugHitLayer];

  if (v7)
  {
    v8 = [(UIKeyboardDockItemButton *)self debugHitLayer];
    [v8 removeFromSuperlayer];

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
      v9 = [MEMORY[0x1E69794A0] layer];
      [(UIKeyboardDockItemButton *)self setDebugHitLayer:v9];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      v10 = [UIBezierPath bezierPathWithOvalInRect:?];
      v11 = [v10 CGPath];
      v12 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [v12 setPath:v11];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [v21 setBounds:{v14, v16, v18, v20}];

      [(UIKeyboardDockItemButton *)self tapActionRegion];
      MidX = CGRectGetMidX(v29);
      [(UIKeyboardDockItemButton *)self tapActionRegion];
      MidY = CGRectGetMidY(v30);
      v24 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      [v24 setPosition:{MidX, MidY}];

      v25 = [(UIView *)self layer];
      v26 = [(UIKeyboardDockItemButton *)self debugHitLayer];
      v27 = [(UIView *)self layer];
      [v25 insertSublayer:v26 below:v27];

      [(UIKeyboardDockItemButton *)self updateFillColor];
    }
  }
}

- (void)updateFillColor
{
  v3 = [(UIView *)self _lightStyleRenderConfig];
  v4 = [(UIKeyboardDockItemButton *)self shapeLayer];

  if (v4)
  {
    if (v3)
    {
      +[UIKeyboardDockItem _standardGlyphColor];
    }

    else
    {
      +[UIKeyboardDockItem _darkStyleGlyphColor];
    }
    v5 = ;
    v6 = [v5 CGColor];
    v7 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [v7 setFillColor:v6];
  }

  if (qword_1ED499F00 != -1)
  {
    dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
  }

  if (_MergedGlobals_17_3 == 1)
  {
    v11 = [UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.4];
    v8 = v11;
    v9 = [v11 CGColor];
    v10 = [(UIKeyboardDockItemButton *)self debugHitLayer];
    [v10 setFillColor:v9];
  }
}

- (void)setupDictationAnimationButtonIfNeeded
{
  v32 = [(UIKeyboardDockItemButton *)self identifier];
  if (![v32 isEqualToString:@"dictationRunning"] || ((-[UIView frame](self, "frame"), v4 = *MEMORY[0x1E695F060], v5 = *(MEMORY[0x1E695F060] + 8), v6 == *MEMORY[0x1E695F060]) ? (v7 = v3 == v5) : (v7 = 0), v7))
  {
  }

  else
  {
    v8 = [(UIButton *)self imageView];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    if (v10 != v4 || v12 != v5)
    {
      v14 = [(UIKeyboardDockItemButton *)self shapeLayer];

      if (!v14)
      {
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        v17 = [MEMORY[0x1E69794A0] layer];
        [(UIKeyboardDockItemButton *)self setShapeLayer:v17];

        v18 = [UIBezierPath bezierPathWithOvalInRect:v15, v16, 48.0, 48.0];
        v19 = [v18 CGPath];
        v20 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [v20 setPath:v19];

        v21 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [v21 setBounds:{v15, v16, 48.0, 48.0}];

        v22 = [(UIButton *)self imageView];
        [v22 center];
        v24 = v23;
        v26 = v25;
        v27 = [(UIKeyboardDockItemButton *)self shapeLayer];
        [v27 setPosition:{v24, v26}];

        v28 = [(UIView *)self layer];
        v29 = [(UIKeyboardDockItemButton *)self shapeLayer];
        v30 = [(UIButton *)self imageView];
        v31 = [v30 layer];
        [v28 insertSublayer:v29 below:v31];

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

- (CGRect)rectWithSize:(CGSize)a3 forContentRect:(CGRect)a4 withAlignmentRectInsets:(UIEdgeInsets)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v7 = a3.height;
  v8 = a3.width;
  if ([(UIView *)self contentMode:a3.width]== UIViewContentModeLeft)
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

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIButton *)self currentImage];
  [v8 size];
  v10 = v9;
  v12 = v11;
  v13 = [(UIButton *)self currentImage];
  [v13 alignmentRectInsets];
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

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIButton *)self currentTitle];
  v19 = *off_1E70EC918;
  v5 = [off_1E70ECC18 systemFontOfSize:16.0];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v4 sizeWithAttributes:v6];
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKeyboardDockItemButton;
  [(UIButton *)&v4 setTintColor:a3];
  [(UIKeyboardDockItemButton *)self updateFillColor];
}

- (BOOL)pointInsideTapActionRegion:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(UIKeyboardDockItemButton *)self shapeLayer];
  v14 = [v3 animationKeys];

  v4 = [v14 containsObject:@"opacityAnimation"];
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

    v9 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [v9 addAnimation:v6 forKey:@"opacityAnimation"];
  }

  if (([v14 containsObject:@"scaleXYanimation"] & 1) == 0)
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

    v13 = [(UIKeyboardDockItemButton *)self shapeLayer];
    [v13 addAnimation:v10 forKey:@"scaleXYanimation"];
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