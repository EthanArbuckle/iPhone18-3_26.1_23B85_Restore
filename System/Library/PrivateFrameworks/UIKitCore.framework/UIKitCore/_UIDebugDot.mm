@interface _UIDebugDot
+ (id)dotWithTitle:(id)a3 color:(id)a4 diameter:(double)a5;
@end

@implementation _UIDebugDot

+ (id)dotWithTitle:(id)a3 color:(id)a4 diameter:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [_UIDebugDot alloc];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  v15 = [[UIView alloc] initWithFrame:0.0, 0.0, a5, a5];
  [(UIView *)v15 _setCornerRadius:a5 * 0.5];
  [(UIView *)v15 setBackgroundColor:v7];
  v16 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)v15 setCenter:*MEMORY[0x1E695EFF8], v17];
  v18 = [(UIView *)v15 layer];
  [v18 setAllowsEdgeAntialiasing:1];

  [(UIView *)v14 addSubview:v15];
  v19 = [[UILabel alloc] initWithFrame:v10, v11, v12, v13];
  [(UILabel *)v19 setText:v8];

  [(UILabel *)v19 setTextAlignment:1];
  v20 = +[UIColor whiteColor];
  [(UILabel *)v19 setTextColor:v20];

  v21 = [off_1E70ECC18 boldSystemFontOfSize:9.0];
  [(UILabel *)v19 setFont:v21];

  [(UIView *)v19 setAnchorPoint:v16, v17];
  [(UIView *)v19 setBackgroundColor:v7];
  [(UIView *)v19 sizeToFit];
  [(UIView *)v19 bounds];
  v29 = CGRectInset(v28, -3.0, -1.0);
  [(UILabel *)v19 setBounds:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  [(UIView *)v19 setCenter:9.0, 3.0];
  v22 = [v7 CGColor];

  v23 = [(UIView *)v19 layer];
  [v23 setBorderColor:v22];

  v24 = [(UIView *)v19 layer];
  [v24 setBorderWidth:1.0];

  v25 = [(UIView *)v19 layer];
  [v25 setAllowsEdgeAntialiasing:1];

  [(UIView *)v19 _setContinuousCornerRadius:3.0];
  [(UIView *)v19 setClipsToBounds:1];
  [(UIView *)v14 addSubview:v19];

  return v14;
}

@end