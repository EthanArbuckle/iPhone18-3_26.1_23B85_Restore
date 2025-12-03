@interface ICSMultilineSwitchTableCell
- (BOOL)loading;
- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)controlValue;
- (id)newControl;
- (void)controlChanged:(id)changed;
- (void)dealloc;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setControl:(id)control;
- (void)setLoading:(BOOL)loading;
- (void)setValue:(id)value;
@end

@implementation ICSMultilineSwitchTableCell

- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = ICSMultilineSwitchTableCell;
  v4 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ICSMultilineSwitchTableCell *)v4 setSelectionStyle:0];
    [(ICSMultilineSwitchTableCell *)v5 setAccessoryType:0];
    newControl = [(ICSMultilineSwitchTableCell *)v5 newControl];
    [(ICSMultilineSwitchTableCell *)v5 setControl:newControl];
    [newControl addTarget:v5 action:sel_controlChanged_ forControlEvents:4096];
    control = [(ICSMultilineSwitchTableCell *)v5 control];
    [(ICSMultilineSwitchTableCell *)v5 setAccessoryView:control];
  }

  return v5;
}

- (ICSMultilineSwitchTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = ICSMultilineSwitchTableCell;
  return [(ICSDataclassWithSubtitleTableViewCell *)&v6 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v25.receiver = self;
  v25.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v25 refreshCellContentsWithSpecifier:specifierCopy];
  control = [(ICSMultilineSwitchTableCell *)self control];
  [specifierCopy setProperty:control forKey:*MEMORY[0x277D3FEB0]];

  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D3FEA8]];
  v7 = v6;
  if (v6)
  {
    -[ICSMultilineSwitchTableCell setLoading:](self, "setLoading:", [v6 BOOLValue]);
  }

  name = [specifierCopy name];
  primaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self primaryLabel];
  [primaryLabel setText:name];

  v10 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40160]];
  secondaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel setText:v10];

  secondaryLabel2 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  text = [secondaryLabel2 text];
  if (text)
  {
    v14 = text;
    secondaryLabel3 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
    text2 = [secondaryLabel3 text];
    v17 = [text2 length] == 0;
  }

  else
  {
    v17 = 1;
  }

  secondaryLabel4 = [(ICSDataclassWithSubtitleTableViewCell *)self secondaryLabel];
  [secondaryLabel4 setHidden:v17];

  if ([specifierCopy hasValidGetter])
  {
    performGetter = [specifierCopy performGetter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tertiaryLabel = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      [tertiaryLabel setHidden:0];

      tertiaryLabel2 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      [tertiaryLabel2 setText:performGetter];

      [(ICSMultilineSwitchTableCell *)self setAccessoryView:0];
      control2 = [(ICSMultilineSwitchTableCell *)self control];
      v23 = control2;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      control2 = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
      v23 = control2;
      if ((isKindOfClass & 1) == 0)
      {
        [control2 setText:&stru_288487370];
        goto LABEL_13;
      }
    }

    [control2 setHidden:1];
LABEL_13:

    goto LABEL_14;
  }

  performGetter = [(ICSDataclassWithSubtitleTableViewCell *)self tertiaryLabel];
  [performGetter setText:&stru_288487370];
LABEL_14:

  [(ICSMultilineSwitchTableCell *)self setNeedsLayout];
}

- (void)dealloc
{
  [(PSTableCell *)self setCellTarget:0];
  control = [(ICSMultilineSwitchTableCell *)self control];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    control2 = [(ICSMultilineSwitchTableCell *)self control];
    [control2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v6.receiver = self;
  v6.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v6 dealloc];
}

