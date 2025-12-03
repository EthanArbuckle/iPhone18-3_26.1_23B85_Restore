@interface UIWebBrowserFindOnPageHighlighter
+ (BOOL)expandedRectsWouldIntersect:(id)intersect;
- (BOOL)_highlightSelection;
- (BOOL)_updateHighlightedMatchIndex:(BOOL)index;
- (BOOL)updateHighlightBubbleWobble:(BOOL)wobble;
- (UIWebBrowserFindOnPageHighlighter)initWithBrowserView:(id)view;
- (UIWebBrowserFindOnPageHighlighter)initWithPDFViewHandler:(id)handler;
- (id)_currentPDFSearchResult;
- (void)_addContentViewAtIndex:(unint64_t)index withRect:(CGRect)rect;
- (void)_clearHighlightViews;
- (void)_commonInitialize;
- (void)_highlightFindOnPageMatch:(BOOL)match;
- (void)_highlightFindOnPageMatchForPDF:(BOOL)f withPDFHandler:(id)handler;
- (void)_setSelectionRect:(CGRect)rect textRects:(id)rects contentImage:(CGImage *)image contentViews:(id)views wobble:(BOOL)wobble;
- (void)dealloc;
- (void)search:(id)search hasPartialResults:(id)results;
- (void)searchDidBegin:(id)begin;
- (void)searchDidFinish:(id)finish;
- (void)searchDidTimeOut:(id)out;
- (void)searchLimitHit:(id)hit;
- (void)searchWasCancelled:(id)cancelled;
- (void)setSearchText:(id)text matchLimit:(unint64_t)limit;
@end

@implementation UIWebBrowserFindOnPageHighlighter

- (UIWebBrowserFindOnPageHighlighter)initWithBrowserView:(id)view
{
  v7.receiver = self;
  v7.super_class = UIWebBrowserFindOnPageHighlighter;
  v4 = [(UIWebBrowserFindOnPageHighlighter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIWebBrowserFindOnPageHighlighter *)v4 _commonInitialize];
    v5->_browserView = view;
    [view addSubview:v5->_highlightHostView];
  }

  return v5;
}

- (UIWebBrowserFindOnPageHighlighter)initWithPDFViewHandler:(id)handler
{
  v7.receiver = self;
  v7.super_class = UIWebBrowserFindOnPageHighlighter;
  v4 = [(UIWebBrowserFindOnPageHighlighter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(UIWebBrowserFindOnPageHighlighter *)v4 _commonInitialize];
    v5->_pdfHandler = handler;
    [objc_msgSend(handler "pdfView")];
  }

  return v5;
}

- (void)_commonInitialize
{
  self->_highlightBubbleViews = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_zoomToHighlightSelection = 1;
  self->_highlightedMatchIndex = 0x7FFFFFFFFFFFFFFFLL;
  v3 = [UIView alloc];
  self->_highlightHostView = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (void)dealloc
{
  [(UIWebPDFViewHandler *)self->_pdfHandler clearSearchControllerForHighlighter:self];
  self->_pdfHandler = 0;
  [(UIWebBrowserFindOnPageHighlighter *)self clearBrowserView];
  [(UIView *)self->_highlightHostView removeFromSuperview];

  v3.receiver = self;
  v3.super_class = UIWebBrowserFindOnPageHighlighter;
  [(UIWebBrowserFindOnPageHighlighter *)&v3 dealloc];
}

+ (BOOL)expandedRectsWouldIntersect:(id)intersect
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [intersect count];
  if (v4 == 1)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [intersect countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(intersect);
        }

        [*(*(&v24 + 1) + 8 * i) rectValue];
        v32 = CGRectInset(v31, -6.0, -6.0);
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v15 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v6);
              }

              [*(*(&v20 + 1) + 8 * j) CGRectValue];
              v34.origin.x = x;
              v34.origin.y = y;
              v34.size.width = width;
              v34.size.height = height;
              if (CGRectIntersectsRect(v33, v34))
              {
                v5 = 1;
                goto LABEL_21;
              }
            }

            v16 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        [v6 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:", x, y, width, height)}];
      }

      v8 = [intersect countByEnumeratingWithState:&v24 objects:v29 count:16];
      v5 = 0;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

LABEL_21:

  return v5;
}

