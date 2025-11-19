@interface SBFPagedScrollView
- ($33B86EF7FE50CF4F9754CC1CC7D02E21)currentScrollInterval;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)resetContentOffsetToCurrentPage;
- (BOOL)scrollToPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (BOOL)scrollToPageAtIndex:(unint64_t)a3 withAnimationSettings:(id)a4 withCompletion:(id)a5;
- (CGPoint)contentOffsetForPageAtIndex:(unint64_t)a3;
- (SBFPagedScrollView)initWithFrame:(CGRect)a3;
- (_NSRange)visiblePageRange;
- (double)pageRelativeScrollOffset;
- (double)unclippedPageRelativeScrollOffset;
- (void)_bs_didEndScrolling;
- (void)_bs_didScrollWithContext:(id *)a3;
- (void)_bs_willBeginScrolling;
- (void)_layoutScrollView;
- (void)_updateCurrentPageForScrollOffset;
- (void)_updateVisiblePages;
- (void)layoutPages;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setGestureEnabled:(BOOL)a3;
- (void)setPageViews:(id)a3;
- (void)setVisiblePageRange:(_NSRange)a3;
@end

@implementation SBFPagedScrollView

- (void)_updateVisiblePages
{
  [(SBFPagedScrollView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (!CGRectEqualToRect(v20, *MEMORY[0x1E695F058]) && !self->_changingScrollViewLayout)
  {
    [(SBFPagedScrollView *)self _layoutScrollView];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = [(SBFPagedScrollView *)self pageViews];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__SBFPagedScrollView__updateVisiblePages__block_invoke;
    v11[3] = &unk_1E807EFE0;
    *&v11[6] = x;
    *&v11[7] = y;
    *&v11[8] = width;
    *&v11[9] = height;
    v11[4] = &v16;
    v11[5] = &v12;
    [v7 enumerateObjectsUsingBlock:v11];

    v8 = v17;
    v9 = v17[3];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      v10 = 0;
      v13[3] = 0;
      v8[3] = 0;
    }

    else
    {
      v10 = v13[3] - v9 + 1;
    }

    [(SBFPagedScrollView *)self setVisiblePageRange:v9, v10];
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }
}

- (void)_layoutScrollView
{
  v3 = [(SBFPagedScrollView *)self pageViews];
  v4 = [v3 count];

  [(SBFPagedScrollView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14) * v4;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetHeight(v15);
  self->_changingScrollViewLayout = 1;
  [(SBFPagedScrollView *)self contentSize];
  if (v9 != v12 || v10 != v11)
  {
    [(SBFPagedScrollView *)self layoutPages];
    [(SBFPagedScrollView *)self setContentSize:v9, v10];
    [(SBFPagedScrollView *)self resetContentOffsetToCurrentPage];
  }

  self->_changingScrollViewLayout = 0;
}

- (void)_bs_willBeginScrolling
{
  v3.receiver = self;
  v3.super_class = SBFPagedScrollView;
  [(BSUIScrollView *)&v3 _bs_willBeginScrolling];
  [(SBFPagedScrollView *)self _updateVisiblePages];
  [(SBFPagedScrollView *)self _updateCurrentPageForScrollOffset];
}

BOOL __41__SBFPagedScrollView__updateVisiblePages__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  [a2 frame];
  v14.origin.x = v5;
  v14.origin.y = v6;
  v14.size.width = v7;
  v14.size.height = v8;
  result = CGRectIntersectsRect(*(a1 + 48), v14);
  if (result)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 24);
    if (a3 < v11)
    {
      v11 = a3;
    }

    *(v10 + 24) = v11;
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 24);
    if (a3 > v13)
    {
      v13 = a3;
    }

    *(v12 + 24) = v13;
  }

  return result;
}

- (double)unclippedPageRelativeScrollOffset
{
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    [(SBFPagedScrollView *)self contentSize];
    v4 = v3;
    [(SBFPagedScrollView *)self frame];
    v6 = v4 - v5;
    [(SBFPagedScrollView *)self contentOffset];
    v8 = v6 - v7;
  }

  else
  {
    [(SBFPagedScrollView *)self contentOffset];
    v8 = v9;
  }

  [(SBFPagedScrollView *)self bounds];
  Width = CGRectGetWidth(v13);
  IsZero = BSFloatIsZero();
  result = v8 / Width;
  if (IsZero)
  {
    return 0.0;
  }

  return result;
}

