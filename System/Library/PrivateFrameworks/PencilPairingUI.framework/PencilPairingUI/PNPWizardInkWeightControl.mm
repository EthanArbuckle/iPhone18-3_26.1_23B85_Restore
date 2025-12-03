@interface PNPWizardInkWeightControl
- (CGSize)intrinsicContentSize;
- (PNPWizardInkWeightControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PNPWizardInkWeightControl

- (PNPWizardInkWeightControl)initWithFrame:(CGRect)frame
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PNPWizardInkWeightControl;
  v3 = [(PNPWizardInkWeightControl *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(PNPGradientView);
  gradient = v3->_gradient;
  v3->_gradient = v4;

  v6 = [MEMORY[0x277D75348] colorWithWhite:0.91 alpha:1.0];
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.67 alpha:1.0];
  gradientLayer = [(PNPGradientView *)v3->_gradient gradientLayer];
  v17[0] = [v6 CGColor];
  v17[1] = [v7 CGColor];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [gradientLayer setColors:v9];

  [gradientLayer setStartPoint:{0.0, 0.5}];
  [gradientLayer setEndPoint:{1.0, 0.5}];
  [gradientLayer setLocations:&unk_286FED3F8];
  [(PNPWizardInkWeightControl *)v3 addSubview:v3->_gradient];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  knob = v3->_knob;
  v3->_knob = v10;

  layer = [(UIView *)v3->_knob layer];
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.976 alpha:1.0];
  [layer setBorderColor:{objc_msgSend(v13, "CGColor")}];

  layer2 = [(UIView *)v3->_knob layer];
  [layer2 setBorderWidth:4.0];

  [(PNPWizardInkWeightControl *)v3 addSubview:v3->_knob];
  return v3;
}

- (void)layoutSubviews
{
  [(PNPWizardInkWeightControl *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PNPGradientView *)self->_gradient setFrame:?];
  [(PNPGradientView *)self->_gradient _setContinuousCornerRadius:v6 * 0.5];
  knob = self->_knob;
  _knobColor = [(PNPWizardInkWeightControl *)self _knobColor];
  [(UIView *)knob setBackgroundColor:_knobColor];

  [(PNPWizardInkWeightControl *)self intrinsicContentSize];
  v10 = v9 * 2.6;
  UIRectCenteredYInRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(PNPWizardInkWeightControl *)self value];
  [(UIView *)self->_knob setFrame:(v4 - v6) * v17, v12, v14, v16];
  v18 = self->_knob;

  [(UIView *)v18 _setCornerRadius:v10 * 0.5];
}

- (CGSize)intrinsicContentSize
{
  v2 = 100.0;
  v3 = 10.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end