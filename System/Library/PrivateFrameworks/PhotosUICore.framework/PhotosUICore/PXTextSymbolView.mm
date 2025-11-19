@interface PXTextSymbolView
- (PXTextSymbolView)init;
- (PXTextSymbolView)initWithSymbol:(id)a3;
- (void)layoutSubviews;
- (void)setSymbol:(id)a3;
@end

@implementation PXTextSymbolView

- (void)setSymbol:(id)a3
{
  if (a3)
  {
    [(UILabel *)self->_label setText:a3];
  }

  [(PXTextSymbolView *)self setHidden:a3 == 0];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXTextSymbolView;
  [(PXTextSymbolView *)&v5 layoutSubviews];
  [(PXTextSymbolView *)self bounds];
  v7 = CGRectInset(v6, -5.0, -5.0);
  [(UILabel *)self->_label setFrame:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
  label = self->_label;
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [(UILabel *)label setFont:v4];
}

- (PXTextSymbolView)initWithSymbol:(id)a3
{
  v4 = a3;
  v5 = [(PXTextSymbolView *)self init];
  v6 = v5;
  if (v5)
  {
    [(PXTextSymbolView *)v5 setSymbol:v4];
  }

  return v6;
}

- (PXTextSymbolView)init
{
  v6.receiver = self;
  v6.super_class = PXTextSymbolView;
  v2 = [(PXTextSymbolView *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v2->_label;
    v2->_label = v3;

    [(UILabel *)v2->_label setTextAlignment:1];
    [(PXTextSymbolView *)v2 addSubview:v2->_label];
  }

  return v2;
}

@end