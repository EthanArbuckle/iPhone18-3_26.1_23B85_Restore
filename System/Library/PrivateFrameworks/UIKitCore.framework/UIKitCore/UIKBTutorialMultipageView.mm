@interface UIKBTutorialMultipageView
- (UIKBTutorialMultipageView)initWithPageViews:(id)views pagingInterval:(double)interval;
- (void)configMediaView;
- (void)resetPageScrolling;
- (void)scrollToNextPage;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation UIKBTutorialMultipageView

- (UIKBTutorialMultipageView)initWithPageViews:(id)views pagingInterval:(double)interval
{
  viewsCopy = views;
  v8 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v9 = dbl_18A67B8C0[v8];
  v10 = dbl_18A67B8D0[v8];
  v50.receiver = self;
  v50.super_class = UIKBTutorialMultipageView;
  v11 = [(UIView *)&v50 initWithFrame:0.0, 0.0, v9, v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pageViews, views);
    v48 = 440;
    v12->_pagingInterval = interval;
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v13 = 11.0;
    }

    else
    {
      v13 = 5.0;
    }

    v14 = [[UIPageControl alloc] initWithFrame:0.0, 0.0, 59.0, v13];
    pageControl = v12->_pageControl;
    v12->_pageControl = v14;

    [(UIPageControl *)v12->_pageControl setNumberOfPages:[(NSArray *)v12->_pageViews count]];
    [(UIPageControl *)v12->_pageControl setCurrentPage:0];
    [(UIPageControl *)v12->_pageControl setHidesForSinglePage:1];
    v16 = +[UIColor lightGrayColor];
    [(UIPageControl *)v12->_pageControl setPageIndicatorTintColor:v16];

    v17 = +[UIColor darkGrayColor];
    [(UIPageControl *)v12->_pageControl setCurrentPageIndicatorTintColor:v17];

    [(UIView *)v12 addSubview:v12->_pageControl];
    v18 = objc_alloc_init(UIScrollView);
    pageScrollView = v12->_pageScrollView;
    v12->_pageScrollView = v18;

    [(UIScrollView *)v12->_pageScrollView setDelegate:v12];
    [(UIScrollView *)v12->_pageScrollView setPagingEnabled:1];
    [(UIScrollView *)v12->_pageScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v12->_pageScrollView setShowsHorizontalScrollIndicator:0];
    [(UIView *)v12 addSubview:v12->_pageScrollView];
    if ([(NSArray *)v12->_pageViews count])
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = [(NSArray *)v12->_pageViews objectAtIndex:v20, v48];
        [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UIView *)v12->_pageScrollView addSubview:v22];
        leadingAnchor = [v22 leadingAnchor];
        if (v21)
        {
          trailingAnchor = [v21 trailingAnchor];
          leadingAnchor2 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
          [leadingAnchor2 setActive:1];
        }

        else
        {
          trailingAnchor = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
          leadingAnchor2 = [trailingAnchor leadingAnchor];
          v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          [v26 setActive:1];
        }

        topAnchor = [v22 topAnchor];
        contentLayoutGuide = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
        topAnchor2 = [contentLayoutGuide topAnchor];
        v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v30 setActive:1];

        bottomAnchor = [v22 bottomAnchor];
        contentLayoutGuide2 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
        bottomAnchor2 = [contentLayoutGuide2 bottomAnchor];
        v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v34 setActive:1];

        widthAnchor = [v22 widthAnchor];
        frameLayoutGuide = [(UIScrollView *)v12->_pageScrollView frameLayoutGuide];
        widthAnchor2 = [frameLayoutGuide widthAnchor];
        v38 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        [v38 setActive:1];

        heightAnchor = [v22 heightAnchor];
        heightAnchor2 = [(UIView *)v12->_pageScrollView heightAnchor];
        v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.99];
        [v41 setActive:1];

        ++v20;
        v21 = v22;
      }

      while (v20 < [(NSArray *)v12->_pageViews count]);
    }

    else
    {
      v22 = 0;
    }

    contentLayoutGuide3 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
    trailingAnchor2 = [contentLayoutGuide3 trailingAnchor];
    trailingAnchor3 = [v22 trailingAnchor];
    v45 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v45 setActive:1];

    if ([(NSArray *)v12->_pageViews count]> 1 && *(&v12->super.super.super.isa + v49) > 0.0)
    {
      [(UIKBTutorialMultipageView *)v12 scrollToNextPage];
    }

    v46 = v12;
  }

  return v12;
}

