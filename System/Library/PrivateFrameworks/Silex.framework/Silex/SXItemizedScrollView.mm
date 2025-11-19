@interface SXItemizedScrollView
- (CGRect)frameForViewAtIndex:(unint64_t)a3;
- (CGSize)framesAreValidForSize;
- (SXItemizedScrollView)initWithCoder:(id)a3;
- (SXItemizedScrollView)initWithFrame:(CGRect)a3;
- (SXItemizedScrollViewDataSource)dataSource;
- (UIView)activeView;
- (_NSRange)visibleRange;
- (void)commonInit;
- (void)determineNewVisibilityRange;
- (void)forceCorrectFrames;
- (void)layoutSubviews;
- (void)rebuildFramesArray;
- (void)reindexate;
- (void)scrollToNext;
- (void)scrollToPrevious;
- (void)setActiveViewIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)viewManagementForRange:(_NSRange)a3;
@end

@implementation SXItemizedScrollView

- (void)commonInit
{
  v9.receiver = self;
  v9.super_class = SXItemizedScrollView;
  [(SXItemizedScrollView *)&v9 setDelegate:self];
  v3 = [MEMORY[0x1E695DEC8] array];
  frames = self->_frames;
  self->_frames = v3;

  v5 = [MEMORY[0x1E696AC90] indexSet];
  visibleIndices = self->_visibleIndices;
  self->_visibleIndices = v5;

  v7 = [MEMORY[0x1E695DF90] dictionary];
  visibleViewsByIndex = self->_visibleViewsByIndex;
  self->_visibleViewsByIndex = v7;

  self->_activeViewIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(SXItemizedScrollView *)self setScrollsToTop:0];
  [(SXItemizedScrollView *)self setPagingEnabled:1];
  [(SXItemizedScrollView *)self setShowsHorizontalScrollIndicator:0];
  [(SXItemizedScrollView *)self setShowsVerticalScrollIndicator:0];
  [(SXItemizedScrollView *)self setDelaysContentTouches:0];
  [(SXItemizedScrollView *)self setCanCancelContentTouches:1];
}

- (SXItemizedScrollView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXItemizedScrollView;
  v3 = [(SXItemizedScrollView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SXItemizedScrollView *)v3 commonInit];
  }

  return v4;
}

- (SXItemizedScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SXItemizedScrollView;
  v3 = [(SXItemizedScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SXItemizedScrollView *)v3 commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SXItemizedScrollView;
  [(SXItemizedScrollView *)&v9 layoutSubviews];
  if (([(SXItemizedScrollView *)self isDragging]& 1) != 0 || [(SXItemizedScrollView *)self isTracking])
  {
    self->_gotActiveViewIndexChange = 1;
  }

  v3 = [(SXItemizedScrollView *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[SXItemizedScrollView dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 itemizedScrollViewWillReindex:self], v5, v6))
  {
    [(SXItemizedScrollView *)self determineNewVisibilityRange];
    v7 = [(SXItemizedScrollView *)self visibleRange];
    [(SXItemizedScrollView *)self viewManagementForRange:v7, v8];
  }
}

- (void)setFrame:(CGRect)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = SXItemizedScrollView;
  [(SXItemizedScrollView *)&v46 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SXItemizedScrollView *)self framesAreValidForSize];
  v5 = v4;
  v7 = v6;
  [(SXItemizedScrollView *)self bounds];
  if (v5 != v9 || v7 != v8)
  {
    v11 = [(SXItemizedScrollView *)self superview];

    if (v11)
    {
      v12 = [(SXItemizedScrollView *)self dataSource];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0 || (-[SXItemizedScrollView dataSource](self, "dataSource"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 itemizedScrollViewWillReindex:self], v14, v15))
      {
        [(SXItemizedScrollView *)self bounds];
        self->_framesAreValidForSize.width = v16;
        self->_framesAreValidForSize.height = v17;
        [(SXItemizedScrollView *)self rebuildFramesArray];
        v18 = [(SXItemizedScrollView *)self activeViewIndex];
        self->_activeViewIndex = 0x7FFFFFFFFFFFFFFFLL;
        if ([(SXItemizedScrollView *)self gotActiveViewIndexChange])
        {
          [(SXItemizedScrollView *)self setActiveViewIndex:v18 animated:0];
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [(SXItemizedScrollView *)self visibleViewsByIndex];
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v43;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              v25 = [v24 integerValue];
              v26 = [(SXItemizedScrollView *)self dataSource];
              v27 = objc_opt_respondsToSelector();

              if (v27)
              {
                v28 = [(SXItemizedScrollView *)self dataSource];
                v29 = [v28 itemizedScrollView:self isAllowedToAddViewInHierarchy:v25];

                if (!v29)
                {
                  continue;
                }
              }

              v30 = [(SXItemizedScrollView *)self visibleViewsByIndex];
              v31 = [v30 objectForKeyedSubscript:v24];

              v32 = [(SXItemizedScrollView *)self frames];
              v33 = [v32 objectAtIndexedSubscript:v25];
              [v33 CGRectValue];
              v35 = v34;
              v37 = v36;
              v39 = v38;
              v41 = v40;

              [v31 setFrame:{v35, v37, v39, v41}];
            }

            v21 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v21);
        }
      }
    }
  }
}

