@interface PSUICellularPlanActivatingTableCell
- (PSUICellularPlanActivatingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setBadge:(id)badge andTitle:(id)title andSubtitle:(id)subtitle andStatus:(id)status;
- (void)_setBadgelessCenteredTitle:(id)title andStatus:(id)status;
- (void)_setBadgelessTitle:(id)title andSubtitle:(id)subtitle andStatus:(id)status;
- (void)_setCenteredBadge:(id)badge andCenteredTitle:(id)title andStatus:(id)status;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularPlanActivatingTableCell

- (PSUICellularPlanActivatingTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v130.receiver = self;
  v130.super_class = PSUICellularPlanActivatingTableCell;
  v4 = [(PSTableCell *)&v130 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v129.receiver = v4;
    v129.super_class = PSUICellularPlanActivatingTableCell;
    textLabel = [(PSUICellularPlanActivatingTableCell *)&v129 textLabel];
    [textLabel setText:@"ABC"];

    v128.receiver = v5;
    v128.super_class = PSUICellularPlanActivatingTableCell;
    detailTextLabel = [(PSUICellularPlanActivatingTableCell *)&v128 detailTextLabel];
    [detailTextLabel setText:@"XYZ"];

    v127.receiver = v5;
    v127.super_class = PSUICellularPlanActivatingTableCell;
    textLabel2 = [(PSUICellularPlanActivatingTableCell *)&v127 textLabel];
    [textLabel2 setHidden:1];

    v126.receiver = v5;
    v126.super_class = PSUICellularPlanActivatingTableCell;
    detailTextLabel2 = [(PSUICellularPlanActivatingTableCell *)&v126 detailTextLabel];
    [detailTextLabel2 setHidden:1];

    v125.receiver = v5;
    v125.super_class = PSUICellularPlanActivatingTableCell;
    textLabel3 = [(PSUICellularPlanActivatingTableCell *)&v125 textLabel];
    [textLabel3 removeFromSuperview];

    v124.receiver = v5;
    v124.super_class = PSUICellularPlanActivatingTableCell;
    detailTextLabel3 = [(PSUICellularPlanActivatingTableCell *)&v124 detailTextLabel];
    [detailTextLabel3 removeFromSuperview];

    [(PSUICellularPlanActivatingTableCell *)v5 setAccessoryType:1];
    v12 = objc_alloc_init(PSUIBadgeView);
    badgeView = v5->_badgeView;
    v5->_badgeView = v12;

    contentView = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView addSubview:v5->_badgeView];

    leadingAnchor = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    contentView2 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    v20 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v20;

    v123 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
    [(UILabel *)v5->_titleLabel setFont:v22];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView3 addSubview:v5->_titleLabel];

    firstBaselineAnchor = [(UILabel *)v5->_titleLabel firstBaselineAnchor];
    contentView4 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    topAnchor = [contentView4 topAnchor];
    v27 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];
    [v27 setActive:1];

    leadingAnchor3 = [(UILabel *)v5->_titleLabel leadingAnchor];
    trailingAnchor = [(PSUIBadgeView *)v5->_badgeView trailingAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:4.0];
    v31 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
    [v31 setActive:1];

    centerYAnchor = [(PSUIBadgeView *)v5->_badgeView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v5->_titleLabel centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v34 setActive:1];

    v35 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v35;

    v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_subtitleLabel setFont:v37];

    [(UILabel *)v5->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_subtitleLabel setTextColor:systemGrayColor];

    contentView5 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView5 addSubview:v5->_subtitleLabel];

    firstBaselineAnchor2 = [(UILabel *)v5->_subtitleLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_titleLabel lastBaselineAnchor];
    v42 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v42 setActive:1];

    leadingAnchor4 = [(UILabel *)v5->_subtitleLabel leadingAnchor];
    leadingAnchor5 = [(PSUIBadgeView *)v5->_badgeView leadingAnchor];
    v45 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v45 setActive:1];

    trailingAnchor2 = [(UILabel *)v5->_subtitleLabel trailingAnchor];
    contentView6 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v50 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
    [v50 setActive:1];

    contentView7 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v5->_subtitleLabel lastBaselineAnchor];
    v54 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];
    [v54 setActive:1];

    v55 = objc_alloc_init(PSUIBadgeView);
    centeredBadgeView = v5->_centeredBadgeView;
    v5->_centeredBadgeView = v55;

    contentView8 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView8 addSubview:v5->_centeredBadgeView];

    leadingAnchor6 = [(PSUIBadgeView *)v5->_centeredBadgeView leadingAnchor];
    contentView9 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
    v62 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v62 setActive:1];

    v63 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredTitleLabel = v5->_centeredTitleLabel;
    v5->_centeredTitleLabel = v63;

    v65 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_centeredTitleLabel setFont:v65];

    [(UILabel *)v5->_centeredTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_centeredTitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_centeredTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView10 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView10 addSubview:v5->_centeredTitleLabel];

    centerYAnchor3 = [(UILabel *)v5->_centeredTitleLabel centerYAnchor];
    contentView11 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    centerYAnchor4 = [contentView11 centerYAnchor];
    v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v70 setActive:1];

    leadingAnchor8 = [(UILabel *)v5->_centeredTitleLabel leadingAnchor];
    trailingAnchor4 = [(PSUIBadgeView *)v5->_centeredBadgeView trailingAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:4.0];
    v74 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:?];
    [v74 setActive:1];

    centerYAnchor5 = [(PSUIBadgeView *)v5->_centeredBadgeView centerYAnchor];
    centerYAnchor6 = [(UILabel *)v5->_centeredTitleLabel centerYAnchor];
    v77 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v77 setActive:1];

    v78 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgelessCenteredTitleLabel = v5->_badgelessCenteredTitleLabel;
    v5->_badgelessCenteredTitleLabel = v78;

    v80 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setFont:v80];

    [(UILabel *)v5->_badgelessCenteredTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setNumberOfLines:0];
    [(UILabel *)v5->_badgelessCenteredTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView12 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView12 addSubview:v5->_badgelessCenteredTitleLabel];

    centerYAnchor7 = [(UILabel *)v5->_badgelessCenteredTitleLabel centerYAnchor];
    contentView13 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    centerYAnchor8 = [contentView13 centerYAnchor];
    v85 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v85 setActive:1];

    leadingAnchor9 = [(UILabel *)v5->_badgelessCenteredTitleLabel leadingAnchor];
    contentView14 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView14 layoutMarginsGuide];
    leadingAnchor10 = [layoutMarginsGuide4 leadingAnchor];
    v90 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v90 setActive:1];

    widthAnchor = [(UILabel *)v5->_badgelessCenteredTitleLabel widthAnchor];
    contentView15 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide5 = [contentView15 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide5 widthAnchor];
    v95 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.6];
    [v95 setActive:1];

    v96 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v96;

    v98 = [MEMORY[0x277D74300] preferredFontForTextStyle:v123];
    [(UILabel *)v5->_statusLabel setFont:v98];

    [(UILabel *)v5->_statusLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:systemGrayColor2];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView16 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    [contentView16 addSubview:v5->_statusLabel];

    centerYAnchor9 = [(UILabel *)v5->_statusLabel centerYAnchor];
    contentView17 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    centerYAnchor10 = [contentView17 centerYAnchor];
    v104 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    [v104 setActive:1];

    trailingAnchor5 = [(UILabel *)v5->_statusLabel trailingAnchor];
    contentView18 = [(PSUICellularPlanActivatingTableCell *)v5 contentView];
    layoutMarginsGuide6 = [contentView18 layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide6 trailingAnchor];
    v109 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v109 setActive:1];

    LODWORD(v110) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v110];
    leadingAnchor11 = [(UILabel *)v5->_statusLabel leadingAnchor];
    trailingAnchor7 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v113 = [leadingAnchor11 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor7 multiplier:2.0];
    [v113 setActive:1];

    leadingAnchor12 = [(UILabel *)v5->_statusLabel leadingAnchor];
    trailingAnchor8 = [(UILabel *)v5->_centeredTitleLabel trailingAnchor];
    v116 = [leadingAnchor12 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor8 multiplier:2.0];
    [v116 setActive:1];

    leadingAnchor13 = [(UILabel *)v5->_statusLabel leadingAnchor];
    trailingAnchor9 = [(UILabel *)v5->_badgelessCenteredTitleLabel trailingAnchor];
    v119 = [leadingAnchor13 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor9 multiplier:2.0];
    [v119 setActive:1];

    v120 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v120;

    [(UIActivityIndicatorView *)v5->_spinner startAnimating];
    [(PSUICellularPlanActivatingTableCell *)v5 setAccessoryView:v5->_spinner];
  }

  return v5;
}

