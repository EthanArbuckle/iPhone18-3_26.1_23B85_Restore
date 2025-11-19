@interface PRRESwitchTableViewCell
- (PRRESwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_currentValue;
- (void)_setCurrentValue:(id)a3;
@end

@implementation PRRESwitchTableViewCell

- (PRRESwitchTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PRRESwitchTableViewCell;
  v4 = [(PRRESwitchTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v6 = v4->_switch;
    v4->_switch = v5;

    [(UISwitch *)v4->_switch addTarget:v4 action:sel__valueChanged_ forControlEvents:4096];
    [(PRRESwitchTableViewCell *)v4 setAccessoryView:v4->_switch];
  }

  return v4;
}

- (id)_currentValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(UISwitch *)self->_switch isOn];

  return [v2 numberWithBool:v3];
}

- (void)_setCurrentValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = self->_switch;
  v9 = [v7 BOOLValue];

  [(UISwitch *)v8 setOn:v9];
}

@end