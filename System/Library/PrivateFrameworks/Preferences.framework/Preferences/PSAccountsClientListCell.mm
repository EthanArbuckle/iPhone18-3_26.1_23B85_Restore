@interface PSAccountsClientListCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSAccountsClientListCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = PSAccountsClientListCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PSAccountsClientListCell *)self textLabel:v11.receiver];
  name = [specifierCopy name];
  [v5 setText:name];

  detailTextLabel = [(PSAccountsClientListCell *)self detailTextLabel];
  v8 = [specifierCopy propertyForKey:@"cellSubtitleText"];

  [detailTextLabel setText:v8];
  detailTextLabel2 = [(PSAccountsClientListCell *)self detailTextLabel];
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [detailTextLabel2 setTextColor:grayColor];

  [(PSAccountsClientListCell *)self setNeedsLayout];
}

@end