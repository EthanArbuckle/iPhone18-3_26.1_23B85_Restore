@interface PXHUDVisualizationView
- (PXHUDVisualizationView)initWithFrame:(CGRect)frame;
- (void)_updateTitleLabel;
@end

@implementation PXHUDVisualizationView

- (void)_updateTitleLabel
{
  visualization = [(PXHUDAbstractVisualizationView *)self visualization];
  title = [visualization title];
  [(UILabel *)self->_titleLabel setText:title];

  visualization2 = [(PXHUDAbstractVisualizationView *)self visualization];
  color = [visualization2 color];
  [(UILabel *)self->_titleLabel setTextColor:color];
}

- (PXHUDVisualizationView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXHUDVisualizationView;
  v3 = [(PXHUDVisualizationView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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