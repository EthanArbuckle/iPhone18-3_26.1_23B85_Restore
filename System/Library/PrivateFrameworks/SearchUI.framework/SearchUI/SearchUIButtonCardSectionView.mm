@interface SearchUIButtonCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIButtonCardSectionView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  v9.receiver = self;
  v9.super_class = SearchUIButtonCardSectionView;
  [(SearchUICardSectionView *)&v9 updateWithRowModel:v4];

  v6 = [v5 title];
  v7 = [v6 text];
  v8 = [(SearchUICardSectionView *)self contentView];
  [v8 setTitle:v7];
}

@end