- (void)setControl:(id)control
{
  controlCopy = control;
  if (self->_control != controlCopy)
  {
    v8 = controlCopy;
    contentView = [(ICSMultilineSwitchTableCell *)self contentView];
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
  cellTarget = [(PSTableCell *)self cellTarget];
  if (cellTarget)
  {
    v5 = cellTarget;
    specifier = [(PSTableCell *)self specifier];

    if (specifier)
    {
      [(PSTableCell *)self cellAction];
      cellTarget2 = [(PSTableCell *)self cellTarget];
      controlValue = [(ICSMultilineSwitchTableCell *)self controlValue];
      specifier2 = [(PSTableCell *)self specifier];
      v9 = SFPerformSelector2();
    }
  }
}

- (void)prepareForReuse
{
  [(ICSMultilineSwitchTableCell *)self setLoading:0];
  v4.receiver = self;
  v4.super_class = ICSMultilineSwitchTableCell;
  [(PSTableCell *)&v4 prepareForReuse];
  control = [(ICSMultilineSwitchTableCell *)self control];
  [(ICSMultilineSwitchTableCell *)self setAccessoryView:control];
}

- (id)newControl
{
  v2 = objc_alloc(MEMORY[0x277D75AE8]);

  return [v2 initWithFrame:{0.0, 0.0, 51.0, 31.0}];
}

- (BOOL)loading
{
  activityIndicator = [(ICSMultilineSwitchTableCell *)self activityIndicator];
  v3 = activityIndicator != 0;

  return v3;
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  activityIndicator = [(ICSMultilineSwitchTableCell *)self activityIndicator];

  if (!loadingCopy)
  {
    if (!activityIndicator)
    {
      return;
    }

    activityIndicator2 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator2 removeFromSuperview];

    [(ICSMultilineSwitchTableCell *)self setActivityIndicator:0];
    control = [(ICSMultilineSwitchTableCell *)self control];

    if (!control)
    {
      return;
    }

    if ([(ICSMultilineSwitchTableCell *)self tag]!= 6)
    {
      contentView = [(ICSMultilineSwitchTableCell *)self contentView];
      control2 = [(ICSMultilineSwitchTableCell *)self control];
      [contentView addSubview:control2];

      goto LABEL_17;
    }

    control3 = [(ICSMultilineSwitchTableCell *)self control];
    [(ICSMultilineSwitchTableCell *)self setAccessoryView:control3];

    control4 = [(ICSMultilineSwitchTableCell *)self control];
    contentView = control4;
    v25 = 0;
LABEL_13:
    [control4 setHidden:v25];
LABEL_17:

    return;
  }

  if (!activityIndicator)
  {
    contentView2 = [(ICSMultilineSwitchTableCell *)self contentView];
    [contentView2 bounds];
    v8 = v7;
    v10 = v9;

    [MEMORY[0x277D750E8] defaultSizeForStyle:{-[ICSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    v12 = v11;
    v14 = v13;
    v15 = [(ICSMultilineSwitchTableCell *)self _shouldReverseLayoutDirection]? 9.0 : v8 + -9.0 - v12;
    v16 = (v10 - v14) * 0.5;
    v17 = ceilf(v16);
    v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:{-[ICSMultilineSwitchTableCell spinnerStyle](self, "spinnerStyle")}];
    [(ICSMultilineSwitchTableCell *)self setActivityIndicator:v18];

    activityIndicator3 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator3 setFrame:{v15, v17, v12, v14}];

    activityIndicator4 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [activityIndicator4 startAnimating];

    contentView3 = [(ICSMultilineSwitchTableCell *)self contentView];
    activityIndicator5 = [(ICSMultilineSwitchTableCell *)self activityIndicator];
    [contentView3 addSubview:activityIndicator5];

    control5 = [(ICSMultilineSwitchTableCell *)self control];

    if (control5)
    {
      if ([(ICSMultilineSwitchTableCell *)self tag]!= 6)
      {
        contentView = [(ICSMultilineSwitchTableCell *)self control];
        [contentView removeFromSuperview];
        goto LABEL_17;
      }

      [(ICSMultilineSwitchTableCell *)self setAccessoryView:0];
      control4 = [(ICSMultilineSwitchTableCell *)self control];
      contentView = control4;
      v25 = 1;
      goto LABEL_13;
    }
  }
}

- (id)controlValue
{
  v2 = MEMORY[0x277CCABB0];
  control = [(ICSMultilineSwitchTableCell *)self control];
  v4 = [v2 numberWithBool:{objc_msgSend(control, "isOn")}];

  return v4;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v6 = *MEMORY[0x277D3FCE8];
  if (*(&self->super.super.super.super.super.super.isa + v6) != valueCopy)
  {
    v8 = valueCopy;
    objc_storeStrong((&self->super.super.super.super.super.super.isa + v6), value);
    control = [(ICSMultilineSwitchTableCell *)self control];
    [control setOn:{-[objc_class intValue](v8, "intValue") != 0}];

    valueCopy = v8;
  }
}

@end