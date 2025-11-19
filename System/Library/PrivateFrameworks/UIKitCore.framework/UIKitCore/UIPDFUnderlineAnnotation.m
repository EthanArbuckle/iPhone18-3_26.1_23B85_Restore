@interface UIPDFUnderlineAnnotation
- (void)drawInContext:(CGContext *)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawLayerRotated:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6;
- (void)drawLayerUpright:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6;
@end

@implementation UIPDFUnderlineAnnotation

- (void)drawLayerUpright:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6
{
  annotationController = self->super.super._annotationController;
  color = self->super.super._color;
  CGContextSaveGState(a4);
  CGContextSetStrokeColorWithColor(a4, color);
  CGContextSetLineWidth(a4, 1.0);
  memset(&rect, 0, sizeof(rect));
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (a6)
  {
    v12 = 0;
    while (1)
    {
      [a5 getBounds:&rect transform:&v30 index:v12];
      [a5 baseLineAtIndex:{v12, v30, v31, v32}];
      v14 = v13;
      if (a3)
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
      CGContextDrawImage(a4, v37, v23);
LABEL_14:
      if (a6 == ++v12)
      {
        goto LABEL_15;
      }
    }

    [(UIPDFAnnotationController *)annotationController convertRect:a3 toSurfaceLayer:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    rect.origin.x = v15;
    rect.origin.y = v16;
    rect.size.width = v17;
    rect.size.height = v18;
    [(UIPDFAnnotationController *)annotationController convertPoint:a3 toSurfaceLayer:0.0, v14];
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

    CGContextSetLineWidth(a4, v20);
    rect.origin.y = v14;
    v34.origin.x = rect.origin.x;
    v34.size.width = rect.size.width;
    v34.size.height = rect.size.height;
    v34.origin.y = v14;
    v35 = CGRectIntegral(v34);
    rect = v35;
    if (a3)
    {
      v21 = CGRectGetMaxY(v35) + -1.0;
    }

    else
    {
      v21 = CGRectGetMinY(v35) - v20;
    }

    CGContextSaveGState(a4);
    Mutable = CGPathCreateMutable();
    v28 = CGRectGetMinX(rect);
    CGPathMoveToPoint(Mutable, 0, v28, v21);
    MaxX = CGRectGetMaxX(rect);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v21);
    CGContextAddPath(a4, Mutable);
    CGContextStrokePath(a4);
    CGPathRelease(Mutable);
    CGContextRestoreGState(a4);
    goto LABEL_14;
  }

LABEL_15:
  CGContextRestoreGState(a4);
}

- (void)drawLayerRotated:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6
{
  annotationController = self->super.super._annotationController;
  color = self->super.super._color;
  CGContextSaveGState(a4);
  CGContextSetStrokeColorWithColor(a4, color);
  CGContextSetLineWidth(a4, 1.0);
  memset(&v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (a6)
  {
    v12 = 0;
    do
    {
      [a5 getBounds:&v28 transform:&v25 index:{v12, *v23}];
      MinX = CGRectGetMinX(v28);
      x = vaddq_f64(v27, vaddq_f64(vmulq_n_f64(v25, MinX + 1.0), vmulq_n_f64(v26, CGRectGetMinY(v28) + 1.0)));
      MaxX = CGRectGetMaxX(v28);
      v15 = vaddq_f64(v27, vaddq_f64(vmulq_n_f64(v25, MaxX + 1.0), vmulq_n_f64(v26, CGRectGetMinY(v28) + 1.0)));
      v16 = v15.f64[1];
      v17 = x.f64[1];
      *v23 = v15;
      if (a3)
      {
        [(UIPDFAnnotationController *)annotationController convertPoint:a3 toSurfaceLayer:?];
        x.f64[0] = v18;
        v17 = v19;
        [(UIPDFAnnotationController *)annotationController convertPoint:a3 toSurfaceLayer:v23[0], v16];
        *v23 = v20;
        v16 = v21;
      }

      CGContextSaveGState(a4);
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, x.f64[0], v17 + -2.0);
      CGPathAddLineToPoint(Mutable, 0, v23[0], v16 + -2.0);
      CGContextAddPath(a4, Mutable);
      CGContextStrokePath(a4);
      CGPathRelease(Mutable);
      CGContextRestoreGState(a4);
      ++v12;
    }

    while (a6 != v12);
  }

  CGContextRestoreGState(a4);
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if ([(UIPDFAnnotationController *)self->super.super._annotationController tracking])
  {
    v7 = [(UIPDFAnnotation *)self selection];
    if (v7)
    {
      v8 = v7;
      v9 = [(UIPDFSelection *)v7 numberOfRectangles];
      if (v9)
      {
        v10 = v9;
        memset(&v11[1], 0, sizeof(CGAffineTransform));
        [(UIPDFSelection *)v8 transform];
        v11[0] = v11[1];
        if (CGAffineTransformIsIdentity(v11))
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerUpright:a3 inContext:a4 selection:v8 rectangles:v10];
        }

        else
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerRotated:a3 inContext:a4 selection:v8 rectangles:v10];
        }
      }
    }
  }
}

- (void)drawInContext:(CGContext *)a3
{
  if (![(UIPDFAnnotationController *)self->super.super._annotationController tracking])
  {
    v5 = [(UIPDFAnnotation *)self selection];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIPDFSelection *)v5 numberOfRectangles];
      if (v7)
      {
        v8 = v7;
        memset(&v9[1], 0, sizeof(CGAffineTransform));
        [(UIPDFSelection *)v6 transform];
        v9[0] = v9[1];
        if (CGAffineTransformIsIdentity(v9))
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerUpright:0 inContext:a3 selection:v6 rectangles:v8];
        }

        else
        {
          [(UIPDFUnderlineAnnotation *)self drawLayerRotated:0 inContext:a3 selection:v6 rectangles:v8];
        }
      }
    }
  }
}

@end