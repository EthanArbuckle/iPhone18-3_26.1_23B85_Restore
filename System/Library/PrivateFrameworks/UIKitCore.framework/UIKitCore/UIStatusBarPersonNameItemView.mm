@interface UIStatusBarPersonNameItemView
- (BOOL)_updateWithPersonName:(id)name maxWidth:(double)width;
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)addContentOverlap:(double)overlap;
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

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:rawData + 3049 encoding:4];
  LOBYTE(self) = [(UIStatusBarPersonNameItemView *)self _updateWithPersonName:v6 maxWidth:1.79769313e308];

  return self;
}

- (BOOL)_updateWithPersonName:(id)name maxWidth:(double)width
{
  v27[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([(NSString *)self->_personNameString isEqualToString:nameCopy])
  {
    if (self->_maxWidth == width)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = [nameCopy copy];
    personNameString = self->_personNameString;
    self->_personNameString = v8;
  }

  v25 = nameCopy;
  self->_maxWidth = width;
  self->_letterSpacing = 0.0;
  [(UIView *)self setClipsToBounds:0];
  v10 = [(UIStatusBarItemView *)self cachedImageWithText:self->_personNameString truncatedWithEllipsesAtMaxWidth:1.79769313e308 letterSpacing:self->_letterSpacing];
  image = [v10 image];

  v24 = image;
  [image size];
  if (v12 <= width)
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
      textFont = [(UIStatusBarItemView *)self textFont];
      v17 = objc_alloc_init(off_1E70ECB98);
      v18 = self->_personNameString;
      v26[1] = v14;
      v27[0] = textFont;
      v26[0] = v13;
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_letterSpacing];
      v27[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
      [(NSString *)v18 boundingRectWithSize:33 options:v20 attributes:v17 context:1.79769313e308, 1.79769313e308];
      v22 = v21;

      if (v22 <= width)
      {
        goto LABEL_12;
      }
    }

    self->_letterSpacing = 0.0;
  }

LABEL_12:

  v7 = 1;
  nameCopy = v25;
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

- (double)addContentOverlap:(double)overlap
{
  [(UIView *)self frame];
  v6 = v5 - overlap;
  if (v5 - overlap < 20.0)
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