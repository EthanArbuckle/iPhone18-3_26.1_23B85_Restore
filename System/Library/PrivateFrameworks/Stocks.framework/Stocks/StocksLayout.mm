@interface StocksLayout
+ (id)fullScreenChartLayoutForSize:(CGSize)size;
+ (id)layoutForSize:(CGSize)size;
+ (id)singleColumnPortraitLayoutForSize:(CGSize)size;
+ (id)threeColumnsLandscapeLayoutForSize:(CGSize)size;
+ (id)twoColumnsLandscapeLayoutForSize:(CGSize)size;
+ (id)twoColumnsPortraitLayoutForSize:(CGSize)size;
+ (unint64_t)numberOfRowsForSize:(CGSize)size;
- (CGRect)blurViewFrame;
- (CGRect)chartViewFrame;
- (CGRect)grayViewFrame;
- (CGRect)infoViewFrame;
- (CGRect)listViewFrame;
- (CGRect)newsViewFrame;
- (CGRect)primaryHorizontalDividerFrame;
- (CGRect)primaryVerticalDividerFrame;
- (CGRect)scrollViewFrame;
- (CGRect)secondaryGrayViewFrame;
- (CGRect)secondaryHorizontalDividerFrame;
- (CGRect)secondaryVerticalDividerFrame;
- (CGRect)statusViewDividerFrame;
- (CGRect)statusViewFrame;
- (CGSize)scrollViewContentSize;
- (UIEdgeInsets)listViewContentInsets;
- (id)description;
@end

@implementation StocksLayout

+ (id)layoutForSize:(CGSize)size
{
  if (size.height >= size.width)
  {
    if (size.width >= 640.0)
    {
      [StocksLayout twoColumnsPortraitLayoutForSize:?];
    }

    else
    {
      [StocksLayout singleColumnPortraitLayoutForSize:?];
    }
  }

  else
  {
    if (size.height < 376.0)
    {
      v3 = [StocksLayout fullScreenChartLayoutForSize:?];
      goto LABEL_11;
    }

    if (size.width >= 1024.0)
    {
      [StocksLayout threeColumnsLandscapeLayoutForSize:?];
    }

    else
    {
      [StocksLayout twoColumnsLandscapeLayoutForSize:?];
    }
  }
  v3 = ;
LABEL_11:

  return v3;
}

+ (id)singleColumnPortraitLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfRowsForSize:?];
  v7 = v6 * 56.0;
  v8 = height + -44.0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (v10 == 812.0)
  {
    v11 = 34.0;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = objc_alloc_init(self);
  [v12 setListViewFrame:RoundRectToPixel(0.0)];
  v13 = v8 - v7;
  [v12 setInfoViewFrame:RoundRectToPixel(0.0)];
  [v12 setChartViewFrame:RoundRectToPixel(width)];
  [v12 setNewsViewFrame:RoundRectToPixel(width + width)];
  [v12 setListViewContentInsets:{0.0, 0.0, v8 + 44.0 - v7 + v11, 0.0}];
  [v12 setNewsViewHasBottomLine:1];
  [v12 setInfoViewHasBottomLine:1];
  [v12 setChartViewHasBottomLine:1];
  [v12 setNewsViewShouldUseLargerFonts:width > 350.0];
  [v12 setHasScrollView:1];
  [v12 setScrollViewFrame:RoundRectToPixel(0.0)];
  [v12 setScrollViewContentSize:{width * 3.0, v8 - v7}];
  [v12 setInfoViewInScrollView:1];
  [v12 setChartViewInScrollView:1];
  [v12 setNewsViewInScrollView:1];
  [v12 setHasBlurView:1];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  [v12 setBlurViewFrame:RoundRectToPixel(0.0)];

  [v12 setHasGrayView:1];
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen5 scale];
  [v12 setGrayViewFrame:RoundRectToPixel(0.0)];

  [v12 setHasSecondaryGrayView:0];
  [v12 setSecondaryGrayViewFrame:RoundRectToPixel(0.0)];
  [v12 setListViewRowCount:v6];
  [v12 setStatusViewCenteringRatio:0.5];
  [v12 setHasStatusView:1];
  [v12 setStatusViewFrame:{0.0, v8, width, 44.0}];
  [v12 setHasStatusViewDivider:0];
  mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen6 scale];
  [v12 setStatusViewDividerFrame:RoundRectToPixel(0.0)];

  [v12 setHasPrimaryHorizontalDivider:0];
  [v12 setHasSecondaryHorizontalDivider:0];
  [v12 setHasPrimaryVerticalDivider:0];
  [v12 listViewFrame];
  MaxX = CGRectGetMaxX(v29);
  mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen7 scale];
  [v12 listViewFrame];
  [v12 setPrimaryVerticalDividerFrame:RoundRectToPixel(MaxX)];

  [v12 setHasSecondaryVerticalDivider:0];
  v21 = +[StockChartDisplayMode defaultDisplayMode];
  [v21 setMaxInterval:6];
  [v21 setGraphOverlapsYAxisLabels:1];
  v22 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
  [v21 setXAxisKeylineColor:v22];

  v23 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.4];
  [v21 setAxisLabelsColor:v23];

  [v21 setYAxisLabelCount:2];
  [v21 setChartSize:{width, v13}];
  mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen8 _referenceBounds];
  v26 = v25;

  if (v26 == 736.0)
  {
    [v21 setHorizontalGridlineCount:4];
  }

  [v12 setChartDisplayMode:{v21, 0x4046000000000000}];

  return v12;
}

