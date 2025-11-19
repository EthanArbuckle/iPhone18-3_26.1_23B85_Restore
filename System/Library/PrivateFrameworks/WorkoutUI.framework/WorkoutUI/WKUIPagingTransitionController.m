@interface WKUIPagingTransitionController
- (CGRect)contentFrameForPage:(int64_t)a3;
- (CGSize)pageSize;
- (WKUIPagingTransitionController)initWithScrollView:(id)a3 pageSize:(CGSize)a4 numberOfPages:(int64_t)a5 startingPage:(int64_t)a6 pagingAxis:(int64_t)a7 delegate:(id)a8;
- (WKUIPagingTransitionControllerAnimationDelegate)animationDelegate;
- (WKUIPagingTransitionControllerDelegate)delegate;
- (id)_pageViewForPage:(unint64_t)a3;
- (int64_t)_pageForOffset:(double)a3;
- (void)_cancelAnimatedTransitionFromPage:(int64_t)a3;
- (void)_endAnimatedTransitionToPage:(int64_t)a3;
- (void)_endTransitionAnimationForPage:(int64_t)a3 visible:(BOOL)a4;
- (void)_handleScrollViewScrollEnd;
- (void)_prepareViewForPage:(unint64_t)a3 pagingDirection:(int64_t)a4;
- (void)_setActualPageNumber:(int64_t)a3;
- (void)resetCurrentView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAnimationDelegate:(id)a3;
- (void)setCurrentPage:(int64_t)a3 animated:(BOOL)a4;
- (void)setPageControl:(id)a3;
- (void)setPageSize:(CGSize)a3;
@end

@implementation WKUIPagingTransitionController

- (WKUIPagingTransitionController)initWithScrollView:(id)a3 pageSize:(CGSize)a4 numberOfPages:(int64_t)a5 startingPage:(int64_t)a6 pagingAxis:(int64_t)a7 delegate:(id)a8
{
  v23 = a4;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = 0;
  objc_storeStrong(&v17, a8);
  v8 = v22;
  v22 = 0;
  v16.receiver = v8;
  v16.super_class = WKUIPagingTransitionController;
  v15 = [(WKUIPagingTransitionController *)&v16 init];
  v22 = v15;
  objc_storeStrong(&v22, v15);
  if (v15)
  {
    objc_storeWeak(&v22->_delegate, v17);
    objc_storeStrong(&v22->_scrollView, location[0]);
    [(UIScrollView *)v22->_scrollView setDelegate:v22];
    [(UIScrollView *)v22->_scrollView setPagingEnabled:1];
    [(UIScrollView *)v22->_scrollView setClipsToBounds:0];
    v22->_actualPageNumber = v19;
    v22->_currentPage = v19;
    v22->_numberOfPages = v20;
    v22->_pagingAxis = v18;
    [(WKUIPagingTransitionController *)v22 setPageSize:v23.width, v23.height];
  }

  v10 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v10;
}

- (void)setAnimationDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4->_animationDelegateCache.supportsTransitioningView = objc_opt_respondsToSelector() & 1;
  v4->_animationDelegateCache.supportsTransitioningPage = objc_opt_respondsToSelector() & 1;
  v4->_animationDelegateCache.supportsDidFinishTransitionForView = objc_opt_respondsToSelector() & 1;
  objc_storeWeak(&v4->_animationDelegate, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setPageControl:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_pageControl, location[0]);
  [(UIPageControl *)v4->_pageControl setNumberOfPages:v4->_numberOfPages];
  [(UIPageControl *)v4->_pageControl setCurrentPage:v4->_currentPage];
  objc_storeStrong(location, 0);
}

