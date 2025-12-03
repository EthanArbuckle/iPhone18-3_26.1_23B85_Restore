@interface PSUICellularPlanTableCell
- (PSUICellularPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number;
- (void)_setCenteredBadge:(id)badge andLabel:(id)label;
- (void)_setupView;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularPlanTableCell

- (PSUICellularPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = PSUICellularPlanTableCell;
  v4 = [(PSTableCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v18.receiver = v4;
    v18.super_class = PSUICellularPlanTableCell;
    textLabel = [(PSUICellularPlanTableCell *)&v18 textLabel];
    [textLabel setText:@"ABC"];

    v17.receiver = v5;
    v17.super_class = PSUICellularPlanTableCell;
    detailTextLabel = [(PSUICellularPlanTableCell *)&v17 detailTextLabel];
    [detailTextLabel setText:@"XYZ"];

    v16.receiver = v5;
    v16.super_class = PSUICellularPlanTableCell;
    textLabel2 = [(PSUICellularPlanTableCell *)&v16 textLabel];
    [textLabel2 removeFromSuperview];

    v15.receiver = v5;
    v15.super_class = PSUICellularPlanTableCell;
    detailTextLabel2 = [(PSUICellularPlanTableCell *)&v15 detailTextLabel];
    [detailTextLabel2 removeFromSuperview];

    v14.receiver = v5;
    v14.super_class = PSUICellularPlanTableCell;
    textLabel3 = [(PSUICellularPlanTableCell *)&v14 textLabel];
    [textLabel3 setHidden:1];

    v13.receiver = v5;
    v13.super_class = PSUICellularPlanTableCell;
    detailTextLabel3 = [(PSUICellularPlanTableCell *)&v13 detailTextLabel];
    [detailTextLabel3 setHidden:1];

    [(PSUICellularPlanTableCell *)v5 setAccessoryType:1];
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

- (void)prepareForReuse
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PSUICellularPlanTableCell;
  [(PSTableCell *)&v14 prepareForReuse];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  contentView = [(PSUICellularPlanTableCell *)self contentView];
  subviews = [contentView subviews];

  v5 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v22.receiver = self;
  v22.super_class = PSUICellularPlanTableCell;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  [(PSUICellularPlanTableCell *)self _setupView];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
  v9 = +[PSUICoreTelephonySubscriberCache sharedInstance];
  v10 = [v9 shortLabel:v8];
  v11 = v10;
  v12 = &stru_287733598;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x277CCACA8];
  userLabel = [v7 userLabel];
  label = [userLabel label];
  v17 = [v14 stringWithFormat:@"%@", label];

  v18 = +[PSUICoreTelephonyCallCache sharedInstance];
  phoneNumber = [v7 phoneNumber];
  v20 = [v18 localizedPhoneNumber:phoneNumber context:v8];

  if ([v20 length])
  {
    [(PSUICellularPlanTableCell *)self _setBadge:v13 andLabel:v17 andPhoneNumber:v20];
  }

  else
  {
    [(PSUICellularPlanTableCell *)self _setCenteredBadge:v13 andLabel:v17];
  }

  if ([specifierCopy hasValidGetter])
  {
    performGetter = [specifierCopy performGetter];
    if (performGetter)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UILabel *)self->_statusLabel setText:performGetter];
      }
    }
  }

  [(PSUICellularPlanTableCell *)self setNeedsLayout];
}