+ (id)twoColumnsPortraitLayoutForSize:(CGSize)size
{
  width = size.width;
  v4 = size.height + -64.0;
  v5 = objc_alloc_init(self);
  [v5 setListViewFrame:RoundRectToPixel(0.0)];
  [v5 setInfoViewFrame:RoundRectToPixel(width * 0.4)];
  [v5 setChartViewFrame:RoundRectToPixel(width * 0.4)];
  [v5 setNewsViewFrame:RoundRectToPixel(0.0)];
  [v5 setListViewContentInsets:{0.0, 0.0, v4 * 0.5 + 44.0, 0.0}];
  [v5 setNewsViewShouldUseLargerFonts:1];
  [v5 setHasScrollView:0];
  [v5 setScrollViewFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setScrollViewContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [v5 setInfoViewInScrollView:0];
  [v5 setChartViewInScrollView:0];
  [v5 setNewsViewInScrollView:0];
  [v5 setBlurViewFrame:{0.0, v4 * 0.5 + 20.0, width, v4 * 0.5 + 44.0}];
  [v5 setHasBlurView:1];
  [v5 setHasGrayView:1];
  [v5 setGrayViewFrame:RoundRectToPixel(width * 0.4)];
  [v5 setHasSecondaryGrayView:1];
  [v5 setSecondaryGrayViewFrame:RoundRectToPixel(0.0)];
  [v5 setStatusViewCenteringRatio:0.5];
  [v5 setHasStatusView:1];
  [v5 setStatusViewFrame:RoundRectToPixel(0.0)];
  [v5 setHasStatusViewDivider:1];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [v5 setStatusViewDividerFrame:RoundRectToPixel(0.0)];

  [v5 setHasPrimaryHorizontalDivider:1];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  [v5 setPrimaryHorizontalDividerFrame:RoundRectToPixel(0.0)];

  [v5 setHasSecondaryHorizontalDivider:0];
  [v5 setHasPrimaryVerticalDivider:1];
  [v5 listViewFrame];
  MaxX = CGRectGetMaxX(v14);
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  [v5 setPrimaryVerticalDividerFrame:RoundRectToPixel(MaxX)];

  [v5 setHasSecondaryVerticalDivider:0];
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  [v5 setSecondaryVerticalDividerFrame:RoundRectToPixel(width)];

  v11 = +[StockChartDisplayMode defaultDisplayMode];
  [v11 setVolumeHeight:RoundToPixel(18.0)];
  [v11 setMaxInterval:6];
  [v11 setYAxisLabelCount:2];
  [v11 setHorizontalGridlineCount:4];
  [v11 setGraphOverlapsYAxisLabels:1];
  [v11 setChartSize:{width * 0.6, v4 * 0.5 * 0.5}];
  [v5 setChartDisplayMode:v11];

  return v5;
}

+ (id)fullScreenChartLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(self);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  [v5 setListViewFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  [v5 setInfoViewFrame:RoundRectToPixel(width * 0.4)];
  [v5 setChartViewFrame:RoundRectToPixel(width)];
  [v5 setNewsViewFrame:{width, height, width * 0.6, height}];
  [v5 setHasScrollView:1];
  [v5 setScrollViewFrame:RoundRectToPixel(0.0)];
  [v5 setScrollViewContentSize:{width * 3.0, height}];
  [v5 setInfoViewInScrollView:0];
  [v5 setChartViewInScrollView:1];
  [v5 setNewsViewInScrollView:0];
  [v5 setBlurViewFrame:{v6, v7, v8, v9}];
  [v5 setHasBlurView:0];
  [v5 setStatusViewCenteringRatio:0.7];
  [v5 setHasStatusView:1];
  [v5 setStatusViewFrame:RoundRectToPixel(0.0)];
  [v5 setChartViewHasTapGesture:height >= 376.0];
  [v5 setHasStatusViewDivider:0];
  [v5 setHasPrimaryHorizontalDivider:0];
  [v5 setHasSecondaryHorizontalDivider:0];
  [v5 setHasPrimaryVerticalDivider:0];
  [v5 setHasSecondaryVerticalDivider:0];
  v10 = +[StockChartDisplayMode defaultDisplayMode];
  [v10 setMaxInterval:8];
  [v10 setShowsPriceLabelForPreviousClose:1];
  v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
  [v10 setXAxisKeylineColor:v11];

  [v10 setYAxisLabelCount:5];
  [v10 setHorizontalGridlineCount:{objc_msgSend(v10, "yAxisLabelCount")}];
  [v10 setUsesDetailedAxisLabels:1];
  [v10 setShowsTitle:1.0];
  [v10 setHUDEnabled:1];
  [v10 setChartSize:{width, height}];
  [v5 setChartDisplayMode:v10];
  [v5 setHasBlackView:1];
  [v5 setIsFullScreenChart:1];

  return v5;
}

+ (id)twoColumnsLandscapeLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = width - (-1.0 / v9 + width * 0.4);

    v11 = width * 0.6;
    v22 = 0.0;
    v23 = 0.3;
    v24 = width * 0.6;
    v12 = width * 0.6;
  }

  else
  {
    v12 = width * 0.6;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v24 = -1.0 / v14 + width * 0.4;

    v11 = 0.0;
    v22 = width * 0.6;
    v23 = 0.7;
    v10 = 0.0;
  }

  if (userInterfaceLayoutDirection)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = width * 0.4;
  }

  v16 = objc_alloc_init(self);
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  [v16 setListViewFrame:RoundRectToPixel(v10)];

  [v16 setInfoViewFrame:RoundRectToPixel(v11)];
  [v16 setChartViewFrame:RoundRectToPixel(v11)];
  [v16 setNewsViewFrame:RoundRectToPixel(v22)];
  [v16 setHasScrollView:1];
  [v16 setScrollViewFrame:RoundRectToPixel(v15)];
  [v16 setScrollViewContentSize:{(width + width) * 0.6, height + -44.0}];
  [v16 setInfoViewInScrollView:1];
  [v16 setChartViewInScrollView:1];
  [v16 setNewsViewInScrollView:1];
  [v16 setHasBlurView:0];
  [v16 setBlurViewFrame:RoundRectToPixel(v15)];
  [v16 setHasGrayView:1];
  [v16 setGrayViewFrame:RoundRectToPixel(v15)];
  [v16 setHasSecondaryGrayView:0];
  [v16 setSecondaryGrayViewFrame:RoundRectToPixel(0.0)];
  [v16 setStatusViewCenteringRatio:v23];
  [v16 setHasStatusView:1];
  [v16 setStatusViewFrame:RoundRectToPixel(0.0)];
  [v16 setChartViewHasTapGesture:1];
  [v16 setHasStatusViewDivider:1];
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  [v16 setStatusViewDividerFrame:RoundRectToPixel(0.0)];

  [v16 setHasPrimaryHorizontalDivider:0];
  [v16 setHasSecondaryHorizontalDivider:0];
  [v16 setHasPrimaryVerticalDivider:1];
  mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen5 scale];
  [v16 setPrimaryVerticalDividerFrame:RoundRectToPixel(v24)];

  [v16 setHasSecondaryVerticalDivider:1];
  v20 = +[StockChartDisplayMode defaultDisplayMode];
  [v20 setVolumeHeight:RoundToPixel(12.0)];
  [v20 setMaxInterval:6];
  [v20 setYAxisLabelCount:2];
  [v20 setHorizontalGridlineCount:3];
  [v20 setGraphOverlapsYAxisLabels:1];
  [v20 setChartSize:{v12, (height + -44.0) * 0.5}];
  [v16 setChartDisplayMode:v20];

  return v16;
}

