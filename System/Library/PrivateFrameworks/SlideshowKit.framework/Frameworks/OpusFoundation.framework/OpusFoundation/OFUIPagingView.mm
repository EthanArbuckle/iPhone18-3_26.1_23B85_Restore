@interface OFUIPagingView
- (CGRect)frameForPageAtIndex:(unint64_t)index;
- (CGRect)frameForScrollView;
- (OFUIPagingView)initWithCoder:(id)coder;
- (OFUIPagingView)initWithFrame:(CGRect)frame;
- (id)dequeueReusablePage;
- (id)viewForPageAtIndex:(unint64_t)index;
- (int64_t)firstVisiblePageIndex;
- (int64_t)lastVisiblePageIndex;
- (void)commonInit;
- (void)configurePage:(id)page forIndex:(int64_t)index;
- (void)configurePages;
- (void)dealloc;
- (void)didRotate;
- (void)knownToBeIdle;
- (void)knownToBeMoving;
- (void)layoutSubviews;
- (void)recyclePage:(id)page;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCurrentPageIndex:(int64_t)index;
- (void)setFrame:(CGRect)frame;
- (void)setGapBetweenPages:(double)pages;
- (void)setPagesToPreload:(int64_t)preload;
- (void)willAnimateRotation;
@end

@implementation OFUIPagingView

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = OFUIPagingView;
  [(OFUIView *)&v5 commonInit];
  self->_pagingViewController = 0;
  self->_delegate = 0;
  self->_gapBetweenPages = 20.0;
  self->_pagesToPreload = 1;
  self->_visiblePages = objc_alloc_init(MEMORY[0x277CBEB58]);
  self->_recycledPages = objc_alloc_init(MEMORY[0x277CBEB58]);
  self->_pageCount = 0;
  self->_currentPageIndex = 0;
  self->_previousPageIndex = -1;
  self->_firstLoadedPageIndex = -1;
  self->_lastLoadedPageIndex = -1;
  self->_rotationInProgress = 0;
  self->_scrollViewIsMoving = 0;
  self->_recyclingEnabled = 1;
  [(OFUIPagingView *)self setClipsToBounds:1];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  [(OFUIPagingView *)self frameForScrollView];
  v4 = [v3 initWithFrame:?];
  self->_scrollView = v4;
  [(UIScrollView *)v4 setAutoresizingMask:18];
  [(UIScrollView *)self->_scrollView setPagingEnabled:1];
  -[UIScrollView setBackgroundColor:](self->_scrollView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setBounces:1];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(OFUIPagingView *)self addSubview:self->_scrollView];
}

- (OFUIPagingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OFUIPagingView;
  v3 = [(OFViewProxy *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFUIPagingView *)v3 commonInit];
  }

  return v4;
}

- (OFUIPagingView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OFUIPagingView;
  v3 = [(OFViewProxy *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OFUIPagingView *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_pagingViewController)
  {
    self->_pagingViewController = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  scrollView = self->_scrollView;
  if (scrollView)
  {

    self->_scrollView = 0;
  }

  recycledPages = self->_recycledPages;
  if (recycledPages)
  {

    self->_recycledPages = 0;
  }

  visiblePages = self->_visiblePages;
  if (visiblePages)
  {

    self->_visiblePages = 0;
  }

  v6.receiver = self;
  v6.super_class = OFUIPagingView;
  [(OFUIView *)&v6 dealloc];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = OFUIPagingView;
  [(OFUIPagingView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(OFUIPagingView *)self configurePages];
}

- (void)setGapBetweenPages:(double)pages
{
  if (self->_gapBetweenPages != pages)
  {
    self->_gapBetweenPages = pages;
    [(OFUIPagingView *)self setNeedsLayout];
  }
}

- (void)setPagesToPreload:(int64_t)preload
{
  if (self->_pagesToPreload != preload)
  {
    self->_pagesToPreload = preload;
    [(OFUIPagingView *)self configurePages];
  }
}

- (void)reloadData
{
  v14 = *MEMORY[0x277D85DE8];
  delegate = [(OFUIPagingView *)self delegate];
  if (delegate)
  {
    [(OFUIPagingView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(OFUIPagingViewDelegate *)self->_delegate numberOfPagesInPagingView:self];
    }

    else
    {
      delegate = 0;
    }
  }

  self->_pageCount = delegate;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  visiblePages = self->_visiblePages;
  v5 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(visiblePages);
        }

        [(OFUIPagingView *)self recyclePage:*(*(&v9 + 1) + 8 * i)];
      }

      v6 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_visiblePages removeAllObjects];
  [(OFUIPagingView *)self configurePages];
}

