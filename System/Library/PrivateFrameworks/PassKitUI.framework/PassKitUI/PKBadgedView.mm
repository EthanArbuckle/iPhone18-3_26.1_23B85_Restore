@interface PKBadgedView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)text;
- (PKBadgedView)initWithView:(id)view text:(id)text;
- (UIEdgeInsets)alignmentRectInsets;
- (uint64_t)_updateBadgeSize;
- (void)layoutSubviews;
- (void)setText:(id)text;
- (void)sizeToFit;
@end

@implementation PKBadgedView

- (PKBadgedView)initWithView:(id)view text:(id)text
{
  v36[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  textCopy = text;
  if (!viewCopy)
  {
    __break(1u);
  }

  v9 = textCopy;
  v34.receiver = self;
  v34.super_class = PKBadgedView;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(PKBadgedView *)&v34 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_view, view);
    [(PKBadgedView *)v15 addSubview:v15->_view];
    v16 = [PKButtonBadgeView alloc];
    v17 = v9;
    if (v16)
    {
      v35.receiver = v16;
      v35.super_class = PKButtonBadgeView;
      v18 = [(PKBadgedView *)&v35 initWithFrame:v10, v11, v12, v13];
      if (v18)
      {
        v19 = [v17 copy];
        top = v18->_alignmentInsets.top;
        *&v18->_alignmentInsets.top = v19;

        v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v10, v11, v12, v13}];
        badge = v18->_badge;
        v18->_badge = v21;

        [(PKButtonBadgeView *)v18->_badge setText:*&v18->_alignmentInsets.top];
        v23 = v18->_badge;
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(PKButtonBadgeView *)v23 setTextColor:whiteColor];

        v25 = v18->_badge;
        v26 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:10.0];
        [(PKButtonBadgeView *)v25 setFont:v26];

        [(PKButtonBadgeView *)v18->_badge setTextAlignment:1];
        [(PKBadgedView *)v18 addSubview:v18->_badge];
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        [(PKBadgedView *)v18 setBackgroundColor:systemRedColor];

        layer = [(PKBadgedView *)v18 layer];
        whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
        [layer setBorderColor:{objc_msgSend(whiteColor2, "CGColor")}];

        [layer setBorderWidth:1.0];
        [layer setMasksToBounds:1];
      }
    }

    else
    {
      v18 = 0;
    }

    v30 = v15->_badge;
    v15->_badge = v18;

    [(PKBadgedView *)v15 addSubview:v15->_badge];
    [(PKBadgedView *)v15 _updateBadgeSize];
    v36[0] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v32 = [(PKBadgedView *)v15 registerForTraitChanges:v31 withHandler:&__block_literal_global_65];
  }

  return v15;
}

- (uint64_t)_updateBadgeSize
{
  if (result)
  {
    v1 = result;
    [*(result + 408) sizeToFit];
    [*(v1 + 408) frame];
    effectiveUserInterfaceLayoutDirection = [v1 effectiveUserInterfaceLayoutDirection];
    PKFloatRoundToPixel();
    v4 = v3;
    PKFloatRoundToPixel();
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0.0;
    }

    *(v1 + 416) = v5;
    *(v1 + 424) = v6;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v4;
    }

    *(v1 + 432) = 0;
    *(v1 + 440) = v7;

    return [v1 setNeedsLayout];
  }

  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentInsets.top;
  left = self->_alignmentInsets.left;
  bottom = self->_alignmentInsets.bottom;
  right = self->_alignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKBadgedView;
  [(PKBadgedView *)&v5 layoutSubviews];
  [(PKBadgedView *)self effectiveUserInterfaceLayoutDirection];
  [(PKBadgedView *)self bounds];
  view = self->_view;
  [(UIView *)view frame];
  [(UIView *)view alignmentRectForFrame:?];
  PKSizeAlignedInRect();
  [(UIView *)view frameForAlignmentRect:?];
  [(UIView *)view setFrame:?];
  badge = self->_badge;
  [(PKButtonBadgeView *)badge frame];
  PKSizeAlignedInRect();
  [(PKButtonBadgeView *)badge setFrame:?];
}

- (NSString)text
{
  badge = self->_badge;
  if (badge)
  {
    return badge->_text;
  }

  else
  {
    return 0;
  }
}

- (void)setText:(id)text
{
  badge = self->_badge;
  if (badge)
  {
    v5 = [text copy];
    text = badge->_text;
    badge->_text = v5;

    [(UILabel *)badge->_label setText:badge->_text];
  }

  [(PKBadgedView *)self _updateBadgeSize];
}

- (void)sizeToFit
{
  v15.receiver = self;
  v15.super_class = PKBadgedView;
  [(PKBadgedView *)&v15 sizeToFit];
  [(PKBadgedView *)self bounds];
  v3 = *&self->_alignmentInsets.top;
  v5.f64[1] = v4;
  v6 = vaddq_f64(v5, v3);
  v8.f64[1] = v7;
  v9 = vsubq_f64(v8, vaddq_f64(v3, *&self->_alignmentInsets.bottom));
  __asm { FMOV            V4.2D, #0.5 }

  [(PKBadgedView *)self setAnchorPoint:COERCE_DOUBLE(*&vdivq_f64(vsubq_f64(vmlaq_f64(v6, _Q4, v9), v5), v8).f64[1])];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  view = self->_view;
  [(UIView *)view frame:fits.width];
  [(UIView *)view alignmentRectForFrame:?];
  v6 = self->_alignmentInsets.left + v5 + self->_alignmentInsets.right;
  v8 = v7 + self->_alignmentInsets.top + self->_alignmentInsets.bottom;
  result.height = v8;
  result.width = v6;
  return result;
}

@end