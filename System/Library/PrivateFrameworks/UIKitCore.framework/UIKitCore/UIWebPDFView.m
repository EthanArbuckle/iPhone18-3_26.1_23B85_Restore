@interface UIWebPDFView
+ (void)initialize;
- (BOOL)_checkIfDocumentNeedsUnlock;
- (BOOL)_tryToUnlockDocumentWithPassword:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGAffineTransform)documentTransform;
- (CGPDFPage)imageForContactRect:(CGFloat)a3 onPageInViewRect:(CGFloat)a4 destinationRect:(CGFloat)a5;
- (CGRect)_viewCachingBoundsInUIViewCoords;
- (CGRect)_viewportBoundsInUIVIewCoordsWithView:(id)a3;
- (CGRect)_viewportBoundsInUIViewCoords;
- (CGRect)documentBounds;
- (NSData)documentData;
- (UIWebPDFView)initWithWebPDFViewPlaceholder:(id)a3;
- (id)_addPageAtIndex:(unint64_t)a3;
- (id)_installViewAtIndex:(int64_t)a3 inFrame:(CGRect)a4;
- (id)_pageWithSelection;
- (id)_selection;
- (id)viewAtIndex:(int64_t)a3;
- (id)viewportView;
- (unint64_t)_pageNumberForRect:(CGRect)a3;
- (unint64_t)firstVisiblePageNumber;
- (void)_addSubViewsInViewCoordsBounds:(CGRect)a3 force:(BOOL)a4;
- (void)_define:(id)a3;
- (void)_didLongPress:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToPageIndex:(unint64_t)a6;
- (void)_didLongPress:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToURL:(id)a6;
- (void)_didScroll;
- (void)_didTouch:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToPageIndex:(unint64_t)a6;
- (void)_didTouch:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToURL:(id)a6;
- (void)_recreateUIPDFDocument;
- (void)_removeBackgroundImageObserverIfNeeded:(id)a3;
- (void)_removePageViewsNotInCurrentViewCoordsRect;
- (void)_removePageViewsNotInViewCoordsRect:(CGRect)a3;
- (void)_scheduleRemovePageViewsNotInViewCoordsRect;
- (void)_share:(id)a3;
- (void)_tapGestureRecognized:(id)a3;
- (void)_translate:(id)a3;
- (void)annotation:(id)a3 isBeingPressedAtPoint:(CGPoint)a4 controller:(id)a5;
- (void)annotation:(id)a3 wasTouchedAtPoint:(CGPoint)a4 controller:(id)a5;
- (void)dealloc;
- (void)didCompleteLayout;
- (void)didReceiveMemoryWarning:(id)a3;
- (void)didRotate:(id)a3;
- (void)ensureCorrectPagesAreInstalled:(BOOL)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForSnapshot:(BOOL)a3;
- (void)resetZoom:(id)a3;
- (void)setDocumentTransform:(CGAffineTransform *)a3;
- (void)setIgnoreContentOffsetChanges:(int64_t)a3;
- (void)setPdfDelegate:(id)a3;
- (void)snapshotComplete;
- (void)willRotate:(id)a3;
- (void)willScroll:(id)a3;
- (void)willZoom:(id)a3;
- (void)zoom:(id)a3 to:(CGRect)a4 atPoint:(CGPoint)a5 kind:(int)a6;
@end

@implementation UIWebPDFView

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _UIApplicationLoadWebKit();
  }
}

- (void)setIgnoreContentOffsetChanges:(int64_t)a3
{
  ignoreContentOffsetChanges = self->_ignoreContentOffsetChanges;
  if (ignoreContentOffsetChanges <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_ignoreContentOffsetChanges;
  }

  v5 = v4 - 1;
  if (a3)
  {
    v6 = ignoreContentOffsetChanges + 1;
  }

  else
  {
    v6 = v5;
  }

  self->_ignoreContentOffsetChanges = v6;
}

