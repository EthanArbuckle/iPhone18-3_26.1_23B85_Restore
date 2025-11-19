@interface TFDeviceInstructionView
+ (UIEdgeInsets)imageLayoutInsets;
+ (id)backgroundColor;
- (TFDeviceInstructionView)initWithFrame:(CGRect)a3;
- (void)displayDeviceImage:(id)a3 inOrientation:(int64_t)a4;
- (void)layoutSubviews;
- (void)updateCurrentDeviceImageToOrientation:(int64_t)a3;
@end

@implementation TFDeviceInstructionView

- (TFDeviceInstructionView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = TFDeviceInstructionView;
  v3 = [(TFDeviceInstructionView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    deviceImageView = v3->_deviceImageView;
    v3->_deviceImageView = v5;

    [(UIImageView *)v3->_deviceImageView setContentMode:1];
    [(TFDeviceInstructionView *)v3 addSubview:v3->_deviceImageView];
    v7 = +[TFDeviceInstructionView backgroundColor];
    [(TFDeviceInstructionView *)v3 setBackgroundColor:v7];

    +[TFDeviceInstructionView cornerRadius];
    v9 = v8;
    v10 = [(TFDeviceInstructionView *)v3 layer];
    [v10 setCornerRadius:v9];
  }

  return v3;
}

+ (id)backgroundColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.965 alpha:1.0];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.855 alpha:1.0];
  v5 = [v2 dynamicColorWithLightColor:v3 darkColor:v4];

  return v5;
}

+ (UIEdgeInsets)imageLayoutInsets
{
  v2 = 20.0;
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)displayDeviceImage:(id)a3 inOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = [(TFDeviceInstructionView *)self deviceImageView];
  [v7 setImage:v6];

  [(TFDeviceInstructionView *)self updateCurrentDeviceImageToOrientation:a4];
}

- (void)updateCurrentDeviceImageToOrientation:(int64_t)a3
{
  v4 = 0.0;
  if ((a3 - 2) <= 2)
  {
    v4 = dbl_26D313AF0[a3 - 2];
  }

  CGAffineTransformMakeRotation(&v7, v4);
  v5 = [(TFDeviceInstructionView *)self deviceImageView];
  v6 = v7;
  [v5 setTransform:&v6];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = TFDeviceInstructionView;
  [(TFDeviceInstructionView *)&v20 layoutSubviews];
  [(TFDeviceInstructionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  +[TFDeviceInstructionView imageLayoutInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v19 = [(TFDeviceInstructionView *)self deviceImageView];
  [v19 setFrame:{v12, v14, v16, v18}];
}

@end