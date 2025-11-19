@interface UIPDFAnnotationController
+ (BOOL)pageHasAnnotations:(id)a3;
+ (CGImage)newMaskImage:(CGPDFPage *)a3 size:(CGSize)a4;
+ (id)newAnnotation:(CGPDFDictionary *)a3 type:(const char *)a4;
- (BOOL)annotationBriefPressRecognized:(id)a3;
- (BOOL)annotationSingleTapRecognized:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)intersects:(CGPDFSelection *)a3 with:(CGPDFSelection *)a4;
- (BOOL)isSelection:(CGPDFSelection *)a3 equalTo:(CGPDFSelection *)a4;
- (BOOL)linkAnnotationShouldBegin:(id)a3;
- (BOOL)willDoSomethingWithTap:(CGPoint)a3;
- (BOOL)willHandleTouchGestureAtPoint:(CGPoint)a3;
- (BOOL)willTrackAtPoint:(CGPoint)a3;
- (CGImage)newHighlightMaskImageFor:(CGRect)a3;
- (CGImage)underlineImageFor:(CGRect)a3;
- (CGPoint)convertPoint:(CGPoint)a3 toSurfaceLayer:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toSurfaceLayer:(id)a4;
- (CGSize)marginNoteImageSize;
- (UIPDFAnnotationController)init;
- (UIPDFAnnotationController)initWithPageView:(id)a3;
- (id)_linkAnnotationViewAt:(CGPoint)a3;
- (id)annotatePageSelection;
- (id)annotationAt:(CGPoint)a3;
- (id)linkAnnotationAt:(CGPoint)a3;
- (id)marginNoteImage:(id)a3;
- (void)_addAnnotationViewFor:(id)a3;
- (void)_addLinkAnnotationViewFor:(id)a3;
- (void)_addRecognizers:(id)a3;
- (void)_initialRange:(CGPoint)a3;
- (void)addAnnotation:(id)a3;
- (void)addDrawingSurface:(id)a3 view:(id)a4;
- (void)addLinkAnnotationViews;
- (void)annotationTapRecognized:(id)a3;
- (void)copyAttributesOf:(id)a3 to:(id)a4;
- (void)dealloc;
- (void)doubleTapRecognized:(id)a3;
- (void)drawAnnotations:(CGContext *)a3;
- (void)endTrackingAtPoint:(CGPoint)a3;
- (void)layoutAnnotationViews:(id)a3;
- (void)linkPressRecognized:(id)a3;
- (void)mergeSelectionOfAnnotation:(id)a3;
- (void)resetBeingPressedForRecognizer:(id)a3 withDelegate:(id)a4 withAnnotation:(id)a5;
- (void)setNeedsDisplay;
- (void)setSurfacePosition:(id)a3;
- (void)setView:(id)a3;
- (void)startTracking:(CGPoint)a3;
- (void)tracking:(CGPoint)a3;
@end

@implementation UIPDFAnnotationController

+ (BOOL)pageHasAnnotations:(id)a3
{
  if (a3)
  {
    Dictionary = CGPDFPageGetDictionary([a3 CGPage]);
    if (Dictionary)
    {
      value = 0;
      LOBYTE(Dictionary) = CGPDFDictionaryGetArray(Dictionary, "Annots", &value);
    }
  }

  else
  {
    LOBYTE(Dictionary) = 0;
  }

  return Dictionary;
}

+ (id)newAnnotation:(CGPDFDictionary *)a3 type:(const char *)a4
{
  if (!strcmp("Underline", a4))
  {
    v7 = off_1E70EA328;
  }

  else if (!strcmp("Text", a4))
  {
    v7 = off_1E70EA320;
  }

  else if (!strcmp("FreeText", a4))
  {
    v7 = off_1E70EA2B8;
  }

  else if (!strcmp("Highlight", a4))
  {
    v7 = off_1E70EA2C0;
  }

  else if (!strcmp("StrikeOut", a4))
  {
    v7 = off_1E70EA318;
  }

  else if (!strcmp("Circle", a4))
  {
    v7 = off_1E70EA2A8;
  }

  else if (!strcmp("Square", a4))
  {
    v7 = off_1E70EA308;
  }

  else if (!strcmp("Line", a4))
  {
    v7 = off_1E70EA2C8;
  }

  else if (!strcmp("Popup", a4))
  {
    v7 = off_1E70EA2F8;
  }

  else if (!strcmp("Link", a4))
  {
    v7 = off_1E70EA2D0;
  }

  else
  {
    if (strcmp("Stamp", a4))
    {
      return 0;
    }

    v7 = off_1E70EA310;
  }

  v8 = objc_alloc(*v7);

  return [v8 initWithAnnotationDictionary:a3];
}