+ (id)threeColumnsLandscapeLayoutForSize:(CGSize)size
{
  width = size.width;
  v4 = size.height + -64.0;
  v5 = objc_alloc_init(self);
  [v5 setListViewFrame:RoundRectToPixel(0.0)];
  [v5 setInfoViewFrame:RoundRectToPixel(width * 0.3)];
  [v5 setChartViewFrame:RoundRectToPixel(width * 0.65)];
  [v5 setNewsViewFrame:RoundRectToPixel(width * 0.3)];
  [v5 setNewsViewShouldUseLargerFonts:1];
  [v5 setHasScrollView:0];
  [v5 setScrollViewFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setScrollViewContentSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [v5 setInfoViewInScrollView:0];
  [v5 setChartViewInScrollView:0];
  [v5 setNewsViewInScrollView:0];
  [v5 setHasBlurView:0];
  [v5 setBlurViewFrame:RoundRectToPixel(width * 0.3)];
  [v5 setHasGrayView:1];
  [v5 setGrayViewFrame:RoundRectToPixel(width * 0.3)];
  [v5 setHasSecondaryGrayView:1];
  [v5 setSecondaryGrayViewFrame:RoundRectToPixel(width * 0.3)];
  [v5 setStatusViewCenteringRatio:0.65];
  [v5 setHasStatusView:1];
  [v5 setStatusViewFrame:RoundRectToPixel(0.0)];
  [v5 setHasStatusViewDivider:1];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [v5 setStatusViewDividerFrame:RoundRectToPixel(0.0)];

  [v5 setHasPrimaryHorizontalDivider:1];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  [v5 setPrimaryHorizontalDividerFrame:RoundRectToPixel(width * 0.3)];

  [v5 setHasSecondaryHorizontalDivider:0];
  [v5 setHasPrimaryVerticalDivider:1];
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  [v5 setPrimaryVerticalDividerFrame:RoundRectToPixel(width * 0.3)];

  [v5 setHasSecondaryVerticalDivider:1];
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  [v5 setSecondaryVerticalDividerFrame:RoundRectToPixel(width * 0.65)];

  v10 = +[StockChartDisplayMode defaultDisplayMode];
  [v10 setVolumeHeight:RoundToPixel(18.0)];
  [v10 setMaxInterval:6];
  [v10 setYAxisLabelCount:2];
  [v10 setHorizontalGridlineCount:4];
  [v10 setGraphOverlapsYAxisLabels:1];
  [v10 setChartSize:{width * 0.7 * 0.5, v4 * 0.5}];
  [v5 setChartDisplayMode:v10];

  return v5;
}

+ (unint64_t)numberOfRowsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = CGRectGetHeight(v17);

  v7 = 20.0;
  if (v6 - height > 1.0)
  {
    v7 = 0.0;
  }

  v8 = height - v7;
  v9 = -1;
  do
  {
    v10 = width / (v8 + (v9 + 2) * -56.0);
    ++v9;
  }

  while (v10 < 1.25);
  if (v10 > 1.51)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 _referenceBounds];
  v14 = v13;

  v15 = 7;
  if (v11 < 7)
  {
    v15 = v11;
  }

  if (v14 == 812.0)
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  [(StocksLayout *)self listViewFrame];
  v3 = NSStringFromCGRect(v18);
  [(StocksLayout *)self infoViewFrame];
  v4 = NSStringFromCGRect(v19);
  v5 = @"YES";
  if ([(StocksLayout *)self infoViewInScrollView])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(StocksLayout *)self chartViewFrame];
  v7 = NSStringFromCGRect(v20);
  if ([(StocksLayout *)self chartViewInScrollView])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [(StocksLayout *)self newsViewFrame];
  v9 = NSStringFromCGRect(v21);
  if ([(StocksLayout *)self newsViewInScrollView])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (![(StocksLayout *)self hasScrollView])
  {
    v5 = @"NO";
  }

  [(StocksLayout *)self scrollViewFrame];
  v11 = NSStringFromCGRect(v22);
  [(StocksLayout *)self scrollViewContentSize];
  v12 = NSStringFromCGSize(v17);
  v13 = [v15 stringWithFormat:@"listView\n\t-frame: %@\ninfoView\n\t-frame: %@\n\t-in scrollview: %@\nchartView\n\t-frame: %@\n\t-in scrollview: %@\nnewsView\n\t-frame: %@\n\t-in scrollview: %@\nscrollView\n\t-present: %@\n\t-frame: %@\n\t-content size: %@", v3, v4, v6, v7, v8, v9, v10, v5, v11, v12];

  return v13;
}

