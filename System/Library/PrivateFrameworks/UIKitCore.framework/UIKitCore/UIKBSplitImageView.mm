@interface UIKBSplitImageView
- (UIKBSplitImageView)initWithFrame:(CGRect)frame canStretchAsFullWidth:(BOOL)width;
- (void)addExtraFilters:(id)filters;
- (void)clearImages;
- (void)insertSubviewAtBottom:(id)bottom;
- (void)prepareForDisplay:(BOOL)display;
- (void)setContentsMultiplyColor:(id)color;
- (void)setFilterType:(id)type;
- (void)setImage:(id)image cachedWidth:(double)width keyplane:(id)keyplane;
- (void)setImage:(id)image splitLeft:(id)left splitRight:(id)right keyplane:(id)keyplane;
@end

@implementation UIKBSplitImageView

- (UIKBSplitImageView)initWithFrame:(CGRect)frame canStretchAsFullWidth:(BOOL)width
{
  v8.receiver = self;
  v8.super_class = UIKBSplitImageView;
  v5 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_canStretchAsFullWidth = width;
    [(UIView *)v5 setUserInteractionEnabled:0];
  }

  return v6;
}

- (void)setFilterType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:self->_currentFilterType] & 1) == 0)
  {
    objc_storeStrong(&self->_currentFilterType, type);
    if (typeCopy)
    {
      v5 = [MEMORY[0x1E6979378] filterWithType:?];
    }

    else
    {
      v5 = 0;
    }

    layer = [(UIView *)self layer];
    [layer setAllowsGroupBlending:v5 == 0];

    layer2 = [(UIView *)self->_fullView layer];
    [layer2 setCompositingFilter:v5];

    layer3 = [(UIView *)self->_splitLeft layer];
    [layer3 setCompositingFilter:v5];

    layer4 = [(UIView *)self->_splitRight layer];
    [layer4 setCompositingFilter:v5];
  }
}

- (void)addExtraFilters:(id)filters
{
  filtersCopy = filters;
  if (filtersCopy)
  {
    layer = [(UIView *)self layer];
    filters = [layer filters];

    v6 = filtersCopy;
    if (filters == filtersCopy)
    {
      goto LABEL_6;
    }

    layer2 = [(UIView *)self layer];
    [layer2 setAllowsGroupBlending:1];

    layer3 = [(UIView *)self layer];
    [layer3 setAllowsGroupOpacity:1];
    v9 = filtersCopy;
  }

  else
  {
    v10 = self->_currentFilterType == 0;
    layer3 = [(UIView *)self layer];
    [layer3 setAllowsGroupBlending:v10];
    v9 = MEMORY[0x1E695E0F0];
  }

  layer4 = [(UIView *)self layer];
  [layer4 setFilters:v9];

  v6 = filtersCopy;
LABEL_6:
}