- (double)pageRelativeScrollOffset
{
  v3 = [(SBFPagedScrollView *)self pageViews];
  v4 = ([v3 count] - 1);
  [(SBFPagedScrollView *)self unclippedPageRelativeScrollOffset];
  v6 = fmax(v5, 0.0);

  if (v6 >= v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (void)_updateCurrentPageForScrollOffset
{
  if (!self->_changingScrollViewLayout)
  {
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      [(SBFPagedScrollView *)self contentSize];
      v5 = v4;
      [(SBFPagedScrollView *)self frame];
      v7 = v5 - v6;
      [(SBFPagedScrollView *)self contentOffset];
      v9 = v7 - v8;
    }

    else
    {
      [(SBFPagedScrollView *)self contentOffset];
      v9 = v10;
    }

    [(SBFPagedScrollView *)self bounds];
    v11 = (v9 / CGRectGetWidth(v12));

    [(SBFPagedScrollView *)self setCurrentPageIndex:v11];
  }
}

- ($33B86EF7FE50CF4F9754CC1CC7D02E21)currentScrollInterval
{
  [(BSUIScrollView *)self currentScrollContext];
  v5 = *(MEMORY[0x1E698E5E0] + 16);
  retstr->var0 = *MEMORY[0x1E698E5E0];
  retstr->var1 = v5;
  v6 = [(SBFPagedScrollView *)self pageViews];
  [v6 count];

  result = [(SBFPagedScrollView *)self currentPageIndex];
  *(&retstr->var0.var1 + 1) = 0;
  *(&retstr->var0.var1 + 1) = 0;
  *(&retstr->var1.var1 + 1) = 0;
  *(&retstr->var1.var1 + 1) = 0;
  retstr->var0.var0 = result;
  retstr->var0.var1 = 1;
  retstr->var1.var0 = result;
  retstr->var1.var1 = 1;
  return result;
}

- (_NSRange)visiblePageRange
{
  p_visiblePageRange = &self->_visiblePageRange;
  location = self->_visiblePageRange.location;
  length = p_visiblePageRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFPagedScrollView;
  [(SBFPagedScrollView *)&v3 layoutSubviews];
  [(SBFPagedScrollView *)self _layoutScrollView];
}

- (SBFPagedScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBFPagedScrollView;
  v3 = [(BSUIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentPageIndex = 0;
    v3->_visiblePageRange.location = 0;
    v3->_visiblePageRange.length = 0;
    v3->_gestureEnabled = 1;
    v3->_changingScrollViewLayout = 0;
    [(SBFPagedScrollView *)v3 setPagingEnabled:1];
    [(SBFPagedScrollView *)v4 setAlwaysBounceHorizontal:1];
    [(SBFPagedScrollView *)v4 setShowsHorizontalScrollIndicator:0];
  }

  return v4;
}

- (void)setPageViews:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSArray *)self->_pageViews isEqualToArray:v4])
  {
    goto LABEL_27;
  }

  pageViews = self->_pageViews;
  v6 = MEMORY[0x1E696AE18];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__SBFPagedScrollView_setPageViews___block_invoke;
  v38[3] = &unk_1E807EF68;
  v7 = v4;
  v39 = v7;
  v8 = [v6 predicateWithBlock:v38];
  v9 = [(NSArray *)pageViews filteredArrayUsingPredicate:v8];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __35__SBFPagedScrollView_setPageViews___block_invoke_2;
  v37[3] = &unk_1E807EF68;
  v37[4] = self;
  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v37];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if (([v7 containsObject:v17] & 1) == 0)
        {
          [v17 removeFromSuperview];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v14);
  }

  v18 = [(SBFPagedScrollView *)self currentPageIndex];
  if (v18 >= [(NSArray *)self->_pageViews count])
  {
    v19 = 0;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = [(NSArray *)self->_pageViews objectAtIndex:[(SBFPagedScrollView *)self currentPageIndex]];
    if (!v7)
    {
LABEL_16:
      v21 = [v7 count];
      if (v21 - 1 >= self->_currentPageIndex)
      {
        currentPageIndex = self->_currentPageIndex;
      }

      else
      {
        currentPageIndex = v21 - 1;
      }

      goto LABEL_19;
    }
  }

  currentPageIndex = [v7 indexOfObjectIdenticalTo:v19];
  if (currentPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

LABEL_19:
  v22 = [v7 copy];
  v23 = self->_pageViews;
  self->_pageViews = v22;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v11;
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(SBFPagedScrollView *)self insertSubview:*(*(&v29 + 1) + 8 * j) atIndex:0, v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v26);
  }

  [(SBFPagedScrollView *)self setCurrentPageIndex:currentPageIndex];
  [(SBFPagedScrollView *)self _layoutScrollView];
  [(SBFPagedScrollView *)self _updateVisiblePages];

LABEL_27:
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBFPagedScrollView *)self frame];
  if (width != v9 || height != v8)
  {
    self->_changingScrollViewLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SBFPagedScrollView;
  [(SBFPagedScrollView *)&v11 setFrame:x, y, width, height];
  self->_changingScrollViewLayout = 0;
}

- (void)setVisiblePageRange:(_NSRange)a3
{
  if (self->_visiblePageRange.location != a3.location || self->_visiblePageRange.length != a3.length)
  {
    self->_visiblePageRange = a3;
    if (a3.length)
    {
      [(SBFPagedScrollView *)self setCurrentPageIndex:?];
    }
  }
}

