@interface UIWebPDFViewHandler
- ($1AB5FA073B851C12C2339EC22442E995)doubleTapScalesForSize:(CGSize)a3;
- ($1AB5FA073B851C12C2339EC22442E995)scalesForContainerSize:(CGSize)a3;
- (CGRect)_frameForDocumentBounds:(CGRect)a3;
- (CGRect)_rectForPasswordView:(id)a3;
- (CGRect)_rectForPdfView:(CGRect)a3;
- (CGRect)activeRectForRectOfInterest:(CGRect)a3;
- (CGRect)initialPresentationRectInHostViewForSheet:(id)a3;
- (CGRect)rectOfInterestForPoint:(CGPoint)a3;
- (CGRect)rectOfInterestForRotation;
- (CGRect)visibleContentRect;
- (UIView)frontView;
- (UIWebPDFViewHandler)init;
- (double)_pinValueForVerticalEdge:(unint64_t)a3 inScrollView:(id)a4;
- (double)minimumScaleForSize:(CGSize)a3;
- (double)zoomedDocumentScale;
- (id)_absoluteUrlRelativeToDocumentURL:(id)a3;
- (id)_actionForType:(int)a3 withActionInfo:(id)a4;
- (id)_actionsForInteractionInfo:(id)a3;
- (id)_getLabelViewFormatter;
- (id)_getPDFDocumentViewForWebView:(id)a3;
- (id)_scroller:(id)a3;
- (id)createLinkHighlight;
- (id)createPageLabel;
- (id)findOnPageHighlighter;
- (id)hostViewForSheet:(id)a3;
- (id)passwordForPDFView:(id)a3;
- (id)searchControllerForHighlighter:(id)a3;
- (unint64_t)_verticalEdgeForContentOffsetInScrollView:(id)a3;
- (void)_adjustContentOffsetForKeyboardIfNeeded;
- (void)_adjustZoomScalesForScrollViewInternal:(id)a3;
- (void)_completeLinkClickWithURL:(id)a3;
- (void)_completeLinkClickWithURLString:(id)a3;
- (void)_createPDFViewIfNeeded:(id)a3;
- (void)_ensurePDFViewInHierarchyForWebDocView:(id)a3;
- (void)_notifyDelegateDidClickLink:(id)a3;
- (void)_notifyDelegateWillClickLink:(id)a3;
- (void)_postdidDetermineDocumentBounds;
- (void)_removePDFViewIfWebDocViewIsNotPDF:(id)a3;
- (void)_removePDFViewIfWebDocViewIsNotSamePDF:(id)a3;
- (void)_replacePDFViewIfPresentWithWebDocView:(id)a3;
- (void)_resultRects:(id)a3 andResultViews:(id)a4 forSearchResult:(id)a5 inViewCoordinates:(id)a6;
- (void)_setSearchControllerDocumentToSearch:(id)a3;
- (void)_showLinkSheet:(id)a3;
- (void)_showPasswordEntryViewForFile:(id)a3;
- (void)_showPasswordErrorAlert;
- (void)_updateViewHierarchyForDocumentView:(id)a3 ignoreIfSame:(BOOL)a4;
- (void)adjustZoomScalesForScrollView;
- (void)clearActionSheet;
- (void)clearAllViews;
- (void)clearLinkHighlight;
- (void)clearPageLabel;
- (void)clearSearchControllerForHighlighter:(id)a3;
- (void)dealloc;
- (void)didBeginEditingPassword:(id)a3 inView:(id)a4;
- (void)didDetermineDocumentBounds:(id)a3;
- (void)didEndEditingPassword:(id)a3 inView:(id)a4;
- (void)didReceiveMemoryWarning:(id)a3;
- (void)didScroll:(id)a3;
- (void)ensureCorrectPagesAreInstalled:(BOOL)a3;
- (void)handleLinkClick:(id)a3 inRect:(CGRect)a4;
- (void)handleLongPressOnLink:(id)a3 atPoint:(CGPoint)a4 inRect:(CGRect)a5 contentRect:(CGRect)a6;
- (void)handleScrollToAnchor:(id)a3;
- (void)highlightRect:(CGRect)a3;
- (void)pdfView:(id)a3 zoomToRect:(CGRect)a4 forPoint:(CGPoint)a5 considerHeight:(BOOL)a6;
- (void)performAction:(id)a3 fromAlertController:(id)a4;
- (void)removeViewFromSuperview;
- (void)resetZoom:(id)a3;
- (void)restoreStateFromHistoryItem:(id)a3 forWebView:(id)a4;
- (void)restoreStateFromPendingHistoryItem;
- (void)revealSearchResult:(id)a3 andZoomIn:(BOOL)a4;
- (void)rotateEnclosingScrollViewToFrame:(CGRect)a3;
- (void)saveStateToHistoryItem:(id)a3 forWebView:(id)a4;
- (void)scrollToPageNumber:(int64_t)a3 animate:(BOOL)a4;
- (void)setBackgroundColorForUnRenderedContent:(id)a3;
- (void)setShowPageLabels:(BOOL)a3;
- (void)updateBoundariesOfScrollView:(id)a3 withScales:(id)a4;
- (void)updatePageNumberLabelWithUserScrolling:(BOOL)a3 animated:(BOOL)a4;
- (void)updateViewHierarchyForDocumentViewLoadComplete:(id)a3;
- (void)updateViewHierarchyForDocumentViewNewLoad:(id)a3;
- (void)updateViewHierarchyForDocumentViewTabSwitch:(id)a3 restoringZoomScale:(double)a4 andScrollPt:(CGPoint)a5;
- (void)updateViewSettings;
- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4;
@end

@implementation UIWebPDFViewHandler

- (void)setBackgroundColorForUnRenderedContent:(id)a3
{
  v5 = a3;
  self->_backgroundColorForUnRenderedContent = v5;
  pdfView = self->_pdfView;

  [(UIWebPDFView *)pdfView setBackgroundColorForUnRenderedContent:v5];
}

- (void)setShowPageLabels:(BOOL)a3
{
  showPageLabels = self->_showPageLabels;
  if (showPageLabels == a3)
  {
    if (showPageLabels)
    {
      return;
    }

    goto LABEL_3;
  }

  self->_showPageLabels = a3;
  if (!a3)
  {
LABEL_3:
    [(UIWebPDFViewHandler *)self clearPageLabel];
  }
}

- (void)_setSearchControllerDocumentToSearch:(id)a3
{
  if (a3)
  {
    v4 = CGPDFDocumentCopy([(UIWebPDFView *)self->_pdfView cgPDFDocument], [(UIWebPDFView *)self->_pdfView documentPassword]);
    if (v4)
    {
      v5 = v4;
      v6 = [[UIPDFDocument alloc] initWithCGPDFDocument:v4];
      CGPDFDocumentRelease(v5);
    }

    else
    {
      v6 = 0;
    }

    [a3 setDocumentToSearch:v6];
  }
}

- (id)searchControllerForHighlighter:(id)a3
{
  searchControllers = self->_searchControllers;
  if (!searchControllers)
  {
    searchControllers = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:512 capacity:4];
    self->_searchControllers = searchControllers;
  }

  v6 = [(NSMapTable *)searchControllers objectForKey:a3];
  if (!v6)
  {
    v6 = objc_alloc_init(UIWebPDFSearchController);
    [(NSMapTable *)self->_searchControllers setObject:v6 forKey:a3];
  }

  [(UIWebPDFViewHandler *)self _setSearchControllerDocumentToSearch:v6];
  [(UIWebPDFView *)self->_pdfView documentScale];
  [(UIWebPDFSearchController *)v6 setDocumentScale:?];
  return v6;
}

