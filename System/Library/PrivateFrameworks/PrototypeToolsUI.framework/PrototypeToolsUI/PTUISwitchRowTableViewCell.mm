@interface PTUISwitchRowTableViewCell
- (PTUISwitchRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_valueChanged:(id)changed;
- (void)updateDisplayedValue;
@end

@implementation PTUISwitchRowTableViewCell

- (PTUISwitchRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = PTUISwitchRowTableViewCell;
  v4 = [(PTUISwitchRowTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75AE8]);
    v6 = v4->_switch;
    v4->_switch = v5;

    v7 = v4->_switch;
    _tableView = [(PTUISwitchRowTableViewCell *)v4 _tableView];
    tintColor = [_tableView tintColor];
    [(UISwitch *)v7 setOnTintColor:tintColor];

    [(UISwitch *)v4->_switch addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    [(PTUISwitchRowTableViewCell *)v4 setAccessoryView:v4->_switch];
  }

  return v4;
}

- (void)updateDisplayedValue
{
  v3 = [(PTUIRowTableViewCell *)self row];
  value = [v3 value];

  -[UISwitch setOn:](self->_switch, "setOn:", [value BOOLValue]);
}

- (void)_valueChanged:(id)changed
{
  isOn = [(UISwitch *)self->_switch isOn];
  v6 = [(PTUIRowTableViewCell *)self row];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:isOn];
  [v6 setValue:v5];
}

@end