@interface PKMultiLineButtonTableViewSettingsRow
- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4;
@end

@implementation PKMultiLineButtonTableViewSettingsRow

- (id)tableViewCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKMultiLineButtonTableViewSettingsRow;
  v4 = [(PKButtonTableViewSettingsRow *)&v7 tableViewCellForTableView:a3 atIndexPath:a4];
  v5 = [v4 textLabel];
  [v5 setNumberOfLines:0];

  return v4;
}

@end