@interface PKSwitchSpinnerTableCell
- (PKSwitchSpinnerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_switchToggled:(id)toggled;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation PKSwitchSpinnerTableCell

- (PKSwitchSpinnerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = PKSwitchSpinnerTableCell;
  v9 = [(PSTableCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  if (v9)
  {
    target = [specifierCopy target];
    objc_storeWeak(&v9->_delegate, target);

    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v12 = v9->_switch;
    v9->_switch = v11;

    [(UISwitch *)v9->_switch addTarget:v9 action:sel__switchToggled_ forEvents:4096];
    v13 = [specifierCopy objectForKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];
    -[PKSwitchSpinnerTableCell setSwitchIsOn:](v9, "setSwitchIsOn:", [v13 BOOLValue]);

    v14 = v9->_switch;
    v15 = [specifierCopy objectForKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsDisabled"];
    -[UISwitch setEnabled:](v14, "setEnabled:", [v15 BOOLValue] ^ 1);

    [(UISwitch *)v9->_switch sizeToFit];
    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v9->_spinner;
    v9->_spinner = v16;

    [(UIActivityIndicatorView *)v9->_spinner sizeToFit];
    titleLabel = [(PSTableCell *)v9 titleLabel];
    [titleLabel setLineBreakMode:4];

    [(PKSwitchSpinnerTableCell *)v9 _updateSubviews];
    [(PKSwitchSpinnerTableCell *)v9 setSelectionStyle:0];
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PKSwitchSpinnerTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"PKSwitchSpinnerTableCellSwitchIsOn", v7.receiver, v7.super_class}];
  -[PKSwitchSpinnerTableCell setSwitchIsOn:](self, "setSwitchIsOn:", [v5 BOOLValue]);

  v6 = [specifierCopy objectForKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];

  -[PKSwitchSpinnerTableCell setShowSpinner:](self, "setShowSpinner:", [v6 BOOLValue]);
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = PKSwitchSpinnerTableCell;
  [(PSTableCell *)&v33 layoutSubviews];
  contentView = [(PKSwitchSpinnerTableCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  _shouldReverseLayoutDirection = [(PKSwitchSpinnerTableCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  memset(&v30, 0, sizeof(v30));
  if (_shouldReverseLayoutDirection)
  {
    v13 = CGRectMinXEdge;
  }

  else
  {
    v13 = CGRectMaxXEdge;
  }

  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  CGRectDivide(v34, &slice, &remainder, 18.0, v13);
  if (self->_showSpinner)
  {
    v14 = 1208;
  }

  else
  {
    v14 = 1216;
  }

  v15 = (&self->super.super.super.super.super.isa + v14);
  [*(&self->super.super.super.super.super.isa + v14) frame];
  CGRectDivide(remainder, &slice, &remainder, v16, v13);
  UIRectCenteredIntegralRect();
  slice.origin.x = v17;
  slice.origin.y = v18;
  slice.size.width = v19;
  slice.size.height = v20;
  [*v15 setFrame:?];
  if (_shouldReverseLayoutDirection)
  {
    v21 = CGRectMaxXEdge;
  }

  else
  {
    v21 = CGRectMinXEdge;
  }

  titleLabel = [(PSTableCell *)self titleLabel];
  CGRectDivide(remainder, &slice, &v30, 18.0, v21);
  [titleLabel frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [titleLabel sizeThatFits:{v30.size.width, v27}];
  [titleLabel setFrame:{v24, v26, v29, v28}];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    [(PKSwitchSpinnerTableCell *)self _updateSubviews];
  }
}

- (void)_updateSubviews
{
  if (self->_showSpinner)
  {
    [(UISwitch *)self->_switch removeFromSuperview];
    contentView = [(PKSwitchSpinnerTableCell *)self contentView];
    [contentView addSubview:self->_spinner];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    contentView2 = [(PKSwitchSpinnerTableCell *)self contentView];
    [contentView2 addSubview:self->_switch];
  }

  [(PKSwitchSpinnerTableCell *)self setNeedsLayout];
}

- (void)_switchToggled:(id)toggled
{
  toggledCopy = toggled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isOn = [toggledCopy isOn];

  [WeakRetained switchSpinnerCell:self hasToggledSwitch:isOn];
}

@end