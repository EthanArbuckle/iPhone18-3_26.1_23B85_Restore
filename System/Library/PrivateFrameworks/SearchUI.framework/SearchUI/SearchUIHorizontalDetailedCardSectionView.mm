@interface SearchUIHorizontalDetailedCardSectionView
- (id)setupContentView;
- (void)setFeedbackDelegate:(id)delegate;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIHorizontalDetailedCardSectionView

- (id)setupContentView
{
  v3 = [SearchUIDetailedView alloc];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [(SearchUIDetailedView *)v3 initWithFeedbackDelegate:feedbackDelegate];

  [(SearchUIDetailedView *)v5 setIsVerticalAlignment:1];
  [(SearchUIDetailedView *)v5 setButtonDelegate:self];

  return v5;
}

- (void)updateWithRowModel:(id)model
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontalDetailedCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v6 updateWithRowModel:modelCopy];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 updateWithRowModel:modelCopy];
}

- (void)setFeedbackDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontalDetailedCardSectionView;
  delegateCopy = delegate;
  [(SearchUICardSectionView *)&v6 setFeedbackDelegate:delegateCopy];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

@end