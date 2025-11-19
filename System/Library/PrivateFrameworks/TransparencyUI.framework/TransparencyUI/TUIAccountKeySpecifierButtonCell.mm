@interface TUIAccountKeySpecifierButtonCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TUIAccountKeySpecifierButtonCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [TUIAccountKeySpecifierButtonCell refreshCellContentsWithSpecifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    [TUIAccountKeySpecifierButtonCell refreshCellContentsWithSpecifier:];
  }

  v13.receiver = self;
  v13.super_class = TUIAccountKeySpecifierButtonCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x277D756E0] cellConfiguration];
  v6 = [v4 propertyForKey:*MEMORY[0x277D3FFC0]];
  [v5 setImage:v6];

  v7 = [v4 name];
  [v5 setText:v7];

  v8 = [(TUIAccountKeySpecifierButtonCell *)self textLabel];
  v9 = [v8 font];
  v10 = [v5 textProperties];
  [v10 setFont:v9];

  [v5 setImageToTextPadding:5.0];
  [(TUIAccountKeySpecifierButtonCell *)self setContentConfiguration:v5];
  v11 = [(TUIAccountKeySpecifierButtonCell *)self imageView];
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v11 setTintColor:v12];

  [(TUIAccountKeySpecifierButtonCell *)self setNeedsLayout];
}

uint64_t __69__TUIAccountKeySpecifierButtonCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end