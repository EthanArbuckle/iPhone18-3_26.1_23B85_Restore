@interface UIPDFAnnotationController
+ (BOOL)pageHasAnnotations:(id)annotations;
+ (CGImage)newMaskImage:(CGPDFPage *)image size:(CGSize)size;
+ (id)newAnnotation:(CGPDFDictionary *)annotation type:(const char *)type;
- (BOOL)annotationBriefPressRecognized:(id)recognized;
- (BOOL)annotationSingleTapRecognized:(id)recognized;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)intersects:(CGPDFSelection *)intersects with:(CGPDFSelection *)with;
- (BOOL)isSelection:(CGPDFSelection *)selection equalTo:(CGPDFSelection *)to;
- (BOOL)linkAnnotationShouldBegin:(id)begin;
- (BOOL)willDoSomethingWithTap:(CGPoint)tap;
- (BOOL)willHandleTouchGestureAtPoint:(CGPoint)point;
- (BOOL)willTrackAtPoint:(CGPoint)point;
- (CGImage)newHighlightMaskImageFor:(CGRect)for;
- (CGImage)underlineImageFor:(CGRect)for;
- (CGPoint)convertPoint:(CGPoint)point toSurfaceLayer:(id)layer;
- (CGRect)convertRect:(CGRect)rect toSurfaceLayer:(id)layer;
- (CGSize)marginNoteImageSize;
- (UIPDFAnnotationController)init;
- (UIPDFAnnotationController)initWithPageView:(id)view;
- (id)_linkAnnotationViewAt:(CGPoint)at;
- (id)annotatePageSelection;
- (id)annotationAt:(CGPoint)at;
- (id)linkAnnotationAt:(CGPoint)at;
- (id)marginNoteImage:(id)image;
- (void)_addAnnotationViewFor:(id)for;
- (void)_addLinkAnnotationViewFor:(id)for;
- (void)_addRecognizers:(id)recognizers;
- (void)_initialRange:(CGPoint)range;
- (void)addAnnotation:(id)annotation;
- (void)addDrawingSurface:(id)surface view:(id)view;
- (void)addLinkAnnotationViews;
- (void)annotationTapRecognized:(id)recognized;
- (void)copyAttributesOf:(id)of to:(id)to;
- (void)dealloc;
- (void)doubleTapRecognized:(id)recognized;
- (void)drawAnnotations:(CGContext *)annotations;
- (void)endTrackingAtPoint:(CGPoint)point;
- (void)layoutAnnotationViews:(id)views;
- (void)linkPressRecognized:(id)recognized;
- (void)mergeSelectionOfAnnotation:(id)annotation;
- (void)resetBeingPressedForRecognizer:(id)recognizer withDelegate:(id)delegate withAnnotation:(id)annotation;
- (void)setNeedsDisplay;
- (void)setSurfacePosition:(id)position;
- (void)setView:(id)view;
- (void)startTracking:(CGPoint)tracking;
- (void)tracking:(CGPoint)tracking;
@end

@implementation UIPDFAnnotationController

