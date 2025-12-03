@interface _UITextFieldRoundedRectBackgroundViewNeue
- (double)_cornerRadiusAdjustedForBoundsHeight;
- (double)_screenScale;
- (id)_fillColor:(BOOL)color;
- (id)_initWithFrame:(CGRect)frame active:(BOOL)active usesSinglePixelLineWidth:(BOOL)width updateView:(BOOL)view;
- (id)_strokeColor:(BOOL)color;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setFillColor:(id)color;
- (void)setHasFlexibleCornerRadius:(BOOL)radius;
- (void)setLineWidth:(double)width;
- (void)setStrokeColor:(id)color;
- (void)setUsesSinglePixelLineWidth:(BOOL)width;
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
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v5 = _UISetCurrentFallbackEnvironment(self);
  if ([(_UITextFieldRoundedRectBackgroundViewNeue *)self usesSinglePixelLineWidth])
  {
    traitCollection2 = [(UIView *)self traitCollection];
    [traitCollection2 displayScale];
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
  layer = [(UIView *)self layer];
  [layer setBorderColor:{-[UIColor CGColor](v11, "CGColor")}];
  [layer setBorderWidth:lineWidth];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  if ([(_UITextFieldRoundedRectBackgroundViewNeue *)self hasFlexibleCornerRadius])
  {
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self _cornerRadiusAdjustedForBoundsHeight];
  }

  else
  {
    cornerRadius = self->_cornerRadius;
    [layer bounds];
    if (cornerRadius <= CGRectGetHeight(v22) * 0.5)
    {
      v16 = self->_cornerRadius;
    }

    else
    {
      [layer bounds];
      v16 = CGRectGetHeight(v23) * 0.5;
    }
  }

  [layer setCornerRadius:v16];
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
  window = [(UIView *)self window];
  screen = [window screen];
  v4 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  v6 = mainScreen;

  [v6 scale];
  v8 = v7;

  return v8;
}

- (id)_initWithFrame:(CGRect)frame active:(BOOL)active usesSinglePixelLineWidth:(BOOL)width updateView:(BOOL)view
{
  viewCopy = view;
  widthCopy = width;
  v12.receiver = self;
  v12.super_class = _UITextFieldRoundedRectBackgroundViewNeue;
  v8 = [(UIView *)&v12 initWithFrame:active, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 setAutoresizingMask:18];
    [(UIView *)v9 setOpaque:0];
    [(UIView *)v9 setUserInteractionEnabled:0];
    if (widthCopy)
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    *&v9->_flags = *&v9->_flags & 0xF8 | v10;
    v9->_cornerRadius = 5.0;
    if (viewCopy)
    {
      [(_UITextFieldRoundedRectBackgroundViewNeue *)v9 updateView];
    }
  }

  return v9;
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  v6 = self->_strokeColor;
  v7 = colorCopy;
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
    objc_storeStrong(&self->_strokeColor, color);
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }

LABEL_9:
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  v6 = self->_fillColor;
  v7 = colorCopy;
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
    objc_storeStrong(&self->_fillColor, color);
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }

LABEL_9:
}

- (void)setLineWidth:(double)width
{
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self setUsesSinglePixelLineWidth:0];
  if (self->_lineWidth != width)
  {
    self->_lineWidth = width;

    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  flags = self->_flags;
  if ((flags & 1) != enabled)
  {
    *&self->_flags = flags & 0xFE | enabled;
    [(_UITextFieldRoundedRectBackgroundViewNeue *)self updateView];
  }
}

- (void)setHasFlexibleCornerRadius:(BOOL)radius
{
  flags = self->_flags;
  if (((((flags & 2) == 0) ^ radius) & 1) == 0)
  {
    if (radius)
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

- (void)setUsesSinglePixelLineWidth:(BOOL)width
{
  flags = self->_flags;
  if (((((flags & 4) == 0) ^ width) & 1) == 0)
  {
    if (width)
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

- (id)_strokeColor:(BOOL)color
{
  colorCopy = color;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom > 8 || ((1 << userInterfaceIdiom) & 0x144) == 0)
  {
    if (colorCopy)
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

- (id)_fillColor:(BOOL)color
{
  colorCopy = color;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 8)
  {
    goto LABEL_4;
  }

  if (userInterfaceIdiom != 6)
  {
    if (userInterfaceIdiom != 2)
    {
      if (colorCopy)
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