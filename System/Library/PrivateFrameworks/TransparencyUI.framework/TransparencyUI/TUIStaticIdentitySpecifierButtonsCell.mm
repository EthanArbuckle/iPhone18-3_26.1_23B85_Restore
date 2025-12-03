@interface TUIStaticIdentitySpecifierButtonsCell
- (void)markAsVerifiedTapped:(id)tapped;
- (void)noMatchTapped:(id)tapped;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TUIStaticIdentitySpecifierButtonsCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v93[1] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = TUIStaticIdentitySpecifierButtonsCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v78 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:&stru_287F92480];

  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF38]];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NO_MATCH" value:&stru_287F92480 table:@"Localizable"];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v75 = [v10 localizedStringForKey:@"VERIFIED" value:&stru_287F92480 table:@"Localizable"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v77 = [v11 localizedStringForKey:@"MARK_AS_VERIFIED_NO_DOTS" value:&stru_287F92480 table:@"Localizable"];

  v12 = [MEMORY[0x277D75220] buttonWithType:1];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
  LODWORD(titleLabel) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v76 = v9;
  if (titleLabel)
  {
    goto LABEL_7;
  }

  v15 = *MEMORY[0x277D740A8];
  v92 = *MEMORY[0x277D740A8];
  titleLabel2 = [v12 titleLabel];
  font = [titleLabel2 font];
  v93[0] = font;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
  [v9 sizeWithAttributes:v18];
  UICeilToViewScale();
  v20 = v19;

  _tableView = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [_tableView frame];
  _tableView2 = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [_tableView2 layoutMargins];
  _tableView3 = [(TUIStaticIdentitySpecifierButtonsCell *)self _tableView];
  [_tableView3 layoutMargins];
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
    selfCopy = self;
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
    titleLabel3 = [v12 titleLabel];
    font2 = [titleLabel3 font];
    v81 = font2;
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
  grayButtonConfiguration = [MEMORY[0x277D75230] grayButtonConfiguration];
  [grayButtonConfiguration setContentInsets:{10.0, 0.0, 10.0, 0.0}];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [grayButtonConfiguration setBaseForegroundColor:systemRedColor];

  [v12 setConfiguration:grayButtonConfiguration];
  titleLabel4 = [v12 titleLabel];
  [titleLabel4 setTextAlignment:1];

  [v12 setEnabled:{objc_msgSend(v6, "BOOLValue")}];
  [v12 addTarget:self action:sel_noMatchTapped_ forControlEvents:64];
  [(UIStackView *)self->_buttonsStackView addArrangedSubview:v12];
  v40 = [MEMORY[0x277D75220] buttonWithType:1];

  [grayButtonConfiguration setBaseForegroundColor:0];
  bOOLValue = [v7 BOOLValue];
  v42 = v77;
  if (bOOLValue)
  {
    v43 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    [grayButtonConfiguration setImage:v43];

    [grayButtonConfiguration setImagePadding:5.0];
    v44 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:-1];
    [grayButtonConfiguration setPreferredSymbolConfigurationForImage:v44];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [grayButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

    v42 = v75;
  }

  [v40 setTitle:v42 forState:0];
  [v40 setConfiguration:grayButtonConfiguration];
  titleLabel5 = [v40 titleLabel];
  [titleLabel5 setTextAlignment:1];

  v73 = grayButtonConfiguration;
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
  contentView = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  [contentView addSubview:self->_buttonsStackView];

  v63 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIStackView *)self->_buttonsStackView topAnchor];
  contentView2 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v68 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v79[0] = v68;
  leadingAnchor = [(UIStackView *)self->_buttonsStackView leadingAnchor];
  contentView3 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v62 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v79[1] = v62;
  trailingAnchor = [(UIStackView *)self->_buttonsStackView trailingAnchor];
  contentView4 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v79[2] = v51;
  bottomAnchor = [(UIStackView *)self->_buttonsStackView bottomAnchor];
  contentView5 = [(TUIStaticIdentitySpecifierButtonsCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
  [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
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

- (void)noMatchTapped:(id)tapped
{
  specifier = [(PSTableCell *)self specifier];
  [specifier performConfirmationAlternateAction];
}

- (void)markAsVerifiedTapped:(id)tapped
{
  specifier = [(PSTableCell *)self specifier];
  [specifier performConfirmationAction];
}

@end