@interface SHSDualSIMListCell
- (SHSDualSIMListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number;
- (void)_setCenteredBadge:(id)badge andLabel:(id)label;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SHSDualSIMListCell

- (SHSDualSIMListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v133.receiver = self;
  v133.super_class = SHSDualSIMListCell;
  v4 = [(PSTableCell *)&v133 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v132.receiver = v4;
    v132.super_class = SHSDualSIMListCell;
    textLabel = [(SHSDualSIMListCell *)&v132 textLabel];
    [textLabel setText:@"ABC"];

    v131.receiver = v5;
    v131.super_class = SHSDualSIMListCell;
    detailTextLabel = [(SHSDualSIMListCell *)&v131 detailTextLabel];
    [detailTextLabel setText:@"XYZ"];

    v130.receiver = v5;
    v130.super_class = SHSDualSIMListCell;
    textLabel2 = [(SHSDualSIMListCell *)&v130 textLabel];
    [textLabel2 removeFromSuperview];

    v129.receiver = v5;
    v129.super_class = SHSDualSIMListCell;
    detailTextLabel2 = [(SHSDualSIMListCell *)&v129 detailTextLabel];
    [detailTextLabel2 removeFromSuperview];

    v128.receiver = v5;
    v128.super_class = SHSDualSIMListCell;
    textLabel3 = [(SHSDualSIMListCell *)&v128 textLabel];
    [textLabel3 setHidden:1];

    v127.receiver = v5;
    v127.super_class = SHSDualSIMListCell;
    detailTextLabel3 = [(SHSDualSIMListCell *)&v127 detailTextLabel];
    [detailTextLabel3 setHidden:1];

    [(SHSDualSIMListCell *)v5 setAccessoryType:1];
    v12 = objc_alloc_init(SHSBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    contentView = [(SHSDualSIMListCell *)v5 contentView];
    badgeView = [(SHSDualSIMListCell *)v5 badgeView];
    [contentView addSubview:badgeView];

    badgeView2 = [(SHSDualSIMListCell *)v5 badgeView];
    leadingAnchor = [badgeView2 leadingAnchor];
    contentView2 = [(SHSDualSIMListCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v21 setActive:1];

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v22;

    v24 = *MEMORY[0x277D76918];
    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_nameLabel setFont:v25];

    [(UILabel *)v5->_nameLabel setNumberOfLines:2];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(SHSDualSIMListCell *)v5 contentView];
    [contentView3 addSubview:v5->_nameLabel];

    firstBaselineAnchor = [(UILabel *)v5->_nameLabel firstBaselineAnchor];
    contentView4 = [(SHSDualSIMListCell *)v5 contentView];
    topAnchor = [contentView4 topAnchor];
    v30 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    [v30 setActive:1];

    leadingAnchor3 = [(UILabel *)v5->_nameLabel leadingAnchor];
    badgeView3 = [(SHSDualSIMListCell *)v5 badgeView];
    trailingAnchor = [badgeView3 trailingAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:4.0];
    v35 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [v35 setActive:1];

    badgeView4 = [(SHSDualSIMListCell *)v5 badgeView];
    centerYAnchor = [badgeView4 centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_nameLabel centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v39 setActive:1];

    badgeView5 = [(SHSDualSIMListCell *)v5 badgeView];
    [badgeView5 frame];
    v42 = v41;
    badgeView6 = [(SHSDualSIMListCell *)v5 badgeView];
    [badgeView6 frame];
    v45 = v44;
    badgeView7 = [(SHSDualSIMListCell *)v5 badgeView];
    [badgeView7 size];
    v48 = v47;
    nameLabel = [(SHSDualSIMListCell *)v5 nameLabel];
    font = [nameLabel font];
    [font capHeight];
    v52 = v51;
    badgeView8 = [(SHSDualSIMListCell *)v5 badgeView];
    [badgeView8 setFrame:{v42, v45, v48, v52}];

    v54 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v54;

    v56 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v56];

    [(UILabel *)v5->_numberLabel setNumberOfLines:2];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:systemGrayColor];

    contentView5 = [(SHSDualSIMListCell *)v5 contentView];
    [contentView5 addSubview:v5->_numberLabel];

    firstBaselineAnchor2 = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v61 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v61 setActive:1];

    leadingAnchor4 = [(UILabel *)v5->_numberLabel leadingAnchor];
    badgeView9 = [(SHSDualSIMListCell *)v5 badgeView];
    leadingAnchor5 = [badgeView9 leadingAnchor];
    v65 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v65 setActive:1];

    trailingAnchor2 = [(UILabel *)v5->_numberLabel trailingAnchor];
    contentView6 = [(SHSDualSIMListCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v70 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v70 setActive:1];

    contentView7 = [(SHSDualSIMListCell *)v5 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v5->_numberLabel lastBaselineAnchor];
    v74 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [v74 setActive:1];

    v75 = objc_alloc_init(SHSBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v75;

    contentView8 = [(SHSDualSIMListCell *)v5 contentView];
    [contentView8 addSubview:v5->_centeredBadgeView];

    leadingAnchor6 = [(SHSBadgeView *)v5->_centeredBadgeView leadingAnchor];
    contentView9 = [(SHSDualSIMListCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
    v82 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v82 setActive:1];

    v83 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v5->_centeredNameLabel;
    v5->_centeredNameLabel = v83;

    v85 = [MEMORY[0x277D74300] preferredFontForTextStyle:v24];
    [(UILabel *)v5->_centeredNameLabel setFont:v85];

    [(UILabel *)v5->_centeredNameLabel setNumberOfLines:2];
    [(UILabel *)v5->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView10 = [(SHSDualSIMListCell *)v5 contentView];
    [contentView10 addSubview:v5->_centeredNameLabel];

    centerYAnchor3 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    contentView11 = [(SHSDualSIMListCell *)v5 contentView];
    centerYAnchor4 = [contentView11 centerYAnchor];
    v90 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v90 setActive:1];

    leadingAnchor8 = [(UILabel *)v5->_centeredNameLabel leadingAnchor];
    trailingAnchor4 = [(SHSBadgeView *)v5->_centeredBadgeView trailingAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:4.0];
    v94 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:?];
    [v94 setActive:1];

    centerYAnchor5 = [(SHSBadgeView *)v5->_centeredBadgeView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v5->_centeredNameLabel centerYAnchor];
    v97 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v97 setActive:1];

    v98 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailToneTextLabel = v5->_detailToneTextLabel;
    v5->_detailToneTextLabel = v98;

    v100 = [MEMORY[0x277D74300] preferredFontForTextStyle:v24];
    [(UILabel *)v5->_detailToneTextLabel setFont:v100];

    [(UILabel *)v5->_detailToneTextLabel setNumberOfLines:2];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_detailToneTextLabel setTextColor:systemGrayColor2];

    [(UILabel *)v5->_detailToneTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView12 = [(SHSDualSIMListCell *)v5 contentView];
    [contentView12 addSubview:v5->_detailToneTextLabel];

    centerYAnchor7 = [(UILabel *)v5->_detailToneTextLabel centerYAnchor];
    contentView13 = [(SHSDualSIMListCell *)v5 contentView];
    centerYAnchor8 = [contentView13 centerYAnchor];
    v106 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v106 setActive:1];

    trailingAnchor5 = [(UILabel *)v5->_detailToneTextLabel trailingAnchor];
    contentView14 = [(SHSDualSIMListCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView14 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide4 trailingAnchor];
    v111 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v111 setActive:1];

    LODWORD(v112) = 1148846080;
    [(UILabel *)v5->_detailToneTextLabel setContentCompressionResistancePriority:0 forAxis:v112];
    leadingAnchor9 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    contentView15 = [(SHSDualSIMListCell *)v5 contentView];
    centerXAnchor = [contentView15 centerXAnchor];
    v116 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:centerXAnchor];
    [v116 setActive:1];

    leadingAnchor10 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    trailingAnchor7 = [(UILabel *)v5->_nameLabel trailingAnchor];
    v119 = [leadingAnchor10 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor7 multiplier:1.0];
    [v119 setActive:1];

    leadingAnchor11 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    trailingAnchor8 = [(UILabel *)v5->_centeredNameLabel trailingAnchor];
    v122 = [leadingAnchor11 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor8 multiplier:1.0];
    [v122 setActive:1];

    trailingAnchor9 = [(UILabel *)v5->_numberLabel trailingAnchor];
    leadingAnchor12 = [(UILabel *)v5->_detailToneTextLabel leadingAnchor];
    v125 = [trailingAnchor9 constraintLessThanOrEqualToAnchor:leadingAnchor12];
    [v125 setActive:1];
  }

  return v5;
}