- (UIPDFAnnotationController)init
{
  v3.receiver = self;
  v3.super_class = UIPDFAnnotationController;
  result = [(UIPDFAnnotationController *)&v3 init];
  if (result)
  {
    result->_tracking = 0;
    result->_cachedMarginNoteSize = *MEMORY[0x1E695F060];
  }

  return result;
}

- (UIPDFAnnotationController)initWithPageView:(id)a3
{
  v4 = [(UIPDFAnnotationController *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_pageView = a3;
    v4->_lock._os_unfair_lock_opaque = 0;
    [(UIPDFAnnotationController *)v4 setMakeUnderlineAnnotation:0];
    -[UIPDFAnnotationController setDrawingSurface:](v5, "setDrawingSurface:", [a3 layer]);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFAnnotationController;
  [(UIPDFAnnotationController *)&v3 dealloc];
}

- (void)addAnnotation:(id)a3
{
  os_unfair_lock_lock(&self->_lock);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)willHandleTouchGestureAtPoint:(CGPoint)a3
{
  v3 = [(UIView *)self->_pageView hitTest:0 withEvent:a3.x, a3.y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [(UIView *)v3 annotation];

  return [v4 recognizeGestures];
}

- (void)addLinkAnnotationViews
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [[(UIPDFPageView *)self->_pageView page] annotations];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 hidden] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 setAnnotationController:{-[UIPDFPageView annotationController](self->_pageView, "annotationController")}];
            if (![v8 annotationView])
            {
              [(UIPDFAnnotationController *)self _addLinkAnnotationViewFor:v8];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGPoint)convertPoint:(CGPoint)a3 toSurfaceLayer:(id)a4
{
  [(UIPDFPageView *)self->_pageView convertPointFromPDFPageSpace:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  v10 = [[(UIView *)self->_pageView superview] layer];
  [(CALayer *)v10 convertPoint:[(UIView *)self->_pageView layer] fromLayer:v7, v9];

  [a4 convertPoint:v10 fromLayer:?];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toSurfaceLayer:(id)a4
{
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [[(UIView *)self->_pageView superview] layer];
  [(CALayer *)v14 convertRect:[(UIView *)self->_pageView layer] fromLayer:v7, v9, v11, v13];

  [a4 convertRect:v14 fromLayer:?];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)addDrawingSurface:(id)a3 view:(id)a4
{
  v6 = objc_alloc_init(SurfaceLayer);
  [(SurfaceLayer *)v6 setDelegate:a3];
  [(CALayer *)self->_drawingSurface addSublayer:v6];
  [a3 setDrawingLayer:v6];
  [(UIPDFAnnotationController *)self setSurfacePosition:a3];
  [(SurfaceLayer *)v6 setNeedsDisplay];
}

- (void)setSurfacePosition:(id)a3
{
  v5 = [a3 selection];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
    memset(&v25[1], 0, sizeof(CGAffineTransform));
    [v6 transform];
    v25[0] = v25[1];
    if (!CGAffineTransformIsIdentity(v25))
    {
      v25[0] = v25[1];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v27 = CGRectApplyAffineTransform(v26, v25);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
    }

    [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:x, y, width, height];
    [[(UIView *)self->_pageView superview] convertRect:self->_pageView fromView:v15, v16, v17, v18];
    v19 = v28.origin.x;
    v20 = v28.origin.y;
    v21 = v28.size.width;
    v22 = v28.size.height;
    MidX = CGRectGetMidX(v28);
    v29.origin.x = v19;
    v29.origin.y = v20;
    v29.size.width = v21;
    v29.size.height = v22;
    MidY = CGRectGetMidY(v29);
    [MEMORY[0x1E6979518] setDisableActions:1];
    [objc_msgSend(a3 "drawingLayer")];
    [objc_msgSend(a3 "drawingLayer")];
    [MEMORY[0x1E6979518] setDisableActions:0];
    [objc_msgSend(a3 "drawingLayer")];
  }
}

- (void)_addRecognizers:(id)a3
{
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_doubleTapRecognized_];
  [(UIGestureRecognizer *)v5 setDelegate:self];
  [(UITapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
  [a3 addGestureRecognizer:v5];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_annotationTapRecognized_];
  [(UIGestureRecognizer *)v6 setDelegate:self];
  [(UITapGestureRecognizer *)v6 setNumberOfTapsRequired:1];
  [a3 addGestureRecognizer:v6];
  [(UIGestureRecognizer *)v6 requireGestureRecognizerToFail:v5];

  [a3 annotation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_linkPressRecognized_];
    [(UIGestureRecognizer *)v7 setDelegate:self];
    [a3 addGestureRecognizer:v7];
  }
}

- (void)_addLinkAnnotationViewFor:(id)a3
{
  [a3 Rect];
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
  v9 = [(UIView *)[UIPDFAnnotationView alloc] initWithFrame:v5, v6, v7, v8];
  [(UIView *)v9 setBackgroundColor:+[UIColor clearColor]];
  [(UIView *)self->_pageView addSubview:v9];
  [a3 setAnnotationView:v9];
  [(UIPDFAnnotationView *)v9 setAnnotation:a3];
  [(UIPDFAnnotationController *)self _addRecognizers:v9];
}

- (void)_addAnnotationViewFor:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [a3 selection]) == 0)
  {
    [a3 Rect];
    goto LABEL_7;
  }

  v6 = v5;
  [v5 bounds];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  memset(&v20[1], 0, sizeof(CGAffineTransform));
  [v6 transform];
  v20[0] = v20[1];
  if (!CGAffineTransformIsIdentity(v20))
  {
    v20[0] = v20[1];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectApplyAffineTransform(v21, v20);
LABEL_7:
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:x, y, width, height];
  v19 = [objc_alloc(objc_msgSend(a3 "viewClass"))];
  [v19 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
  [(UIView *)self->_pageView addSubview:v19];
  [a3 setAnnotationView:v19];
  [v19 setAnnotation:a3];
  [(UIPDFAnnotationController *)self _addRecognizers:v19];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(UIPDFAnnotationController *)self addDrawingSurface:a3 view:v19];
    }
  }
}

