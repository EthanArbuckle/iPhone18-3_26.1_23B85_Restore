@interface PSControlTableCell
- (PSControlTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)controlChanged:(id)a3;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setCellEnabled:(BOOL)a3;
- (void)setControl:(id)a3;
@end

@implementation PSControlTableCell

- (PSControlTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PSControlTableCell;
  v4 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSControlTableCell *)v4 setAccessoryType:0];
    [(PSControlTableCell *)v5 setSelectionStyle:0];
    if (![(PSTableCell *)v5 skipsPreferencesTableCellLayoutSubviews])
    {
      v6 = [(PSControlTableCell *)v5 newControl];
      [(PSControlTableCell *)v5 setControl:v6];
      [v6 addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
    }
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSControlTableCell;
  v4 = a3;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSControlTableCell *)self control:v6.receiver];
  [v4 setProperty:v5 forKey:@"control"];
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

- (void)setControl:(id)a3
{
  v5 = a3;
  if (self->_control != v5)
  {
    v8 = v5;
    v6 = [(PSControlTableCell *)self contentView];
    [v6 addSubview:v8];

    control = self->_control;
    if (control)
    {
      [(UIControl *)control removeFromSuperview];
    }

    objc_storeStrong(&self->_control, a3);
    v5 = v8;
  }
}

- (void)controlChanged:(id)a3
{
  v4 = a3;
  v5 = [(PSTableCell *)self cellTarget];
  if (v5)
  {
    v6 = v5;
    v7 = [(PSTableCell *)self specifier];

    if (v7)
    {
      [(PSTableCell *)self cellAction];
      v8 = [(PSTableCell *)self cellTarget];
      v9 = [(PSControlTableCell *)self controlValue];
      v10 = [(PSTableCell *)self specifier];
      v11 = SFPerformSelector2();
    }
  }

  v12 = [(PSTableCell *)self cellTarget];

  if (v12)
  {
    v13 = [(PSTableCell *)self cellTarget];
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

- (void)setCellEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PSControlTableCell;
  [(PSTableCell *)&v6 setCellEnabled:?];
  v5 = [(PSControlTableCell *)self control];
  [v5 setEnabled:v3];
}

@end