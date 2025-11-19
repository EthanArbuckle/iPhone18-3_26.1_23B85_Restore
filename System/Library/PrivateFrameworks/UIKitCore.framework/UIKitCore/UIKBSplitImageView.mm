@interface UIKBSplitImageView
- (UIKBSplitImageView)initWithFrame:(CGRect)a3 canStretchAsFullWidth:(BOOL)a4;
- (void)addExtraFilters:(id)a3;
- (void)clearImages;
- (void)insertSubviewAtBottom:(id)a3;
- (void)prepareForDisplay:(BOOL)a3;
- (void)setContentsMultiplyColor:(id)a3;
- (void)setFilterType:(id)a3;
- (void)setImage:(id)a3 cachedWidth:(double)a4 keyplane:(id)a5;
- (void)setImage:(id)a3 splitLeft:(id)a4 splitRight:(id)a5 keyplane:(id)a6;
@end

@implementation UIKBSplitImageView

- (UIKBSplitImageView)initWithFrame:(CGRect)a3 canStretchAsFullWidth:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = UIKBSplitImageView;
  v5 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_canStretchAsFullWidth = a4;
    [(UIView *)v5 setUserInteractionEnabled:0];
  }

  return v6;
}

- (void)setFilterType:(id)a3
{
  v10 = a3;
  if (([v10 isEqualToString:self->_currentFilterType] & 1) == 0)
  {
    objc_storeStrong(&self->_currentFilterType, a3);
    if (v10)
    {
      v5 = [MEMORY[0x1E6979378] filterWithType:?];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(UIView *)self layer];
    [v6 setAllowsGroupBlending:v5 == 0];

    v7 = [(UIView *)self->_fullView layer];
    [v7 setCompositingFilter:v5];

    v8 = [(UIView *)self->_splitLeft layer];
    [v8 setCompositingFilter:v5];

    v9 = [(UIView *)self->_splitRight layer];
    [v9 setCompositingFilter:v5];
  }
}

- (void)addExtraFilters:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [(UIView *)self layer];
    v5 = [v4 filters];

    v6 = v12;
    if (v5 == v12)
    {
      goto LABEL_6;
    }

    v7 = [(UIView *)self layer];
    [v7 setAllowsGroupBlending:1];

    v8 = [(UIView *)self layer];
    [v8 setAllowsGroupOpacity:1];
    v9 = v12;
  }

  else
  {
    v10 = self->_currentFilterType == 0;
    v8 = [(UIView *)self layer];
    [v8 setAllowsGroupBlending:v10];
    v9 = MEMORY[0x1E695E0F0];
  }

  v11 = [(UIView *)self layer];
  [v11 setFilters:v9];

  v6 = v12;
LABEL_6:
}

- (void)prepareForDisplay:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
      v37 = [(UIView *)v12 topAnchor];
      v36 = [(UIView *)self topAnchor];
      v39 = [v37 constraintEqualToAnchor:v36];
      v35 = [(UIView *)self bottomAnchor];
      v34 = [(UIView *)self->_splitLeft bottomAnchor];
      v38 = [v35 constraintEqualToAnchor:v34];
      v33 = [*p_splitRight topAnchor];
      v32 = [(UIView *)self->_splitLeft topAnchor];
      v27 = [v33 constraintEqualToAnchor:v32];
      v30 = [*p_splitRight bottomAnchor];
      v29 = [(UIView *)self->_splitLeft bottomAnchor];
      v13 = [v30 constraintEqualToAnchor:v29];
      v28 = [(UIView *)self->_splitLeft leftAnchor];
      v26 = [(UIView *)self leftAnchor];
      v14 = [v28 constraintEqualToAnchor:v26];
      v15 = [(UIView *)self rightAnchor];
      v16 = [*p_splitRight rightAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
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

  [*p_splitRight setHidden:!v3];
  v25 = *(&self->super.super.super.isa + *v20);

  [v25 setHidden:1];
}

- (void)insertSubviewAtBottom:(id)a3
{
  if (self->_splitRight)
  {
    [(UIView *)self insertSubview:a3 aboveSubview:?];
  }

  else
  {
    [(UIView *)self insertSubview:a3 atIndex:?];
  }
}