- (void)layoutAnnotationViews:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [[(UIPDFPageView *)self->_pageView page] annotations];
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          if (([v9 hidden] & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ([(UIPDFPageView *)self->_pageView allowHighlighting]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || [(UIPDFPageView *)self->_pageView showTextAnnotations])
                {
                  [v9 setAnnotationController:{-[UIPDFPageView annotationController](self->_pageView, "annotationController")}];
                  if ((-[UIPDFPageView allowHighlighting](self->_pageView, "allowHighlighting") || -[UIPDFPageView showAnnotations](self->_pageView, "showAnnotations")) && [v9 recognizeGestures] && !objc_msgSend(v9, "annotationView"))
                  {
                    [(UIPDFAnnotationController *)self _addAnnotationViewFor:v9];
                  }
                }
              }
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v10 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = v10;
      }

      while (v10);
    }

    if ([(UIPDFPageView *)self->_pageView allowHighlighting])
    {
      [(UIPDFAnnotationController *)self marginNoteImageSize];
      v13 = [[UIPDFPlacementController alloc] initWithAnnotations:v4 viewSize:v11 + 4.0, v12 + 4.0];
      [(UIPDFPlacementController *)v13 setPageView:self->_pageView];
      [(UIPDFPlacementController *)v13 layoutViews:-4.0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setView:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_pageView = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setNeedsDisplay
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [[(UIPDFPageView *)self->_pageView page] annotations];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 annotationType] == 9)
        {
          v8 = [v7 annotationView];
        }

        else
        {
          v8 = [v7 drawingLayer];
        }

        [v8 setNeedsDisplay];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)drawAnnotations:(CGContext *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  pageView = self->_pageView;
  if (pageView)
  {
    v6 = pageView;
    v7 = ![(UIPDFPageView *)self->_pageView showAnnotations]&& [(UIPDFPageView *)self->_pageView allowHighlighting];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [[(UIPDFPageView *)self->_pageView page] annotations];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(UIPDFPageView *)self->_pageView showTextAnnotations])
          {
            if (v7)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v13 parent];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_20:
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }
                }
              }
            }

            [v13 drawInContext:a3];
            continue;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  [v4 annotation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 annotation];
    [a3 locationInView:v4];

    return [v5 shouldRecognizeTapOrPress:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 annotation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 1;
      }
    }

    v7 = [v4 annotation];

    return [v7 hasPopUp];
  }
}

