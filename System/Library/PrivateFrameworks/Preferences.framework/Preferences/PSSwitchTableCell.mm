@interface PSSwitchTableCell
+ (Class)alternativeCellClass;
- (BOOL)canReload;
- (BOOL)shouldUseModernLayout;
- (PSSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)controlValue;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setLoading:(BOOL)loading;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setValue:(id)value;
@end

@implementation PSSwitchTableCell

- (PSSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PSSwitchTableCell;
  v4 = [(PSControlTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4 && ![(PSTableCell *)v4 skipsPreferencesTableCellLayoutSubviews])
  {
    control = [(PSControlTableCell *)v5 control];
    [(PSSwitchTableCell *)v5 setAccessoryView:control];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSSwitchTableCell;
  specifierCopy = specifier;
  [(PSControlTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"control-loading", v6.receiver, v6.super_class}];

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
    control = [(PSControlTableCell *)self control];
    [(PSSwitchTableCell *)self setAccessoryView:control];
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

- (void)setCellEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PSSwitchTableCell;
  [(PSControlTableCell *)&v5 setCellEnabled:?];
  [(UIControl *)self->super._control setEnabled:enabledCopy];
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    return;
  }

  activityIndicator = self->_activityIndicator;
  if (loadingCopy)
  {
    if (!activityIndicator)
    {
      contentView = [(PSSwitchTableCell *)self contentView];
      [contentView bounds];
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
      contentView2 = [(PSSwitchTableCell *)self contentView];
      [contentView2 addSubview:self->_activityIndicator];

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

    contentView3 = [(PSSwitchTableCell *)self contentView];
    [contentView3 addSubview:self->super._control];
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x1E696AD98];
  isOn = [(UIControl *)self->super._control isOn];

  return [v2 numberWithBool:isOn];
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = PSSwitchTableCell;
  [(PSTableCell *)&v7 reloadWithSpecifier:specifier animated:?];
  bOOLValue = [self->super.super._value BOOLValue];
  if (bOOLValue != [(UIControl *)self->super._control isOn])
  {
    -[UIControl setOn:animated:](self->super._control, "setOn:animated:", [self->super.super._value BOOLValue], animatedCopy);
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->super.super._value != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->super.super._value, value);
    -[UIControl setOn:](self->super._control, "setOn:", [v6 intValue] != 0);
    valueCopy = v6;
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
      contentView = [(PSSwitchTableCell *)self contentView];
      [contentView bounds];
      v5 = v4;
      v7 = v6;

      [MEMORY[0x1E69DC638] defaultSizeForStyle:{-[PSSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
      v9 = v8;
      v11 = v10;
      _shouldReverseLayoutDirection = [(PSSwitchTableCell *)self _shouldReverseLayoutDirection];
      v13 = v5 + -9.0 - v9;
      if (_shouldReverseLayoutDirection)
      {
        v13 = 9.0;
      }

      v14 = (v7 - v11) * 0.5;
      [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v13, ceilf(v14), v9, v11];
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v6 = [(PSSwitchTableCell *)self backgroundColor:selected];
  selectedBackgroundView = [(PSSwitchTableCell *)self selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:v6];
}

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
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