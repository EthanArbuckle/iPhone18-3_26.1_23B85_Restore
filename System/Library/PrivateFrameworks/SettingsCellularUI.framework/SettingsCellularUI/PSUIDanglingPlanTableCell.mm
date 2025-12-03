@interface PSUIDanglingPlanTableCell
- (PSUIDanglingPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setLabel:(id)label andPhoneNumber:(id)number;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUIDanglingPlanTableCell

- (PSUIDanglingPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v74.receiver = self;
  v74.super_class = PSUIDanglingPlanTableCell;
  v4 = [(PSTableCell *)&v74 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v73.receiver = v4;
    v73.super_class = PSUIDanglingPlanTableCell;
    textLabel = [(PSUIDanglingPlanTableCell *)&v73 textLabel];
    [textLabel removeFromSuperview];

    v72.receiver = v5;
    v72.super_class = PSUIDanglingPlanTableCell;
    detailTextLabel = [(PSUIDanglingPlanTableCell *)&v72 detailTextLabel];
    [detailTextLabel removeFromSuperview];

    [(PSUIDanglingPlanTableCell *)v5 setAccessoryType:1];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v8;

    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_statusLabel setFont:v11];

    [(UILabel *)v5->_statusLabel setNumberOfLines:1];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_statusLabel setTextColor:systemGrayColor];

    [(UILabel *)v5->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [contentView addSubview:v5->_statusLabel];

    LODWORD(v14) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentHuggingPriority:0 forAxis:v15];
    trailingAnchor = [(UILabel *)v5->_statusLabel trailingAnchor];
    contentView2 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v20 setActive:1];

    centerYAnchor = [(UILabel *)v5->_statusLabel centerYAnchor];
    contentView3 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v25 setActive:1];

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v5->_nameLabel;
    v5->_nameLabel = v26;

    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_nameLabel setFont:v28];

    [(UILabel *)v5->_nameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_nameLabel setNumberOfLines:0];
    [(UILabel *)v5->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [contentView4 addSubview:v5->_nameLabel];

    LODWORD(v30) = 1148846080;
    [(UILabel *)v5->_nameLabel setContentCompressionResistancePriority:1 forAxis:v30];
    topAnchor = [(UILabel *)v5->_nameLabel topAnchor];
    contentView5 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v35 setActive:1];

    leadingAnchor = [(UILabel *)v5->_nameLabel leadingAnchor];
    contentView6 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide4 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v40 setActive:1];

    trailingAnchor3 = [(UILabel *)v5->_nameLabel trailingAnchor];
    leadingAnchor3 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v43 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3];
    [v43 setActive:1];

    trailingAnchor4 = [(UILabel *)v5->_nameLabel trailingAnchor];
    contentView7 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide5 trailingAnchor];
    v48 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    [v48 setActive:1];

    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v49;

    v51 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_numberLabel setFont:v51];

    [(UILabel *)v5->_numberLabel setNumberOfLines:0];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_numberLabel setTextColor:systemGrayColor2];

    contentView8 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    [contentView8 addSubview:v5->_numberLabel];

    LODWORD(v54) = 1148846080;
    [(UILabel *)v5->_numberLabel setContentCompressionResistancePriority:1 forAxis:v54];
    leadingAnchor4 = [(UILabel *)v5->_numberLabel leadingAnchor];
    contentView9 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide6 leadingAnchor];
    v59 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v59 setActive:1];

    bottomAnchor = [(UILabel *)v5->_numberLabel bottomAnchor];
    contentView10 = [(PSUIDanglingPlanTableCell *)v5 contentView];
    layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide7 bottomAnchor];
    v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v64 setActive:1];

    firstBaselineAnchor = [(UILabel *)v5->_numberLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_nameLabel lastBaselineAnchor];
    v67 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v67 setActive:1];

    widthAnchor = [(UILabel *)v5->_numberLabel widthAnchor];
    widthAnchor2 = [(UILabel *)v5->_nameLabel widthAnchor];
    v70 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v70 setActive:1];
  }

  return v5;
}

- (void)_setLabel:(id)label andPhoneNumber:(id)number
{
  numberCopy = number;
  [(UILabel *)self->_nameLabel setText:label];
  if ([numberCopy length])
  {
    [(UILabel *)self->_numberLabel setText:numberCopy];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NO_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
    [(UILabel *)self->_numberLabel setText:v7];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = PSUIDanglingPlanTableCell;
  [(PSTableCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 danglingPlanFromReference:v5];

  if (v7)
  {
    v26 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    userLabel = [v7 userLabel];
    label = [userLabel label];

    if (![(__CFString *)label length])
    {
      v10 = +[PSUICellularPlanManagerCache sharedInstance];
      v11 = [v10 planFromReference:v5];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = +[PSUICellularPlanManagerCache sharedInstance];
        v14 = [v13 planFromReference:v5];

        if (![v14 type])
        {
          v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v16 = [v15 localizedStringForKey:@"CELLULAR_PLAN_STATUS_SIM_CARD" value:&stru_287733598 table:@"Cellular"];

          label = v16;
        }
      }
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"USED_AS_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    if (label)
    {
      v20 = label;
    }

    else
    {
      v20 = &stru_287733598;
    }

    v21 = [v17 stringWithFormat:v19, v20];

    v22 = +[PSUICoreTelephonyCallCache sharedInstance];
    phoneNumber = [v7 phoneNumber];
    v24 = [v22 localizedPhoneNumber:phoneNumber context:v26];

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

    [(PSUIDanglingPlanTableCell *)self _setLabel:v21 andPhoneNumber:v24];
    [(PSUIDanglingPlanTableCell *)self setNeedsLayout];
  }
}

@end