- (void)doubleTapRecognized:(id)a3
{
  [objc_msgSend(a3 "view")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 state] == 3)
  {
    pageView = self->_pageView;
    [a3 locationInView:pageView];

    [(UIPDFPageView *)pageView doubleTapAt:?];
  }
}

- (void)resetBeingPressedForRecognizer:(id)a3 withDelegate:(id)a4 withAnnotation:(id)a5
{
  [(UIPDFPageView *)self->_pageView clearSelection];
  if (objc_opt_respondsToSelector())
  {
    [a3 locationInView:self->_pageView];

    [a4 annotation:a5 isBeingPressedAtPoint:self controller:?];
  }
}

- (void)linkPressRecognized:(id)a3
{
  v5 = [objc_msgSend(a3 "view")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UIPDFAnnotationController *)self delegate];
    if (v6)
    {
      v7 = v6;
      if ([a3 state] == 1)
      {

        [(UIPDFAnnotationController *)self resetBeingPressedForRecognizer:a3 withDelegate:v7 withAnnotation:v5];
      }
    }
  }
}

- (void)annotationTapRecognized:(id)a3
{
  if (self->_pageView)
  {
    v5 = [a3 view];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 annotation];
        if ([a3 state] == 3)
        {
          [(UIPDFPageView *)self->_pageView clearSelection];
          v8 = [(UIPDFAnnotationController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [a3 locationInView:self->_pageView];

            [v8 annotation:v7 wasTouchedAtPoint:self controller:?];
          }
        }
      }
    }
  }
}

