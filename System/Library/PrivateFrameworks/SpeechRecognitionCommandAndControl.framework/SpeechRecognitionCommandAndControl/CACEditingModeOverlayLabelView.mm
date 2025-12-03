@interface CACEditingModeOverlayLabelView
- (CACEditingModeOverlayLabelView)initWithFrame:(CGRect)frame;
- (void)setLabel:(id)label;
@end

@implementation CACEditingModeOverlayLabelView

- (CACEditingModeOverlayLabelView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v16.receiver = self;
  v16.super_class = CACEditingModeOverlayLabelView;
  v5 = [(CACEditingModeOverlayLabelView *)&v16 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, width, height}];
  labelView = v5->_labelView;
  v5->_labelView = v6;

  [(UILabel *)v5->_labelView setTextAlignment:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v5->_labelView setTextColor:whiteColor];

  [(CACEditingModeOverlayLabelView *)v5 addSubview:v5->_labelView];
  v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(CACEditingModeOverlayLabelView *)v5 setBackgroundColor:v9];

  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  layer = [(CACEditingModeOverlayLabelView *)v5 layer];
  [layer setBorderColor:cGColor];

  layer2 = [(CACEditingModeOverlayLabelView *)v5 layer];
  [layer2 setBorderWidth:1.0];

  layer3 = [(CACEditingModeOverlayLabelView *)v5 layer];
  [layer3 setCornerRadius:8.0];

  return v5;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  [(UILabel *)self->_labelView setText:labelCopy];
}

@end