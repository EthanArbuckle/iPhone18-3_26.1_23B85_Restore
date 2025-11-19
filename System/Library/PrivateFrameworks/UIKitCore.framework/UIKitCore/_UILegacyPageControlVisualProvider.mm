@interface _UILegacyPageControlVisualProvider
- (BOOL)_hasCustomImageForPage:(int64_t)a3 enabled:(BOOL)a4;
- (CGRect)_indicatorFrameAtIndex:(int64_t)a3;
- (CGRect)_modernBounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_indicatorSpacing;
- (id)_cachedPageIndicatorCurrentImageForPage:(int64_t)a3;
- (id)_cachedPageIndicatorImageForPage:(int64_t)a3;
- (id)_indicatorViewEnabled:(BOOL)a3 index:(int64_t)a4;
- (id)_modernColorEnabled:(BOOL)a3;
- (id)_pageIndicatorCurrentImageForPage:(int64_t)a3;
- (id)_pageIndicatorImageForPage:(int64_t)a3;
- (id)effectiveContentView;
- (void)_cachePageIndicatorImages;
- (void)_drawModernIndicatorInView:(id)a3 enabled:(BOOL)a4;
- (void)_setDisplayedPage:(int64_t)a3;
- (void)_transitionIndicator:(id)a3 toEnabled:(BOOL)a4 index:(int64_t)a5;
- (void)didEndTrackingWithTouch:(id)a3;
- (void)didUpdateNumberOfPages;
- (void)didUpdatePageIndicatorTintColor;
- (void)invalidateIndicators;
- (void)layoutSubviews;
- (void)prepare;
- (void)pruneArchivedSubviews:(id)a3;
- (void)updateDisplayedPageToCurrentPage;
@end

@implementation _UILegacyPageControlVisualProvider

- (void)prepare
{
  v7.receiver = self;
  v7.super_class = _UILegacyPageControlVisualProvider;
  [(_UIPageControlVisualProvider *)&v7 prepare];
  if ([(UIPageControl *)self->super._pageControl _implementsCustomPageImagesOverride])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    pageImages = self->_pageImages;
    self->_pageImages = v3;
  }

  if ([(UIPageControl *)self->super._pageControl _implementsCustomCurrentPageImagesOverride])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    currentPageImages = self->_currentPageImages;
    self->_currentPageImages = v5;
  }
}

- (void)pruneArchivedSubviews:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_indicators;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObject:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)didUpdateNumberOfPages
{
  [(_UILegacyPageControlVisualProvider *)self _cachePageIndicatorImages];
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  v3 = [(UIPageControl *)self->super._pageControl numberOfPages];
  v4 = [(NSMutableArray *)self->_indicators count];
  if (v3 <= v4)
  {
    if (v3 < 1)
    {
      [(NSMutableArray *)self->_indicators makeObjectsPerformSelector:sel_removeFromSuperview];
      indicators = self->_indicators;

      [(NSMutableArray *)indicators removeAllObjects];
    }

    else
    {
      while (v4 > v3)
      {
        v9 = [(NSMutableArray *)self->_indicators objectAtIndex:--v4];
        [v9 removeFromSuperview];
        [(NSMutableArray *)self->_indicators removeObjectAtIndex:v4];
      }
    }
  }

  else
  {
    if (!self->_indicators)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_indicators;
      self->_indicators = v5;
    }

    do
    {
      v7 = [(_UILegacyPageControlVisualProvider *)self _indicatorViewEnabled:v4 == [(UIPageControl *)self->super._pageControl currentPage] index:v4];
      v8 = [(_UILegacyPageControlVisualProvider *)self effectiveContentView];
      [v8 addSubview:v7];

      [(NSMutableArray *)self->_indicators addObject:v7];
      ++v4;
    }

    while (v3 != v4);
  }
}

- (void)didUpdatePageIndicatorTintColor
{
  v3 = [(UIPageControl *)self->super._pageControl numberOfPages];
  if (v3 > 1 || v3 == 1 && self->super._displayedPage)
  {

    [(_UILegacyPageControlVisualProvider *)self invalidateIndicators];
  }
}