- (void)setCurrentPage:(int64_t)a3 animated:(BOOL)a4
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  if (a4)
  {
    scrollView = v25->_scrollView;
    [(WKUIPagingTransitionController *)v25 contentFrameForPage:v23];
    [(UIScrollView *)scrollView scrollRectToVisible:1 animated:v8, v9, v10, v11];
  }

  else
  {
    v21 = MEMORY[0x277D82BE0](v25->_currentPageView);
    v14 = [(WKUIPagingTransitionController *)v25 delegate];
    v20 = [(WKUIPagingTransitionControllerDelegate *)v14 pagingTransitionController:v25 viewForPage:v23];
    MEMORY[0x277D82BD8](v14);
    if (v20 != v25->_currentPageView)
    {
      [(UIView *)v25->_currentPageView removeFromSuperview];
      [(UIScrollView *)v25->_scrollView addSubview:v20];
      objc_storeStrong(&v25->_currentPageView, v20);
    }

    [(WKUIPagingTransitionController *)v25 contentFrameForPage:v23];
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    [(UIView *)v20 setFrame:v4, v5, v6, v7];
    [(UIScrollView *)v25->_scrollView scrollRectToVisible:0 animated:v16, v17, v18, v19];
    [(WKUIPagingTransitionController *)v25 setCurrentPage:v23];
    [(WKUIPagingTransitionController *)v25 _setActualPageNumber:v23];
    v27 = v23;
    v26 = 1;
    v28 = v23;
    v29 = 1;
    v15.location = v23;
    v15.length = 1;
    v25->_lastVisibleRange = v15;
    v13 = [(WKUIPagingTransitionController *)v25 delegate];
    [(WKUIPagingTransitionControllerDelegate *)v13 pagingTransitionController:v25 didFinishTransitionFromView:v21 toView:v20 page:v23 animated:0];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }
}

- (void)setPageSize:(CGSize)a3
{
  self->_pageSize = a3;
  if (self->_pagingAxis)
  {
    CGSizeMake();
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v9 = v7;
  }

  else
  {
    CGSizeMake();
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v9 = v8;
  }

  [(UIScrollView *)self->_scrollView setContentSize:v9];
  [(WKUIPagingTransitionController *)self setCurrentPage:self->_currentPage animated:0];
}

- (void)_setActualPageNumber:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0 && a3 < self->_numberOfPages && a3 != self->_actualPageNumber)
  {
    self->_actualPageNumber = a3;
    v3 = [(WKUIPagingTransitionController *)self delegate];
    [(WKUIPagingTransitionControllerDelegate *)v3 pagingTransitionController:self didTransitionToPage:self->_actualPageNumber];
    MEMORY[0x277D82BD8](v3);
    [(WKUIPagingTransitionController *)self setCurrentPage:a3];
  }
}