- (void)clearSearchControllerForHighlighter:(id)a3
{
  v5 = [(NSMapTable *)self->_searchControllers objectForKey:?];
  if (v5)
  {
    [v5 setSearchDelegate:0];
    searchControllers = self->_searchControllers;

    [(NSMapTable *)searchControllers removeObjectForKey:a3];
  }
}

- (id)findOnPageHighlighter
{
  v2 = [[UIWebBrowserFindOnPageHighlighter alloc] initWithPDFViewHandler:self];

  return v2;
}

- (UIWebPDFViewHandler)init
{
  v5.receiver = self;
  v5.super_class = UIWebPDFViewHandler;
  v2 = [(UIWebPDFViewHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalesPageToFit = 1;
    v2->_initialZoomScale = 1.0;
    v2->_showsShadowsForHTMLContent = 1;
    [(UIWebPDFViewHandler *)v2 setBackgroundColorForUnRenderedContent:+[UIColor lightGrayColor]];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v3;
}

- (void)dealloc
{
  v5[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v5[0] = @"UIApplicationDidReceiveMemoryWarningNotification";
  v5[1] = @"UIKeyboardDidShowNotification";
  -[NSNotificationCenter _uiRemoveObserver:names:](v3, self, [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2]);
  [(UIWebPDFViewHandler *)self clearAllViews];
  [(UIWebPDFViewHandler *)self setBackgroundColorForUnRenderedContent:0];
  v4.receiver = self;
  v4.super_class = UIWebPDFViewHandler;
  [(UIWebPDFViewHandler *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning:(id)a3
{
  [(UIWebPDFView *)self->_pdfView didReceiveMemoryWarning:a3];
  v4 = [(NSMapTable *)self->_searchControllers objectEnumerator];
  v5 = [(NSEnumerator *)v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      [(UIWebPDFViewHandler *)self _setSearchControllerDocumentToSearch:v6];
      v6 = [(NSEnumerator *)v4 nextObject];
    }

    while (v6);
  }
}

- (void)clearAllViews
{
  [(UIWebPDFViewHandler *)self clearActionSheet];
  [(UIWebPDFViewHandler *)self clearLinkHighlight];
  [(UIWebPDFViewHandler *)self clearPageLabel];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self->_pdfView];
  [(UIWebPDFView *)self->_pdfView setPdfDelegate:0];
  [(UIView *)self->_pdfView removeFromSuperview];

  self->_pdfView = 0;
  [(UIView *)self->_passwordEntryView removeFromSuperview];

  self->_passwordEntryView = 0;
  self->_searchControllers = 0;

  self->_labelViewFormatter = 0;
}

- (id)_scroller:(id)a3
{
  result = [(UIView *)self->_pdfView _scroller];
  if (!result)
  {

    return [a3 _scroller];
  }

  return result;
}

- (id)_getPDFDocumentViewForWebView:(id)a3
{
  WebThreadLock();
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "webView")];
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

- (CGRect)_rectForPdfView:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_opt_respondsToSelector())
  {
    [(UIWebPDFViewHandlerDelegate *)self->_pdfHandlerDelegate frameForPDFViewWithHandler:self proposedFrame:x, y, width, height];
    x = v8;
    y = v9;
    width = v10;
    height = v11;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_frameForDocumentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(UIView *)self->_pdfView frame:a3.origin.x];
  v7 = v6;
  v9 = v8;
  pdfView = self->_pdfView;
  if (pdfView)
  {
    [(UIWebPDFView *)pdfView documentTransform];
    v12 = v19;
    v11 = v20;
    v14 = v21;
    v13 = v22;
  }

  else
  {
    v13 = 0.0;
    v11 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
  }

  [(UIWebPDFViewHandler *)self _rectForPdfView:v7, v9, height * v14 + width * v12, height * v13 + width * v11];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_rectForPasswordView:(id)a3
{
  [(UIView *)self->_passwordEntryView frame];
  v6 = v5;
  v8 = v7;
  [a3 frame];

  [(UIWebPDFViewHandler *)self _rectForPdfView:v6, v8];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_replacePDFViewIfPresentWithWebDocView:(id)a3
{
  if (self->_pdfView)
  {
    v5 = [(UIWebPDFViewHandler *)self _scroller:?];
    [v5 insertSubview:a3 aboveSubview:self->_pdfView];
    [(UIWebPDFViewHandler *)self clearAllViews];
    showsShadowsForHTMLContent = self->_showsShadowsForHTMLContent;

    [v5 _setShowsBackgroundShadow:showsShadowsForHTMLContent];
  }
}

- (void)_removePDFViewIfWebDocViewIsNotPDF:(id)a3
{
  if (![(UIWebPDFViewHandler *)self _getPDFDocumentViewForWebView:?])
  {

    [(UIWebPDFViewHandler *)self _replacePDFViewIfPresentWithWebDocView:a3];
  }
}

- (void)_removePDFViewIfWebDocViewIsNotSamePDF:(id)a3
{
  if (([objc_msgSend(objc_msgSend(a3 "_documentUrl")] & 1) == 0)
  {

    [(UIWebPDFViewHandler *)self _replacePDFViewIfPresentWithWebDocView:a3];
  }
}

- (void)_createPDFViewIfNeeded:(id)a3
{
  if (!self->_pdfView)
  {
    v5 = [(UIWebPDFViewHandler *)self _getPDFDocumentViewForWebView:?];
    if (v5)
    {
      v6 = v5;
      v7 = [(UIWebPDFViewHandler *)self _scroller:a3];
      v8 = v7 ? v7 : a3;
      v9 = [[UIWebPDFView alloc] initWithWebPDFViewPlaceholder:v6];
      self->_pdfView = v9;
      [(UIWebPDFView *)v9 setInitialZoomScale:self->_initialZoomScale];
      -[UIWebPDFView setDocumentURL:](self->_pdfView, "setDocumentURL:", [a3 _documentUrl]);
      [(UIWebPDFView *)self->_pdfView setHidePageViewsUntilReadyToRender:self->_hidePageViewsUntilReadyToRender];
      [(UIWebPDFView *)self->_pdfView setBackgroundColorForUnRenderedContent:self->_backgroundColorForUnRenderedContent];
      [(UIWebPDFView *)self->_pdfView setHideActivityIndicatorForUnRenderedContent:self->_hideActivityIndicatorForUnRenderedContent];
      [v8 frame];
      [(UIWebPDFViewHandler *)self _rectForPdfView:0.0, 0.0];
      v11 = v10;
      v13 = v12;
      [(UIView *)self->_pdfView setFrame:?];
      [(UIWebPDFView *)self->_pdfView setPdfDelegate:self];
      if (objc_opt_respondsToSelector())
      {

        [v6 setContainerSize:{v11, v13}];
      }
    }
  }
}

- (void)_ensurePDFViewInHierarchyForWebDocView:(id)a3
{
  pdfView = self->_pdfView;
  if (pdfView)
  {
    [(UIView *)self->_pdfView frame];
    [(UIWebPDFViewHandler *)self _rectForPdfView:?];
    [(UIView *)pdfView setFrame:?];
    v6 = [(UIWebPDFViewHandler *)self _scroller:a3];
    if (v6 != [(UIView *)self->_pdfView superview])
    {
      [(UIView *)v6 insertSubview:self->_pdfView aboveSubview:a3];
    }

    if ([a3 superview])
    {
      [a3 removeFromSuperview];
    }

    passwordEntryView = self->_passwordEntryView;
    if (passwordEntryView)
    {
      [(UIWebPDFViewHandler *)self _rectForPasswordView:v6];
      [(UIView *)passwordEntryView setFrame:?];
      [(UIView *)v6 insertSubview:self->_passwordEntryView aboveSubview:self->_pdfView];
    }

    [(UIView *)v6 _setShowsBackgroundShadow:0];
  }
}

- (void)_updateViewHierarchyForDocumentView:(id)a3 ignoreIfSame:(BOOL)a4
{
  if (a4)
  {
    [(UIWebPDFViewHandler *)self _removePDFViewIfWebDocViewIsNotPDF:a3];
    [(UIWebPDFViewHandler *)self _removePDFViewIfWebDocViewIsNotSamePDF:a3];
  }

  else if (self->_pdfView)
  {
    [(UIWebPDFViewHandler *)self _replacePDFViewIfPresentWithWebDocView:a3];
  }

  [(UIWebPDFViewHandler *)self _createPDFViewIfNeeded:a3];

  [(UIWebPDFViewHandler *)self _ensurePDFViewInHierarchyForWebDocView:a3];
}

- (void)updateViewSettings
{
  v3 = [(UIWebPDFViewHandler *)self _scroller:0];
  if (v3)
  {
    v4 = v3;
    passwordEntryView = self->_passwordEntryView;
    if (passwordEntryView)
    {
      [(UIWebPDFViewHandler *)self _rectForPasswordView:v3];

      [(UIView *)passwordEntryView setFrame:?];
    }

    else
    {
      [v3 zoomScale];
      v7 = v6;
      [v4 minimumZoomScale];
      v9 = v8;
      [v4 frame];
      [(UIWebPDFViewHandler *)self scalesForContainerSize:v10, v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(UIWebPDFViewHandler *)self _verticalEdgeForContentOffsetInScrollView:v4];
      [v4 setMinimumZoomScale:v13];
      [v4 setMaximumZoomScale:v15];
      [(UIWebPDFView *)self->_pdfView setInitialZoomScale:v17];
      self->_initialZoomScale = v17;
      if (v7 < v17 || v7 == v9)
      {
        [v4 setZoomScale:v17];
      }

      [v4 setZoomEnabled:self->_scalesPageToFit];
      [v4 setBouncesHorizontally:self->_scalesPageToFit];
      if (v18)
      {
        v19 = *MEMORY[0x1E695EFF8];
        [(UIWebPDFViewHandler *)self _pinValueForVerticalEdge:v18 inScrollView:v4];

        [v4 setContentOffset:0 animated:{v19, v20}];
      }
    }
  }
}

- (void)_adjustZoomScalesForScrollViewInternal:(id)a3
{
  if (a3)
  {
    [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:1];
    [a3 setMinimumZoomScale:1.0];
    [a3 setMaximumZoomScale:32.0];
    [a3 setZoomScale:1.0];
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    [a3 setContentOffset:0 animated:{*MEMORY[0x1E695EFF8], v6}];
    [a3 setBouncesVertically:1];
    [a3 setScrollEnabled:1];
    [(UIWebPDFView *)self->_pdfView documentBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    pdfView = self->_pdfView;
    if (pdfView)
    {
      [(UIWebPDFView *)pdfView documentTransform];
    }

    else
    {
      memset(&v23, 0, sizeof(v23));
    }

    v24.origin.x = v8;
    v24.origin.y = v10;
    v24.size.width = v12;
    v24.size.height = v14;
    v25 = CGRectApplyAffineTransform(v24, &v23);
    width = v25.size.width;
    [a3 setContentSize:{v25.size.width, v25.size.height}];
    if (width > 0.0 && self->_scalesPageToFit)
    {
      [a3 contentOffset];
      v18 = v17;
      v20 = v19;
      [a3 frame];
      v22 = v21 / width;
      [a3 setMinimumZoomScale:v22];
      [a3 setZoomScale:v22];
      if (v5 == v18 && v6 == v20)
      {
        [a3 setContentOffset:0 animated:{v5, v6}];
      }
    }

    [(UIWebPDFViewHandler *)self updateViewSettings:*&v23.a];
    [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:0];
  }
}

- (void)adjustZoomScalesForScrollView
{
  v3 = [(UIWebPDFViewHandler *)self _scroller:0];
  if (v3)
  {
    v4 = v3;
    if (self->_passwordEntryView)
    {
      [v3 setMinimumZoomScale:1.0];
      [v4 setMaximumZoomScale:1.0];
      [v4 setZoomScale:1.0];
      [v4 setContentOffset:0 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [(UIView *)self->_passwordEntryView bounds];
      [v4 setContentSize:{v5, v6}];
      if (([+[UIDevice userInterfaceIdiom]& 0xFFFFFFFFFFFFFFFBLL currentDevice]== 1)
      {
        [v4 setBouncesVertically:0];

        [v4 setScrollEnabled:0];
      }
    }

    else
    {

      [(UIWebPDFViewHandler *)self _adjustZoomScalesForScrollViewInternal:v3];
    }
  }
}

- (void)clearLinkHighlight
{
  [(UIView *)self->_linkHighlightView removeFromSuperview];

  self->_linkHighlightView = 0;
}

- (id)createLinkHighlight
{
  linkHighlightView = self->_linkHighlightView;
  if (!linkHighlightView)
  {
    v4 = [_UIHighlightView alloc];
    linkHighlightView = [(_UIHighlightView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)linkHighlightView setOpaque:0];
    [(_UIHighlightView *)linkHighlightView setCornerRadius:3.0];
    [(_UIHighlightView *)linkHighlightView setColor:[UIColor colorWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:0.3]];
    self->_linkHighlightView = linkHighlightView;
  }

  return linkHighlightView;
}

- (void)highlightRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIWebPDFViewHandler *)self clearLinkHighlight];
  if (self->_pdfView)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v17 = CGRectInset(v16, -3.0, -3.0);
    v8 = v17.origin.x;
    v9 = v17.origin.y;
    v10 = v17.size.width;
    v11 = v17.size.height;
    v12 = [(UIWebPDFViewHandler *)self createLinkHighlight];
    [v12 removeFromSuperview];
    [(UIView *)self->_pdfView addSubview:v12];
    v13 = 4;
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    do
    {
      [v14 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", v10 + 3.0, v11 + 3.0)}];
      --v13;
    }

    while (v13);
    [v12 setCornerRadii:v14];

    [v12 setFrame:{v8, v9, v10, v11}];
  }
}

- (void)scrollToPageNumber:(int64_t)a3 animate:(BOOL)a4
{
  v4 = a3 - 1;
  if (a3 >= 1)
  {
    v7 = [(UIWebPDFViewHandler *)self _scroller:0, a4];
    if (v7)
    {
      v8 = v7;
      v9 = [(UIWebPDFView *)self->_pdfView pageRects];
      if ([(NSArray *)v9 count])
      {
        if ([(NSArray *)v9 count]>= a3)
        {
          [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:1];
          [v8 setZoomScale:self->_initialZoomScale];
          [-[NSArray objectAtIndex:](v9 objectAtIndex:{v4), "CGRectValue"}];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          pdfView = self->_pdfView;
          if (pdfView)
          {
            [(UIWebPDFView *)pdfView documentTransform];
            v19 = self->_pdfView;
          }

          else
          {
            v19 = 0;
            memset(&v20, 0, sizeof(v20));
          }

          v21.origin.x = v11;
          v21.origin.y = v13;
          v21.size.width = v15;
          v21.size.height = v17;
          v22 = CGRectApplyAffineTransform(v21, &v20);
          [v8 convertRect:v19 fromView:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
          [v8 contentOffset];
          [v8 setContentOffset:0 animated:?];
          [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:0];
          [(UIWebPDFView *)self->_pdfView ensureCorrectPagesAreInstalled:1];
        }
      }
    }
  }
}

- (id)_absoluteUrlRelativeToDocumentURL:(id)a3
{
  v4 = [(NSURL *)[(UIWebPDFView *)self->_pdfView documentURL] absoluteURL];
  if (([a3 hasPrefix:@"#"] & 1) == 0 && !-[NSString hasSuffix:](-[NSURL absoluteString](v4, "absoluteString"), "hasSuffix:", @"/"))
  {
    v4 = [(NSURL *)v4 URLByDeletingLastPathComponent];
  }

  v5 = [objc_msgSend(MEMORY[0x1E695DFF8] URLWithString:a3 relativeToURL:{v4), "absoluteURL"}];

  return [v5 standardizedURL];
}

- (void)_completeLinkClickWithURL:(id)a3
{
  [(UIWebPDFViewHandler *)self clearLinkHighlight];
  if (a3)
  {
    [(UIWebPDFView *)self->_pdfView pdfPlaceHolderView];
    WebThreadRun();
  }
}

uint64_t __49__UIWebPDFViewHandler__completeLinkClickWithURL___block_invoke(uint64_t a1)
{
  WebThreadRunOnMainThread();
  [*(a1 + 48) simulateClickOnLinkToURL:*(a1 + 40)];
  return WebThreadRunOnMainThread();
}

- (void)_completeLinkClickWithURLString:(id)a3
{
  v4 = [(UIWebPDFViewHandler *)self _absoluteUrlRelativeToDocumentURL:a3];

  [(UIWebPDFViewHandler *)self _completeLinkClickWithURL:v4];
}

- (void)_notifyDelegateWillClickLink:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    pdfHandlerDelegate = self->_pdfHandlerDelegate;

    [(UIWebPDFViewHandlerDelegate *)pdfHandlerDelegate pdfViewHandler:self willClickLink:a3];
  }
}

- (void)_notifyDelegateDidClickLink:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    pdfHandlerDelegate = self->_pdfHandlerDelegate;

    [(UIWebPDFViewHandlerDelegate *)pdfHandlerDelegate pdfViewHandler:self linkClicked:a3];
  }
}

- (void)handleLinkClick:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIWebPDFViewHandler *)self performSelector:sel__completeLinkClickWithURLString_ withObject:a3 afterDelay:0.2];

  [(UIWebPDFViewHandler *)self highlightRect:x, y, width, height];
}

