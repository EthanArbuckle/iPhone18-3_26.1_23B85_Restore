@interface PSControlTableCell
- (PSControlTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)controlChanged:(id)changed;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setControl:(id)control;
@end

@implementation PSControlTableCell

- (PSControlTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PSControlTableCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PSControlTableCell *)v4 setAccessoryType:0];
    [(PSControlTableCell *)v5 setSelectionStyle:0];
    if (![(PSTableCell *)v5 skipsPreferencesTableCellLayoutSubviews])
    {
      newControl = [(PSControlTableCell *)v5 newControl];
      [(PSControlTableCell *)v5 setControl:newControl];
      [newControl addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
    }
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSControlTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PSControlTableCell *)self control:v6.receiver];
  [specifierCopy setProperty:v5 forKey:@"control"];
}

- (void)dealloc
{
  [(PSTableCell *)self setCellTarget:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIControl *)self->_control removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v3.receiver = self;
  v3.super_class = PSControlTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setControl:(id)control
{
  controlCopy = control;
  if (self->_control != controlCopy)
  {
    v8 = controlCopy;
    contentView = [(PSControlTableCell *)self contentView];
    [contentView addSubview:v8];

    control = self->_control;
    if (control)
    {
      [(UIControl *)control removeFromSuperview];
    }

    objc_storeStrong(&self->_control, control);
    controlCopy = v8;
  }
}

- (void)controlChanged:(id)changed
{
  changedCopy = changed;
  cellTarget = [(PSTableCell *)self cellTarget];
  if (cellTarget)
  {
    v6 = cellTarget;
    specifier = [(PSTableCell *)self specifier];

    if (specifier)
    {
      [(PSTableCell *)self cellAction];
      cellTarget2 = [(PSTableCell *)self cellTarget];
      controlValue = [(PSControlTableCell *)self controlValue];
      specifier2 = [(PSTableCell *)self specifier];
      v11 = SFPerformSelector2();
    }
  }

  cellTarget3 = [(PSTableCell *)self cellTarget];

  if (cellTarget3)
  {
    cellTarget4 = [(PSTableCell *)self cellTarget];
    v14 = objc_opt_class();
    v18 = NSStringFromClass(v14);
  }

  else
  {
    v15 = objc_opt_class();
    v18 = NSStringFromClass(v15);
  }

  v16 = objc_opt_class();

  v17 = NSStringFromClass(v16);
  [MEMORY[0x1E69CA9B0] trackingControlValueChanged:v18 sender:v17];
}

- (void)setCellEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = PSControlTableCell;
  [(PSTableCell *)&v6 setCellEnabled:?];
  control = [(PSControlTableCell *)self control];
  [control setEnabled:enabledCopy];
}

@end