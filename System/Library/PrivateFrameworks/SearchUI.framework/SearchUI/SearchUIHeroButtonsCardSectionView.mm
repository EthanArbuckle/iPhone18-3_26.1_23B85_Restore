@interface SearchUIHeroButtonsCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIHeroButtonsCardSectionView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setCountMoreButtonTowardsMaxCount:0];
  [v3 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  v4 = [(SearchUICardSectionView *)self rowModel];
  if ([v4 sectionType] == 3)
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

- (void)updateWithRowModel:(id)a3
{
  v11.receiver = self;
  v11.super_class = SearchUIHeroButtonsCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v11 updateWithRowModel:v4];
  v5 = [(SearchUICardSectionView *)self section:v11.receiver];
  v6 = [v5 buttons];
  [v6 count];

  v7 = [(SearchUICardSectionView *)self contentView];
  v8 = [(SearchUICardSectionView *)self section];
  v9 = [v8 buttons];
  v10 = [(SearchUICardSectionView *)self feedbackDelegate];
  [v7 updateWithButtonItems:v9 maxButtonItems:2 buttonItemViewType:2 rowModel:v4 feedbackDelegate:v10];
}

@end