- (CGRect)contentFrameForPage:(int64_t)a3
{
  [(UIScrollView *)self->_scrollView bounds];
  v18 = v3;
  v19 = v4;
  v20 = v4;
  numberOfPages = self->_numberOfPages;
  v14 = [(WKUIPagingTransitionController *)self scrollView];
  _visualPageForActualPage(a3, numberOfPages, [(UIScrollView *)v14 _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](v14);
  if (self->_pagingAxis)
  {
    CGPointMake();
    *&v15 = v7;
    *(&v15 + 1) = v8;
    v17 = v15;
  }

  else
  {
    CGPointMake();
    *&v16 = v5;
    *(&v16 + 1) = v6;
    v17 = v16;
  }

  v23 = v19;
  if (a3 == self->_musicControlPageIndex)
  {
    v23 = v20 + self->_increaseMusicControlBottomOffset;
  }

  v10 = *(&v17 + 1);
  v9 = *&v17;
  v12 = v23;
  v11 = v18;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_prepareViewForPage:(unint64_t)a3 pagingDirection:(int64_t)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  if ([(WKUIPagingTransitionController *)self _isValidPage:a3])
  {
    v13 = [(WKUIPagingTransitionController *)v27 delegate];
    v23 = [(WKUIPagingTransitionControllerDelegate *)v13 pagingTransitionController:v27 viewForPage:v25];
    MEMORY[0x277D82BD8](v13);
    v14 = [v23 superview];
    MEMORY[0x277D82BD8](v14);
    if (!v14)
    {
      [(UIScrollView *)v27->_scrollView addSubview:v23];
    }

    [(WKUIPagingTransitionController *)v27 contentFrameForPage:v25];
    *&v21 = v4;
    *(&v21 + 1) = v5;
    *&v22 = v6;
    *(&v22 + 1) = v7;
    v19 = v21;
    v20 = v22;
    [v23 setFrame:{v4, v5, v6, v7}];
    v12 = [(WKUIPagingTransitionController *)v27 delegate];
    [(WKUIPagingTransitionControllerDelegate *)v12 pagingTransitionController:v27 willDisplayPageView:v23];
    MEMORY[0x277D82BD8](v12);
    if (v24 == 1)
    {
      v11 = v25 - 1;
    }

    else
    {
      v11 = v25 + 1;
    }

    v18 = v11;
    v16 = 0;
    v10 = 0;
    if ([(WKUIPagingTransitionController *)v27 _isValidPage:v11])
    {
      v17 = [(WKUIPagingTransitionController *)v27 delegate];
      v16 = 1;
      v10 = objc_opt_respondsToSelector();
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v10)
    {
      v8 = [(WKUIPagingTransitionController *)v27 delegate];
      v15 = [(WKUIPagingTransitionControllerDelegate *)v8 pagingTransitionController:v27 viewForPage:v18];
      MEMORY[0x277D82BD8](v8);
      v9 = [(WKUIPagingTransitionController *)v27 delegate];
      [(WKUIPagingTransitionControllerDelegate *)v9 pagingTransitionController:v27 willTransitionFromView:v15 toView:v23];
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v23, 0);
  }
}

- (id)_pageViewForPage:(unint64_t)a3
{
  v4 = [(WKUIPagingTransitionController *)self delegate];
  v5 = [(WKUIPagingTransitionControllerDelegate *)v4 pagingTransitionController:self viewForPage:a3];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (int64_t)_pageForOffset:(double)a3
{
  v5 = (a3 / _pageSizeAlongAxis(self->_pagingAxis, self->_pageSize.width, self->_pageSize.height));
  numberOfPages = self->_numberOfPages;
  v6 = [(WKUIPagingTransitionController *)self scrollView];
  v7 = _visualPageForActualPage(v5, numberOfPages, [(UIScrollView *)v6 _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](v6);
  return v7;
}

- (void)resetCurrentView
{
  v5 = self;
  v4[1] = a2;
  v2 = [(WKUIPagingTransitionController *)self delegate];
  v4[0] = [(WKUIPagingTransitionControllerDelegate *)v2 pagingTransitionController:v5 viewForPage:v5->_currentPage];
  MEMORY[0x277D82BD8](v2);
  v3 = [(WKUIPagingTransitionController *)v5 delegate];
  [(WKUIPagingTransitionControllerDelegate *)v3 pagingTransitionController:v5 willDisplayPageView:v4[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v5->_currentPageView, 0);
  [(WKUIPagingTransitionController *)v5 setCurrentPage:v5->_currentPage animated:0];
  objc_storeStrong(v4, 0);
}

- (void)_endAnimatedTransitionToPage:(int64_t)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = MEMORY[0x277D82BE0](self->_currentPageView);
  v3 = [(WKUIPagingTransitionController *)v9 _pageViewForPage:v7];
  currentPageView = v9->_currentPageView;
  v9->_currentPageView = v3;
  MEMORY[0x277D82BD8](currentPageView);
  v5 = [(WKUIPagingTransitionController *)v9 delegate];
  [(WKUIPagingTransitionControllerDelegate *)v5 pagingTransitionController:v9 didFinishTransitionFromView:v6 toView:v9->_currentPageView page:v7 animated:1];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
}

- (void)_cancelAnimatedTransitionFromPage:(int64_t)a3
{
  v5 = [(WKUIPagingTransitionController *)self delegate];
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    v4 = [(WKUIPagingTransitionController *)self delegate];
    v3 = [(WKUIPagingTransitionController *)self _pageViewForPage:a3];
    [(WKUIPagingTransitionControllerDelegate *)v4 pagingTransitionController:self didCancelTransitionFromView:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!a4)
  {
    [(WKUIPagingTransitionController *)v6 _handleScrollViewScrollEnd];
  }

  objc_storeStrong(location, 0);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WKUIPagingTransitionController *)v4 _handleScrollViewScrollEnd];
  objc_storeStrong(location, 0);
}

- (void)_handleScrollViewScrollEnd
{
  v2 = [(WKUIPagingTransitionController *)self _currentPage];
  [(WKUIPagingTransitionController *)self _setActualPageNumber:v2];
  if (v2 == [(WKUIPagingTransitionController *)self currentPage])
  {
    [(WKUIPagingTransitionController *)self _cancelAnimatedTransitionFromPage:v2];
  }

  else
  {
    [(WKUIPagingTransitionController *)self _endAnimatedTransitionToPage:v2];
    [(WKUIPagingTransitionController *)self setCurrentPage:v2];
  }

  [(WKUIPagingTransitionController *)self _endTransitionAnimationForPage:v2 visible:1];
}

- (void)_endTransitionAnimationForPage:(int64_t)a3 visible:(BOOL)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  location = [(WKUIPagingTransitionController *)self _pageViewForPage:a3];
  if (v9->_animationDelegateCache.supportsDidFinishTransitionForView)
  {
    v4 = [(WKUIPagingTransitionController *)v9 animationDelegate];
    [(WKUIPagingTransitionControllerAnimationDelegate *)v4 pagingTransitionController:v9 didFinishTransitionForView:location visible:v6];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&location, 0);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WKUIPagingTransitionController *)v4 _endAnimatedTransitionToPage:[(WKUIPagingTransitionController *)v4 _currentPage]];
  objc_storeStrong(location, 0);
}