- (void)didEndTrackingWithTouch:(id)a3
{
  v20 = a3;
  v4 = [(UIControl *)self->super._pageControl isTouchInside];
  v5 = v20;
  if (v4)
  {
    [v20 locationInView:self->super._pageControl];
    v7 = v6;
    v8 = [(UIPageControl *)self->super._pageControl currentPage];
    v9 = [(UIPageControl *)self->super._pageControl defersCurrentPageDisplay];
    v10 = [(UIView *)self->super._pageControl _shouldReverseLayoutDirection];
    [(UIView *)self->super._pageControl bounds];
    v12 = v11;
    v14 = v13;
    if ([(UIPageControl *)self->super._pageControl numberOfPages]== 2 && (v8 & 0x8000000000000000) == 0)
    {
      pageControl = self->super._pageControl;
      v16 = v8 == 0;
LABEL_14:
      [(UIPageControl *)pageControl _updateCurrentPage:v16 updateDisplayImmediately:!v9];
      [(UIPageControl *)self->super._pageControl _emitValueChanged];
      v5 = v20;
      goto LABEL_15;
    }

    v17 = v12 + v14 * 0.5;
    if (v10)
    {
      v18 = v7 >= v17;
    }

    else
    {
      v18 = v7 <= v17;
    }

    if (v18)
    {
      v16 = v8 - 1;
      v5 = v20;
      if (v8 < 1)
      {
        goto LABEL_15;
      }

      pageControl = self->super._pageControl;
      goto LABEL_14;
    }

    v5 = v20;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v19 = [(UIPageControl *)self->super._pageControl numberOfPages];
      v5 = v20;
      if (v8 < v19 - 1)
      {
        pageControl = self->super._pageControl;
        v16 = v8 + 1;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

- (CGSize)sizeForNumberOfPages:(int64_t)a3
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (a3)
  {
    v7 = 0;
    v8 = a3 - 1;
    do
    {
      if (v7 < v8)
      {
        [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
        v4 = v4 + v9;
      }

      ++v7;
    }

    while (a3 != v7);
  }

  [(_UILegacyPageControlVisualProvider *)self _modernBounds];
  v11 = v4 + v10;
  [(_UILegacyPageControlVisualProvider *)self _modernBounds];
  v13 = v5 + v12 + 30.0;
  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v5 = [(NSMutableArray *)self->_indicators count];
  if (v5)
  {
    v6 = v5;
    if (v5 != 1 || ![(UIPageControl *)self->super._pageControl hidesForSinglePage])
    {
      [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
      v8 = v4 + v7 * (v6 - 1);
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:i enabled:i == [(UIPageControl *)self->super._pageControl currentPage]])
          {
            [(_UILegacyPageControlVisualProvider *)self _indicatorFrameAtIndex:i];
            v8 = v8 + v10;
          }
        }
      }

      [(_UILegacyPageControlVisualProvider *)self _modernBounds];
      v12 = v8 + v11;
      [(_UILegacyPageControlVisualProvider *)self _modernBounds];
      v3 = v3 + v13 + 30.0;
      v4 = v12 + 0.0;
    }
  }

  v14 = v4;
  v15 = v3;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UILegacyPageControlVisualProvider *)self intrinsicContentSize:a3.width];
  v5 = v4;
  v7 = v6;
  v8 = [(UIView *)self->super._pageControl superview];

  if (v8)
  {
    v9 = [(UIView *)self->super._pageControl superview];
    [v9 bounds];
    v5 = v10;
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  [(UIView *)self->super._pageControl bounds];
  [(UIView *)self->_backgroundVisualEffectView setFrame:?];
  v3 = [(NSMutableArray *)self->_indicators count];
  if (v3)
  {
    v4 = v3;
    if (v3 != 1 || ![(UIPageControl *)self->super._pageControl hidesForSinglePage])
    {
      [(UIView *)self->super._pageControl bounds];
      v6 = v5;
      [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
      v8 = v7 * (v4 - 1) + 0.0;
      if (v4 >= 1)
      {
        for (i = 0; i != v4; ++i)
        {
          if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:i enabled:i == [(UIPageControl *)self->super._pageControl currentPage]])
          {
            [(_UILegacyPageControlVisualProvider *)self _indicatorFrameAtIndex:i];
            v8 = v8 + v10;
          }
        }
      }

      [(_UILegacyPageControlVisualProvider *)self _modernBounds];
      UIRoundToViewScale(self->super._pageControl);
      v12 = v11;
      [(_UILegacyPageControlVisualProvider *)self _modernBounds];
      if (v4 >= 1)
      {
        v14 = 0;
        if ((*(&self->super._pageControl->super.super._viewFlags + 18) & 0x40) != 0)
        {
          v15 = v6 - (v12 + v13 * 0.5);
        }

        else
        {
          v15 = v12 + v13 * 0.5;
        }

        do
        {
          v16 = [(NSMutableArray *)self->_indicators objectAtIndex:v14];
          [(_UILegacyPageControlVisualProvider *)self _indicatorFrameAtIndex:v14];
          if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:v14 enabled:v14 == [(UIPageControl *)self->super._pageControl currentPage]])
          {
            [(_UILegacyPageControlVisualProvider *)self _indicatorFrameAtIndex:v14];
            v18 = v17;
            [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
            v20 = v19 + v18;
            pageControl = self->super._pageControl;
            if ((*(&pageControl->super.super._viewFlags + 18) & 0x40) != 0)
            {
              if (!v14)
              {
                [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
                v15 = v15 + v22;
                pageControl = self->super._pageControl;
              }

              v15 = v15 - v20;
            }

            UIRoundToViewScale(pageControl);
            v24 = v23;
            UIRoundToViewScale(self->super._pageControl);
            v26 = v25;
            [v16 bounds];
            [v16 setFrame:{v24, v26}];
            if ((*(&self->super._pageControl->super.super._viewFlags + 18) & 0x40) == 0)
            {
              v15 = v20 + v15;
            }
          }

          else
          {
            UIRoundToViewScale(self->super._pageControl);
            v28 = v27;
            UIRoundToViewScale(self->super._pageControl);
            v30 = v29;
            v31 = *(&self->super._pageControl->super.super._viewFlags + 2);
            [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
            if ((v31 & 0x400000) != 0)
            {
              v32 = -v32;
            }

            v15 = v15 + v32;
            [v16 bounds];
            [v16 setFrame:{v28, v30}];
          }

          ++v14;
        }

        while (v4 != v14);
      }
    }
  }
}

