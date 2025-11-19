@interface VUIImageOutlineDecorator
+ (id)decoratorWithOutlineColor:(id)a3 outlineWidths:(UIEdgeInsets)a4;
- (BOOL)isEqual:(id)a3;
- (UIEdgeInsets)outlineWidths;
- (VUIImageOutlineDecorator)initWithOutlineColor:(id)a3 outlineWidths:(UIEdgeInsets)a4;
- (id)decoratorIdentifier;
- (unint64_t)hash;
- (void)drawInContext:(id)a3 imageRect:(CGRect)a4;
@end

@implementation VUIImageOutlineDecorator

+ (id)decoratorWithOutlineColor:(id)a3 outlineWidths:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v8 = a3;
  v9 = [[VUIImageOutlineDecorator alloc] initWithOutlineColor:v8 outlineWidths:top, left, bottom, right];

  return v9;
}

- (VUIImageOutlineDecorator)initWithOutlineColor:(id)a3 outlineWidths:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = VUIImageOutlineDecorator;
  v11 = [(VUIImageScaleDecorator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outlineColor, a3);
    v12->_outlineWidths.top = top;
    v12->_outlineWidths.left = left;
    v12->_outlineWidths.bottom = bottom;
    v12->_outlineWidths.right = right;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = VUIImageOutlineDecorator;
  if ([(VUIImageScaleDecorator *)&v22 isEqual:v4])
  {
    v5 = [(VUIImageOutlineDecorator *)self outlineColor];
    v6 = [v4 outlineColor];
    if ([v5 isEqual:v6])
    {
      [(VUIImageOutlineDecorator *)self outlineWidths];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [v4 outlineWidths];
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
  v4 = [(VUIImageScaleDecorator *)&v15 decoratorIdentifier];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@"%@_", v4];
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

- (void)drawInContext:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
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