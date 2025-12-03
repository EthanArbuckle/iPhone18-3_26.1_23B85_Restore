@interface PSUICellularPlanOptionTableCell
- (PSUICellularPlanOptionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number;
- (void)_setCenteredBadge:(id)badge andLabel:(id)label;
- (void)_setCenteredText:(id)text;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularPlanOptionTableCell

- (PSUICellularPlanOptionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v96.receiver = self;
  v96.super_class = PSUICellularPlanOptionTableCell;
  v4 = [(PSTableCell *)&v96 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v95.receiver = v4;
    v95.super_class = PSUICellularPlanOptionTableCell;
    textLabel = [(PSUICellularPlanOptionTableCell *)&v95 textLabel];
    [textLabel setText:@"ABC"];

    v94.receiver = v5;
    v94.super_class = PSUICellularPlanOptionTableCell;
    detailTextLabel = [(PSUICellularPlanOptionTableCell *)&v94 detailTextLabel];
    [detailTextLabel setText:@"XYZ"];

    v93.receiver = v5;
    v93.super_class = PSUICellularPlanOptionTableCell;
    textLabel2 = [(PSUICellularPlanOptionTableCell *)&v93 textLabel];
    [textLabel2 removeFromSuperview];

    v92.receiver = v5;
    v92.super_class = PSUICellularPlanOptionTableCell;
    detailTextLabel2 = [(PSUICellularPlanOptionTableCell *)&v92 detailTextLabel];
    [detailTextLabel2 removeFromSuperview];

    v91.receiver = v5;
    v91.super_class = PSUICellularPlanOptionTableCell;
    textLabel3 = [(PSUICellularPlanOptionTableCell *)&v91 textLabel];
    [textLabel3 setHidden:1];

    v90.receiver = v5;
    v90.super_class = PSUICellularPlanOptionTableCell;
    detailTextLabel3 = [(PSUICellularPlanOptionTableCell *)&v90 detailTextLabel];
    [detailTextLabel3 setHidden:1];

    v12 = objc_alloc_init(PSUIBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    contentView = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [contentView addSubview:v5->_badgeView];

    leadingAnchor = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    contentView2 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v20;

    v89 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v5->_nameLabel setFont:v22];

    [(UILabel *)v5->_nameLabel setNumberOfLines:0];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [contentView3 addSubview:v5->_nameLabel];

    firstBaselineAnchor = [(UILabel *)v5->_nameLabel firstBaselineAnchor];
    contentView4 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    topAnchor = [contentView4 topAnchor];
    v27 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    [v27 setActive:1];

    leadingAnchor3 = [(UILabel *)v5->_nameLabel leadingAnchor];
    trailingAnchor = [(PSUIBadgeView *)v5->_badgeView trailingAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:4.0];
    v31 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [v31 setActive:1];

    centerYAnchor = [(PSUIBadgeView *)v5->_badgeView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_nameLabel centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v34 setActive:1];

    trailingAnchor2 = [(UILabel *)v5->_nameLabel trailingAnchor];
    contentView5 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v39 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v39 setActive:1];

    v40 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v40;

    v42 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v42];

    [(UILabel *)v5->_numberLabel setNumberOfLines:0];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:systemGrayColor];

    contentView6 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [contentView6 addSubview:v5->_numberLabel];

    firstBaselineAnchor2 = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v47 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v47 setActive:1];

    leadingAnchor4 = [(UILabel *)v5->_numberLabel leadingAnchor];
    leadingAnchor5 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v50 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v50 setActive:1];

    trailingAnchor4 = [(UILabel *)v5->_numberLabel trailingAnchor];
    contentView7 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView7 layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide3 trailingAnchor];
    v55 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    [v55 setActive:1];

    contentView8 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    bottomAnchor = [contentView8 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v5->_numberLabel lastBaselineAnchor];
    v59 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [v59 setActive:1];

    v60 = objc_alloc_init(PSUIBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v60;

    contentView9 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [contentView9 addSubview:v5->_centeredBadgeView];

    leadingAnchor6 = [(PSUIBadgeView *)v5->_centeredBadgeView leadingAnchor];
    contentView10 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView10 layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide4 leadingAnchor];
    v67 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v67 setActive:1];

    v68 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v5->_centeredNameLabel;
    v5->_centeredNameLabel = v68;

    v70 = [MEMORY[0x277D74300] preferredFontForTextStyle:v89];
    [(UILabel *)v5->_centeredNameLabel setFont:v70];

    [(UILabel *)v5->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView11 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    [contentView11 addSubview:v5->_centeredNameLabel];

    leadingAnchor8 = [(UILabel *)v5->_centeredNameLabel leadingAnchor];
    trailingAnchor6 = [(PSUIBadgeView *)v5->_centeredBadgeView trailingAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:4.0];
    v75 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6 constant:?];
    [v75 setActive:1];

    trailingAnchor7 = [(UILabel *)v5->_centeredNameLabel trailingAnchor];
    contentView12 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    layoutMarginsGuide5 = [contentView12 layoutMarginsGuide];
    trailingAnchor8 = [layoutMarginsGuide5 trailingAnchor];
    v80 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];
    [v80 setActive:1];

    centerYAnchor3 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    contentView13 = [(PSUICellularPlanOptionTableCell *)v5 contentView];
    centerYAnchor4 = [contentView13 centerYAnchor];
    v84 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v84 setActive:1];

    centerYAnchor5 = [(PSUIBadgeView *)v5->_centeredBadgeView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v87 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v87 setActive:1];
  }

  return v5;
}

- (void)_setCenteredBadge:(id)badge andLabel:(id)label
{
  badgeView = self->_badgeView;
  labelCopy = label;
  badgeCopy = badge;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(PSUIBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_numberLabel setText:v9];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:badgeCopy];
  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)_setCenteredText:(id)text
{
  badgeView = self->_badgeView;
  textCopy = text;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(UILabel *)self->_nameLabel setText:textCopy];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_numberLabel setText:v6];

  [(UILabel *)self->_centeredNameLabel setText:textCopy];
}

- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number
{
  badgeView = self->_badgeView;
  numberCopy = number;
  labelCopy = label;
  badgeCopy = badge;
  [(PSUIBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  [(UILabel *)self->_numberLabel setText:numberCopy];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:badgeCopy];
  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v19.receiver = self;
  v19.super_class = PSUICellularPlanOptionTableCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE68]];
  v7 = +[PSUICoreTelephonySubscriberCache sharedInstance];
  v8 = [v7 shortLabel:v5];
  v9 = v8;
  v10 = &stru_287733598;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (v6)
  {
    v12 = MEMORY[0x277CCACA8];
    userLabel = [v6 userLabel];
    label = [userLabel label];
    name = [v12 stringWithFormat:@"%@", label];

    v16 = +[PSUICoreTelephonyCallCache sharedInstance];
    phoneNumber = [v6 phoneNumber];
    v18 = [v16 localizedPhoneNumber:phoneNumber context:v5];

    if ([v18 length])
    {
      [(PSUICellularPlanOptionTableCell *)self _setBadge:v11 andLabel:name andPhoneNumber:v18];
    }

    else
    {
      [(PSUICellularPlanOptionTableCell *)self _setCenteredBadge:v11 andLabel:name];
    }

    -[PSUICellularPlanOptionTableCell setCellEnabled:](self, "setCellEnabled:", [v6 isSelected]);
  }

  else
  {
    name = [specifierCopy name];
    [(PSUICellularPlanOptionTableCell *)self _setCenteredText:name];
  }

  [(PSUICellularPlanOptionTableCell *)self setNeedsLayout];
}

@end