- (void)forceCorrectFrames
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(SXItemizedScrollView *)self visibleViewsByIndex];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 unsignedIntegerValue];
        v10 = [(SXItemizedScrollView *)self visibleViewsByIndex];
        v11 = [v10 objectForKeyedSubscript:v8];

        v12 = [(SXItemizedScrollView *)self frames];
        v13 = [v12 objectAtIndexedSubscript:v9];
        [v13 CGRectValue];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        [v11 frame];
        v29.origin.x = v15;
        v29.origin.y = v17;
        v29.size.width = v19;
        v29.size.height = v21;
        if (!CGRectEqualToRect(v28, v29))
        {
          [v11 setFrame:{v15, v17, v19, v21}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)reindexate
{
  [(SXItemizedScrollView *)self setFramesAreValidForSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(SXItemizedScrollView *)self frame];

  [(SXItemizedScrollView *)self setFrame:?];
}

- (void)setActiveViewIndex:(unint64_t)a3 animated:(BOOL)a4
{
  activeViewIndex = self->_activeViewIndex;
  self->_activeViewIndex = a3;
  self->_gotActiveViewIndexChange = 1;
  if (activeViewIndex != a3)
  {
    v7 = [(SXItemizedScrollView *)self activeViewIndex];
    v8 = [(SXItemizedScrollView *)self frames];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      [(SXItemizedScrollView *)self rebuildFramesArray];
    }

    v10 = [(SXItemizedScrollView *)self activeViewIndex];
    v11 = [(SXItemizedScrollView *)self frames];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [(SXItemizedScrollView *)self frames];
      v14 = [v13 objectAtIndexedSubscript:a3];
      [v14 CGRectValue];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = [(SXItemizedScrollView *)self activeView];
      [v23 frame];
      v47.origin.x = v16;
      v47.origin.y = v18;
      v47.size.width = v20;
      v47.size.height = v22;
      LOBYTE(v13) = CGRectEqualToRect(v43, v47);

      if ((v13 & 1) == 0)
      {
        v24 = [(SXItemizedScrollView *)self dataSource];
        v25 = objc_opt_respondsToSelector();

        if ((v25 & 1) == 0 || (-[SXItemizedScrollView dataSource](self, "dataSource"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 itemizedScrollView:self isAllowedToAddViewInHierarchy:{-[SXItemizedScrollView activeViewIndex](self, "activeViewIndex")}], v26, v27))
        {
          v28 = [(SXItemizedScrollView *)self activeView];
          [v28 setFrame:{v16, v18, v20, v22}];
        }
      }

      [(SXItemizedScrollView *)self frame];
      v30 = v16 + v29;
      [(SXItemizedScrollView *)self frame];
      v44.origin.y = v18 + v31;
      v44.origin.x = v30;
      v44.size.width = v20;
      v44.size.height = v22;
      MinX = CGRectGetMinX(v44);
      [(SXItemizedScrollView *)self contentInset];
      v34 = v33;
      v35 = 0.0;
      if (![(SXItemizedScrollView *)self contentTooSmall])
      {
        v35 = MinX - v34;
        [(SXItemizedScrollView *)self bounds];
        v36 = MinX - v34 + CGRectGetWidth(v45);
        [(SXItemizedScrollView *)self contentSize];
        if (v36 > v37)
        {
          [(SXItemizedScrollView *)self contentSize];
          v39 = v38;
          [(SXItemizedScrollView *)self bounds];
          v40 = v39 - CGRectGetWidth(v46);
          [(SXItemizedScrollView *)self frame];
          v35 = v40 - v41;
        }
      }

      [(SXItemizedScrollView *)self setContentOffset:0 animated:v35, 0.0];
    }
  }
}

