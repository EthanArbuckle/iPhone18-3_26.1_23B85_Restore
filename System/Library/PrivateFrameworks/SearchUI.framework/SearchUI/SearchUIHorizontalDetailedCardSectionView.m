@interface SearchUIHorizontalDetailedCardSectionView
- (id)setupContentView;
- (void)setFeedbackDelegate:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIHorizontalDetailedCardSectionView

- (id)setupContentView
{
  v3 = [SearchUIDetailedView alloc];
  v4 = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [(SearchUIDetailedView *)v3 initWithFeedbackDelegate:v4];

  [(SearchUIDetailedView *)v5 setIsVerticalAlignment:1];
  [(SearchUIDetailedView *)v5 setButtonDelegate:self];

  return v5;
}

- (void)updateWithRowModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontalDetailedCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v6 updateWithRowModel:v4];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 updateWithRowModel:v4];
}

- (void)setFeedbackDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIHorizontalDetailedCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v6 setFeedbackDelegate:v4];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 setFeedbackDelegate:v4];
}

@end