- (id)viewForPageAtIndex:(unint64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  visiblePages = self->_visiblePages;
  v5 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(visiblePages);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 tag] == index)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)configurePages
{
  v50 = *MEMORY[0x277D85DE8];
  [(UIScrollView *)self->_scrollView frame];
  if (v3 > self->_gapBetweenPages + 0.000001 && (self->_pageCount || self->_currentPageIndex <= 0) && !self->_rotationInProgress)
  {
    v4 = self->_scrollViewIsMoving && self->_pagesToPreload > 0;
    v43 = v4;
    [(UIScrollView *)self->_scrollView frame];
    v6 = v5 * self->_pageCount;
    [(UIScrollView *)self->_scrollView frame];
    v8 = v7;
    [(UIScrollView *)self->_scrollView contentSize];
    if (v10 != v6 || v9 != v8)
    {
      [(UIScrollView *)self->_scrollView setContentSize:v6, v8];
      [(UIScrollView *)self->_scrollView frame];
      [(UIScrollView *)self->_scrollView setContentOffset:v12 * self->_currentPageIndex, 0.0];
    }

    [(UIScrollView *)self->_scrollView bounds];
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    MidX = CGRectGetMidX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v18 = MidX / CGRectGetWidth(v52);
    v19 = floorf(v18);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    pageCount = self->_pageCount;
    if (v19 >= (pageCount - 1))
    {
      v19 = (pageCount - 1);
    }

    if (pageCount >= v19)
    {
      pageCount = v19;
    }

    v21 = pageCount & ~(pageCount >> 63);
    firstVisiblePageIndex = [(OFUIPagingView *)self firstVisiblePageIndex];
    lastVisiblePageIndex = [(OFUIPagingView *)self lastVisiblePageIndex];
    pagesToPreload = self->_pagesToPreload;
    v25 = v21 - pagesToPreload;
    v41 = firstVisiblePageIndex;
    v42 = v21;
    if (firstVisiblePageIndex < v21 - pagesToPreload)
    {
      v25 = firstVisiblePageIndex;
    }

    v26 = v25 & ~(v25 >> 63);
    v27 = v21 + pagesToPreload;
    v44 = lastVisiblePageIndex;
    if (lastVisiblePageIndex > v27)
    {
      v27 = lastVisiblePageIndex;
    }

    if (self->_pageCount - 1 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = self->_pageCount - 1;
    }

    v29 = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    visiblePages = self->_visiblePages;
    v31 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v46;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(visiblePages);
          }

          v35 = *(*(&v45 + 1) + 8 * i);
          if ([v35 tag] < v26 || objc_msgSend(v35, "tag") > v28)
          {
            [(OFUIPagingView *)self recyclePage:v35];
            [v29 addObject:v35];
          }
        }

        v32 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v32);
    }

    [(NSMutableSet *)self->_visiblePages minusSet:v29];
    if (v26 <= v28)
    {
      v36 = v26;
      do
      {
        v37 = [(OFUIPagingView *)self viewForPageAtIndex:v36];
        if (v37)
        {
          [(OFUIPagingView *)self configurePage:v37 forIndex:v36];
        }

        else if (!v43 || v36 >= v41 && v36 <= v44)
        {
          v38 = [(OFUIPagingViewDelegate *)self->_delegate viewForPageInPagingView:self atIndex:v36];
          [(OFUIPagingView *)self configurePage:v38 forIndex:v36];
          [(UIScrollView *)self->_scrollView addSubview:v38];
          [(NSMutableSet *)self->_visiblePages addObject:v38];
        }

        ++v36;
      }

      while (v28 + 1 != v36);
    }

    if (v43 || self->_firstLoadedPageIndex == v26 && self->_lastLoadedPageIndex == v28)
    {
      p_currentPageIndex = &self->_currentPageIndex;
      currentPageIndex = self->_currentPageIndex;
      if (v42 == currentPageIndex)
      {
        return;
      }
    }

    else
    {
      self->_firstLoadedPageIndex = v26;
      self->_lastLoadedPageIndex = v28;
      p_currentPageIndex = &self->_currentPageIndex;
      currentPageIndex = self->_currentPageIndex;
      if (v42 == currentPageIndex)
      {
LABEL_55:
        if ([(OFUIPagingView *)self delegate])
        {
          [(OFUIPagingView *)self delegate];
          if (objc_opt_respondsToSelector())
          {
            [(OFUIPagingViewDelegate *)[(OFUIPagingView *)self delegate] pagesDidChangeInPagingView:self];
          }
        }

        return;
      }
    }

    self->_previousPageIndex = currentPageIndex;
    *p_currentPageIndex = v42;
    if ([(OFUIPagingView *)self delegate])
    {
      [(OFUIPagingView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(OFUIPagingViewDelegate *)[(OFUIPagingView *)self delegate] currentPageDidChangeInPagingView:self];
      }
    }

    goto LABEL_55;
  }
}

- (void)configurePage:(id)page forIndex:(int64_t)index
{
  [page setTag:index];
  [(OFUIPagingView *)self frameForPageAtIndex:index];
  [page setFrame:?];

  [page setNeedsDisplay];
}

- (void)willAnimateRotation
{
  v21 = *MEMORY[0x277D85DE8];
  self->_rotationInProgress = 1;
  v3 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  visiblePages = self->_visiblePages;
  v5 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(visiblePages);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 tag] != self->_currentPageIndex)
        {
          [(OFUIPagingView *)self recyclePage:v9];
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_visiblePages minusSet:v3];
  [(UIScrollView *)self->_scrollView frame];
  v11 = v10;
  v13 = v12;
  [(UIScrollView *)self->_scrollView contentOffset];
  gapBetweenPages = self->_gapBetweenPages;
  [-[OFUIPagingView viewForPageAtIndex:](self viewForPageAtIndex:{self->_currentPageIndex), "setFrame:", v15 + gapBetweenPages * 0.5, 0.0, v11 - gapBetweenPages, v13}];
}

