@interface _UITextFieldRoundedRectBackgroundViewNeue
- (double)_cornerRadiusAdjustedForBoundsHeight;
- (double)_screenScale;
- (id)_fillColor:(BOOL)a3;
- (id)_initWithFrame:(CGRect)a3 active:(BOOL)a4 usesSinglePixelLineWidth:(BOOL)a5 updateView:(BOOL)a6;
- (id)_strokeColor:(BOOL)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setFillColor:(id)a3;
- (void)setHasFlexibleCornerRadius:(BOOL)a3;
- (void)setLineWidth:(double)a3;
- (void)setStrokeColor:(id)a3;
- (void)setUsesSinglePixelLineWidth:(BOOL)a3;
- (void)updateView;
@end

@implementation _UITextFieldRoundedRectBackgroundViewNeue

- (void)updateView
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v18 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &updateView___s_category) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 0;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v20, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

  v5 = _UISetCurrentFallbackEnvironment(self);
  if ([(_UITextFieldRoundedRectBackgroundViewNeue *)self usesSinglePixelLineWidth])
  {
    v6 = [(UIView *)self traitCollection];
    [v6 displayScale];
    lineWidth = 1.0 / v7;
  }

  else
  {
    lineWidth = self->_lineWidth;
  }

  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    v10 = strokeColor;
  }

  else
  {
    v10 = [(_UITextFieldRoundedRectBackgroundViewNeue *)self _strokeColor:*&self->_flags & 1];
  }

  v11 = v10;
  fillColor = self->_fillColor;
  if (fillColor)
  {
    v13 = fillColor;
  }

  else
  {
    v13 = [(_UITextFieldRoundedRectBackgroundViewNeue *)self _fillColor:*&self->_flags & 1];
  }

  v14 = v13;
  [(UIView *)self setBackgroundColor:v13];
  v15 = [(UIView *)self layer];
  [v15 setBorderColor:{-[UIColor CGColor](v11, "CGColor")}];
  [v15 setBorderWidth:lineWidth];
  [v15 setCornerCurve:*MEMORY[0x1E69796E8]];
  if ([(_UITextFieldRoundedRectBackgroundViewNeue *)self hasFlexibleCornerRadius])
  {
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self _cornerRadiusAdjustedForBoundsHeight];
  }

  else
  {
    cornerRadius = self->_cornerRadius;
    [v15 bounds];
    if (cornerRadius <= CGRectGetHeight(v22) * 0.5)
    {
      v16 = self->_cornerRadius;
    }

    else
    {
      [v15 bounds];
      v16 = CGRectGetHeight(v23) * 0.5;
    }
  }

  [v15 setCornerRadius:v16];
  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
}

- (double)_cornerRadiusAdjustedForBoundsHeight
{
  [(UIView *)self bounds];
  v4 = v3;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self _screenScale];
  result = floor(v5 * (v4 * 0.5)) / v5;
  if (result > self->_cornerRadius)
  {
    return self->_cornerRadius;
  }

  return result;
}

- (double)_screenScale
{
  v2 = [(UIView *)self window];
  v3 = [v2 screen];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
  }

  v6 = v5;

  [v6 scale];
  v8 = v7;

  return v8;
}

- (id)_initWithFrame:(CGRect)a3 active:(BOOL)a4 usesSinglePixelLineWidth:(BOOL)a5 updateView:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12.receiver = self;
  v12.super_class = _UITextFieldRoundedRectBackgroundViewNeue;
  v8 = [(UIView *)&v12 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setAutoresizingMask:18];
    [(UIView *)v9 setOpaque:0];
    [(UIView *)v9 setUserInteractionEnabled:0];
    if (v7)
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    *&v9->_flags = *&v9->_flags & 0xF8 | v10;
    v9->_cornerRadius = 5.0;
    if (v6)
    {
      [(_UITextFieldRoundedRectBackgroundViewNeue *)v9 updateView];
    }
  }

  return v9;
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  v6 = self->_strokeColor;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_strokeColor, a3);
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }

LABEL_9:
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  v6 = self->_fillColor;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_fillColor, a3);
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }

LABEL_9:
}

- (void)setLineWidth:(double)a3
{
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self setUsesSinglePixelLineWidth:0];
  if (self->_lineWidth != a3)
  {
    self->_lineWidth = a3;

    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  flags = self->_flags;
  if ((flags & 1) != a3)
  {
    *&self->_flags = flags & 0xFE | a3;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setHasFlexibleCornerRadius:(BOOL)a3
{
  flags = self->_flags;
  if (((((flags & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = flags & 0xFD | v4;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setUsesSinglePixelLineWidth:(BOOL)a3
{
  flags = self->_flags;
  if (((((flags & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = flags & 0xFB | v4;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (id)_strokeColor:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 > 8 || ((1 << v5) & 0x144) == 0)
  {
    if (v3)
    {
      +[UIColor _textFieldBorderColor];
    }

    else
    {
      +[UIColor _textFieldDisabledBorderColor];
    }
    v7 = ;
  }

  else
  {
    v7 = +[UIColor clearColor];
  }

  return v7;
}

- (id)_fillColor:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 8)
  {
    goto LABEL_4;
  }

  if (v5 != 6)
  {
    if (v5 != 2)
    {
      if (v3)
      {
        +[UIColor _textFieldBackgroundColor];
      }

      else
      {
        +[UIColor _textFieldDisabledBackgroundColor];
      }
      v6 = ;
      goto LABEL_5;
    }

LABEL_4:
    v6 = +[UIColor clearColor];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v8 = +[UIColor blackColor];
  v7 = [v8 colorWithAlphaComponent:0.15];

LABEL_7:

  return v7;
}

- (void)layoutSubviews
{
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  v3.receiver = self;
  v3.super_class = _UITextFieldRoundedRectBackgroundViewNeue;
  [(UIView *)&v3 layoutSubviews];
}

@end