- (void)clearActionSheet
{
  [(_UIRotatingAlertController *)self->_linkActionSheet doneWithSheet];
  v3 = self->_linkActionSheet;
  self->_linkActionSheet = 0;

  self->_linkActions = 0;
  self->_linkActionInfo = 0;
}

- (id)_actionForType:(int)a3 withActionInfo:(id)a4
{
  v4 = *&a3;
  result = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v8 = [_UIKitBundle() localizedStringForKey:@"Copy Link" value:@"Copy" table:@"Localizable"];
      v9 = &__block_literal_global_729;
      if (!v8)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3052000000;
    v12[3] = __Block_byref_object_copy__250;
    v12[4] = __Block_byref_object_dispose__250;
    v12[5] = self;
    v8 = [_UIKitBundle() localizedStringForKey:@"Open Link" value:@"Open" table:@"Localizable"];
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke;
    v11[3] = &unk_1E712C4E0;
    v11[4] = v12;
    _Block_object_dispose(v12, 8);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v8 = _UINSLocalizedStringWithDefaultValue(@"Add to Reading List", @"Add to Reading List");
        v9 = &__block_literal_global_458_1;
        if (v8)
        {
          goto LABEL_14;
        }

        break;
      case 3:
        v8 = _UINSLocalizedStringWithDefaultValue(@"Open in Safari", @"Open in Safari");
        v9 = &__block_literal_global_463_0;
        if (v8)
        {
          goto LABEL_14;
        }

        break;
      case 4:
        v7 = [a4 objectForKeyedSubscript:@"UIWebPDFLinkActionExternalApplicationName"];
        v8 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:objc_msgSend(_UIKitBundle(), "localizedStringForKey:value:table:", @"Open in “%@” (Link Element Action Sheet Button)", @"Open in “%@”", @"Localizable", v7];
        v9 = &__block_literal_global_474_1;
        if (!v8)
        {
          return 0;
        }

LABEL_14:
        v10 = objc_alloc_init(UIWebPDFLinkAction);
        [(UIWebPDFLinkAction *)v10 setTitle:v8];
        [(UIWebPDFLinkAction *)v10 setType:v4];
        [(UIWebPDFLinkAction *)v10 setHandler:v9];
        return v10;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 valueForKey:@"UIWebPDFLinkActionURLAttribute"];
  if (result)
  {
    v4 = result;
    v5 = *(*(*(a1 + 32) + 8) + 40);

    return [v5 _completeLinkClickWithURL:v4];
  }

  return result;
}

