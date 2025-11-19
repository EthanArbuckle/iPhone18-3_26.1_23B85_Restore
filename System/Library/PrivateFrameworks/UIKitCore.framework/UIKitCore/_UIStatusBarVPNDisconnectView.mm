@interface _UIStatusBarVPNDisconnectView
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_setupForStyleAttributes:(id)a3;
- (void)animateSlashForUpdate:(id)a3;
- (void)applyStyleAttributes:(id)a3;
- (void)resetSlashForUpdate:(id)a3;
- (void)updateFramesForStyleAttributes:(id)a3;
@end

@implementation _UIStatusBarVPNDisconnectView

- (void)_setupForStyleAttributes:(id)a3
{
  if (!self->_iconView)
  {
    v4 = a3;
    v5 = +[_UIStatusBarImageProvider sharedProvider];
    v6 = [v5 imageNamed:@"VPN" styleAttributes:v4];

    v32 = [v6 imageWithRenderingMode:2];

    v7 = [(UIImageView *)[_UIStatusBarImageView alloc] initWithImage:v32];
    iconView = self->_iconView;
    self->_iconView = v7;

    [(UIView *)self addSubview:self->_iconView];
    v9 = [UIView alloc];
    [(UIView *)self->_iconView frame];
    v10 = [(UIView *)v9 initWithFrame:?];
    v11 = +[UIColor blackColor];
    v12 = [v11 CGColor];
    v13 = [(UIView *)v10 layer];
    [v13 setBackgroundColor:v12];

    v14 = [MEMORY[0x1E69794A0] layer];
    iconSlashMaskShapeLayer = self->_iconSlashMaskShapeLayer;
    self->_iconSlashMaskShapeLayer = v14;

    v16 = +[UIColor blackColor];
    -[CAShapeLayer setStrokeColor:](self->_iconSlashMaskShapeLayer, "setStrokeColor:", [v16 CGColor]);

    Mutable = CGPathCreateMutable();
    v34.origin.x = 5.0;
    v34.origin.y = -3.0;
    v34.size.width = 19.0;
    v34.size.height = 19.0;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = 5.0;
    v35.origin.y = -3.0;
    v35.size.width = 19.0;
    v35.size.height = 19.0;
    MinY = CGRectGetMinY(v35);
    CGPathMoveToPoint(Mutable, 0, MinX, MinY);
    v36.origin.x = 5.0;
    v36.origin.y = -3.0;
    v36.size.width = 19.0;
    v36.size.height = 19.0;
    MaxX = CGRectGetMaxX(v36);
    v37.origin.x = 5.0;
    v37.origin.y = -3.0;
    v37.size.width = 19.0;
    v37.size.height = 19.0;
    MaxY = CGRectGetMaxY(v37);
    CGPathAddLineToPoint(Mutable, 0, MaxX, MaxY);
    [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setPath:Mutable];
    CGPathRelease(Mutable);
    [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setLineWidth:4.0];
    v22 = *MEMORY[0x1E6979E78];
    [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setLineCap:*MEMORY[0x1E6979E78]];
    v23 = +[UIColor blackColor];
    -[CAShapeLayer setStrokeColor:](self->_iconSlashMaskShapeLayer, "setStrokeColor:", [v23 CGColor]);

    [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setStrokeEnd:0.0];
    v24 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
    [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setCompositingFilter:v24];

    v25 = [(UIView *)v10 layer];
    [v25 addSublayer:self->_iconSlashMaskShapeLayer];

    [(UIView *)self->_iconView setMaskView:v10];
    v26 = [[UIView alloc] initWithFrame:5.0, -3.0, 19.0, 19.0];
    slashView = self->_slashView;
    self->_slashView = v26;

    [(UIView *)self addSubview:self->_slashView];
    v28 = [MEMORY[0x1E69794A0] layer];
    slashShapeLayer = self->_slashShapeLayer;
    self->_slashShapeLayer = v28;

    v30 = CGPathCreateMutable();
    CGPathMoveToPoint(v30, 0, 0.0, 0.0);
    CGPathAddLineToPoint(v30, 0, 19.0, 19.0);
    [(CAShapeLayer *)self->_slashShapeLayer setPath:v30];
    CGPathRelease(v30);
    [(CAShapeLayer *)self->_slashShapeLayer setLineWidth:1.0];
    [(CAShapeLayer *)self->_slashShapeLayer setLineCap:v22];
    [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:0.0];
    v31 = [(UIView *)self->_slashView layer];
    [v31 addSublayer:self->_slashShapeLayer];

    [(UIImageView *)self->_iconView setImage:v32];
  }
}

- (void)updateFramesForStyleAttributes:(id)a3
{
  [(_UIStatusBarImageView *)self->_iconView intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(UIView *)self window];
  v9 = [v8 screen];
  [v9 scale];
  v11 = UIRectIntegralWithScale(0.0, 0.0, v5, v7, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UIView *)self->_iconView frame];
  v25.origin.x = v18;
  v25.origin.y = v19;
  v25.size.width = v20;
  v25.size.height = v21;
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (!CGRectEqualToRect(v24, v25))
  {
    [(UIImageView *)self->_iconView setFrame:v11, v13, v15, v17];
    v22 = [(UIView *)self->_iconView maskView];
    [v22 setFrame:{v11, v13, v15, v17}];

    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  [(_UIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:v4];
  [(_UIStatusBarImageView *)self->_iconView applyStyleAttributes:v4];
  [(_UIStatusBarVPNDisconnectView *)self updateFramesForStyleAttributes:v4];
  v6 = [v4 imageTintColor];

  v5 = v6;
  -[CAShapeLayer setStrokeColor:](self->_slashShapeLayer, "setStrokeColor:", [v6 CGColor]);
}

- (void)resetSlashForUpdate:(id)a3
{
  v4 = [a3 styleAttributes];
  [(_UIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:v4];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] disableActions];
  [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setStrokeEnd:0.0];
  [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:0.0];
  v5 = MEMORY[0x1E6979518];

  [v5 commit];
}

- (void)animateSlashForUpdate:(id)a3
{
  v4 = [a3 styleAttributes];
  [(_UIStatusBarVPNDisconnectView *)self _setupForStyleAttributes:v4];

  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
  v5 = [(UIView *)self layer];
  [v5 convertTime:0 toLayer:CACurrentMediaTime()];
  [v8 setBeginTime:v6 + 0.75];

  [v8 setFromValue:&unk_1EFE2E528];
  [v8 setToValue:&unk_1EFE2E538];
  [v8 setDuration:0.75];
  [v8 setDelegate:self];
  v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v8 setTimingFunction:v7];

  [(CAShapeLayer *)self->_iconSlashMaskShapeLayer addAnimation:v8 forKey:@"slash"];
  [(CAShapeLayer *)self->_slashShapeLayer addAnimation:v8 forKey:@"slash"];
  [(CAShapeLayer *)self->_iconSlashMaskShapeLayer setStrokeEnd:1.0];
  [(CAShapeLayer *)self->_slashShapeLayer setStrokeEnd:1.0];
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(UIImageView *)self->_iconView alignmentRectInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(_UIStatusBarImageView *)self->_iconView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end