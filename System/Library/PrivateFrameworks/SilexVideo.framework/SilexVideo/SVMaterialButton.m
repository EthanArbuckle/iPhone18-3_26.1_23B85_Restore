@interface SVMaterialButton
- (SVMaterialButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SVMaterialButton

- (SVMaterialButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SVMaterialButton;
  v3 = [(SVButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(SVMaterialButton *)self backgroundView];
  [(SVMaterialButton *)self bounds];
  [v3 setFrame:?];
}

@end