- (void)invalidateIndicators
{
  v15 = *MEMORY[0x1E69E9840];
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_indicators;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_indicators removeAllObjects];
  if ([(UIPageControl *)self->super._pageControl numberOfPages]>= 1)
  {
    v8 = 0;
    do
    {
      v9 = [(_UILegacyPageControlVisualProvider *)self _indicatorViewEnabled:v8 == [(UIPageControl *)self->super._pageControl currentPage] index:v8];
      [(UIView *)self->super._pageControl addSubview:v9];
      [(NSMutableArray *)self->_indicators addObject:v9];

      ++v8;
    }

    while (v8 < [(UIPageControl *)self->super._pageControl numberOfPages]);
  }

  [(UIPageControl *)self->super._pageControl setCurrentPage:[(UIPageControl *)self->super._pageControl currentPage]];
  [(UIView *)self->super._pageControl setNeedsLayout];
}

- (id)effectiveContentView
{
  v3 = [(UIVisualEffectView *)self->_backgroundVisualEffectView contentView];
  pageControl = v3;
  if (!v3)
  {
    pageControl = self->super._pageControl;
  }

  v5 = pageControl;

  return pageControl;
}

- (void)updateDisplayedPageToCurrentPage
{
  v3 = [(UIPageControl *)self->super._pageControl currentPage];

  [(_UILegacyPageControlVisualProvider *)self _setDisplayedPage:v3];
}

