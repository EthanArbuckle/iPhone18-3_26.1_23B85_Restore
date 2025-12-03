@interface WKUIPagingTransitionController
- (CGRect)contentFrameForPage:(int64_t)page;
- (CGSize)pageSize;
- (WKUIPagingTransitionController)initWithScrollView:(id)view pageSize:(CGSize)size numberOfPages:(int64_t)pages startingPage:(int64_t)page pagingAxis:(int64_t)axis delegate:(id)delegate;
- (WKUIPagingTransitionControllerAnimationDelegate)animationDelegate;
- (WKUIPagingTransitionControllerDelegate)delegate;
- (id)_pageViewForPage:(unint64_t)page;
- (int64_t)_pageForOffset:(double)offset;
- (void)_cancelAnimatedTransitionFromPage:(int64_t)page;
- (void)_endAnimatedTransitionToPage:(int64_t)page;
- (void)_endTransitionAnimationForPage:(int64_t)page visible:(BOOL)visible;
- (void)_handleScrollViewScrollEnd;
- (void)_prepareViewForPage:(unint64_t)page pagingDirection:(int64_t)direction;
- (void)_setActualPageNumber:(int64_t)number;
- (void)resetCurrentView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAnimationDelegate:(id)delegate;
- (void)setCurrentPage:(int64_t)page animated:(BOOL)animated;
- (void)setPageControl:(id)control;
- (void)setPageSize:(CGSize)size;
@end

@implementation WKUIPagingTransitionController

- (WKUIPagingTransitionController)initWithScrollView:(id)view pageSize:(CGSize)size numberOfPages:(int64_t)pages startingPage:(int64_t)page pagingAxis:(int64_t)axis delegate:(id)delegate
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  pagesCopy = pages;
  pageCopy = page;
  axisCopy = axis;
  v17 = 0;
  objc_storeStrong(&v17, delegate);
  v8 = selfCopy;
  selfCopy = 0;
  v16.receiver = v8;
  v16.super_class = WKUIPagingTransitionController;
  v15 = [(WKUIPagingTransitionController *)&v16 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    objc_storeWeak(&selfCopy->_delegate, v17);
    objc_storeStrong(&selfCopy->_scrollView, location[0]);
    [(UIScrollView *)selfCopy->_scrollView setDelegate:selfCopy];
    [(UIScrollView *)selfCopy->_scrollView setPagingEnabled:1];
    [(UIScrollView *)selfCopy->_scrollView setClipsToBounds:0];
    selfCopy->_actualPageNumber = pageCopy;
    selfCopy->_currentPage = pageCopy;
    selfCopy->_numberOfPages = pagesCopy;
    selfCopy->_pagingAxis = axisCopy;
    [(WKUIPagingTransitionController *)selfCopy setPageSize:sizeCopy.width, sizeCopy.height];
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)setAnimationDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  selfCopy->_animationDelegateCache.supportsTransitioningView = objc_opt_respondsToSelector() & 1;
  selfCopy->_animationDelegateCache.supportsTransitioningPage = objc_opt_respondsToSelector() & 1;
  selfCopy->_animationDelegateCache.supportsDidFinishTransitionForView = objc_opt_respondsToSelector() & 1;
  objc_storeWeak(&selfCopy->_animationDelegate, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setPageControl:(id)control
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  objc_storeStrong(&selfCopy->_pageControl, location[0]);
  [(UIPageControl *)selfCopy->_pageControl setNumberOfPages:selfCopy->_numberOfPages];
  [(UIPageControl *)selfCopy->_pageControl setCurrentPage:selfCopy->_currentPage];
  objc_storeStrong(location, 0);
}