- (void)scrollViewDidScroll:(id)a3
{
  v59 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = [(WKUIPagingTransitionController *)v59 delegate];
  v30 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](v29);
  if (v30)
  {
    v28 = [(WKUIPagingTransitionController *)v59 delegate];
    [(WKUIPagingTransitionControllerDelegate *)v28 pagingTransitionControllerDidScroll:v59];
    MEMORY[0x277D82BD8](v28);
  }

  [(UIScrollView *)v59->_scrollView contentOffset];
  v55 = v3;
  v56 = v4;
  v57 = _contentOffsetAlongAxis(v59->_pagingAxis, v3, v4);
  v54 = [(UIScrollView *)v59->_scrollView _shouldReverseLayoutDirection];
  v53 = v57;
  if (v54)
  {
    [(UIScrollView *)v59->_scrollView contentSize];
    v51 = v5;
    v52 = v6;
    v53 = v5 - v57 - v59->_pageSize.width;
  }

  if (v53 == v59->_lastContentOffset)
  {
    v50 = 1;
  }

  else
  {
    v49 = [(WKUIPagingTransitionController *)v59 _pageForOffset:v57];
    v47 = 0;
    v46 = v49;
    if (v49 <= 0)
    {
      v27 = v47;
    }

    else
    {
      v27 = v46;
    }

    v45 = v27;
    v48 = v27;
    v44 = v59->_numberOfPages - 1;
    if (v27 >= v44)
    {
      v26 = v44;
    }

    else
    {
      v26 = v48;
    }

    v43 = v26;
    v49 = v26;
    v42 = 0;
    v7 = _pageSizeAlongAxis(v59->_pagingAxis, v59->_pageSize.width, v59->_pageSize.height);
    if (fmod(v53, v7) == 0.0 || v49 == v59->_numberOfPages - 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
      if (v54)
      {
        --v49;
      }
    }

    v61 = v49;
    v60 = v42;
    v62 = v49;
    v63 = v42;
    range2.location = v49;
    range2.length = v42;
    v40 = v57 - v59->_lastContentOffset > 0.0;
    length = v59->_lastVisibleRange.length;
    v66 = v59->_lastVisibleRange.location;
    v67 = length;
    v64 = v49;
    v65 = v42;
    v25 = 0;
    if (v66 == v49)
    {
      v25 = v67 == v65;
    }

    if (!v25)
    {
      v39.location = 0;
      v39.length = 0;
      v39 = NSIntersectionRange(v59->_lastVisibleRange, range2);
      v38.location = 0;
      v38.length = 0;
      v38 = NSUnionRange(v59->_lastVisibleRange, range2);
      for (i = v38.location; ; ++i)
      {
        v69 = v38;
        if (i >= v38.location + v38.length)
        {
          break;
        }

        v73 = v39;
        v72 = i;
        v24 = 0;
        if (i >= v39.location)
        {
          v24 = v72 - v73.location < v73.length;
        }

        if (!v24)
        {
          v71 = range2;
          v70 = i;
          v23 = 0;
          if (i >= range2.location)
          {
            v23 = v70 - v71.location < v71.length;
          }

          if (v23)
          {
            [(WKUIPagingTransitionController *)v59 _prepareViewForPage:i pagingDirection:v40];
          }

          else
          {
            [(WKUIPagingTransitionController *)v59 _endTransitionAnimationForPage:i visible:0];
          }
        }
      }
    }

    for (j = range2.location; ; ++j)
    {
      v68 = range2;
      if (j >= range2.location + range2.length)
      {
        break;
      }

      v35 = [(WKUIPagingTransitionController *)v59 _pageViewForPage:j];
      v22 = [(WKUIPagingTransitionController *)v59 animationDelegate];
      MEMORY[0x277D82BD8](v22);
      if (v22)
      {
        v18 = v53;
        v19 = j;
        v20 = v18 - v19 * _pageSizeAlongAxis(v59->_pagingAxis, v59->_pageSize.width, v59->_pageSize.height);
        v34 = v20 / _pageSizeAlongAxis(v59->_pagingAxis, v59->_pageSize.width, v59->_pageSize.height);
        v21 = 0;
        if (!j)
        {
          v21 = v34 <= 0.0;
        }

        v17 = 0;
        if (j == v59->_numberOfPages - 1)
        {
          v17 = v34 > 0.0;
        }

        if (v21 || v17)
        {
          v33 = 100.0;
        }

        else
        {
          v33 = 100.0 * (1.0 - fabs(v34));
        }

        v32 = 1;
        v9 = v34;
        if (v34 < 0.0 && v40 || (v9 = v34, v34 >= 0.0) && !v40)
        {
          v32 = 0;
        }

        if (v59->_animationDelegateCache.supportsTransitioningView)
        {
          v16 = [(WKUIPagingTransitionController *)v59 animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)v16 pagingTransitionController:v59 transitioningView:v35 percentageComplete:v32 & 1 isTransitioningOut:v33];
          MEMORY[0x277D82BD8](v16);
        }

        if (v59->_animationDelegateCache.supportsTransitioningPage)
        {
          v15 = [(WKUIPagingTransitionController *)v59 animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)v15 pagingTransitionController:v59 transitioningPage:j percentageComplete:v40 pagingDirection:v32 & 1 isTransitioningOut:v33];
          MEMORY[0x277D82BD8](v15);
        }
      }

      objc_storeStrong(&v35, 0);
    }

    v31 = _pageSizeAlongAxis(v59->_pagingAxis, v59->_pageSize.width, v59->_pageSize.height);
    v12 = ((v31 / 2.0 + v57) / (v59->_numberOfPages * v31) * v59->_numberOfPages);
    numberOfPages = v59->_numberOfPages;
    v13 = [(WKUIPagingTransitionController *)v59 scrollView];
    v10 = [(UIScrollView *)v13 _shouldReverseLayoutDirection];
    v14 = _visualPageForActualPage(v12, numberOfPages, v10, v59->_pagingAxis);
    MEMORY[0x277D82BD8](v13);
    if (v59->_actualPageNumber != v14)
    {
      [(WKUIPagingTransitionController *)v59 _setActualPageNumber:v14];
    }

    v59->_lastContentOffset = v53;
    v59->_lastVisibleRange = range2;
    v50 = 0;
  }

  objc_storeStrong(location, 0);
}

- (CGSize)pageSize
{
  height = self->_pageSize.height;
  width = self->_pageSize.width;
  result.height = height;
  result.width = width;
  return result;
}

- (WKUIPagingTransitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKUIPagingTransitionControllerAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end