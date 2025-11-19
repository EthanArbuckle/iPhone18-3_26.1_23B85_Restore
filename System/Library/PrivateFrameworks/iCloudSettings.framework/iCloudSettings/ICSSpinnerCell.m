@interface ICSSpinnerCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICSSpinnerCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = ICSSpinnerCell;
  v4 = a3;
  [(PSTableCell *)&v14 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"ICSSpinnerCellIsSpinningKey", v14.receiver, v14.super_class}];

  LODWORD(v4) = [v5 BOOLValue];
  if (v4)
  {
    [(PSTableCell *)self setType:3];
    [(ICSSpinnerCell *)self setEnabled:0];
    spinner = self->_spinner;
    if (!spinner)
    {
      v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      v8 = self->_spinner;
      self->_spinner = v7;

      spinner = self->_spinner;
    }

    [(UIActivityIndicatorView *)spinner startAnimating];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"UPGRADING" value:&stru_288487370 table:@"Localizable-AppleID"];
    v11 = [(ICSSpinnerCell *)self detailTextLabel];
    [v11 setText:v10];

    [(ICSSpinnerCell *)self setAccessoryView:self->_spinner];
  }

  else
  {
    v12 = self->_spinner;
    self->_spinner = 0;

    [(ICSSpinnerCell *)self setAccessoryView:0];
    [(PSTableCell *)self setType:2];
    [(ICSSpinnerCell *)self setEnabled:1];
    v13 = [(ICSSpinnerCell *)self detailTextLabel];
    [v13 setHidden:0];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = ICSSpinnerCell;
  [(PSTableCell *)&v13 layoutSubviews];
  if (self->_spinner)
  {
    v3 = [(ICSSpinnerCell *)self detailTextLabel];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(ICSSpinnerCell *)self detailTextLabel];
    [v12 setFrame:{v5 + -7.0, v7, v9, v11}];
  }
}

@end