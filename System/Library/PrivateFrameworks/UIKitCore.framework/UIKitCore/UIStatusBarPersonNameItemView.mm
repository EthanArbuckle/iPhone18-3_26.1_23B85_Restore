@interface UIStatusBarPersonNameItemView
- (BOOL)_updateWithPersonName:(id)a3 maxWidth:(double)a4;
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)addContentOverlap:(double)a3;
- (double)extraRightPadding;
- (double)resetContentOverlap;
- (double)standardPadding;
- (id)accessibilityHUDRepresentation;
- (int64_t)legibilityStyle;
@end

@implementation UIStatusBarPersonNameItemView

- (double)standardPadding
{
  v4.receiver = self;
  v4.super_class = UIStatusBarPersonNameItemView;
  [(UIStatusBarItemView *)&v4 standardPadding];
  return v2 + -1.0;
}

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v5 + 3049 encoding:4];
  LOBYTE(self) = [(UIStatusBarPersonNameItemView *)self _updateWithPersonName:v6 maxWidth:1.79769313e308];

  return self;
}

- (BOOL)_updateWithPersonName:(id)a3 maxWidth:(double)a4
{
  v27[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NSString *)self->_personNameString isEqualToString:v6])
  {
    if (self->_maxWidth == a4)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [v6 copy];
    personNameString = self->_personNameString;
    self->_personNameString = v8;
  }

  v25 = v6;
  self->_maxWidth = a4;
  self->_letterSpacing = 0.0;
  [(UIView *)self setClipsToBounds:0];
  v10 = [(UIStatusBarItemView *)self cachedImageWithText:self->_personNameString truncatedWithEllipsesAtMaxWidth:1.79769313e308 letterSpacing:self->_letterSpacing];
  v11 = [v10 image];

  v24 = v11;
  [v11 size];
  if (v12 <= a4)
  {
    [(UIView *)self setClipsToBounds:0];
  }

  else
  {
    [(UIView *)self setClipsToBounds:1];
    v13 = *off_1E70EC918;
    v14 = *off_1E70EC950;
    while (1)
    {
      letterSpacing = self->_letterSpacing;
      if (letterSpacing <= -1.0)
      {
        break;
      }

      self->_letterSpacing = letterSpacing + -0.25;
      v16 = [(UIStatusBarItemView *)self textFont];
      v17 = objc_alloc_init(off_1E70ECB98);
      v18 = self->_personNameString;
      v26[1] = v14;
      v27[0] = v16;
      v26[0] = v13;
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_letterSpacing];
      v27[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      [(NSString *)v18 boundingRectWithSize:33 options:v20 attributes:v17 context:1.79769313e308, 1.79769313e308];
      v22 = v21;

      if (v22 <= a4)
      {
        goto LABEL_12;
      }
    }

    self->_letterSpacing = 0.0;
  }

LABEL_12:

  v7 = 1;
  v6 = v25;
LABEL_13:

  return v7;
}

- (double)resetContentOverlap
{
  self->_maxWidth = 1.79769313e308;
  [(UIStatusBarItemView *)self clearCachedTextImage];
  [(UIStatusBarPersonNameItemView *)self _updateWithPersonName:self->_personNameString maxWidth:1.79769313e308];

  [(UIStatusBarItemView *)self updateContentsAndWidth];
  return result;
}

- (double)addContentOverlap:(double)a3
{
  [(UIView *)self frame];
  v6 = v5 - a3;
  if (v5 - a3 < 20.0)
  {
    v6 = 20.0;
  }

  if (![(UIStatusBarPersonNameItemView *)self _updateWithPersonName:self->_personNameString maxWidth:v6])
  {
    return 0.0;
  }

  [(UIStatusBarItemView *)self updateContentsAndWidth];
  return result;
}

- (double)extraRightPadding
{
  v3 = _UIDeviceNativeUserInterfaceIdiom();
  result = 4.0;
  if (v3 != 1)
  {
    v5.receiver = self;
    v5.super_class = UIStatusBarPersonNameItemView;
    [(UIStatusBarItemView *)&v5 extraRightPadding];
  }

  return result;
}

- (int64_t)legibilityStyle
{
  if ([(UIView *)self clipsToBounds])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIStatusBarPersonNameItemView;
  return [(UIStatusBarItemView *)&v4 legibilityStyle];
}

- (id)accessibilityHUDRepresentation
{
  v2 = [[UIAccessibilityHUDItem alloc] initWithTitle:self->_personNameString image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v2;
}

@end