- (void)_setupView
{
  v3 = objc_alloc_init(PSUIBadgeView);
  badgeView = self->_badgeView;
  self->_badgeView = v3;

  contentView = [(PSUICellularPlanTableCell *)self contentView];
  [contentView addSubview:self->_badgeView];

  leadingAnchor = [(PSUIBadgeView *)self->_badgeView leadingAnchor];
  contentView2 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v10 setActive:1];

  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  nameLabel = self->_nameLabel;
  self->_nameLabel = v11;

  v91 = *MEMORY[0x277D76918];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
  [(UILabel *)self->_nameLabel setFont:v13];

  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(PSUICellularPlanTableCell *)self contentView];
  [contentView3 addSubview:self->_nameLabel];

  topAnchor = [(UILabel *)self->_nameLabel topAnchor];
  contentView4 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v19 setActive:1];

  leadingAnchor3 = [(UILabel *)self->_nameLabel leadingAnchor];
  trailingAnchor = [(PSUIBadgeView *)self->_badgeView trailingAnchor];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:4.0];
  v23 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
  [v23 setActive:1];

  centerYAnchor = [(UILabel *)self->_nameLabel centerYAnchor];
  centerYAnchor2 = [(PSUIBadgeView *)self->_badgeView centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v26 setActive:1];

  v27 = objc_alloc_init(MEMORY[0x277D756B8]);
  numberLabel = self->_numberLabel;
  self->_numberLabel = v27;

  v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_numberLabel setFont:v29];

  [(UILabel *)self->_numberLabel setNumberOfLines:0];
  [(UILabel *)self->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_numberLabel setTextColor:systemGrayColor];

  contentView5 = [(PSUICellularPlanTableCell *)self contentView];
  [contentView5 addSubview:self->_numberLabel];

  firstBaselineAnchor = [(UILabel *)self->_numberLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_nameLabel lastBaselineAnchor];
  v34 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
  [v34 setActive:1];

  leadingAnchor4 = [(UILabel *)self->_numberLabel leadingAnchor];
  leadingAnchor5 = [(PSUIBadgeView *)self->_badgeView leadingAnchor];
  v37 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [v37 setActive:1];

  trailingAnchor2 = [(UILabel *)self->_numberLabel trailingAnchor];
  contentView6 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
  v42 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
  [v42 setActive:1];

  bottomAnchor = [(UILabel *)self->_numberLabel bottomAnchor];
  contentView7 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v47 setActive:1];

  v48 = objc_alloc_init(PSUIBadgeView);
  centeredBadgeView = self->_centeredBadgeView;
  self->_centeredBadgeView = v48;

  contentView8 = [(PSUICellularPlanTableCell *)self contentView];
  [contentView8 addSubview:self->_centeredBadgeView];

  leadingAnchor6 = [(PSUIBadgeView *)self->_centeredBadgeView leadingAnchor];
  contentView9 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide5 = [contentView9 layoutMarginsGuide];
  leadingAnchor7 = [layoutMarginsGuide5 leadingAnchor];
  v55 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v55 setActive:1];

  v56 = objc_alloc_init(MEMORY[0x277D756B8]);
  centeredNameLabel = self->_centeredNameLabel;
  self->_centeredNameLabel = v56;

  v58 = [MEMORY[0x277D74300] preferredFontForTextStyle:v91];
  [(UILabel *)self->_centeredNameLabel setFont:v58];

  [(UILabel *)self->_centeredNameLabel setNumberOfLines:0];
  [(UILabel *)self->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView10 = [(PSUICellularPlanTableCell *)self contentView];
  [contentView10 addSubview:self->_centeredNameLabel];

  centerYAnchor3 = [(UILabel *)self->_centeredNameLabel centerYAnchor];
  contentView11 = [(PSUICellularPlanTableCell *)self contentView];
  centerYAnchor4 = [contentView11 centerYAnchor];
  v63 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v63 setActive:1];

  leadingAnchor8 = [(UILabel *)self->_centeredNameLabel leadingAnchor];
  trailingAnchor4 = [(PSUIBadgeView *)self->_centeredBadgeView trailingAnchor];
  defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics2 scaledValueForValue:4.0];
  v67 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:?];
  [v67 setActive:1];

  centerYAnchor5 = [(PSUIBadgeView *)self->_centeredBadgeView centerYAnchor];
  centerYAnchor6 = [(UILabel *)self->_centeredNameLabel centerYAnchor];
  v70 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v70 setActive:1];

  v71 = objc_alloc_init(MEMORY[0x277D756B8]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v71;

  v73 = [MEMORY[0x277D74300] preferredFontForTextStyle:v91];
  [(UILabel *)self->_statusLabel setFont:v73];

  [(UILabel *)self->_statusLabel setNumberOfLines:0];
  systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_statusLabel setTextColor:systemGrayColor2];

  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView12 = [(PSUICellularPlanTableCell *)self contentView];
  [contentView12 addSubview:self->_statusLabel];

  centerYAnchor7 = [(UILabel *)self->_statusLabel centerYAnchor];
  contentView13 = [(PSUICellularPlanTableCell *)self contentView];
  centerYAnchor8 = [contentView13 centerYAnchor];
  v79 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  [v79 setActive:1];

  trailingAnchor5 = [(UILabel *)self->_statusLabel trailingAnchor];
  contentView14 = [(PSUICellularPlanTableCell *)self contentView];
  layoutMarginsGuide6 = [contentView14 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide6 trailingAnchor];
  v84 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v84 setActive:1];

  LODWORD(v85) = 1148846080;
  [(UILabel *)self->_statusLabel setContentCompressionResistancePriority:0 forAxis:v85];
  leadingAnchor9 = [(UILabel *)self->_statusLabel leadingAnchor];
  trailingAnchor7 = [(UILabel *)self->_nameLabel trailingAnchor];
  v88 = [leadingAnchor9 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor7 multiplier:1.0];
  [v88 setActive:1];

  leadingAnchor10 = [(UILabel *)self->_statusLabel leadingAnchor];
  trailingAnchor8 = [(UILabel *)self->_centeredNameLabel trailingAnchor];
  v90 = [leadingAnchor10 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor8 multiplier:1.0];
  [v90 setActive:1];
}

@end