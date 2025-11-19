@interface TUIKTStatusCell
- (TUIKTStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setStatusText:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation TUIKTStatusCell

- (TUIKTStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_13 != -1)
  {
    [TUIKTStatusCell initWithStyle:reuseIdentifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStatusCell initWithStyle:reuseIdentifier:];
  }

  v26.receiver = self;
  v26.super_class = TUIKTStatusCell;
  v7 = [(PSTableCell *)&v26 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [(PSTableCell *)v7 titleLabel];
    [v9 setHidden:1];

    v10 = [(TUIKTStatusCell *)v8 detailTextLabel];
    [v10 setHidden:1];

    v11 = objc_opt_new();
    ktStatusStackView = v8->_ktStatusStackView;
    v8->_ktStatusStackView = v11;

    [(UIStackView *)v8->_ktStatusStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v8->_ktStatusStackView setSpacing:6.0];
    [(UIStackView *)v8->_ktStatusStackView setAxis:0];
    [(UIStackView *)v8->_ktStatusStackView setAlignment:3];
    [(UIStackView *)v8->_ktStatusStackView setDistribution:0];
    v13 = [(TUIKTStatusCell *)v8 contentView];
    [v13 addSubview:v8->_ktStatusStackView];

    v14 = objc_opt_new();
    ktStatusTitleLabel = v8->_ktStatusTitleLabel;
    v8->_ktStatusTitleLabel = v14;

    [(UILabel *)v8->_ktStatusTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_ktStatusTitleLabel setNumberOfLines:0];
    v16 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v8->_ktStatusTitleLabel setTextColor:v16];

    v17 = [(PSTableCell *)v8 titleLabel];
    v18 = [v17 font];
    [(UILabel *)v8->_ktStatusTitleLabel setFont:v18];

    [(UIStackView *)v8->_ktStatusStackView addArrangedSubview:v8->_ktStatusTitleLabel];
    v19 = objc_opt_new();
    ktStatusTextLabel = v8->_ktStatusTextLabel;
    v8->_ktStatusTextLabel = v19;

    [(UILabel *)v8->_ktStatusTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_ktStatusTextLabel setNumberOfLines:1];
    v21 = [(TUIKTStatusCell *)v8 detailTextLabel];
    v22 = [v21 font];
    [(UILabel *)v8->_ktStatusTextLabel setFont:v22];

    LODWORD(v23) = 1148846080;
    [(UILabel *)v8->_ktStatusTextLabel setContentHuggingPriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UILabel *)v8->_ktStatusTextLabel setContentHuggingPriority:1 forAxis:v24];
    [(UIStackView *)v8->_ktStatusStackView addArrangedSubview:v8->_ktStatusTextLabel];
  }

  return v8;
}

uint64_t __49__TUIKTStatusCell_initWithStyle_reuseIdentifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_13 != -1)
  {
    [TUIKTStatusCell refreshCellContentsWithSpecifier:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStatusCell refreshCellContentsWithSpecifier:];
  }

  v25.receiver = self;
  v25.super_class = TUIKTStatusCell;
  [(PSTableCell *)&v25 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 name];
  [(UILabel *)self->_ktStatusTitleLabel setText:v5];

  [(TUIKTStatusCell *)self _setStatusText:v4];
  v6 = [(TUIKTStatusCell *)self _tableView];
  [v6 layoutMargins];

  v7 = [(TUIKTStatusCell *)self _tableView];
  [v7 frame];

  if ([v4 cellType] == 2)
  {
    v8 = [(PSTableCell *)self iconImageView];
    [v8 frame];
  }

  UICeilToViewScale();
  v10 = v9;
  v11 = [(UILabel *)self->_ktStatusTitleLabel text];
  v38 = *MEMORY[0x277D740A8];
  v12 = [(UILabel *)self->_ktStatusTitleLabel font];
  v39[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  [v11 sizeWithAttributes:v13];
  UICeilToViewScale();
  v15 = v14;

  [(UILabel *)self->_ktStatusTextLabel intrinsicContentSize];
  UICeilToViewScale();
  v17 = v16;
  v18 = v15 + v16;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_13 != -1)
  {
    [TUIKTStatusCell refreshCellContentsWithSpecifier:];
  }

  v19 = v18 + 6.0;
  v20 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v27 = "[TUIKTStatusCell refreshCellContentsWithSpecifier:]";
    v28 = 1024;
    v29 = v10 > v19;
    v30 = 2048;
    v31 = v10;
    v32 = 2048;
    v33 = v15;
    v34 = 2048;
    v35 = v17;
    v36 = 2114;
    v37 = self;
    _os_log_debug_impl(&dword_26F50B000, v20, OS_LOG_TYPE_DEBUG, "%s isHorizontal = %d (cellWidth = %f, titleWidth = %f, statusWidth = %f) on %{public}@", buf, 0x3Au);
  }

  v21 = v10 <= v19;
  if (v10 <= v19)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if (v10 <= v19)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 6.0;
  }

  [(UIStackView *)self->_ktStatusStackView setAxis:v21];
  [(UIStackView *)self->_ktStatusStackView setAlignment:v22];
  [(UIStackView *)self->_ktStatusStackView setSpacing:v23];
  [(TUIKTStatusCell *)self setNeedsUpdateConstraints];
  [(TUIKTStatusCell *)self setNeedsLayout];

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __52__TUIKTStatusCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __52__TUIKTStatusCell_refreshCellContentsWithSpecifier___block_invoke_10()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)updateConstraints
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __36__TUIKTStatusCell_updateConstraints__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)_setStatusText:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_13 != -1)
  {
    [TUIKTStatusCell _setStatusText:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStatusCell _setStatusText:];
  }

  v5 = [v4 propertyForKey:*MEMORY[0x277D40160]];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_287F92480;
  }

  v7 = [v4 propertyForKey:*MEMORY[0x277D40158]];
  if (!v7)
  {
    v7 = [MEMORY[0x277D75348] systemRedColor];
  }

  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  if ([(__CFString *)v6 length])
  {
    v9 = [MEMORY[0x277D75348] systemRedColor];

    if (v7 == v9)
    {
      v10 = MEMORY[0x277D755D0];
      v11 = [(TUIKTStatusCell *)self detailTextLabel];
      v12 = [v11 font];
      [v12 pointSize];
      v25 = [v10 configurationWithPointSize:4 weight:1 scale:?];

      v13 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:v25];
      v14 = [v13 imageWithTintColor:v7];

      v15 = [v14 imageWithRenderingMode:2];

      v16 = [MEMORY[0x277D74270] textAttachmentWithImage:v15];
      v17 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
      [v8 appendAttributedString:v17];

      v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [v8 appendAttributedString:v18];
    }
  }

  v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
  [v8 appendAttributedString:v19];

  v20 = objc_opt_new();
  [v20 setAlignment:{2 * (-[TUIKTStatusCell effectiveUserInterfaceLayoutDirection](self, "effectiveUserInterfaceLayoutDirection") == 1)}];
  v21 = [v8 length];
  [v8 addAttribute:*MEMORY[0x277D74118] value:v20 range:{0, v21}];
  [v8 addAttribute:*MEMORY[0x277D740C0] value:v7 range:{0, v21}];
  v22 = *MEMORY[0x277D740A8];
  v23 = [(TUIKTStatusCell *)self detailTextLabel];
  v24 = [v23 font];
  [v8 addAttribute:v22 value:v24 range:{0, v21}];

  [(UILabel *)self->_ktStatusTextLabel setAttributedText:v8];
}

uint64_t __34__TUIKTStatusCell__setStatusText___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
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

- (void)_setStatusText:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end