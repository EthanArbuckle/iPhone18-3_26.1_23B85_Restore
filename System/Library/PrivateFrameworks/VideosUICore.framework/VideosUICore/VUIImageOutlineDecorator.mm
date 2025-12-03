@interface VUIImageOutlineDecorator
+ (id)decoratorWithOutlineColor:(id)color outlineWidths:(UIEdgeInsets)widths;
- (BOOL)isEqual:(id)equal;
- (UIEdgeInsets)outlineWidths;
- (VUIImageOutlineDecorator)initWithOutlineColor:(id)color outlineWidths:(UIEdgeInsets)widths;
- (id)decoratorIdentifier;
- (unint64_t)hash;
- (void)drawInContext:(id)context imageRect:(CGRect)rect;
@end

@implementation VUIImageOutlineDecorator

+ (id)decoratorWithOutlineColor:(id)color outlineWidths:(UIEdgeInsets)widths
{
  right = widths.right;
  bottom = widths.bottom;
  left = widths.left;
  top = widths.top;
  colorCopy = color;
  right = [[VUIImageOutlineDecorator alloc] initWithOutlineColor:colorCopy outlineWidths:top, left, bottom, right];

  return right;
}

- (VUIImageOutlineDecorator)initWithOutlineColor:(id)color outlineWidths:(UIEdgeInsets)widths
{
  right = widths.right;
  bottom = widths.bottom;
  left = widths.left;
  top = widths.top;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = VUIImageOutlineDecorator;
  v11 = [(VUIImageScaleDecorator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outlineColor, color);
    v12->_outlineWidths.top = top;
    v12->_outlineWidths.left = left;
    v12->_outlineWidths.bottom = bottom;
    v12->_outlineWidths.right = right;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v22.receiver = self;
  v22.super_class = VUIImageOutlineDecorator;
  if ([(VUIImageScaleDecorator *)&v22 isEqual:equalCopy])
  {
    outlineColor = [(VUIImageOutlineDecorator *)self outlineColor];
    outlineColor2 = [equalCopy outlineColor];
    if ([outlineColor isEqual:outlineColor2])
    {
      [(VUIImageOutlineDecorator *)self outlineWidths];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [equalCopy outlineWidths];
      v18 = v10 == v17;
      if (v8 != v19)
      {
        v18 = 0;
      }

      if (v14 != v16)
      {
        v18 = 0;
      }

      v20 = v12 == v15 && v18;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VUIImageOutlineDecorator;
  return [(VUIImageScaleDecorator *)&v3 hash];
}

- (id)decoratorIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15.receiver = self;
  v15.super_class = VUIImageOutlineDecorator;
  decoratorIdentifier = [(VUIImageScaleDecorator *)&v15 decoratorIdentifier];
  v5 = decoratorIdentifier;
  if (decoratorIdentifier)
  {
    [v3 appendFormat:@"%@_", decoratorIdentifier];
  }

  top = self->_outlineWidths.top;
  left = self->_outlineWidths.left;
  bottom = self->_outlineWidths.bottom;
  right = self->_outlineWidths.right;
  [v3 appendFormat:@"_bw(%.f, %.f, %.f, %.f)", top, left, bottom, right];
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  [(UIColor *)self->_outlineColor getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
  [v3 appendFormat:@"_bc(%.1f, %.1f, %.1f, %.1f)", v14, v13, v12, v11];

  return v3;
}

- (void)drawInContext:(id)context imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  [(VUIImageOutlineDecorator *)self outlineWidths];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(VUIImageScaleDecorator *)self _focusedSizeIncreaseFactor];
  v14 = v13;
  v15 = v13 <= 0.0;
  v16 = v6 * v13;
  v17 = v10 * v14;
  if (v15)
  {
    v18 = v12;
  }

  else
  {
    v18 = v12 * v14;
  }

  if (v15)
  {
    v17 = v10;
  }

  v40 = v17;
  if (v15)
  {
    v19 = v8;
  }

  else
  {
    v19 = v8 * v14;
  }

  if (v15)
  {
    v20 = v6;
  }

  else
  {
    v20 = v16;
  }

  [(UIColor *)self->_outlineColor set:v16];
  [(VUIImageScaleDecorator *)self cornerRadii];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if ([VUICoreUtilities radiiIsZero:?])
  {
    if (v20 > 0.00000011920929)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = v20;
      UIRectFillUsingBlendMode(v47, kCGBlendModeNormal);
    }

    v29 = v18;
    v30 = height - v20;
    if (v18 > 0.00000011920929)
    {
      v31 = x + width - v18;
      v32 = v30 - v40;
      v33 = y + v20;
      UIRectFillUsingBlendMode(*(&v29 - 2), kCGBlendModeNormal);
    }

    if (v40 > 0.00000011920929)
    {
      v48.origin.y = y + height - v40;
      v48.origin.x = x;
      v48.size.width = width;
      v48.size.height = v40;
      UIRectFillUsingBlendMode(v48, kCGBlendModeNormal);
    }

    v34 = v19;
    if (v19 > 0.00000011920929)
    {
      v36 = x;

      v37 = y + v20;
      v35 = v30 - v40;
      UIRectFillUsingBlendMode(*(&v34 - 2), kCGBlendModeNormal);
    }
  }

  else
  {
    v38 = fmax(fmax(v20, v18), fmax(v40, v19));
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.height = height;
    v49.size.width = width;
    v50 = CGRectInset(v49, v38 * 0.5, v38 * 0.5);
    v39 = [VUICoreUtilities createPathForRadii:[(VUIImageScaleDecorator *)self cornerContinuous] inRect:-(v38 * 0.5 - v22 * v14) isContinuous:-(v38 * 0.5 - v24 * v14), -(v38 * 0.5 - v26 * v14), -(v38 * 0.5 - v28 * v14), v50.origin.x, v50.origin.y, v50.size.width, v50.size.height];
    v45 = [MEMORY[0x277D75208] bezierPathWithCGPath:v39];
    [v45 setLineWidth:v38];
    [v45 stroke];
    CGPathRelease(v39);
  }
}

- (UIEdgeInsets)outlineWidths
{
  top = self->_outlineWidths.top;
  left = self->_outlineWidths.left;
  bottom = self->_outlineWidths.bottom;
  right = self->_outlineWidths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end