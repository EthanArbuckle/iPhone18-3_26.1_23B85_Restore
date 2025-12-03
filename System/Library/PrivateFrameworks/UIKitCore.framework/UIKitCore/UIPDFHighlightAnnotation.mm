@interface UIPDFHighlightAnnotation
- (void)drawInContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawLayerRotated:(id)rotated inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles;
- (void)drawLayerUpright:(id)upright inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles;
@end

@implementation UIPDFHighlightAnnotation

- (void)drawLayerUpright:(id)upright inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles
{
  color = self->super.super._color;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(color, 0.25);
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, color);
  memset(&v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  if (rectangles)
  {
    for (i = 0; rectangles != i; ++i)
    {
      [selection getBounds:&v24 transform:&v21 index:i];
      annotationController = self->super.super._annotationController;
      if (upright)
      {
        [(UIPDFAnnotationController *)annotationController convertRect:upright toSurfaceLayer:*&v24.origin, *&v24.size];
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
          CGContextSaveGState(context);
          CGContextClipToMask(context, v24, v20);
          CGContextFillRect(context, v24);
          CGContextRestoreGState(context);
          CGImageRelease(v20);
          continue;
        }
      }

      CGContextSetFillColorWithColor(context, CopyWithAlpha);
      CGContextFillRect(context, v24);
    }
  }

  CGContextRestoreGState(context);
  CGColorRelease(CopyWithAlpha);
}

- (void)drawLayerRotated:(id)rotated inContext:(CGContext *)context selection:(id)selection rectangles:(unint64_t)rectangles
{
  color = self->super.super._color;
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, color);
  memset(&v47, 0, sizeof(v47));
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  if (rectangles)
  {
    v12 = 0;
    do
    {
      [selection getBounds:&v47 transform:&v44 index:{v12, *&v34}];
      Mutable = CGPathCreateMutable();
      CGContextSaveGState(context);
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
      if (rotated)
      {
        v34 = v21;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:rotated toSurfaceLayer:?];
        v36 = v26;
        v25 = v27;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:rotated toSurfaceLayer:*&v42];
        v43 = v28;
        v24 = v29;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:rotated toSurfaceLayer:*&v38];
        v39 = v30;
        v23 = v31;
        [(UIPDFAnnotationController *)self->super.super._annotationController convertPoint:rotated toSurfaceLayer:*&v34];
        v20 = v39;
        v19 = v43;
        v21.f64[0] = v32;
        v22 = v36;
        v21.f64[1] = v33;
      }

      CPSetCGPathPoints4(Mutable, v22, v25, v19, v24, v20, v23, v21.f64[0], v21.f64[1]);
      CGPathCloseSubpath(Mutable);
      CGContextAddPath(context, Mutable);
      CGContextFillPath(context);
      CGContextRestoreGState(context);
      CGPathRelease(Mutable);
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
          [(UIPDFHighlightAnnotation *)self drawLayerUpright:layer inContext:context selection:v8 rectangles:v10];
        }

        else
        {
          [(UIPDFHighlightAnnotation *)self drawLayerRotated:layer inContext:context selection:v8 rectangles:v10];
        }
      }
    }
  }
}

- (void)drawInContext:(CGContext *)context
{
  annotationController = self->super.super._annotationController;
  if (!annotationController || ![(UIPDFAnnotationController *)annotationController tracking])
  {
    selection = [(UIPDFAnnotation *)self selection];
    if (!selection)
    {
      archive = [(UIPDFAnnotation *)self archive];
      if (!archive)
      {
        return;
      }

      v10 = [[UIPDFSelection alloc] initWithPage:[(UIPDFAnnotation *)self page] fromArchive:archive];
      if (!v10)
      {
        return;
      }

      v11 = v10;
      [(UIPDFAnnotation *)self setSelection:v10];
    }

    numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
    if (numberOfRectangles)
    {
      v8 = numberOfRectangles;
      memset(&v12[1], 0, sizeof(CGAffineTransform));
      if (selection)
      {
        [(UIPDFSelection *)selection transform];
      }

      v12[0] = v12[1];
      if (CGAffineTransformIsIdentity(v12))
      {
        [(UIPDFHighlightAnnotation *)self drawLayerUpright:0 inContext:context selection:selection rectangles:v8];
      }

      else
      {
        [(UIPDFHighlightAnnotation *)self drawLayerRotated:0 inContext:context selection:selection rectangles:v8];
      }
    }
  }
}

@end