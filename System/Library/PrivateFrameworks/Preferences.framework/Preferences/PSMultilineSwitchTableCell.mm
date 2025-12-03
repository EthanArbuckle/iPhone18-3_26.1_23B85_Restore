@interface PSMultilineSwitchTableCell
+ (Class)alternativeCellClass;
- (BOOL)loading;
- (PSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)controlValue;
- (id)newControl;
- (void)controlChanged:(id)changed;
- (void)dealloc;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setControl:(id)control;
- (void)setLoading:(BOOL)loading;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setValue:(id)value;
@end

@implementation PSMultilineSwitchTableCell

- (PSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PSMultilineSwitchTableCell;
  v4 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PSMultilineSwitchTableCell *)v4 setAccessoryType:0];
    [(PSMultilineSwitchTableCell *)v5 setSelectionStyle:0];
    if (![(PSTableCell *)v5 skipsPreferencesTableCellLayoutSubviews])
    {
      newControl = [(PSMultilineSwitchTableCell *)v5 newControl];
      [(PSMultilineSwitchTableCell *)v5 setControl:newControl];
      [newControl addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
      control = [(PSMultilineSwitchTableCell *)v5 control];
      [(PSMultilineSwitchTableCell *)v5 setAccessoryView:control];
    }
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PSMultilineSwitchTableCell;
  specifierCopy = specifier;
  [(PSMultilineTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(PSMultilineSwitchTableCell *)self control:v7.receiver];
  [specifierCopy setProperty:v5 forKey:@"control"];

  v6 = [specifierCopy propertyForKey:@"control-loading"];

  if (v6)
  {
    -[PSMultilineSwitchTableCell setLoading:](self, "setLoading:", [v6 BOOLValue]);
  }
}

- (void)dealloc
{
  [(PSTableCell *)self setCellTarget:0];
  control = [(PSMultilineSwitchTableCell *)self control];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    control2 = [(PSMultilineSwitchTableCell *)self control];
    [control2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v6.receiver = self;
  v6.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)setControl:(id)control
{
  controlCopy = control;
  if (self->_control != controlCopy)
  {
    v8 = controlCopy;
    contentView = [(PSMultilineSwitchTableCell *)self contentView];
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
      controlValue = [(PSMultilineSwitchTableCell *)self controlValue];
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
  v6.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 setCellEnabled:?];
  control = [(PSMultilineSwitchTableCell *)self control];
  [control setEnabled:enabledCopy];
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
    control = [(PSMultilineSwitchTableCell *)self control];
    [(PSMultilineSwitchTableCell *)self setAccessoryView:control];
  }
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x1E69DCFD0]);

  return [v2 initWithFrame:{0.0, 0.0, 51.0, 31.0}];
}

- (BOOL)loading
{
  activityIndicator = [(PSMultilineSwitchTableCell *)self activityIndicator];
  v3 = activityIndicator != 0;

  return v3;
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  if ([(PSTableCell *)self skipsPreferencesTableCellLayoutSubviews])
  {
    return;
  }

  activityIndicator = [(PSMultilineSwitchTableCell *)self activityIndicator];

  if (!loadingCopy)
  {
    if (!activityIndicator)
    {
      return;
    }

    activityIndicator2 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator2 removeFromSuperview];

    [(PSMultilineSwitchTableCell *)self setActivityIndicator:0];
    control = [(PSMultilineSwitchTableCell *)self control];

    if (!control)
    {
      return;
    }

    if ([(PSMultilineSwitchTableCell *)self tag]!= 6)
    {
      contentView = [(PSMultilineSwitchTableCell *)self contentView];
      control2 = [(PSMultilineSwitchTableCell *)self control];
      [contentView addSubview:control2];

      goto LABEL_18;
    }

    control3 = [(PSMultilineSwitchTableCell *)self control];
    [(PSMultilineSwitchTableCell *)self setAccessoryView:control3];

    control4 = [(PSMultilineSwitchTableCell *)self control];
    contentView = control4;
    v25 = 0;
LABEL_14:
    [control4 setHidden:v25];
LABEL_18:

    return;
  }

  if (!activityIndicator)
  {
    contentView2 = [(PSMultilineSwitchTableCell *)self contentView];
    [contentView2 bounds];
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

    activityIndicator3 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator3 setFrame:{v15, v17, v12, v14}];

    activityIndicator4 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator4 startAnimating];

    contentView3 = [(PSMultilineSwitchTableCell *)self contentView];
    activityIndicator5 = [(PSMultilineSwitchTableCell *)self activityIndicator];
    [contentView3 addSubview:activityIndicator5];

    control5 = [(PSMultilineSwitchTableCell *)self control];

    if (control5)
    {
      if ([(PSMultilineSwitchTableCell *)self tag]!= 6)
      {
        contentView = [(PSMultilineSwitchTableCell *)self control];
        [contentView removeFromSuperview];
        goto LABEL_18;
      }

      [(PSMultilineSwitchTableCell *)self setAccessoryView:0];
      control4 = [(PSMultilineSwitchTableCell *)self control];
      contentView = control4;
      v25 = 1;
      goto LABEL_14;
    }
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x1E696AD98];
  control = [(PSMultilineSwitchTableCell *)self control];
  v4 = [v2 numberWithBool:{objc_msgSend(control, "isOn")}];

  return v4;
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = PSMultilineSwitchTableCell;
  [(PSTableCell *)&v10 reloadWithSpecifier:specifier animated:?];
  bOOLValue = [self->super.super._value BOOLValue];
  control = [(PSMultilineSwitchTableCell *)self control];
  isOn = [control isOn];

  if (bOOLValue != isOn)
  {
    control2 = [(PSMultilineSwitchTableCell *)self control];
    [control2 setOn:objc_msgSend(self->super.super._value animated:{"BOOLValue"), animatedCopy}];
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->super.super._value != valueCopy)
  {
    v7 = valueCopy;
    objc_storeStrong(&self->super.super._value, value);
    control = [(PSMultilineSwitchTableCell *)self control];
    [control setOn:{objc_msgSend(v7, "intValue") != 0}];

    valueCopy = v7;
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v6 = [(PSMultilineSwitchTableCell *)self backgroundColor:selected];
  selectedBackgroundView = [(PSMultilineSwitchTableCell *)self selectedBackgroundView];
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