@interface PSUIPlanPendingTransferCancelConsentRequestCell
- (PSUIPlanPendingTransferCancelConsentRequestCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)cancelPressed;
@end

@implementation PSUIPlanPendingTransferCancelConsentRequestCell

- (PSUIPlanPendingTransferCancelConsentRequestCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v67.receiver = self;
  v67.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
  v9 = [(PSTableCell *)&v67 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v64 = [v8 propertyForKey:*MEMORY[0x277D3FE70]];
    v10 = +[PSUICellularPlanManagerCache sharedInstance];
    v11 = [v10 planPendingTransferFromReference:v64];
    planPendingTransfer = v9->_planPendingTransfer;
    v9->_planPendingTransfer = v11;

    v13 = [MEMORY[0x277CF96D8] sharedManager];
    cellularPlanManager = v9->_cellularPlanManager;
    v9->_cellularPlanManager = v13;

    v66.receiver = v9;
    v66.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
    v15 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)&v66 textLabel];
    [v15 setHidden:1];

    v65.receiver = v9;
    v65.super_class = PSUIPlanPendingTransferCancelConsentRequestCell;
    v16 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)&v65 textLabel];
    [v16 removeFromSuperview];

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"REQUEST_SENT" value:&stru_287733598 table:@"Gemini-Gemini"];
    [v17 setText:v19];

    v20 = [MEMORY[0x277D75348] systemGrayColor];
    [v17 setTextColor:v20];

    v21 = *MEMORY[0x277D76918];
    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v17 setFont:v22];

    [v17 setAdjustsFontForContentSizeCategory:1];
    [v17 setNumberOfLines:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [v23 addSubview:v17];

    v24 = [v17 centerYAnchor];
    v25 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v26 = [v25 centerYAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [v17 leadingAnchor];
    v29 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v30 = [v29 layoutMarginsGuide];
    v31 = [v30 leadingAnchor];
    v32 = [v28 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [MEMORY[0x277D75220] buttonWithType:1];
    v34 = [v33 titleLabel];
    v35 = [MEMORY[0x277D74300] preferredFontForTextStyle:v21];
    [v34 setFont:v35];

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    [v33 setTitle:v37 forState:0];

    [v33 addTarget:v9 action:sel_cancelPressed forEvents:64];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [v38 addSubview:v33];

    v39 = [v33 centerYAnchor];
    v40 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v41 = [v40 centerYAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [v33 trailingAnchor];
    v44 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v45 = [v44 layoutMarginsGuide];
    v46 = [v45 trailingAnchor];
    v47 = [v43 constraintEqualToAnchor:v46];
    [v47 setActive:1];

    LODWORD(v48) = 1148846080;
    [v33 setContentCompressionResistancePriority:0 forAxis:v48];
    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v49 setText:&stru_287733598];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    [v50 addSubview:v49];

    v51 = [v49 centerYAnchor];
    v52 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v53 = [v52 centerYAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [v49 trailingAnchor];
    v56 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)v9 contentView];
    v57 = [v56 trailingAnchor];
    v58 = [v55 constraintLessThanOrEqualToAnchor:v57];
    [v58 setActive:1];

    LODWORD(v59) = 1148846080;
    [v49 setContentCompressionResistancePriority:0 forAxis:v59];
    v60 = [v49 leadingAnchor];
    v61 = [v33 trailingAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v61 multiplier:2.0];
    [v62 setActive:1];
  }

  return v9;
}

- (void)cancelPressed
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(CTCellularPlanManager *)self->_cellularPlanManager cancelPlanActivation:self->_planPendingTransfer];
  v4 = [(PSUIPlanPendingTransferCancelConsentRequestCell *)self getLogger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[PSUIPlanPendingTransferCancelConsentRequestCell cancelPressed]";
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "%s Failed to cancel the consent request on source device with error %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PSUIPlanPendingTransferCancelConsentRequestCell cancelPressed]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s Successfully cancelled the consent request on the source device", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end