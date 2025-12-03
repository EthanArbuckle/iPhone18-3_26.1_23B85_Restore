@interface SUClipCornersImageModifier
- (BOOL)isEqual:(id)equal;
- (CGPath)_copyClippingPathForRect:(CGRect)rect;
- (void)drawBeforeImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size;
@end

@implementation SUClipCornersImageModifier

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  corners = [(SUClipCornersImageModifier *)self corners];
  if ([equal corners] != corners)
  {
    return 0;
  }

  [(SUClipCornersImageModifier *)self cornerRadius];
  v7 = v6;
  [equal cornerRadius];
  return v7 == v8;
}

- (void)drawBeforeImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  CGContextSaveGState(context);
  height = [(SUClipCornersImageModifier *)self _copyClippingPathForRect:x, y, width, height];
  if (height)
  {
    v12 = height;
    CGContextAddPath(context, height);
    CGContextClip(context);
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
    CGContextAddPath(context, v13);

    CGPathRelease(v14);
  }
}

- (CGPath)_copyClippingPathForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  [(SUClipCornersImageModifier *)self cornerRadius];
  v10 = v9;
  corners = [(SUClipCornersImageModifier *)self corners];
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
  if ((corners & 8) != 0)
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
  if ((corners & 2) != 0)
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
  if (corners)
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
  if ((corners & 4) != 0)
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