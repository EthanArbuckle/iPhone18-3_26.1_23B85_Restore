@interface UIPickerTableViewCell
- (UIPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_tapAction:(id)a3;
@end

@implementation UIPickerTableViewCell

- (UIPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIPickerTableViewCell;
  v4 = [(UITableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(UIView *)v4 traitCollection];
    v7 = +[UIPickerView _styleForIdiom:](UIPickerView, "_styleForIdiom:", [v6 userInterfaceIdiom]);
    style = v5->_style;
    v5->_style = v7;

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel__tapAction_];
    tap = v5->_tap;
    v5->_tap = v9;

    [(UIView *)v5 addGestureRecognizer:v5->_tap];
  }

  return v5;
}

- (void)_tapAction:(id)a3
{
  if ([a3 state] == 3)
  {
    pickerTable = self->pickerTable;
    v5 = [(UITableView *)pickerTable indexPathForCell:self];
    [(UIPickerTableView *)pickerTable tableView:pickerTable didSelectRowAtIndexPath:v5];
  }
}

@end