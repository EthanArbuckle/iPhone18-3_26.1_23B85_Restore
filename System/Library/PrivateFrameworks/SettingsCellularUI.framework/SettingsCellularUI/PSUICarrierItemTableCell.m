@interface PSUICarrierItemTableCell
- (PSUICarrierItemTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setTitle:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICarrierItemTableCell

- (PSUICarrierItemTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31.receiver = self;
  v31.super_class = PSUICarrierItemTableCell;
  v4 = [(PSTableCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v30.receiver = v4;
    v30.super_class = PSUICarrierItemTableCell;
    v6 = [(PSUICarrierItemTableCell *)&v30 textLabel];
    [v6 removeFromSuperview];

    v29.receiver = v5;
    v29.super_class = PSUICarrierItemTableCell;
    v7 = [(PSUICarrierItemTableCell *)&v29 detailTextLabel];
    [v7 removeFromSuperview];

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_titleLabel setFont:v10];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [(PSUICarrierItemTableCell *)v5 contentView];
    [v11 addSubview:v5->_titleLabel];

    v12 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v13 = [(PSUICarrierItemTableCell *)v5 contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v17 = [(PSUICarrierItemTableCell *)v5 contentView];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v18 leadingAnchor];
    v20 = [v16 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UILabel *)v5->_titleLabel widthAnchor];
    v22 = [(PSUICarrierItemTableCell *)v5 contentView];
    v23 = [v22 layoutMarginsGuide];
    v24 = [v23 widthAnchor];
    v25 = [v21 constraintEqualToAnchor:v24 multiplier:0.6];
    [v25 setActive:1];

    v26 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v26;

    [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    [(PSUICarrierItemTableCell *)v5 setAccessoryView:v5->_spinner];
    [(PSUICarrierItemTableCell *)v5 setAccessoryType:1];
  }

  return v5;
}

- (void)_setTitle:(id)a3
{
  titleLabel = self->_titleLabel;
  v5 = a3;
  [(UILabel *)titleLabel setHidden:0];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = self->_titleLabel;

  [(UILabel *)v6 setEnabled:0];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSUICarrierItemTableCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CARRIER_ITEM" value:&stru_287733598 table:@"Cellular"];
  [(PSUICarrierItemTableCell *)self _setTitle:v5];

  [(PSUICarrierItemTableCell *)self setNeedsLayout];
}

@end