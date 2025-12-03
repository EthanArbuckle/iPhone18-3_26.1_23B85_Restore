@interface SearchUIHeroButtonsCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIHeroButtonsCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setCountMoreButtonTowardsMaxCount:0];
  [v3 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  if ([rowModel sectionType] == 3)
  {
    v5 = 6;
  }

  else
  {
    v5 = 1;
  }

  [v3 setDistribution:v5];

  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  [v3 setLayoutMargins:?];
  [v3 setLayoutMarginsRelativeArrangement:1];

  return v3;
}

- (void)updateWithRowModel:(id)model
{
  v11.receiver = self;
  v11.super_class = SearchUIHeroButtonsCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v11 updateWithRowModel:modelCopy];
  v5 = [(SearchUICardSectionView *)self section:v11.receiver];
  buttons = [v5 buttons];
  [buttons count];

  contentView = [(SearchUICardSectionView *)self contentView];
  section = [(SearchUICardSectionView *)self section];
  buttons2 = [section buttons];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  [contentView updateWithButtonItems:buttons2 maxButtonItems:2 buttonItemViewType:2 rowModel:modelCopy feedbackDelegate:feedbackDelegate];
}

@end