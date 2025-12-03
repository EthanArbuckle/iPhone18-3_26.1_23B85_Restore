@interface _UITextFieldPasscodeCutoutBackground
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIBezierPath)customPath;
- (_UITextFieldPasscodeCutoutBackground)initWithFrame:(CGRect)frame active:(BOOL)active;
- (double)_pathInset;
- (double)lineWidth;
- (id)_fillColor:(BOOL)color;
- (id)_strokeColor:(BOOL)color;
- (id)fillColor;
- (id)strokeColor;
- (void)_updateLightingOutlinePath;
- (void)_updatePath;
- (void)setBounds:(CGRect)bounds;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setFillColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setLineWidth:(double)width updatePath:(BOOL)path;
- (void)setOutlineAlpha:(double)alpha;
- (void)setStrokeColor:(id)color;
@end

@implementation _UITextFieldPasscodeCutoutBackground

- (double)_pathInset
{
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [_shapeLayer lineWidth];
  v4 = v3;

  return v4 * 0.5;
}

- (double)lineWidth
{
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [_shapeLayer lineWidth];
  v4 = v3;

  return v4;
}

- (id)fillColor
{
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [_shapeLayer fillColor]);

  return v3;
}

- (void)_updatePath
{
  [(_UITextFieldPasscodeCutoutBackground *)self _updateLightingOutlinePath];
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  customPath = [(_UITextFieldPasscodeCutoutBackground *)self customPath];

  if (customPath)
  {
    customPath2 = [(_UITextFieldPasscodeCutoutBackground *)self customPath];
    [_shapeLayer setStrokeColor:0];
  }

  else
  {
    [(_UITextFieldPasscodeCutoutBackground *)self _pathInset];
    v7 = v6;
    [(UIView *)self bounds];
    v18 = CGRectInset(v17, v7, v7);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    if (CGRectIsNull(v18))
    {
      customPath2 = 0;
    }

    else
    {
      [(_UITextFieldPasscodeCutoutBackground *)self cornerRadius];
      customPath2 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v12];
    }
  }

  if (+[UIView _isInAnimationBlock])
  {
    v13 = [_shapeLayer animationForKey:@"path"];

    if (v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51___UITextFieldPasscodeCutoutBackground__updatePath__block_invoke;
      v15[3] = &unk_1E70F3590;
      v16 = _shapeLayer;
      [UIView performWithoutAnimation:v15];
    }
  }

  v14 = [_shapeLayer animationForKey:@"path"];

  if (!v14)
  {
    [_shapeLayer setPath:{objc_msgSend(customPath2, "CGPath")}];
  }

  [(UIView *)self setNeedsDisplay];
}

- (void)_updateLightingOutlinePath
{
  [(_UITextFieldPasscodeCutoutBackground *)self _pathInset];
  v4 = v3;
  [(_UITextFieldPasscodeCutoutBackground *)self cornerRadius];
  v6 = v5;
  [(UIView *)self bounds];
  v18 = CGRectInset(v17, v4, v4);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v14 = +[UIBezierPath bezierPath];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (CGRectIsNull(v19))
  {
    v11 = v14;
  }

  else
  {
    v12 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v6];

    v11 = v12;
  }

  v15 = v11;
  v13 = v11;
  -[CAShapeLayer setPath:](self->_lighteningOutline, "setPath:", [v15 CGPath]);
}