- (void)setCurrentPage:(int64_t)page animated:(BOOL)animated
{
  selfCopy = self;
  v24 = a2;
  pageCopy = page;
  animatedCopy = animated;
  if (animated)
  {
    scrollView = selfCopy->_scrollView;
    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy];
    [(UIScrollView *)scrollView scrollRectToVisible:1 animated:v8, v9, v10, v11];
  }

  else
  {
    v21 = MEMORY[0x277D82BE0](selfCopy->_currentPageView);
    delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
    v20 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:pageCopy];
    MEMORY[0x277D82BD8](delegate);
    if (v20 != selfCopy->_currentPageView)
    {
      [(UIView *)selfCopy->_currentPageView removeFromSuperview];
      [(UIScrollView *)selfCopy->_scrollView addSubview:v20];
      objc_storeStrong(&selfCopy->_currentPageView, v20);
    }

    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy];
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    [(UIView *)v20 setFrame:v4, v5, v6, v7];
    [(UIScrollView *)selfCopy->_scrollView scrollRectToVisible:0 animated:v16, v17, v18, v19];
    [(WKUIPagingTransitionController *)selfCopy setCurrentPage:pageCopy];
    [(WKUIPagingTransitionController *)selfCopy _setActualPageNumber:pageCopy];
    v27 = pageCopy;
    v26 = 1;
    v28 = pageCopy;
    v29 = 1;
    v15.location = pageCopy;
    v15.length = 1;
    selfCopy->_lastVisibleRange = v15;
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy didFinishTransitionFromView:v21 toView:v20 page:pageCopy animated:0];
    MEMORY[0x277D82BD8](delegate2);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }
}

- (void)setPageSize:(CGSize)size
{
  self->_pageSize = size;
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

- (void)_setActualPageNumber:(int64_t)number
{
  if ((number & 0x8000000000000000) == 0 && number < self->_numberOfPages && number != self->_actualPageNumber)
  {
    self->_actualPageNumber = number;
    delegate = [(WKUIPagingTransitionController *)self delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:self didTransitionToPage:self->_actualPageNumber];
    MEMORY[0x277D82BD8](delegate);
    [(WKUIPagingTransitionController *)self setCurrentPage:number];
  }
}

- (CGRect)contentFrameForPage:(int64_t)page
{
  [(UIScrollView *)self->_scrollView bounds];
  v18 = v3;
  v19 = v4;
  v20 = v4;
  numberOfPages = self->_numberOfPages;
  scrollView = [(WKUIPagingTransitionController *)self scrollView];
  _visualPageForActualPage(page, numberOfPages, [(UIScrollView *)scrollView _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](scrollView);
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
  if (page == self->_musicControlPageIndex)
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

- (void)_prepareViewForPage:(unint64_t)page pagingDirection:(int64_t)direction
{
  selfCopy = self;
  v26 = a2;
  pageCopy = page;
  directionCopy = direction;
  if ([(WKUIPagingTransitionController *)self _isValidPage:page])
  {
    delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
    v23 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:pageCopy];
    MEMORY[0x277D82BD8](delegate);
    superview = [v23 superview];
    MEMORY[0x277D82BD8](superview);
    if (!superview)
    {
      [(UIScrollView *)selfCopy->_scrollView addSubview:v23];
    }

    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy];
    *&v21 = v4;
    *(&v21 + 1) = v5;
    *&v22 = v6;
    *(&v22 + 1) = v7;
    v19 = v21;
    v20 = v22;
    [v23 setFrame:{v4, v5, v6, v7}];
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy willDisplayPageView:v23];
    MEMORY[0x277D82BD8](delegate2);
    if (directionCopy == 1)
    {
      v11 = pageCopy - 1;
    }

    else
    {
      v11 = pageCopy + 1;
    }

    v18 = v11;
    v16 = 0;
    v10 = 0;
    if ([(WKUIPagingTransitionController *)selfCopy _isValidPage:v11])
    {
      delegate3 = [(WKUIPagingTransitionController *)selfCopy delegate];
      v16 = 1;
      v10 = objc_opt_respondsToSelector();
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](delegate3);
    }

    if (v10)
    {
      delegate4 = [(WKUIPagingTransitionController *)selfCopy delegate];
      v15 = [(WKUIPagingTransitionControllerDelegate *)delegate4 pagingTransitionController:selfCopy viewForPage:v18];
      MEMORY[0x277D82BD8](delegate4);
      delegate5 = [(WKUIPagingTransitionController *)selfCopy delegate];
      [(WKUIPagingTransitionControllerDelegate *)delegate5 pagingTransitionController:selfCopy willTransitionFromView:v15 toView:v23];
      MEMORY[0x277D82BD8](delegate5);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v23, 0);
  }
}