- (void)prepareForDisplay:(BOOL)display
{
  displayCopy = display;
  if (display)
  {
    if (!self->_splitLeft)
    {
      v5 = [UIImageView alloc];
      v6 = [(UIImageView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      splitLeft = self->_splitLeft;
      self->_splitLeft = v6;

      [(UIView *)self->_splitLeft setUserInteractionEnabled:0];
      [(UIImageView *)self->_splitLeft setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self insertSubview:self->_splitLeft atIndex:self->_fullView != 0];
    }

    p_splitRight = &self->_splitRight;
    if (!self->_splitRight)
    {
      v9 = [UIImageView alloc];
      v10 = [(UIImageView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v11 = *p_splitRight;
      *p_splitRight = v10;

      [*p_splitRight setUserInteractionEnabled:0];
      [*p_splitRight setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self insertSubview:*p_splitRight aboveSubview:self->_splitLeft];
    }

    v12 = self->_splitLeft;
    if (!self->_splitConstraints)
    {
      v31 = MEMORY[0x1E695DEC8];
      topAnchor = [(UIView *)v12 topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_splitLeft bottomAnchor];
      v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      topAnchor3 = [*p_splitRight topAnchor];
      topAnchor4 = [(UIView *)self->_splitLeft topAnchor];
      v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      bottomAnchor3 = [*p_splitRight bottomAnchor];
      bottomAnchor4 = [(UIView *)self->_splitLeft bottomAnchor];
      v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      leftAnchor = [(UIView *)self->_splitLeft leftAnchor];
      leftAnchor2 = [(UIView *)self leftAnchor];
      v14 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      rightAnchor = [(UIView *)self rightAnchor];
      rightAnchor2 = [*p_splitRight rightAnchor];
      v17 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v18 = [v31 arrayWithObjects:{v39, v38, v27, v13, v14, v17, 0}];
      splitConstraints = self->_splitConstraints;
      self->_splitConstraints = v18;

      [MEMORY[0x1E69977A0] activateConstraints:self->_splitConstraints];
      v12 = self->_splitLeft;
    }

    [(UIImageView *)v12 setHidden:0];
    v20 = &OBJC_IVAR___UIKBSplitImageView__fullView;
  }

  else
  {
    fullView = self->_fullView;
    if (!fullView)
    {
      v22 = [UIImageView alloc];
      [(UIView *)self bounds];
      v23 = [(UIImageView *)v22 initWithFrame:?];
      v24 = self->_fullView;
      self->_fullView = v23;

      [(UIView *)self->_fullView setUserInteractionEnabled:0];
      if (!self->_canStretchAsFullWidth)
      {
        [(UIImageView *)self->_fullView setContentMode:5];
      }

      [(UIView *)self->_fullView setAutoresizingMask:18];
      [(UIView *)self insertSubview:self->_fullView atIndex:0];
      fullView = self->_fullView;
    }

    [(UIImageView *)fullView setHidden:0];
    v20 = &OBJC_IVAR___UIKBSplitImageView__splitRight;
    p_splitRight = &self->_splitLeft;
  }

  [*p_splitRight setHidden:!displayCopy];
  v25 = *(&self->super.super.super.isa + *v20);

  [v25 setHidden:1];
}

- (void)insertSubviewAtBottom:(id)bottom
{
  if (self->_splitRight)
  {
    [(UIView *)self insertSubview:bottom aboveSubview:?];
  }

  else
  {
    [(UIView *)self insertSubview:bottom atIndex:?];
  }
}

- (void)setContentsMultiplyColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = +[UIColor whiteColor];
  }

  if (![(UIView *)self->_splitLeft isHidden])
  {
    [(UIView *)self->_splitLeft setTintColor:colorCopy];
  }

  if (![(UIView *)self->_splitRight isHidden])
  {
    [(UIView *)self->_splitRight setTintColor:colorCopy];
  }

  if (![(UIView *)self->_fullView isHidden])
  {
    [(UIView *)self->_fullView setTintColor:colorCopy];
  }
}

- (void)setImage:(id)image splitLeft:(id)left splitRight:(id)right keyplane:(id)keyplane
{
  imageCopy = image;
  leftCopy = left;
  rightCopy = right;
  keyplaneCopy = keyplane;
  if (leftCopy && rightCopy)
  {
    [(UIKBSplitImageView *)self prepareForDisplay:1];
    [(UIImageView *)self->_splitLeft setImage:leftCopy];
    [keyplaneCopy frameForKeylayoutName:@"split-left"];
    v14 = v13;
    leftWidthConstraint = self->_leftWidthConstraint;
    if (!leftWidthConstraint)
    {
      widthAnchor = [(UIView *)self->_splitLeft widthAnchor];
      v17 = [widthAnchor constraintEqualToConstant:v14];
      v18 = self->_leftWidthConstraint;
      self->_leftWidthConstraint = v17;

      [(NSLayoutConstraint *)self->_leftWidthConstraint setActive:1];
      leftWidthConstraint = self->_leftWidthConstraint;
    }

    [(NSLayoutConstraint *)leftWidthConstraint setConstant:v14];
    [(UIImageView *)self->_splitRight setImage:rightCopy];
    [keyplaneCopy frameForKeylayoutName:@"split-right"];
    v20 = v19;
    rightWidthConstraint = self->_rightWidthConstraint;
    if (!rightWidthConstraint)
    {
      widthAnchor2 = [(UIView *)self->_splitRight widthAnchor];
      v23 = [widthAnchor2 constraintEqualToConstant:v20];
      v24 = self->_rightWidthConstraint;
      self->_rightWidthConstraint = v23;

      [(NSLayoutConstraint *)self->_rightWidthConstraint setActive:1];
      rightWidthConstraint = self->_rightWidthConstraint;
    }

    [(NSLayoutConstraint *)rightWidthConstraint setConstant:v20];
  }

  else if (imageCopy)
  {
    [(UIKBSplitImageView *)self prepareForDisplay:0];
    [(UIImageView *)self->_fullView setImage:imageCopy];
  }

  else
  {
    [(UIImageView *)self->_fullView setHidden:1];
    [(UIImageView *)self->_splitLeft setHidden:1];
    [(UIImageView *)self->_splitRight setHidden:1];
  }
}

- (void)setImage:(id)image cachedWidth:(double)width keyplane:(id)keyplane
{
  keyplaneCopy = keyplane;
  _imageThatSuppressesAccessibilityHairlineThickening = [image _imageThatSuppressesAccessibilityHairlineThickening];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = _imageThatSuppressesAccessibilityHairlineThickening;
    if ([v9 hasFormatColor])
    {
      _imageThatSuppressesAccessibilityHairlineThickening = [v9 imageWithRenderingMode:2];
    }

    else
    {
      _imageThatSuppressesAccessibilityHairlineThickening = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  [(UIView *)self bounds];
  v11 = v10;
  if (![keyplaneCopy isSplit] || v11 == width)
  {
    [(UIKBSplitImageView *)self setImage:_imageThatSuppressesAccessibilityHairlineThickening splitLeft:0 splitRight:0 keyplane:0];
    if (v9)
    {
      [v9 formatColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v12 = ;
    [(UIView *)self->_fullView setTintColor:v12];
  }

  else
  {
    v12 = _imageThatSuppressesAccessibilityHairlineThickening;
    [keyplaneCopy frameForKeylayoutName:@"split-left"];
    v14 = v13;
    [keyplaneCopy frameForKeylayoutName:@"split-right"];
    v16 = v15;
    [v12 size];
    if (v17 != width)
    {
      v16 = v17 - v14 + -3.0;
      [(UIView *)self bounds];
    }

    _imageThatSuppressesAccessibilityHairlineThickening = [v12 _stretchableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

    v18 = [_imageThatSuppressesAccessibilityHairlineThickening _resizableImageWithSubimageInsets:0.0 resizeInsets:{0.0, 0.0, v16 + 3.0, 0.0, 0.0, 0.0, 0.0}];
    v19 = [_imageThatSuppressesAccessibilityHairlineThickening _resizableImageWithSubimageInsets:0.0 resizeInsets:{v14 + 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}];
    [(UIKBSplitImageView *)self setImage:0 splitLeft:v18 splitRight:v19 keyplane:keyplaneCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v12;
      formatColor = [v20 formatColor];
      [(UIView *)self->_splitLeft setTintColor:formatColor];

      formatColor2 = [v20 formatColor];
    }

    else
    {
      v23 = +[UIColor whiteColor];
      [(UIView *)self->_splitLeft setTintColor:v23];

      formatColor2 = +[UIColor whiteColor];
    }

    [(UIView *)self->_splitRight setTintColor:formatColor2];
  }
}

- (void)clearImages
{
  [(UIImageView *)self->_fullView setImage:0];
  [(UIImageView *)self->_splitLeft setImage:0];
  splitRight = self->_splitRight;

  [(UIImageView *)splitRight setImage:0];
}

@end