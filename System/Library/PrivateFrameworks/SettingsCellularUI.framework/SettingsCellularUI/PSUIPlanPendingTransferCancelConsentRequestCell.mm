@interface PSUIPlanPendingTransferCancelConsentRequestCell
- (PSUIPlanPendingTransferCancelConsentRequestCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)cancelPressed;
@end

@implementation PSUIPlanPendingTransferCancelConsentRequestCell

- (PSUIPlanPendingTransferCancelConsentRequestCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v67.receiver = self;
  v67.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
  v9 = [(PSTableCell *)&v67 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v64 = [specifierCopy propertyForKey:*MEMORY[0x277D3FE70]];
    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v11 = [v10 planPendingTransferFromReference:v64];
    planPendingTransfer = v9->_planPendingTransfer;
    v9->_planPendingTransfer = v11;

    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    cellularPlanManager = v9->_cellularPlanManager;
    v9->_cellularPlanManager = mEMORY[0x277CF96D8];

    v66.receiver = v9;
    v66.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
    textLabel = [(PSUIPlanPendingTransferCancelConsentRequestCell *)&v66 textLabel];
    [textLabel setHidden:1];

    v65.receiver = v9;
    v65.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
    textLabel2 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)&v65 textLabel];
    [textLabel2 removeFromSuperview];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"REQUEST_SENT" value:&stru_287733598 table:@"Gemini-Gemini"];
    [v17 setText:v19];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [v17 setTextColor:systemGrayColor];

    v21 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v17 setFont:v22];

    [v17 setAdjustsFontForContentSizeCategory:1];
    [v17 setNumberOfLines:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [contentView addSubview:v17];

    centerYAnchor = [v17 centerYAnchor];
    contentView2 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v27 setActive:1];

    leadingAnchor = [v17 leadingAnchor];
    contentView3 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v32 setActive:1];

    v33 = [MEMORY[0x277D75220] buttonWithType:1];
    titleLabel = [v33 titleLabel];
    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v21];
    [titleLabel setFont:v35];

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    [v33 setTitle:v37 forState:0];

    [v33 addTarget:v9 action:sel_cancelPressed forEvents:64];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [contentView4 addSubview:v33];

    centerYAnchor3 = [v33 centerYAnchor];
    contentView5 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    centerYAnchor4 = [contentView5 centerYAnchor];
    v42 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v42 setActive:1];

    trailingAnchor = [v33 trailingAnchor];
    contentView6 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v47 setActive:1];

    LODWORD(v48) = 1148846080;
    [v33 setContentCompressionResistancePriority:0 forAxis:v48];
    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v49 setText:&stru_287733598];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView7 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [contentView7 addSubview:v49];

    centerYAnchor5 = [v49 centerYAnchor];
    contentView8 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    centerYAnchor6 = [contentView8 centerYAnchor];
    v54 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v54 setActive:1];

    trailingAnchor3 = [v49 trailingAnchor];
    contentView9 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v58 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4];
    [v58 setActive:1];

    LODWORD(v59) = 1148846080;
    [v49 setContentCompressionResistancePriority:0 forAxis:v59];
    leadingAnchor3 = [v49 leadingAnchor];
    trailingAnchor5 = [v33 trailingAnchor];
    v62 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:2.0];
    [v62 setActive:1];
  }

  return v9;
}

- (void)cancelPressed
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(CTCellularPlanManager *)self->_cellularPlanManager cancelPlanActivation:self->_planPendingTransfer];
  getLogger = [(PSUIPlanPendingTransferCancelConsentRequestCell *)self getLogger];
  v5 = getLogger;
  if (v3)
  {
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PSUIPlanPendingTransferCancelConsentRequestCell cancelPressed]";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "%s Failed to cancel the consent request on source device with error %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PSUIPlanPendingTransferCancelConsentRequestCell cancelPressed]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s Successfully cancelled the consent request on the source device", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end