- (BOOL)intersects:(CGPDFSelection *)a3 with:(CGPDFSelection *)a4
{
  NumberOfTextRanges = CGPDFSelectionGetNumberOfTextRanges();
  v5 = CGPDFSelectionGetNumberOfTextRanges();
  if (NumberOfTextRanges < 1)
  {
    return 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    while (1)
    {
      TextRange = CGPDFSelectionGetTextRange();
      if (v6 >= 1)
      {
        break;
      }

LABEL_8:
      v8 = ++v7 < NumberOfTextRanges;
      if (v7 == NumberOfTextRanges)
      {
        return v8;
      }
    }

    v11 = TextRange;
    v12 = 0;
    v13 = TextRange + v10;
    while (1)
    {
      v14 = CGPDFSelectionGetTextRange();
      if (v13 > v14 && v14 + v15 > v11)
      {
        break;
      }

      if (v6 == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  return v8;
}

- (BOOL)isSelection:(CGPDFSelection *)a3 equalTo:(CGPDFSelection *)a4
{
  if (a3 == a4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    NumberOfTextRanges = CGPDFSelectionGetNumberOfTextRanges();
    if (NumberOfTextRanges == CGPDFSelectionGetNumberOfTextRanges())
    {
      v5 = NumberOfTextRanges - 1;
      if (NumberOfTextRanges < 1)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        v6 = 0;
        do
        {
          TextRange = CGPDFSelectionGetTextRange();
          v9 = v8;
          v12 = TextRange == CGPDFSelectionGetTextRange() && v9 == v10;
        }

        while (v12 && v5 != v6++);
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (void)mergeSelectionOfAnnotation:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v42 = [a3 selection];
  v4 = [v42 CGSelection];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [[(UIPDFPageView *)self->_pageView page] annotations];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [v11 selection];
          if (v12)
          {
            v13 = [v12 CGSelection];
            if (v13)
            {
              v14 = v13;
              if (![(UIPDFAnnotationController *)self isSelection:v4 equalTo:v13])
              {
                if ([(UIPDFAnnotationController *)self intersects:v4 with:v14])
                {
                  [v5 addObject:v11];
                }
              }
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v8);
  }

  v15 = [v5 count];
  if (v15)
  {
    v16 = v15;
    v17 = [v42 extent];
    v18 = 0;
    v20 = v19 + v17 - 1;
    do
    {
      v21 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v18), "selection"), "extent"}];
      if (v21 < v17)
      {
        v17 = v21;
      }

      if (v22 + v21 - 1 > v20)
      {
        v20 = v22 + v21 - 1;
      }

      ++v18;
    }

    while (v16 != v18);
    v23 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = [v5 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v5);
          }

          v28 = *(*(&v43 + 1) + 8 * j);
          if ([v28 popup])
          {
            v29 = [v28 contents];
            if (v29)
            {
              v30 = v29;
              if ([v23 length])
              {
                [v23 appendString:@"\n"];
              }

              [v23 appendString:v30];
            }
          }

          v31 = [(UIPDFAnnotationController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [v31 annotationWasRemoved:v28 controller:self];
          }

          v32 = [v28 popup];
          if (v32)
          {
            v33 = v32;
            [v32 setParent:0];
            [[(UIPDFPageView *)self->_pageView page] removeAnnotation:v33];
          }

          [[(UIPDFPageView *)self->_pageView page] removeAnnotation:v28];
        }

        v25 = [v5 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v25);
    }

    [[(UIPDFPageView *)self->_pageView page] CGPage];
    v34 = CGPDFSelectionCreateForRange();
    if (v34)
    {
      v35 = [[UIPDFSelection alloc] initWithPage:[(UIPDFPageView *)self->_pageView page] cgSelection:v34];
      [a3 setSelection:v35];

      if ([a3 annotationView])
      {
        CGPDFSelectionGetBounds();
        [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
        [objc_msgSend(a3 "annotationView")];
        [(UIPDFAnnotationController *)self setSurfacePosition:a3];
      }

      else
      {
        [(UIPDFAnnotationController *)self _addAnnotationViewFor:a3];
      }

      if ([v23 length])
      {
        v40 = objc_alloc_init(UIPDFPopupAnnotation);
        [a3 setPopup:v40];
        [a3 setContents:v23];
        [(UIPDFPopupAnnotation *)v40 setParent:a3];
        [[(UIPDFPageView *)self->_pageView page] addAnnotation:v40];
      }

      CGPDFSelectionRelease();
    }
  }

  else
  {
    v23 = v5;
  }
}

- (void)_initialRange:(CGPoint)a3
{
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:a3.x, a3.y];
  [[(UIPDFPageView *)self->_pageView page] CGPage];
  v4 = CGPDFSelectionCreateAtPointWithOptions();
  self->_initialRange.location = 0;
  self->_initialRange.length = 0;
  if (v4)
  {
    FirstIndex = CGPDFSelectionGetFirstIndex();
    LastIndex = CGPDFSelectionGetLastIndex();
    self->_initialRange.location = FirstIndex;
    self->_initialRange.length = LastIndex - FirstIndex + 1;

    CGPDFSelectionRelease();
  }
}

- (BOOL)willTrackAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(UIPDFAnnotationController *)self delegate])
  {
    return 0;
  }

  v6 = [(UIPDFAnnotationController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v6 willTrackAnnotationAtPoint:self controller:x, y];
}

- (void)startTracking:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  currentAnnotation = self->_currentAnnotation;
  if (currentAnnotation)
  {

    self->_currentAnnotation = 0;
  }

  self->_tracking = 1;
  self->_moving = 0;
  self->_startPoint.x = x;
  self->_startPoint.y = y;

  [(UIPDFAnnotationController *)self _initialRange:x, y];
}