- (void)setPdfDelegate:(id)a3
{
  if (self->_pdfDelegate != a3)
  {
    self->_pdfDelegate = a3;
    self->_delegateRespondsToDidScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (NSData)documentData
{
  if (!self->_cgPDFDocument)
  {
    return 0;
  }

  DataProvider = CGPDFDocumentGetDataProvider();
  if (!DataProvider)
  {
    return 0;
  }

  v3 = CGDataProviderCopyData(DataProvider);

  return v3;
}

- (UIWebPDFView)initWithWebPDFViewPlaceholder:(id)a3
{
  v16.receiver = self;
  v16.super_class = UIWebPDFView;
  v4 = [(UIView *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_initialZoomScale = 1.0;
    v4->_pageViews = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(UIWebPDFView *)v5 setBackgroundColorForUnRenderedContent:+[UIColor lightGrayColor]];
    [(UIWebPDFView *)v5 setPdfPlaceHolderView:a3];
    [(WebPDFViewPlaceholder *)[(UIWebPDFView *)v5 pdfPlaceHolderView] setDelegate:v5];
    if ([(WebPDFViewPlaceholder *)v5->pdfPlaceHolderView didCompleteLayout])
    {
      [(UIWebPDFView *)v5 performSelector:sel_didCompleteLayout withObject:v5->pdfPlaceHolderView afterDelay:0.0];
    }

    v6 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel__tapGestureRecognized_];
    v5->_tapGestureRecognizer = v6;
    [(UIGestureRecognizer *)v6 setDelegate:v5];
    [(UIView *)v5 addGestureRecognizer:v5->_tapGestureRecognizer];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
    [v7 addObserver:v5 selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
    [v7 addObserver:v5 selector:sel_willZoom_ name:@"UITextSelectionWillZoom" object:0];
    [v7 addObserver:v5 selector:sel_didZoom_ name:@"UITextSelectionDidZoom" object:0];
    [v7 addObserver:v5 selector:sel_willScroll_ name:@"UITextSelectionWillScroll" object:0];
    __asm { FMOV            V0.2D, #-1.0 }

    v5->_contentOffsetAtScrollStart = _Q0;
    v13 = MEMORY[0x1E695EFD0];
    *&v5->_documentTransform.tx = *(MEMORY[0x1E695EFD0] + 32);
    v14 = v13[1];
    *&v5->_documentTransform.a = *v13;
    *&v5->_documentTransform.c = v14;
    v5->_documentScale = 1.0;
  }

  return v5;
}

- (void)_removeBackgroundImageObserverIfNeeded:(id)a3
{
  if ([a3 observationInfo])
  {
    [a3 removeObserver:self forKeyPath:@"backgroundImage"];
  }
}

- (void)dealloc
{
  v16[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v16[0] = @"UIWindowWillRotateNotification";
  v16[1] = @"UIWindowDidRotateNotification";
  v16[2] = @"UITextSelectionWillZoom";
  v16[3] = @"UITextSelectionDidZoom";
  v16[4] = @"UITextSelectionWillScroll";
  -[NSNotificationCenter _uiRemoveObserver:names:](v3, self, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5]);
  [(UIWebPDFView *)self setPageRects:0];
  [(UIWebPDFView *)self setPageMinYs:0];

  [(WebPDFViewPlaceholder *)[(UIWebPDFView *)self pdfPlaceHolderView] setDelegate:0];
  [(UIWebPDFView *)self setPdfPlaceHolderView:0];
  [(UIWebPDFView *)self setDocumentURL:0];
  [(UIWebPDFView *)self setDocumentPassword:0];
  CGPDFDocumentRelease(self->_cgPDFDocument);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  pageViews = self->_pageViews;
  v5 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(pageViews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 setDelegate:0];
        [(UIWebPDFView *)self _removeBackgroundImageObserverIfNeeded:v9];
      }

      v6 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(UIWebPDFView *)self setBackgroundColorForUnRenderedContent:0];
  v10.receiver = self;
  v10.super_class = UIWebPDFView;
  [(UIView *)&v10 dealloc];
}

- (id)viewAtIndex:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pageViews = self->_pageViews;
  v5 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a3 + 1000000;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(pageViews);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 tag] == v7)
    {
      return v10;
    }

    if (v6 == ++v9)
    {
      v6 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)viewportView
{
  v3 = [(UIView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return self;
  }
}

- (CGRect)_viewportBoundsInUIVIewCoordsWithView:(id)a3
{
  [a3 bounds];

  [a3 convertRect:self toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_viewportBoundsInUIViewCoords
{
  v3 = [(UIWebPDFView *)self viewportView];

  [(UIWebPDFView *)self _viewportBoundsInUIVIewCoordsWithView:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_viewCachingBoundsInUIViewCoords
{
  initialZoomScale = self->_initialZoomScale;
  v4 = [(UIWebPDFView *)self viewportView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 zoomScale];
    initialZoomScale = v5;
  }

  v6 = initialZoomScale / self->_initialZoomScale * 3.0;
  [(UIWebPDFView *)self _viewportBoundsInUIVIewCoordsWithView:v4];
  v11 = v9 - v10;
  v12 = v6 * v10;
  result.size.height = v12;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v7;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:@"backgroundImage"])
  {
    v11 = [a5 objectForKey:*MEMORY[0x1E696A4F0]];
    if (([v11 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}] & 1) == 0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v13 = __63__UIWebPDFView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v14 = &unk_1E7101E78;
      v15 = a4;
      v16 = self;
      if (pthread_main_np() == 1)
      {
        v13(v12);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v12);
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIWebPDFView;
    [(UIWebPDFView *)&v17 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
  }
}

uint64_t __63__UIWebPDFView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setHidden:0];
  [*(a1 + 40) _removeBackgroundImageObserverIfNeeded:*(a1 + 32)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 40) + 600);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if (v7 != *(a1 + 32))
      {
        result = [v7 backgroundImage];
        if (!result)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    [*(a1 + 40) setReadyForSnapshot:1];
    return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return result;
}

- (id)_installViewAtIndex:(int64_t)a3 inFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(UIWebPDFView *)self viewAtIndex:?];
  if (!v10)
  {
    v11 = [[UIPDFPageView alloc] initWithPage:[(UIPDFDocument *)self->_document pageAtIndex:a3]];
    v10 = v11;
    if (v11)
    {
      [(UIPDFPageView *)v11 setShowAnnotations:1];
      [(UIPDFPageView *)v10 setAllowSelection:1];
      [(UIPDFPageView *)v10 setUseBackingLayer:1];
      [(UIView *)v10 setTag:a3 + 1000000];
      [(UIPDFPageView *)v10 setDelegate:self];
      [(UIPDFAnnotationController *)[(UIPDFPageView *)v10 annotationController] setDelegate:self];
      [(UIPDFPageView *)v10 setBackingLayerColor:self->backgroundColorForUnRenderedContent];
      [(UIPDFPageView *)v10 setShowActivityIndicator:!self->hideActivityIndicatorForUnRenderedContent];
      [(UIView *)v10 setHidden:self->hidePageViewsUntilReadyToRender];
      [(UIPDFPageView *)v10 setShowLinkAnnotationUnderline:0];
      [(UIPDFPageView *)v10 addObserver:self forKeyPath:@"backgroundImage" options:1 context:0];
      [(UIWebPDFView *)self setReadyForSnapshot:0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __44__UIWebPDFView__installViewAtIndex_inFrame___block_invoke;
      v13[3] = &unk_1E710C398;
      *&v13[6] = x;
      *&v13[7] = y;
      *&v13[8] = width;
      *&v13[9] = height;
      v13[4] = v10;
      v13[5] = self;
      [UIView performWithoutAnimation:v13];
      AddShadowPathToView(v10);
      [(NSMutableArray *)self->_pageViews addObject:v10];
      [(UIView *)self insertSubview:v10 atIndex:0];
    }
  }

  return v10;
}

