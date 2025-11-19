@interface CACEditingModeOverlayLabelView
- (CACEditingModeOverlayLabelView)initWithFrame:(CGRect)a3;
- (void)setLabel:(id)a3;
@end

@implementation CACEditingModeOverlayLabelView

- (CACEditingModeOverlayLabelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v16.receiver = self;
  v16.super_class = CACEditingModeOverlayLabelView;
  v5 = [(CACEditingModeOverlayLabelView *)&v16 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, width, height}];
  labelView = v5->_labelView;
  v5->_labelView = v6;

  [(UILabel *)v5->_labelView setTextAlignment:1];
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(UILabel *)v5->_labelView setTextColor:v8];

  [(CACEditingModeOverlayLabelView *)v5 addSubview:v5->_labelView];
  v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [(CACEditingModeOverlayLabelView *)v5 setBackgroundColor:v9];

  v10 = [MEMORY[0x277D75348] blackColor];
  v11 = [v10 CGColor];
  v12 = [(CACEditingModeOverlayLabelView *)v5 layer];
  [v12 setBorderColor:v11];

  v13 = [(CACEditingModeOverlayLabelView *)v5 layer];
  [v13 setBorderWidth:1.0];

  v14 = [(CACEditingModeOverlayLabelView *)v5 layer];
  [v14 setCornerRadius:8.0];

  return v5;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  [(UILabel *)self->_labelView setText:v5];
}

@end