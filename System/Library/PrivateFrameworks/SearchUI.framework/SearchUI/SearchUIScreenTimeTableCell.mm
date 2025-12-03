@interface SearchUIScreenTimeTableCell
- (SearchUIScreenTimeTableCell)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIScreenTimeTableCell

- (SearchUIScreenTimeTableCell)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = SearchUIScreenTimeTableCell;
  v7 = [(SearchUITableViewCell *)&v12 initWithRowModel:modelCopy feedbackDelegate:delegate];
  if (v7)
  {
    v8 = objc_opt_new();
    [(SearchUITableViewCell *)v7 setSizingContainer:v8];

    contentView = [(SearchUIScreenTimeTableCell *)v7 contentView];
    sizingContainer = [(SearchUITableViewCell *)v7 sizingContainer];
    [contentView addSubview:sizingContainer];

    [(SearchUIScreenTimeTableCell *)v7 updateWithRowModel:modelCopy];
  }

  return v7;
}

- (void)updateWithRowModel:(id)model
{
  v6.receiver = self;
  v6.super_class = SearchUIScreenTimeTableCell;
  modelCopy = model;
  [(SearchUITableViewCell *)&v6 updateWithRowModel:modelCopy];
  v5 = [(SearchUITableViewCell *)self sizingContainer:v6.receiver];
  [v5 updateWithRowModel:modelCopy];
}

@end