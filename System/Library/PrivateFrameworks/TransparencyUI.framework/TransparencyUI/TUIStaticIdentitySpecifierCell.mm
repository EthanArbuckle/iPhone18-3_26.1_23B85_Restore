@interface TUIStaticIdentitySpecifierCell
- (TUIStaticIdentitySpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TUIStaticIdentitySpecifierCell

- (TUIStaticIdentitySpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v36[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_21 != -1)
  {
    [TUIStaticIdentitySpecifierCell initWithStyle:reuseIdentifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21, OS_LOG_TYPE_DEBUG))
  {
    [TUIStaticIdentitySpecifierCell initWithStyle:reuseIdentifier:];
  }

  v35.receiver = self;
  v35.super_class = TUIStaticIdentitySpecifierCell;
  v7 = [(PSTableCell *)&v35 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v7->_textView;
    v7->_textView = v9;

    [(UITextView *)v7->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v7->_textView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v11 setBackgroundColor:clearColor];

    textContainer = [(UITextView *)v7->_textView textContainer];
    [textContainer setLineBreakMode:0];

    [(UITextView *)v7->_textView setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    textContainer2 = [(UITextView *)v7->_textView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    [(UITextView *)v7->_textView setScrollEnabled:0];
    [(UITextView *)v7->_textView setSelectable:1];
    [(UITextView *)v7->_textView setEditable:0];
    [(UITextView *)v7->_textView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v7->_textView setDelegate:v7];
    [(TUIStaticIdentitySpecifierCell *)v7 addSubview:v7->_textView];
    v27 = MEMORY[0x277CCAAD0];
    topAnchor = [(UITextView *)v7->_textView topAnchor];
    detailTextLabel = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    topAnchor2 = [detailTextLabel topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v30;
    leadingAnchor = [(UITextView *)v7->_textView leadingAnchor];
    detailTextLabel2 = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    leadingAnchor2 = [detailTextLabel2 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[1] = v15;
    trailingAnchor = [(UITextView *)v7->_textView trailingAnchor];
    detailTextLabel3 = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    [detailTextLabel3 trailingAnchor];
    v18 = v34 = identifierCopy;
    v19 = [trailingAnchor constraintEqualToAnchor:v18];
    v36[2] = v19;
    bottomAnchor = [(UITextView *)v7->_textView bottomAnchor];
    bottomAnchor2 = [(TUIStaticIdentitySpecifierCell *)v7 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v27 activateConstraints:v23];

    identifierCopy = v34;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __64__TUIStaticIdentitySpecifierCell_initWithStyle_reuseIdentifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v95[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v91.receiver = self;
  v91.super_class = TUIStaticIdentitySpecifierCell;
  [(PSTableCell *)&v91 refreshCellContentsWithSpecifier:specifierCopy];
  textLabel = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  layer = [textLabel layer];
  disableUpdateMask = [layer disableUpdateMask];

  textLabel2 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  layer2 = [textLabel2 layer];
  [layer2 setDisableUpdateMask:disableUpdateMask | 0x12u];

  textLabel3 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [textLabel3 setFont:v11];

  textLabel4 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [textLabel4 setTextColor:labelColor];

  textLabel5 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  [textLabel5 setLineBreakMode:0];

  textLabel6 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  [textLabel6 setNumberOfLines:0];

  stackView = self->_stackView;
  if (stackView)
  {
    [(UIStackView *)stackView removeFromSuperview];
    v17 = self->_stackView;
    self->_stackView = 0;
  }

  v18 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  textLabel7 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v20 = textLabel7;
  v21 = MEMORY[0x277D740A8];
  if (v18)
  {
    [textLabel7 setText:v18];

    textLabel8 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    [textLabel8 setAccessibilityIdentifier:@"Verification Code"];
  }

  else
  {
    [textLabel7 setText:@" "];

    v94 = *v21;
    textLabel9 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    font = [textLabel9 font];
    v95[0] = font;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
    [@"8888" sizeWithAttributes:v25];
    v27 = v26;

    textLabel8 = objc_opt_new();
    [textLabel8 setTranslatesAutoresizingMaskIntoConstraints:0];
    tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [textLabel8 setBackgroundColor:tertiarySystemFillColor];

    layer3 = [textLabel8 layer];
    [layer3 setCornerRadius:8.0];

    layer4 = [textLabel8 layer];
    [layer4 setMasksToBounds:0];

    v31 = objc_opt_new();
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    tertiarySystemFillColor2 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [v31 setBackgroundColor:tertiarySystemFillColor2];

    layer5 = [v31 layer];
    [layer5 setCornerRadius:8.0];

    v90 = v31;
    layer6 = [v31 layer];
    [layer6 setMasksToBounds:0];

    v35 = objc_alloc(MEMORY[0x277D75A68]);
    v93[0] = textLabel8;
    v93[1] = v31;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v37 = [v35 initWithArrangedSubviews:v36];
    v38 = self->_stackView;
    self->_stackView = v37;

    [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setAxis:0];
    [(UIStackView *)self->_stackView setSpacing:8.0];
    [(UIStackView *)self->_stackView setDistribution:3];
    [(UIStackView *)self->_stackView setAccessibilityIdentifier:@"Verification Code"];
    [(TUIStaticIdentitySpecifierCell *)self addSubview:self->_stackView];
    v81 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)self->_stackView topAnchor];
    textLabel10 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    topAnchor2 = [textLabel10 topAnchor];
    v86 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v92[0] = v86;
    leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
    textLabel11 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    leadingAnchor2 = [textLabel11 leadingAnchor];
    v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v92[1] = v82;
    bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
    textLabel12 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    bottomAnchor2 = [textLabel12 bottomAnchor];
    v77 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v92[2] = v77;
    trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
    trailingAnchor2 = [(TUIStaticIdentitySpecifierCell *)self trailingAnchor];
    v40 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v92[3] = v40;
    widthAnchor = [textLabel8 widthAnchor];
    [widthAnchor constraintEqualToConstant:v27];
    v43 = v42 = specifierCopy;
    v92[4] = v43;
    widthAnchor2 = [v90 widthAnchor];
    v45 = [widthAnchor2 constraintEqualToConstant:v27];
    v92[5] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
    [v81 activateConstraints:v46];

    v18 = 0;
    specifierCopy = v42;

    v21 = MEMORY[0x277D740A8];
  }

  detailTextLabel = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v48 = MEMORY[0x277D74300];
  v49 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:0];
  v50 = [v48 fontWithDescriptor:v49 size:0.0];
  [detailTextLabel setFont:v50];

  detailTextLabel2 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v52 = *MEMORY[0x277D40160];
  v53 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
  [detailTextLabel2 setText:v53];

  detailTextLabel3 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  [detailTextLabel3 setLineBreakMode:0];

  detailTextLabel4 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  [detailTextLabel4 setNumberOfLines:0];

  detailTextLabel5 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [detailTextLabel5 setTextColor:clearColor];

  v58 = [specifierCopy propertyForKey:v52];
  v59 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v58];
  mutableString = [v59 mutableString];
  v61 = [mutableString length];

  v62 = *v21;
  detailTextLabel6 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  font2 = [detailTextLabel6 font];
  [v59 addAttribute:v62 value:font2 range:{0, v61}];

  v65 = *MEMORY[0x277D740C0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v59 addAttribute:v65 value:secondaryLabelColor range:{0, v61}];

  mutableString2 = [v59 mutableString];
  v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v69 = [v68 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v70 = [mutableString2 rangeOfString:v69];
  v72 = v71;

  if (v70 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v73 = *MEMORY[0x277D740E8];
    v74 = [MEMORY[0x277CBEBC0] URLWithString:&stru_287F92480];
    [v59 addAttribute:v73 value:v74 range:{v70, v72}];
  }

  [(UITextView *)self->_textView setAttributedText:v59];
  [(TUIStaticIdentitySpecifierCell *)self bringSubviewToFront:self->_textView];
  [(TUIStaticIdentitySpecifierCell *)self setNeedsLayout];

  v75 = *MEMORY[0x277D85DE8];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_21 != -1)
  {
    [TUIStaticIdentitySpecifierCell textView:primaryActionForTextItem:defaultAction:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21, OS_LOG_TYPE_DEBUG))
  {
    [TUIStaticIdentitySpecifierCell textView:primaryActionForTextItem:defaultAction:];
  }

  v10 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht213465"];
  [*MEMORY[0x277D76620] openURL:v10 options:MEMORY[0x277CBEC10] completionHandler:0];

  return actionCopy;
}

uint64_t __82__TUIStaticIdentitySpecifierCell_textView_primaryActionForTextItem_defaultAction___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)initWithStyle:reuseIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)textView:primaryActionForTextItem:defaultAction:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end