uint64_t __44__UIWebPDFView__installViewAtIndex_inFrame___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 536);
  v5 = *(*(a1 + 40) + 552);
  *&v6.a = *(*(a1 + 40) + 520);
  v3 = *&v6.a;
  *&v6.c = v4;
  *&v6.tx = v5;
  v8 = CGRectApplyAffineTransform(v7, &v6);
  v9 = CGRectIntegral(v8);
  return [v1 setFrame:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height, v3}];
}

- (void)_addSubViewsInViewCoordsBounds:(CGRect)a3 force:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(UIView *)self _scroller];
  if (v10)
  {
    v11 = v10;
    v12 = [(NSArray *)self->pageRects count];
    if (v12)
    {
      if (self->_pageMinYs)
      {
        v13 = v12;
        [v11 contentOffset];
        if (v14 - self->_contentOffsetAtScrollStart.y != 0.0 || a4 || ![(NSMutableArray *)self->_pageViews count])
        {
          v15 = *&self->_documentTransform.c;
          *&v26.a = *&self->_documentTransform.a;
          *&v26.c = v15;
          *&v26.tx = *&self->_documentTransform.tx;
          CGAffineTransformInvert(&v27, &v26);
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          v29 = CGRectApplyAffineTransform(v28, &v27);
          v16 = v29.origin.x;
          v17 = v29.origin.y;
          v18 = v29.size.width;
          v19 = v29.size.height;
          MinY = CGRectGetMinY(v29);
          v30.origin.x = v16;
          v30.origin.y = v17;
          v30.size.width = v18;
          v30.size.height = v19;
          MaxY = CGRectGetMaxY(v30);
          v22 = v13 - 1;
          PreviousPageIndexGivenYOffset = findPreviousPageIndexGivenYOffset(self->_pageMinYs, 0, v22, MinY);
          NextPageIndexGivenYOffset = findNextPageIndexGivenYOffset(self->_pageMinYs, 0, v22, MaxY);
          if (!NextPageIndexGivenYOffset)
          {
            NextPageIndexGivenYOffset = findPreviousPageIndexGivenYOffset(self->_pageMinYs, 0, v22, MaxY);
          }

          if (PreviousPageIndexGivenYOffset >= NextPageIndexGivenYOffset)
          {
            PreviousPageIndexGivenYOffset = NextPageIndexGivenYOffset;
          }

          if (NextPageIndexGivenYOffset >= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = NextPageIndexGivenYOffset;
          }

          if (v22 >= PreviousPageIndexGivenYOffset)
          {
            do
            {
              [-[NSArray objectAtIndex:](self->pageRects objectAtIndex:{PreviousPageIndexGivenYOffset), "CGRectValue"}];
              [(UIWebPDFView *)self _installViewAtIndex:PreviousPageIndexGivenYOffset++ inFrame:?];
            }

            while (PreviousPageIndexGivenYOffset <= v25);
          }
        }
      }
    }
  }
}

- (id)_addPageAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->pageRects count]<= a3)
  {
    return 0;
  }

  [-[NSArray objectAtIndex:](self->pageRects objectAtIndex:{a3), "CGRectValue"}];

  return [(UIWebPDFView *)self _installViewAtIndex:a3 inFrame:?];
}

- (void)_removePageViewsNotInViewCoordsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = *&self->_documentTransform.c;
  *&v18.a = *&self->_documentTransform.a;
  *&v18.c = v8;
  *&v18.tx = *&self->_documentTransform.tx;
  CGAffineTransformInvert(&v19, &v18);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectApplyAffineTransform(v20, &v19);
  v9 = v21.origin.y;
  v10 = v21.size.height;
  v11 = [(NSMutableArray *)self->_pageViews count];
  if (v11 - 1 >= 0)
  {
    v12 = v11;
    v13 = v9 + v10;
    do
    {
      v14 = [(NSMutableArray *)self->_pageViews objectAtIndex:--v12];
      [-[NSArray objectAtIndex:](self->pageRects objectAtIndex:{objc_msgSend(v14, "tag") - 1000000), "CGRectValue"}];
      if (v9 >= v15)
      {
        v17 = v15 + v16 > v9;
      }

      else
      {
        v17 = v13 > v15;
      }

      if (!v17)
      {
        [objc_msgSend(v14 annotationController];
        [v14 setDelegate:0];
        [(UIWebPDFView *)self _removeBackgroundImageObserverIfNeeded:v14];
        [v14 removeFromSuperview];
        [(NSMutableArray *)self->_pageViews removeObjectAtIndex:v12];
      }
    }

    while (v12 > 0);
  }
}