- (void)_setDisplayedPage:(int64_t)a3
{
  displayedPage = self->super._displayedPage;
  if (displayedPage != a3)
  {
    if ((displayedPage & 0x8000000000000000) == 0 && displayedPage < [(UIPageControl *)self->super._pageControl numberOfPages])
    {
      v6 = [(NSMutableArray *)self->_indicators objectAtIndex:self->super._displayedPage];
      [(_UILegacyPageControlVisualProvider *)self _transitionIndicator:v6 toEnabled:0 index:self->super._displayedPage];
    }

    self->super._displayedPage = -1;
    if ((a3 & 0x8000000000000000) == 0 && [(UIPageControl *)self->super._pageControl numberOfPages]> a3)
    {
      self->super._displayedPage = a3;
      v7 = [(NSMutableArray *)self->_indicators objectAtIndex:a3];
      [(_UILegacyPageControlVisualProvider *)self _transitionIndicator:v7 toEnabled:1 index:a3];
    }
  }
}

- (CGRect)_indicatorFrameAtIndex:(int64_t)a3
{
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:a3 enabled:self->super._displayedPage == a3])
  {
    v5 = [(NSMutableArray *)self->_indicators objectAtIndex:a3];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [(_UILegacyPageControlVisualProvider *)self _modernBounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)_indicatorSpacing
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 16.0;
  }

  pageControl = self->super._pageControl;

  [(UIPageControl *)pageControl _indicatorSpacing];
  return result;
}

- (CGRect)_modernBounds
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = 7.0;
  v5 = 7.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)_modernColorEnabled:(BOOL)a3
{
  pageControl = self->super._pageControl;
  if (!a3)
  {
    v5 = [(UIPageControl *)pageControl pageIndicatorTintColor];
    if (!v5)
    {
      v8 = [(UIView *)self->super._pageControl traitCollection];
      v6 = +[UIColor colorWithWhite:alpha:](UIColor, "colorWithWhite:alpha:", 1.0, dbl_18A6828A0[[v8 userInterfaceIdiom] == 3]);

      goto LABEL_7;
    }

LABEL_5:
    v7 = v5;
    v6 = v7;
    goto LABEL_8;
  }

  v5 = [(UIPageControl *)pageControl currentPageIndicatorTintColor];
  if (v5)
  {
    goto LABEL_5;
  }

  v6 = +[UIColor whiteColor];
LABEL_7:
  v7 = 0;
LABEL_8:

  return v6;
}

- (BOOL)_hasCustomImageForPage:(int64_t)a3 enabled:(BOOL)a4
{
  v6 = [(UIPageControl *)self->super._pageControl currentPage:a3];
  v7 = *(&self->super.super.isa + OBJC_IVAR____UILegacyPageControlVisualProvider__pageImages[v6 == a3]);
  if (v7)
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [MEMORY[0x1E695DFB0] null];
    v10 = v8 != v9;
  }

  else
  {
    v11 = 5;
    if (v6 == a3)
    {
      v11 = 4;
    }

    return *(&self->super.super.isa + OBJC_IVAR____UILegacyPageControlVisualProvider__pageImages[v11]) != 0;
  }

  return v10;
}

- (void)_transitionIndicator:(id)a3 toEnabled:(BOOL)a4 index:(int64_t)a5
{
  v6 = a4;
  v9 = a3;
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:a5 enabled:v6])
  {
    if (v6)
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorCurrentImageForPage:a5];
    }

    else
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorImageForPage:a5];
    }
    v8 = ;
    [v9 setImage:v8];
  }

  else
  {
    [(_UILegacyPageControlVisualProvider *)self _drawModernIndicatorInView:v9 enabled:v6];
  }
}

- (id)_indicatorViewEnabled:(BOOL)a3 index:(int64_t)a4
{
  v5 = a3;
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:a4 enabled:a3])
  {
    if ([(UIPageControl *)self->super._pageControl currentPage]== a4)
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorCurrentImageForPage:a4];
    }

    else
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorImageForPage:a4];
    }
    v8 = ;
    v7 = [[UIImageView alloc] initWithImage:v8];
  }

  else
  {
    v7 = objc_alloc_init(UIView);
    [(_UILegacyPageControlVisualProvider *)self _drawModernIndicatorInView:v7 enabled:v5];
  }

  [(UIView *)v7 setUserInteractionEnabled:0];

  return v7;
}

