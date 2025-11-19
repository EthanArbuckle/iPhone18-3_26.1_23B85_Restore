@interface SearchUIScreenTimeTableCell
- (SearchUIScreenTimeTableCell)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIScreenTimeTableCell

- (SearchUIScreenTimeTableCell)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SearchUIScreenTimeTableCell;
  v7 = [(SearchUITableViewCell *)&v12 initWithRowModel:v6 feedbackDelegate:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    [(SearchUITableViewCell *)v7 setSizingContainer:v8];

    v9 = [(SearchUIScreenTimeTableCell *)v7 contentView];
    v10 = [(SearchUITableViewCell *)v7 sizingContainer];
    [v9 addSubview:v10];

    [(SearchUIScreenTimeTableCell *)v7 updateWithRowModel:v6];
  }

  return v7;
}

- (void)updateWithRowModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIScreenTimeTableCell;
  v4 = a3;
  [(SearchUITableViewCell *)&v6 updateWithRowModel:v4];
  v5 = [(SearchUITableViewCell *)self sizingContainer:v6.receiver];
  [v5 updateWithRowModel:v4];
}

@end