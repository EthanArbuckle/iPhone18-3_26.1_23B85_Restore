@interface _UILegacyPageControlVisualProvider
- (BOOL)_hasCustomImageForPage:(int64_t)page enabled:(BOOL)enabled;
- (CGRect)_indicatorFrameAtIndex:(int64_t)index;
- (CGRect)_modernBounds;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(int64_t)pages;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_indicatorSpacing;
- (id)_cachedPageIndicatorCurrentImageForPage:(int64_t)page;
- (id)_cachedPageIndicatorImageForPage:(int64_t)page;
- (id)_indicatorViewEnabled:(BOOL)enabled index:(int64_t)index;
- (id)_modernColorEnabled:(BOOL)enabled;
- (id)_pageIndicatorCurrentImageForPage:(int64_t)page;
- (id)_pageIndicatorImageForPage:(int64_t)page;
- (id)effectiveContentView;
- (void)_cachePageIndicatorImages;
- (void)_drawModernIndicatorInView:(id)view enabled:(BOOL)enabled;
- (void)_setDisplayedPage:(int64_t)page;
- (void)_transitionIndicator:(id)indicator toEnabled:(BOOL)enabled index:(int64_t)index;
- (void)didEndTrackingWithTouch:(id)touch;
- (void)didUpdateNumberOfPages;
- (void)didUpdatePageIndicatorTintColor;
- (void)invalidateIndicators;
- (void)layoutSubviews;
- (void)prepare;
- (void)pruneArchivedSubviews:(id)subviews;
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
    array = [MEMORY[0x1E695DF70] array];
    pageImages = self->_pageImages;
    self->_pageImages = array;
  }

  if ([(UIPageControl *)self->super._pageControl _implementsCustomCurrentPageImagesOverride])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    currentPageImages = self->_currentPageImages;
    self->_currentPageImages = array2;
  }
}

- (void)pruneArchivedSubviews:(id)subviews
{
  v15 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
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

        [subviewsCopy removeObject:{*(*(&v10 + 1) + 8 * v9++), v10}];
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
  numberOfPages = [(UIPageControl *)self->super._pageControl numberOfPages];
  v4 = [(NSMutableArray *)self->_indicators count];
  if (numberOfPages <= v4)
  {
    if (numberOfPages < 1)
    {
      [(NSMutableArray *)self->_indicators makeObjectsPerformSelector:sel_removeFromSuperview];
      indicators = self->_indicators;

      [(NSMutableArray *)indicators removeAllObjects];
    }

    else
    {
      while (v4 > numberOfPages)
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
      effectiveContentView = [(_UILegacyPageControlVisualProvider *)self effectiveContentView];
      [effectiveContentView addSubview:v7];

      [(NSMutableArray *)self->_indicators addObject:v7];
      ++v4;
    }

    while (numberOfPages != v4);
  }
}

- (void)didUpdatePageIndicatorTintColor
{
  numberOfPages = [(UIPageControl *)self->super._pageControl numberOfPages];
  if (numberOfPages > 1 || numberOfPages == 1 && self->super._displayedPage)
  {

    [(_UILegacyPageControlVisualProvider *)self invalidateIndicators];
  }
}

