@interface PKBarcodeTableViewCell
- (CGSize)_maxBarcodeHeaderSizeForViewWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKBarcodeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)displayedIndex;
- (void)_computeMaxBarcodeSize;
- (void)_pageControlChanged:(id)changed;
- (void)_updateHeaderTextToBarcodeAtIndex:(unint64_t)index;
- (void)_updatePageControlWithDisplayIndex;
- (void)_updateScrollViewToIndex:(unint64_t)index animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setPass:(id)pass;
@end

@implementation PKBarcodeTableViewCell

- (PKBarcodeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v29.receiver = self;
  v29.super_class = PKBarcodeTableViewCell;
  v5 = [(PKBarcodeTableViewCell *)&v29 initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->_barcodeStyle = style;
    v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    pagingScrollView = v6->_pagingScrollView;
    v6->_pagingScrollView = v12;

    [(UIScrollView *)v6->_pagingScrollView setDelegate:v6];
    [(UIScrollView *)v6->_pagingScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v6->_pagingScrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v6->_pagingScrollView setScrollsToTop:0];
    [(UIScrollView *)v6->_pagingScrollView setClipsToBounds:0];
    [(UIScrollView *)v6->_pagingScrollView setPagingEnabled:1];
    contentView = [(PKBarcodeTableViewCell *)v6 contentView];
    [contentView addSubview:v6->_pagingScrollView];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    headerLabel = v6->_headerLabel;
    v6->_headerLabel = v15;

    v17 = v6->_headerLabel;
    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v17 setFont:v18];

    v19 = v6->_headerLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v19 setTextColor:labelColor];

    [(UILabel *)v6->_headerLabel setTextAlignment:1];
    [(UILabel *)v6->_headerLabel setNumberOfLines:0];
    contentView2 = [(PKBarcodeTableViewCell *)v6 contentView];
    [contentView2 addSubview:v6->_headerLabel];

    v22 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v8, v9, v10, v11}];
    pageControl = v6->_pageControl;
    v6->_pageControl = v22;

    [(UIPageControl *)v6->_pageControl addTarget:v6 action:sel__pageControlChanged_ forControlEvents:4096];
    [(UIPageControl *)v6->_pageControl setHidden:1];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v6->_pageControl setCurrentPageIndicatorTintColor:labelColor2];
    v25 = v6->_pageControl;
    v26 = [labelColor2 colorWithAlphaComponent:0.3];
    [(UIPageControl *)v25 setPageIndicatorTintColor:v26];

    contentView3 = [(PKBarcodeTableViewCell *)v6 contentView];
    [contentView3 addSubview:v6->_pageControl];

    [(PKBarcodeTableViewCell *)v6 setSelectionStyle:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PKBarcodeTableViewCell;
  [(PKBarcodeTableViewCell *)&v26 layoutSubviews];
  [(PKBarcodeTableViewCell *)self bounds];
  v4 = v3;
  v24 = *MEMORY[0x1E695F058];
  [(PKBarcodeTableViewCell *)self _maxBarcodeHeaderSizeForViewWidth:v3];
  v23 = v5;
  v7 = v6;
  UIRectCenteredXInRectScale();
  [(UILabel *)self->_headerLabel sizeThatFits:v4, 1.79769313e308, 0];
  headerLabel = self->_headerLabel;
  UIRectCenteredIntegralRect();
  [(UILabel *)headerLabel setFrame:?];
  [(UIScrollView *)self->_pagingScrollView contentSize];
  v10 = v9;
  v12 = v11;
  v13 = v4 * [(NSArray *)self->_barcodeStickerViews count];
  height = self->_maximumBarcodeSize.height;
  isScrollAnimating = [(UIScrollView *)self->_pagingScrollView isScrollAnimating];
  if (isScrollAnimating)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (isScrollAnimating)
  {
    v17 = v12;
  }

  else
  {
    v17 = height;
  }

  v27.origin.y = 16.0;
  v27.size.width = v23;
  v27.origin.x = v24;
  v27.size.height = v7;
  MaxY = CGRectGetMaxY(v27);
  v19 = self->_maximumBarcodeSize.height;
  self->_pageWidth = v4;
  [(UIScrollView *)self->_pagingScrollView setFrame:0.0, MaxY, v4, v19];
  if (v10 != v16 || v12 != v17)
  {
    [(UIScrollView *)self->_pagingScrollView setContentSize:v16, v17];
  }

  barcodeStickerViews = self->_barcodeStickerViews;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __40__PKBarcodeTableViewCell_layoutSubviews__block_invoke;
  v25[3] = &unk_1E801C058;
  v25[4] = self;
  v25[5] = 0;
  *&v25[6] = MaxY;
  *&v25[7] = v4;
  *&v25[8] = v19;
  [(NSArray *)barcodeStickerViews enumerateObjectsUsingBlock:v25];
  [(UIPageControl *)self->_pageControl sizeToFit];
  v28.origin.x = 0.0;
  v28.origin.y = MaxY;
  v28.size.width = v4;
  v28.size.height = v19;
  CGRectGetMaxY(v28);
  [(UIPageControl *)self->_pageControl frame];
  pageControl = self->_pageControl;
  UIRectCenteredXInRectScale();
  [(UIPageControl *)pageControl setFrame:0];
}