- (void)didRotate
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visiblePages = self->_visiblePages;
  v4 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(visiblePages);
        }

        -[OFUIPagingView configurePage:forIndex:](self, "configurePage:forIndex:", *(*(&v10 + 1) + 8 * i), [*(*(&v10 + 1) + 8 * i) tag]);
      }

      v5 = [(NSMutableSet *)visiblePages countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  currentPageIndex = self->_currentPageIndex;
  [(UIScrollView *)self->_scrollView frame];
  [(UIScrollView *)self->_scrollView setContentOffset:v9 * currentPageIndex, 0.0];
  self->_rotationInProgress = 0;
  [(OFUIPagingView *)self configurePages];
}

- (void)setCurrentPageIndex:(int64_t)index
{
  [(UIScrollView *)self->_scrollView frame];
  if (v5 > 0.0)
  {
    [(UIScrollView *)self->_scrollView frame];
    if (fabs(v6 + self->_gapBetweenPages * 0.5) < 0.000001)
    {
      [(UIScrollView *)self->_scrollView frame];
      [(UIScrollView *)self->_scrollView setContentOffset:v7 * index, 0.0];
    }
  }

  self->_currentPageIndex = index;
}

- (void)layoutSubviews
{
  if (!self->_rotationInProgress)
  {
    [(UIScrollView *)self->_scrollView frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(OFUIPagingView *)self frameForScrollView];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    if (!CGRectEqualToRect(v22, v23))
    {
      [(UIScrollView *)self->_scrollView setFrame:v12, v14, v16, v18];
    }

    if (v8 == 0.0 || ([(UIScrollView *)self->_scrollView frame], v19 == v8))
    {
      [(UIScrollView *)self->_scrollView frame];
      if (v10 != v20)
      {

        [(OFUIPagingView *)self configurePages];
      }
    }
  }
}

- (int64_t)firstVisiblePageIndex
{
  [(UIScrollView *)self->_scrollView bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MinX = CGRectGetMinX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v7 = MinX / CGRectGetWidth(v11);
  v8 = floorf(v7);
  if (v8 < 0.0)
  {
    return 0.0;
  }

  return v8;
}

- (int64_t)lastVisiblePageIndex
{
  [(UIScrollView *)self->_scrollView bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetMaxX(v11) + -1.0;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = v7 / CGRectGetWidth(v12);
  v9 = floorf(v8);
  if (v9 >= (self->_pageCount - 1))
  {
    return (self->_pageCount - 1);
  }

  return v9;
}

- (CGRect)frameForScrollView
{
  [(OFUIPagingView *)self bounds];
  gapBetweenPages = self->_gapBetweenPages;
  v5 = gapBetweenPages * -0.5;
  v7 = v6 + gapBetweenPages;
  v8 = 0.0;
  result.size.height = v3;
  result.size.width = v7;
  result.origin.y = v8;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForPageAtIndex:(unint64_t)index
{
  [(UIScrollView *)self->_scrollView frame];
  v6 = v5;
  [(OFUIPagingView *)self bounds];
  v9 = self->_gapBetweenPages * 0.5 + v6 * index;
  v10 = 0.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)recyclePage:(id)page
{
  if (objc_opt_respondsToSelector())
  {
    [page prepareForReuse];
  }

  if (self->_recyclingEnabled)
  {
    [(NSMutableSet *)self->_recycledPages addObject:page];
  }

  [page removeFromSuperview];
}

- (id)dequeueReusablePage
{
  anyObject = [(NSMutableSet *)self->_recycledPages anyObject];
  v4 = anyObject;
  if (anyObject)
  {
    [(NSMutableSet *)self->_recycledPages removeObject:anyObject];
  }

  return v4;
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (!self->_rotationInProgress)
  {
    [(OFUIPagingView *)self configurePages];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(OFUIPagingView *)self knownToBeIdle];
  }
}

- (void)knownToBeMoving
{
  if (!self->_scrollViewIsMoving)
  {
    self->_scrollViewIsMoving = 1;
    if ([(OFUIPagingView *)self delegate])
    {
      [(OFUIPagingView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate = [(OFUIPagingView *)self delegate];

        [(OFUIPagingViewDelegate *)delegate pagingViewWillBeginMoving:self];
      }
    }
  }
}

- (void)knownToBeIdle
{
  if (self->_scrollViewIsMoving)
  {
    self->_scrollViewIsMoving = 0;
    if (self->_pagesToPreload >= 1)
    {
      [(OFUIPagingView *)self configurePages];
    }

    if ([(OFUIPagingView *)self delegate])
    {
      [(OFUIPagingView *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate = [(OFUIPagingView *)self delegate];

        [(OFUIPagingViewDelegate *)delegate pagingViewDidEndMoving:self];
      }
    }
  }
}

@end