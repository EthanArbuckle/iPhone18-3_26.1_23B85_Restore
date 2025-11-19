@interface PKPassFaceBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)textPadding;
- (PKPassFaceBadgeView)init;
- (void)_maskAllCorners;
- (void)layoutSubviews;
- (void)setField:(id)a3;
- (void)setFont:(id)a3;
- (void)setTextPadding:(NSDirectionalEdgeInsets)a3;
@end

@implementation PKPassFaceBadgeView

- (PKPassFaceBadgeView)init
{
  v15.receiver = self;
  v15.super_class = PKPassFaceBadgeView;
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v6 = [(PKPassFaceBadgeView *)&v15 initWithFrame:*MEMORY[0x1E695F058], v3, v4, v5];
  v7 = v6;
  if (v6)
  {
    [(PKPassFaceBadgeView *)v6 _maskAllCorners];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    body = v7->_body;
    v7->_body = v8;

    [(UILabel *)v7->_body setNumberOfLines:1];
    v10 = v7->_body;
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10 setBackgroundColor:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v2, v3, v4, v5}];
    contentView = v7->_contentView;
    v7->_contentView = v12;

    [(UIView *)v7->_contentView addSubview:v7->_body];
    [(PKPassFaceBadgeView *)v7 addSubview:v7->_contentView];
  }

  return v7;
}

- (void)layoutSubviews
{
  p_textPadding = &self->_textPadding;
  v4 = [(PKPassFaceBadgeView *)self _shouldReverseLayoutDirection];
  top = p_textPadding->top;
  leading = p_textPadding->leading;
  bottom = p_textPadding->bottom;
  trailing = p_textPadding->trailing;
  if (v4)
  {
    v9 = p_textPadding->trailing;
  }

  else
  {
    v9 = p_textPadding->leading;
  }

  [(PKPassFaceBadgeView *)self bounds];
  v12 = top + v11;
  v14 = v13 - (leading + trailing);
  v16 = v15 - (top + bottom);
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)self->_contentView setFrame:v9 + v10, v12, v14, v16];
  body = self->_body;

  [(UILabel *)body setFrame:v17, v18, v14, v16];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_body sizeThatFits:a3.width, a3.height];
  PKSizeCeilToPixel(v4, v5, v6);
  v8 = v7 + self->_textPadding.leading + self->_textPadding.trailing;
  v10 = v9 + self->_textPadding.top + self->_textPadding.bottom;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)setField:(id)a3
{
  v7 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_field, a3);
    body = self->_body;
    v6 = [v7 value];
    [(UILabel *)body setText:v6];

    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v4 = [(PKPassFaceBadgeView *)self font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_body setFont:v6];
    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)setTextPadding:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textPadding.top, v3), vceqq_f64(*&self->_textPadding.bottom, v4)))) & 1) == 0)
  {
    self->_textPadding = a3;
    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)_maskAllCorners
{
  v2 = [(PKPassFaceBadgeView *)self layer];
  [v2 setMaskedCorners:15];
  [v2 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v2 setCornerRadius:5.0];
  [v2 setMasksToBounds:1];
}

- (NSDirectionalEdgeInsets)textPadding
{
  top = self->_textPadding.top;
  leading = self->_textPadding.leading;
  bottom = self->_textPadding.bottom;
  trailing = self->_textPadding.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end