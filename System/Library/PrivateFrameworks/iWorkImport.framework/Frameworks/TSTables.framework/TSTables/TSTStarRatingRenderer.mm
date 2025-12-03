@interface TSTStarRatingRenderer
+ (CGPath)p_newStarPath:(double)path;
+ (void)renderRating:(double)rating intoContext:(CGContext *)context rect:(CGRect)rect showDots:(BOOL)dots color:(CGColor *)color useMinimalSpace:(BOOL)space;
@end

@implementation TSTStarRatingRenderer

+ (CGPath)p_newStarPath:(double)path
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

+ (void)renderRating:(double)rating intoContext:(CGContext *)context rect:(CGRect)rect showDots:(BOOL)dots color:(CGColor *)color useMinimalSpace:(BOOL)space
{
  spaceCopy = space;
  dotsCopy = dots;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  if (width / 5.0 >= height)
  {
    v21 = height;
  }

  else
  {
    v21 = width / 5.0;
  }

  v22 = objc_msgSend_p_newStarPath_(self, v17, v18, v19, v20, v21 / 2.5, *&rating);
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

  CGContextSetLineWidth(context, v23);
  if (spaceCopy)
  {
    v24 = v21;
  }

  else
  {
    v24 = width / 5.0;
  }

  v25 = width / 5.0 * 0.5;
  v26 = 0.5;
  if (spaceCopy)
  {
    v25 = v21 / 2.5;
  }

  v27 = x + v25;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidY = CGRectGetMidY(v42);
  CGContextTranslateCTM(context, v27, MidY + v21 * 0.0500000007);
  v29 = 0;
  if (!dotsCopy)
  {
    v26 = 0.75;
  }

  v30 = 0.25;
  v35 = v26;
  do
  {
    CGContextBeginPath(context);
    v31 = v34 - v29;
    if (v31 >= v26)
    {
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(context, color);
      CGContextFillPath(context);
      goto LABEL_24;
    }

    if (v31 > v30 && !dotsCopy)
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
      CGContextSaveGState(context);
      CGContextClipToRectSafe();
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(context, color);
      CGContextFillPath(context);
      CGContextRestoreGState(context);
      CGContextSaveGState(context);
      v26 = v35;
      v30 = 0.25;
      CGContextClipToRectSafe();
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(context, color);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
LABEL_22:
      CGContextRestoreGState(context);
      goto LABEL_23;
    }

    CGContextSaveGState(context);
    if (!dotsCopy)
    {
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(context, color);
      CGContextStrokePath(context);
      goto LABEL_22;
    }

    CGContextSetFillColorWithColor(context, color);
    v46.origin.x = v21 * 0.25 * -0.5;
    v46.size.width = v21 * 0.25;
    v46.origin.y = v46.origin.x;
    v46.size.height = v21 * 0.25;
    CGContextFillEllipseInRect(context, v46);
    CGContextDrawPath(context, kCGPathFillStroke);
LABEL_23:
    CGContextRestoreGState(context);
LABEL_24:
    CGContextTranslateCTM(context, v24, 0.0);
    ++v29;
  }

  while (v29 != 5);
  CGPathRelease(v22);

  CGContextRestoreGState(context);
}

@end