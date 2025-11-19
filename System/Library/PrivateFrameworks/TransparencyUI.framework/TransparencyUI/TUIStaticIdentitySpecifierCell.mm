@interface TUIStaticIdentitySpecifierCell
- (TUIStaticIdentitySpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TUIStaticIdentitySpecifierCell

- (TUIStaticIdentitySpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
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
  v7 = [(PSTableCell *)&v35 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D75C40]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v7->_textView;
    v7->_textView = v9;

    [(UITextView *)v7->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v7->_textView;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v11 setBackgroundColor:v12];

    v13 = [(UITextView *)v7->_textView textContainer];
    [v13 setLineBreakMode:0];

    [(UITextView *)v7->_textView setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    v14 = [(UITextView *)v7->_textView textContainer];
    [v14 setLineFragmentPadding:0.0];

    [(UITextView *)v7->_textView setScrollEnabled:0];
    [(UITextView *)v7->_textView setSelectable:1];
    [(UITextView *)v7->_textView setEditable:0];
    [(UITextView *)v7->_textView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v7->_textView setDelegate:v7];
    [(TUIStaticIdentitySpecifierCell *)v7 addSubview:v7->_textView];
    v27 = MEMORY[0x277CCAAD0];
    v32 = [(UITextView *)v7->_textView topAnchor];
    v33 = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    v31 = [v33 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v36[0] = v30;
    v28 = [(UITextView *)v7->_textView leadingAnchor];
    v29 = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    v26 = [v29 leadingAnchor];
    v15 = [v28 constraintEqualToAnchor:v26];
    v36[1] = v15;
    v16 = [(UITextView *)v7->_textView trailingAnchor];
    v17 = [(TUIStaticIdentitySpecifierCell *)v7 detailTextLabel];
    [v17 trailingAnchor];
    v18 = v34 = v6;
    v19 = [v16 constraintEqualToAnchor:v18];
    v36[2] = v19;
    v20 = [(UITextView *)v7->_textView bottomAnchor];
    v21 = [(TUIStaticIdentitySpecifierCell *)v7 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v36[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v27 activateConstraints:v23];

    v6 = v34;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __64__TUIStaticIdentitySpecifierCell_initWithStyle_reuseIdentifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_21 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v95[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v91.receiver = self;
  v91.super_class = TUIStaticIdentitySpecifierCell;
  [(PSTableCell *)&v91 refreshCellContentsWithSpecifier:v4];
  v5 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v6 = [v5 layer];
  v7 = [v6 disableUpdateMask];

  v8 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v9 = [v8 layer];
  [v9 setDisableUpdateMask:v7 | 0x12u];

  v10 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [v10 setFont:v11];

  v12 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v13 = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:v13];

  v14 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  [v14 setLineBreakMode:0];

  v15 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  [v15 setNumberOfLines:0];

  stackView = self->_stackView;
  if (stackView)
  {
    [(UIStackView *)stackView removeFromSuperview];
    v17 = self->_stackView;
    self->_stackView = 0;
  }

  v18 = [v4 propertyForKey:*MEMORY[0x277D40170]];
  v19 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
  v20 = v19;
  v21 = MEMORY[0x277D740A8];
  if (v18)
  {
    [v19 setText:v18];

    v22 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    [v22 setAccessibilityIdentifier:@"Verification Code"];
  }

  else
  {
    [v19 setText:@" "];

    v94 = *v21;
    v23 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    v24 = [v23 font];
    v95[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
    [@"8888" sizeWithAttributes:v25];
    v27 = v26;

    v22 = objc_opt_new();
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [v22 setBackgroundColor:v28];

    v29 = [v22 layer];
    [v29 setCornerRadius:8.0];

    v30 = [v22 layer];
    [v30 setMasksToBounds:0];

    v31 = objc_opt_new();
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [MEMORY[0x277D75348] tertiarySystemFillColor];
    [v31 setBackgroundColor:v32];

    v33 = [v31 layer];
    [v33 setCornerRadius:8.0];

    v90 = v31;
    v34 = [v31 layer];
    [v34 setMasksToBounds:0];

    v35 = objc_alloc(MEMORY[0x277D75A68]);
    v93[0] = v22;
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
    v88 = [(UIStackView *)self->_stackView topAnchor];
    v89 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    v87 = [v89 topAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v92[0] = v86;
    v84 = [(UIStackView *)self->_stackView leadingAnchor];
    v85 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    v83 = [v85 leadingAnchor];
    v82 = [v84 constraintEqualToAnchor:v83];
    v92[1] = v82;
    v79 = [(UIStackView *)self->_stackView bottomAnchor];
    v80 = [(TUIStaticIdentitySpecifierCell *)self textLabel];
    v78 = [v80 bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78];
    v92[2] = v77;
    v76 = [(UIStackView *)self->_stackView trailingAnchor];
    v39 = [(TUIStaticIdentitySpecifierCell *)self trailingAnchor];
    v40 = [v76 constraintLessThanOrEqualToAnchor:v39];
    v92[3] = v40;
    v41 = [v22 widthAnchor];
    [v41 constraintEqualToConstant:v27];
    v43 = v42 = v4;
    v92[4] = v43;
    v44 = [v90 widthAnchor];
    v45 = [v44 constraintEqualToConstant:v27];
    v92[5] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:6];
    [v81 activateConstraints:v46];

    v18 = 0;
    v4 = v42;

    v21 = MEMORY[0x277D740A8];
  }

  v47 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v48 = MEMORY[0x277D74300];
  v49 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:0];
  v50 = [v48 fontWithDescriptor:v49 size:0.0];
  [v47 setFont:v50];

  v51 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v52 = *MEMORY[0x277D40160];
  v53 = [v4 propertyForKey:*MEMORY[0x277D40160]];
  [v51 setText:v53];

  v54 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  [v54 setLineBreakMode:0];

  v55 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  [v55 setNumberOfLines:0];

  v56 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v57 = [MEMORY[0x277D75348] clearColor];
  [v56 setTextColor:v57];

  v58 = [v4 propertyForKey:v52];
  v59 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v58];
  v60 = [v59 mutableString];
  v61 = [v60 length];

  v62 = *v21;
  v63 = [(TUIStaticIdentitySpecifierCell *)self detailTextLabel];
  v64 = [v63 font];
  [v59 addAttribute:v62 value:v64 range:{0, v61}];

  v65 = *MEMORY[0x277D740C0];
  v66 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v59 addAttribute:v65 value:v66 range:{0, v61}];

  v67 = [v59 mutableString];
  v68 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v69 = [v68 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
  v70 = [v67 rangeOfString:v69];
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

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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

  return v9;
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