- (UIView)activeView
{
  v3 = [(SXItemizedScrollView *)self visibleViewsByIndex];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SXItemizedScrollView activeViewIndex](self, "activeViewIndex")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [(SXItemizedScrollView *)self activeViewIndex];
    v7 = [(SXItemizedScrollView *)self frames];
    v8 = [v7 count];

    if (v6 >= v8)
    {
      v5 = 0;
    }

    else
    {
      [(SXItemizedScrollView *)self determineNewVisibilityRange];
      v9 = [(SXItemizedScrollView *)self visibleRange];
      [(SXItemizedScrollView *)self viewManagementForRange:v9, v10];
      v11 = [(SXItemizedScrollView *)self visibleViewsByIndex];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SXItemizedScrollView activeViewIndex](self, "activeViewIndex")}];
      v5 = [v11 objectForKeyedSubscript:v12];
    }
  }

  return v5;
}

- (CGRect)frameForViewAtIndex:(unint64_t)a3
{
  v5 = [(SXItemizedScrollView *)self frames];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v7 = [(SXItemizedScrollView *)self frames];
    v8 = [v7 objectAtIndexedSubscript:a3];
    [v8 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)determineNewVisibilityRange
{
  v3 = [(SXItemizedScrollView *)self frames];
  v4 = [v3 count];

  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = [(SXItemizedScrollView *)self frames];
      v9 = [v8 objectAtIndexedSubscript:v6];
      [v9 CGRectValue];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(SXItemizedScrollView *)self bounds];
      v38.origin.x = v11;
      v38.origin.y = v13;
      v38.size.width = v15;
      v38.size.height = v17;
      v36 = CGRectIntersection(v35, v38);
      Width = CGRectGetWidth(v36);
      v37.origin.x = v11;
      v37.origin.y = v13;
      v37.size.width = v15;
      v37.size.height = v17;
      v19 = Width / CGRectGetWidth(v37);
      if (v7 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v7;
      }

      if (v5 <= v6)
      {
        v21 = v6;
      }

      else
      {
        v21 = v5;
      }

      if (v19 > 0.0)
      {
        v5 = v21;
        v7 = v20;
      }

      ++v6;
      v22 = [(SXItemizedScrollView *)self frames];
      v23 = [v22 count];
    }

    while (v6 < v23);
  }

  else
  {
    v7 = -1;
  }

  if (([(SXItemizedScrollView *)self isPagingEnabled]& 1) == 0 || [(SXItemizedScrollView *)self isDecelerating]&& ([(SXItemizedScrollView *)self _pageDecelerationTarget], v25 = v24, v27 = v26, [(SXItemizedScrollView *)self contentOffset], v25 == v29) && v27 == v28)
  {
    v30 = 0;
  }

  else if (([(SXItemizedScrollView *)self isDecelerating]& 1) != 0 || ([(SXItemizedScrollView *)self isTracking]& 1) != 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = [(SXItemizedScrollView *)self _isAnimatingScrollTest];
  }

  if (v7 != [(SXItemizedScrollView *)self activeViewIndex]&& !(v30 & 1 | ![(SXItemizedScrollView *)self gotActiveViewIndexChange]))
  {
    self->_activeViewIndex = v7;
    v31 = [(SXItemizedScrollView *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = [(SXItemizedScrollView *)self delegate];
      [v33 itemizedScrollView:self didChangeToActiveViewIndex:{-[SXItemizedScrollView activeViewIndex](self, "activeViewIndex")}];
    }
  }

  p_visibleRange = &self->_visibleRange;
  if (v7 != -1 || v5)
  {
    p_visibleRange->location = v7;
    self->_visibleRange.length = v5 - v7 + 1;
  }

  else
  {
    p_visibleRange->location = 0;
    self->_visibleRange.length = 0;
  }
}

