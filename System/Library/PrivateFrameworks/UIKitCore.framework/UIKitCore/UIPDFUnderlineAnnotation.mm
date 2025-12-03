@interface UIPDFUnderlineAnnotation
- (void)drawInContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawLayerRotated:(id)rotated inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles;
- (void)drawLayerUpright:(id)upright inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles;
@end

@implementation UIPDFUnderlineAnnotation

- (void)drawLayerUpright:(id)upright inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles
{
  annotationController = self->super.super._annotationController;
  color = self->super.super._color;
  CGContextSaveGState(context);
  CGContextSetStrokeColorWithColor(context, color);
  CGContextSetLineWidth(context, 1.0);
  memset(&rect, 0, sizeof(rect));
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (rectangles)
  {
    v12 = 0;
    while (1)
    {
      [selection getBounds:&rect transform:&v30 index:v12];
      [selection baseLineAtIndex:{v12, v30, v31, v32}];
      v14 = v13;
      if (upright)
      {
        break;
      }

      v22 = [(UIPDFAnnotationController *)annotationController underlineImageFor:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
      if (!v22)
      {
        goto LABEL_5;
      }

      v23 = v22;
      rect.origin.y = v14;
      v36.origin.x = rect.origin.x;
      v36.size.width = rect.size.width;
      v36.size.height = rect.size.height;
      v36.origin.y = v14;
      rect = CGRectIntegral(v36);
      Height = CGImageGetHeight(v23);
      MinX = CGRectGetMinX(rect);
      v26 = CGRectGetMinY(rect) - Height + -1.0;
      v37.size.width = CGRectGetWidth(rect);
      v37.origin.x = MinX;
      v37.origin.y = v26;
      v37.size.height = Height;
      CGContextDrawImage(context, v37, v23);
LABEL_14:
      if (rectangles == ++v12)
      {
        goto LABEL_15;
      }
    }

    [(UIPDFAnnotationController *)annotationController convertRect:upright toSurfaceLayer:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    rect.origin.x = v15;
    rect.origin.y = v16;
    rect.size.width = v17;
    rect.size.height = v18;
    [(UIPDFAnnotationController *)annotationController convertPoint:upright toSurfaceLayer:0.0, v14];
    v14 = v19;
LABEL_5:
    if (CGRectGetHeight(rect) <= 16.0)
    {
      v20 = 1.0;
    }

    else
    {
      v20 = 3.0;
    }

    CGContextSetLineWidth(context, v20);
    rect.origin.y = v14;
    v34.origin.x = rect.origin.x;
    v34.size.width = rect.size.width;
    v34.size.height = rect.size.height;
    v34.origin.y = v14;
    v35 = CGRectIntegral(v34);
    rect = v35;
    if (upright)
    {
      v21 = CGRectGetMaxY(v35) + -1.0;
    }

    else
    {
      v21 = CGRectGetMinY(v35) - v20;
    }

    CGContextSaveGState(context);
    Mutable = CGPathCreateMutable();
    v28 = CGRectGetMinX(rect);
    CGPathMoveToPoint(Mutable, 0, v28, v21);
    MaxX = CGRectGetMaxX(rect);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v21);
    CGContextAddPath(context, Mutable);
    CGContextStrokePath(context);
    CGPathRelease(Mutable);
    CGContextRestoreGState(context);
    goto LABEL_14;
  }

LABEL_15:
  CGContextRestoreGState(context);
}

- (void)drawLayerRotated:(id)rotated inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles
{
  annotationController = self->super.super._annotationController;
  color = self->super.super._color;
  CGContextSaveGState(context);
  CGContextSetStrokeColorWithColor(context, color);
  CGContextSetLineWidth(context, 1.0);
  memset(&v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (rectangles)
  {
    v12 = 0;
    do
    {
      [selection getBounds:&v28 transform:&v25 index:{v12, *v23}];
      MinX = CGRectGetMinX(v28);
      x = vaddq_f64(v27, vaddq_f64(vmulq_n_f64(v25, MinX + 1.0), vmulq_n_f64(v26, CGRectGetMinY(v28) + 1.0)));
      MaxX = CGRectGetMaxX(v28);
      v15 = vaddq_f64(v27, vaddq_f64(vmulq_n_f64(v25, MaxX + 1.0), vmulq_n_f64(v26, CGRectGetMinY(v28) + 1.0)));
      v16 = v15.f64[1];
      v17 = x.f64[1];
      *v23 = v15;
      if (rotated)
      {
        [(UIPDFAnnotationController *)annotationController convertPoint:rotated toSurfaceLayer:?];
        x.f64[0] = v18;
        v17 = v19;
        [(UIPDFAnnotationController *)annotationController convertPoint:rotated toSurfaceLayer:v23[0], v16];
        *v23 = v20;
        v16 = v21;
      }

      CGContextSaveGState(context);
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, x.f64[0], v17 + -2.0);
      CGPathAddLineToPoint(Mutable, 0, v23[0], v16 + -2.0);
      CGContextAddPath(context, Mutable);
      CGContextStrokePath(context);
      CGPathRelease(Mutable);
      CGContextRestoreGState(context);
      ++v12;
    }

    while (rectangles != v12);
  }

  CGContextRestoreGState(context);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if ([(UIPDFAnnotationController *)self->super.super._annotationController tracking])
  {
    selection = [(UIPDFAnnotation *)self selection];
    if (selection)
    {
      v8 = selection;
      numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
      if (numberOfRectangles)
      {
        v10 = numberOfRectangles;
        memset(&v11[1], 0, sizeof(CGAffineTransform));
        [(UIPDFSelection *)v8 transform];
        v11[0] = v11[1];
        if (CGAffineTransformIsIdentity(v11))
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerUpright:layer inContext:context selection:v8 rectangles:v10];
        }

        else
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerRotated:layer inContext:context selection:v8 rectangles:v10];
        }
      }
    }
  }
}

- (void)drawInContext:(CGContext *)context
{
  if (![(UIPDFAnnotationController *)self->super.super._annotationController tracking])
  {
    selection = [(UIPDFAnnotation *)self selection];
    if (selection)
    {
      v6 = selection;
      numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
      if (numberOfRectangles)
      {
        v8 = numberOfRectangles;
        memset(&v9[1], 0, sizeof(CGAffineTransform));
        [(UIPDFSelection *)v6 transform];
        v9[0] = v9[1];
        if (CGAffineTransformIsIdentity(v9))
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerUpright:0 inContext:context selection:v6 rectangles:v8];
        }

        else
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerRotated:0 inContext:context selection:v6 rectangles:v8];
        }
      }
    }
  }
}

@end