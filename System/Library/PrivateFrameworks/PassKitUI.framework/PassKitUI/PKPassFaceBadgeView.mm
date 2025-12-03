@interface PKPassFaceBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)textPadding;
- (PKPassFaceBadgeView)init;
- (void)_maskAllCorners;
- (void)layoutSubviews;
- (void)setField:(id)field;
- (void)setFont:(id)font;
- (void)setTextPadding:(NSDirectionalEdgeInsets)padding;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v10 setBackgroundColor:clearColor];

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
  _shouldReverseLayoutDirection = [(PKPassFaceBadgeView *)self _shouldReverseLayoutDirection];
  top = p_textPadding->top;
  leading = p_textPadding->leading;
  bottom = p_textPadding->bottom;
  trailing = p_textPadding->trailing;
  if (_shouldReverseLayoutDirection)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_body sizeThatFits:fits.width, fits.height];
  PKSizeCeilToPixel(v4, v5, v6);
  v8 = v7 + self->_textPadding.leading + self->_textPadding.trailing;
  v10 = v9 + self->_textPadding.top + self->_textPadding.bottom;
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)setField:(id)field
{
  fieldCopy = field;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_field, field);
    body = self->_body;
    value = [fieldCopy value];
    [(UILabel *)body setText:value];

    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(PKPassFaceBadgeView *)self font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_body setFont:fontCopy];
    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)setTextPadding:(NSDirectionalEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.leading;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textPadding.top, v3), vceqq_f64(*&self->_textPadding.bottom, v4)))) & 1) == 0)
  {
    self->_textPadding = padding;
    [(PKPassFaceBadgeView *)self setNeedsLayout];
  }
}

- (void)_maskAllCorners
{
  layer = [(PKPassFaceBadgeView *)self layer];
  [layer setMaskedCorners:15];
  [layer setCornerCurve:*MEMORY[0x1E69796E8]];
  [layer setCornerRadius:5.0];
  [layer setMasksToBounds:1];
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