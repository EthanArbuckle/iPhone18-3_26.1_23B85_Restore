@interface _UIDebugDot
+ (id)dotWithTitle:(id)title color:(id)color diameter:(double)diameter;
@end

@implementation _UIDebugDot

+ (id)dotWithTitle:(id)title color:(id)color diameter:(double)diameter
{
  colorCopy = color;
  titleCopy = title;
  v9 = [_UIDebugDot alloc];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  diameter = [[UIView alloc] initWithFrame:0.0, 0.0, diameter, diameter];
  [(UIView *)diameter _setCornerRadius:diameter * 0.5];
  [(UIView *)diameter setBackgroundColor:colorCopy];
  v16 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)diameter setCenter:*MEMORY[0x1E695EFF8], v17];
  layer = [(UIView *)diameter layer];
  [layer setAllowsEdgeAntialiasing:1];

  [(UIView *)v14 addSubview:diameter];
  v19 = [[UILabel alloc] initWithFrame:v10, v11, v12, v13];
  [(UILabel *)v19 setText:titleCopy];

  [(UILabel *)v19 setTextAlignment:1];
  v20 = +[UIColor whiteColor];
  [(UILabel *)v19 setTextColor:v20];

  v21 = [off_1E70ECC18 boldSystemFontOfSize:9.0];
  [(UILabel *)v19 setFont:v21];

  [(UIView *)v19 setAnchorPoint:v16, v17];
  [(UIView *)v19 setBackgroundColor:colorCopy];
  [(UIView *)v19 sizeToFit];
  [(UIView *)v19 bounds];
  v29 = CGRectInset(v28, -3.0, -1.0);
  [(UILabel *)v19 setBounds:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  [(UIView *)v19 setCenter:9.0, 3.0];
  cGColor = [colorCopy CGColor];

  layer2 = [(UIView *)v19 layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(UIView *)v19 layer];
  [layer3 setBorderWidth:1.0];

  layer4 = [(UIView *)v19 layer];
  [layer4 setAllowsEdgeAntialiasing:1];

  [(UIView *)v19 _setContinuousCornerRadius:3.0];
  [(UIView *)v19 setClipsToBounds:1];
  [(UIView *)v14 addSubview:v19];

  return v14;
}

@end