- (void)_addContentViewAtIndex:(unint64_t)index withRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [(NSArray *)self->_pdfHighlightViews objectAtIndex:index];
  [v9 setFrame:{x, y, width, height}];
  highlightHostView = self->_highlightHostView;

  [(UIView *)highlightHostView addSubview:v9];
}

- (void)_clearHighlightViews
{
  [(NSMutableArray *)self->_highlightBubbleViews makeObjectsPerformSelector:sel_removeFromSuperview];
  [(NSMutableArray *)self->_highlightBubbleViews removeAllObjects];
  [(NSArray *)self->_pdfHighlightViews makeObjectsPerformSelector:sel_removeFromSuperview];

  self->_pdfHighlightViews = 0;
}

- (void)_setSelectionRect:(CGRect)rect textRects:(id)rects contentImage:(CGImage *)image contentViews:(id)views wobble:(BOOL)wobble
{
  wobbleCopy = wobble;
  v57 = *MEMORY[0x1E69E9840];
  [(UIWebBrowserFindOnPageHighlighter *)self _clearHighlightViews];

  self->_pdfHighlightViews = views;
  v12 = +[UIColor clearColor];
  if (wobbleCopy)
  {
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v13 = [rects countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(rects);
          }

          [*(*(&v51 + 1) + 8 * i) rectValue];
          x = v58.origin.x;
          y = v58.origin.y;
          width = v58.size.width;
          height = v58.size.height;
          v59 = CGRectInset(v58, -4.5 - v58.size.width * 0.25, -4.5 - v58.size.height * 0.25);
          v22 = [(UIView *)[_UIWebFindOnPageHighlightBubbleView alloc] initWithFrame:v59.origin.x, v59.origin.y, v59.size.width, v59.size.height];
          [(UIView *)v22 setBackgroundColor:v12];
          [(UIView *)self->_highlightHostView addSubview:v22];
          [(NSMutableArray *)self->_highlightBubbleViews addObject:v22];
          [(UIWebBrowserFindOnPageHighlighter *)self _addContentViewAtIndex:v15++ withRect:x, y, width, height];
        }

        v14 = [rects countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v14);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __98__UIWebBrowserFindOnPageHighlighter__setSelectionRect_textRects_contentImage_contentViews_wobble___block_invoke;
    v48[3] = &unk_1E712BD10;
    rectCopy = rect;
    v48[4] = rects;
    v48[5] = self;
    imageCopy = image;
    [UIView animateWithDuration:0 delay:v48 options:0 animations:0.12 completion:0.0];
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v23 = [rects countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v45;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(rects);
          }

          [*(*(&v44 + 1) + 8 * j) rectValue];
          v42 = v60.origin.y;
          v43 = v60.origin.x;
          v40 = v60.size.height;
          v41 = v60.size.width;
          v61 = CGRectInset(v60, -6.0, -6.0);
          v28 = v61.origin.x;
          v29 = v61.origin.y;
          v30 = v61.size.width;
          v38 = v61.size.height;
          v39 = v61.size.width;
          MinX = CGRectGetMinX(rect);
          v62.origin.x = v28;
          v62.origin.y = v29;
          v62.size.width = v30;
          v62.size.height = v38;
          v32 = round(MinX - CGRectGetMinX(v62));
          MinY = CGRectGetMinY(rect);
          v63.origin.x = v28;
          v63.origin.y = v29;
          v63.size.width = v39;
          v63.size.height = v38;
          v34 = round(MinY - CGRectGetMinY(v63));
          v35 = [_UIWebFindOnPageHighlightBubbleView alloc];
          v64.origin.x = v28;
          v64.origin.y = v29;
          v64.size.width = v39;
          v64.size.height = v38;
          v65 = CGRectIntegral(v64);
          v36 = [(UIView *)v35 initWithFrame:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
          [(UIView *)v36 setBackgroundColor:v12];
          [(_UIWebFindOnPageHighlightBubbleView *)v36 setHighlightedContent:image withOrigin:v32, v34];
          [(UIView *)self->_highlightHostView addSubview:v36];
          [(NSMutableArray *)self->_highlightBubbleViews addObject:v36];
          [(UIWebBrowserFindOnPageHighlighter *)self _addContentViewAtIndex:v25++ withRect:v43, v42, v41, v40];
        }

        v24 = [rects countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v24);
    }
  }
}