- (void)tracking:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (!self->_moving)
  {
    if (![(UIPDFAnnotationController *)self trackMoved:a3.x, a3.y])
    {
      return;
    }

    self->_moving = 1;
  }

  length = self->_initialRange.length;
  if (!length)
  {
    [(UIPDFAnnotationController *)self _initialRange:x, y];
    length = self->_initialRange.length;
  }

  if (length >= 1)
  {
    if (!self->_currentAnnotation)
    {
      v7 = [(UIPDFAnnotationController *)self makeUnderlineAnnotation];
      v8 = off_1E70EA328;
      if (!v7)
      {
        v8 = off_1E70EA2C0;
      }

      self->_currentAnnotation = objc_alloc_init(*v8);
      [(UIPDFAnnotation *)self->_currentAnnotation setAnnotationController:[(UIPDFPageView *)self->_pageView annotationController]];
      [(UIPDFAnnotation *)self->_currentAnnotation setColor:[(UIColor *)[(UIPDFAnnotationController *)self currentColor] CGColor]];
    }

    [[(UIPDFPageView *)self->_pageView page] CGPage];
    [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
    BetweenRangeAndPoint = CGPDFSelectionCreateBetweenRangeAndPoint();
    if (BetweenRangeAndPoint)
    {
      v10 = [[UIPDFSelection alloc] initWithPage:[(UIPDFPageView *)self->_pageView page] cgSelection:BetweenRangeAndPoint];
      [(UIPDFAnnotation *)self->_currentAnnotation setSelection:v10];

      if ([(UIPDFAnnotation *)self->_currentAnnotation annotationView])
      {
        CGPDFSelectionGetBounds();
        [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
        [(UIView *)[(UIPDFAnnotation *)self->_currentAnnotation annotationView] setFrame:v11, v12, v13, v14];
        [(UIPDFAnnotationController *)self setSurfacePosition:self->_currentAnnotation];
      }

      else
      {
        [(UIPDFAnnotationController *)self _addAnnotationViewFor:self->_currentAnnotation];
      }

      CGPDFSelectionRelease();
      v15 = [(UIPDFAnnotation *)self->_currentAnnotation annotationView];

      [(UIView *)v15 setNeedsDisplay];
    }
  }
}

- (void)endTrackingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(UIPDFAnnotation *)self->_currentAnnotation selection]|| ([(UIPDFAnnotationController *)self mergeSelectionOfAnnotation:self->_currentAnnotation], ![(UIPDFAnnotation *)self->_currentAnnotation selection]))
  {
    [(UIPDFAnnotationController *)self layoutAnnotationViews:self->_pageView];
  }

  self->_tracking = 0;
  v6 = [(UIPDFAnnotationController *)self delegate];
  if (v6)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      [v7 annotation:self->_currentAnnotation didEndTrackingAtPoint:self controller:x, y];
    }
  }

  self->_currentAnnotation = 0;
  pageView = self->_pageView;

  [(UIPDFPageView *)pageView setNeedsDisplay];
}

- (id)_linkAnnotationViewAt:(CGPoint)a3
{
  result = [(UIView *)self->_pageView hitTest:0 withEvent:a3.x, a3.y];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 annotation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)linkAnnotationShouldBegin:(id)a3
{
  [a3 locationInView:self->_pageView];
  v5 = v4;
  v7 = v6;
  v8 = [(UIPDFAnnotationController *)self _linkAnnotationViewAt:?];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 annotation];
    [v9 convertPoint:self->_pageView fromView:{v5, v7}];

    LOBYTE(v8) = [v10 shouldRecognizeTapOrPress:?];
  }

  return v8;
}

- (id)annotationAt:(CGPoint)a3
{
  v3 = [(UIView *)self->_pageView hitTest:0 withEvent:a3.x, a3.y];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(UIView *)v4 annotation];
}

