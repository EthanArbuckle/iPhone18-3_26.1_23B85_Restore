@interface PUIStylePickerButton
- (PUIStylePickerButton)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PUIStylePickerButton

- (PUIStylePickerButton)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PUIStylePickerButton;
  v3 = [(PUIStylePickerButton *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUIStylePickerButton *)v3 layer];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];

    v6 = [(PUIStylePickerButton *)v4 layer];
    [v6 setCornerRadius:14.0];

    v7 = [(PUIStylePickerButton *)v4 layer];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PUIStylePickerButton;
  [(PUIStylePickerButton *)&v8 setSelected:?];
  v5 = [(PUIStylePickerButton *)self layer];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    v7 = 3.0;
  }

  [v5 setBorderWidth:v7];
}

@end