uint64_t __98__UIWebBrowserFindOnPageHighlighter__setSelectionRect_textRects_contentImage_contentViews_wobble___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      [objc_msgSend(*(a1 + 32) objectAtIndex:{i), "rectValue"}];
      v15 = CGRectInset(v14, -6.0, -6.0);
      x = v15.origin.x;
      y = v15.origin.y;
      width = v15.size.width;
      height = v15.size.height;
      MinX = CGRectGetMinX(*(a1 + 48));
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      v10 = round(MinX - CGRectGetMinX(v16));
      MinY = CGRectGetMinY(*(a1 + 48));
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      v12 = round(MinY - CGRectGetMinY(v17));
      v13 = [*(*(a1 + 40) + 8) objectAtIndex:i];
      [v13 setHighlightedContent:*(a1 + 80) withOrigin:{v10, v12}];
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectIntegral(v18);
      result = [v13 setFrame:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
    }
  }

  return result;
}

- (BOOL)updateHighlightBubbleWobble:(BOOL)wobble
{
  wobbleCopy = wobble;
  v55 = *MEMORY[0x1E69E9840];
  WebThreadLock();
  webView = [(UIWebDocumentView *)self->_browserView webView];
  selectedFrame = [webView selectedFrame];
  if (!selectedFrame)
  {
    selectedFrame = [webView mainFrame];
  }

  [objc_msgSend(selectedFrame "frameView")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = [objc_msgSend(selectedFrame "frameView")];
  [v7 selectionRect];
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  if (CGRectIsEmpty(v56))
  {
    return 0;
  }

  selectionView = [v7 selectionView];
  selectionTextRects = [v7 selectionTextRects];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [selectionView visibleRect];
  v16 = v57.origin.x;
  v17 = v57.origin.y;
  v18 = v57.size.width;
  v19 = v57.size.height;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v58 = CGRectIntersection(v57, v62);
  [selectionView convertRect:0 toView:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = [selectionTextRects countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(selectionTextRects);
        }

        [*(*(&v49 + 1) + 8 * i) CGRectValue];
        v63.origin.x = v28;
        v63.origin.y = v29;
        v63.size.width = v30;
        v63.size.height = v31;
        v59.origin.x = v16;
        v59.origin.y = v17;
        v59.size.width = v18;
        v59.size.height = v19;
        v60 = CGRectIntersection(v59, v63);
        [selectionView convertRect:0 toView:{v60.origin.x, v60.origin.y, v60.size.width, v60.size.height}];
        v32 = v61.origin.x;
        v33 = v61.origin.y;
        v34 = v61.size.width;
        v35 = v61.size.height;
        if (!CGRectIsEmpty(v61))
        {
          [v15 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGRect:", v32, v33, v34, v35)}];
        }
      }

      v25 = [selectionTextRects countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v25);
  }

  v36 = [v15 count];
  v12 = v36 != 0;
  if (v36)
  {
    v37 = [v7 selectionImageForcingBlackText:1];
    if ([UIWebBrowserFindOnPageHighlighter expandedRectsWouldIntersect:v15])
    {
      v53 = [MEMORY[0x1E696B098] valueWithCGRect:{v45, v46, v47, v48}];
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      selfCopy2 = self;
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v43 = v48;
    }

    else
    {
      selfCopy2 = self;
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v38 = v15;
    }

    [(UIWebBrowserFindOnPageHighlighter *)selfCopy2 setSelectionRect:v38 textRects:v37 contentImage:wobbleCopy wobble:v40, v41, v42, v43];
  }

  return v12;
}

- (BOOL)_highlightSelection
{
  WebThreadLock();
  LODWORD(selectedDOMRange) = [(UIWebBrowserFindOnPageHighlighter *)self updateHighlightBubbleWobble:1];
  if (selectedDOMRange)
  {
    webView = [(UIWebDocumentView *)self->_browserView webView];
    selectedDOMRange = [webView selectedDOMRange];
    if (selectedDOMRange)
    {
      [(UIWebDocumentView *)self->_browserView _documentScale];
      v6 = v5;
      _scroller = [(UIView *)self->_browserView _scroller];
      [_scroller zoomScale];
      v9 = v8;
      selectedFrame = [webView selectedFrame];
      if (!selectedFrame)
      {
        selectedFrame = [webView mainFrame];
      }

      [objc_msgSend(selectedFrame "frameView")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_msgSend(selectedFrame "frameView")];
        [v11 selectionRect];
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;
        IsEmpty = CGRectIsEmpty(v53);
        if (IsEmpty)
        {
LABEL_20:
          LOBYTE(selectedDOMRange) = !IsEmpty;
          return selectedDOMRange;
        }

        v50 = v6;
        selectionView = [v11 selectionView];
        [selectionView visibleRect];
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        v55 = CGRectIntersection(v54, v61);
        v18 = v55.origin.x;
        v19 = v55.origin.y;
        v20 = v55.size.width;
        v21 = v55.size.height;
        if (self->_zoomToHighlightSelection)
        {
          v52 = 0;
          v51 = 0;
          MidX = CGRectGetMidX(v55);
          v56.origin.x = v18;
          v56.origin.y = v19;
          v56.size.width = v20;
          v56.size.height = v21;
          v48 = v19;
          [objc_msgSend(selectionView "_frame")];
          [selectionView convertRect:0 toView:?];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          [_scroller visibleBounds];
          v33 = v9 * v32 / v28;
          if (v33 >= v9 * v31 / v30)
          {
            v33 = v9 * v31 / v30;
          }

          v47 = v18;
          v34 = v33 + v33 * -0.05;
          [_scroller minimumZoomScale];
          if (v34 >= v35)
          {
            v35 = v34;
          }

          v36 = fmin(v35, 1.6);
          self->_zoomToHighlightSelection = 0;
          if (v36 - v9 < 0.02)
          {
            v36 = v9;
          }

          v49 = v36;
          if (v36 != v9)
          {
            goto LABEL_19;
          }

          v18 = v47;
          v19 = v48;
        }

        else
        {
          v49 = v9;
        }

        [selectionView convertRect:0 toView:{v18, v19, v20, v21}];
        v24 = v37;
        v26 = v38;
        v28 = v39;
        v30 = v40;
LABEL_19:
        v57.origin.x = v24;
        v57.origin.y = v26;
        v57.size.width = v28;
        v57.size.height = v30;
        v58 = CGRectInset(v57, -20.0, -20.0);
        v41 = v58.origin.x;
        v42 = v58.origin.y;
        v43 = v58.size.width;
        v44 = v58.size.height;
        [(UIWebTiledView *)self->_browserView layoutTilesNowForRect:?];
        v59.origin.x = v41;
        v59.origin.y = v42;
        v59.size.width = v43;
        v59.size.height = v44;
        MinX = CGRectGetMinX(v59);
        v60.origin.x = v41;
        v60.origin.y = v42;
        v60.size.width = v43;
        v60.size.height = v44;
        [(UIWebBrowserView *)self->_browserView _zoomToRect:1 ensuringVisibilityOfRect:v41 withScale:v42 forceScroll:v43, v44, MinX, CGRectGetMaxY(v60), 1.0, 1.0, v49 * v50];
        goto LABEL_20;
      }

      LOBYTE(selectedDOMRange) = 0;
    }
  }

  return selectedDOMRange;
}