- (void)_removePageViewsNotInCurrentViewCoordsRect
{
  [(UIWebPDFView *)self _viewCachingBoundsInUIViewCoords];

  [(UIWebPDFView *)self _removePageViewsNotInViewCoordsRect:?];
}

- (void)_scheduleRemovePageViewsNotInViewCoordsRect
{
  if (!self->_hasScheduledCacheUpdate)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__removePageViewsNotInCurrentViewCoordsRect object:0];
    [(UIWebPDFView *)self performSelector:sel__removePageViewsNotInCurrentViewCoordsRect withObject:0 afterDelay:0.02];
    self->_hasScheduledCacheUpdate = 1;
  }
}

- (void)ensureCorrectPagesAreInstalled:(BOOL)a3
{
  if (!self->_rotating && self->_ignoreContentOffsetChanges <= 0 && !self->_zooming)
  {
    v4 = a3;
    [(UIWebPDFView *)self _viewCachingBoundsInUIViewCoords];
    [(UIWebPDFView *)self _addSubViewsInViewCoordsBounds:v4 force:?];
    self->_hasScheduledCacheUpdate = 0;

    [(UIWebPDFView *)self _scheduleRemovePageViewsNotInViewCoordsRect];
  }
}

- (void)willScroll:(id)a3
{
  if (!self->_rotating)
  {
    p_contentOffsetAtScrollStart = &self->_contentOffsetAtScrollStart;
    [-[UIView _scroller](self _scroller];
    p_contentOffsetAtScrollStart->x = v4;
    p_contentOffsetAtScrollStart->y = v5;
  }
}

- (void)_didScroll
{
  if (self->_document)
  {
    if (self->_delegateRespondsToDidScroll)
    {
      [(UIWebPDFViewDelegate *)self->_pdfDelegate didScroll:self];
    }

    [(UIWebPDFView *)self ensureCorrectPagesAreInstalled:0];
    [-[UIView _scroller](self "_scroller")];
    self->_contentOffsetAtScrollStart.x = v3;
    self->_contentOffsetAtScrollStart.y = v4;
  }
}

- (void)didReceiveMemoryWarning:(id)a3
{
  [(UIWebPDFView *)self _viewportBoundsInUIViewCoords];
  [(UIWebPDFView *)self _removePageViewsNotInViewCoordsRect:?];

  [(UIWebPDFView *)self _recreateUIPDFDocument];
}

- (void)willRotate:(id)a3
{
  self->_rotating = 1;
  p_contentOffsetAtScrollStart = &self->_contentOffsetAtScrollStart;
  [-[UIView _scroller](self _scroller];
  p_contentOffsetAtScrollStart->x = v5;
  p_contentOffsetAtScrollStart->y = v6;
  if (self->_hasScheduledCacheUpdate)
  {
    v7 = MEMORY[0x1E69E58C0];

    [v7 cancelPreviousPerformRequestsWithTarget:self selector:sel__removePageViewsNotInCurrentDocCoordsRect object:0];
  }
}

- (void)didRotate:(id)a3
{
  self->_rotating = 0;
  [(UIWebPDFView *)self ensureCorrectPagesAreInstalled:1];
  [-[UIView _scroller](self "_scroller")];
  self->_contentOffsetAtScrollStart.x = v4;
  self->_contentOffsetAtScrollStart.y = v5;
}

- (void)willZoom:(id)a3
{
  self->_zooming = 1;
  p_contentOffsetAtScrollStart = &self->_contentOffsetAtScrollStart;
  [-[UIView _scroller](self _scroller];
  p_contentOffsetAtScrollStart->x = v5;
  p_contentOffsetAtScrollStart->y = v6;
  if (self->_hasScheduledCacheUpdate)
  {
    v7 = MEMORY[0x1E69E58C0];

    [v7 cancelPreviousPerformRequestsWithTarget:self selector:sel__removePageViewsNotInCurrentDocCoordsRect object:0];
  }
}

- (unint64_t)firstVisiblePageNumber
{
  v46 = *MEMORY[0x1E69E9840];
  [(UIWebPDFView *)self _viewportBoundsInUIViewCoords];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *&self->_documentTransform.c;
  *&v43.a = *&self->_documentTransform.a;
  *&v43.c = v11;
  *&v43.tx = *&self->_documentTransform.tx;
  CGAffineTransformInvert(&v44, &v43);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  v48 = CGRectApplyAffineTransform(v47, &v44);
  height = v48.size.height;
  pageMinYs = self->_pageMinYs;
  y = v48.origin.y;
  x = v48.origin.x;
  r1 = v48.size.width;
  MinX = CGRectGetMinX(v48);
  PreviousPageIndexGivenYOffset = findPreviousPageIndexGivenYOffset(pageMinYs, 0, [(NSArray *)self->pageRects count]- 1, MinX);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  pageViews = self->_pageViews;
  v17 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    v20 = 0.0;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v40 != v19)
      {
        objc_enumerationMutation(pageViews);
      }

      v22 = [*(*(&v39 + 1) + 8 * v21) tag] - 1000000;
      [-[NSArray objectAtIndex:](self->pageRects objectAtIndex:{v22), "CGRectValue"}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v49.origin.y = y;
      v49.origin.x = x;
      v49.size.width = r1;
      v49.size.height = height;
      v51.origin.x = v24;
      v51.origin.y = v26;
      v51.size.width = v28;
      v51.size.height = v30;
      v50 = CGRectIntersection(v49, v51);
      width = v50.size.width;
      v32 = v50.size.height;
      v52.origin.x = v24;
      v52.origin.y = v26;
      v52.size.width = v28;
      v52.size.height = v30;
      v33 = CGRectEqualToRect(v50, v52);
      if (width * v32 > v20 || v33)
      {
        PreviousPageIndexGivenYOffset = v22;
      }

      if (v33)
      {
        break;
      }

      if (width * v32 > v20)
      {
        v20 = width * v32;
      }

      if (v18 == ++v21)
      {
        v18 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        return PreviousPageIndexGivenYOffset + 1;
      }
    }
  }

  return PreviousPageIndexGivenYOffset + 1;
}

- (void)prepareForSnapshot:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pageViews = self->_pageViews;
  v5 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(pageViews);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [objc_msgSend(v9 "layer")];
        [objc_msgSend(v9 "layer")];
        [objc_msgSend(v9 "layer")];
        if ([(UIWebPDFView *)self viewportView]!= self)
        {
          v10 = [(UIWebPDFView *)self viewportView];
          if (v10)
          {
            [v10 zoomScale];
            if (v11 > 2.5)
            {
              return;
            }

            if (!self->_backingLayerImageViews)
            {
              self->_backingLayerImageViews = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
            }

            v12 = [v9 backgroundImage];
            if (v12)
            {
              v13 = [[UIImageView alloc] initWithImage:v12];
              [v9 frame];
              [(UIImageView *)v13 setFrame:?];
              [(UIView *)self insertSubview:v13 aboveSubview:v9];

              [(NSMutableArray *)self->_backingLayerImageViews addObject:v13];
              [v9 setHidden:1];
            }
          }
        }
      }

      v6 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)snapshotComplete
{
  v15 = *MEMORY[0x1E69E9840];
  backingLayerImageViews = self->_backingLayerImageViews;
  if (backingLayerImageViews)
  {
    [(NSMutableArray *)backingLayerImageViews makeObjectsPerformSelector:sel_removeFromSuperview];

    self->_backingLayerImageViews = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  pageViews = self->_pageViews;
  v5 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(pageViews);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        AddShadowPathToView(v9);
        [v9 setHidden:0];
      }

      v6 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)_tryToUnlockDocumentWithPassword:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (!CGPDFDocumentIsUnlocked(self->_cgPDFDocument))
  {
    cgPDFDocument = self->_cgPDFDocument;
    v7 = [a3 UTF8String];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    if (CGPDFDocumentUnlockWithPassword(cgPDFDocument, v8))
    {
      [(UIWebPDFView *)self setDocumentPassword:a3];
      v9 = [(UIWebPDFView *)self pdfPlaceHolderView];
      v5 = 1;
      [(WebPDFViewPlaceholder *)v9 setNeedsLayout:1];
      return v5;
    }

    return 0;
  }

  return 1;
}

