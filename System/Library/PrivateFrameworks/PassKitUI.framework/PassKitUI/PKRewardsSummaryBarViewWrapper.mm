@interface PKRewardsSummaryBarViewWrapper
- (PKRewardsSummaryBarViewWrapper)initWithBarView:(id)view configuration:(id)configuration;
- (void)layoutSubviews;
@end

@implementation PKRewardsSummaryBarViewWrapper

- (PKRewardsSummaryBarViewWrapper)initWithBarView:(id)view configuration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PKRewardsSummaryBarViewWrapper;
  v9 = [(PKRewardsSummaryBarViewWrapper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_barView, view);
    [(PKSegmentedBarView *)v10->_barView setRoundBaselineCorners:1];
    [(PKSegmentedBarView *)v10->_barView setUseSmallCornerRadius:0];
    [(PKSegmentedBarView *)v10->_barView setShowPlaceholder:1];
    barView = v10->_barView;
    v12 = PKRewardsHubIncompleteProgressGrayColor();
    [(PKSegmentedBarView *)barView setPlaceholderColor:v12];

    [(PKRewardsSummaryBarViewWrapper *)v10 addSubview:v10->_barView];
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (void)layoutSubviews
{
  [(PKRewardsSummaryBarViewWrapper *)self bounds];
  v4 = v3;
  [(PKSegmentedBarView *)self->_barView setFrame:?];
  barView = self->_barView;
  configuration = self->_configuration;

  [(PKSegmentedBarView *)barView configureWithBarConfiguration:configuration axis:0 maximumLength:1 barLength:&__block_literal_global_145 synchronous:v4 completion:v4];
}

@end