- (void)setSearchText:(id)text matchLimit:(unint64_t)limit
{
  self->_highlightedMatchIndex = 0x7FFFFFFFFFFFFFFFLL;
  if ([text caseInsensitiveCompare:self->_searchText])
  {
    [(UIWebBrowserFindOnPageHighlighter *)self _clearHighlightViews];
    if ([text length])
    {
      self->_numberOfMatches = 0x7FFFFFFFFFFFFFFFLL;

      self->_searchText = [text copy];
      pdfHandler = self->_pdfHandler;
      if (pdfHandler)
      {
        v8 = [(UIWebPDFViewHandler *)pdfHandler searchControllerForHighlighter:self];
        [v8 setSearchDelegate:self];
        [v8 setResultLimit:limit + 1];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __62__UIWebBrowserFindOnPageHighlighter_setSearchText_matchLimit___block_invoke;
        v11[3] = &unk_1E7101E78;
        v11[4] = v8;
        v11[5] = text;
        dispatch_async(MEMORY[0x1E69E96A0], v11);
      }

      else
      {
        WebThreadLock();
        webView = [(UIWebDocumentView *)self->_browserView webView];
        v10 = [objc_msgSend(objc_msgSend(webView "mainFrame")];
        if ([v10 conformsToProtocol:&unk_1F016E3D0])
        {
          [v10 deselectAll];
        }

        self->_numberOfMatches = [webView countMatchesForText:text options:-[UIWebBrowserFindOnPageHighlighter findOnPageOptions](self highlight:"findOnPageOptions") limit:0 markMatches:{limit + 1, 0}];
      }
    }

    else
    {
      self->_numberOfMatches = 0;

      self->_searchText = 0;
    }
  }
}

- (BOOL)_updateHighlightedMatchIndex:(BOOL)index
{
  numberOfMatches = self->_numberOfMatches;
  if (numberOfMatches)
  {
    highlightedMatchIndex = self->_highlightedMatchIndex;
    v5 = highlightedMatchIndex - 1;
    if (highlightedMatchIndex == 0x7FFFFFFFFFFFFFFFLL || highlightedMatchIndex == 0)
    {
      v5 = numberOfMatches - 1;
    }

    if (highlightedMatchIndex == numberOfMatches - 1 || highlightedMatchIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = highlightedMatchIndex + 1;
    }

    if (!index)
    {
      v8 = v5;
    }

    self->_highlightedMatchIndex = v8;
  }

  return numberOfMatches != 0;
}

- (id)_currentPDFSearchResult
{
  v3 = [(UIWebPDFViewHandler *)self->_pdfHandler searchControllerForHighlighter:self];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  results = [v3 results];
  if (![results count])
  {
    return 0;
  }

  highlightedMatchIndex = self->_highlightedMatchIndex;
  if (highlightedMatchIndex == 0x7FFFFFFFFFFFFFFFLL || highlightedMatchIndex >= [results count])
  {
    return 0;
  }

  results2 = [v4 results];
  v8 = self->_highlightedMatchIndex;

  return [results2 objectAtIndex:v8];
}

- (void)_highlightFindOnPageMatchForPDF:(BOOL)f withPDFHandler:(id)handler
{
  if ([(UIWebBrowserFindOnPageHighlighter *)self _updateHighlightedMatchIndex:f])
  {
    [handler revealSearchResult:-[UIWebBrowserFindOnPageHighlighter _currentPDFSearchResult](self andZoomIn:{"_currentPDFSearchResult"), self->_zoomToHighlightSelection}];
    self->_zoomToHighlightSelection = 0;
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterDidHighlightMatch:self];
    }
  }
}

