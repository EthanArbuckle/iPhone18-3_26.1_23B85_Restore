@interface _UIDragBadge
- (CGPoint)anchorPointForAlignment;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (_UIDragBadge)initWithCoder:(id)coder;
- (_UIDragBadge)initWithFrame:(CGRect)frame;
- (void)_updateForStyle;
- (void)_updateLabelTextFromItemCount;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setItemCount:(int64_t)count;
- (void)setStyle:(int64_t)style;
@end

@implementation _UIDragBadge

- (_UIDragBadge)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIDragBadge;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    CommonInit_0(v3);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIDragBadge;
  coderCopy = coder;
  [(UIView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_itemCount forKey:{@"UIDragBadgeItemCount", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_style forKey:@"UIDragBadgeStyle"];
}

- (_UIDragBadge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIDragBadge;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_itemCount = [coderCopy decodeIntegerForKey:@"UIDragBadgeItemCount"];
    v5->_style = [coderCopy decodeIntegerForKey:@"UIDragBadgeStyle"];
    CommonInit_0(v5);
  }

  return v5;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setItemCount:(int64_t)count
{
  if (self->_itemCount != count)
  {
    self->_itemCount = count;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateLabelTextFromItemCount
{
  if (qword_1ED49A5F8 != -1)
  {
    dispatch_once(&qword_1ED49A5F8, &__block_literal_global_191);
  }

  if (self->_itemCount >= 2)
  {
    v3 = _MergedGlobals_5_7;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v9 = [v3 stringFromNumber:v4];

    [v9 rangeOfComposedCharacterSequencesForRange:{0, objc_msgSend(v9, "length")}];
    v6 = v5;
    [(UILabel *)self->_label setText:v9];
    if (v6 <= 1)
    {
      if (qword_1ED49A618 == -1)
      {
        v7 = &qword_1ED49A610;
        goto LABEL_10;
      }

      v7 = &qword_1ED49A610;
      v8 = &__block_literal_global_52_0;
    }

    else
    {
      if (qword_1ED49A628 == -1)
      {
        v7 = &qword_1ED49A620;
LABEL_10:
        [(UILabel *)self->_label setFont:*v7];

        return;
      }

      v7 = &qword_1ED49A620;
      v8 = &__block_literal_global_54;
    }

    dispatch_once(v7 + 1, v8);
    goto LABEL_10;
  }
}

- (void)_updateForStyle
{
  style = self->_style;
  if (style == 2)
  {
    v6 = _AXDarkenSystemColors();
    v2 = +[UIColor systemGrayColor];
    if (v6)
    {
      v7 = [UIColor _accessibilityDarkenedColorForColor:v2];

      v2 = v7;
    }
  }

  else
  {
    if (style == 1)
    {
      if (_AXDarkenSystemColors())
      {
        +[UIColor systemDarkGreenColor];
      }

      else
      {
        +[UIColor systemGreenColor];
      }
    }

    else
    {
      if (style)
      {
        goto LABEL_13;
      }

      if (_AXDarkenSystemColors())
      {
        +[UIColor systemDarkBlueColor];
      }

      else
      {
        +[UIColor systemBlueColor];
      }
    }
    v5 = ;
    v2 = v5;
  }

LABEL_13:
  [(UIView *)self setBackgroundColor:v2];

  layer = [(UIView *)self layer];
  [layer setBorderWidth:1.0];

  v9 = +[UIColor whiteColor];
  cGColor = [v9 CGColor];
  layer2 = [(UIView *)self layer];
  [layer2 setBorderColor:cGColor];

  v12 = self->_style;
  traitCollection = [(UIView *)self traitCollection];
  if (v12 == 1)
  {
    v14 = @"plus";
    goto LABEL_17;
  }

  if (v12 == 2)
  {
    v14 = @"nosign";
LABEL_17:
    v15 = [UIImage systemImageNamed:v14 compatibleWithTraitCollection:traitCollection];
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:

  [(UIImageView *)self->_imageView setImage:v15];
  [(UIView *)self->_imageView sizeToFit];

  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  [(_UIDragBadge *)self _updateForStyle];
  if (self->_itemCount < 2)
  {
    [(UIView *)self->_label setHidden:1];
    [(UIView *)self->_imageView setAlpha:1.0];
    [(UIView *)self bounds];
    [(UIImageView *)self->_imageView setCenter:v12 + v11 * 0.5, v14 + v13 * 0.5];
    if (self->_style)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    imageView = self;
  }

  else
  {
    [(_UIDragBadge *)self _updateLabelTextFromItemCount];
    [(UIView *)self->_label setHidden:0];
    [(UIView *)self setAlpha:1.0];
    if (self->_style)
    {
      effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
      memset(&slice, 0, sizeof(slice));
      v4 = effectiveUserInterfaceLayoutDirection != UIUserInterfaceLayoutDirectionLeftToRight;
      v5 = effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionLeftToRight;
      memset(&remainder, 0, sizeof(remainder));
      memset(&v18, 0, sizeof(v18));
      [(UIView *)self bounds];
      CGRectDivide(v22, &slice, &remainder, 25.0, (2 * v4));
      memset(&v17, 0, sizeof(v17));
      CGRectDivide(remainder, &v17, &v18, 6.0, (2 * v5));
      [(UILabel *)self->_label setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
      [(UIView *)self->_imageView setAlpha:1.0];
      __asm { FMOV            V2.2D, #0.5 }

      [(UIImageView *)self->_imageView setCenter:vaddq_f64(slice.origin, vmulq_f64(slice.size, _Q2))];
      return;
    }

    [(UIView *)self bounds];
    v24 = CGRectInset(v23, 6.0, 0.0);
    [(UILabel *)self->_label setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    imageView = self->_imageView;
    v15 = 0.0;
  }

  [imageView setAlpha:v15];
}

- (CGPoint)anchorPointForAlignment
{
  itemCount = self->_itemCount;
  if (itemCount > 9 || ((v5 = 0.5, itemCount >= 2) ? (v6 = self->_style == 0) : (v6 = 1), !v6))
  {
    [(_UIDragBadge *)self _intrinsicSizeWithinSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v2, v3];
    v5 = -12.5 / v7 + 1.0;
  }

  v8 = 0.5;
  result.y = v8;
  result.x = v5;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v3 = 25.0;
  if (self->_itemCount >= 2)
  {
    [(UIView *)self->_label systemLayoutSizeFittingSize:size.width, size.height, 25.0];
    v6 = 31.0;
    if (!self->_style)
    {
      v6 = 12.0;
    }

    v7 = v5 + v6;
    if (v7 >= 25.0)
    {
      v3 = v7;
    }

    else
    {
      v3 = 25.0;
    }
  }

  v8 = 25.0;
  v9 = v3;
  result.height = v8;
  result.width = v9;
  return result;
}

@end