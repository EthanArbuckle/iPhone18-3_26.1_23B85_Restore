@interface UIKBASPCoverView
+ (id)ASPCoverView:(BOOL)a3 withFrame:(CGRect)a4 isRightToLeft:(BOOL)a5 withTextWidth:(double)a6;
- (id)initCoverBackgroundViewWithFrame:(CGRect)a3 isRightToLeft:(BOOL)a4;
- (id)initCoverViewWithFrame:(CGRect)a3 isRightToLeft:(BOOL)a4 withTextWidth:(double)a5;
- (void)layoutSubviews;
@end

@implementation UIKBASPCoverView

+ (id)ASPCoverView:(BOOL)a3 withFrame:(CGRect)a4 isRightToLeft:(BOOL)a5 withTextWidth:(double)a6
{
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = [UIKBASPCoverView alloc];
  if (v12)
  {
    v14 = [(UIKBASPCoverView *)v13 initCoverViewWithFrame:v7 isRightToLeft:x withTextWidth:y, width, height, a6];
  }

  else
  {
    v14 = [(UIKBASPCoverView *)v13 initCoverBackgroundViewWithFrame:v7 isRightToLeft:x, y, width, height];
  }

  return v14;
}

- (id)initCoverBackgroundViewWithFrame:(CGRect)a3 isRightToLeft:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = UIKBASPCoverView;
  v4 = [(UIView *)&v8 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setUserInteractionEnabled:0];
    v6 = [objc_opt_class() ASPCoverViewColor];
    [(UIView *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (id)initCoverViewWithFrame:(CGRect)a3 isRightToLeft:(BOOL)a4 withTextWidth:(double)a5
{
  v6 = a4;
  height = a3.size.height;
  v44[2] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = UIKBASPCoverView;
  v8 = [(UIView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width];
  p_isa = &v8->super.super.super.isa;
  if (v8)
  {
    [(UIView *)v8 setUserInteractionEnabled:0];
    v10 = +[UIColor clearColor];
    [p_isa setBackgroundColor:v10];

    v11 = [MEMORY[0x1E6979380] layer];
    v12 = p_isa[51];
    p_isa[51] = v11;

    v13 = [objc_opt_self() mainScreen];
    [v13 scale];
    if (v14 == 3.0)
    {
      v15 = 4.0;
    }

    else
    {
      v15 = 6.0;
    }

    [p_isa bounds];
    v17 = v16 - v15;
    [p_isa bounds];
    [p_isa[51] setFrame:{0.0, 0.0, v17}];
    v18 = [UIColor colorWithRed:0.980392157 green:1.0 blue:0.741176471 alpha:0.0];
    v44[0] = [v18 CGColor];
    v19 = [UIColor colorWithRed:0.980392157 green:1.0 blue:0.741176471 alpha:1.0];
    v44[1] = [v19 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];

    [p_isa[51] setColors:v20];
    [p_isa[51] frame];
    v22 = 0.45;
    if (v21 * 0.45 <= a5)
    {
      v23 = 0.1;
    }

    else
    {
      v23 = a5 * 0.1 / v21;
      v22 = a5 * 0.65 / v21;
    }

    if (v6)
    {
      v23 = 1.0 - v23;
    }

    v24 = 1.0 - v22;
    if (v6)
    {
      v25 = 1.0 - v22;
    }

    else
    {
      v25 = v22;
    }

    [p_isa[51] setStartPoint:{v23, 0.0}];
    [p_isa[51] setEndPoint:{v25, 0.0}];
    v26 = [p_isa layer];
    [v26 addSublayer:p_isa[51]];

    v27 = _UINSLocalizedStringWithDefaultValue(@"Strong Password", @"Strong Password");
    v28 = [off_1E70ECC18 systemFontOfSize:14.0 weight:*off_1E70ECD20];
    v42 = *off_1E70EC918;
    v43 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [v27 sizeWithAttributes:v29];
    v31 = v30;
    [p_isa[51] frame];
    if (v31 < v24 * v32)
    {
      v33 = [[UILabel alloc] initWithFrame:0.0, 0.0, v24 * v32, height];
      [(UILabel *)v33 setUserInteractionEnabled:0];
      [(UILabel *)v33 setText:v27];
      [(UILabel *)v33 setFont:v28];
      v34 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
      [(UILabel *)v33 setTextColor:v34];

      [(UIView *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      [p_isa addSubview:v33];
      v35 = [MEMORY[0x1E695DF70] array];
      if (v6)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      v37 = -v15;
      if (v6)
      {
        v37 = v6;
      }

      v38 = [MEMORY[0x1E69977A0] constraintWithItem:v33 attribute:v36 relatedBy:0 toItem:p_isa attribute:v36 multiplier:1.0 constant:v37];
      [v35 addObject:v38];

      v39 = [MEMORY[0x1E69977A0] constraintWithItem:v33 attribute:10 relatedBy:0 toItem:p_isa attribute:10 multiplier:1.0 constant:0.0];
      [v35 addObject:v39];

      [MEMORY[0x1E69977A0] activateConstraints:v35];
    }
  }

  return p_isa;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = UIKBASPCoverView;
  [(UIView *)&v11 layoutSubviews];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  if (v4 == 3.0)
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 6.0;
  }

  [(UIView *)self bounds];
  v7 = v6 - v5;
  [(UIView *)self bounds];
  v9 = v8;
  v10 = [(UIKBASPCoverView *)self gradientLayer];
  [v10 setFrame:{0.0, 0.0, v7, v9}];
}

@end