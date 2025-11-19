@interface TKLabelContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (TKLabelContainerView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)labelPaddingInsets;
- (UIOffset)labelShadowOffset;
- (void)layoutSubviews;
- (void)setLabelFont:(id)a3;
- (void)setLabelPaddingInsets:(UIEdgeInsets)a3;
- (void)setLabelText:(id)a3;
@end

@implementation TKLabelContainerView

- (TKLabelContainerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TKLabelContainerView;
  v3 = [(TKLabelContainerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(TKLabelContainerView *)v3 setBackgroundColor:v4];
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    [(UILabel *)v3->_label setBackgroundColor:v4];
    [(TKLabelContainerView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setLabelText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_label text];

  v5 = v6;
  if (v4 != v6)
  {
    [(UILabel *)self->_label setText:v6];
    [(UILabel *)self->_label sizeToFit];
    [(TKLabelContainerView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setLabelFont:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_label font];

  v5 = v6;
  if (v4 != v6)
  {
    [(UILabel *)self->_label setFont:v6];
    [(UILabel *)self->_label sizeToFit];
    [(TKLabelContainerView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (UIOffset)labelShadowOffset
{
  [(UILabel *)self->_label shadowOffset];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setLabelPaddingInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_labelPaddingInsets.top, v3), vceqq_f64(*&self->_labelPaddingInsets.bottom, v4)))) & 1) == 0)
  {
    self->_labelPaddingInsets = a3;
    [(TKLabelContainerView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(TKLabelContainerView *)self labelPaddingInsets:a3.width];
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