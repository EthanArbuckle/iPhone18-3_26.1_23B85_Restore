@interface SearchUIScreenTimeCollectionCell
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIScreenTimeCollectionCell

- (void)updateWithRowModel:(id)model
{
  v10.receiver = self;
  v10.super_class = SearchUIScreenTimeCollectionCell;
  modelCopy = model;
  [(SearchUICollectionViewCell *)&v10 updateWithRowModel:modelCopy];
  v5 = [(SearchUIScreenTimeCollectionCell *)self screenTimeView:v10.receiver];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(SearchUIScreenTimeCollectionCell *)self setScreenTimeView:v6];

    contentView = [(SearchUIScreenTimeCollectionCell *)self contentView];
    screenTimeView = [(SearchUIScreenTimeCollectionCell *)self screenTimeView];
    [contentView addSubview:screenTimeView];
  }

  screenTimeView2 = [(SearchUIScreenTimeCollectionCell *)self screenTimeView];
  [screenTimeView2 updateWithRowModel:modelCopy];
}

@end