uint64_t __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  result = [a2 valueForKey:@"UIWebPDFLinkActionURLAttribute"];
  if (result)
  {
    v3 = result;
    v7[0] = [UIPasteboardTypeListString objectAtIndex:0];
    v8[0] = [v3 absoluteString];
    v7[1] = [UIPasteboardTypeListURL objectAtIndex:0];
    v8[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
    v5 = +[UIPasteboard generalPasteboard];
    v6 = v4;
    return -[UIPasteboard setItems:](v5, "setItems:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
  }

  return result;
}

uint64_t __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 valueForKey:@"UIWebPDFLinkActionURLAttribute"];
  if (result)
  {
    v3 = result;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__250;
    v4 = _MergedGlobals_13_8;
    v10 = __Block_byref_object_dispose__250;
    v11 = _MergedGlobals_13_8;
    if (!_MergedGlobals_13_8)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __getSSReadingListClass_block_invoke_1;
      v5[3] = &unk_1E70F2F20;
      v5[4] = &v6;
      __getSSReadingListClass_block_invoke_1(v5);
      v4 = v7[5];
    }

    _Block_object_dispose(&v6, 8);
    return [objc_msgSend(v4 "defaultReadingList")];
  }

  return result;
}

uint64_t __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"UIWebPDFLinkActionAppLinkAttribute"];

  return [v2 openInWebBrowser:1 setAppropriateOpenStrategyAndWebBrowserState:0 completionHandler:&__block_literal_global_466_2];
}

uint64_t __53__UIWebPDFViewHandler__actionForType_withActionInfo___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"UIWebPDFLinkActionAppLinkAttribute"];

  return [v2 openInWebBrowser:0 setAppropriateOpenStrategyAndWebBrowserState:0 completionHandler:&__block_literal_global_476_0];
}

