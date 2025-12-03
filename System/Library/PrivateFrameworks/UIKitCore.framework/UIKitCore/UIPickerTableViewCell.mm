@interface UIPickerTableViewCell
- (UIPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_tapAction:(id)action;
@end

@implementation UIPickerTableViewCell

- (UIPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = UIPickerTableViewCell;
  v4 = [(UITableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    traitCollection = [(UIView *)v4 traitCollection];
    v7 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [traitCollection userInterfaceIdiom]);
    style = v5->_style;
    v5->_style = v7;

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel__tapAction_];
    tap = v5->_tap;
    v5->_tap = v9;

    [(UIView *)v5 addGestureRecognizer:v5->_tap];
  }

  return v5;
}

- (void)_tapAction:(id)action
{
  if ([action state] == 3)
  {
    pickerTable = self->pickerTable;
    v5 = [(UITableView *)pickerTable indexPathForCell:self];
    [(UIPickerTableView *)pickerTable tableView:pickerTable didSelectRowAtIndexPath:v5];
  }
}

@end