- (void)rebuildFramesArray
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = [(SXItemizedScrollView *)self dataSource];
  v4 = [v3 numberOfViewsInItemizedScrollView:self];

  v5 = 0.0;
  if (([(SXItemizedScrollView *)self isPagingEnabled]& 1) == 0)
  {
    v6 = [(SXItemizedScrollView *)self dataSource];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SXItemizedScrollView *)self dataSource];
      [v8 gutterBetweenItemsInNotPagingItemizedScrollView:self];
      v5 = v9;
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      v13 = [(SXItemizedScrollView *)self dataSource];
      [v13 itemizedScrollView:self frameForViewAtIndex:v11];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = v12 + v15;
      v23 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v17, v19, v21}];
      [v10 addObject:v23];
      if ([(SXItemizedScrollView *)self isPagingEnabled])
      {
        [(SXItemizedScrollView *)self bounds];
        v12 = v12 + CGRectGetWidth(v80);
      }

      else
      {
        v81.origin.x = v22;
        v81.origin.y = v17;
        v81.size.width = v19;
        v81.size.height = v21;
        v24 = v12 + CGRectGetWidth(v81);
        if (v4 == 1)
        {
          v12 = v24;
        }

        else
        {
          v12 = v5 + v24;
        }
      }

      ++v11;
      --v4;
    }

    while (v4);
  }

  v25 = [v10 copy];
  [(SXItemizedScrollView *)self setFrames:v25];

  v26 = [(SXItemizedScrollView *)self frames];
  v27 = [v26 lastObject];
  [v27 CGRectValue];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v82.origin.x = v29;
  v82.origin.y = v31;
  v82.size.width = v33;
  v82.size.height = v35;
  MaxX = CGRectGetMaxX(v82);
  [(SXItemizedScrollView *)self frame];
  v38 = MaxX - v37;
  [(SXItemizedScrollView *)self bounds];
  Height = CGRectGetHeight(v83);
  [(SXItemizedScrollView *)self bounds];
  if (v38 <= v40 + -20.0)
  {
    [(SXItemizedScrollView *)self bounds];
    v42 = v41;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v44 = [(SXItemizedScrollView *)self frames];
    v45 = [v44 countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = v42 * 0.5 - v38 * 0.5;
      v48 = *v75;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v75 != v48)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v74 + 1) + 8 * i) CGRectValue];
          v51 = [MEMORY[0x1E696B098] valueWithCGRect:v47 + v50];
          [v43 addObject:v51];
        }

        v46 = [v44 countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v46);
    }

    [(SXItemizedScrollView *)self setContentTooSmall:1];
    v52 = [v43 copy];
    [(SXItemizedScrollView *)self setFrames:v52];

    [(SXItemizedScrollView *)self bounds];
    v38 = v53;
  }

  else
  {
    [(SXItemizedScrollView *)self setContentTooSmall:0];
  }

  [(SXItemizedScrollView *)self setContentSize:v38, Height];
  v54 = [(SXItemizedScrollView *)self activeViewIndex];
  v55 = [(SXItemizedScrollView *)self frames];
  v56 = [v55 count];

  if (v54 < v56)
  {
    v57 = [(SXItemizedScrollView *)self frames];
    v58 = [v57 objectAtIndexedSubscript:{-[SXItemizedScrollView activeViewIndex](self, "activeViewIndex")}];
    [v58 CGRectValue];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    [(SXItemizedScrollView *)self frame];
    v68 = v67;
    [(SXItemizedScrollView *)self contentInset];
    v70 = v60 + v68 - v69;
    [(SXItemizedScrollView *)self frame];
    v84.origin.y = v62 + v71;
    v84.origin.x = v70;
    v84.size.width = v64;
    v84.size.height = v66;
    [(SXItemizedScrollView *)self setContentOffset:0 animated:CGRectGetMinX(v84), 0.0];
  }

  [(SXItemizedScrollView *)self determineNewVisibilityRange];
  v72 = [(SXItemizedScrollView *)self visibleRange];
  [(SXItemizedScrollView *)self viewManagementForRange:v72, v73];
}

