@interface _UIPrototypingMenuBoolCell
- (_UIPrototypingMenuBoolCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_prototypingSettingDidChange;
- (void)_switchDidChangeValue:(id)a3;
@end

@implementation _UIPrototypingMenuBoolCell

- (_UIPrototypingMenuBoolCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UIPrototypingMenuBoolCell;
  v4 = [(_UIPrototypingMenuCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UISwitch alloc];
    v6 = [(UISwitch *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    valueSwitch = v4->_valueSwitch;
    v4->_valueSwitch = v6;

    [(UIView *)v4->_valueSwitch sizeToFit];
    [(UIControl *)v4->_valueSwitch addTarget:v4 action:sel__switchDidChangeValue_ forControlEvents:4096];
    v8 = [(_UIPrototypingMenuCell *)v4 stackView];
    [v8 addArrangedSubview:v4->_valueSwitch];

    [(UITableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)_prototypingSettingDidChange
{
  v7.receiver = self;
  v7.super_class = _UIPrototypingMenuBoolCell;
  [(_UIPrototypingMenuCell *)&v7 _prototypingSettingDidChange];
  v3 = [(_UIPrototypingMenuCell *)self prototypingSetting];
  v4 = [v3 currentValue];
  v5 = [v4 BOOLValue];
  v6 = [(_UIPrototypingMenuBoolCell *)self valueSwitch];
  [v6 setOn:v5];
}

- (void)_switchDidChangeValue:(id)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "isOn")}];
  v4 = [(_UIPrototypingMenuCell *)self prototypingSetting];
  [v4 setCurrentValue:v5];
}

@end