+ (BOOL)pageHasAnnotations:(id)annotations
{
  if (annotations)
  {
    Dictionary = CGPDFPageGetDictionary([annotations CGPage]);
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

+ (id)newAnnotation:(CGPDFDictionary *)annotation type:(const char *)type
{
  if (!strcmp("Underline", type))
  {
    v7 = off_1E70EA328;
  }

  else if (!strcmp("Text", type))
  {
    v7 = off_1E70EA320;
  }

  else if (!strcmp("FreeText", type))
  {
    v7 = off_1E70EA2B8;
  }

  else if (!strcmp("Highlight", type))
  {
    v7 = off_1E70EA2C0;
  }

  else if (!strcmp("StrikeOut", type))
  {
    v7 = off_1E70EA318;
  }

  else if (!strcmp("Circle", type))
  {
    v7 = off_1E70EA2A8;
  }

  else if (!strcmp("Square", type))
  {
    v7 = off_1E70EA308;
  }

  else if (!strcmp("Line", type))
  {
    v7 = off_1E70EA2C8;
  }

  else if (!strcmp("Popup", type))
  {
    v7 = off_1E70EA2F8;
  }

  else if (!strcmp("Link", type))
  {
    v7 = off_1E70EA2D0;
  }

  else
  {
    if (strcmp("Stamp", type))
    {
      return 0;
    }

    v7 = off_1E70EA310;
  }

  v8 = objc_alloc(*v7);

  return [v8 initWithAnnotationDictionary:annotation];
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

- (UIPDFAnnotationController)initWithPageView:(id)view
{
  v4 = [(UIPDFAnnotationController *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_pageView = view;
    v4->_lock._os_unfair_lock_opaque = 0;
    [(UIPDFAnnotationController *)v4 setMakeUnderlineAnnotation:0];
    -[UIPDFAnnotationController setDrawingSurface:](v5, "setDrawingSurface:", [view layer]);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFAnnotationController;
  [(UIPDFAnnotationController *)&v3 dealloc];
}

- (void)addAnnotation:(id)annotation
{
  os_unfair_lock_lock(&self->_lock);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)willHandleTouchGestureAtPoint:(CGPoint)point
{
  v3 = [(UIView *)self->_pageView hitTest:0 withEvent:point.x, point.y];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  annotation = [(UIView *)v3 annotation];

  return [annotation recognizeGestures];
}

- (void)addLinkAnnotationViews
{
  v14 = *MEMORY[0x1E69E9840];
  annotations = [[(UIPDFPageView *)self->_pageView page] annotations];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [annotations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(annotations);
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

      v5 = [annotations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGPoint)convertPoint:(CGPoint)point toSurfaceLayer:(id)layer
{
  [(UIPDFPageView *)self->_pageView convertPointFromPDFPageSpace:point.x, point.y];
  v7 = v6;
  v9 = v8;
  layer = [[(UIView *)self->_pageView superview] layer];
  [(CALayer *)layer convertPoint:[(UIView *)self->_pageView layer] fromLayer:v7, v9];

  [layer convertPoint:layer fromLayer:?];
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toSurfaceLayer:(id)layer
{
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  layer = [[(UIView *)self->_pageView superview] layer];
  [(CALayer *)layer convertRect:[(UIView *)self->_pageView layer] fromLayer:v7, v9, v11, v13];

  [layer convertRect:layer fromLayer:?];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)addDrawingSurface:(id)surface view:(id)view
{
  v6 = objc_alloc_init(SurfaceLayer);
  [(SurfaceLayer *)v6 setDelegate:surface];
  [(CALayer *)self->_drawingSurface addSublayer:v6];
  [surface setDrawingLayer:v6];
  [(UIPDFAnnotationController *)self setSurfacePosition:surface];
  [(SurfaceLayer *)v6 setNeedsDisplay];
}

- (void)setSurfacePosition:(id)position
{
  selection = [position selection];
  if (selection)
  {
    v6 = selection;
    [selection bounds];
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
    [objc_msgSend(position "drawingLayer")];
    [objc_msgSend(position "drawingLayer")];
    [MEMORY[0x1E6979518] setDisableActions:0];
    [objc_msgSend(position "drawingLayer")];
  }
}

- (void)_addRecognizers:(id)recognizers
{
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_doubleTapRecognized_];
  [(UIGestureRecognizer *)v5 setDelegate:self];
  [(UITapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
  [recognizers addGestureRecognizer:v5];
  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_annotationTapRecognized_];
  [(UIGestureRecognizer *)v6 setDelegate:self];
  [(UITapGestureRecognizer *)v6 setNumberOfTapsRequired:1];
  [recognizers addGestureRecognizer:v6];
  [(UIGestureRecognizer *)v6 requireGestureRecognizerToFail:v5];

  [recognizers annotation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_linkPressRecognized_];
    [(UIGestureRecognizer *)v7 setDelegate:self];
    [recognizers addGestureRecognizer:v7];
  }
}

- (void)_addLinkAnnotationViewFor:(id)for
{
  [for Rect];
  [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
  v9 = [(UIView *)[UIPDFAnnotationView alloc] initWithFrame:v5, v6, v7, v8];
  [(UIView *)v9 setBackgroundColor:+[UIColor clearColor]];
  [(UIView *)self->_pageView addSubview:v9];
  [for setAnnotationView:v9];
  [(UIPDFAnnotationView *)v9 setAnnotation:for];
  [(UIPDFAnnotationController *)self _addRecognizers:v9];
}

- (void)_addAnnotationViewFor:(id)for
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = [for selection]) == 0)
  {
    [for Rect];
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
  v19 = [objc_alloc(objc_msgSend(for "viewClass"))];
  [v19 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
  [(UIView *)self->_pageView addSubview:v19];
  [for setAnnotationView:v19];
  [v19 setAnnotation:for];
  [(UIPDFAnnotationController *)self _addRecognizers:v19];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(UIPDFAnnotationController *)self addDrawingSurface:for view:v19];
    }
  }
}

- (void)layoutAnnotationViews:(id)views
{
  v19 = *MEMORY[0x1E69E9840];
  annotations = [[(UIPDFPageView *)self->_pageView page] annotations];
  if ([annotations count])
  {
    os_unfair_lock_lock(&self->_lock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(annotations);
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
        v10 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = v10;
      }

      while (v10);
    }

    if ([(UIPDFPageView *)self->_pageView allowHighlighting])
    {
      [(UIPDFAnnotationController *)self marginNoteImageSize];
      v13 = [[UIPDFPlacementController alloc] initWithAnnotations:annotations viewSize:v11 + 4.0, v12 + 4.0];
      [(UIPDFPlacementController *)v13 setPageView:self->_pageView];
      [(UIPDFPlacementController *)v13 layoutViews:-4.0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setView:(id)view
{
  os_unfair_lock_lock(&self->_lock);
  self->_pageView = view;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setNeedsDisplay
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  annotations = [[(UIPDFPageView *)self->_pageView page] annotations];
  v3 = [annotations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(annotations);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 annotationType] == 9)
        {
          annotationView = [v7 annotationView];
        }

        else
        {
          annotationView = [v7 drawingLayer];
        }

        [annotationView setNeedsDisplay];
      }

      v4 = [annotations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)drawAnnotations:(CGContext *)annotations
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
    annotations = [[(UIPDFPageView *)self->_pageView page] annotations];
    v9 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(annotations);
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

            [v13 drawInContext:annotations];
            continue;
          }
        }

        v10 = [annotations countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  [view annotation];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    annotation = [view annotation];
    [begin locationInView:view];

    return [annotation shouldRecognizeTapOrPress:?];
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
      [view annotation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 1;
      }
    }

    annotation2 = [view annotation];

    return [annotation2 hasPopUp];
  }
}

- (void)doubleTapRecognized:(id)recognized
{
  [objc_msgSend(recognized "view")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [recognized state] == 3)
  {
    pageView = self->_pageView;
    [recognized locationInView:pageView];

    [(UIPDFPageView *)pageView doubleTapAt:?];
  }
}

- (void)resetBeingPressedForRecognizer:(id)recognizer withDelegate:(id)delegate withAnnotation:(id)annotation
{
  [(UIPDFPageView *)self->_pageView clearSelection];
  if (objc_opt_respondsToSelector())
  {
    [recognizer locationInView:self->_pageView];

    [delegate annotation:annotation isBeingPressedAtPoint:self controller:?];
  }
}

- (void)linkPressRecognized:(id)recognized
{
  v5 = [objc_msgSend(recognized "view")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(UIPDFAnnotationController *)self delegate];
    if (delegate)
    {
      v7 = delegate;
      if ([recognized state] == 1)
      {

        [(UIPDFAnnotationController *)self resetBeingPressedForRecognizer:recognized withDelegate:v7 withAnnotation:v5];
      }
    }
  }
}

- (void)annotationTapRecognized:(id)recognized
{
  if (self->_pageView)
  {
    view = [recognized view];
    if (view)
    {
      v6 = view;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        annotation = [v6 annotation];
        if ([recognized state] == 3)
        {
          [(UIPDFPageView *)self->_pageView clearSelection];
          delegate = [(UIPDFAnnotationController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [recognized locationInView:self->_pageView];

            [delegate annotation:annotation wasTouchedAtPoint:self controller:?];
          }
        }
      }
    }
  }
}

- (BOOL)intersects:(CGPDFSelection *)intersects with:(CGPDFSelection *)with
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

- (BOOL)isSelection:(CGPDFSelection *)selection equalTo:(CGPDFSelection *)to
{
  if (selection == to)
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

- (void)mergeSelectionOfAnnotation:(id)annotation
{
  v53 = *MEMORY[0x1E69E9840];
  selection = [annotation selection];
  cGSelection = [selection CGSelection];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  annotations = [[(UIPDFPageView *)self->_pageView page] annotations];
  v7 = [annotations countByEnumeratingWithState:&v47 objects:v52 count:16];
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
          objc_enumerationMutation(annotations);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          selection2 = [v11 selection];
          if (selection2)
          {
            cGSelection2 = [selection2 CGSelection];
            if (cGSelection2)
            {
              v14 = cGSelection2;
              if (![(UIPDFAnnotationController *)self isSelection:cGSelection equalTo:cGSelection2])
              {
                if ([(UIPDFAnnotationController *)self intersects:cGSelection with:v14])
                {
                  [v5 addObject:v11];
                }
              }
            }
          }
        }
      }

      v8 = [annotations countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v8);
  }

  v15 = [v5 count];
  if (v15)
  {
    v16 = v15;
    extent = [selection extent];
    v18 = 0;
    v20 = v19 + extent - 1;
    do
    {
      v21 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{v18), "selection"), "extent"}];
      if (v21 < extent)
      {
        extent = v21;
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
            contents = [v28 contents];
            if (contents)
            {
              v30 = contents;
              if ([v23 length])
              {
                [v23 appendString:@"\n"];
              }

              [v23 appendString:v30];
            }
          }

          delegate = [(UIPDFAnnotationController *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [delegate annotationWasRemoved:v28 controller:self];
          }

          popup = [v28 popup];
          if (popup)
          {
            v33 = popup;
            [popup setParent:0];
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
      [annotation setSelection:v35];

      if ([annotation annotationView])
      {
        CGPDFSelectionGetBounds();
        [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
        [objc_msgSend(annotation "annotationView")];
        [(UIPDFAnnotationController *)self setSurfacePosition:annotation];
      }

      else
      {
        [(UIPDFAnnotationController *)self _addAnnotationViewFor:annotation];
      }

      if ([v23 length])
      {
        v40 = objc_alloc_init(UIPDFPopupAnnotation);
        [annotation setPopup:v40];
        [annotation setContents:v23];
        [(UIPDFPopupAnnotation *)v40 setParent:annotation];
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

- (void)_initialRange:(CGPoint)range
{
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:range.x, range.y];
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

- (BOOL)willTrackAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(UIPDFAnnotationController *)self delegate])
  {
    return 0;
  }

  delegate = [(UIPDFAnnotationController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [delegate willTrackAnnotationAtPoint:self controller:x, y];
}

- (void)startTracking:(CGPoint)tracking
{
  y = tracking.y;
  x = tracking.x;
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

- (void)tracking:(CGPoint)tracking
{
  y = tracking.y;
  x = tracking.x;
  if (!self->_moving)
  {
    if (![(UIPDFAnnotationController *)self trackMoved:tracking.x, tracking.y])
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
      makeUnderlineAnnotation = [(UIPDFAnnotationController *)self makeUnderlineAnnotation];
      v8 = off_1E70EA328;
      if (!makeUnderlineAnnotation)
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
      annotationView = [(UIPDFAnnotation *)self->_currentAnnotation annotationView];

      [(UIView *)annotationView setNeedsDisplay];
    }
  }
}

- (void)endTrackingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(UIPDFAnnotation *)self->_currentAnnotation selection]|| ([(UIPDFAnnotationController *)self mergeSelectionOfAnnotation:self->_currentAnnotation], ![(UIPDFAnnotation *)self->_currentAnnotation selection]))
  {
    [(UIPDFAnnotationController *)self layoutAnnotationViews:self->_pageView];
  }

  self->_tracking = 0;
  delegate = [(UIPDFAnnotationController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v7 annotation:self->_currentAnnotation didEndTrackingAtPoint:self controller:x, y];
    }
  }

  self->_currentAnnotation = 0;
  pageView = self->_pageView;

  [(UIPDFPageView *)pageView setNeedsDisplay];
}

