@interface UIKBTutorialMultipageView
- (UIKBTutorialMultipageView)initWithPageViews:(id)a3 pagingInterval:(double)a4;
- (void)configMediaView;
- (void)resetPageScrolling;
- (void)scrollToNextPage;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation UIKBTutorialMultipageView

- (UIKBTutorialMultipageView)initWithPageViews:(id)a3 pagingInterval:(double)a4
{
  v7 = a3;
  v8 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v9 = dbl_18A67B8C0[v8];
  v10 = dbl_18A67B8D0[v8];
  v50.receiver = self;
  v50.super_class = UIKBTutorialMultipageView;
  v11 = [(UIView *)&v50 initWithFrame:0.0, 0.0, v9, v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pageViews, a3);
    v48 = 440;
    v12->_pagingInterval = a4;
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
        v23 = [v22 leadingAnchor];
        if (v21)
        {
          v24 = [v21 trailingAnchor];
          v25 = [v23 constraintEqualToAnchor:v24];
          [v25 setActive:1];
        }

        else
        {
          v24 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
          v25 = [v24 leadingAnchor];
          v26 = [v23 constraintEqualToAnchor:v25];
          [v26 setActive:1];
        }

        v27 = [v22 topAnchor];
        v28 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
        v29 = [v28 topAnchor];
        v30 = [v27 constraintEqualToAnchor:v29];
        [v30 setActive:1];

        v31 = [v22 bottomAnchor];
        v32 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
        v33 = [v32 bottomAnchor];
        v34 = [v31 constraintEqualToAnchor:v33];
        [v34 setActive:1];

        v35 = [v22 widthAnchor];
        v36 = [(UIScrollView *)v12->_pageScrollView frameLayoutGuide];
        v37 = [v36 widthAnchor];
        v38 = [v35 constraintEqualToAnchor:v37];
        [v38 setActive:1];

        v39 = [v22 heightAnchor];
        v40 = [(UIView *)v12->_pageScrollView heightAnchor];
        v41 = [v39 constraintEqualToAnchor:v40 multiplier:0.99];
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

    v42 = [(UIScrollView *)v12->_pageScrollView contentLayoutGuide];
    v43 = [v42 trailingAnchor];
    v44 = [v22 trailingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
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
  v3 = [(UIKBTutorialMultipageView *)self pageControl];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(UIKBTutorialMultipageView *)self pageControl];
  v5 = [v4 centerXAnchor];
  v6 = [(UIView *)self centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [(UIKBTutorialMultipageView *)self pageControl];
  v9 = [v8 bottomAnchor];
  v10 = [(UIView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(UIKBTutorialMultipageView *)self pageScrollView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(UIKBTutorialMultipageView *)self pageScrollView];
  v14 = [v13 leadingAnchor];
  v15 = [(UIView *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(UIKBTutorialMultipageView *)self pageScrollView];
  v18 = [v17 trailingAnchor];
  v19 = [(UIView *)self trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(UIKBTutorialMultipageView *)self pageScrollView];
  v22 = [v21 topAnchor];
  v23 = [(UIView *)self topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  if ([(NSArray *)self->_pageViews count]> 1)
  {
    v25 = [(UIKBTutorialMultipageView *)self pageControl];
    v29 = [v25 topAnchor];
  }

  else
  {
    v29 = [(UIView *)self bottomAnchor];
  }

  v26 = [(UIKBTutorialMultipageView *)self pageScrollView];
  v27 = [v26 bottomAnchor];
  v28 = [v27 constraintEqualToAnchor:v29];
  [v28 setActive:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  [a3 contentOffset];
  v5 = v4;
  v6 = [(UIKBTutorialMultipageView *)self pageScrollView];
  [v6 bounds];
  v7 = v5 / CGRectGetWidth(v10);

  v8 = [(UIKBTutorialMultipageView *)self pageControl];
  [v8 setCurrentPage:llround(v7)];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
  [v4 invalidate];

  [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
}

- (void)scrollToNextPage
{
  v3 = [(UIKBTutorialMultipageView *)self pageControl];
  v4 = [v3 currentPage];

  v5 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];

  if (v5)
  {
    v6 = v4 + 1;
    v7 = [(UIKBTutorialMultipageView *)self pageControl];
    v8 = [v7 numberOfPages];

    if (v6 >= v8)
    {
      v21 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
      [v21 invalidate];

      [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
    }

    else
    {
      v9 = [(UIKBTutorialMultipageView *)self pageScrollView];
      [v9 setNeedsLayout];

      v10 = [(UIKBTutorialMultipageView *)self pageScrollView];
      v11 = [(UIKBTutorialMultipageView *)self pageScrollView];
      [v11 contentSize];
      v13 = v12;
      v14 = [(UIKBTutorialMultipageView *)self pageControl];
      [v10 setContentOffset:1 animated:{v13 / objc_msgSend(v14, "numberOfPages") * v6, 0.0}];

      v22 = [(UIKBTutorialMultipageView *)self pageControl];
      [v22 setCurrentPage:v6];
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

    v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v20 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
    [v19 addTimer:v20 forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)resetPageScrolling
{
  v3 = [(UIKBTutorialMultipageView *)self pageControl];
  [v3 setCurrentPage:0];

  v4 = [(UIKBTutorialMultipageView *)self nextPageScrollTimer];
  [v4 invalidate];

  [(UIKBTutorialMultipageView *)self setNextPageScrollTimer:0];
  v5 = [(UIKBTutorialMultipageView *)self pageScrollView];
  [v5 setContentOffset:{0.0, 0.0}];

  [(UIKBTutorialMultipageView *)self scrollToNextPage];
}

@end