- (UIBezierPath)customPath
{
  [(_UITextFieldPasscodeCutoutBackground *)self cornerRadius];
  v4 = v3;
  [(_UITextFieldPasscodeCutoutBackground *)self _pathInset];
  v6 = v5;
  [(UIView *)self bounds];
  v23 = CGRectInset(v22, v6, v6);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (CGRectIsNull(v23))
  {
    v11 = 0;
  }

  else
  {
    v11 = +[UIBezierPath bezierPath];
    [(_UITextFieldPasscodeCutoutBackground *)self lineWidth];
    v13 = v12;
    v14 = v12 * 0.5;
    [(UIView *)self bounds];
    v15 = -(v13 * 0.5);
    v25 = CGRectInset(v24, v15, v15);
    v16 = [UIBezierPath bezierPathWithRect:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
    [v11 appendPath:v16];

    v17 = v13 * 0.25;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectInset(v26, v15, v15);
    v18 = [UIBezierPath bezierPathWithRoundedRect:v27.origin.x cornerRadius:v27.origin.y, v27.size.width, v27.size.height, v4 + v17];
    [v11 appendPath:v18];

    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectInset(v28, v14, v14);
    v19 = [UIBezierPath bezierPathWithRoundedRect:v29.origin.x cornerRadius:v29.origin.y, v29.size.width, v29.size.height, v4 - v17];
    [v11 appendPath:v19];
  }

  return v11;
}

- (_UITextFieldPasscodeCutoutBackground)initWithFrame:(CGRect)frame active:(BOOL)active
{
  v14.receiver = self;
  v14.super_class = _UITextFieldPasscodeCutoutBackground;
  v4 = [(UITextFieldBackgroundView *)&v14 initWithFrame:active active:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setAutoresizingMask:18];
    v5->_cornerRadius = 5.0;
    [(_UITextFieldPasscodeCutoutBackground *)v5 setLineWidth:1.0];
    _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)v5 _shapeLayer];
    [_shapeLayer setFillRule:*MEMORY[0x1E69797F8]];

    [(UIView *)v5 setOpaque:0];
    v7 = objc_alloc_init(MEMORY[0x1E69794A0]);
    lighteningOutline = v5->_lighteningOutline;
    v5->_lighteningOutline = v7;

    v9 = +[UIColor clearColor];
    -[CAShapeLayer setFillColor:](v5->_lighteningOutline, "setFillColor:", [v9 CGColor]);

    v10 = [UIColor colorWithWhite:1.0 alpha:0.25];
    -[CAShapeLayer setStrokeColor:](v5->_lighteningOutline, "setStrokeColor:", [v10 CGColor]);

    v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
    [(CAShapeLayer *)v5->_lighteningOutline setCompositingFilter:v11];

    [(CAShapeLayer *)v5->_lighteningOutline setLineWidth:1.0];
    layer = [(UIView *)v5 layer];
    [layer addSublayer:v5->_lighteningOutline];
  }

  return v5;
}

- (void)setOutlineAlpha:(double)alpha
{
  self->_outlineAlpha = alpha;
  v5 = [UIColor colorWithWhite:1.0 alpha:alpha];
  v4 = v5;
  -[CAShapeLayer setStrokeColor:](self->_lighteningOutline, "setStrokeColor:", [v5 CGColor]);
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  self->_hasCustomStrokeColor = colorCopy != 0;
  if (!colorCopy)
  {
    colorCopy = [(_UITextFieldPasscodeCutoutBackground *)self _strokeColor:self->super._enabled];
  }

  v8 = colorCopy;
  v5 = colorCopy;
  cGColor = [v8 CGColor];
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [_shapeLayer setStrokeColor:cGColor];
}

- (id)strokeColor
{
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [_shapeLayer strokeColor]);

  return v3;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  self->_hasCustomFillColor = colorCopy != 0;
  if (!colorCopy)
  {
    colorCopy = [(_UITextFieldPasscodeCutoutBackground *)self _fillColor:self->super._enabled];
  }

  v8 = colorCopy;
  v5 = colorCopy;
  cGColor = [v8 CGColor];
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [_shapeLayer setFillColor:cGColor];
}

- (void)setLineWidth:(double)width updatePath:(BOOL)path
{
  pathCopy = path;
  _shapeLayer = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [_shapeLayer setLineWidth:width];

  if (pathCopy)
  {

    [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
  }
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _UITextFieldPasscodeCutoutBackground;
  [(UITextFieldBackgroundView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UITextFieldPasscodeCutoutBackground;
  [(UITextFieldBackgroundView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  v11.receiver = self;
  v11.super_class = _UITextFieldPasscodeCutoutBackground;
  [UITextFieldBackgroundView setEnabled:sel_setEnabled_animated_ animated:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___UITextFieldPasscodeCutoutBackground_setEnabled_animated___block_invoke;
  v9[3] = &unk_1E70F35E0;
  v9[4] = self;
  enabledCopy = enabled;
  v7 = _Block_copy(v9);
  v8 = v7;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v7 animations:0.35];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v5 = _shouldAnimatePropertyWithKey__properties;
  if (!_shouldAnimatePropertyWithKey__properties)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"path", @"fillColor", @"lineWidth", @"strokeColor", 0}];
    v7 = _shouldAnimatePropertyWithKey__properties;
    _shouldAnimatePropertyWithKey__properties = v6;

    v5 = _shouldAnimatePropertyWithKey__properties;
  }

  if ([v5 containsObject:keyCopy])
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UITextFieldPasscodeCutoutBackground;
    v8 = [(UIView *)&v10 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v8;
}

- (id)_strokeColor:(BOOL)color
{
  if (color)
  {
    +[UIColor _textFieldBorderColor];
  }

  else
  {
    +[UIColor _textFieldDisabledBorderColor];
  }
  v3 = ;

  return v3;
}

- (id)_fillColor:(BOOL)color
{
  if (color)
  {
    +[UIColor _textFieldBackgroundColor];
  }

  else
  {
    +[UIColor _textFieldDisabledBackgroundColor];
  }
  v3 = ;

  return v3;
}

@end