void __40__PKBarcodeTableViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = a2;
  [v4 sizeThatFits:{v2, v3}];
  UIRectCenteredIntegralRectScale();
  [v4 setFrame:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKBarcodeTableViewCell *)self _maxBarcodeHeaderSizeForViewWidth:fits.width, fits.height];
  v6 = v5;
  isHidden = [(UIPageControl *)self->_pageControl isHidden];
  v8 = 0.0;
  if ((isHidden & 1) == 0)
  {
    [(UIPageControl *)self->_pageControl sizeThatFits:width, 1.79769313e308];
  }

  v9 = v8 + v6 + 16.0 + self->_maximumBarcodeSize.height + 8.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setPass:(id)pass
{
  v32 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  objc_storeStrong(&self->_pass, pass);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_barcodeStickerViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v27 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  barcodes = [(PKPass *)self->_pass barcodes];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __34__PKBarcodeTableViewCell_setPass___block_invoke;
  v24 = &unk_1E801C080;
  v25 = passCopy;
  selfCopy = self;
  v12 = passCopy;
  v13 = [barcodes pk_arrayByApplyingBlock:&v21];
  barcodeStickerViews = self->_barcodeStickerViews;
  self->_barcodeStickerViews = v13;

  headerLabel = self->_headerLabel;
  firstObject = [barcodes firstObject];
  header = [firstObject header];
  [(UILabel *)headerLabel setText:header];

  v18 = [barcodes count];
  v19 = v18 > 1;
  v20 = v18 < 2;
  -[UIPageControl setNumberOfPages:](self->_pageControl, "setNumberOfPages:", [barcodes count]);
  [(UIPageControl *)self->_pageControl setHidden:v20];
  [(UIScrollView *)self->_pagingScrollView setScrollEnabled:v19];
  [(PKBarcodeTableViewCell *)self _computeMaxBarcodeSize];
  [(PKBarcodeTableViewCell *)self _updatePageControlWithDisplayIndex];
  [(PKBarcodeTableViewCell *)self _updateScrollViewToIndex:0 animated:0];
  [(PKBarcodeTableViewCell *)self setNeedsLayout];
}

PKBarcodeStickerView *__34__PKBarcodeTableViewCell_setPass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKBarcodeStickerView alloc] initWithBarcode:v3 validityState:[PKBarcodeStickerView validityStateForPass:*(a1 + 32)]];

  [*(*(a1 + 40) + 1032) addSubview:v4];

  return v4;
}

- (void)_computeMaxBarcodeSize
{
  v19 = *MEMORY[0x1E69E9840];
  barcodeStyle = self->_barcodeStyle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_barcodeStickerViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = dbl_1BE115AC0[barcodeStyle == 1];
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 sizeThatFits:{290.0, v7, v14}];
        if (v9 <= v12)
        {
          [v11 sizeThatFits:{290.0, v7}];
          v9 = v13;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 0.0;
  }

  self->_maximumBarcodeSize.width = 290.0;
  self->_maximumBarcodeSize.height = v9;
}

