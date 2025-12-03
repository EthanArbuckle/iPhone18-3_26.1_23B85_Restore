@interface PSUICarrierItemTableCell
- (PSUICarrierItemTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setTitle:(id)title;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICarrierItemTableCell

- (PSUICarrierItemTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31.receiver = self;
  v31.super_class = PSUICarrierItemTableCell;
  v4 = [(PSTableCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v30.receiver = v4;
    v30.super_class = PSUICarrierItemTableCell;
    textLabel = [(PSUICarrierItemTableCell *)&v30 textLabel];
    [textLabel removeFromSuperview];

    v29.receiver = v5;
    v29.super_class = PSUICarrierItemTableCell;
    detailTextLabel = [(PSUICarrierItemTableCell *)&v29 detailTextLabel];
    [detailTextLabel removeFromSuperview];

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_titleLabel setFont:v10];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUICarrierItemTableCell *)v5 contentView];
    [contentView addSubview:v5->_titleLabel];

    centerYAnchor = [(UILabel *)v5->_titleLabel centerYAnchor];
    contentView2 = [(PSUICarrierItemTableCell *)v5 contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v15 setActive:1];

    leadingAnchor = [(UILabel *)v5->_titleLabel leadingAnchor];
    contentView3 = [(PSUICarrierItemTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v20 setActive:1];

    widthAnchor = [(UILabel *)v5->_titleLabel widthAnchor];
    contentView4 = [(PSUICarrierItemTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide2 widthAnchor];
    v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.6];
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

- (void)_setTitle:(id)title
{
  titleLabel = self->_titleLabel;
  titleCopy = title;
  [(UILabel *)titleLabel setHidden:0];
  [(UILabel *)self->_titleLabel setText:titleCopy];

  v6 = self->_titleLabel;

  [(UILabel *)v6 setEnabled:0];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSUICarrierItemTableCell;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifier];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CARRIER_ITEM" value:&stru_287733598 table:@"Cellular"];
  [(PSUICarrierItemTableCell *)self _setTitle:v5];

  [(PSUICarrierItemTableCell *)self setNeedsLayout];
}

@end