- (BOOL)_checkIfDocumentNeedsUnlock
{
  if (CGPDFDocumentIsUnlocked(self->_cgPDFDocument))
  {
    return 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIWebPDFViewDelegate *)self->_pdfDelegate passwordForPDFView:self];
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  cgPDFDocument = self->_cgPDFDocument;
  v6 = [(__CFString *)v4 UTF8String];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  v8 = CGPDFDocumentUnlockWithPassword(cgPDFDocument, v7);
  if (v8)
  {
    [(UIWebPDFView *)self setDocumentPassword:v4];
    [(UIWebPDFView *)self pdfPlaceHolderView];
    WebThreadRun();
  }

  return !v8;
}

- (void)_recreateUIPDFDocument
{
  if (CGPDFDocumentIsUnlocked(self->_cgPDFDocument))
  {
    v3 = CGPDFDocumentCopy(self->_cgPDFDocument, [(UIWebPDFView *)self documentPassword]);
    document = self->_document;
    if (document)
    {
      [(UIWebPDFView *)self clearSelection];
      document = self->_document;
    }

    self->_document = [[UIPDFDocument alloc] initWithCGPDFDocument:v3];
    CGPDFDocumentRelease(self->_cgPDFDocument);
    self->_cgPDFDocument = v3;
  }
}

- (void)didCompleteLayout
{
  v3 = [(UIWebPDFView *)self pdfPlaceHolderView];
  v4 = v3;
  if (!self->_cgPDFDocument)
  {
    self->_cgPDFDocument = CGPDFDocumentRetain([(WebPDFViewPlaceholder *)v3 document]);
  }

  if (![(UIWebPDFView *)self _checkIfDocumentNeedsUnlock])
  {
    [(UIWebPDFView *)self _recreateUIPDFDocument];
    [(WebPDFViewPlaceholder *)v4 clearDocument];
    [(UIWebPDFView *)self setPageRects:[(WebPDFViewPlaceholder *)v4 pageRects]];
    [(UIWebPDFView *)self setPageMinYs:[(WebPDFViewPlaceholder *)v4 pageYOrigins]];
  }

  [(WebPDFViewPlaceholder *)v4 bounds];
  if (!CGRectEqualToRect(v13, self->_documentBounds))
  {
    [(WebPDFViewPlaceholder *)v4 bounds];
    self->_documentBounds.origin.x = v5;
    self->_documentBounds.origin.y = v6;
    self->_documentBounds.size.width = v7;
    self->_documentBounds.size.height = v8;
    [(UIView *)self bounds];
    v10 = v9 / self->_documentBounds.size.width;
    self->_documentScale = v10;
    CGAffineTransformMakeScale(&v12, v10, v10);
    v11 = *&v12.c;
    *&self->_documentTransform.a = *&v12.a;
    *&self->_documentTransform.c = v11;
    *&self->_documentTransform.tx = *&v12.tx;
    if (objc_opt_respondsToSelector())
    {
      [(UIWebPDFViewDelegate *)self->_pdfDelegate didDetermineDocumentBounds:self];
    }
  }
}

