@interface PKSettingTableCell
- (PKSettingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PKSettingTableCell)initWithTitle:(id)title target:(id)target action:(SEL)action;
- (SEL)action;
- (id)target;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setOn:(BOOL)on notify:(BOOL)notify;
- (void)setTarget:(id)target action:(SEL)action;
- (void)showSpinner:(BOOL)spinner;
@end

@implementation PKSettingTableCell

- (PKSettingTableCell)initWithTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  titleCopy = title;
  v10 = [(PKSettingTableCell *)self initWithStyle:0 reuseIdentifier:0];
  [(PKSettingTableCell *)v10 setTarget:targetCopy action:action];

  textLabel = [(PKSettingTableCell *)v10 textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(PKSettingTableCell *)v10 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [(PKSettingTableCell *)v10 textLabel];
  [textLabel3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v10;
}

- (PKSettingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = PKSettingTableCell;
  v4 = [(PKSettingTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    settingSwitch = v4->_settingSwitch;
    v4->_settingSwitch = v5;

    [(PKSettingTableCell *)v4 setAccessoryView:v4->_settingSwitch];
    [(PKSettingTableCell *)v4 setSelectionStyle:0];
  }

  textLabel = [(PKSettingTableCell *)v4 textLabel];
  [textLabel setNumberOfLines:0];

  textLabel2 = [(PKSettingTableCell *)v4 textLabel];
  [textLabel2 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKSettingTableCell;
  [(PKSettingTableCell *)&v2 dealloc];
}

- (void)setOn:(BOOL)on notify:(BOOL)notify
{
  onCopy = on;
  if (!notify && self->_action && (WeakRetained = objc_loadWeakRetained(&self->_target)) != 0)
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
    [(UISwitch *)self->_settingSwitch setOn:onCopy];
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

    [(UISwitch *)settingSwitch setOn:onCopy];
  }
}

- (void)setTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  p_action = &self->_action;
  obj = targetCopy;
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

    targetCopy = obj;
  }

  p_target = &self->_target;
  if (targetCopy && action)
  {
    objc_storeWeak(p_target, targetCopy);
    *p_action = action;
    [(UISwitch *)self->_settingSwitch addTarget:obj action:action forControlEvents:4096];
  }

  else
  {
    objc_storeWeak(p_target, 0);
    *p_action = 0;
  }
}

- (void)showSpinner:(BOOL)spinner
{
  if (self->_showingSpinner != spinner)
  {
    v13 = v4;
    v14 = v3;
    self->_showingSpinner = spinner;
    if (spinner)
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