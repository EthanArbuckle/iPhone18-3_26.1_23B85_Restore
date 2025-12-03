@interface PSUIConvertedCellularPlanTableCell
- (PSUIConvertedCellularPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setLabel:(id)label andDescription:(id)description;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUIConvertedCellularPlanTableCell

- (PSUIConvertedCellularPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v74.receiver = self;
  v74.super_class = PSUIConvertedCellularPlanTableCell;
  v4 = [(PSTableCell *)&v74 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v73.receiver = v4;
    v73.super_class = PSUIConvertedCellularPlanTableCell;
    textLabel = [(PSUIConvertedCellularPlanTableCell *)&v73 textLabel];
    [textLabel removeFromSuperview];

    v72.receiver = v5;
    v72.super_class = PSUIConvertedCellularPlanTableCell;
    detailTextLabel = [(PSUIConvertedCellularPlanTableCell *)&v72 detailTextLabel];
    [detailTextLabel removeFromSuperview];

    [(PSUIConvertedCellularPlanTableCell *)v5 setAccessoryType:1];
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
    contentView = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    [contentView addSubview:v5->_statusLabel];

    LODWORD(v14) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v5->_statusLabel setContentHuggingPriority:0 forAxis:v15];
    trailingAnchor = [(UILabel *)v5->_statusLabel trailingAnchor];
    contentView2 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v20 setActive:1];

    centerYAnchor = [(UILabel *)v5->_statusLabel centerYAnchor];
    contentView3 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v25 setActive:1];

    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v5->_numberLabel;
    v5->_numberLabel = v26;

    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)v5->_numberLabel setFont:v28];

    [(UILabel *)v5->_numberLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_numberLabel setNumberOfLines:0];
    [(UILabel *)v5->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    [contentView4 addSubview:v5->_numberLabel];

    LODWORD(v30) = 1148846080;
    [(UILabel *)v5->_numberLabel setContentCompressionResistancePriority:1 forAxis:v30];
    topAnchor = [(UILabel *)v5->_numberLabel topAnchor];
    contentView5 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v35 setActive:1];

    leadingAnchor = [(UILabel *)v5->_numberLabel leadingAnchor];
    contentView6 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide4 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v40 setActive:1];

    trailingAnchor3 = [(UILabel *)v5->_numberLabel trailingAnchor];
    leadingAnchor3 = [(UILabel *)v5->_statusLabel leadingAnchor];
    v43 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3];
    [v43 setActive:1];

    trailingAnchor4 = [(UILabel *)v5->_numberLabel trailingAnchor];
    contentView7 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
    trailingAnchor5 = [layoutMarginsGuide5 trailingAnchor];
    v48 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:trailingAnchor5];
    [v48 setActive:1];

    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v49;

    v51 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v5->_descriptionLabel setFont:v51];

    [(UILabel *)v5->_descriptionLabel setNumberOfLines:0];
    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor2 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v5->_descriptionLabel setTextColor:systemGrayColor2];

    contentView8 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    [contentView8 addSubview:v5->_descriptionLabel];

    LODWORD(v54) = 1148846080;
    [(UILabel *)v5->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v54];
    leadingAnchor4 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    contentView9 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide6 = [contentView9 layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide6 leadingAnchor];
    v59 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [v59 setActive:1];

    bottomAnchor = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    contentView10 = [(PSUIConvertedCellularPlanTableCell *)v5 contentView];
    layoutMarginsGuide7 = [contentView10 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide7 bottomAnchor];
    v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v64 setActive:1];

    firstBaselineAnchor = [(UILabel *)v5->_descriptionLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_numberLabel lastBaselineAnchor];
    v67 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    [v67 setActive:1];

    widthAnchor = [(UILabel *)v5->_descriptionLabel widthAnchor];
    widthAnchor2 = [(UILabel *)v5->_numberLabel widthAnchor];
    v70 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v70 setActive:1];
  }

  return v5;
}

- (void)_setLabel:(id)label andDescription:(id)description
{
  descriptionCopy = description;
  [(UILabel *)self->_numberLabel setText:label];
  if ([descriptionCopy length])
  {
    [(UILabel *)self->_descriptionLabel setText:descriptionCopy];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v22.receiver = self;
  v22.super_class = PSUIConvertedCellularPlanTableCell;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReference:v5];

  if (v7)
  {
    v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40128]];
    v9 = +[PSUICoreTelephonyCallCache sharedInstance];
    phoneNumber = [v7 phoneNumber];
    v11 = [v9 localizedPhoneNumber:phoneNumber context:v8];

    if ([v7 transferredStatus] == 4)
    {
      v12 = MEMORY[0x277CCACA8];
      transferredToDeviceDisplayName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [transferredToDeviceDisplayName localizedStringForKey:@"CONVERTED_TO_ESIM" value:&stru_287733598 table:@"Gemini-Gemini"];
      v15 = [v12 stringWithFormat:v14];
    }

    else
    {
      transferredToDeviceDisplayName = [v7 transferredToDeviceDisplayName];
      v16 = [transferredToDeviceDisplayName length];
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v18;
      if (v16)
      {
        v19 = [v18 localizedStringForKey:@"TRANSFERRED_TO_@" value:&stru_287733598 table:@"Gemini-Gemini"];
        [v17 stringWithFormat:v19, transferredToDeviceDisplayName];
      }

      else
      {
        v19 = [v18 localizedStringForKey:@"TRANSFERRED" value:&stru_287733598 table:@"Gemini-Gemini"];
        [v17 stringWithFormat:v19, v21];
      }
      v15 = ;
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

    [(PSUIConvertedCellularPlanTableCell *)self _setLabel:v11 andDescription:v15];
    [(PSUIConvertedCellularPlanTableCell *)self setNeedsLayout];
  }
}

@end