- (id)_actionsForInteractionInfo:(id)a3
{
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [a3 valueForKey:@"UIWebPDFLinkActionURLAttribute"];
  if (_UIApplicationHasAppLinkEntitlements() && (v8 = _UIAppLinkForURL(v7)) != 0)
  {
    v9 = v8;
    v10 = [a3 mutableCopy];
    v11 = [objc_msgSend(v9 "targetApplicationRecord")];
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:@"UIWebPDFLinkActionExternalApplicationName"];
      [v10 setObject:v9 forKeyedSubscript:@"UIWebPDFLinkActionAppLinkAttribute"];
      [v6 addObject:{-[UIWebPDFViewHandler _actionForType:withActionInfo:](self, "_actionForType:withActionInfo:", 3, v10)}];
      v12 = 4;
    }

    else
    {
      [v10 setObject:v9 forKeyedSubscript:@"UIWebPDFLinkActionAppLinkAttribute"];
      v12 = 3;
    }

    [v6 addObject:{-[UIWebPDFViewHandler _actionForType:withActionInfo:](self, "_actionForType:withActionInfo:", v12, v10)}];
  }

  else
  {
    [v6 addObject:{-[UIWebPDFViewHandler _actionForType:](self, "_actionForType:", 0)}];
  }

  if ([v7 isHTTPOrHTTPSURL])
  {
    v13 = [(UIWebPDFViewHandler *)self _actionForType:2];
    if (!v13)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    [v6 addObject:v13];
  }

  v14 = [(UIWebPDFViewHandler *)self _actionForType:1];
  if (!v14)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [v6 addObject:v14];
  return v6;
}

- (void)_showLinkSheet:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [(UIWebPDFViewHandler *)self clearLinkHighlight];
  v5 = [a3 valueForKey:@"UIWebPDFLinkActionURLAttribute"];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(_UIRotatingAlertController);
    -[UIAlertController setTitle:](v7, "setTitle:", [v6 _web_userVisibleString]);
    [(_UIRotatingAlertController *)v7 setRotatingSheetDelegate:self];
    v8 = [(UIWebPDFViewHandler *)self _actionsForInteractionInfo:a3];
    v16 = a3;
    if (objc_opt_respondsToSelector())
    {
      v8 = [(UIWebPDFViewHandlerDelegate *)self->_pdfHandlerDelegate pdfViewHandler:self actionsForURL:v6 suggestedActions:v8, a3];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:{16, v16}];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 title];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __38__UIWebPDFViewHandler__showLinkSheet___block_invoke;
          v19[3] = &unk_1E7105CC8;
          v19[4] = self;
          v19[5] = v13;
          v19[6] = v7;
          [(UIAlertController *)v7 _addActionWithTitle:v14 image:0 style:0 handler:v19];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v15 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __38__UIWebPDFViewHandler__showLinkSheet___block_invoke_2;
    v18[3] = &unk_1E7101E78;
    v18[4] = self;
    v18[5] = v7;
    [(UIAlertController *)v7 _addActionWithTitle:v15 image:0 style:1 handler:v18];
    self->_linkActionSheet = v7;
    self->_linkActionInfo = v17;
    self->_linkActions = v8;
    if (![(_UIRotatingAlertController *)v7 presentSheet])
    {
      [(UIWebPDFViewHandler *)self performAction:0 fromAlertController:v7];
    }
  }
}

- (void)handleLongPressOnLink:(id)a3 atPoint:(CGPoint)a4 inRect:(CGRect)a5 contentRect:(CGRect)a6
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v10 = a4.y;
    v11 = a4.x;
    v13 = [(UIWebPDFViewHandler *)self _absoluteUrlRelativeToDocumentURL:?];
    if (v13)
    {
      v15[0] = v13;
      v14[0] = @"UIWebPDFLinkActionURLAttribute";
      v14[1] = @"UIWebPDFLinkActionPointAttribute";
      v15[1] = [MEMORY[0x1E696B098] valueWithCGPoint:{v11, v10}];
      v14[2] = @"UIWebPDFLinkActionRectAttribute";
      v15[2] = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
      v14[3] = @"UIWebPDFLinkActionContentRectAttribute";
      v15[3] = [MEMORY[0x1E696B098] valueWithCGRect:{a6.origin.x, a6.origin.y, a6.size.width, a6.size.height}];
      -[UIWebPDFViewHandler performSelector:withObject:afterDelay:](self, "performSelector:withObject:afterDelay:", sel__showLinkSheet_, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4], 0.75);
      [(UIWebPDFViewHandler *)self highlightRect:x, y, width, height];
    }
  }
}

- (void)performAction:(id)a3 fromAlertController:(id)a4
{
  if (self->_linkActionSheet == a4)
  {
    v10 = v4;
    if (!a3)
    {
      v9 = [0 handler];
      if (v9)
      {
        (*(v9 + 16))(v9, self->_linkActionInfo);
      }
    }

    [(_UIRotatingAlertController *)self->_linkActionSheet doneWithSheet:v5];

    [(UIWebPDFViewHandler *)self clearActionSheet];
  }
}

- (id)hostViewForSheet:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [(UIWebPDFViewHandlerDelegate *)self->_pdfHandlerDelegate hostViewForLinkSheet:self]) == 0)
  {
    pdfView = self->_pdfView;
    if (!pdfView)
    {
      goto LABEL_11;
    }

    v6 = 0;
    do
    {
      v7 = [UIViewController viewControllerForView:pdfView];
      if (v7)
      {
        v6 = v7;
      }

      pdfView = [(UIView *)pdfView superview];
    }

    while (pdfView);
    if (!v6 || (result = [v6 view]) == 0)
    {
LABEL_11:
      v8 = self->_pdfView;

      return [(UIView *)v8 window];
    }
  }

  return result;
}

- (CGRect)initialPresentationRectInHostViewForSheet:(id)a3
{
  v4 = [(UIWebPDFViewHandler *)self hostViewForSheet:0];
  if (v4 && (v5 = v4, (v6 = [(NSDictionary *)self->_linkActionInfo valueForKey:@"UIWebPDFLinkActionPointAttribute"]) != 0))
  {
    [v6 CGPointValue];
    [v5 convertPoint:self->_pdfView fromView:?];
    v7.size.width = 1.0;
    v7.size.height = 1.0;
    return CGRectInset(v7, -22.0, -22.0);
  }

  else
  {
    return **&MEMORY[0x1E695F058];
  }
}

- (void)clearPageLabel
{
  [(UIView *)self->_pageLabelView removeFromSuperview];

  self->_pageLabelView = 0;
}

- (id)createPageLabel
{
  result = self->_pageLabelView;
  if (!result)
  {
    v4 = [UIWebPDFLabelView alloc];
    result = [(UIWebPDFLabelView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    self->_pageLabelView = result;
  }

  return result;
}

- (void)_showPasswordErrorAlert
{
  [(UITextField *)[(UIDocumentPasswordView *)self->_passwordEntryView passwordField] setText:0];
  v3 = [UIAlertController alertControllerWithTitle:_UINSLocalizedStringWithDefaultValue(@"The document could not be opened with that password." message:@"The document could not be opened with that password.") preferredStyle:0, 1];
  v4 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIWebPDFViewHandler__showPasswordErrorAlert__block_invoke;
  v5[3] = &unk_1E712C2E8;
  v5[4] = self;
  [(UIAlertController *)v3 addAction:[UIAlertAction actionWithTitle:v4 style:1 handler:v5]];
  [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{self->_pdfView), "presentViewController:animated:completion:", v3, 1, 0}];
}

uint64_t __46__UIWebPDFViewHandler__showPasswordErrorAlert__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 64) passwordField];

  return [v1 becomeFirstResponder];
}

- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4
{
  if ([(UIWebPDFView *)self->_pdfView _tryToUnlockDocumentWithPassword:a3, a4])
  {
    [(UIWebPDFView *)self->_pdfView pdfPlaceHolderView];
    WebThreadRun();
  }

  else
  {

    [(UIWebPDFViewHandler *)self _showPasswordErrorAlert];
  }
}

