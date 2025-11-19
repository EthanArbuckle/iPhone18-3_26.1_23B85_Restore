@interface _TVTextBadge
+ (id)textBadgeViewWithElement:(id)a3 existingView:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation _TVTextBadge

+ (id)textBadgeViewWithElement:(id)a3 existingView:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v8 = [_TVTextBadge alloc];
    v7 = [(_TVTextBadge *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  v10 = [v6 style];
  v11 = [v10 tv_backgroundColor];
  v12 = [v11 color];
  [(_TVTextBadge *)v9 setBackgroundColor:v12];

  v13 = [v6 tv_attributedString];
  [(_TVTextBadge *)v9 setText:v13];
  v14 = [v6 attributes];
  v15 = [v14 objectForKeyedSubscript:@"type"];
  [(_TVTextBadge *)v9 setType:v15];

  v16 = [v6 style];
  v17 = [v16 tv_tintColor];
  v18 = [v17 color];
  [(_TVTextBadge *)v9 setTintColor:v18];

  v30 = TVCornerRadiiZero;
  v31 = *&qword_26CE880D8;
  [TVMLUtilities _cornerRadiiFromElement:v6 cornerRadii:&v30 circle:0];
  [TVCornerUtilities radiusFromCornerRadii:v30, v31];
  [(_TVTextBadge *)v9 setCornerRadius:?];
  v19 = [v6 style];

  [v19 tv_borderWidths];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = fmax(fmax(v21, v25), fmax(v23, v27));
  if (v28 < 1.0)
  {
    v28 = 2.0;
  }

  [(_TVTextBadge *)v9 setLineWidth:v28];
  [(_TVTextBadge *)v9 setNeedsDisplay];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self tv_padding:a3.width];
  v8 = v7;
  v9 = v5;
  v11 = v10;
  v12 = v6;
  if (width == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = width - v5 - v6;
  }

  v14 = [(_TVTextBadge *)self text];
  [v14 boundingRectWithSize:2 options:0 context:{v13, 0.0}];
  v21 = CGRectIntegral(v20);
  v15 = v21.size.width;
  height = v21.size.height;

  v17 = v12 + v9 + v15;
  v18 = v11 + v8 + height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self tv_padding];
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if ([(NSString *)self->_type isEqualToString:@"fill"])
  {
    v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, self->_cornerRadius}];
    [(UIColor *)self->_tintColor set];
    [v13 fill];
    CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
    v14 = [(_TVTextBadge *)self text];
    [v14 drawAtPoint:{v11, v9}];
  }

  else
  {
    v15 = [(_TVTextBadge *)self text];
    [v15 drawAtPoint:{v11, v9}];

    v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:1.0 cornerRadius:{1.0, width + -2.0, height + -2.0, self->_cornerRadius}];
    [(UIColor *)self->_tintColor set];
    [v13 setLineWidth:self->_lineWidth];
    [v13 stroke];
  }

  CGContextRestoreGState(CurrentContext);
}

@end