- (void)didEndTrackingWithTouch:(id)touch
{
  touchCopy = touch;
  isTouchInside = [(UIControl *)self->super._pageControl isTouchInside];
  v5 = touchCopy;
  if (isTouchInside)
  {
    [touchCopy locationInView:self->super._pageControl];
    v7 = v6;
    currentPage = [(UIPageControl *)self->super._pageControl currentPage];
    defersCurrentPageDisplay = [(UIPageControl *)self->super._pageControl defersCurrentPageDisplay];
    _shouldReverseLayoutDirection = [(UIView *)self->super._pageControl _shouldReverseLayoutDirection];
    [(UIView *)self->super._pageControl bounds];
    v12 = v11;
    v14 = v13;
    if ([(UIPageControl *)self->super._pageControl numberOfPages]== 2 && (currentPage & 0x8000000000000000) == 0)
    {
      pageControl = self->super._pageControl;
      v16 = currentPage == 0;
LABEL_14:
      [(UIPageControl *)pageControl _updateCurrentPage:v16 updateDisplayImmediately:!defersCurrentPageDisplay];
      [(UIPageControl *)self->super._pageControl _emitValueChanged];
      v5 = touchCopy;
      goto LABEL_15;
    }

    v17 = v12 + v14 * 0.5;
    if (_shouldReverseLayoutDirection)
    {
      v18 = v7 >= v17;
    }

    else
    {
      v18 = v7 <= v17;
    }

    if (v18)
    {
      v16 = currentPage - 1;
      v5 = touchCopy;
      if (currentPage < 1)
      {
        goto LABEL_15;
      }

      pageControl = self->super._pageControl;
      goto LABEL_14;
    }

    v5 = touchCopy;
    if ((currentPage & 0x8000000000000000) == 0)
    {
      numberOfPages = [(UIPageControl *)self->super._pageControl numberOfPages];
      v5 = touchCopy;
      if (currentPage < numberOfPages - 1)
      {
        pageControl = self->super._pageControl;
        v16 = currentPage + 1;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

- (CGSize)sizeForNumberOfPages:(int64_t)pages
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  if (pages)
  {
    v7 = 0;
    v8 = pages - 1;
    do
    {
      if (v7 < v8)
      {
        [(_UILegacyPageControlVisualProvider *)self _indicatorSpacing];
        v4 = v4 + v9;
      }

      ++v7;
    }

    while (pages != v7);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UILegacyPageControlVisualProvider *)self intrinsicContentSize:fits.width];
  v5 = v4;
  v7 = v6;
  superview = [(UIView *)self->super._pageControl superview];

  if (superview)
  {
    superview2 = [(UIView *)self->super._pageControl superview];
    [superview2 bounds];
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
  contentView = [(UIVisualEffectView *)self->_backgroundVisualEffectView contentView];
  pageControl = contentView;
  if (!contentView)
  {
    pageControl = self->super._pageControl;
  }

  v5 = pageControl;

  return pageControl;
}

- (void)updateDisplayedPageToCurrentPage
{
  currentPage = [(UIPageControl *)self->super._pageControl currentPage];

  [(_UILegacyPageControlVisualProvider *)self _setDisplayedPage:currentPage];
}

- (void)_setDisplayedPage:(int64_t)page
{
  displayedPage = self->super._displayedPage;
  if (displayedPage != page)
  {
    if ((displayedPage & 0x8000000000000000) == 0 && displayedPage < [(UIPageControl *)self->super._pageControl numberOfPages])
    {
      v6 = [(NSMutableArray *)self->_indicators objectAtIndex:self->super._displayedPage];
      [(_UILegacyPageControlVisualProvider *)self _transitionIndicator:v6 toEnabled:0 index:self->super._displayedPage];
    }

    self->super._displayedPage = -1;
    if ((page & 0x8000000000000000) == 0 && [(UIPageControl *)self->super._pageControl numberOfPages]> page)
    {
      self->super._displayedPage = page;
      v7 = [(NSMutableArray *)self->_indicators objectAtIndex:page];
      [(_UILegacyPageControlVisualProvider *)self _transitionIndicator:v7 toEnabled:1 index:page];
    }
  }
}

- (CGRect)_indicatorFrameAtIndex:(int64_t)index
{
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:index enabled:self->super._displayedPage == index])
  {
    v5 = [(NSMutableArray *)self->_indicators objectAtIndex:index];
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

- (id)_modernColorEnabled:(BOOL)enabled
{
  pageControl = self->super._pageControl;
  if (!enabled)
  {
    pageIndicatorTintColor = [(UIPageControl *)pageControl pageIndicatorTintColor];
    if (!pageIndicatorTintColor)
    {
      traitCollection = [(UIView *)self->super._pageControl traitCollection];
      v6 = +[UIColor colorWithWhite:alpha:](UIColor, "colorWithWhite:alpha:", 1.0, dbl_18A6828A0[[traitCollection userInterfaceIdiom] == 3]);

      goto LABEL_7;
    }

LABEL_5:
    v7 = pageIndicatorTintColor;
    v6 = v7;
    goto LABEL_8;
  }

  pageIndicatorTintColor = [(UIPageControl *)pageControl currentPageIndicatorTintColor];
  if (pageIndicatorTintColor)
  {
    goto LABEL_5;
  }

  v6 = +[UIColor whiteColor];
LABEL_7:
  v7 = 0;
LABEL_8:

  return v6;
}

- (BOOL)_hasCustomImageForPage:(int64_t)page enabled:(BOOL)enabled
{
  v6 = [(UIPageControl *)self->super._pageControl currentPage:page];
  v7 = *(&self->super.super.isa + OBJC_IVAR____UILegacyPageControlVisualProvider__pageImages[v6 == page]);
  if (v7)
  {
    v8 = [v7 objectAtIndexedSubscript:page];
    null = [MEMORY[0x1E695DFB0] null];
    v10 = v8 != null;
  }

  else
  {
    v11 = 5;
    if (v6 == page)
    {
      v11 = 4;
    }

    return *(&self->super.super.isa + OBJC_IVAR____UILegacyPageControlVisualProvider__pageImages[v11]) != 0;
  }

  return v10;
}

- (void)_transitionIndicator:(id)indicator toEnabled:(BOOL)enabled index:(int64_t)index
{
  enabledCopy = enabled;
  indicatorCopy = indicator;
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:index enabled:enabledCopy])
  {
    if (enabledCopy)
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorCurrentImageForPage:index];
    }

    else
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorImageForPage:index];
    }
    v8 = ;
    [indicatorCopy setImage:v8];
  }

  else
  {
    [(_UILegacyPageControlVisualProvider *)self _drawModernIndicatorInView:indicatorCopy enabled:enabledCopy];
  }
}

