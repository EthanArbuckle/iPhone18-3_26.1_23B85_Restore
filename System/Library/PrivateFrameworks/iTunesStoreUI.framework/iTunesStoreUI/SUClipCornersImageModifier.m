@interface SUClipCornersImageModifier
- (BOOL)isEqual:(id)a3;
- (CGPath)_copyClippingPathForRect:(CGRect)a3;
- (void)drawBeforeImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5;
@end

@implementation SUClipCornersImageModifier

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SUClipCornersImageModifier *)self corners];
  if ([a3 corners] != v5)
  {
    return 0;
  }

  [(SUClipCornersImageModifier *)self cornerRadius];
  v7 = v6;
  [a3 cornerRadius];
  return v7 == v8;
}

- (void)drawBeforeImageForContext:(CGContext *)a3 imageFrame:(CGRect)a4 finalSize:(CGSize)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSaveGState(a3);
  v11 = [(SUClipCornersImageModifier *)self _copyClippingPathForRect:x, y, width, height];
  if (v11)
  {
    v12 = v11;
    CGContextAddPath(a3, v11);
    CGContextClip(a3);
    CGPathRelease(v12);
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectInset(v16, 0.5, 0.5);
  v13 = [(SUClipCornersImageModifier *)self _copyClippingPathForRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  if (v13)
  {
    v14 = v13;
    CGContextAddPath(a3, v13);

    CGPathRelease(v14);
  }
}

- (CGPath)_copyClippingPathForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  [(SUClipCornersImageModifier *)self cornerRadius];
  v10 = v9;
  v11 = [(SUClipCornersImageModifier *)self corners];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidX = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  CGPathMoveToPoint(Mutable, 0, MidX, MinY);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v15 = CGRectGetMinY(v26);
  if ((v11 & 8) != 0)
  {
    CGPathAddArc(Mutable, 0, MaxX - v10, v10 + v15, v10, 4.71238898, 6.28318531, 0);
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, MaxX, v15);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v16 = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  if ((v11 & 2) != 0)
  {
    CGPathAddArc(Mutable, 0, v16 - v10, MaxY - v10, v10, 0.0, 1.57079633, 0);
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, v16, MaxY);
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v19 = CGRectGetMaxY(v30);
  if (v11)
  {
    CGPathAddArc(Mutable, 0, v10 + MinX, v19 - v10, v10, 1.57079633, 3.14159265, 0);
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, MinX, v19);
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v20 = CGRectGetMinX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v21 = CGRectGetMinY(v32);
  if ((v11 & 4) != 0)
  {
    CGPathAddArc(Mutable, 0, v10 + v20, v10 + v21, v10, 3.14159265, 4.71238898, 0);
  }

  else
  {
    CGPathAddLineToPoint(Mutable, 0, v20, v21);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end