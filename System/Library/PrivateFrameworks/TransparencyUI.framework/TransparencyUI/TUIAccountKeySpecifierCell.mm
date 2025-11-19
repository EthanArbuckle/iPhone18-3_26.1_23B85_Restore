@interface TUIAccountKeySpecifierCell
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (TUIAccountKeySpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)handleLongPressGesture:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TUIAccountKeySpecifierCell

- (TUIAccountKeySpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v43[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [TUIAccountKeySpecifierCell initWithStyle:reuseIdentifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierCell initWithStyle:reuseIdentifier:];
  }

  v42.receiver = self;
  v42.super_class = TUIAccountKeySpecifierCell;
  v7 = [(PSTableCell *)&v42 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [TUIAccountKeyLabel alloc];
    v9 = [(TUIAccountKeyLabel *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    accountKeyLabel = v7->_accountKeyLabel;
    v7->_accountKeyLabel = v9;

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v11 pointSize];
    v13 = v12;

    v14 = v7->_accountKeyLabel;
    v15 = [MEMORY[0x277D74300] monospacedSystemFontOfSize:v13 weight:*MEMORY[0x277D74410]];
    [(TUIAccountKeyLabel *)v14 setFont:v15];

    v16 = v7->_accountKeyLabel;
    v17 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(TUIAccountKeyLabel *)v16 setTextColor:v17];

    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setUserInteractionEnabled:1];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setLineBreakMode:1];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setNumberOfLines:0];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setTextAlignment:0];
    v18 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:v7];
    [(TUIAccountKeySpecifierCell *)v7 setEditInteraction:v18];

    v19 = v7->_accountKeyLabel;
    v20 = [(TUIAccountKeySpecifierCell *)v7 editInteraction];
    [(TUIAccountKeyLabel *)v19 addInteraction:v20];

    v40 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel_handleLongPressGesture_];
    [v40 setAllowedTouchTypes:&unk_287F9E738];
    [(TUIAccountKeyLabel *)v7->_accountKeyLabel addGestureRecognizer:v40];
    v21 = [(TUIAccountKeySpecifierCell *)v7 contentView];
    [v21 addSubview:v7->_accountKeyLabel];

    [(TUIAccountKeyLabel *)v7->_accountKeyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(TUIAccountKeySpecifierCell *)v7 contentView];
    [v22 layoutMarginsGuide];
    v23 = v41 = v6;

    v35 = MEMORY[0x277CCAAD0];
    v39 = [(TUIAccountKeyLabel *)v7->_accountKeyLabel topAnchor];
    v38 = [v23 topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:5.0];
    v43[0] = v37;
    v36 = [(TUIAccountKeyLabel *)v7->_accountKeyLabel bottomAnchor];
    v34 = [v23 bottomAnchor];
    v24 = [v36 constraintEqualToAnchor:v34 constant:-5.0];
    v43[1] = v24;
    v25 = [(TUIAccountKeyLabel *)v7->_accountKeyLabel leadingAnchor];
    v26 = [v23 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v43[2] = v27;
    v28 = [(TUIAccountKeyLabel *)v7->_accountKeyLabel trailingAnchor];
    v29 = [v23 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v43[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v35 activateConstraints:v31];

    v6 = v41;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __60__TUIAccountKeySpecifierCell_initWithStyle_reuseIdentifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [TUIAccountKeySpecifierCell refreshCellContentsWithSpecifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierCell refreshCellContentsWithSpecifier:];
  }

  v10.receiver = self;
  v10.super_class = TUIAccountKeySpecifierCell;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:v4];
  v5 = [(TUIAccountKeySpecifierCell *)self textLabel];
  [v5 setHidden:1];

  accountKeyLabel = self->_accountKeyLabel;
  v7 = [v4 propertyForKey:*MEMORY[0x277D40170]];
  [(TUIAccountKeyLabel *)accountKeyLabel setText:v7];

  v8 = self->_accountKeyLabel;
  v9 = [v4 propertyForKey:*MEMORY[0x277D401A8]];
  [(TUIAccountKeyLabel *)v8 setAccessibilityIdentifier:v9];

  [(TUIAccountKeySpecifierCell *)self setNeedsLayout];
}

uint64_t __63__TUIAccountKeySpecifierCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v11 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:{v7, v9}];
  v10 = [(TUIAccountKeySpecifierCell *)self editInteraction];
  [v10 presentEditMenuWithConfiguration:v11];
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v4 = [a3 view];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)initWithStyle:reuseIdentifier:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end