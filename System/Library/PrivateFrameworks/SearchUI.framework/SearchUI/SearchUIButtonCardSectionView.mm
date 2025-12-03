@interface SearchUIButtonCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIButtonCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  v9.receiver = self;
  v9.super_class = SearchUIButtonCardSectionView;
  [(SearchUICardSectionView *)&v9 updateWithRowModel:modelCopy];

  title = [cardSection title];
  text = [title text];
  contentView = [(SearchUICardSectionView *)self contentView];
  [contentView setTitle:text];
}

@end