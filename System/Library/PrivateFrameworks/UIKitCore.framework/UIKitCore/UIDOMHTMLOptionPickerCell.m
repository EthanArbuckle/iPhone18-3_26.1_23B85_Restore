@interface UIDOMHTMLOptionPickerCell
- (UIDOMHTMLOptionPickerCell)initWithHTMLOptionNode:(id)a3;
- (id)initCommon;
@end

@implementation UIDOMHTMLOptionPickerCell

- (id)initCommon
{
  v5.receiver = self;
  v5.super_class = UIDOMHTMLOptionPickerCell;
  v2 = [(UIView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UILabel *)[(UIPickerContentView *)v2 titleLabel] setLineBreakMode:5];
  }

  return v3;
}

- (UIDOMHTMLOptionPickerCell)initWithHTMLOptionNode:(id)a3
{
  v4 = [(UIDOMHTMLOptionPickerCell *)self initCommon];
  if (v4)
  {
    -[UILabel setText:](-[UIPickerContentView titleLabel](v4, "titleLabel"), "setText:", [a3 itemTitle]);
    -[UIPickerContentView setChecked:](v4, "setChecked:", [a3 selected]);
    -[UIDOMHTMLOptionPickerCell setDisabled:](v4, "setDisabled:", [a3 disabled]);
    if ([(UIDOMHTMLOptionPickerCell *)v4 disabled])
    {
      [(UILabel *)[(UIPickerContentView *)v4 titleLabel] setTextColor:[UIColor colorWithWhite:0.0 alpha:0.3]];
    }
  }

  return v4;
}

@end