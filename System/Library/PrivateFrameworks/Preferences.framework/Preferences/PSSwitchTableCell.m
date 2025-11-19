@interface PSSwitchTableCell
+ (Class)alternativeCellClass;
- (BOOL)canReload;
- (BOOL)shouldUseModernLayout;
- (PSSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)controlValue;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4;
- (void)setCellEnabled:(BOOL)a3;
- (void)setLoading:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setValue:(id)a3;
@end

@implementation PSSwitchTableCell

- (PSSwitchTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PSSwitchTableCell;
  v4 = [(PSControlTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4 && ![(PSTableCell *)v4 skipsPreferencesTableCellLayoutSubviews])
  {
    v6 = [(PSControlTableCell *)v5 control];
    [(PSSwitchTableCell *)v5 setAccessoryView:v6];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSSwitchTableCell;
  v4 = a3;
  [(PSControlTableCell *)&v6 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"control-loading", v6.receiver, v6.super_class}];

  if (v5)
  {
    -[PSSwitchTableCell setLoading:](self, "setLoading:", [v5 BOOLValue]);
  }
}

- (void)prepareForReuse
{
  if ([(PSTableCell *)self skipsPreferencesTableCellPrepareForReuse])
  {
    v5.receiver = self;
    v5.super_class = PSSwitchTableCell;
    [(PSTableCell *)&v5 layoutSubviews];
  }

  else
  {
    [(PSSwitchTableCell *)self setLoading:0];
    v4.receiver = self;
    v4.super_class = PSSwitchTableCell;
    [(PSTableCell *)&v4 prepareForReuse];
    v3 = [(PSControlTableCell *)self control];
    [(PSSwitchTableCell *)self setAccessoryView:v3];
  }
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x1E69DCFD0]);

  return [v2 initWithFrame:{0.0, 0.0, 51.0, 31.0}];
}

- (BOOL)canReload
{
  v3 = [(PSSwitchTableCell *)self isMemberOfClass:objc_opt_class()];
  if (v3)
  {
    LOBYTE(v3) = [(PSSwitchTableCell *)self tag]== 6;
  }

  return v3;
}

- (void)setCellEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PSSwitchTableCell;
  [(PSControlTableCell *)&v5 setCellEnabled:?];
  [(UIControl *)self->super._control setEnabled:v3];
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    return;
  }

  activityIndicator = self->_activityIndicator;
  if (v3)
  {
    if (!activityIndicator)
    {
      v6 = [(PSSwitchTableCell *)self contentView];
      [v6 bounds];
      v8 = v7;
      v10 = v9;

      [MEMORY[0x1E69DC638] defaultSizeForStyle:{-[PSSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
      v12 = v11;
      v14 = v13;
      v15 = [(PSSwitchTableCell *)self _shouldReverseLayoutDirection]? 9.0 : v8 + -9.0 - v12;
      v16 = (v10 - v14) * 0.5;
      v17 = ceilf(v16);
      v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:{-[PSSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
      v19 = self->_activityIndicator;
      self->_activityIndicator = v18;

      [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v15, v17, v12, v14];
      [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
      v20 = [(PSSwitchTableCell *)self contentView];
      [v20 addSubview:self->_activityIndicator];

      if (self->super._control)
      {
        if ([(PSSwitchTableCell *)self tag]== 6)
        {
          [(PSSwitchTableCell *)self setAccessoryView:0];
          control = self->super._control;
          v22 = 1;
LABEL_14:

          [(UIControl *)control setHidden:v22];
          return;
        }

        v24 = self->super._control;

        [(UIControl *)v24 removeFromSuperview];
      }
    }
  }

  else
  {
    if (!activityIndicator)
    {
      return;
    }

    [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
    v23 = self->_activityIndicator;
    self->_activityIndicator = 0;

    if (!self->super._control)
    {
      return;
    }

    if ([(PSSwitchTableCell *)self tag]== 6)
    {
      [(PSSwitchTableCell *)self setAccessoryView:self->super._control];
      control = self->super._control;
      v22 = 0;
      goto LABEL_14;
    }

    v25 = [(PSSwitchTableCell *)self contentView];
    [v25 addSubview:self->super._control];
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(UIControl *)self->super._control isOn];

  return [v2 numberWithBool:v3];
}

- (void)reloadWithSpecifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = PSSwitchTableCell;
  [(PSTableCell *)&v7 reloadWithSpecifier:a3 animated:?];
  v6 = [self->super.super._value BOOLValue];
  if (v6 != [(UIControl *)self->super._control isOn])
  {
    -[UIControl setOn:animated:](self->super._control, "setOn:animated:", [self->super.super._value BOOLValue], v4);
  }
}

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->super.super._value != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super.super._value, a3);
    -[UIControl setOn:](self->super._control, "setOn:", [v6 intValue] != 0);
    v5 = v6;
  }
}

- (BOOL)shouldUseModernLayout
{
  v3 = [(PSSwitchTableCell *)self isMemberOfClass:objc_opt_class()];
  if (v3)
  {
    LOBYTE(v3) = self->_activityIndicator == 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    v16.receiver = self;
    v16.super_class = PSSwitchTableCell;
    [(PSTableCell *)&v16 layoutSubviews];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PSSwitchTableCell;
    [(PSTableCell *)&v15 layoutSubviews];
    if (self->_activityIndicator)
    {
      v3 = [(PSSwitchTableCell *)self contentView];
      [v3 bounds];
      v5 = v4;
      v7 = v6;

      [MEMORY[0x1E69DC638] defaultSizeForStyle:{-[PSSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
      v9 = v8;
      v11 = v10;
      v12 = [(PSSwitchTableCell *)self _shouldReverseLayoutDirection];
      v13 = v5 + -9.0 - v9;
      if (v12)
      {
        v13 = 9.0;
      }

      v14 = (v7 - v11) * 0.5;
      [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v13, ceilf(v14), v9, v11];
    }
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = [(PSSwitchTableCell *)self backgroundColor:a3];
  v5 = [(PSSwitchTableCell *)self selectedBackgroundView];
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