- (void)viewManagementForRange:(_NSRange)a3
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a3.location, a3.length}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SXItemizedScrollView_viewManagementForRange___block_invoke;
  v13[3] = &unk_1E8501290;
  v13[4] = self;
  v5 = [v4 indexesWithOptions:0 passingTest:v13];
  v6 = [(SXItemizedScrollView *)self visibleIndices];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SXItemizedScrollView_viewManagementForRange___block_invoke_2;
  v11[3] = &unk_1E8501290;
  v12 = v4;
  v7 = v4;
  v8 = [v6 indexesWithOptions:0 passingTest:v11];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SXItemizedScrollView_viewManagementForRange___block_invoke_3;
  v10[3] = &unk_1E8500E10;
  v10[4] = self;
  [v8 enumerateIndexesUsingBlock:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__SXItemizedScrollView_viewManagementForRange___block_invoke_4;
  v9[3] = &unk_1E8500E10;
  v9[4] = self;
  [v5 enumerateIndexesUsingBlock:v9];
  [(SXItemizedScrollView *)self setVisibleIndices:v7];
}

uint64_t __47__SXItemizedScrollView_viewManagementForRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) visibleIndices];
  LODWORD(a2) = [v3 containsIndex:a2];

  return a2 ^ 1;
}

void __47__SXItemizedScrollView_viewManagementForRange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v4 = [*(a1 + 32) visibleViewsByIndex];
  v5 = [v4 objectForKeyedSubscript:v10];

  [v5 removeFromSuperview];
  v6 = [*(a1 + 32) visibleViewsByIndex];
  [v6 removeObjectForKey:v10];

  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    [v9 itemizedScrollView:*(a1 + 32) didHideViewWithIndex:a2];
  }
}

void __47__SXItemizedScrollView_viewManagementForRange___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 itemizedScrollView:*(a1 + 32) willShowViewWithIndex:a2];
  }

  v7 = [*(a1 + 32) dataSource];
  v26 = [v7 itemizedScrollView:*(a1 + 32) viewAtIndex:a2];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [*(a1 + 32) visibleViewsByIndex];
  [v9 setObject:v26 forKeyedSubscript:v8];

  v10 = [*(a1 + 32) frames];
  v11 = [v10 objectAtIndexedSubscript:a2];
  [v11 CGRectValue];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) dataSource];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0 || ([*(a1 + 32) dataSource], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "itemizedScrollView:isAllowedToAddViewInHierarchy:", *(a1 + 32), a2), v21, v22))
  {
    [v26 setFrame:{v13, v15, v17, v19}];
    [*(a1 + 32) addSubview:v26];
  }

  v23 = [*(a1 + 32) delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = [*(a1 + 32) delegate];
    [v25 itemizedScrollView:*(a1 + 32) didShowViewWithIndex:a2];
  }
}

- (void)scrollToNext
{
  v3 = [(SXItemizedScrollView *)self frames];
  v4 = [v3 count];
  v5 = [(SXItemizedScrollView *)self activeViewIndex];

  if (v4 > v5)
  {
    v6 = [(SXItemizedScrollView *)self activeViewIndex]+ 1;

    [(SXItemizedScrollView *)self setActiveViewIndex:v6 animated:0];
  }
}

- (void)scrollToPrevious
{
  if ([(SXItemizedScrollView *)self activeViewIndex])
  {
    v3 = [(SXItemizedScrollView *)self activeViewIndex]- 1;

    [(SXItemizedScrollView *)self setActiveViewIndex:v3 animated:0];
  }
}

- (SXItemizedScrollViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (_NSRange)visibleRange
{
  p_visibleRange = &self->_visibleRange;
  location = self->_visibleRange.location;
  length = p_visibleRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (CGSize)framesAreValidForSize
{
  width = self->_framesAreValidForSize.width;
  height = self->_framesAreValidForSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end