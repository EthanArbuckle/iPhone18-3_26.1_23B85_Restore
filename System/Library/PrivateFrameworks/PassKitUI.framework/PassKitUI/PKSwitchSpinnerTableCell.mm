@interface PKSwitchSpinnerTableCell
- (PKSwitchSpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_switchToggled:(id)a3;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setShowSpinner:(BOOL)a3;
@end

@implementation PKSwitchSpinnerTableCell

- (PKSwitchSpinnerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v20.receiver = self;
  v20.super_class = PKSwitchSpinnerTableCell;
  v9 = [(PSTableCell *)&v20 initWithStyle:a3 reuseIdentifier:a4];
  if (v9)
  {
    v10 = [v8 target];
    objc_storeWeak(&v9->_delegate, v10);

    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v12 = v9->_switch;
    v9->_switch = v11;

    [(UISwitch *)v9->_switch addTarget:v9 action:sel__switchToggled_ forEvents:4096];
    v13 = [v8 objectForKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsOn"];
    -[PKSwitchSpinnerTableCell setSwitchIsOn:](v9, "setSwitchIsOn:", [v13 BOOLValue]);

    v14 = v9->_switch;
    v15 = [v8 objectForKeyedSubscript:@"PKSwitchSpinnerTableCellSwitchIsDisabled"];
    -[UISwitch setEnabled:](v14, "setEnabled:", [v15 BOOLValue] ^ 1);

    [(UISwitch *)v9->_switch sizeToFit];
    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v9->_spinner;
    v9->_spinner = v16;

    [(UIActivityIndicatorView *)v9->_spinner sizeToFit];
    v18 = [(PSTableCell *)v9 titleLabel];
    [v18 setLineBreakMode:4];

    [(PKSwitchSpinnerTableCell *)v9 _updateSubviews];
    [(PKSwitchSpinnerTableCell *)v9 setSelectionStyle:0];
  }

  return v9;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKSwitchSpinnerTableCell;
  v4 = a3;
  [(PSTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"PKSwitchSpinnerTableCellSwitchIsOn", v7.receiver, v7.super_class}];
  -[PKSwitchSpinnerTableCell setSwitchIsOn:](self, "setSwitchIsOn:", [v5 BOOLValue]);

  v6 = [v4 objectForKeyedSubscript:@"PKSwitchSpinnerTableCellShowSpinner"];

  -[PKSwitchSpinnerTableCell setShowSpinner:](self, "setShowSpinner:", [v6 BOOLValue]);
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = PKSwitchSpinnerTableCell;
  [(PSTableCell *)&v33 layoutSubviews];
  v3 = [(PKSwitchSpinnerTableCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PKSwitchSpinnerTableCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  memset(&v30, 0, sizeof(v30));
  if (v12)
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
  if (v12)
  {
    v21 = CGRectMaxXEdge;
  }

  else
  {
    v21 = CGRectMinXEdge;
  }

  v22 = [(PSTableCell *)self titleLabel];
  CGRectDivide(remainder, &slice, &v30, 18.0, v21);
  [v22 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v22 sizeThatFits:{v30.size.width, v27}];
  [v22 setFrame:{v24, v26, v29, v28}];
}

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    [(PKSwitchSpinnerTableCell *)self _updateSubviews];
  }
}

- (void)_updateSubviews
{
  if (self->_showSpinner)
  {
    [(UISwitch *)self->_switch removeFromSuperview];
    v3 = [(PKSwitchSpinnerTableCell *)self contentView];
    [v3 addSubview:self->_spinner];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    v4 = [(PKSwitchSpinnerTableCell *)self contentView];
    [v4 addSubview:self->_switch];
  }

  [(PKSwitchSpinnerTableCell *)self setNeedsLayout];
}

- (void)_switchToggled:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 isOn];

  [WeakRetained switchSpinnerCell:self hasToggledSwitch:v5];
}

@end