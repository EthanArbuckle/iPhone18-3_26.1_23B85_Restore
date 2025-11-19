@interface UIPDFPageContentDelegate
- (BOOL)isCancelled;
- (BOOL)pageHasSelection;
- (CGRect)box;
- (UIPDFPageContentDelegate)init;
- (UIPDFPageView)view;
- (void)addRect:(CGRect)a3 toPath:(CGPath *)a4 transform:(CGAffineTransform *)a5 view:(id)a6 owner:(id)a7;
- (void)computeTransform;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawSelectionLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawSelectionLayerBlockMode:(id)a3 inContext:(CGContext *)a4;
- (void)setIsCancelled:(BOOL)a3;
- (void)setView:(id)a3;
@end

@implementation UIPDFPageContentDelegate

- (UIPDFPageContentDelegate)init
{
  v7.receiver = self;
  v7.super_class = UIPDFPageContentDelegate;
  result = [(UIPDFPageContentDelegate *)&v7 init];
  if (result)
  {
    result->_document = 0;
    result->_pageIndex = 0;
    result->_view = 0;
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 16);
    result->_bounds.origin = *MEMORY[0x1E695F058];
    result->_bounds.size = v4;
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_transform.a = *MEMORY[0x1E695EFD0];
    *&result->_transform.c = v6;
    *&result->_transform.tx = *(v5 + 32);
    result->_white = 0;
    result->_highlightColor = 0;
    result->_owner = 0;
    result->_box.origin = v3;
    result->_box.size = v4;
    result->_pageRotation = 0;
    result->_lock._os_unfair_lock_opaque = 0;
    result->_threadCount = 0;
    result->_isCancelled = 0;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_white);
  [(UIPDFPageContentDelegate *)self setDocument:0];
  v3.receiver = self;
  v3.super_class = UIPDFPageContentDelegate;
  [(UIPDFPageContentDelegate *)&v3 dealloc];
}

- (void)computeTransform
{
  pageRotation = self->_pageRotation;
  [(CALayer *)self->_owner bounds];
  CGPDFComputeTransform(v9, pageRotation, self->_box.origin.x, self->_box.origin.y, self->_box.size.width, self->_box.size.height, v4, v5, v6, v7);
  v8 = v9[1];
  *&self->_transform.a = v9[0];
  *&self->_transform.c = v8;
  *&self->_transform.tx = v9[2];
}