- (void)zoom:(id)a3 to:(CGRect)a4 atPoint:(CGPoint)a5 kind:(int)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  if (objc_opt_respondsToSelector())
  {
    [a3 convertRect:self toView:{v12, v11, width, height}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [a3 convertPoint:self toView:{x, y}];
    pdfDelegate = self->_pdfDelegate;

    [(UIWebPDFViewDelegate *)pdfDelegate pdfView:self zoomToRect:a6 != 2 forPoint:v16 considerHeight:v18, v20, v22, v23, v24];
  }
}

- (void)resetZoom:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    pdfDelegate = self->_pdfDelegate;

    [(UIWebPDFViewDelegate *)pdfDelegate resetZoom:self];
  }
}

- (void)_didTouch:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToURL:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (objc_opt_respondsToSelector())
  {
    pdfDelegate = self->_pdfDelegate;
    v14 = [a6 absoluteString];
    [a3 convertRect:self toView:{x, y, width, height}];

    [(UIWebPDFViewDelegate *)pdfDelegate handleLinkClick:v14 inRect:?];
  }
}

- (void)_didTouch:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToPageIndex:(unint64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (objc_opt_respondsToSelector())
  {
    pdfDelegate = self->_pdfDelegate;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#page%lu", a6 + 1];
    [a3 convertRect:self toView:{x, y, width, height}];

    [(UIWebPDFViewDelegate *)pdfDelegate handleLinkClick:v14 inRect:?];
  }
}

- (void)_didLongPress:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToURL:(id)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  if (objc_opt_respondsToSelector())
  {
    pdfDelegate = self->_pdfDelegate;
    v16 = [a6 absoluteString];
    [a3 convertPoint:self toView:{x, y}];
    v31 = v18;
    v32 = v17;
    [a3 convertRect:self toView:{v12, v11, width, height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [a3 convertRectToPDFPageSpace:{v12, v11, width, height}];
    [(UIWebPDFViewDelegate *)pdfDelegate handleLongPressOnLink:v16 atPoint:v32 inRect:v31 contentRect:v20, v22, v24, v26, v27, v28, v29, v30];
  }
}

- (void)_didLongPress:(id)a3 inRect:(CGRect)a4 atPoint:(CGPoint)a5 linkingToPageIndex:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  if (objc_opt_respondsToSelector())
  {
    pdfDelegate = self->_pdfDelegate;
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#page%lu", a6 + 1];
    [a3 convertPoint:self toView:{x, y}];
    v31 = v18;
    v32 = v17;
    [a3 convertRect:self toView:{v12, v11, width, height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [a3 convertRectToPDFPageSpace:{v12, v11, width, height}];
    [(UIWebPDFViewDelegate *)pdfDelegate handleLongPressOnLink:v16 atPoint:v32 inRect:v31 contentRect:v20, v22, v24, v26, v27, v28, v29, v30];
  }
}

- (void)annotation:(id)a3 wasTouchedAtPoint:(CGPoint)a4 controller:(id)a5
{
  y = a4.y;
  x = a4.x;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_msgSend(a3 "annotationController")];
    if (v9)
    {
      v10 = v9;
      [a3 Rect];
      [v10 convertRectFromPDFPageSpace:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [a3 url];
      if (v19)
      {

        [(UIWebPDFView *)self _didTouch:v10 inRect:v19 atPoint:v12 linkingToURL:v14, v16, v18, x, y];
      }

      else
      {
        v20 = [a3 pageNumber];
        if (v20)
        {
          v21 = v20 - 1;
        }

        else
        {
          v21 = 0;
        }

        [(UIWebPDFView *)self _didTouch:v10 inRect:v21 atPoint:v12 linkingToPageIndex:v14, v16, v18, x, y];
      }
    }
  }
}

- (void)annotation:(id)a3 isBeingPressedAtPoint:(CGPoint)a4 controller:(id)a5
{
  y = a4.y;
  x = a4.x;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_msgSend(a3 "annotationController")];
    if (v9)
    {
      v10 = v9;
      [a3 Rect];
      [v10 convertRectFromPDFPageSpace:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [a3 url];
      if (v19)
      {

        [(UIWebPDFView *)self _didLongPress:v10 inRect:v19 atPoint:v12 linkingToURL:v14, v16, v18, x, y];
      }

      else
      {
        v20 = [a3 pageNumber];
        if (v20)
        {
          v21 = v20 - 1;
        }

        else
        {
          v21 = 0;
        }

        [(UIWebPDFView *)self _didLongPress:v10 inRect:v21 atPoint:v12 linkingToPageIndex:v14, v16, v18, x, y];
      }
    }
  }
}