- (void)_adjustContentOffsetForKeyboardIfNeeded
{
  passwordEntryView = self->_passwordEntryView;
  if (passwordEntryView)
  {
    v4 = [(UIDocumentPasswordView *)passwordEntryView passwordField];
    if ([(UITextField *)v4 isEditing])
    {
      v5 = [(UIWebPDFViewHandler *)self _scroller:0];
      if (v5)
      {
        v6 = v5;
        if (+[UIKeyboard activeKeyboard])
        {
          [objc_msgSend(v6 "keyboardSceneDelegate")];
          x = v35.origin.x;
          y = v35.origin.y;
          width = v35.size.width;
          height = v35.size.height;
          if (!CGRectIsEmpty(v35))
          {
            v11 = [v6 window];
            if ([+[UIWindow allWindowsIncludingInternalWindows:onlyVisibleWindows:](UIWindow allWindowsIncludingInternalWindows:0 onlyVisibleWindows:{0), "containsObject:", v11}])
            {
              v12 = y;
            }

            else
            {
              v12 = y + -50.0;
            }

            [v11 convertRect:0 fromWindow:{x, v12, width, height}];
            [v6 convertRect:v11 fromView:?];
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v20 = v19;
            [(UIView *)v4 bounds];
            [(UIView *)v4 convertRect:v6 toView:?];
            v32 = v22;
            v33 = v21;
            v24 = v23;
            v26 = v25;
            [(UIView *)self->_passwordEntryView bounds];
            v28 = v27;
            v30 = v29;
            v36.origin.x = v14;
            v36.origin.y = v16;
            v36.size.width = v18;
            v36.size.height = v20;
            [v6 setContentSize:{v28, CGRectGetHeight(v36) + v30}];
            v31 = v24 + v26 > v16;
            if (v24 >= v16)
            {
              v31 = v16 + v20 > v24;
            }

            if (v31)
            {
              v37.size.width = v32;
              v37.origin.x = v33;
              v37.origin.y = v24;
              v37.size.height = v26;
              CGRectGetMaxY(v37);
              v38.origin.x = v14;
              v38.origin.y = v16;
              v38.size.width = v18;
              v38.size.height = v20;
              CGRectGetMinY(v38);
              [v6 contentOffset];

              [v6 setContentOffset:1 animated:?];
            }
          }
        }
      }
    }
  }
}

- (void)didBeginEditingPassword:(id)a3 inView:(id)a4
{
  if (self->_passwordEntryView)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];

    [v5 addObserver:self selector:sel__keyboardDidShow_ name:@"UIKeyboardDidShowNotification" object:0];
  }
}

- (void)didEndEditingPassword:(id)a3 inView:(id)a4
{
  if (self->_passwordEntryView)
  {
    v5 = [(UIWebPDFViewHandler *)self _scroller:0, a4];
    if (v5)
    {
      v6 = v5;
      [(UIView *)self->_passwordEntryView frame];
      x = v14.origin.x;
      y = v14.origin.y;
      width = v14.size.width;
      height = v14.size.height;
      MaxX = CGRectGetMaxX(v14);
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      [v6 setContentSize:{MaxX, CGRectGetMaxY(v15)}];
      [v6 setContentOffset:1 animated:{0.0, y}];
      v12 = [MEMORY[0x1E696AD88] defaultCenter];

      [v12 removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];
    }
  }
}

- (void)_showPasswordEntryViewForFile:(id)a3
{
  if (!self->_passwordEntryView)
  {
    v4 = [[UIDocumentPasswordView alloc] initWithDocumentName:a3];
    self->_passwordEntryView = v4;
    [(UIDocumentPasswordView *)v4 setPasswordDelegate:self];
    passwordEntryView = self->_passwordEntryView;
    [(UIWebPDFViewHandler *)self _rectForPasswordView:self->_pdfView];
    [(UIView *)passwordEntryView setFrame:?];
  }

  v6 = [(UIView *)self->_pdfView superview];
  v7 = self->_passwordEntryView;
  pdfView = self->_pdfView;

  [(UIView *)v6 insertSubview:v7 aboveSubview:pdfView];
}

- (void)_postdidDetermineDocumentBounds
{
  if ([(UIView *)self->_pdfView superview])
  {
    [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:1];
    [(UIWebPDFViewHandler *)self adjustZoomScalesForScrollView];
    [(UIWebPDFViewHandler *)self restoreStateFromPendingHistoryItem];
    [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:0];
    [(UIWebPDFViewHandler *)self ensureCorrectPagesAreInstalled:1];
    if (objc_opt_respondsToSelector())
    {
      pdfHandlerDelegate = self->_pdfHandlerDelegate;

      [(UIWebPDFViewHandlerDelegate *)pdfHandlerDelegate pdfViewHandlerCompletedLayoutAndIsUnlocked:self];
    }
  }
}

- (void)didDetermineDocumentBounds:(id)a3
{
  pdfView = self->_pdfView;
  [(UIWebPDFView *)pdfView documentBounds];
  [(UIWebPDFViewHandler *)self _frameForDocumentBounds:?];
  [(UIView *)pdfView setFrame:?];
  if (self->_passwordEntryView)
  {
    [(UIWebPDFViewHandler *)self _adjustZoomScalesForScrollViewInternal:[(UIWebPDFViewHandler *)self _scroller:0]];
    v5[4] = self;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UIWebPDFViewHandler_didDetermineDocumentBounds___block_invoke;
    v6[3] = &unk_1E70F5CA0;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__UIWebPDFViewHandler_didDetermineDocumentBounds___block_invoke_2;
    v5[3] = &unk_1E712C388;
    [UIView animateWithDuration:4 delay:v6 options:v5 animations:0.25 completion:0.0];
  }

  else
  {

    [(UIWebPDFViewHandler *)self _postdidDetermineDocumentBounds];
  }
}

uint64_t __50__UIWebPDFViewHandler_didDetermineDocumentBounds___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeFromSuperview];

  *(*(a1 + 32) + 64) = 0;
  v2 = *(a1 + 32);

  return [v2 _postdidDetermineDocumentBounds];
}

- (void)pdfView:(id)a3 zoomToRect:(CGRect)a4 forPoint:(CGPoint)a5 considerHeight:(BOOL)a6
{
  self->_rectOfInterest = a4;
  self->_rectOfInterestConsidersHeight = a6;
  _UIWebDoubleTapAtLocation(self, a5.x, a5.y);
  self->_rectOfInterestConsidersHeight = 0;
  v7 = *(MEMORY[0x1E695F058] + 16);
  self->_rectOfInterest.origin = *MEMORY[0x1E695F058];
  self->_rectOfInterest.size = v7;
}

- (void)resetZoom:(id)a3
{
  v4 = [(UIWebPDFViewHandler *)self _scroller:0];
  if (v4)
  {
    initialZoomScale = self->_initialZoomScale;

    [v4 setZoomScale:1 animated:initialZoomScale];
  }
}

- (id)passwordForPDFView:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    pdfHandlerDelegate = self->_pdfHandlerDelegate;

    return [(UIWebPDFViewHandlerDelegate *)pdfHandlerDelegate passwordForPDFViewHandler:self];
  }

  else
  {
    [(UIWebPDFViewHandler *)self _showPasswordEntryViewForFile:[(WebPDFViewPlaceholder *)[(UIWebPDFView *)self->_pdfView pdfPlaceHolderView] title]];
    [(UIWebPDFViewHandler *)self adjustZoomScalesForScrollView];
    return 0;
  }
}