- (CGRect)listViewFrame
{
  x = self->_listViewFrame.origin.x;
  y = self->_listViewFrame.origin.y;
  width = self->_listViewFrame.size.width;
  height = self->_listViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)infoViewFrame
{
  x = self->_infoViewFrame.origin.x;
  y = self->_infoViewFrame.origin.y;
  width = self->_infoViewFrame.size.width;
  height = self->_infoViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)chartViewFrame
{
  x = self->_chartViewFrame.origin.x;
  y = self->_chartViewFrame.origin.y;
  width = self->_chartViewFrame.size.width;
  height = self->_chartViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)newsViewFrame
{
  x = self->_newsViewFrame.origin.x;
  y = self->_newsViewFrame.origin.y;
  width = self->_newsViewFrame.size.width;
  height = self->_newsViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)listViewContentInsets
{
  top = self->_listViewContentInsets.top;
  left = self->_listViewContentInsets.left;
  bottom = self->_listViewContentInsets.bottom;
  right = self->_listViewContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)scrollViewFrame
{
  x = self->_scrollViewFrame.origin.x;
  y = self->_scrollViewFrame.origin.y;
  width = self->_scrollViewFrame.size.width;
  height = self->_scrollViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)scrollViewContentSize
{
  width = self->_scrollViewContentSize.width;
  height = self->_scrollViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)blurViewFrame
{
  x = self->_blurViewFrame.origin.x;
  y = self->_blurViewFrame.origin.y;
  width = self->_blurViewFrame.size.width;
  height = self->_blurViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)grayViewFrame
{
  x = self->_grayViewFrame.origin.x;
  y = self->_grayViewFrame.origin.y;
  width = self->_grayViewFrame.size.width;
  height = self->_grayViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondaryGrayViewFrame
{
  x = self->_secondaryGrayViewFrame.origin.x;
  y = self->_secondaryGrayViewFrame.origin.y;
  width = self->_secondaryGrayViewFrame.size.width;
  height = self->_secondaryGrayViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)statusViewFrame
{
  x = self->_statusViewFrame.origin.x;
  y = self->_statusViewFrame.origin.y;
  width = self->_statusViewFrame.size.width;
  height = self->_statusViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)statusViewDividerFrame
{
  x = self->_statusViewDividerFrame.origin.x;
  y = self->_statusViewDividerFrame.origin.y;
  width = self->_statusViewDividerFrame.size.width;
  height = self->_statusViewDividerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)primaryHorizontalDividerFrame
{
  x = self->_primaryHorizontalDividerFrame.origin.x;
  y = self->_primaryHorizontalDividerFrame.origin.y;
  width = self->_primaryHorizontalDividerFrame.size.width;
  height = self->_primaryHorizontalDividerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondaryHorizontalDividerFrame
{
  x = self->_secondaryHorizontalDividerFrame.origin.x;
  y = self->_secondaryHorizontalDividerFrame.origin.y;
  width = self->_secondaryHorizontalDividerFrame.size.width;
  height = self->_secondaryHorizontalDividerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)primaryVerticalDividerFrame
{
  x = self->_primaryVerticalDividerFrame.origin.x;
  y = self->_primaryVerticalDividerFrame.origin.y;
  width = self->_primaryVerticalDividerFrame.size.width;
  height = self->_primaryVerticalDividerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)secondaryVerticalDividerFrame
{
  x = self->_secondaryVerticalDividerFrame.origin.x;
  y = self->_secondaryVerticalDividerFrame.origin.y;
  width = self->_secondaryVerticalDividerFrame.size.width;
  height = self->_secondaryVerticalDividerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end