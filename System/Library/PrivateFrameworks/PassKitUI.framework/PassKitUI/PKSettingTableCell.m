@interface PKSettingTableCell
- (PKSettingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PKSettingTableCell)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (SEL)action;
- (id)target;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setOn:(BOOL)a3 notify:(BOOL)a4;
- (void)setTarget:(id)a3 action:(SEL)a4;
- (void)showSpinner:(BOOL)a3;
@end

@implementation PKSettingTableCell

- (PKSettingTableCell)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PKSettingTableCell *)self initWithStyle:0 reuseIdentifier:0];
  [(PKSettingTableCell *)v10 setTarget:v8 action:a5];

  v11 = [(PKSettingTableCell *)v10 textLabel];
  [v11 setText:v9];

  v12 = [(PKSettingTableCell *)v10 textLabel];
  [v12 setNumberOfLines:0];

  v13 = [(PKSettingTableCell *)v10 textLabel];
  [v13 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v10;
}

- (PKSettingTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = PKSettingTableCell;
  v4 = [(PKSettingTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    settingSwitch = v4->_settingSwitch;
    v4->_settingSwitch = v5;

    [(PKSettingTableCell *)v4 setAccessoryView:v4->_settingSwitch];
    [(PKSettingTableCell *)v4 setSelectionStyle:0];
  }

  v7 = [(PKSettingTableCell *)v4 textLabel];
  [v7 setNumberOfLines:0];

  v8 = [(PKSettingTableCell *)v4 textLabel];
  [v8 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKSettingTableCell;
  [(PKSettingTableCell *)&v2 dealloc];
}

- (void)setOn:(BOOL)a3 notify:(BOOL)a4
{
  v4 = a3;
  if (!a4 && self->_action && (WeakRetained = objc_loadWeakRetained(&self->_target)) != 0)
  {
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    v10 = WeakRetained;
    [(UISwitch *)self->_settingSwitch removeTarget:WeakRetained action:action forControlEvents:4096];
    [(UISwitch *)self->_settingSwitch setOn:v4];
    if (self->_action)
    {
      v9 = self->_action;
    }

    else
    {
      v9 = 0;
    }

    [(UISwitch *)self->_settingSwitch addTarget:v10 action:v9 forControlEvents:4096];
  }

  else
  {
    settingSwitch = self->_settingSwitch;

    [(UISwitch *)settingSwitch setOn:v4];
  }
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  p_action = &self->_action;
  obj = v6;
  if (self->_action)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    if (WeakRetained)
    {
      v9 = WeakRetained;
      if (*p_action)
      {
        v10 = *p_action;
      }

      else
      {
        v10 = 0;
      }

      [(UISwitch *)self->_settingSwitch removeTarget:WeakRetained action:v10 forControlEvents:4096];
    }

    v6 = obj;
  }

  p_target = &self->_target;
  if (v6 && a4)
  {
    objc_storeWeak(p_target, v6);
    *p_action = a4;
    [(UISwitch *)self->_settingSwitch addTarget:obj action:a4 forControlEvents:4096];
  }

  else
  {
    objc_storeWeak(p_target, 0);
    *p_action = 0;
  }
}

- (void)showSpinner:(BOOL)a3
{
  if (self->_showingSpinner != a3)
  {
    v13 = v4;
    v14 = v3;
    self->_showingSpinner = a3;
    if (a3)
    {
      p_spinner = &self->_spinner;
      spinner = self->_spinner;
      if (!spinner)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        v11 = *p_spinner;
        *p_spinner = v10;

        spinner = *p_spinner;
      }

      [(UIActivityIndicatorView *)spinner startAnimating:v13];
    }

    else
    {
      p_spinner = &self->_settingSwitch;
    }

    v12 = *p_spinner;

    [(PKSettingTableCell *)self setAccessoryView:v12];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKSettingTableCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKSettingTableCell *)self showSpinner:0];
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

@end