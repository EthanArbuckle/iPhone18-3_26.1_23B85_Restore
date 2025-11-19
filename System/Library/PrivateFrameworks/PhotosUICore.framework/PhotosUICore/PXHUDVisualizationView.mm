@interface PXHUDVisualizationView
- (PXHUDVisualizationView)initWithFrame:(CGRect)a3;
- (void)_updateTitleLabel;
@end

@implementation PXHUDVisualizationView

- (void)_updateTitleLabel
{
  v3 = [(PXHUDAbstractVisualizationView *)self visualization];
  v4 = [v3 title];
  [(UILabel *)self->_titleLabel setText:v4];

  v6 = [(PXHUDAbstractVisualizationView *)self visualization];
  v5 = [v6 color];
  [(UILabel *)self->_titleLabel setTextColor:v5];
}

- (PXHUDVisualizationView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXHUDVisualizationView;
  v3 = [(PXHUDVisualizationView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(PXHUDVisualizationView *)v3 addSubview:v3->_titleLabel];
    PXHUDCenterViewInSuperview(v3->_titleLabel);
  }

  return v3;
}

@end