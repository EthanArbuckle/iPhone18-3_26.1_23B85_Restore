@interface UIPDFPageContentDelegate
- (BOOL)isCancelled;
- (BOOL)pageHasSelection;
- (CGRect)box;
- (UIPDFPageContentDelegate)init;
- (UIPDFPageView)view;
- (void)addRect:(CGRect)rect toPath:(CGPath *)path transform:(CGAffineTransform *)transform view:(id)view owner:(id)owner;
- (void)computeTransform;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawSelectionLayer:(id)layer inContext:(CGContext *)context;
- (void)drawSelectionLayerBlockMode:(id)mode inContext:(CGContext *)context;
- (void)setIsCancelled:(BOOL)cancelled;
- (void)setView:(id)view;
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

- (void)setView:(id)view
{
  os_unfair_lock_lock(&self->_lock);
  self->_view = view;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  isCancelled = self->_isCancelled;
  os_unfair_lock_unlock(&self->_lock);
  return isCancelled;
}

- (void)setIsCancelled:(BOOL)cancelled
{
  os_unfair_lock_lock(&self->_lock);
  self->_isCancelled = cancelled;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (!self->_view)
  {
    return;
  }

  if ([(UIPDFPageContentDelegate *)self isCancelled])
  {
    return;
  }

  copyPage = [[(UIPDFPageView *)self->_view page] copyPage];
  if (!copyPage)
  {
    return;
  }

  v7 = copyPage;
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
  CGContextSaveGState(context);
  if (isCancelled)
  {
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    CGContextClipToRect(context, v24);
    v23[0] = v23[1];
    CGContextConcatCTM(context, v23);
    CGContextSetInterpolationQuality(context, kCGInterpolationMedium);
  }

  else
  {
    CGContextSetFillColorWithColor(context, [+[UIColor CGColor] whiteColor];
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    CGContextFillRect(context, v25);
    v26.origin.x = v11;
    v26.origin.y = v13;
    v26.size.width = v15;
    v26.size.height = v17;
    CGContextClipToRect(context, v26);
    v23[0] = v23[1];
    CGContextConcatCTM(context, v23);
    CGContextSetInterpolationQuality(context, kCGInterpolationMedium);
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

  view = [(UIPDFPageContentDelegate *)self view];
  if ([(UIPDFPageView *)view showAnnotations])
  {
    LOBYTE(v22) = 0;
  }

  else
  {
    v22 = ![(UIPDFPageView *)view allowHighlighting];
  }

  if (!v19 && view != 0 && (v22 & 1) == 0)
  {
    [(UIPDFPageView *)view drawAnnotations:context];
  }

  CGContextRestoreGState(context);
}

- (void)drawSelectionLayerBlockMode:(id)mode inContext:(CGContext *)context
{
  view = [(UIPDFPageContentDelegate *)self view];
  if (view)
  {
    v7 = view;
    page = [(UIPDFPageView *)view page];
    if (page)
    {
      selection = [(UIPDFPage *)page selection];
      if (selection)
      {
        v10 = selection;
        owner = [(UIPDFPageContentDelegate *)self owner];
        if (owner)
        {
          v12 = owner;
          [v10 bounds];
          [(UIPDFPageView *)v7 convertRectFromPDFPageSpace:?];
          [(CALayer *)v12 convertRect:[(UIView *)v7 layer] fromLayer:v13, v14, v15, v16];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          highlightColor = [(UIPDFPageContentDelegate *)self highlightColor];
          CGContextSaveGState(context);
          CGContextSetFillColorWithColor(context, highlightColor);
          v27.origin.x = v18;
          v27.origin.y = v20;
          v27.size.width = v22;
          v27.size.height = v24;
          CGContextFillRect(context, v27);

          CGContextRestoreGState(context);
        }
      }
    }
  }
}

- (void)addRect:(CGRect)rect toPath:(CGPath *)path transform:(CGAffineTransform *)transform view:(id)view owner:(id)owner
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
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
  [view convertPointFromPDFPageSpace:{vaddq_f64(*&transform->tx, vaddq_f64(vmulq_n_f64(*&transform->a, MinX), vmulq_n_f64(*&transform->c, MinY)))}];
  [owner convertPoint:objc_msgSend(view fromLayer:{"layer"), v15, v16}];
  v18 = v17;
  v20 = v19;
  [view convertPointFromPDFPageSpace:{vaddq_f64(*&transform->tx, vaddq_f64(vmulq_n_f64(*&transform->a, MaxX), vmulq_n_f64(*&transform->c, MinY)))}];
  [owner convertPoint:objc_msgSend(view fromLayer:{"layer"), v21, v22}];
  v24 = v23;
  v26 = v25;
  [view convertPointFromPDFPageSpace:{vaddq_f64(*&transform->tx, vaddq_f64(vmulq_n_f64(*&transform->a, MaxX), vmulq_n_f64(*&transform->c, MaxY)))}];
  [owner convertPoint:objc_msgSend(view fromLayer:{"layer"), v27, v28}];
  v30 = v29;
  v32 = v31;
  [view convertPointFromPDFPageSpace:{vaddq_f64(*&transform->tx, vaddq_f64(vmulq_n_f64(*&transform->a, MinX), vmulq_n_f64(*&transform->c, MaxY)))}];
  [owner convertPoint:objc_msgSend(view fromLayer:{"layer"), v33, v34}];
  CPSetCGPathPoints4(path, v18, v20, v24, v26, v30, v32, v35, v36);

  CGPathCloseSubpath(path);
}

- (BOOL)pageHasSelection
{
  page = [(UIPDFPageView *)[(UIPDFPageContentDelegate *)self view] page];
  if (page)
  {
    LOBYTE(page) = [(UIPDFPage *)page selection]!= 0;
  }

  return page;
}

- (void)drawSelectionLayer:(id)layer inContext:(CGContext *)context
{
  view = [(UIPDFPageContentDelegate *)self view];
  if (view)
  {
    v8 = view;
    selectionController = [(UIPDFPageView *)view selectionController];
    if (selectionController)
    {
      v10 = selectionController;
      if ([(UIPDFSelectionController *)selectionController rangeMode]|| [(UIPDFSelectionController *)v10 instantHighlightMode])
      {
        page = [(UIPDFPageView *)v8 page];
        if (page)
        {
          selection = [(UIPDFPage *)page selection];
          if (selection)
          {
            if ([(UIPDFSelection *)selection CGSelection])
            {
              owner = [(UIPDFPageContentDelegate *)self owner];
              if (owner)
              {
                v14 = owner;
                v15 = v8;
                CGPDFSelectionRetain();
                highlightColor = [(UIPDFPageContentDelegate *)self highlightColor];
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
                    CGContextSaveGState(context);
                    CGContextSetFillColorWithColor(context, highlightColor);
                    CGContextAddPath(context, Mutable);
                    CGContextFillPath(context);
                    CGContextRestoreGState(context);
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

        [(UIPDFPageContentDelegate *)self drawSelectionLayerBlockMode:layer inContext:context];
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