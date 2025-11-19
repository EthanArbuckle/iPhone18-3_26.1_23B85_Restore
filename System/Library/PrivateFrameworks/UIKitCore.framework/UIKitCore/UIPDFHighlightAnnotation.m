@interface UIPDFHighlightAnnotation
- (void)drawInContext:(CGContext *)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawLayerRotated:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6;
- (void)drawLayerUpright:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6;
@end

@implementation UIPDFHighlightAnnotation

- (void)drawLayerUpright:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6
{
  color = self->super.super._color;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(color, 0.25);
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, color);
  memset(&v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  if (a6)
  {
    for (i = 0; a6 != i; ++i)
    {
      [a5 getBounds:&v24 transform:&v21 index:i];
      annotationController = self->super.super._annotationController;
      if (a3)
      {
        [(UIPDFAnnotationController *)annotationController convertRect:a3 toSurfaceLayer:*&v24.origin, *&v24.size];
        v24.origin.x = v15;
        v24.origin.y = v16;
        v24.size.width = v17;
        v24.size.height = v18;
      }

      else
      {
        v19 = [(UIPDFAnnotationController *)annotationController newHighlightMaskImageFor:*&v24.origin, *&v24.size, v21, v22, v23];
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(a4);
          CGContextClipToMask(a4, v24, v20);
          CGContextFillRect(a4, v24);
          CGContextRestoreGState(a4);
          CGImageRelease(v20);
          continue;
        }
      }

      CGContextSetFillColorWithColor(a4, CopyWithAlpha);
      CGContextFillRect(a4, v24);
    }
  }

  CGContextRestoreGState(a4);
  CGColorRelease(CopyWithAlpha);
}

- (void)drawLayerRotated:(id)a3 inContext:(CGContext *)a4 selection:(id)a5 rectangles:(unint64_t)a6
{
  color = self->super.super._color;
  CGContextSaveGState(a4);
  CGContextSetFillColorWithColor(a4, color);
  memset(&v47, 0, sizeof(v47));
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  if (a6)
  {
    v12 = 0;
    do
    {
      [a5 getBounds:&v47 transform:&v44 index:{v12, *&v34}];
      Mutable = CGPathCreateMutable();
      CGContextSaveGState(a4);
      MinX = CGRectGetMinX(v47);
      v35 = vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, MinX), vmulq_n_f64(v45, CGRectGetMinY(v47))));
      v41 = CGRectGetMinX(v47);
      v42 = vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, v41), vmulq_n_f64(v45, CGRectGetMaxY(v47))));
      MaxX = CGRectGetMaxX(v47);
      v38 = vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, MaxX), vmulq_n_f64(v45, CGRectGetMaxY(v47))));
      v14.f64[0] = CGRectGetMaxX(v47);
      v34 = v14;
      y = v47.origin.y;
      v14.f64[0] = v47.origin.x;
      height = v47.size.height;
      width = v47.size.width;
      MinY = CGRectGetMinY(*v14.f64);
      v20 = v38.f64[0];
      v19 = v42.f64[0];
      v21 = vaddq_f64(v46, vaddq_f64(vmulq_n_f64(v44, v34.f64[0]), vmulq_n_f64(v45, MinY)));
      v22 = v35.f64[0];
      v23 = v38.f64[1];
      v24 = v42.f64[1];
      v25 = v35.f64[1];
      if (a3)
      {
        v34 = v21;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:a3 toSurfaceLayer:?];
        v36 = v26;
        v25 = v27;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:a3 toSurfaceLayer:*&v42];
        v43 = v28;
        v24 = v29;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:a3 toSurfaceLayer:*&v38];
        v39 = v30;
        v23 = v31;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:a3 toSurfaceLayer:*&v34];
        v20 = v39;
        v19 = v43;
        v21.f64[0] = v32;
        v22 = v36;
        v21.f64[1] = v33;
      }

      CPSetCGPathPoints4(Mutable, v22, v25, v19, v24, v20, v23, v21.f64[0], v21.f64[1]);
      CGPathCloseSubpath(Mutable);
      CGContextAddPath(a4, Mutable);
      CGContextFillPath(a4);
      CGContextRestoreGState(a4);
      CGPathRelease(Mutable);
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
          [(UIPDFHighlightAnnotation *)self drawLayerUpright:a3 inContext:a4 selection:v8 rectangles:v10];
        }

        else
        {
          [(UIPDFHighlightAnnotation *)self drawLayerRotated:a3 inContext:a4 selection:v8 rectangles:v10];
        }
      }
    }
  }
}

- (void)drawInContext:(CGContext *)a3
{
  annotationController = self->super.super._annotationController;
  if (!annotationController || ![(UIPDFAnnotationController *)annotationController tracking])
  {
    v6 = [(UIPDFAnnotation *)self selection];
    if (!v6)
    {
      v9 = [(UIPDFAnnotation *)self archive];
      if (!v9)
      {
        return;
      }

      v10 = [[UIPDFSelection alloc] initWithPage:[(UIPDFAnnotation *)self page] fromArchive:v9];
      if (!v10)
      {
        return;
      }

      v11 = v10;
      [(UIPDFAnnotation *)self setSelection:v10];
    }

    v7 = [(UIPDFSelection *)v6 numberOfRectangles];
    if (v7)
    {
      v8 = v7;
      memset(&v12[1], 0, sizeof(CGAffineTransform));
      if (v6)
      {
        [(UIPDFSelection *)v6 transform];
      }

      v12[0] = v12[1];
      if (CGAffineTransformIsIdentity(v12))
      {
        [(UIPDFHighlightAnnotation *)self drawLayerUpright:0 inContext:a3 selection:v6 rectangles:v8];
      }

      else
      {
        [(UIPDFHighlightAnnotation *)self drawLayerRotated:0 inContext:a3 selection:v6 rectangles:v8];
      }
    }
  }
}

@end