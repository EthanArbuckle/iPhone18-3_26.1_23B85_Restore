@interface UIPDFSelectionController
- (BOOL)shouldTrackAt:(CGPoint)at;
- (CGPoint)adjustedPoint;
- (CGPoint)currentSelectionPoint;
- (CGPoint)initialSelectionPoint;
- (CGPoint)selectedPointOffset;
- (UIPDFSelectionController)init;
- (void)addSelectionWidget:(id)widget;
- (void)adjustSelection:(CGPoint)selection;
- (void)clearSelection;
- (void)dealloc;
- (void)endTracking:(CGPoint)tracking;
- (void)extendSelectionToParagraph;
- (void)hideWidget;
- (void)layoutSelections;
- (void)selectionHide:(id)hide;
- (void)selectionHideFromAncestor:(id)ancestor;
- (void)selectionShow:(id)show;
- (void)selectionShowToAncestor:(id)ancestor;
- (void)setSelectionFor:(CGPoint)for;
- (void)startSelectingAt:(CGPoint)at;
- (void)startTracking:(CGPoint)tracking andPoint:(CGPoint)point;
- (void)startTracking:(CGPoint)tracking showMagnifier:(BOOL *)magnifier;
- (void)suspendInstantHighlightMode;
- (void)tracking:(CGPoint)tracking andPoint:(CGPoint)point;
- (void)tracking:(CGPoint)tracking showMagnifier:(BOOL *)magnifier;
@end

@implementation UIPDFSelectionController

- (UIPDFSelectionController)init
{
  v5.receiver = self;
  v5.super_class = UIPDFSelectionController;
  v2 = [(UIPDFSelectionController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_selectionHideFromAncestor_ name:@"UITextSelectionWillScroll" object:0];
    [defaultCenter addObserver:v2 selector:sel_selectionShowToAncestor_ name:@"UITextSelectionDidScroll" object:0];
    [defaultCenter addObserver:v2 selector:sel_selectionHideFromAncestor_ name:@"UITextSelectionWillZoom" object:0];
    [defaultCenter addObserver:v2 selector:sel_selectionShowToAncestor_ name:@"UITextSelectionDidZoom" object:0];
    [defaultCenter addObserver:v2 selector:sel_selectionHide_ name:@"UIWindowWillRotateNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_selectionShowDelayed_ name:@"UIWindowDidRotateNotification" object:0];
    v2->_pageView = 0;
    *&v2->_instantModeIsSuspended = 0;
    v2->_needsLayout = 0;
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = UIPDFSelectionController;
  [(UIPDFSelectionController *)&v3 dealloc];
}

- (void)selectionHideFromAncestor:(id)ancestor
{
  object = [ancestor object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UIView *)self->_pageView isDescendantOfView:object])
  {

    [(UIPDFSelectionController *)self selectionHide:ancestor];
  }
}

- (void)selectionShowToAncestor:(id)ancestor
{
  object = [ancestor object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UIView *)self->_pageView isDescendantOfView:object])
  {

    [(UIPDFSelectionController *)self selectionShow:ancestor];
  }
}

- (void)selectionHide:(id)hide
{
  self->_hiding = 1;
  if (self->_selectionWidget)
  {
    [(UIPDFPageView *)self->_pageView hideSelection];
  }
}

- (void)selectionShow:(id)show
{
  self->_hiding = 0;
  if (self->_selectionWidget)
  {
    [(UIPDFPageView *)self->_pageView showSelection];
  }
}

