@interface TUIAccountKeySpecifierButtonCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TUIAccountKeySpecifierButtonCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
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
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  v6 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFC0]];
  [cellConfiguration setImage:v6];

  name = [specifierCopy name];
  [cellConfiguration setText:name];

  textLabel = [(TUIAccountKeySpecifierButtonCell *)self textLabel];
  font = [textLabel font];
  textProperties = [cellConfiguration textProperties];
  [textProperties setFont:font];

  [cellConfiguration setImageToTextPadding:5.0];
  [(TUIAccountKeySpecifierButtonCell *)self setContentConfiguration:cellConfiguration];
  imageView = [(TUIAccountKeySpecifierButtonCell *)self imageView];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [imageView setTintColor:secondaryLabelColor];

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