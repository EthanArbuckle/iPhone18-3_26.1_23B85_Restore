@interface PXHUDBoxedValueVisualizationView
- (PXHUDBoxedValueVisualizationView)initWithFrame:(CGRect)a3;
- (void)_updateTitleAndValueLabel;
@end

@implementation PXHUDBoxedValueVisualizationView

- (void)_updateTitleAndValueLabel
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXHUDAbstractVisualizationView *)self visualization];
  v5 = [v4 title];
  v6 = [(PXHUDAbstractVisualizationView *)self visualization];
  v7 = [v6 value];
  v8 = [v3 stringWithFormat:@"%@: %@", v5, v7];
  [(UILabel *)self->_titleAndValueLabel setText:v8];

  v10 = [(PXHUDAbstractVisualizationView *)self visualization];
  v9 = [v10 color];
  [(UILabel *)self->_titleAndValueLabel setTextColor:v9];
}

- (PXHUDBoxedValueVisualizationView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXHUDBoxedValueVisualizationView;
  v3 = [(PXHUDBoxedValueVisualizationView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleAndValueLabel = v3->_titleAndValueLabel;
    v3->_titleAndValueLabel = v4;

    [(UILabel *)v3->_titleAndValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v3->_titleAndValueLabel setFont:v6];

    [(PXHUDBoxedValueVisualizationView *)v3 addSubview:v3->_titleAndValueLabel];
    PXHUDCenterViewInSuperview(v3->_titleAndValueLabel);
  }

  return v3;
}

@end