- (void)setGestureEnabled:(BOOL)a3
{
  if (self->_gestureEnabled != a3)
  {
    v4 = a3;
    self->_gestureEnabled = a3;
    v5 = [(SBFPagedScrollView *)self panGestureRecognizer];
    [v5 setEnabled:v4];
  }
}

- (void)layoutPages
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = &unk_1BEAEA12E;
  v14 = 0u;
  v15 = 0u;
  [(SBFPagedScrollView *)self bounds];
  *&v14 = v3;
  *(&v14 + 1) = v4;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  *(v11 + 2) = *MEMORY[0x1E695EFF8];
  v7 = [(SBFPagedScrollView *)self pageViews];
  v8 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__SBFPagedScrollView_layoutPages__block_invoke;
  v9[3] = &unk_1E807EF90;
  v9[4] = &v10;
  [v7 enumerateObjectsWithOptions:2 * v8 usingBlock:v9];

  _Block_object_dispose(&v10, 8);
}

double __33__SBFPagedScrollView_layoutPages__block_invoke(uint64_t a1, void *a2)
{
  [a2 setFrame:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), *(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
  v3 = *(*(a1 + 32) + 8);
  result = *(v3 + 48) + *(v3 + 32);
  *(v3 + 32) = result;
  return result;
}

- (BOOL)scrollToPageAtIndex:(unint64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SBFPagedScrollView *)self pageViews];
  v10 = [v9 count];

  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  [(SBFPagedScrollView *)self contentOffsetForPageAtIndex:v11];
  v13 = v12;
  v15 = v14;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__SBFPagedScrollView_scrollToPageAtIndex_animated_withCompletion___block_invoke;
  v19[3] = &unk_1E807EFB8;
  objc_copyWeak(&v21, &location);
  v16 = v8;
  v20 = v16;
  v17 = [(BSUIScrollView *)self setContentOffset:v5 animated:v19 completion:v13, v15];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v17;
}

uint64_t __66__SBFPagedScrollView_scrollToPageAtIndex_animated_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCurrentPageForScrollOffset];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)scrollToPageAtIndex:(unint64_t)a3 withAnimationSettings:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SBFPagedScrollView *)self pageViews];
  v11 = [v10 count];

  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = v11;
  }

  [(SBFPagedScrollView *)self contentOffsetForPageAtIndex:v12];
  v14 = v13;
  v16 = v15;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__SBFPagedScrollView_scrollToPageAtIndex_withAnimationSettings_withCompletion___block_invoke;
  v20[3] = &unk_1E807EFB8;
  objc_copyWeak(&v22, &location);
  v17 = v9;
  v21 = v17;
  v18 = [(BSUIScrollView *)self setContentOffset:v8 withAnimationSettings:v20 completion:v14, v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v18;
}

uint64_t __79__SBFPagedScrollView_scrollToPageAtIndex_withAnimationSettings_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCurrentPageForScrollOffset];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)resetContentOffsetToCurrentPage
{
  v3 = [(SBFPagedScrollView *)self currentPageIndex];

  return [(SBFPagedScrollView *)self scrollToPageAtIndex:v3 animated:0 withCompletion:0];
}

- (CGPoint)contentOffsetForPageAtIndex:(unint64_t)a3
{
  v4 = self;
  [(SBFPagedScrollView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  if (v13 == 1)
  {
    v4 = [v4 pageViews];
    a3 = [v4 count] + ~a3;
  }

  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  Width = CGRectGetWidth(v18);
  if (v13 == 1)
  {
  }

  v15 = Width * a3;
  v16 = 0.0;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)_bs_didScrollWithContext:(id *)a3
{
  v7.receiver = self;
  v7.super_class = SBFPagedScrollView;
  v4 = *&a3->var1.y;
  v5[0] = *&a3->var0;
  v5[1] = v4;
  y = a3->var2.y;
  [(BSUIScrollView *)&v7 _bs_didScrollWithContext:v5];
  [(SBFPagedScrollView *)self _updateVisiblePages];
}

- (void)_bs_didEndScrolling
{
  v3.receiver = self;
  v3.super_class = SBFPagedScrollView;
  [(BSUIScrollView *)&v3 _bs_didEndScrolling];
  [(SBFPagedScrollView *)self _updateVisiblePages];
  [(SBFPagedScrollView *)self _updateCurrentPageForScrollOffset];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (!self->_gestureEnabled)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBFPagedScrollView;
  return [(SBFPagedScrollView *)&v7 gestureRecognizer:a3 shouldReceiveTouch:a4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[BSUIScrollView isScrolling](self, "isScrolling") && (-[SBFPagedScrollView panGestureRecognizer](self, "panGestureRecognizer"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v6) && [v7 isMemberOfClass:objc_opt_class()])
  {
    v9 = objc_opt_class();
    v10 = v7;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v14 = v11;

    if ([v14 _canPanHorizontally])
    {
      v12 = [v14 _canPanVertically] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end