- (UIPDFPageView)view
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_view;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setView:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_view = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)setIsCancelled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_isCancelled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  if (!self->_view)
  {
    return;
  }

  if ([(UIPDFPageContentDelegate *)self isCancelled])
  {
    return;
  }

  v6 = [[(UIPDFPageView *)self->_view page] copyPage];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  os_unfair_lock_lock(&self->_lock);
  threadCount = self->_threadCount;
  if (threadCount)
  {
    isCancelled = self->_isCancelled;
  }

  else
  {
    isCancelled = 0;
    self->_isCancelled = 0;
  }

  self->_threadCount = threadCount + 1;
  os_unfair_lock_unlock(&self->_lock);
  [(CALayer *)[(UIPDFPageContentDelegate *)self owner] bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  memset(&v23[1], 0, sizeof(CGAffineTransform));
  [(UIPDFPageContentDelegate *)self transform];
  CGContextSaveGState(a4);
  if (isCancelled)
  {
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    CGContextClipToRect(a4, v24);
    v23[0] = v23[1];
    CGContextConcatCTM(a4, v23);
    CGContextSetInterpolationQuality(a4, kCGInterpolationMedium);
  }

  else
  {
    CGContextSetFillColorWithColor(a4, [+[UIColor CGColor] whiteColor];
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    CGContextFillRect(a4, v25);
    v26.origin.x = v11;
    v26.origin.y = v13;
    v26.size.width = v15;
    v26.size.height = v17;
    CGContextClipToRect(a4, v26);
    v23[0] = v23[1];
    CGContextConcatCTM(a4, v23);
    CGContextSetInterpolationQuality(a4, kCGInterpolationMedium);
    [v7 CGPage];
    CGContextDrawPDFPageWithProgressCallback();
  }

  os_unfair_lock_lock(&self->_lock);
  v18 = self->_threadCount;
  if (!v18)
  {
    if (!self->_isCancelled)
    {
      v19 = 0;
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = self->_isCancelled;
  v20 = v18 - 1;
  self->_threadCount = v20;
  if (!v20 && v19)
  {
LABEL_15:
    self->_isCancelled = 0;
    v19 = 1;
  }

LABEL_17:
  os_unfair_lock_unlock(&self->_lock);

  v21 = [(UIPDFPageContentDelegate *)self view];
  if ([(UIPDFPageView *)v21 showAnnotations])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = ![(UIPDFPageView *)v21 allowHighlighting];
  }

  if (!v19 && v21 != 0 && (v22 & 1) == 0)
  {
    [(UIPDFPageView *)v21 drawAnnotations:a4];
  }

  CGContextRestoreGState(a4);
}

- (void)drawSelectionLayerBlockMode:(id)a3 inContext:(CGContext *)a4
{
  v6 = [(UIPDFPageContentDelegate *)self view];
  if (v6)
  {
    v7 = v6;
    v8 = [(UIPDFPageView *)v6 page];
    if (v8)
    {
      v9 = [(UIPDFPage *)v8 selection];
      if (v9)
      {
        v10 = v9;
        v11 = [(UIPDFPageContentDelegate *)self owner];
        if (v11)
        {
          v12 = v11;
          [v10 bounds];
          [(UIPDFPageView *)v7 convertRectFromPDFPageSpace:?];
          [(CALayer *)v12 convertRect:[(UIView *)v7 layer] fromLayer:v13, v14, v15, v16];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v25 = [(UIPDFPageContentDelegate *)self highlightColor];
          CGContextSaveGState(a4);
          CGContextSetFillColorWithColor(a4, v25);
          v27.origin.x = v18;
          v27.origin.y = v20;
          v27.size.width = v22;
          v27.size.height = v24;
          CGContextFillRect(a4, v27);

          CGContextRestoreGState(a4);
        }
      }
    }
  }
}

- (void)addRect:(CGRect)a3 toPath:(CGPath *)a4 transform:(CGAffineTransform *)a5 view:(id)a6 owner:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinX = CGRectGetMinX(a3);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MaxY = CGRectGetMaxY(v44);
  [a6 convertPointFromPDFPageSpace:{vaddq_f64(*&a5->tx, vaddq_f64(vmulq_n_f64(*&a5->a, MinX), vmulq_n_f64(*&a5->c, MinY)))}];
  [a7 convertPoint:objc_msgSend(a6 fromLayer:{"layer"), v15, v16}];
  v18 = v17;
  v20 = v19;
  [a6 convertPointFromPDFPageSpace:{vaddq_f64(*&a5->tx, vaddq_f64(vmulq_n_f64(*&a5->a, MaxX), vmulq_n_f64(*&a5->c, MinY)))}];
  [a7 convertPoint:objc_msgSend(a6 fromLayer:{"layer"), v21, v22}];
  v24 = v23;
  v26 = v25;
  [a6 convertPointFromPDFPageSpace:{vaddq_f64(*&a5->tx, vaddq_f64(vmulq_n_f64(*&a5->a, MaxX), vmulq_n_f64(*&a5->c, MaxY)))}];
  [a7 convertPoint:objc_msgSend(a6 fromLayer:{"layer"), v27, v28}];
  v30 = v29;
  v32 = v31;
  [a6 convertPointFromPDFPageSpace:{vaddq_f64(*&a5->tx, vaddq_f64(vmulq_n_f64(*&a5->a, MinX), vmulq_n_f64(*&a5->c, MaxY)))}];
  [a7 convertPoint:objc_msgSend(a6 fromLayer:{"layer"), v33, v34}];
  CPSetCGPathPoints4(a4, v18, v20, v24, v26, v30, v32, v35, v36);

  CGPathCloseSubpath(a4);
}

- (BOOL)pageHasSelection
{
  v2 = [(UIPDFPageView *)[(UIPDFPageContentDelegate *)self view] page];
  if (v2)
  {
    LOBYTE(v2) = [(UIPDFPage *)v2 selection]!= 0;
  }

  return v2;
}

- (void)drawSelectionLayer:(id)a3 inContext:(CGContext *)a4
{
  v7 = [(UIPDFPageContentDelegate *)self view];
  if (v7)
  {
    v8 = v7;
    v9 = [(UIPDFPageView *)v7 selectionController];
    if (v9)
    {
      v10 = v9;
      if ([(UIPDFSelectionController *)v9 rangeMode]|| [(UIPDFSelectionController *)v10 instantHighlightMode])
      {
        v11 = [(UIPDFPageView *)v8 page];
        if (v11)
        {
          v12 = [(UIPDFPage *)v11 selection];
          if (v12)
          {
            if ([(UIPDFSelection *)v12 CGSelection])
            {
              v13 = [(UIPDFPageContentDelegate *)self owner];
              if (v13)
              {
                v14 = v13;
                v15 = v8;
                CGPDFSelectionRetain();
                v16 = [(UIPDFPageContentDelegate *)self highlightColor];
                NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
                if (NumberOfRectsAndTransforms)
                {
                  v18 = NumberOfRectsAndTransforms;
                  for (i = 0; i != v18; ++i)
                  {
                    v22 = 0u;
                    v23 = 0u;
                    memset(v21, 0, sizeof(v21));
                    CGPDFSelectionGetRectAndTransform();
                    Mutable = CGPathCreateMutable();
                    [(UIPDFPageContentDelegate *)self addRect:Mutable toPath:v21 transform:v8 view:v14 owner:v22, v23];
                    CGContextSaveGState(a4);
                    CGContextSetFillColorWithColor(a4, v16);
                    CGContextAddPath(a4, Mutable);
                    CGContextFillPath(a4);
                    CGContextRestoreGState(a4);
                    CGPathRelease(Mutable);
                  }
                }

                CGPDFSelectionRelease();
              }
            }
          }
        }
      }

      else
      {

        [(UIPDFPageContentDelegate *)self drawSelectionLayerBlockMode:a3 inContext:a4];
      }
    }
  }
}

- (CGRect)box
{
  objc_copyStruct(v6, &self->_box, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end