- (void)_highlightFindOnPageMatch:(BOOL)match
{
  matchCopy = match;
  if (self->_pdfHandler)
  {

    [UIWebBrowserFindOnPageHighlighter _highlightFindOnPageMatchForPDF:"_highlightFindOnPageMatchForPDF:withPDFHandler:" withPDFHandler:?];
  }

  else if (self->_browserView)
  {
    WebThreadLock();
    webView = [(UIWebDocumentView *)self->_browserView webView];
    mainFrame = [webView mainFrame];
    [mainFrame recursiveSetUpdateAppearanceEnabled:1];
    findOnPageOptions = [(UIWebBrowserFindOnPageHighlighter *)self findOnPageOptions];
    if (matchCopy)
    {
      v8 = findOnPageOptions;
    }

    else
    {
      v8 = findOnPageOptions | 8;
    }

    v9 = 3;
    while (1)
    {
      [webView findString:self->_searchText options:v8];
      if ([(UIWebBrowserFindOnPageHighlighter *)self _highlightSelection])
      {
        break;
      }

      if (!--v9)
      {

        [mainFrame recursiveSetUpdateAppearanceEnabled:0];
        return;
      }
    }

    [mainFrame recursiveSetUpdateAppearanceEnabled:0];
    [(UIWebBrowserFindOnPageHighlighter *)self _updateHighlightedMatchIndex:matchCopy];
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterDidHighlightMatch:self];
    }
  }
}

- (void)searchDidBegin:(id)begin
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterSearchDidBegin:self];
  }
}

- (void)searchDidTimeOut:(id)out
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterSearchDidTimeOut:self];
  }
}

- (void)searchWasCancelled:(id)cancelled
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterSearchWasCancelled:self];
  }
}

- (void)searchLimitHit:(id)hit
{
  [hit pause];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterSearchLimitHit:self];
  }
}

- (void)searchDidFinish:(id)finish
{
  if (self->_numberOfMatches == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_numberOfMatches = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighterSearchDidFinish:self];
  }
}

- (void)search:(id)search hasPartialResults:(id)results
{
  numberOfMatches = self->_numberOfMatches;
  v7 = [results count];
  if (numberOfMatches != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 += self->_numberOfMatches;
  }

  self->_numberOfMatches = v7;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(UIWebFindOnPageHighlighterDelegate *)delegate findOnPageHighlighter:self hasPartialSearchResults:results];
  }
}

@end