- (void)_setBadge:(id)badge andTitle:(id)title andSubtitle:(id)subtitle andStatus:(id)status
{
  badgeView = self->_badgeView;
  statusCopy = status;
  subtitleCopy = subtitle;
  titleCopy = title;
  badgeCopy = badge;
  [(PSUIBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_titleLabel setHidden:0];
  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_titleLabel setText:titleCopy];
  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:badgeCopy];
  [(UILabel *)self->_centeredTitleLabel setText:titleCopy];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:titleCopy];

  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)_setCenteredBadge:(id)badge andCenteredTitle:(id)title andStatus:(id)status
{
  badgeView = self->_badgeView;
  statusCopy = status;
  titleCopy = title;
  badgeCopy = badge;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:1];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredTitleLabel setHidden:0];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:badgeCopy];
  [(UILabel *)self->_titleLabel setText:titleCopy];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_subtitleLabel setText:v12];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:badgeCopy];
  [(UILabel *)self->_centeredTitleLabel setText:titleCopy];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:titleCopy];

  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)_setBadgelessCenteredTitle:(id)title andStatus:(id)status
{
  badgeView = self->_badgeView;
  statusCopy = status;
  titleCopy = title;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:1];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_badgeView setText:&stru_287733598];
  [(UILabel *)self->_titleLabel setText:titleCopy];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PLACEHOLDER_PHONE_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
  [(UILabel *)self->_subtitleLabel setText:v9];

  [(PSUIBadgeView *)self->_centeredBadgeView setText:&stru_287733598];
  [(UILabel *)self->_centeredTitleLabel setText:titleCopy];
  [(UILabel *)self->_badgelessCenteredTitleLabel setText:titleCopy];

  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)_setBadgelessTitle:(id)title andSubtitle:(id)subtitle andStatus:(id)status
{
  badgeView = self->_badgeView;
  statusCopy = status;
  subtitleCopy = subtitle;
  titleCopy = title;
  [(PSUIBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_titleLabel setHidden:0];
  [(UILabel *)self->_subtitleLabel setHidden:0];
  [(PSUIBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredTitleLabel setHidden:1];
  [(UILabel *)self->_badgelessCenteredTitleLabel setHidden:1];
  [(PSUIBadgeView *)self->_badgeView setText:&stru_287733598];
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
  [(PSUIBadgeView *)self->_centeredBadgeView setText:&stru_287733598];
  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v25.receiver = self;
  v25.super_class = PSUICellularPlanActivatingTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v25 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D3FE70], v25.receiver, v25.super_class}];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    carrierName = [v7 carrierName];
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = +[PSUICoreTelephonySubscriberCache sharedInstance];
    v12 = [v14 shortLabel:v8];

    userLabel = [v7 userLabel];
    carrierName = [userLabel label];

    v16 = +[PSUICoreTelephonyCallCache sharedInstance];
    phoneNumber = [v7 phoneNumber];
    v13 = [v16 localizedPhoneNumber:phoneNumber context:v8];
  }

  if (![v12 length] || !-[__CFString length](carrierName, "length"))
  {
    if ([(__CFString *)carrierName length])
    {
      v21 = [v13 length];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
      selfCopy2 = self;
      v23 = carrierName;
      if (v21)
      {
        [(PSUICellularPlanActivatingTableCell *)self _setBadgelessTitle:carrierName andSubtitle:v13 andStatus:v20];
        goto LABEL_15;
      }

      v24 = v20;
    }

    else
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
      selfCopy2 = self;
      v23 = v20;
      v24 = &stru_287733598;
    }

    [(PSUICellularPlanActivatingTableCell *)selfCopy2 _setBadgelessCenteredTitle:v23 andStatus:v24];
    goto LABEL_15;
  }

  v18 = [v13 length];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"ACTIVATING" value:&stru_287733598 table:@"Gemini-Gemini"];
  if (v18)
  {
    [(PSUICellularPlanActivatingTableCell *)self _setBadge:v12 andTitle:carrierName andSubtitle:v13 andStatus:v20];
  }

  else
  {
    [(PSUICellularPlanActivatingTableCell *)self _setCenteredBadge:v12 andCenteredTitle:carrierName andStatus:v20];
  }

LABEL_15:

  [(PSUICellularPlanActivatingTableCell *)self setNeedsLayout];
}

@end