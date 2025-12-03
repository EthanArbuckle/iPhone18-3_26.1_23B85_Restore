@interface PXHUDBoxedValueVisualizationView
- (PXHUDBoxedValueVisualizationView)initWithFrame:(CGRect)frame;
- (void)_updateTitleAndValueLabel;
@end

@implementation PXHUDBoxedValueVisualizationView

- (void)_updateTitleAndValueLabel
{
  v3 = MEMORY[0x1E696AEC0];
  visualization = [(PXHUDAbstractVisualizationView *)self visualization];
  title = [visualization title];
  visualization2 = [(PXHUDAbstractVisualizationView *)self visualization];
  value = [visualization2 value];
  v8 = [v3 stringWithFormat:@"%@: %@", title, value];
  [(UILabel *)self->_titleAndValueLabel setText:v8];

  visualization3 = [(PXHUDAbstractVisualizationView *)self visualization];
  color = [visualization3 color];
  [(UILabel *)self->_titleAndValueLabel setTextColor:color];
}

- (PXHUDBoxedValueVisualizationView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXHUDBoxedValueVisualizationView;
  v3 = [(PXHUDBoxedValueVisualizationView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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