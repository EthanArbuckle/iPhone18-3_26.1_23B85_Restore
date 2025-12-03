@interface UIDOMHTMLOptionPickerCell
- (UIDOMHTMLOptionPickerCell)initWithHTMLOptionNode:(id)node;
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

- (UIDOMHTMLOptionPickerCell)initWithHTMLOptionNode:(id)node
{
  initCommon = [(UIDOMHTMLOptionPickerCell *)self initCommon];
  if (initCommon)
  {
    -[UILabel setText:](-[UIPickerContentView titleLabel](initCommon, "titleLabel"), "setText:", [node itemTitle]);
    -[UIPickerContentView setChecked:](initCommon, "setChecked:", [node selected]);
    -[UIDOMHTMLOptionPickerCell setDisabled:](initCommon, "setDisabled:", [node disabled]);
    if ([(UIDOMHTMLOptionPickerCell *)initCommon disabled])
    {
      [(UILabel *)[(UIPickerContentView *)initCommon titleLabel] setTextColor:[UIColor colorWithWhite:0.0 alpha:0.3]];
    }
  }

  return initCommon;
}

@end