- (CGSize)_maxBarcodeHeaderSizeForViewWidth:(double)width
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  font = [(UILabel *)self->_headerLabel font];
  _shouldReverseLayoutDirection = [(PKBarcodeTableViewCell *)self _shouldReverseLayoutDirection];
  v9 = *MEMORY[0x1E69DB648];
  v34[0] = font;
  v10 = *MEMORY[0x1E69DB778];
  v33[0] = v9;
  v33[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:_shouldReverseLayoutDirection];
  v32 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v34[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_barcodeStickerViews;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        barcode = [*(*(&v27 + 1) + 8 * v18) barcode];
        header = [barcode header];
        [header boundingRectWithSize:1 options:v13 attributes:0 context:{width, 1.79769313e308}];
        v22 = v21;
        v24 = v23;

        if (v6 <= v22)
        {
          v6 = v22;
        }

        if (v5 <= v24)
        {
          v5 = v24;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v25 = v6;
  v26 = v5;
  result.height = v26;
  result.width = v25;
  return result;
}

- (unint64_t)displayedIndex
{
  [(UIScrollView *)self->_pagingScrollView bounds];
  if (v3 == 0.0)
  {
    return 0;
  }

  v5 = v3;
  [(UIScrollView *)self->_pagingScrollView contentOffset];
  v7 = v6;
  v8 = [(NSArray *)self->_barcodeStickerViews count]- 1;
  v9 = fmax(fmin((v7 + v5 * 0.5) / self->_pageWidth, v8), 0.0);
  if ([(PKBarcodeTableViewCell *)self _shouldReverseLayoutDirection])
  {
    return v8 - v9;
  }

  else
  {
    return v9;
  }
}

- (void)_updateScrollViewToIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  _shouldReverseLayoutDirection = [(PKBarcodeTableViewCell *)self _shouldReverseLayoutDirection];
  indexCopy = [(NSArray *)self->_barcodeStickerViews count]+ ~index;
  if (!_shouldReverseLayoutDirection)
  {
    indexCopy = index;
  }

  v9 = self->_pageWidth * indexCopy;
  pagingScrollView = self->_pagingScrollView;

  [(UIScrollView *)pagingScrollView setContentOffset:animatedCopy animated:v9, 0.0];
}

- (void)_updateHeaderTextToBarcodeAtIndex:(unint64_t)index
{
  barcodes = [(PKPass *)self->_pass barcodes];
  v11 = [barcodes objectAtIndex:index];

  headerLabel = self->_headerLabel;
  header = [v11 header];
  [(UILabel *)headerLabel setText:header];

  animation = [MEMORY[0x1E6979538] animation];
  v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [animation setTimingFunction:v9];

  [animation setType:*MEMORY[0x1E697A030]];
  [animation setDuration:0.25];
  layer = [(UILabel *)self->_headerLabel layer];
  [layer addAnimation:animation forKey:@"kCATransitionFade"];
}

- (void)_pageControlChanged:(id)changed
{
  displayedIndex = [(PKBarcodeTableViewCell *)self displayedIndex];
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (displayedIndex != currentPage)
  {
    v6 = currentPage;
    [(PKBarcodeTableViewCell *)self _updateHeaderTextToBarcodeAtIndex:currentPage];

    [(PKBarcodeTableViewCell *)self _updateScrollViewToIndex:v6 animated:1];
  }
}

- (void)_updatePageControlWithDisplayIndex
{
  displayedIndex = [(PKBarcodeTableViewCell *)self displayedIndex];
  if (displayedIndex != [(UIPageControl *)self->_pageControl currentPage])
  {
    [(PKBarcodeTableViewCell *)self _updateHeaderTextToBarcodeAtIndex:displayedIndex];
    [(UIPageControl *)self->_pageControl setCurrentPage:displayedIndex];

    [(PKBarcodeTableViewCell *)self setNeedsLayout];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (([scroll isScrollAnimating] & 1) == 0)
  {

    [(PKBarcodeTableViewCell *)self _updatePageControlWithDisplayIndex];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PKBarcodeTableViewCell *)self _updatePageControlWithDisplayIndex];
  }
}

@end