- (id)_pageViewForPage:(unint64_t)page
{
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v5 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:self viewForPage:page];
  MEMORY[0x277D82BD8](delegate);

  return v5;
}

- (int64_t)_pageForOffset:(double)offset
{
  v5 = (offset / _pageSizeAlongAxis(self->_pagingAxis, self->_pageSize.width, self->_pageSize.height));
  numberOfPages = self->_numberOfPages;
  scrollView = [(WKUIPagingTransitionController *)self scrollView];
  v7 = _visualPageForActualPage(v5, numberOfPages, [(UIScrollView *)scrollView _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](scrollView);
  return v7;
}

- (void)resetCurrentView
{
  selfCopy = self;
  v4[1] = a2;
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v4[0] = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:selfCopy->_currentPage];
  MEMORY[0x277D82BD8](delegate);
  delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
  [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy willDisplayPageView:v4[0]];
  MEMORY[0x277D82BD8](delegate2);
  objc_storeStrong(&selfCopy->_currentPageView, 0);
  [(WKUIPagingTransitionController *)selfCopy setCurrentPage:selfCopy->_currentPage animated:0];
  objc_storeStrong(v4, 0);
}

- (void)_endAnimatedTransitionToPage:(int64_t)page
{
  selfCopy = self;
  v8 = a2;
  pageCopy = page;
  v6 = MEMORY[0x277D82BE0](self->_currentPageView);
  v3 = [(WKUIPagingTransitionController *)selfCopy _pageViewForPage:pageCopy];
  currentPageView = selfCopy->_currentPageView;
  selfCopy->_currentPageView = v3;
  MEMORY[0x277D82BD8](currentPageView);
  delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
  [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy didFinishTransitionFromView:v6 toView:selfCopy->_currentPageView page:pageCopy animated:1];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v6, 0);
}

- (void)_cancelAnimatedTransitionFromPage:(int64_t)page
{
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v6 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v6)
  {
    delegate2 = [(WKUIPagingTransitionController *)self delegate];
    v3 = [(WKUIPagingTransitionController *)self _pageViewForPage:page];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:self didCancelTransitionFromView:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](delegate2);
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dragging);
  if (!decelerate)
  {
    [(WKUIPagingTransitionController *)selfCopy _handleScrollViewScrollEnd];
  }

  objc_storeStrong(location, 0);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, decelerating);
  [(WKUIPagingTransitionController *)selfCopy _handleScrollViewScrollEnd];
  objc_storeStrong(location, 0);
}

- (void)_handleScrollViewScrollEnd
{
  _currentPage = [(WKUIPagingTransitionController *)self _currentPage];
  [(WKUIPagingTransitionController *)self _setActualPageNumber:_currentPage];
  if (_currentPage == [(WKUIPagingTransitionController *)self currentPage])
  {
    [(WKUIPagingTransitionController *)self _cancelAnimatedTransitionFromPage:_currentPage];
  }

  else
  {
    [(WKUIPagingTransitionController *)self _endAnimatedTransitionToPage:_currentPage];
    [(WKUIPagingTransitionController *)self setCurrentPage:_currentPage];
  }

  [(WKUIPagingTransitionController *)self _endTransitionAnimationForPage:_currentPage visible:1];
}