- (void)_setCenteredBadge:(id)badge andLabel:(id)label
{
  badgeView = self->_badgeView;
  labelCopy = label;
  badgeCopy = badge;
  [(SHSBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(SHSBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(SHSBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  [(UILabel *)self->_numberLabel setText:@"+1 (123) 456-7890"];
  [(SHSBadgeView *)self->_centeredBadgeView setText:badgeCopy];

  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number
{
  badgeView = self->_badgeView;
  numberCopy = number;
  labelCopy = label;
  badgeCopy = badge;
  [(SHSBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(SHSBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(SHSBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  [(UILabel *)self->_numberLabel setText:numberCopy];

  [(SHSBadgeView *)self->_centeredBadgeView setText:badgeCopy];
  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v24 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = SHSDualSIMListCell;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
  v6 = [specifierCopy propertyForKey:@"contextShortLabel"];
  v7 = v6;
  v8 = &stru_28772CD00;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  label = [v5 label];
  v11 = [SHSDualSIMToneHelper fetchLocalizedPhoneNumberForContext:v5];
  v12 = SHSLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v17 = "[SHSDualSIMListCell refreshCellContentsWithSpecifier:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = label;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_265896000, v12, OS_LOG_TYPE_DEFAULT, "%s : Received badge: %@, label: %@, phoneNumber: %@", buf, 0x2Au);
  }

  if ([v11 length])
  {
    [(SHSDualSIMListCell *)self _setBadge:v9 andLabel:label andPhoneNumber:v11];
  }

  else
  {
    [(SHSDualSIMListCell *)self _setCenteredBadge:v9 andLabel:label];
  }

  if ([specifierCopy hasValidGetter])
  {
    performGetter = [specifierCopy performGetter];
    if (performGetter)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UILabel *)self->_detailToneTextLabel setText:performGetter];
      }
    }
  }

  [(SHSDualSIMListCell *)self setNeedsLayout];

  v14 = *MEMORY[0x277D85DE8];
}

@end