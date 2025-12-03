@interface PKMultiLineButtonTableViewSettingsRow
- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path;
@end

@implementation PKMultiLineButtonTableViewSettingsRow

- (id)tableViewCellForTableView:(id)view atIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = PKMultiLineButtonTableViewSettingsRow;
  v4 = [(PKButtonTableViewSettingsRow *)&v7 tableViewCellForTableView:view atIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

@end