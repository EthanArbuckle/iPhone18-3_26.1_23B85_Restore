@interface PREditingPickerCellView
- (PREditingPickerCellView)initWithFrame:(CGRect)frame;
- (UIColor)borderColor;
- (void)setBorderColor:(id)color;
- (void)setSelected:(BOOL)selected;
@end

@implementation PREditingPickerCellView

- (PREditingPickerCellView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PREditingPickerCellView;
  v3 = [(PREditingPickerCellView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PREditingPickerCellView *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    layer2 = [(PREditingPickerCellView *)v4 layer];
    [layer2 setCornerRadius:14.0];

    layer3 = [(PREditingPickerCellView *)v4 layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer3 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = PREditingPickerCellView;
  [(PREditingPickerCellView *)&v8 setSelected:?];
  layer = [(PREditingPickerCellView *)self layer];
  v6 = layer;
  v7 = 0.0;
  if (selectedCopy)
  {
    v7 = 3.0;
  }

  [layer setBorderWidth:v7];
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(PREditingPickerCellView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  layer = [(PREditingPickerCellView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v4;
}

@end