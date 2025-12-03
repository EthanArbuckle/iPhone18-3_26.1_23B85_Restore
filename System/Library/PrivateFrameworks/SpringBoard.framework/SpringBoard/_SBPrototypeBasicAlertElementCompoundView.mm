@interface _SBPrototypeBasicAlertElementCompoundView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_SBPrototypeBasicAlertElementCompoundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLayoutAxis:(unint64_t)axis;
- (void)setLeadingImage:(id)image;
- (void)setTrailingImage:(id)image;
@end

@implementation _SBPrototypeBasicAlertElementCompoundView

- (_SBPrototypeBasicAlertElementCompoundView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _SBPrototypeBasicAlertElementCompoundView;
  result = [(_SBPrototypeBasicAlertElementCompoundView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_layoutAxis = 1;
  }

  return result;
}

- (void)setLeadingImage:(id)image
{
  imageCopy = image;
  leadingImage = [(_SBPrototypeBasicAlertElementCompoundView *)self leadingImage];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = imageCopy;
    if (imageCopy && !self->_leadingImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      leadingImageView = self->_leadingImageView;
      self->_leadingImageView = v7;

      [(_SBPrototypeBasicAlertElementCompoundView *)self addSubview:self->_leadingImageView];
      v6 = imageCopy;
    }

    [(UIImageView *)self->_leadingImageView setImage:v6];
    [(_SBPrototypeBasicAlertElementCompoundView *)self setNeedsLayout];
  }
}

- (void)setTrailingImage:(id)image
{
  imageCopy = image;
  trailingImage = [(_SBPrototypeBasicAlertElementCompoundView *)self trailingImage];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    v6 = imageCopy;
    if (imageCopy && !self->_trailingImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      trailingImageView = self->_trailingImageView;
      self->_trailingImageView = v7;

      [(_SBPrototypeBasicAlertElementCompoundView *)self addSubview:self->_trailingImageView];
      v6 = imageCopy;
    }

    [(UIImageView *)self->_trailingImageView setImage:v6];
    [(_SBPrototypeBasicAlertElementCompoundView *)self setNeedsLayout];
  }
}

- (void)setLayoutAxis:(unint64_t)axis
{
  if (axis - 1 <= 1 && self->_layoutAxis != axis)
  {
    self->_layoutAxis = axis;
    [(_SBPrototypeBasicAlertElementCompoundView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIImageView *)self->_leadingImageView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  trailingImage = [(_SBPrototypeBasicAlertElementCompoundView *)self trailingImage];

  if (trailingImage)
  {
    [(UIImageView *)self->_trailingImageView sizeThatFits:width, height];
    if (self->_layoutAxis == 2)
    {
      if (v7 < v11)
      {
        v7 = v11;
      }

      v9 = v9 + v12 + 4.0;
    }

    else
    {
      v7 = v7 + v11 + 4.0;
      if (v9 < v12)
      {
        v9 = v12;
      }
    }
  }

  v13 = v7;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = _SBPrototypeBasicAlertElementCompoundView;
  [(_SBPrototypeBasicAlertElementCompoundView *)&v34 layoutSubviews];
  [(_SBPrototypeBasicAlertElementCompoundView *)self bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [(_SBPrototypeBasicAlertElementCompoundView *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  [(UIImageView *)self->_leadingImageView sizeThatFits:v4, v6];
  BSRectWithSize();
  UIRectRoundToScale();
  x = v10;
  y = v12;
  width = v14;
  height = v16;
  trailingImage = [(_SBPrototypeBasicAlertElementCompoundView *)self trailingImage];

  if (trailingImage)
  {
    [(UIImageView *)self->_trailingImageView sizeThatFits:v4, v6];
    BSRectWithSize();
    rect = v19;
    rect_8 = v20;
    v22 = v21;
    rect_16 = v23;
    traitCollection2 = [(_SBPrototypeBasicAlertElementCompoundView *)self traitCollection];
    layoutDirection = [traitCollection2 layoutDirection];

    if (self->_layoutAxis == 2)
    {
      UIRectCenteredXInRectScale();
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      CGRectGetMaxY(v35);
      UIRectCenteredXInRectScale();
      [(UIImageView *)self->_trailingImageView setFrame:v9];
    }

    else
    {
      UIRectCenteredYInRectScale();
      x = v26;
      y = v27;
      width = v28;
      v30 = v29;
      if (layoutDirection == 1)
      {
        CGRectGetMinX(*&v26);
        v36.origin.x = rect;
        v36.origin.y = v22;
        v36.size.width = rect_8;
        v36.size.height = rect_16;
        CGRectGetWidth(v36);
      }

      else
      {
        CGRectGetMaxX(*&v26);
      }

      UIRectCenteredYInRectScale();
      height = v30;
      [(UIImageView *)self->_trailingImageView setFrame:v9];
    }
  }

  [(UIImageView *)self->_leadingImageView setFrame:x, y, width, height];
}

@end