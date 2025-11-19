@interface _UITextFieldPasscodeCutoutBackground
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIBezierPath)customPath;
- (_UITextFieldPasscodeCutoutBackground)initWithFrame:(CGRect)a3 active:(BOOL)a4;
- (double)_pathInset;
- (double)lineWidth;
- (id)_fillColor:(BOOL)a3;
- (id)_strokeColor:(BOOL)a3;
- (id)fillColor;
- (id)strokeColor;
- (void)_updateLightingOutlinePath;
- (void)_updatePath;
- (void)setBounds:(CGRect)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setFillColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setLineWidth:(double)a3 updatePath:(BOOL)a4;
- (void)setOutlineAlpha:(double)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation _UITextFieldPasscodeCutoutBackground

- (double)_pathInset
{
  v2 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [v2 lineWidth];
  v4 = v3;

  return v4 * 0.5;
}

- (double)lineWidth
{
  v2 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (id)fillColor
{
  v2 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 fillColor]);

  return v3;
}

- (void)_updatePath
{
  [(_UITextFieldPasscodeCutoutBackground *)self _updateLightingOutlinePath];
  v3 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  v4 = [(_UITextFieldPasscodeCutoutBackground *)self customPath];

  if (v4)
  {
    v5 = [(_UITextFieldPasscodeCutoutBackground *)self customPath];
    [v3 setStrokeColor:0];
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
      v5 = 0;
    }

    else
    {
      [(_UITextFieldPasscodeCutoutBackground *)self cornerRadius];
      v5 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, v12];
    }
  }

  if (+[UIView _isInAnimationBlock])
  {
    v13 = [v3 animationForKey:@"path"];

    if (v13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51___UITextFieldPasscodeCutoutBackground__updatePath__block_invoke;
      v15[3] = &unk_1E70F3590;
      v16 = v3;
      [UIView performWithoutAnimation:v15];
    }
  }

  v14 = [v3 animationForKey:@"path"];

  if (!v14)
  {
    [v3 setPath:{objc_msgSend(v5, "CGPath")}];
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

- (_UITextFieldPasscodeCutoutBackground)initWithFrame:(CGRect)a3 active:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = _UITextFieldPasscodeCutoutBackground;
  v4 = [(UITextFieldBackgroundView *)&v14 initWithFrame:a4 active:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setAutoresizingMask:18];
    v5->_cornerRadius = 5.0;
    [(_UITextFieldPasscodeCutoutBackground *)v5 setLineWidth:1.0];
    v6 = [(_UITextFieldPasscodeCutoutBackground *)v5 _shapeLayer];
    [v6 setFillRule:*MEMORY[0x1E69797F8]];

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
    v12 = [(UIView *)v5 layer];
    [v12 addSublayer:v5->_lighteningOutline];
  }

  return v5;
}

- (void)setOutlineAlpha:(double)a3
{
  self->_outlineAlpha = a3;
  v5 = [UIColor colorWithWhite:1.0 alpha:a3];
  v4 = v5;
  -[CAShapeLayer setStrokeColor:](self->_lighteningOutline, "setStrokeColor:", [v5 CGColor]);
}

- (void)setStrokeColor:(id)a3
{
  v4 = a3;
  self->_hasCustomStrokeColor = v4 != 0;
  if (!v4)
  {
    v4 = [(_UITextFieldPasscodeCutoutBackground *)self _strokeColor:self->super._enabled];
  }

  v8 = v4;
  v5 = v4;
  v6 = [v8 CGColor];
  v7 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [v7 setStrokeColor:v6];
}

- (id)strokeColor
{
  v2 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 strokeColor]);

  return v3;
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  self->_hasCustomFillColor = v4 != 0;
  if (!v4)
  {
    v4 = [(_UITextFieldPasscodeCutoutBackground *)self _fillColor:self->super._enabled];
  }

  v8 = v4;
  v5 = v4;
  v6 = [v8 CGColor];
  v7 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [v7 setFillColor:v6];
}

- (void)setLineWidth:(double)a3 updatePath:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UITextFieldPasscodeCutoutBackground *)self _shapeLayer];
  [v7 setLineWidth:a3];

  if (v4)
  {

    [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UITextFieldPasscodeCutoutBackground;
  [(UITextFieldBackgroundView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UITextFieldPasscodeCutoutBackground;
  [(UITextFieldBackgroundView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UITextFieldPasscodeCutoutBackground *)self _updatePath];
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = _UITextFieldPasscodeCutoutBackground;
  [UITextFieldBackgroundView setEnabled:sel_setEnabled_animated_ animated:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60___UITextFieldPasscodeCutoutBackground_setEnabled_animated___block_invoke;
  v9[3] = &unk_1E70F35E0;
  v9[4] = self;
  v10 = a3;
  v7 = _Block_copy(v9);
  v8 = v7;
  if (v4)
  {
    [UIView animateWithDuration:v7 animations:0.35];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = _shouldAnimatePropertyWithKey__properties;
  if (!_shouldAnimatePropertyWithKey__properties)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"path", @"fillColor", @"lineWidth", @"strokeColor", 0}];
    v7 = _shouldAnimatePropertyWithKey__properties;
    _shouldAnimatePropertyWithKey__properties = v6;

    v5 = _shouldAnimatePropertyWithKey__properties;
  }

  if ([v5 containsObject:v4])
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _UITextFieldPasscodeCutoutBackground;
    v8 = [(UIView *)&v10 _shouldAnimatePropertyWithKey:v4];
  }

  return v8;
}

- (id)_strokeColor:(BOOL)a3
{
  if (a3)
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

- (id)_fillColor:(BOOL)a3
{
  if (a3)
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