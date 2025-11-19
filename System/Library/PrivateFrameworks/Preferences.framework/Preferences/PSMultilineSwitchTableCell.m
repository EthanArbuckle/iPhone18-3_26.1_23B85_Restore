@interface PSMultilineSwitchTableCell
+ (Class)alternativeCellClass;
- (BOOL)loading;
- (PSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)controlValue;
- (id)newControl;
- (void)controlChanged:(id)a3;
- (void)dealloc;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
- (void)setCellEnabled:(BOOL)a3;
- (void)setControl:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setValue:(id)a3;
@end

@implementation PSMultilineSwitchTableCell

- (PSMultilineSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = PSMultilineSwitchTableCell;
  v4 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PSMultilineSwitchTableCell *)v4 setAccessoryType:0];
    [(PSMultilineSwitchTableCell *)v5 setSelectionStyle:0];
    if (![(PSTableCell *)v5 skipsPreferencesTableCellLayoutSubviews])
    {
      v6 = [(PSMultilineSwitchTableCell *)v5 newControl];
      [(PSMultilineSwitchTableCell *)v5 setControl:v6];
      [v6 addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
      v7 = [(PSMultilineSwitchTableCell *)v5 control];
      [(PSMultilineSwitchTableCell *)v5 setAccessoryView:v7];
    }
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PSMultilineSwitchTableCell;
  v4 = a3;
  [(PSMultilineTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSMultilineSwitchTableCell *)self control:v7.receiver];
  [v4 setProperty:v5 forKey:@"control"];

  v6 = [v4 propertyForKey:@"control-loading"];

  if (v6)
  {
    -[PSMultilineSwitchTableCell setLoading:](self, "setLoading:", [v6 BOOLValue]);
  }
}

- (void)dealloc
{
  [(PSTableCell *)self setCellTarget:0];
  v3 = [(PSMultilineSwitchTableCell *)self control];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PSMultilineSwitchTableCell *)self control];
    [v5 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v6.receiver = self;
  v6.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)setControl:(id)a3
{
  v5 = a3;
  if (self->_control != v5)
  {
    v8 = v5;
    v6 = [(PSMultilineSwitchTableCell *)self contentView];
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
      v9 = [(PSMultilineSwitchTableCell *)self controlValue];
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
  v6.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 setCellEnabled:?];
  v5 = [(PSMultilineSwitchTableCell *)self control];
  [v5 setEnabled:v3];
}

- (void)prepareForReuse
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v5.receiver = self;
    v5.super_class = PSMultilineSwitchTableCell;
    [(PSTableCell *)&v5 layoutSubviews];
  }

  else
  {
    [(PSMultilineSwitchTableCell *)self setLoading:0];
    v4.receiver = self;
    v4.super_class = PSMultilineSwitchTableCell;
    [(PSTableCell *)&v4 prepareForReuse];
    v3 = [(PSMultilineSwitchTableCell *)self control];
    [(PSMultilineSwitchTableCell *)self setAccessoryView:v3];
  }
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x1E69DCFD0]);

  return [v2 initWithFrame:{0.0, 0.0, 51.0, 31.0}];
}

- (BOOL)loading
{
  v2 = [(PSMultilineSwitchTableCell *)self activityIndicator];
  v3 = v2 != 0;

  return v3;
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    return;
  }

  v5 = [(PSMultilineSwitchTableCell *)self activityIndicator];

  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    v26 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [v26 removeFromSuperview];

    [(PSMultilineSwitchTableCell *)self setActivityIndicator:0];
    v27 = [(PSMultilineSwitchTableCell *)self control];

    if (!v27)
    {
      return;
    }

    if ([(PSMultilineSwitchTableCell *)self tag]!= 6)
    {
      v30 = [(PSMultilineSwitchTableCell *)self contentView];
      v29 = [(PSMultilineSwitchTableCell *)self control];
      [v30 addSubview:v29];

      goto LABEL_18;
    }

    v28 = [(PSMultilineSwitchTableCell *)self control];
    [(PSMultilineSwitchTableCell *)self setAccessoryView:v28];

    v24 = [(PSMultilineSwitchTableCell *)self control];
    v30 = v24;
    v25 = 0;
LABEL_14:
    [v24 setHidden:v25];
LABEL_18:

    return;
  }

  if (!v5)
  {
    v6 = [(PSMultilineSwitchTableCell *)self contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    [MEMORY[0x1E69DC638] defaultSizeForStyle:{-[PSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    v12 = v11;
    v14 = v13;
    v15 = [(PSMultilineSwitchTableCell *)self _shouldReverseLayoutDirection]? 9.0 : v8 + -9.0 - v12;
    v16 = (v10 - v14) * 0.5;
    v17 = ceilf(v16);
    v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:{-[PSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    [(PSMultilineSwitchTableCell *)self setActivityIndicator:v18];

    v19 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [v19 setFrame:{v15, v17, v12, v14}];

    v20 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [v20 startAnimating];

    v21 = [(PSMultilineSwitchTableCell *)self contentView];
    v22 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [v21 addSubview:v22];

    v23 = [(PSMultilineSwitchTableCell *)self control];

    if (v23)
    {
      if ([(PSMultilineSwitchTableCell *)self tag]!= 6)
      {
        v30 = [(PSMultilineSwitchTableCell *)self control];
        [v30 removeFromSuperview];
        goto LABEL_18;
      }

      [(PSMultilineSwitchTableCell *)self setAccessoryView:0];
      v24 = [(PSMultilineSwitchTableCell *)self control];
      v30 = v24;
      v25 = 1;
      goto LABEL_14;
    }
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(PSMultilineSwitchTableCell *)self control];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isOn")}];

  return v4;
}

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v10 reloadWithSpecifier:a3 animated:?];
  v6 = [self->super.super._value BOOLValue];
  v7 = [(PSMultilineSwitchTableCell *)self control];
  v8 = [v7 isOn];

  if (v6 != v8)
  {
    v9 = [(PSMultilineSwitchTableCell *)self control];
    [v9 setOn:objc_msgSend(self->super.super._value animated:{"BOOLValue"), v4}];
  }
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->super.super._value != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->super.super._value, a3);
    v6 = [(PSMultilineSwitchTableCell *)self control];
    [v6 setOn:{objc_msgSend(v7, "intValue") != 0}];

    v5 = v7;
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = [(PSMultilineSwitchTableCell *)self backgroundColor:a3];
  v5 = [(PSMultilineSwitchTableCell *)self selectedBackgroundView];
  [v5 setBackgroundColor:v6];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end