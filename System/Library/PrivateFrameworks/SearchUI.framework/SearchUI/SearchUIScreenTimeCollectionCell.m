@interface SearchUIScreenTimeCollectionCell
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIScreenTimeCollectionCell

- (void)updateWithRowModel:(id)a3
{
  v10.receiver = self;
  v10.super_class = SearchUIScreenTimeCollectionCell;
  v4 = a3;
  [(SearchUICollectionViewCell *)&v10 updateWithRowModel:v4];
  v5 = [(SearchUIScreenTimeCollectionCell *)self screenTimeView:v10.receiver];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(SearchUIScreenTimeCollectionCell *)self setScreenTimeView:v6];

    v7 = [(SearchUIScreenTimeCollectionCell *)self contentView];
    v8 = [(SearchUIScreenTimeCollectionCell *)self screenTimeView];
    [v7 addSubview:v8];
  }

  v9 = [(SearchUIScreenTimeCollectionCell *)self screenTimeView];
  [v9 updateWithRowModel:v4];
}

@end