@interface _TVTextBadge
+ (id)textBadgeViewWithElement:(id)element existingView:(id)view;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawRect:(CGRect)rect;
@end

@implementation _TVTextBadge

+ (id)textBadgeViewWithElement:(id)element existingView:(id)view
{
  viewCopy = view;
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v8 = [_TVTextBadge alloc];
    v7 = [(_TVTextBadge *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  v9 = v7;
  style = [elementCopy style];
  tv_backgroundColor = [style tv_backgroundColor];
  color = [tv_backgroundColor color];
  [(_TVTextBadge *)v9 setBackgroundColor:color];

  tv_attributedString = [elementCopy tv_attributedString];
  [(_TVTextBadge *)v9 setText:tv_attributedString];
  attributes = [elementCopy attributes];
  v15 = [attributes objectForKeyedSubscript:@"type"];
  [(_TVTextBadge *)v9 setType:v15];

  style2 = [elementCopy style];
  tv_tintColor = [style2 tv_tintColor];
  color2 = [tv_tintColor color];
  [(_TVTextBadge *)v9 setTintColor:color2];

  v30 = TVCornerRadiiZero;
  v31 = *&qword_26CE880D8;
  [TVMLUtilities _cornerRadiiFromElement:elementCopy cornerRadii:&v30 circle:0];
  [TVCornerUtilities radiusFromCornerRadii:v30, v31];
  [(_TVTextBadge *)v9 setCornerRadius:?];
  style3 = [elementCopy style];

  [style3 tv_borderWidths];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self tv_padding:fits.width];
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

  text = [(_TVTextBadge *)self text];
  [text boundingRectWithSize:2 options:0 context:{v13, 0.0}];
  v21 = CGRectIntegral(v20);
  v15 = v21.size.width;
  height = v21.size.height;

  v17 = v12 + v9 + v15;
  v18 = v11 + v8 + height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
    text = [(_TVTextBadge *)self text];
    [text drawAtPoint:{v11, v9}];
  }

  else
  {
    text2 = [(_TVTextBadge *)self text];
    [text2 drawAtPoint:{v11, v9}];

    v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:1.0 cornerRadius:{1.0, width + -2.0, height + -2.0, self->_cornerRadius}];
    [(UIColor *)self->_tintColor set];
    [v13 setLineWidth:self->_lineWidth];
    [v13 stroke];
  }

  CGContextRestoreGState(CurrentContext);
}

@end