- (void)_endTransitionAnimationForPage:(int64_t)page visible:(BOOL)visible
{
  selfCopy = self;
  v8 = a2;
  pageCopy = page;
  visibleCopy = visible;
  location = [(WKUIPagingTransitionController *)self _pageViewForPage:page];
  if (selfCopy->_animationDelegateCache.supportsDidFinishTransitionForView)
  {
    animationDelegate = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
    [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate pagingTransitionController:selfCopy didFinishTransitionForView:location visible:visibleCopy];
    MEMORY[0x277D82BD8](animationDelegate);
  }

  objc_storeStrong(&location, 0);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animation);
  [(WKUIPagingTransitionController *)selfCopy _endAnimatedTransitionToPage:[(WKUIPagingTransitionController *)selfCopy _currentPage]];
  objc_storeStrong(location, 0);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
  v30 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](delegate);
  if (v30)
  {
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionControllerDidScroll:selfCopy];
    MEMORY[0x277D82BD8](delegate2);
  }

  [(UIScrollView *)selfCopy->_scrollView contentOffset];
  v55 = v3;
  v56 = v4;
  v57 = _contentOffsetAlongAxis(selfCopy->_pagingAxis, v3, v4);
  _shouldReverseLayoutDirection = [(UIScrollView *)selfCopy->_scrollView _shouldReverseLayoutDirection];
  v53 = v57;
  if (_shouldReverseLayoutDirection)
  {
    [(UIScrollView *)selfCopy->_scrollView contentSize];
    v51 = v5;
    v52 = v6;
    v53 = v5 - v57 - selfCopy->_pageSize.width;
  }

  if (v53 == selfCopy->_lastContentOffset)
  {
    v50 = 1;
  }

  else
  {
    v49 = [(WKUIPagingTransitionController *)selfCopy _pageForOffset:v57];
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
    v44 = selfCopy->_numberOfPages - 1;
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
    v7 = _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
    if (fmod(v53, v7) == 0.0 || v49 == selfCopy->_numberOfPages - 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
      if (_shouldReverseLayoutDirection)
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
    v40 = v57 - selfCopy->_lastContentOffset > 0.0;
    length = selfCopy->_lastVisibleRange.length;
    v66 = selfCopy->_lastVisibleRange.location;
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
      v39 = NSIntersectionRange(selfCopy->_lastVisibleRange, range2);
      v38.location = 0;
      v38.length = 0;
      v38 = NSUnionRange(selfCopy->_lastVisibleRange, range2);
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
            [(WKUIPagingTransitionController *)selfCopy _prepareViewForPage:i pagingDirection:v40];
          }

          else
          {
            [(WKUIPagingTransitionController *)selfCopy _endTransitionAnimationForPage:i visible:0];
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

      v35 = [(WKUIPagingTransitionController *)selfCopy _pageViewForPage:j];
      animationDelegate = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
      MEMORY[0x277D82BD8](animationDelegate);
      if (animationDelegate)
      {
        v18 = v53;
        v19 = j;
        v20 = v18 - v19 * _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
        v34 = v20 / _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
        v21 = 0;
        if (!j)
        {
          v21 = v34 <= 0.0;
        }

        v17 = 0;
        if (j == selfCopy->_numberOfPages - 1)
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

        if (selfCopy->_animationDelegateCache.supportsTransitioningView)
        {
          animationDelegate2 = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate2 pagingTransitionController:selfCopy transitioningView:v35 percentageComplete:v32 & 1 isTransitioningOut:v33];
          MEMORY[0x277D82BD8](animationDelegate2);
        }

        if (selfCopy->_animationDelegateCache.supportsTransitioningPage)
        {
          animationDelegate3 = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate3 pagingTransitionController:selfCopy transitioningPage:j percentageComplete:v40 pagingDirection:v32 & 1 isTransitioningOut:v33];
          MEMORY[0x277D82BD8](animationDelegate3);
        }
      }

      objc_storeStrong(&v35, 0);
    }

    v31 = _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
    v12 = ((v31 / 2.0 + v57) / (selfCopy->_numberOfPages * v31) * selfCopy->_numberOfPages);
    numberOfPages = selfCopy->_numberOfPages;
    scrollView = [(WKUIPagingTransitionController *)selfCopy scrollView];
    _shouldReverseLayoutDirection2 = [(UIScrollView *)scrollView _shouldReverseLayoutDirection];
    v14 = _visualPageForActualPage(v12, numberOfPages, _shouldReverseLayoutDirection2, selfCopy->_pagingAxis);
    MEMORY[0x277D82BD8](scrollView);
    if (selfCopy->_actualPageNumber != v14)
    {
      [(WKUIPagingTransitionController *)selfCopy _setActualPageNumber:v14];
    }

    selfCopy->_lastContentOffset = v53;
    selfCopy->_lastVisibleRange = range2;
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