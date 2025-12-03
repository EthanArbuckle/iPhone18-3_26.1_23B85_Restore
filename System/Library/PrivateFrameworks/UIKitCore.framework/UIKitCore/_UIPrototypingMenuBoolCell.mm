@interface _UIPrototypingMenuBoolCell
- (_UIPrototypingMenuBoolCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_prototypingSettingDidChange;
- (void)_switchDidChangeValue:(id)value;
@end

@implementation _UIPrototypingMenuBoolCell

- (_UIPrototypingMenuBoolCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = _UIPrototypingMenuBoolCell;
  v4 = [(_UIPrototypingMenuCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UISwitch alloc];
    v6 = [(UISwitch *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    valueSwitch = v4->_valueSwitch;
    v4->_valueSwitch = v6;

    [(UIView *)v4->_valueSwitch sizeToFit];
    [(UIControl *)v4->_valueSwitch addTarget:v4 action:sel__switchDidChangeValue_ forControlEvents:4096];
    stackView = [(_UIPrototypingMenuCell *)v4 stackView];
    [stackView addArrangedSubview:v4->_valueSwitch];

    [(UITableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)_prototypingSettingDidChange
{
  v7.receiver = self;
  v7.super_class = _UIPrototypingMenuBoolCell;
  [(_UIPrototypingMenuCell *)&v7 _prototypingSettingDidChange];
  prototypingSetting = [(_UIPrototypingMenuCell *)self prototypingSetting];
  currentValue = [prototypingSetting currentValue];
  bOOLValue = [currentValue BOOLValue];
  valueSwitch = [(_UIPrototypingMenuBoolCell *)self valueSwitch];
  [valueSwitch setOn:bOOLValue];
}

- (void)_switchDidChangeValue:(id)value
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(value, "isOn")}];
  prototypingSetting = [(_UIPrototypingMenuCell *)self prototypingSetting];
  [prototypingSetting setCurrentValue:v5];
}

@end