- (void)didScroll:(id)a3
{
  if (![a3 ignoreContentOffsetChanges])
  {
    v4 = [-[UIView _scroller](self->_pdfView "_scroller")];

    [(UIWebPDFViewHandler *)self updatePageNumberLabelWithUserScrolling:v4 animated:0];
  }
}

- (void)ensureCorrectPagesAreInstalled:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self->_pdfView superview])
  {
    pdfView = self->_pdfView;

    [(UIWebPDFView *)pdfView ensureCorrectPagesAreInstalled:v3];
  }
}

- (UIView)frontView
{
  if (self->_passwordEntryView)
  {
    return &self->_passwordEntryView->super;
  }

  else
  {
    return [(UIWebPDFViewHandler *)self pdfView];
  }
}

- (void)removeViewFromSuperview
{
  [(UIView *)self->_passwordEntryView removeFromSuperview];
  [(UIView *)self->_pdfView removeFromSuperview];
  pageLabelView = self->_pageLabelView;

  [(UIView *)pageLabelView removeFromSuperview];
}

- (void)updateViewHierarchyForDocumentViewNewLoad:(id)a3
{
  v5 = [(UIWebPDFViewHandler *)self _scroller:?];
  if (!self->_cachedScrollViewShadowsState)
  {
    self->_showsShadowsForHTMLContent = [v5 _showsBackgroundShadow];
    self->_cachedScrollViewShadowsState = 1;
  }

  if ([(UIWebPDFViewHandler *)self _getPDFDocumentViewForWebView:a3])
  {
    self->_initialZoomScale = 1.0;

    [(UIWebPDFViewHandler *)self _updateViewHierarchyForDocumentView:a3 ignoreIfSame:0];
  }
}

- (void)updateViewHierarchyForDocumentViewTabSwitch:(id)a3 restoringZoomScale:(double)a4 andScrollPt:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  pdfView = self->_pdfView;
  [(UIWebPDFView *)pdfView setIgnoreContentOffsetChanges:1];
  [(UIWebPDFViewHandler *)self _updateViewHierarchyForDocumentView:a3 ignoreIfSame:1];
  [(UIWebPDFViewHandler *)self adjustZoomScalesForScrollView];
  if (!self->_passwordEntryView)
  {
    v11 = [(UIView *)self->_pdfView _scroller];
    v12 = v11;
    if (a4 > 1.00000012)
    {
      [v11 setZoomScale:a4];
    }

    [v12 _setContentOffsetPinned:0 animated:{x, y}];
  }

  if (pdfView)
  {
    [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:0];
  }

  [(UIWebPDFViewHandler *)self ensureCorrectPagesAreInstalled:1];
}

- (void)updateViewHierarchyForDocumentViewLoadComplete:(id)a3
{
  [(UIWebPDFViewHandler *)self _removePDFViewIfWebDocViewIsNotPDF:a3];

  [(UIWebPDFViewHandler *)self ensureCorrectPagesAreInstalled:0];
}

- (id)_getLabelViewFormatter
{
  result = self->_labelViewFormatter;
  if (!result)
  {
    result = +[WebPDFNSNumberFormatter copyNumberFormater];
    self->_labelViewFormatter = result;
  }

  return result;
}

- (void)updatePageNumberLabelWithUserScrolling:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_showPageLabels)
  {
    goto LABEL_6;
  }

  v5 = a4;
  if (!a3 && ![(UIWebPDFLabelView *)self->_pageLabelView isTimerInstalled])
  {
    return;
  }

  pdfView = self->_pdfView;
  if (!pdfView || [(UIWebPDFView *)pdfView totalPages]<= 1)
  {
LABEL_6:
    pageLabelView = self->_pageLabelView;
LABEL_7:

    [(UIWebPDFLabelView *)pageLabelView fadeOut:a3];
    return;
  }

  v8 = [(UIWebPDFView *)self->_pdfView firstVisiblePageNumber];
  pageLabelView = self->_pageLabelView;
  if (!v8)
  {
    goto LABEL_7;
  }

  if ([(UIWebPDFLabelView *)pageLabelView currentPageIndex]== v8)
  {
    v9 = 0;
  }

  else
  {
    [(UIWebPDFLabelView *)self->_pageLabelView setCurrentPageIndex:v8];
    v10 = [(UIWebPDFViewHandler *)self _getLabelViewFormatter];
    v11 = [v10 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v8)}];
    v12 = [v10 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", -[UIWebPDFView totalPages](self->_pdfView, "totalPages"))}];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"%1$@ of %2$@", @"%1$@ of %2$@", v11, v12];
  }

  v13 = [(UIWebPDFViewHandler *)self _scroller:0];
  [v13 contentOffset];
  v15 = v14;
  v17 = v16;
  if (objc_opt_respondsToSelector())
  {
    [(UIWebPDFViewHandlerDelegate *)self->_pdfHandlerDelegate originForPDFPageLabelViewWithHandler:self proposedOrigin:v15, v17];
    v15 = v18;
    v17 = v19;
  }

  v20 = [(UIWebPDFViewHandler *)self createPageLabel];

  [v20 showNowInSuperView:v13 atOrigin:v9 withText:v5 animated:{v15, v17}];
}

- (void)handleScrollToAnchor:(id)a3
{
  if (a3 && [(UIView *)self->_pdfView superview])
  {
    v5 = [a3 lowercaseString];
    if ([v5 hasPrefix:@"page"])
    {
      v5 = [v5 substringFromIndex:4];
    }

    v6 = [v5 integerValue];
    if (v6 >= 1)
    {

      [(UIWebPDFViewHandler *)self scrollToPageNumber:v6 animate:0];
    }
  }
}

- (void)_resultRects:(id)a3 andResultViews:(id)a4 forSearchResult:(id)a5 inViewCoordinates:(id)a6
{
  v11 = [a5 rects];
  v12 = [a5 strings];
  v13 = [a5 rotationAngles];
  v14 = [v11 count];
  v15 = [v12 count];
  if (v14 >= v15)
  {
    v14 = v15;
  }

  v16 = [v13 count];
  if (v14 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      [objc_msgSend(v11 objectAtIndex:{i), "CGRectValue"}];
      [a6 convertRectFromPDFPageSpace:?];
      [a6 convertRect:self->_pdfView toView:?];
      v28 = CGRectIntegral(v27);
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
      [a3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:")}];
      v23 = [[_UIAttributedStringView alloc] initWithFrame:x, y, width, height];
      -[_UIAttributedStringView setString:](v23, "setString:", [v12 objectAtIndex:i]);
      [objc_msgSend(v13 objectAtIndex:{i), "floatValue"}];
      [(_UIAttributedStringView *)v23 setTextRotationAngle:v24];
      [a6 convertRectFromPDFPageSpace:{0.0, 0.0, 1.0, 1.0}];
      [a6 convertRect:self->_pdfView toView:?];
      CGAffineTransformMakeScale(&v26, v25, v25);
      [(UIView *)v23 setTransform:&v26];
      [a4 addObject:v23];
    }
  }
}