- (void)adjustSelection:(CGPoint)selection
{
  y = selection.y;
  x = selection.x;
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:?];
  v42 = v6;
  v43 = v7;
  page = [(UIPDFPageView *)self->_pageView page];
  [(UIPDFPage *)page CGPage];
  if (!self->_rangeMode)
  {
    [(UIPDFSelectionWidget *)self->_selectionWidget selectionRectangle];
    [(UIPDFPageView *)self->_pageView convertRectToPDFPageSpace:?];
    IntersectingRect = CGPDFSelectionCreateIntersectingRect();
    if (!IntersectingRect)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if (self->_preceeds)
  {
    v9 = CGPDFSelectionCreateFromPointToIndex();
    if (v9)
    {
      IntersectingRect = v9;
      EndIndex = CGPDFSelectionGetEndIndex();
      lastIndex = self->_lastIndex;
      goto LABEL_9;
    }

    CGPDFPageGetLayout();
    CGPDFLayoutGetCharacterBounds();
    CGRectGetWidth(v56);
  }

  else
  {
    v13 = CGPDFSelectionCreateFromIndexToPoint();
    if (v13)
    {
      IntersectingRect = v13;
      EndIndex = CGPDFSelectionGetStartIndex();
      lastIndex = self->_firstIndex;
LABEL_9:
      if (EndIndex == lastIndex)
      {
        goto LABEL_10;
      }

LABEL_29:
      CGPDFSelectionRelease();
      goto LABEL_30;
    }

    CGPDFPageGetLayout();
    CGPDFLayoutGetCharacterBounds();
  }

  BetweenPoints = CGPDFSelectionCreateBetweenPoints();
  if (!BetweenPoints)
  {
    goto LABEL_30;
  }

  IntersectingRect = BetweenPoints;
  if (CGPDFSelectionIsWithinLayout())
  {
    goto LABEL_29;
  }

LABEL_10:
  IsWithinLayout = CGPDFSelectionIsWithinLayout();
  rangeMode = self->_rangeMode;
  if (!rangeMode || (IsWithinLayout & 1) != 0)
  {
    if (!rangeMode && ((IsWithinLayout ^ 1) & 1) == 0)
    {
      CGPDFSelectionGetBounds();
      [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
      v50 = CGRectInset(v49, 8.0, 8.0);
      v47.x = x;
      v47.y = y;
      if (CGRectContainsPoint(v50, v47) && CGPDFSelectionGetNumberOfTextRanges() >= 1)
      {
        memset(&v45, 0, sizeof(v45));
        CGPDFSelectionGetRectAndTransform();
        v51.origin = 0u;
        v51.size = 0u;
        v52 = CGRectInset(v51, 0.1, 0.1);
        v44.a = v52.origin.x;
        v44.b = v52.origin.y;
        v44.c = v52.size.width;
        v44.d = v52.size.height;
        MinX = CGRectGetMinX(v52);
        v53.origin.x = v44.a;
        v53.origin.y = v44.b;
        v53.size.width = v44.c;
        v53.size.height = v44.d;
        v24 = MinX * 0.0 + CGRectGetMaxY(v53) * 0.0 + 0.0;
        CGPDFSelectionGetRectAndTransform();
        v54.origin.x = v44.a;
        v54.origin.y = v44.b;
        v54.size.width = v44.c;
        v54.size.height = v44.d;
        v55 = CGRectInset(v54, 0.1, 0.1);
        v44.a = v55.origin.x;
        v44.b = v55.origin.y;
        v44.c = v55.size.width;
        v44.d = v55.size.height;
        *&v25 = CGRectGetMaxX(v55);
        v41 = v25;
        *&v25 = v44.a;
        b = v44.b;
        c = v44.c;
        d = v44.d;
        MinY = CGRectGetMinY(*&v25);
        v30.f64[0] = v42;
        v30.f64[1] = v43;
        v31 = vsubq_f64(v30, vaddq_f64(0, vaddq_f64(vmulq_n_f64(0, *&v41), vmulq_n_f64(0, MinY))));
        v32 = vmulq_f64(v31, v31);
        v33 = vdupq_lane_s64(*&v32.f64[0], 0);
        v33.f64[0] = (v42 - v24) * (v42 - v24);
        v32.f64[0] = (v43 - v24) * (v43 - v24);
        *&v32.f64[0] = vsqrt_f32(vcvt_f32_f64(vaddq_f64(v33, v32)));
        LOBYTE(v32.f64[0]) = vcgt_f32(vdup_lane_s32(*&v32.f64[0], 1), *&v32.f64[0]).u8[0];
        self->_preceeds = LOBYTE(v32.f64[0]) & 1;
        v34 = (LOBYTE(v32.f64[0]) & 1) != 0 ? CGPDFSelectionCreateFromPointToIndex() : CGPDFSelectionCreateFromIndexToPoint();
        v39 = v34;
        if (v34)
        {
          CGPDFSelectionRelease();
          [(UIPDFSelectionWidget *)self->_selectionWidget remove];

          v40 = objc_alloc_init(UIPDFTextRangeWidget);
          self->_selectionWidget = v40;
          [(UIPDFTextRangeWidget *)v40 setPageView:self->_pageView];
          self->_rangeMode = 1;
          [(UIPDFSelectionWidget *)self->_selectionWidget setSelectedGrabber:!self->_preceeds];
          IntersectingRect = v39;
        }
      }
    }
  }

  else
  {
    page2 = [(UIPDFPageView *)self->_pageView page];
    selection = [(UIPDFPage *)page2 selection];
    numberOfRectangles = [(UIPDFSelection *)selection numberOfRectangles];
    if (numberOfRectangles)
    {
      v19 = numberOfRectangles;
      for (i = 0; i != v19; ++i)
      {
        memset(&v46, 0, sizeof(v46));
        memset(&v45, 0, sizeof(v45));
        [(UIPDFSelection *)selection getBounds:&v46 transform:&v45 index:i];
        origin = v46.origin;
        size = v46.size;
        v44 = v45;
        v48 = CGRectApplyAffineTransform(v46, &v44);
        v57.origin = origin;
        v57.size = size;
        CGRectUnion(v48, v57);
      }
    }

    CGPDFSelectionRelease();
    [(UIPDFPage *)page2 CGPage];
    IntersectingRect = CGPDFSelectionCreateIntersectingRect();
    if (IntersectingRect)
    {
      v35 = [[UIPDFSelection alloc] initWithPage:page2 cgSelection:IntersectingRect];
      [(UIPDFPage *)page2 setSelection:v35];

      [(UIPDFSelectionWidget *)self->_selectionWidget remove];
      self->_rangeMode = 0;
      v36 = objc_alloc_init(UIPDFParagraphWidget);
      self->_selectionWidget = v36;
      [(UIPDFParagraphWidget *)v36 setPageView:self->_pageView];
      [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v35];
    }
  }

  v37 = [[UIPDFSelection alloc] initWithPage:page cgSelection:IntersectingRect];
  self->_firstIndex = [(UIPDFSelection *)v37 startIndex];
  self->_lastIndex = [(UIPDFSelection *)v37 endIndex];
  [(UIPDFPage *)page setSelection:v37];

  CGPDFSelectionRelease();
  [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:[[(UIPDFPageView *)self->_pageView page] selection]];
LABEL_30:
  [(UIPDFPageView *)self->_pageView setNeedsDisplay];
}

- (void)addSelectionWidget:(id)widget
{
  v5 = objc_alloc_init(UIPDFTextRangeWidget);
  self->_selectionWidget = v5;
  [(UIPDFTextRangeWidget *)v5 setPageView:self->_pageView];
  [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:widget];

  [(UIPDFSelectionController *)self suspendInstantHighlightMode];
}

- (void)setSelectionFor:(CGPoint)for
{
  if (!self->_instantHighlightMode)
  {
    y = for.y;
    x = for.x;
    page = [(UIPDFPageView *)self->_pageView page];
    [(UIPDFPage *)page CGPage];
    [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
    v8 = CGPDFSelectionCreateAtPointWithOptions();
    if (v8)
    {
      v9 = v8;
      rangeMode = self->_rangeMode;
      IsStandaloneGraphic = CGPDFSelectionIsStandaloneGraphic();
      if (rangeMode)
      {
        if (IsStandaloneGraphic)
        {
          self->_rangeMode = 0;
        }
      }

      else if ((IsStandaloneGraphic & 1) == 0)
      {
        self->_rangeMode = 1;
        CGPDFSelectionRelease();
        v9 = CGPDFSelectionCreateAtPointWithOptions();
      }

      v12 = [[UIPDFSelection alloc] initWithPage:page cgSelection:v9];
      CGPDFSelectionRelease();
      [(UIPDFPage *)page setSelection:v12];
    }

    else
    {
      [(UIPDFPage *)page setSelection:0];
    }

    pageView = self->_pageView;

    [(UIPDFPageView *)pageView setSelectionNeedsDisplay];
  }
}

- (void)extendSelectionToParagraph
{
  page = [(UIPDFPageView *)self->_pageView page];
  selection = [(UIPDFPage *)page selection];
  [(UIPDFSelection *)selection extendToParagraph];
  [(UIPDFPage *)page setSelection:selection];
  selectionWidget = self->_selectionWidget;

  [(UIPDFSelectionWidget *)selectionWidget setSelection:selection];
}

- (void)clearSelection
{
  page = [(UIPDFPageView *)self->_pageView page];
  if ([(UIPDFPage *)page selection])
  {
    if (self->_selectionWidget)
    {
      [+[UIMenuController sharedMenuController](UIMenuController setMenuVisible:"setMenuVisible:animated:" animated:0, 1];
      [(UIPDFSelectionWidget *)self->_selectionWidget remove];

      self->_selectionWidget = 0;
    }

    if (self->_instantModeIsSuspended)
    {
      *&self->_instantModeIsSuspended = 256;
    }

    [(UIPDFPage *)page setSelection:0];
    pageView = self->_pageView;

    [(UIPDFPageView *)pageView setNeedsDisplay];
  }
}

- (void)hideWidget
{
  selectionWidget = self->_selectionWidget;
  if (selectionWidget)
  {
    [(UIPDFSelectionWidget *)selectionWidget hide];
  }
}

- (BOOL)shouldTrackAt:(CGPoint)at
{
  selectionWidget = self->_selectionWidget;
  if (selectionWidget)
  {
    self->_resizingWidget = 0;
    v7 = 0;
    v5 = [(UIPDFSelectionWidget *)selectionWidget hitTest:&v7 fixedPoint:&self->_preceeds preceeds:at.x, at.y];
    if (v5)
    {
      self->_isTracking = 1;
      self->_selectionFixedPoint = v7;
      self->_resizingWidget = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    if (self->_instantModeIsSuspended)
    {
      *&self->_instantModeIsSuspended = 256;
    }
  }

  return v5;
}

- (void)startSelectingAt:(CGPoint)at
{
  [(UIPDFSelectionController *)self setSelectionFor:at.x, at.y];
  if (!self->_rangeMode)
  {
    selection = [[(UIPDFPageView *)self->_pageView page] selection];
    if (selection)
    {
      v5 = selection;

      v6 = objc_alloc_init(UIPDFParagraphWidget);
      self->_selectionWidget = v6;
      [(UIPDFParagraphWidget *)v6 setPageView:self->_pageView];
      [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v5];
    }
  }

  if ([(UIPDFPageView *)self->_pageView delegate])
  {
    [(UIPDFPageView *)self->_pageView delegate];
    if (objc_opt_respondsToSelector())
    {
      [[(UIPDFPageView *)self->_pageView delegate] selectionWillTrack:self->_pageView];
    }
  }

  pageView = self->_pageView;

  [(UIView *)pageView setNeedsLayout];
}

- (void)startTracking:(CGPoint)tracking showMagnifier:(BOOL *)magnifier
{
  y = tracking.y;
  x = tracking.x;
  if (self->_instantHighlightMode)
  {
    self->_cancelled = 0;
    *magnifier = 0;
    annotationController = [(UIPDFPageView *)self->_pageView annotationController];
    if ([(UIPDFAnnotationController *)annotationController willTrackAtPoint:x, y])
    {
      [(UIPDFAnnotationController *)annotationController startTracking:x, y];
      [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
      self->_startPoint.x = v9;
      self->_startPoint.y = v10;
    }

    else
    {
      self->_cancelled = 1;
    }
  }

  else if (self->_pageView)
  {
    if (self->_resizingWidget)
    {
      *magnifier = self->_rangeMode;
      [(UIPDFSelectionWidget *)self->_selectionWidget selectedPointFor:tracking.x, tracking.y];
      self->_adjustedPoint.x = v11;
      self->_adjustedPoint.y = v12;
      if ([(UIPDFPageView *)self->_pageView delegate])
      {
        [(UIPDFPageView *)self->_pageView delegate];
        if (objc_opt_respondsToSelector())
        {
          [[(UIPDFPageView *)self->_pageView delegate] selectionWillTrack:self->_pageView];
        }
      }
    }

    else
    {
      self->_rangeMode = ![(UIPDFSelectionController *)self useParagraphMode];
      v13 = ![(UIPDFPageView *)self->_pageView allowHighlighting]&& self->_rangeMode;
      *magnifier = v13;
      [(UIPDFSelectionController *)self startSelectingAt:x, y];
    }

    if (!self->_rangeMode)
    {
      self->_isTracking = 0;
    }
  }
}

- (void)tracking:(CGPoint)tracking showMagnifier:(BOOL *)magnifier
{
  if (!self->_pageView)
  {
    return;
  }

  y = tracking.y;
  x = tracking.x;
  if (!self->_instantHighlightMode)
  {
    if (self->_resizingWidget)
    {
      [(UIPDFSelectionWidget *)self->_selectionWidget selectedPointFor:tracking.x, tracking.y];
      self->_adjustedPoint.x = v9;
      self->_adjustedPoint.y = v10;
      [(UIPDFSelectionWidget *)self->_selectionWidget track:x, y];
      [(UIPDFSelectionController *)self adjustSelection:self->_adjustedPoint.x, self->_adjustedPoint.y];
      LOBYTE(rangeMode) = self->_rangeMode;
    }

    else
    {
      [(UIPDFSelectionController *)self setSelectionFor:tracking.x, tracking.y];
      rangeMode = self->_rangeMode;
      if (!rangeMode)
      {
        selection = [[(UIPDFPageView *)self->_pageView page] selection];
        selectionWidget = self->_selectionWidget;
        if (selection)
        {
          if (!selectionWidget)
          {
            v14 = objc_alloc_init(UIPDFParagraphWidget);
            self->_selectionWidget = v14;
            [(UIPDFParagraphWidget *)v14 setPageView:self->_pageView];
            selectionWidget = self->_selectionWidget;
          }

          [(UIPDFSelectionWidget *)selectionWidget setSelection:selection];
        }

        else if (selectionWidget)
        {
          [(UIPDFSelectionWidget *)selectionWidget remove];

          self->_selectionWidget = 0;
        }

        goto LABEL_10;
      }
    }

    *magnifier = rangeMode;
LABEL_10:
    [(UIView *)self->_pageView setNeedsLayout];
    p_needsLayout = &self->_needsLayout;
    goto LABEL_11;
  }

  if (!self->_cancelled)
  {
    *magnifier = 0;
    [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pageView annotationController] tracking:tracking.x, tracking.y];
    p_needsLayout = &self->_needsLayout;
    if (self->_needsLayout)
    {
      [(UIView *)self->_pageView setNeedsLayout];
LABEL_11:
      *p_needsLayout = 0;
    }
  }
}

- (void)endTracking:(CGPoint)tracking
{
  if (self->_instantHighlightMode)
  {
    if (!self->_cancelled)
    {
      y = tracking.y;
      x = tracking.x;
      madeInstantAnnotation = [(UIPDFAnnotationController *)[(UIPDFPageView *)self->_pageView annotationController] madeInstantAnnotation];
      pageView = self->_pageView;
      if (madeInstantAnnotation)
      {
        [(UIPDFAnnotationController *)[(UIPDFPageView *)pageView annotationController] endTrackingAtPoint:x, y];
      }

      else
      {
        page = [(UIPDFPageView *)pageView page];
        [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
        [(UIPDFPage *)page CGPage];
        v13 = CGPDFSelectionCreateAtPointWithOptions();
        if (v13)
        {
          v14 = [[UIPDFSelection alloc] initWithPage:[(UIPDFPageView *)self->_pageView page] cgSelection:v13];
          [(UIPDFPage *)page setSelection:v14];

          selectionWidget = self->_selectionWidget;
          if (selectionWidget)
          {

            self->_selectionWidget = 0;
          }

          [(UIPDFSelectionController *)self suspendInstantHighlightMode];
          CGPDFSelectionRelease();
        }
      }

      [(UIView *)self->_pageView setNeedsLayout];
      v16 = self->_pageView;

      [(UIPDFPageView *)v16 setNeedsDisplay];
    }
  }

  else
  {
    if (self->_rangeMode)
    {
      selection = [[(UIPDFPageView *)self->_pageView page:tracking.x] selection];
      if (selection)
      {
        if (!self->_resizingWidget)
        {
          v9 = selection;
          v10 = self->_selectionWidget;
          if (v10)
          {
          }

          self->_firstIndex = [(UIPDFSelection *)v9 startIndex];
          self->_lastIndex = [(UIPDFSelection *)v9 endIndex];
          v11 = objc_alloc_init(UIPDFTextRangeWidget);
          self->_selectionWidget = v11;
          [(UIPDFTextRangeWidget *)v11 setPageView:self->_pageView];
          [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v9];
        }
      }
    }

    self->_isTracking = 0;
    [(UIPDFSelectionWidget *)self->_selectionWidget endTracking];
    if ([(UIPDFPageView *)self->_pageView delegate])
    {
      [(UIPDFPageView *)self->_pageView delegate];
      if (objc_opt_respondsToSelector())
      {
        [[(UIPDFPageView *)self->_pageView delegate] selectionDidEndTracking:self->_pageView];
      }
    }

    [(UIView *)self->_pageView setNeedsLayout];
    [(UIPDFPageView *)self->_pageView setNeedsDisplay];
    self->_resizingWidget = 0;
  }
}

- (void)suspendInstantHighlightMode
{
  selection = [[(UIPDFPageView *)self->_pageView page] selection];
  if (selection)
  {
    v4 = selection;
    self->_resizingWidget = 0;
    self->_rangeMode = 1;
    *&self->_instantModeIsSuspended = 1;
    self->_isTracking = 0;
    selectionWidget = self->_selectionWidget;
    if (selectionWidget)
    {
    }

    v6 = objc_alloc_init(UIPDFTextRangeWidget);
    self->_selectionWidget = v6;
    [(UIPDFTextRangeWidget *)v6 setPageView:self->_pageView];
    [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v4];
    cGSelection = [(UIPDFSelection *)v4 CGSelection];
    self->_firstIndex = 0;
    self->_lastIndex = 0;
    if (cGSelection)
    {
      StartIndex = CGPDFSelectionGetStartIndex();
      EndIndex = CGPDFSelectionGetEndIndex();
      if (StartIndex != -1 && EndIndex != -1)
      {
        self->_firstIndex = StartIndex;
        self->_lastIndex = EndIndex;
      }
    }
  }
}

- (void)startTracking:(CGPoint)tracking andPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = tracking.y;
  v7 = tracking.x;
  page = [(UIPDFPageView *)self->_pageView page];
  [(UIPDFPage *)page CGPage];
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:v7, v6];
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
  BetweenPoints = CGPDFSelectionCreateBetweenPoints();
  if (BetweenPoints)
  {
    v11 = [[UIPDFSelection alloc] initWithPage:page cgSelection:BetweenPoints];
    CGPDFSelectionRelease();
    [(UIPDFPage *)page setSelection:v11];
    selectionWidget = self->_selectionWidget;
    if (selectionWidget)
    {
      [(UIPDFSelectionWidget *)selectionWidget remove];
    }

    v13 = objc_alloc_init(UIPDFParagraphWidget);
    self->_selectionWidget = v13;
    [(UIPDFParagraphWidget *)v13 setPageView:self->_pageView];
    [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v11];
    [(UIPDFSelectionWidget *)self->_selectionWidget layout];

    self->_rangeMode = 0;
    *&self->_instantModeIsSuspended = 1;
  }

  else
  {
    [(UIPDFPage *)page setSelection:0];
  }

  [(UIView *)self->_pageView setNeedsLayout];
  pageView = self->_pageView;

  [(UIPDFPageView *)pageView setNeedsDisplay];
}

- (void)tracking:(CGPoint)tracking andPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = tracking.y;
  v7 = tracking.x;
  page = [(UIPDFPageView *)self->_pageView page];
  [(UIPDFPage *)page CGPage];
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:v7, v6];
  [(UIPDFPageView *)self->_pageView convertPointToPDFPageSpace:x, y];
  BetweenPoints = CGPDFSelectionCreateBetweenPoints();
  if (BetweenPoints)
  {
    v11 = [[UIPDFSelection alloc] initWithPage:page cgSelection:BetweenPoints];
    CGPDFSelectionRelease();
    [(UIPDFPage *)page setSelection:v11];
    [(UIPDFSelectionWidget *)self->_selectionWidget setSelection:v11];
    [(UIPDFSelectionWidget *)self->_selectionWidget layout];

    [(UIView *)self->_pageView setNeedsLayout];
    pageView = self->_pageView;

    [(UIPDFPageView *)pageView setNeedsDisplay];
  }
}

- (CGPoint)selectedPointOffset
{
  [(UIPDFSelectionWidget *)self->_selectionWidget viewOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)initialSelectionPoint
{
  [(UIPDFSelectionWidget *)self->_selectionWidget initialSelectionPointOnPage];
  pageView = self->_pageView;

  [(UIPDFPageView *)pageView convertPointFromPDFPageSpace:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)currentSelectionPoint
{
  [(UIPDFSelectionWidget *)self->_selectionWidget currentSelectionPointOnPage];
  pageView = self->_pageView;

  [(UIPDFPageView *)pageView convertPointFromPDFPageSpace:?];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)layoutSelections
{
  selectionWidget = self->_selectionWidget;
  if (selectionWidget)
  {
    [(UIPDFSelectionWidget *)selectionWidget layout];
  }
}

- (CGPoint)adjustedPoint
{
  x = self->_adjustedPoint.x;
  y = self->_adjustedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end