- (void)_drawModernIndicatorInView:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UILegacyPageControlVisualProvider *)self _modernColorEnabled:v4];
  [v6 setBackgroundColor:v7];

  [(_UILegacyPageControlVisualProvider *)self _modernBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 layer];
  [v16 setBounds:{v9, v11, v13, v15}];

  [(_UILegacyPageControlVisualProvider *)self _modernCornerRadius];
  v18 = v17;
  v19 = [v6 layer];

  [v19 setCornerRadius:v18];
}

- (id)_cachedPageIndicatorImageForPage:(int64_t)a3
{
  pageImages = self->_pageImages;
  if (pageImages)
  {
    v6 = [(NSMutableArray *)pageImages objectAtIndexedSubscript:a3];
    v7 = [MEMORY[0x1E695DFB0] null];

    if (v6 != v7)
    {
      goto LABEL_5;
    }
  }

  v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorImageForPage:a3];
LABEL_5:

  return v6;
}

- (id)_cachedPageIndicatorCurrentImageForPage:(int64_t)a3
{
  currentPageImages = self->_currentPageImages;
  if (currentPageImages)
  {
    v6 = [(NSMutableArray *)currentPageImages objectAtIndexedSubscript:a3];
    v7 = [MEMORY[0x1E695DFB0] null];

    if (v6 != v7)
    {
      goto LABEL_5;
    }
  }

  v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorCurrentImageForPage:a3];
LABEL_5:

  return v6;
}

- (id)_pageIndicatorImageForPage:(int64_t)a3
{
  pageImage = self->_pageImage;
  if (pageImage)
  {
    v4 = pageImage;
  }

  else
  {
    v4 = [(_UILegacyPageControlVisualProvider *)self preferredIndicatorImage];
  }

  return v4;
}

- (id)_pageIndicatorCurrentImageForPage:(int64_t)a3
{
  currentPageImage = self->_currentPageImage;
  if (currentPageImage)
  {
    v4 = currentPageImage;
  }

  else
  {
    v4 = [(_UILegacyPageControlVisualProvider *)self defaultActivePageIndicatorImage];
  }

  return v4;
}

- (void)_cachePageIndicatorImages
{
  pageImages = self->_pageImages;
  if (pageImages)
  {
    [(NSMutableArray *)pageImages removeAllObjects];
    v4 = [(_UILegacyPageControlVisualProvider *)self preferredIndicatorImage];
    if ([(UIPageControl *)self->super._pageControl numberOfPages]>= 1)
    {
      v5 = 0;
      do
      {
        v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorImageForPage:v5];
        v7 = [v4 isEqual:v6];
        v8 = self->_pageImages;
        if (v7)
        {
          v9 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)v8 addObject:v9];
        }

        else
        {
          [(NSMutableArray *)self->_pageImages addObject:v6];
        }

        ++v5;
      }

      while (v5 < [(UIPageControl *)self->super._pageControl numberOfPages]);
    }
  }

  currentPageImages = self->_currentPageImages;
  if (currentPageImages)
  {
    [(NSMutableArray *)currentPageImages removeAllObjects];
    v16 = [(_UILegacyPageControlVisualProvider *)self defaultActivePageIndicatorImage];
    if ([(UIPageControl *)self->super._pageControl numberOfPages]>= 1)
    {
      v11 = 0;
      do
      {
        v12 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorCurrentImageForPage:v11];
        v13 = [v16 isEqual:v12];
        v14 = self->_currentPageImages;
        if (v13)
        {
          v15 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)v14 addObject:v15];
        }

        else
        {
          [(NSMutableArray *)self->_currentPageImages addObject:v12];
        }

        ++v11;
      }

      while (v11 < [(UIPageControl *)self->super._pageControl numberOfPages]);
    }
  }
}

@end