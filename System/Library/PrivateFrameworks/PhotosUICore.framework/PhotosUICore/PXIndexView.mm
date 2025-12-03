@interface PXIndexView
- (PXIndexView)init;
- (void)layoutSubviews;
- (void)setIndex:(unint64_t)index;
@end

@implementation PXIndexView

- (void)setIndex:(unint64_t)index
{
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", index];
  [(UILabel *)self->_label setText:index];

  [(PXIndexView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PXIndexView;
  [(PXIndexView *)&v11 layoutSubviews];
  [(PXIndexView *)self bounds];
  v4 = v3;
  v6 = v5 + -1.0;
  [(UILabel *)self->_label setFrame:0.0, 1.0];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0];
  [(UILabel *)self->_label setFont:v7];

  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label bounds];
  v9 = v8;
  v10 = v4 - (v8 + 8.0);
  [(UIView *)self->_frameView setFrame:v10, 0.0];
  [(UILabel *)self->_label setFrame:v10 + 4.0, 1.0, v9, v6];
}

- (PXIndexView)init
{
  v16.receiver = self;
  v16.super_class = PXIndexView;
  v2 = [(PXIndexView *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    frameView = v2->_frameView;
    v2->_frameView = v3;

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v6 = [systemBackgroundColor colorWithAlphaComponent:0.5];
    [(UIView *)v2->_frameView setBackgroundColor:v6];

    layer = [(UIView *)v2->_frameView layer];
    [layer setCornerRadius:3.0];

    layer2 = [(UIView *)v2->_frameView layer];
    [layer2 setBorderWidth:1.0];

    grayColor = [MEMORY[0x1E69DC888] grayColor];
    cGColor = [grayColor CGColor];
    layer3 = [(UIView *)v2->_frameView layer];
    [layer3 setBorderColor:cGColor];

    [(PXIndexView *)v2 addSubview:v2->_frameView];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v2->_label;
    v2->_label = v12;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:labelColor];

    [(UILabel *)v2->_label setTextAlignment:1];
    [(PXIndexView *)v2 addSubview:v2->_label];
  }

  return v2;
}

@end