@interface SVMaterialButton
- (SVMaterialButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SVMaterialButton

- (SVMaterialButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SVMaterialButton;
  v3 = [(SVButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB8590]);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(AVBackgroundView *)v3->_backgroundView setUserInteractionEnabled:0];
    [(AVBackgroundView *)v3->_backgroundView setAutomaticallyDrawsRoundedCorners:0];
    [(SVMaterialButton *)v3 addSubview:v3->_backgroundView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SVMaterialButton;
  [(SVMaterialButton *)&v4 layoutSubviews];
  backgroundView = [(SVMaterialButton *)self backgroundView];
  [(SVMaterialButton *)self bounds];
  [backgroundView setFrame:?];
}

@end