- (void)configMediaView
{
  pageControl = [(UIKBTutorialMultipageView *)self pageControl];
  [pageControl setTranslatesAutoresizingMaskIntoConstraints:0];

  pageControl2 = [(UIKBTutorialMultipageView *)self pageControl];
  centerXAnchor = [pageControl2 centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 setActive:1];

  pageControl3 = [(UIKBTutorialMultipageView *)self pageControl];
  bottomAnchor = [pageControl3 bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v11 setActive:1];

  pageScrollView = [(UIKBTutorialMultipageView *)self pageScrollView];
  [pageScrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  pageScrollView2 = [(UIKBTutorialMultipageView *)self pageScrollView];
  leadingAnchor = [pageScrollView2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  pageScrollView3 = [(UIKBTutorialMultipageView *)self pageScrollView];
  trailingAnchor = [pageScrollView3 trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v20 setActive:1];

  pageScrollView4 = [(UIKBTutorialMultipageView *)self pageScrollView];
  topAnchor = [pageScrollView4 topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v24 setActive:1];

  if ([(NSArray *)self->_pageViews count]> 1)
  {
    pageControl4 = [(UIKBTutorialMultipageView *)self pageControl];
    topAnchor3 = [pageControl4 topAnchor];
  }

  else
  {
    topAnchor3 = [(UIView *)self bottomAnchor];
  }

  pageScrollView5 = [(UIKBTutorialMultipageView *)self pageScrollView];
  bottomAnchor3 = [pageScrollView5 bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3];
  [v28 setActive:1];
}

- (void)scrollViewDidScroll:(id)scroll
{
  [scroll contentOffset];
  v5 = v4;
  pageScrollView = [(UIKBTutorialMultipageView *)self pageScrollView];
  [pageScrollView bounds];
  v7 = v5 / CGRectGetWidth(v10);

  pageControl = [(UIKBTutorialMultipageView *)self pageControl];
  [pageControl setCurrentPage:llround(v7)];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  nextPageScrollTimer = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
  [nextPageScrollTimer invalidate];

  [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
}

- (void)scrollToNextPage
{
  pageControl = [(UIKBTutorialMultipageView *)self pageControl];
  currentPage = [pageControl currentPage];

  nextPageScrollTimer = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];

  if (nextPageScrollTimer)
  {
    v6 = currentPage + 1;
    pageControl2 = [(UIKBTutorialMultipageView *)self pageControl];
    numberOfPages = [pageControl2 numberOfPages];

    if (v6 >= numberOfPages)
    {
      nextPageScrollTimer2 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
      [nextPageScrollTimer2 invalidate];

      [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
    }

    else
    {
      pageScrollView = [(UIKBTutorialMultipageView *)self pageScrollView];
      [pageScrollView setNeedsLayout];

      pageScrollView2 = [(UIKBTutorialMultipageView *)self pageScrollView];
      pageScrollView3 = [(UIKBTutorialMultipageView *)self pageScrollView];
      [pageScrollView3 contentSize];
      v13 = v12;
      pageControl3 = [(UIKBTutorialMultipageView *)self pageControl];
      [pageScrollView2 setContentOffset:1 animated:{v13 / objc_msgSend(pageControl3, "numberOfPages") * v6, 0.0}];

      pageControl4 = [(UIKBTutorialMultipageView *)self pageControl];
      [pageControl4 setCurrentPage:v6];
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E695DFF0]);
    v16 = [MEMORY[0x1E695DF00] now];
    [(UIKBTutorialMultipageView *)self pagingInterval];
    v17 = [v16 dateByAddingTimeInterval:?];
    [(UIKBTutorialMultipageView *)self pagingInterval];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __45__UIKBTutorialMultipageView_scrollToNextPage__block_invoke;
    v23[3] = &unk_1E7106478;
    v23[4] = self;
    v18 = [v15 initWithFireDate:v17 interval:1 repeats:v23 block:?];
    [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:v18];

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    nextPageScrollTimer3 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
    [mainRunLoop addTimer:nextPageScrollTimer3 forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)resetPageScrolling
{
  pageControl = [(UIKBTutorialMultipageView *)self pageControl];
  [pageControl setCurrentPage:0];

  nextPageScrollTimer = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
  [nextPageScrollTimer invalidate];

  [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
  pageScrollView = [(UIKBTutorialMultipageView *)self pageScrollView];
  [pageScrollView setContentOffset:{0.0, 0.0}];

  [(UIKBTutorialMultipageView *)self scrollToNextPage];
}

@end