- (void)revealSearchResult:(id)a3 andZoomIn:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v7 = [(UIWebPDFViewHandler *)self _scroller:0];
    if (v7)
    {
      v8 = v7;
      [a3 boundingBox];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = -[UIWebPDFView _addPageAtIndex:](self->_pdfView, "_addPageAtIndex:", [a3 pageIndex]);
      if (v17)
      {
        v18 = v17;
        [v17 convertRectFromPDFPageSpace:{v10, v12, v14, v16}];
        [v18 convertRect:self->_pdfView toView:?];
        v36 = CGRectInset(v35, -80.0, -80.0);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        if (v4)
        {
          [v8 zoomToRect:1 animated:{v36.origin.x, v36.origin.y, v36.size.width, v36.size.height}];
        }

        else
        {
          if (+[UIKeyboard activeKeyboard])
          {
            [objc_msgSend(v8 "keyboardSceneDelegate")];
            v24 = v23;
          }

          else
          {
            v24 = *(MEMORY[0x1E695F050] + 24);
          }

          [(UIView *)self->_pdfView convertPoint:v8 toView:x + width * 0.5, y + height * 0.5];
          v26 = v25;
          v28 = v27;
          [v8 bounds];
          v30 = v26 - v29 * 0.5;
          [v8 bounds];
          [v8 setContentOffset:1 animated:{v30, v28 - (v31 - v24) * 0.5}];
        }

        if (objc_opt_respondsToSelector())
        {
          v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(UIWebPDFViewHandler *)self _resultRects:v32 andResultViews:v33 forSearchResult:a3 inViewCoordinates:v18];
          [(UIWebPDFViewHandlerDelegate *)self->_pdfHandlerDelegate highlightSearchResultBounds:v32 resultRects:v33 contentViews:self forPDFViewHandler:x, y, width, height];
        }
      }
    }
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)scalesForContainerSize:(CGSize)a3
{
  width = a3.width;
  [(UIWebPDFView *)self->_pdfView documentBounds:a3.width];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  pdfView = self->_pdfView;
  if (pdfView)
  {
    [(UIWebPDFView *)pdfView documentTransform];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v14 = width / v21.size.width;
  if (v21.size.width <= 0.0)
  {
    v14 = 1.0;
  }

  if (v14 >= 1.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = 32.0;
  if (!self->_scalesPageToFit)
  {
    v16 = v15;
    v14 = v15;
  }

  v17 = v14;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v14;
  return result;
}

- (void)saveStateToHistoryItem:(id)a3 forWebView:(id)a4
{
  if (![a4 documentType])
  {
    v6 = [(UIWebPDFViewHandler *)self _scroller:0];
    if (v6)
    {
      v7 = v6;
      [v6 contentOffset];
      [a3 _setScrollPoint:?];
      [v7 zoomScale];
      *&v8 = v10;
      v9 = self->_initialZoomScale == v10;
      *&v10 = v10;

      [a3 _setScale:v9 isInitial:{v10, v8}];
    }
  }
}

- (void)restoreStateFromPendingHistoryItem
{
  if (self->_pendingHistoryItemRestore.restorePending)
  {
    v3 = [(UIWebPDFViewHandler *)self _scroller:0];
    if (v3)
    {
      v4 = v3;
      v5 = 112;
      if (self->_pendingHistoryItemRestore.isInitialScale)
      {
        v5 = 24;
      }

      v6 = *(&self->super.isa + v5);
      [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:1];
      [v4 setZoomScale:v6];
      [v4 _setContentOffsetPinned:0 animated:{self->_pendingHistoryItemRestore.contentOffset.x, self->_pendingHistoryItemRestore.contentOffset.y}];
      [(UIWebPDFView *)self->_pdfView setIgnoreContentOffsetChanges:0];
      self->_pendingHistoryItemRestore.restorePending = 0;
    }
  }
}

- (void)restoreStateFromHistoryItem:(id)a3 forWebView:(id)a4
{
  if (![a4 documentType])
  {
    self->_pendingHistoryItemRestore.restorePending = 1;
    self->_pendingHistoryItemRestore.isInitialScale = [a3 _scaleIsInitial];
    [a3 _scrollPoint];
    self->_pendingHistoryItemRestore.contentOffset.x = v6;
    self->_pendingHistoryItemRestore.contentOffset.y = v7;
    [a3 _scale];
    self->_pendingHistoryItemRestore.zoomScale = v8;
    if ([(UIWebPDFView *)self->_pdfView _hasPageRects])
    {
      [(UIWebPDFViewHandler *)self restoreStateFromPendingHistoryItem];

      [(UIWebPDFViewHandler *)self ensureCorrectPagesAreInstalled:1];
    }
  }
}

- (double)zoomedDocumentScale
{
  v2 = [(UIWebPDFViewHandler *)self _scroller:0];
  if (!v2)
  {
    return 1.0;
  }

  [v2 zoomScale];
  return result;
}

- (CGRect)visibleContentRect
{
  [(UIWebPDFView *)self->_pdfView _viewportBoundsInUIViewCoords];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)minimumScaleForSize:(CGSize)a3
{
  v3 = [(UIWebPDFViewHandler *)self _scroller:0, a3.width, a3.height];
  if (!v3)
  {
    return 1.0;
  }

  [v3 minimumZoomScale];
  return result;
}

- (CGRect)rectOfInterestForPoint:(CGPoint)a3
{
  x = self->_rectOfInterest.origin.x;
  y = self->_rectOfInterest.origin.y;
  width = self->_rectOfInterest.size.width;
  height = self->_rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)doubleTapScalesForSize:(CGSize)a3
{
  v3 = [(UIWebPDFViewHandler *)self _scroller:0, a3.width, a3.height];
  if (v3)
  {
    v4 = v3;
    [v3 minimumZoomScale];
    v6 = v5;
    [v4 maximumZoomScale];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
    v6 = 0.0;
  }

  v9 = 0.0;
  v10 = v6;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v10;
  return result;
}

- (void)updateBoundariesOfScrollView:(id)a3 withScales:(id)a4
{
  var2 = a4.var2;
  var1 = a4.var1;
  [a3 setMinimumZoomScale:a4.var0];
  [a3 setMaximumZoomScale:var1];
  [(UIWebPDFView *)self->_pdfView setInitialZoomScale:var2];
  self->_initialZoomScale = var2;
}

- (CGRect)rectOfInterestForRotation
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)activeRectForRectOfInterest:(CGRect)a3
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)_pinValueForVerticalEdge:(unint64_t)a3 inScrollView:(id)a4
{
  v4 = 0.0;
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      [a4 contentSize];
      v7 = v6;
      [a4 bounds];
      return v7 - v8;
    }

    return v4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v4;
  }

  pdfHandlerDelegate = self->_pdfHandlerDelegate;

  [(UIWebPDFViewHandlerDelegate *)pdfHandlerDelegate minimumVerticalContentOffsetForPDFViewHandler:self];
  return result;
}

- (unint64_t)_verticalEdgeForContentOffsetInScrollView:(id)a3
{
  [a3 contentOffset];
  v6 = v5;
  v7 = 1;
  [(UIWebPDFViewHandler *)self _pinValueForVerticalEdge:1 inScrollView:a3];
  if (v6 > v8)
  {
    [(UIWebPDFViewHandler *)self _pinValueForVerticalEdge:2 inScrollView:a3];
    if (v6 >= v9)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (void)rotateEnclosingScrollViewToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_passwordEntryView)
  {
    v8 = [(UIWebPDFViewHandler *)self _scroller:0];
    if (v8)
    {
      v9 = v8;
      [v8 setFrame:{x, y, width, height}];
      passwordEntryView = self->_passwordEntryView;
      [(UIWebPDFViewHandler *)self _rectForPasswordView:v9];

      [(UIView *)passwordEntryView setFrame:?];
    }
  }

  else
  {

    _UIWebRotateToFrame(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  }
}

@end