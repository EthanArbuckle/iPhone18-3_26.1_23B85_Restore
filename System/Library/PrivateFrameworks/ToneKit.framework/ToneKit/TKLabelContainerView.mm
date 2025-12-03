@interface TKLabelContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (TKLabelContainerView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)labelPaddingInsets;
- (UIOffset)labelShadowOffset;
- (void)layoutSubviews;
- (void)setLabelFont:(id)font;
- (void)setLabelPaddingInsets:(UIEdgeInsets)insets;
- (void)setLabelText:(id)text;
@end

@implementation TKLabelContainerView

- (TKLabelContainerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TKLabelContainerView;
  v3 = [(TKLabelContainerView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TKLabelContainerView *)v3 setBackgroundColor:clearColor];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    [(UILabel *)v3->_label setBackgroundColor:clearColor];
    [(TKLabelContainerView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setLabelText:(id)text
{
  textCopy = text;
  text = [(UILabel *)self->_label text];

  v5 = textCopy;
  if (text != textCopy)
  {
    [(UILabel *)self->_label setText:textCopy];
    [(UILabel *)self->_label sizeToFit];
    [(TKLabelContainerView *)self setNeedsLayout];
    v5 = textCopy;
  }
}

- (void)setLabelFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_label font];

  v5 = fontCopy;
  if (font != fontCopy)
  {
    [(UILabel *)self->_label setFont:fontCopy];
    [(UILabel *)self->_label sizeToFit];
    [(TKLabelContainerView *)self setNeedsLayout];
    v5 = fontCopy;
  }
}

- (UIOffset)labelShadowOffset
{
  [(UILabel *)self->_label shadowOffset];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setLabelPaddingInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_labelPaddingInsets.top, v3), vceqq_f64(*&self->_labelPaddingInsets.bottom, v4)))) & 1) == 0)
  {
    self->_labelPaddingInsets = insets;
    [(TKLabelContainerView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(TKLabelContainerView *)self labelPaddingInsets:fits.width];
  v6 = v5;
  v8 = v7;
  [(UILabel *)self->_label frame];
  v9 = v8 + v6 + CGRectGetHeight(v12);
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = TKLabelContainerView;
  [(TKLabelContainerView *)&v24 layoutSubviews];
  [(TKLabelContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TKLabelContainerView *)self safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(TKLabelContainerView *)self labelPaddingInsets];
  v18 = v14 + v17;
  v20 = v12 + v19;
  v22 = v16 + v21;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v23 = fmax(CGRectGetWidth(v25) - v18 - v22, 0.0);
  [(UILabel *)self->_label frame];
  [(UILabel *)self->_label setFrame:v18, v20, v23];
}

- (UIEdgeInsets)labelPaddingInsets
{
  top = self->_labelPaddingInsets.top;
  left = self->_labelPaddingInsets.left;
  bottom = self->_labelPaddingInsets.bottom;
  right = self->_labelPaddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end