- (id)_linkAnnotationViewAt:(CGPoint)at
{
  result = [(UIView *)self->_pageView hitTest:0 withEvent:at.x, at.y];
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

- (BOOL)linkAnnotationShouldBegin:(id)begin
{
  [begin locationInView:self->_pageView];
  v5 = v4;
  v7 = v6;
  v8 = [(UIPDFAnnotationController *)self _linkAnnotationViewAt:?];
  if (v8)
  {
    v9 = v8;
    annotation = [v8 annotation];
    [v9 convertPoint:self->_pageView fromView:{v5, v7}];

    LOBYTE(v8) = [annotation shouldRecognizeTapOrPress:?];
  }

  return v8;
}

- (id)annotationAt:(CGPoint)at
{
  v3 = [(UIView *)self->_pageView hitTest:0 withEvent:at.x, at.y];
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

- (id)linkAnnotationAt:(CGPoint)at
{
  result = [(UIView *)self->_pageView hitTest:0 withEvent:at.x, at.y];
  if (result)
  {
    v4 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      annotation = [v4 annotation];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return annotation;
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

- (BOOL)annotationBriefPressRecognized:(id)recognized
{
  [recognized locationInView:self->_pageView];
  v5 = [(UIPDFAnnotationController *)self linkAnnotationAt:?];
  if (v5)
  {
    v6 = v5;
    delegate = [(UIPDFAnnotationController *)self delegate];
    state = [recognized state];
    if ((state - 3) >= 3)
    {
      if (state == 1)
      {
        [(UIPDFAnnotationController *)self resetBeingPressedForRecognizer:recognized withDelegate:delegate withAnnotation:v6];
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

- (BOOL)annotationSingleTapRecognized:(id)recognized
{
  [recognized locationInView:self->_pageView];
  v5 = [(UIView *)self->_pageView hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = -[UIView annotation](v6, "annotation"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = -[UIPDFAnnotationController delegate](self, "delegate"), v9 = [recognized state], (v9 - 4) < 2))
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
        [recognized locationInView:self->_pageView];
        [v8 annotation:v7 wasTouchedAtPoint:self controller:?];
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)willDoSomethingWithTap:(CGPoint)tap
{
  v3 = [(UIPDFAnnotationController *)self annotationAt:tap.x, tap.y];
  if (v3)
  {

    LOBYTE(v3) = [v3 recognizeGestures];
  }

  return v3;
}

- (id)annotatePageSelection
{
  selection = [[(UIPDFPageView *)self->_pageView page] selection];
  v4 = selection;
  [(UIPDFPageView *)self->_pageView clearSelection];
  makeUnderlineAnnotation = [(UIPDFAnnotationController *)self makeUnderlineAnnotation];
  v6 = off_1E70EA328;
  if (!makeUnderlineAnnotation)
  {
    v6 = off_1E70EA2C0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 setEditable:1];
  [v7 setSelection:selection];

  [v7 setAnnotationController:{-[UIPDFPageView annotationController](self->_pageView, "annotationController")}];
  [(UIPDFAnnotationController *)self mergeSelectionOfAnnotation:v7];
  [(UIPDFAnnotationController *)self addAnnotation:v7];

  return v7;
}

- (void)copyAttributesOf:(id)of to:(id)to
{
  [to setContents:{objc_msgSend(of, "contents")}];
  selection = [of selection];

  [to setSelection:selection];
}

+ (CGImage)newMaskImage:(CGPDFPage *)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  BoxRect = CGPDFPageGetBoxRect(image, kCGPDFCropBox);
  v7 = width;
  v8 = height;
  v9 = truncf(v7) / BoxRect.size.width;
  v10 = truncf(v8) / BoxRect.size.height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, DeviceRGB, 0x4001u);
  CGContextScaleCTM(v12, v9, v10);
  CGContextDrawPDFPage(v12, image);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  return Image;
}

- (CGImage)newHighlightMaskImageFor:(CGRect)for
{
  if (!self->_delegate)
  {
    return 0;
  }

  height = for.size.height;
  width = for.size.width;
  y = for.origin.y;
  x = for.origin.x;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate newHighlightMaskImage:self controller:x, y, width, height];
}

- (CGImage)underlineImageFor:(CGRect)for
{
  if (!self->_delegate)
  {
    return 0;
  }

  height = for.size.height;
  width = for.size.width;
  y = for.origin.y;
  x = for.origin.x;
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

- (id)marginNoteImage:(id)image
{
  if (!self->_delegate || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [delegate marginNoteImage:image controller:self];
}

@end