- (id)linkAnnotationAt:(CGPoint)a3
{
  result = [(UIView *)self->_pageView hitTest:0 withEvent:a3.x, a3.y];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 annotation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)annotationBriefPressRecognized:(id)a3
{
  [a3 locationInView:self->_pageView];
  v5 = [(UIPDFAnnotationController *)self linkAnnotationAt:?];
  if (v5)
  {
    v6 = v5;
    v7 = [(UIPDFAnnotationController *)self delegate];
    v8 = [a3 state];
    if ((v8 - 3) >= 3)
    {
      if (v8 == 1)
      {
        [(UIPDFAnnotationController *)self resetBeingPressedForRecognizer:a3 withDelegate:v7 withAnnotation:v6];
      }

      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)annotationSingleTapRecognized:(id)a3
{
  [a3 locationInView:self->_pageView];
  v5 = [(UIView *)self->_pageView hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = -[UIView annotation](v6, "annotation"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = -[UIPDFAnnotationController delegate](self, "delegate"), v9 = [a3 state], (v9 - 4) < 2))
    {
LABEL_5:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (v9 == 3)
    {
      [(UIPDFPageView *)self->_pageView clearSelection];
      if (objc_opt_respondsToSelector())
      {
        [a3 locationInView:self->_pageView];
        [v8 annotation:v7 wasTouchedAtPoint:self controller:?];
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)willDoSomethingWithTap:(CGPoint)a3
{
  v3 = [(UIPDFAnnotationController *)self annotationAt:a3.x, a3.y];
  if (v3)
  {

    LOBYTE(v3) = [v3 recognizeGestures];
  }

  return v3;
}

- (id)annotatePageSelection
{
  v3 = [[(UIPDFPageView *)self->_pageView page] selection];
  v4 = v3;
  [(UIPDFPageView *)self->_pageView clearSelection];
  v5 = [(UIPDFAnnotationController *)self makeUnderlineAnnotation];
  v6 = off_1E70EA328;
  if (!v5)
  {
    v6 = off_1E70EA2C0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 setEditable:1];
  [v7 setSelection:v3];

  [v7 setAnnotationController:{-[UIPDFPageView annotationController](self->_pageView, "annotationController")}];
  [(UIPDFAnnotationController *)self mergeSelectionOfAnnotation:v7];
  [(UIPDFAnnotationController *)self addAnnotation:v7];

  return v7;
}

- (void)copyAttributesOf:(id)a3 to:(id)a4
{
  [a4 setContents:{objc_msgSend(a3, "contents")}];
  v6 = [a3 selection];

  [a4 setSelection:v6];
}

+ (CGImage)newMaskImage:(CGPDFPage *)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  BoxRect = CGPDFPageGetBoxRect(a3, kCGPDFCropBox);
  v7 = width;
  v8 = height;
  v9 = truncf(v7) / BoxRect.size.width;
  v10 = truncf(v8) / BoxRect.size.height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, DeviceRGB, 0x4001u);
  CGContextScaleCTM(v12, v9, v10);
  CGContextDrawPDFPage(v12, a3);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  return Image;
}

- (CGImage)newHighlightMaskImageFor:(CGRect)a3
{
  if (!self->_delegate)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate newHighlightMaskImage:self controller:x, y, width, height];
}

- (CGImage)underlineImageFor:(CGRect)a3
{
  if (!self->_delegate)
  {
    return 0;
  }

  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate underlineImage:self controller:x, y, width, height];
}

- (CGSize)marginNoteImageSize
{
  width = self->_cachedMarginNoteSize.width;
  if (width == 0.0)
  {
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate marginNoteImageSize:self];
        self->_cachedMarginNoteSize.width = width;
        self->_cachedMarginNoteSize.height = v4;
      }

      else
      {
        width = self->_cachedMarginNoteSize.width;
      }
    }

    if (width == 0.0)
    {
      __asm { FMOV            V0.2D, #22.0 }

      self->_cachedMarginNoteSize = _Q0;
      width = 22.0;
    }
  }

  height = self->_cachedMarginNoteSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)marginNoteImage:(id)a3
{
  if (!self->_delegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate marginNoteImage:a3 controller:self];
}

@end