- (id)_pageWithSelection
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pageViews = self->_pageViews;
  v3 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *v12;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v12 != v5)
    {
      objc_enumerationMutation(pageViews);
    }

    v7 = *(*(&v11 + 1) + 8 * v6);
    v8 = [v7 page];
    if (v8)
    {
      v9 = [v8 selection];
      if (v9)
      {
        if ([objc_msgSend(v9 "string")])
        {
          return v7;
        }
      }
    }

    if (v4 == ++v6)
    {
      v4 = [(NSMutableArray *)pageViews countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_selection
{
  v2 = [-[UIWebPDFView _pageWithSelection](self "_pageWithSelection")];

  return [v2 selection];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__define_ == a3)
  {
    v5 = [(UIResponder *)self _canShowTextServiceForType:2, a4];
    if (v5)
    {
      v6 = [-[UIWebPDFView _selection](self "_selection")];

      LOBYTE(v5) = [UIReferenceLibraryViewController _shouldShowDefineForTerm:v6];
    }
  }

  else if (sel__translate_ == a3)
  {
    v5 = [(UIResponder *)self _canShowTextServiceForType:32, a4];
    if (v5)
    {
      [(UIWebPDFView *)self _selection];
      LOBYTE(v5) = 1;
    }
  }

  else if (sel__share_ == a3)
  {
    v5 = [(UIResponder *)self _canShowTextServiceForType:8, a4];
    if (v5)
    {
      LOBYTE(v5) = [objc_msgSend(-[UIWebPDFView _selection](self "_selection")] != 0;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIWebPDFView;
    LOBYTE(v5) = [UIView canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v5;
}

- (void)_define:(id)a3
{
  v4 = [(UIWebPDFView *)self _pageWithSelection];
  v5 = [objc_msgSend(v4 "page")];
  v6 = [v5 string];
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  [v4 convertRectFromPDFPageSpace:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [(UIResponder *)self _showServiceForType:2 withContext:[_UITextServiceSessionContext sessionContextWithText:v6 withRect:v4 withView:?]];
}

- (void)_translate:(id)a3
{
  v4 = [(UIWebPDFView *)self _pageWithSelection];
  v5 = [objc_msgSend(v4 "page")];
  v6 = [v5 string];
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  [v4 convertRectFromPDFPageSpace:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [(UIResponder *)self _showServiceForType:32 withContext:[_UITextServiceSessionContext sessionContextWithText:v6 withRect:v4 withView:?]];
}

- (void)_share:(id)a3
{
  v4 = [(UIWebPDFView *)self _pageWithSelection];
  v5 = [objc_msgSend(v4 "page")];
  v6 = [v5 string];
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  [v4 convertRectFromPDFPageSpace:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [(UIResponder *)self _showServiceForType:8 withContext:[_UITextServiceSessionContext sessionContextWithText:v6 withRect:v4 withView:?]];
}

- (void)_tapGestureRecognized:(id)a3
{
  if (self->_tapGestureRecognizer == a3)
  {
    [(UIWebPDFView *)self clearSelection];
  }
}

- (unint64_t)_pageNumberForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = *&self->_documentTransform.c;
  *&v19.a = *&self->_documentTransform.a;
  *&v19.c = v8;
  *&v19.tx = *&self->_documentTransform.tx;
  CGAffineTransformInvert(&v20, &v19);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectApplyAffineTransform(v21, &v20);
  v9 = v22.origin.y;
  v10 = v22.size.height;
  v11 = [(UIWebPDFView *)self pageRects];
  v12 = [(NSArray *)v11 count];
  v13 = 0;
  v14 = v9 + v10;
  while (v12 != v13)
  {
    [-[NSArray objectAtIndex:](v11 objectAtIndex:{v13), "CGRectValue"}];
    if (v15 >= v9)
    {
      v17 = v14 > v15;
    }

    else
    {
      v17 = v15 + v16 > v9;
    }

    ++v13;
    if (v17)
    {
      return v13;
    }
  }

  return 0;
}

- (CGPDFPage)imageForContactRect:(CGFloat)a3 onPageInViewRect:(CGFloat)a4 destinationRect:(CGFloat)a5
{
  v71.origin.x = a10;
  v71.origin.y = a11;
  v71.size.width = a12;
  v71.size.height = a13;
  v72 = CGRectIntegral(v71);
  width = v72.size.width;
  height = v72.size.height;
  x = v72.origin.x;
  y = v72.origin.y;
  if (CGRectIsEmpty(v72))
  {
    return 0;
  }

  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  v74 = CGRectIntegral(v73);
  v29 = v74.origin.x;
  v30 = v74.origin.y;
  v31 = v74.size.width;
  v32 = v74.size.height;
  if (CGRectIsEmpty(v74))
  {
    return 0;
  }

  v33 = [a1 _pageNumberForRect:{a6, a7, a8, a9}];
  if (!v33)
  {
    return 0;
  }

  Page = CGPDFDocumentGetPage([a1 cgPDFDocument], v33);
  ImageFromCurrentImageContext = Page;
  if (Page)
  {
    v36 = CGPDFPageGetRotationAngle(Page) % 360;
    v37 = v36 + (v36 < 0 ? 0x168 : 0);
    v38 = v37 == 90 || v37 == 270;
    if (v38)
    {
      v39 = height;
    }

    else
    {
      v39 = width;
    }

    v62 = v39;
    if (!v38)
    {
      width = height;
    }

    memset(&v66, 0, 32);
    memset(&transform, 0, sizeof(transform));
    v75.origin.x = v29;
    v75.origin.y = v30;
    v75.size.width = v31;
    v75.size.height = v32;
    MinX = CGRectGetMinX(v75);
    v76.origin.x = v29;
    v76.origin.y = v30;
    v76.size.width = v31;
    v76.size.height = v32;
    v40 = v29;
    MinY = CGRectGetMinY(v76);
    v77.origin.x = v40;
    v77.origin.y = v30;
    v77.size.width = v31;
    v77.size.height = v32;
    MaxX = CGRectGetMaxX(v77);
    v78.origin.x = v40;
    v78.origin.y = v30;
    v78.size.width = v31;
    v78.size.height = v32;
    MaxY = CGRectGetMaxY(v78);
    v79.origin.x = v40;
    v79.origin.y = v30;
    v79.size.width = v31;
    v79.size.height = v32;
    txa = CGRectGetWidth(v79);
    v80.origin.x = v40;
    v80.origin.y = v30;
    v80.size.width = v31;
    v80.size.height = v32;
    v44 = CGRectGetHeight(v80);
    v45 = CGPDFPageGetRotationAngle(ImageFromCurrentImageContext) % 360;
    v46 = v45 + (v45 < 0 ? 0x168 : 0);
    if (v46 > 179)
    {
      v47 = x;
      if (v46 != 180)
      {
        if (v46 == 270)
        {
          MaxX = -MinX;
          *&v66.a = xmmword_18A64B720;
          *&v66.c = xmmword_18A681780;
          v48 = MaxY;
          goto LABEL_22;
        }

LABEL_30:
        abort();
      }

      v66.a = -1.0;
      v66.b = 0.0;
      v66.c = 0.0;
      v66.d = -1.0;
      v48 = MaxX;
      MaxX = MaxY;
    }

    else
    {
      v47 = x;
      if (v46)
      {
        if (v46 == 90)
        {
          v48 = -MinY;
          *&v66.a = xmmword_18A67CAC0;
          *&v66.c = xmmword_18A64B730;
LABEL_22:
          v50 = v44;
          v44 = txa;
LABEL_26:
          v66.tx = v48;
          v66.ty = MaxX;
          CGAffineTransformMakeTranslation(&transform, v50 * -0.5, v44 * -0.5);
          t1 = v66;
          t2 = transform;
          CGAffineTransformConcat(&v66, &t1, &t2);
          v81.origin.x = v47;
          v81.origin.y = y;
          v81.size.width = v62;
          v81.size.height = width;
          txb = CGRectGetMinX(v81);
          v82.origin.x = v47;
          v82.origin.y = y;
          v82.size.width = v62;
          v82.size.height = width;
          v51 = CGRectGetMinY(v82);
          v83.origin.x = v47;
          v83.origin.y = y;
          v83.size.width = v62;
          v83.size.height = width;
          v52 = CGRectGetWidth(v83);
          v84.origin.x = v47;
          v84.origin.y = y;
          v84.size.width = v62;
          v84.size.height = width;
          v53 = CGRectGetHeight(v84);
          v54 = fmin(v52 / v50, v53 / v44);
          CGAffineTransformMakeScale(&t1, v54, v54);
          transform = t1;
          t2 = v66;
          v67 = t1;
          CGAffineTransformConcat(&t1, &t2, &v67);
          v66 = t1;
          CGAffineTransformMakeTranslation(&t1, v52 * 0.5, v53 * 0.5);
          transform = t1;
          t2 = v66;
          v67 = t1;
          CGAffineTransformConcat(&t1, &t2, &v67);
          v66 = t1;
          CGAffineTransformMakeTranslation(&t1, txb, v51);
          transform = t1;
          t2 = v66;
          v67 = t1;
          CGAffineTransformConcat(&t1, &t2, &v67);
          v66 = t1;
          _UIGraphicsBeginImageContextWithOptions(1, 0, v62, width, 0.0);
          ContextStack = GetContextStack(0);
          if (*ContextStack < 1)
          {
            v56 = 0;
          }

          else
          {
            v56 = ContextStack[3 * (*ContextStack - 1) + 1];
          }

          v85.origin.x = v47;
          v85.origin.y = y;
          v85.size.width = v62;
          v85.size.height = width;
          CGContextClipToRect(v56, v85);
          v86.origin.x = v47;
          v86.origin.y = y;
          v86.size.width = v62;
          v86.size.height = width;
          v57 = CGRectGetHeight(v86);
          CGContextTranslateCTM(v56, 0.0, v57);
          CGContextScaleCTM(v56, 1.0, -1.0);
          transform = v66;
          CGContextConcatCTM(v56, &transform);
          CGContextSetFillColorWithColor(v56, [+[UIColor CGColor] whiteColor];
          v87.origin.x = v47;
          v87.origin.y = y;
          v87.size.width = v62;
          v87.size.height = width;
          CGContextFillRect(v56, v87);
          CGContextDrawPDFPage(v56, ImageFromCurrentImageContext);
          ImageFromCurrentImageContext = _UIGraphicsGetImageFromCurrentImageContext(0);
          UIGraphicsEndImageContext();
          return ImageFromCurrentImageContext;
        }

        goto LABEL_30;
      }

      v48 = -MinX;
      MaxX = -MinY;
      v66.a = 1.0;
      v66.b = 0.0;
      v66.c = 0.0;
      v66.d = 1.0;
    }

    v50 = txa;
    goto LABEL_26;
  }

  return ImageFromCurrentImageContext;
}

- (CGRect)documentBounds
{
  x = self->_documentBounds.origin.x;
  y = self->_documentBounds.origin.y;
  width = self->_documentBounds.size.width;
  height = self->_documentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)documentTransform
{
  v3 = *&self[11].b;
  *&retstr->a = *&self[10].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].d;
  return self;
}

- (void)setDocumentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_documentTransform.a = *&a3->a;
  *&self->_documentTransform.c = v4;
  *&self->_documentTransform.tx = v3;
}

@end