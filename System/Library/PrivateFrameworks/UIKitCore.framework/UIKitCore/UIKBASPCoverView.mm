@interface UIKBASPCoverView
+ (id)ASPCoverView:(BOOL)view withFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width;
- (id)initCoverBackgroundViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left;
- (id)initCoverViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width;
- (void)layoutSubviews;
@end

@implementation UIKBASPCoverView

+ (id)ASPCoverView:(BOOL)view withFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width
{
  leftCopy = left;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v13 = [UIKBASPCoverView alloc];
  if (viewCopy)
  {
    width = [(UIKBASPCoverView *)v13 initCoverViewWithFrame:leftCopy isRightToLeft:x withTextWidth:y, width, height, width];
  }

  else
  {
    width = [(UIKBASPCoverView *)v13 initCoverBackgroundViewWithFrame:leftCopy isRightToLeft:x, y, width, height];
  }

  return width;
}

- (id)initCoverBackgroundViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left
{
  v8.receiver = self;
  v8.super_class = UIKBASPCoverView;
  v4 = [(UIView *)&v8 initWithFrame:left, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIView *)v4 setUserInteractionEnabled:0];
    aSPCoverViewColor = [objc_opt_class() ASPCoverViewColor];
    [(UIView *)v5 setBackgroundColor:aSPCoverViewColor];
  }

  return v5;
}

- (id)initCoverViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width
{
  leftCopy = left;
  height = frame.size.height;
  v44[2] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = UIKBASPCoverView;
  v8 = [(UIView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width];
  p_isa = &v8->super.super.super.isa;
  if (v8)
  {
    [(UIView *)v8 setUserInteractionEnabled:0];
    v10 = +[UIColor clearColor];
    [p_isa setBackgroundColor:v10];

    layer = [MEMORY[0x1E6979380] layer];
    v12 = p_isa[51];
    p_isa[51] = layer;

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
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
    if (v21 * 0.45 <= width)
    {
      v23 = 0.1;
    }

    else
    {
      v23 = width * 0.1 / v21;
      v22 = width * 0.65 / v21;
    }

    if (leftCopy)
    {
      v23 = 1.0 - v23;
    }

    v24 = 1.0 - v22;
    if (leftCopy)
    {
      v25 = 1.0 - v22;
    }

    else
    {
      v25 = v22;
    }

    [p_isa[51] setStartPoint:{v23, 0.0}];
    [p_isa[51] setEndPoint:{v25, 0.0}];
    layer2 = [p_isa layer];
    [layer2 addSublayer:p_isa[51]];

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
      height = [[UILabel alloc] initWithFrame:0.0, 0.0, v24 * v32, height];
      [(UILabel *)height setUserInteractionEnabled:0];
      [(UILabel *)height setText:v27];
      [(UILabel *)height setFont:v28];
      v34 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
      [(UILabel *)height setTextColor:v34];

      [(UIView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
      [p_isa addSubview:height];
      array = [MEMORY[0x1E695DF70] array];
      if (leftCopy)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      v37 = -v15;
      if (leftCopy)
      {
        v37 = leftCopy;
      }

      v38 = [MEMORY[0x1E69977A0] constraintWithItem:height attribute:v36 relatedBy:0 toItem:p_isa attribute:v36 multiplier:1.0 constant:v37];
      [array addObject:v38];

      v39 = [MEMORY[0x1E69977A0] constraintWithItem:height attribute:10 relatedBy:0 toItem:p_isa attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v39];

      [MEMORY[0x1E69977A0] activateConstraints:array];
    }
  }

  return p_isa;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = UIKBASPCoverView;
  [(UIView *)&v11 layoutSubviews];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
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
  gradientLayer = [(UIKBASPCoverView *)self gradientLayer];
  [gradientLayer setFrame:{0.0, 0.0, v7, v9}];
}

@end