- (void)setContentsMultiplyColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[UIColor whiteColor];
  }

  if (![(UIView *)self->_splitLeft isHidden])
  {
    [(UIView *)self->_splitLeft setTintColor:v4];
  }

  if (![(UIView *)self->_splitRight isHidden])
  {
    [(UIView *)self->_splitRight setTintColor:v4];
  }

  if (![(UIView *)self->_fullView isHidden])
  {
    [(UIView *)self->_fullView setTintColor:v4];
  }
}

- (void)setImage:(id)a3 splitLeft:(id)a4 splitRight:(id)a5 keyplane:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10 && v11)
  {
    [(UIKBSplitImageView *)self prepareForDisplay:1];
    [(UIImageView *)self->_splitLeft setImage:v10];
    [v12 frameForKeylayoutName:@"split-left"];
    v14 = v13;
    leftWidthConstraint = self->_leftWidthConstraint;
    if (!leftWidthConstraint)
    {
      v16 = [(UIView *)self->_splitLeft widthAnchor];
      v17 = [v16 constraintEqualToConstant:v14];
      v18 = self->_leftWidthConstraint;
      self->_leftWidthConstraint = v17;

      [(NSLayoutConstraint *)self->_leftWidthConstraint setActive:1];
      leftWidthConstraint = self->_leftWidthConstraint;
    }

    [(NSLayoutConstraint *)leftWidthConstraint setConstant:v14];
    [(UIImageView *)self->_splitRight setImage:v11];
    [v12 frameForKeylayoutName:@"split-right"];
    v20 = v19;
    rightWidthConstraint = self->_rightWidthConstraint;
    if (!rightWidthConstraint)
    {
      v22 = [(UIView *)self->_splitRight widthAnchor];
      v23 = [v22 constraintEqualToConstant:v20];
      v24 = self->_rightWidthConstraint;
      self->_rightWidthConstraint = v23;

      [(NSLayoutConstraint *)self->_rightWidthConstraint setActive:1];
      rightWidthConstraint = self->_rightWidthConstraint;
    }

    [(NSLayoutConstraint *)rightWidthConstraint setConstant:v20];
  }

  else if (v25)
  {
    [(UIKBSplitImageView *)self prepareForDisplay:0];
    [(UIImageView *)self->_fullView setImage:v25];
  }

  else
  {
    [(UIImageView *)self->_fullView setHidden:1];
    [(UIImageView *)self->_splitLeft setHidden:1];
    [(UIImageView *)self->_splitRight setHidden:1];
  }
}

- (void)setImage:(id)a3 cachedWidth:(double)a4 keyplane:(id)a5
{
  v8 = a5;
  v24 = [a3 _imageThatSuppressesAccessibilityHairlineThickening];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v24;
    if ([v9 hasFormatColor])
    {
      v24 = [v9 imageWithRenderingMode:2];
    }

    else
    {
      v24 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  [(UIView *)self bounds];
  v11 = v10;
  if (![v8 isSplit] || v11 == a4)
  {
    [(UIKBSplitImageView *)self setImage:v24 splitLeft:0 splitRight:0 keyplane:0];
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
    v12 = v24;
    [v8 frameForKeylayoutName:@"split-left"];
    v14 = v13;
    [v8 frameForKeylayoutName:@"split-right"];
    v16 = v15;
    [v12 size];
    if (v17 != a4)
    {
      v16 = v17 - v14 + -3.0;
      [(UIView *)self bounds];
    }

    v24 = [v12 _stretchableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

    v18 = [v24 _resizableImageWithSubimageInsets:0.0 resizeInsets:{0.0, 0.0, v16 + 3.0, 0.0, 0.0, 0.0, 0.0}];
    v19 = [v24 _resizableImageWithSubimageInsets:0.0 resizeInsets:{v14 + 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}];
    [(UIKBSplitImageView *)self setImage:0 splitLeft:v18 splitRight:v19 keyplane:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v12;
      v21 = [v20 formatColor];
      [(UIView *)self->_splitLeft setTintColor:v21];

      v22 = [v20 formatColor];
    }

    else
    {
      v23 = +[UIColor whiteColor];
      [(UIView *)self->_splitLeft setTintColor:v23];

      v22 = +[UIColor whiteColor];
    }

    [(UIView *)self->_splitRight setTintColor:v22];
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