- (id)_indicatorViewEnabled:(BOOL)enabled index:(int64_t)index
{
  enabledCopy = enabled;
  if ([(_UILegacyPageControlVisualProvider *)self _hasCustomImageForPage:index enabled:enabled])
  {
    if ([(UIPageControl *)self->super._pageControl currentPage]== index)
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorCurrentImageForPage:index];
    }

    else
    {
      [(_UILegacyPageControlVisualProvider *)self _cachedPageIndicatorImageForPage:index];
    }
    v8 = ;
    v7 = [[UIImageView alloc] initWithImage:v8];
  }

  else
  {
    v7 = objc_alloc_init(UIView);
    [(_UILegacyPageControlVisualProvider *)self _drawModernIndicatorInView:v7 enabled:enabledCopy];
  }

  [(UIView *)v7 setUserInteractionEnabled:0];

  return v7;
}

- (void)_drawModernIndicatorInView:(id)view enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  viewCopy = view;
  v7 = [(_UILegacyPageControlVisualProvider *)self _modernColorEnabled:enabledCopy];
  [viewCopy setBackgroundColor:v7];

  [(_UILegacyPageControlVisualProvider *)self _modernBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  layer = [viewCopy layer];
  [layer setBounds:{v9, v11, v13, v15}];

  [(_UILegacyPageControlVisualProvider *)self _modernCornerRadius];
  v18 = v17;
  layer2 = [viewCopy layer];

  [layer2 setCornerRadius:v18];
}

- (id)_cachedPageIndicatorImageForPage:(int64_t)page
{
  pageImages = self->_pageImages;
  if (pageImages)
  {
    v6 = [(NSMutableArray *)pageImages objectAtIndexedSubscript:page];
    null = [MEMORY[0x1E695DFB0] null];

    if (v6 != null)
    {
      goto LABEL_5;
    }
  }

  v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorImageForPage:page];
LABEL_5:

  return v6;
}

- (id)_cachedPageIndicatorCurrentImageForPage:(int64_t)page
{
  currentPageImages = self->_currentPageImages;
  if (currentPageImages)
  {
    v6 = [(NSMutableArray *)currentPageImages objectAtIndexedSubscript:page];
    null = [MEMORY[0x1E695DFB0] null];

    if (v6 != null)
    {
      goto LABEL_5;
    }
  }

  v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorCurrentImageForPage:page];
LABEL_5:

  return v6;
}

- (id)_pageIndicatorImageForPage:(int64_t)page
{
  pageImage = self->_pageImage;
  if (pageImage)
  {
    preferredIndicatorImage = pageImage;
  }

  else
  {
    preferredIndicatorImage = [(_UILegacyPageControlVisualProvider *)self preferredIndicatorImage];
  }

  return preferredIndicatorImage;
}

- (id)_pageIndicatorCurrentImageForPage:(int64_t)page
{
  currentPageImage = self->_currentPageImage;
  if (currentPageImage)
  {
    defaultActivePageIndicatorImage = currentPageImage;
  }

  else
  {
    defaultActivePageIndicatorImage = [(_UILegacyPageControlVisualProvider *)self defaultActivePageIndicatorImage];
  }

  return defaultActivePageIndicatorImage;
}

- (void)_cachePageIndicatorImages
{
  pageImages = self->_pageImages;
  if (pageImages)
  {
    [(NSMutableArray *)pageImages removeAllObjects];
    preferredIndicatorImage = [(_UILegacyPageControlVisualProvider *)self preferredIndicatorImage];
    if ([(UIPageControl *)self->super._pageControl numberOfPages]>= 1)
    {
      v5 = 0;
      do
      {
        v6 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorImageForPage:v5];
        v7 = [preferredIndicatorImage isEqual:v6];
        v8 = self->_pageImages;
        if (v7)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)v8 addObject:null];
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
    defaultActivePageIndicatorImage = [(_UILegacyPageControlVisualProvider *)self defaultActivePageIndicatorImage];
    if ([(UIPageControl *)self->super._pageControl numberOfPages]>= 1)
    {
      v11 = 0;
      do
      {
        v12 = [(_UILegacyPageControlVisualProvider *)self _pageIndicatorCurrentImageForPage:v11];
        v13 = [defaultActivePageIndicatorImage isEqual:v12];
        v14 = self->_currentPageImages;
        if (v13)
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)v14 addObject:null2];
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