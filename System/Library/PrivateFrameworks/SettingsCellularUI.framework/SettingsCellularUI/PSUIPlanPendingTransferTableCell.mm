@interface PSUIPlanPendingTransferTableCell
- (PSUIPlanPendingTransferTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUIPlanPendingTransferTableCell

- (PSUIPlanPendingTransferTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = PSUIPlanPendingTransferTableCell;
  v4 = [(PSUIDanglingPlanTableCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle.fill"];
    v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    view = v4->_view;
    v4->_view = v7;

    [(UIImageView *)v4->_view setPreferredSymbolConfiguration:v6];
    v9 = v4->_view;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UIImageView *)v9 setTintColor:systemRedColor];

    [(UIImageView *)v4->_view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    [contentView addSubview:v4->_view];

    centerYAnchor = [(UIImageView *)v4->_view centerYAnchor];
    contentView2 = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v16 setActive:1];

    trailingAnchor = [(UIImageView *)v4->_view trailingAnchor];
    contentView3 = [(PSUIPlanPendingTransferTableCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v21 setActive:1];

    LODWORD(v22) = 1148846080;
    [(UIImageView *)v4->_view setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)v4->_view setContentHuggingPriority:0 forAxis:v23];
    leadingAnchor = [(UIImageView *)v4->_view leadingAnchor];
    nameLabel = [(PSUIDanglingPlanTableCell *)v4 nameLabel];
    trailingAnchor3 = [nameLabel trailingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3];
    [v27 setActive:1];

    statusLabel = [(PSUIDanglingPlanTableCell *)v4 statusLabel];
    [statusLabel removeFromSuperview];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v26.receiver = self;
  v26.super_class = PSUIPlanPendingTransferTableCell;
  [(PSUIDanglingPlanTableCell *)&v26 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];
  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planPendingTransferFromReference:v5];
  planPendingTransfer = self->_planPendingTransfer;
  self->_planPendingTransfer = v7;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"USED_AS_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    planLabel = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer planLabel];
    label = [planLabel label];
    carrierName = [v19 stringWithFormat:v21, label];

    phoneNumber = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer phoneNumber];
    v18 = [SettingsCellularUtils formattedPhoneNumber:phoneNumber];
    goto LABEL_5;
  }

  carrierName = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer carrierName];
  deviceName = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
  v13 = [deviceName length];

  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    phoneNumber = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [phoneNumber localizedStringForKey:@"USED_ON_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    deviceName2 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
    v18 = [v14 stringWithFormat:v16, deviceName2];

LABEL_5:
    goto LABEL_6;
  }

  v18 = 0;
LABEL_6:
  [specifierCopy setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if ([specifierCopy hasValidGetter])
  {
    performGetter = [specifierCopy performGetter];
    if (performGetter)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        statusLabel = [(PSUIDanglingPlanTableCell *)self statusLabel];
        [statusLabel setText:performGetter];
      }
    }
  }

  [(PSUIDanglingPlanTableCell *)self _setLabel:carrierName andPhoneNumber:v18];
  [(PSUIPlanPendingTransferTableCell *)self setNeedsLayout];
}

@end