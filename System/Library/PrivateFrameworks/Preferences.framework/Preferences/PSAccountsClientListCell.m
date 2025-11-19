@interface PSAccountsClientListCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSAccountsClientListCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = PSAccountsClientListCell;
  v4 = a3;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSAccountsClientListCell *)self textLabel:v11.receiver];
  v6 = [v4 name];
  [v5 setText:v6];

  v7 = [(PSAccountsClientListCell *)self detailTextLabel];
  v8 = [v4 propertyForKey:@"cellSubtitleText"];

  [v7 setText:v8];
  v9 = [(PSAccountsClientListCell *)self detailTextLabel];
  v10 = [MEMORY[0x1E69DC888] grayColor];
  [v9 setTextColor:v10];

  [(PSAccountsClientListCell *)self setNeedsLayout];
}

@end