@interface TSTStarRatingRenderer
+ (CGPath)p_newStarPath:(double)a3;
+ (void)renderRating:(double)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 showDots:(BOOL)a6 color:(CGColor *)a7 useMinimalSpace:(BOOL)a8;
@end

@implementation TSTStarRatingRenderer

+ (CGPath)p_newStarPath:(double)a3
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (void)renderRating:(double)a3 intoContext:(CGContext *)a4 rect:(CGRect)a5 showDots:(BOOL)a6 color:(CGColor *)a7 useMinimalSpace:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSaveGState(a4);
  CGContextClipToRectSafe();
  if (width / 5.0 >= height)
  {
    v21 = height;
  }

  else
  {
    v21 = width / 5.0;
  }

  v22 = objc_msgSend_p_newStarPath_(a1, v17, v18, v19, v20, v21 / 2.5, *&a3);
  BoundingBox = CGPathGetBoundingBox(v22);
  v38 = BoundingBox.size.width;
  v39 = BoundingBox.origin.x;
  v36 = BoundingBox.size.height;
  v37 = BoundingBox.origin.y;
  v23 = v21 / 20.0;
  if (v21 / 20.0 < 1.0)
  {
    v23 = 1.0;
  }

  CGContextSetLineWidth(a4, v23);
  if (v8)
  {
    v24 = v21;
  }

  else
  {
    v24 = width / 5.0;
  }

  v25 = width / 5.0 * 0.5;
  v26 = 0.5;
  if (v8)
  {
    v25 = v21 / 2.5;
  }

  v27 = x + v25;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidY = CGRectGetMidY(v42);
  CGContextTranslateCTM(a4, v27, MidY + v21 * 0.0500000007);
  v29 = 0;
  if (!v10)
  {
    v26 = 0.75;
  }

  v30 = 0.25;
  v35 = v26;
  do
  {
    CGContextBeginPath(a4);
    v31 = v34 - v29;
    if (v31 >= v26)
    {
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(a4, a7);
      CGContextFillPath(a4);
      goto LABEL_24;
    }

    if (v31 > v30 && !v10)
    {
      v32 = v38 * v31;
      v43.origin.x = v39;
      v43.origin.y = v37;
      v43.size.width = v32;
      v43.size.height = v36;
      CGRectGetMaxX(v43);
      v44.origin.x = v39;
      v44.origin.y = v37;
      v44.size.width = v38;
      v44.size.height = v36;
      CGRectGetMaxX(v44);
      v45.origin.x = v39;
      v45.origin.y = v37;
      v45.size.width = v32;
      v45.size.height = v36;
      CGRectGetMaxX(v45);
      CGContextSaveGState(a4);
      CGContextClipToRectSafe();
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(a4, a7);
      CGContextFillPath(a4);
      CGContextRestoreGState(a4);
      CGContextSaveGState(a4);
      v26 = v35;
      v30 = 0.25;
      CGContextClipToRectSafe();
      CGContextSaveGState(a4);
      CGContextAddPathSafe();
      CGContextClip(a4);
      CGContextSaveGState(a4);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(a4, a7);
      CGContextStrokePath(a4);
      CGContextRestoreGState(a4);
LABEL_22:
      CGContextRestoreGState(a4);
      goto LABEL_23;
    }

    CGContextSaveGState(a4);
    if (!v10)
    {
      CGContextAddPathSafe();
      CGContextClip(a4);
      CGContextSaveGState(a4);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(a4, a7);
      CGContextStrokePath(a4);
      goto LABEL_22;
    }

    CGContextSetFillColorWithColor(a4, a7);
    v46.origin.x = v21 * 0.25 * -0.5;
    v46.size.width = v21 * 0.25;
    v46.origin.y = v46.origin.x;
    v46.size.height = v21 * 0.25;
    CGContextFillEllipseInRect(a4, v46);
    CGContextDrawPath(a4, kCGPathFillStroke);
LABEL_23:
    CGContextRestoreGState(a4);
LABEL_24:
    CGContextTranslateCTM(a4, v24, 0.0);
    ++v29;
  }

  while (v29 != 5);
  CGPathRelease(v22);

  CGContextRestoreGState(a4);
}

@end