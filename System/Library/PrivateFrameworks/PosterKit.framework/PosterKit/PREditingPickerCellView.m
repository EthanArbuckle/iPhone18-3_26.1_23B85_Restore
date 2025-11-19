@interface PREditingPickerCellView
- (PREditingPickerCellView)initWithFrame:(CGRect)a3;
- (UIColor)borderColor;
- (void)setBorderColor:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PREditingPickerCellView

- (PREditingPickerCellView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PREditingPickerCellView;
  v3 = [(PREditingPickerCellView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PREditingPickerCellView *)v3 layer];
    [v5 setCornerCurve:*MEMORY[0x1E69796E8]];

    v6 = [(PREditingPickerCellView *)v4 layer];
    [v6 setCornerRadius:14.0];

    v7 = [(PREditingPickerCellView *)v4 layer];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = PREditingPickerCellView;
  [(PREditingPickerCellView *)&v8 setSelected:?];
  v5 = [(PREditingPickerCellView *)self layer];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    v7 = 3.0;
  }

  [v5 setBorderWidth:v7];
}

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v6 = [(PREditingPickerCellView *)self layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(PREditingPickerCellView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "borderColor")}];

  return v4;
}

@end