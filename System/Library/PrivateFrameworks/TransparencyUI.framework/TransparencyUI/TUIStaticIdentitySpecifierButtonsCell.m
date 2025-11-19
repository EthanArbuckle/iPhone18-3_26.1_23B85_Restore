@interface TUIStaticIdentitySpecifierButtonsCell
- (void)markAsVerifiedTapped:(id)a3;
- (void)noMatchTapped:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TUIStaticIdentitySpecifierButtonsCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v93[1] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = TUIStaticIdentitySpecifierButtonsCell;
  v4 = a3;
  [(PSTableCell *)&v78 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSTableCell *)self titleLabel];
  [v5 setText:&stru_287F92480];

  v6 = [v4 propertyForKey:*MEMORY[0x277D3FF38]];
  v7 = [v4 propertyForKey:*MEMORY[0x277D401A8]];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NO_MATCH" value:&stru_287F92480 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v75 = [v10 localizedStringForKey:@"VERIFIED" value:&stru_287F92480 table:@"Localizable"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v77 = [v11 localizedStringForKey:@"MARK_AS_VERIFIED_NO_DOTS" value:&stru_287F92480 table:@"Localizable"];

  v12 = [MEMORY[0x277D75220] buttonWithType:1];
  v13 = [MEMORY[0x277D75C80] currentTraitCollection];
  v14 = [v13 preferredContentSizeCategory];
  LODWORD(v5) = UIContentSizeCategoryIsAccessibilityCategory(v14);

  v76 = v9;
  if (v5)
  {
    goto LABEL_7;
  }

  v15 = *MEMORY[0x277D740A8];
  v92 = *MEMORY[0x277D740A8];
  v16 = [v12 titleLabel];
  v17 = [v16 font];
  v93[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
  [v9 sizeWithAttributes:v18];
  UICeilToViewScale();
  v20 = v19;

  v21 = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [v21 frame];
  v22 = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [v22 layoutMargins];
  v23 = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [v23 layoutMargins];
  [(UIStackView *)self->_buttonsStackView spacing];
  UICeilToViewScale();
  v25 = v24;

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_21 != -1)
  {
    [TUIStaticIdentitySpecifierButtonsCell refreshCellContentsWithSpecifier:];
  }

  v26 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v83 = "[TUIStaticIdentitySpecifierButtonsCell refreshCellContentsWithSpecifier:]";
    v84 = 1024;
    v85 = v20 > v25;
    v86 = 2048;
    v87 = v25;
    v88 = 2048;
    v89 = v20;
    v90 = 2114;
    v91 = self;
    _os_log_debug_impl(&dword_26F50B000, v26, OS_LOG_TYPE_DEBUG, "%s verticalLayout = %d (cellHalfWidth = %f, stringWidth = %f) on %{public}@", buf, 0x30u);
  }

  if (v20 > v25)
  {
LABEL_7:
    v27 = 1;
  }

  else
  {
    if ([v7 BOOLValue])
    {
      v28 = v75;
    }

    else
    {
      v28 = v77;
    }

    v80 = v15;
    v29 = [v12 titleLabel];
    v30 = [v29 font];
    v81 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    [v28 sizeWithAttributes:v31];
    UICeilToViewScale();
    v33 = v32;

    v27 = v33 > v25;
  }

  buttonsStackView = self->_buttonsStackView;
  if (buttonsStackView)
  {
    [(UIStackView *)buttonsStackView removeFromSuperview];
  }

  v35 = objc_alloc_init(MEMORY[0x277D75A68]);
  v36 = self->_buttonsStackView;
  self->_buttonsStackView = v35;

  [(UIStackView *)self->_buttonsStackView setAxis:v27];
  [(UIStackView *)self->_buttonsStackView setSpacing:12.0];
  [(UIStackView *)self->_buttonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_buttonsStackView setAlignment:0];
  [(UIStackView *)self->_buttonsStackView setDistribution:1];
  [v12 setTitle:v9 forState:0];
  v37 = [MEMORY[0x277D75230] grayButtonConfiguration];
  [v37 setContentInsets:{10.0, 0.0, 10.0, 0.0}];
  v38 = [MEMORY[0x277D75348] systemRedColor];
  [v37 setBaseForegroundColor:v38];

  [v12 setConfiguration:v37];
  v39 = [v12 titleLabel];
  [v39 setTextAlignment:1];

  [v12 setEnabled:{objc_msgSend(v6, "BOOLValue")}];
  [v12 addTarget:self action:sel_noMatchTapped_ forControlEvents:64];
  [(UIStackView *)self->_buttonsStackView addArrangedSubview:v12];
  v40 = [MEMORY[0x277D75220] buttonWithType:1];

  [v37 setBaseForegroundColor:0];
  v41 = [v7 BOOLValue];
  v42 = v77;
  if (v41)
  {
    v43 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    [v37 setImage:v43];

    [v37 setImagePadding:5.0];
    v44 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:-1];
    [v37 setPreferredSymbolConfigurationForImage:v44];

    v45 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v37 setBaseForegroundColor:v45];

    v42 = v75;
  }

  [v40 setTitle:v42 forState:0];
  [v40 setConfiguration:v37];
  v46 = [v40 titleLabel];
  [v46 setTextAlignment:1];

  v73 = v37;
  v74 = v6;
  v72 = v7;
  if ([v6 BOOLValue])
  {
    v47 = [v7 BOOLValue] ^ 1;
  }

  else
  {
    v47 = 0;
  }

  [v40 setEnabled:v47];
  [v40 addTarget:self action:sel_markAsVerifiedTapped_ forControlEvents:64];
  [(UIStackView *)self->_buttonsStackView addArrangedSubview:v40];
  v48 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  [v48 addSubview:self->_buttonsStackView];

  v63 = MEMORY[0x277CCAAD0];
  v70 = [(UIStackView *)self->_buttonsStackView topAnchor];
  v71 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  v69 = [v71 topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v79[0] = v68;
  v66 = [(UIStackView *)self->_buttonsStackView leadingAnchor];
  v67 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  v65 = [v67 layoutMarginsGuide];
  v64 = [v65 leadingAnchor];
  v62 = [v66 constraintEqualToAnchor:v64];
  v79[1] = v62;
  v59 = [(UIStackView *)self->_buttonsStackView trailingAnchor];
  v60 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  v49 = [v60 layoutMarginsGuide];
  v50 = [v49 trailingAnchor];
  v51 = [v59 constraintEqualToAnchor:v50];
  v79[2] = v51;
  v52 = [(UIStackView *)self->_buttonsStackView bottomAnchor];
  v53 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  v54 = [v53 layoutMarginsGuide];
  v55 = [v54 bottomAnchor];
  [v52 constraintEqualToAnchor:v55 constant:-5.0];
  v56 = v61 = v40;
  v79[3] = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
  [v63 activateConstraints:v57];

  [(TUIStaticIdentitySpecifierButtonsCell *)self setNeedsLayout];
  v58 = *MEMORY[0x277D85DE8];
}

uint64_t __74__TUIStaticIdentitySpecifierButtonsCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)noMatchTapped:(id)a3
{
  v3 = [(PSTableCell *)self specifier];
  [v3 performConfirmationAlternateAction];
}

- (void)markAsVerifiedTapped:(id)a3
{
  v3 = [(PSTableCell *)self specifier];
  [v3 performConfirmationAction];
}

@end