@interface SKUIReviewsHistogramViewController
- (UIControl)appSupportButton;
- (UIControl)segmentedControl;
- (UIControl)starRatingControl;
- (UIControl)writeAReviewButton;
- (id)_histogramView;
- (int64_t)selectedSegmentIndex;
- (void)_reloadHistogram;
- (void)loadView;
- (void)setPersonalStarRating:(int64_t)a3;
- (void)setReviewList:(id)a3;
- (void)setSegmentedControlTitles:(id)a3;
- (void)setSelectedSegmentIndex:(int64_t)a3;
- (void)setVersionString:(id)a3;
@end

@implementation SKUIReviewsHistogramViewController

- (UIControl)appSupportButton
{
  v2 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  v3 = [v2 appSupportButton];

  return v3;
}

- (UIControl)segmentedControl
{
  v2 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  v3 = [v2 segmentedControl];

  return v3;
}

- (int64_t)selectedSegmentIndex
{
  histogramView = self->_histogramView;
  if (histogramView)
  {
    return [(SKUIReviewsHistogramView *)histogramView selectedSegmentIndex];
  }

  else
  {
    return -1;
  }
}

- (void)setPersonalStarRating:(int64_t)a3
{
  v4 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  [v4 setPersonalStarRating:a3];
}

- (void)setReviewList:(id)a3
{
  v5 = a3;
  if (self->_reviewList != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_reviewList, a3);
    [(SKUIReviewsHistogramViewController *)self _reloadHistogram];
    v5 = v6;
  }
}

- (void)setSegmentedControlTitles:(id)a3
{
  v4 = a3;
  v5 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  [v5 setSegmentedControlTitles:v4];
}

- (void)setSelectedSegmentIndex:(int64_t)a3
{
  v4 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  [v4 setSelectedSegmentIndex:a3];
}

- (void)setVersionString:(id)a3
{
  v4 = a3;
  v5 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  [v5 setVersionString:v4];
}

- (UIControl)starRatingControl
{
  v2 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  v3 = [v2 starRatingControl];

  return v3;
}

- (UIControl)writeAReviewButton
{
  v2 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  v3 = [v2 writeAReviewButton];

  return v3;
}

- (void)loadView
{
  v3 = [(SKUIReviewsHistogramViewController *)self _histogramView];
  [(SKUIReviewsHistogramViewController *)self setView:v3];
}

- (id)_histogramView
{
  histogramView = self->_histogramView;
  if (!histogramView)
  {
    v4 = [[SKUIReviewsHistogramView alloc] initWithClientContext:self->_clientContext];
    v5 = self->_histogramView;
    self->_histogramView = v4;

    v6 = self->_histogramView;
    clientContext = self->_clientContext;
    if (SKUIUserInterfaceIdiom(clientContext) == 1)
    {
      v8 = @"REVIEWS_HISTOGRAM_TITLE_IPAD";
    }

    else
    {
      v8 = @"REVIEWS_HISTOGRAM_TITLE_IPHONE";
    }

    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:v8 inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:v8 inBundles:0 inTable:@"ProductPage"];
    }
    v9 = ;
    [(SKUIReviewsHistogramView *)v6 setTitle:v9];

    [(SKUIReviewsHistogramViewController *)self _reloadHistogram];
    histogramView = self->_histogramView;
  }

  return histogramView;
}

- (void)_reloadHistogram
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = [(SKUIReviewList *)self->_reviewList ratingCount];
  v8 = v7;
  [(SKUIReviewsHistogramView *)self->_histogramView setNumberOfUserRatings:v7];
  histogramView = self->_histogramView;
  if (v7)
  {
    v9 = MEMORY[0x277CCABB0];
    *&v10 = [(SKUIReviewList *)self->_reviewList oneStarRatingCount]/ v8;
    v2 = [v9 numberWithFloat:v10];
    v24 = v2;
    v11 = MEMORY[0x277CCABB0];
    *&v12 = [(SKUIReviewList *)self->_reviewList twoStarRatingCount]/ v8;
    v3 = [v11 numberWithFloat:v12];
    v25 = v3;
    v13 = MEMORY[0x277CCABB0];
    *&v14 = [(SKUIReviewList *)self->_reviewList threeStarRatingCount]/ v8;
    v4 = [v13 numberWithFloat:v14];
    v26 = v4;
    v15 = MEMORY[0x277CCABB0];
    *&v16 = [(SKUIReviewList *)self->_reviewList fourStarRatingCount]/ v8;
    v5 = [v15 numberWithFloat:v16];
    v27 = v5;
    v17 = MEMORY[0x277CCABB0];
    *&v18 = [(SKUIReviewList *)self->_reviewList fiveStarRatingCount]/ v8;
    v19 = [v17 numberWithFloat:v18];
  }

  else
  {
    v19 = &unk_2828D2CD8;
    v24 = &unk_2828D2CD8;
    v25 = &unk_2828D2CD8;
    v26 = &unk_2828D2CD8;
    v27 = &unk_2828D2CD8;
  }

  v28 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:5];
  [(SKUIReviewsHistogramView *)histogramView setHistogramValues:v20];

  if (v7)
  {
  }

  v21 = self->_histogramView;
  [(SKUIReviewList *)self->_reviewList userRating];
  [(SKUIReviewsHistogramView *)v21 setUserRating:(v22 / 5.0)];
}

@end