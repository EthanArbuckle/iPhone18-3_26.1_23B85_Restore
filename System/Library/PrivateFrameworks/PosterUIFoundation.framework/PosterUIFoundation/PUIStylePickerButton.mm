@interface PUIStylePickerButton
- (PUIStylePickerButton)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation PUIStylePickerButton

- (PUIStylePickerButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PUIStylePickerButton;
  v3 = [(PUIStylePickerButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PUIStylePickerButton *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];

    layer2 = [(PUIStylePickerButton *)v4 layer];
    [layer2 setCornerRadius:14.0];

    layer3 = [(PUIStylePickerButton *)v4 layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer3 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = PUIStylePickerButton;
  [(PUIStylePickerButton *)&v8 setSelected:?];
  layer = [(PUIStylePickerButton *)self layer];
  v6 = layer;
  v7 = 0.0;
  if (selectedCopy)
  {
    v7 = 3.0;
  }

  [layer setBorderWidth:v7];
}

@end