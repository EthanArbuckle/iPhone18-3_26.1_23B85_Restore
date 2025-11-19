@interface TUIReportToAppleSpecifierCell
- (id)attributedStringForSystemImageNamed:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation TUIReportToAppleSpecifierCell

- (id)attributedStringForSystemImageNamed:(id)a3
{
  v3 = MEMORY[0x277D74270];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:3 scale:10.0];
  v7 = [MEMORY[0x277D755B8] systemImageNamed:v4 withConfiguration:v6];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [v7 imageWithTintColor:v8];
  [v5 setImage:v9];

  v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v5];

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_6 != -1)
  {
    [TUIReportToAppleSpecifierCell refreshCellContentsWithSpecifier:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    [(TUIReportToAppleSpecifierCell *)self refreshCellContentsWithSpecifier:v5];
  }

  v51.receiver = self;
  v51.super_class = TUIReportToAppleSpecifierCell;
  [(PSTableCell *)&v51 refreshCellContentsWithSpecifier:v4];
  v6 = [(TUIReportToAppleSpecifierCell *)self textLabel];
  [v6 setText:0];

  v50 = v4;
  v7 = [v4 propertyForKey:*MEMORY[0x277D40160]];
  v8 = [(TUIReportToAppleSpecifierCell *)self detailTextLabel];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v8 setFont:v9];

  v10 = [(TUIReportToAppleSpecifierCell *)self detailTextLabel];
  v11 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v10 setTextColor:v11];

  v12 = [(TUIReportToAppleSpecifierCell *)self detailTextLabel];
  [v12 setLineBreakMode:0];

  v13 = [(TUIReportToAppleSpecifierCell *)self detailTextLabel];
  [v13 setNumberOfLines:0];

  v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\t"];
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
  v16 = objc_opt_new();
  v49 = v7;
  LODWORD(v11) = [v7 isEqual:*MEMORY[0x277D735C8]];
  v17 = [(TUIReportToAppleSpecifierCell *)self attributedStringForSystemImageNamed:@"person.crop.circle"];
  [v16 appendAttributedString:v17];

  [v16 appendAttributedString:v14];
  v18 = objc_alloc(MEMORY[0x277CCA898]);
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = v19;
  if (v11)
  {
    v21 = [v19 localizedStringForKey:@"APPLE_ID_WITH_PEER_STRING" value:&stru_287F92480 table:@"Localizable"];
    v22 = [v18 initWithString:v21];
    v48 = @"NETWORK_LOGS_STRING";
    v23 = v14;
    v24 = @"PUBLIC_KEYS_WITH_PEER_STRING";
    v25 = @"key";
    [v16 appendAttributedString:{v22, @"network"}];
  }

  else
  {
    v26 = [v19 localizedStringForKey:@"APPLE_ID_STRING" value:&stru_287F92480 table:@"Localizable"];
    v27 = [v18 initWithString:v26];
    [v16 appendAttributedString:v27];

    [v16 appendAttributedString:v15];
    v28 = [(TUIReportToAppleSpecifierCell *)self attributedStringForSystemImageNamed:@"key"];
    [v16 appendAttributedString:v28];

    [v16 appendAttributedString:v14];
    v29 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"PUBLIC_KEYS_MESSAGES_STRING" value:&stru_287F92480 table:@"Localizable"];
    v22 = [v29 initWithString:v21];
    v48 = @"DEVICE_IDENTIFIERS_STRING";
    v23 = v14;
    v24 = @"NETWORK_LOGS_STRING";
    v25 = @"network";
    [v16 appendAttributedString:{v22, @"iphone.gen2"}];
  }

  [v16 appendAttributedString:v15];
  v30 = [(TUIReportToAppleSpecifierCell *)self attributedStringForSystemImageNamed:v25];
  [v16 appendAttributedString:v30];

  [v16 appendAttributedString:v23];
  v31 = objc_alloc(MEMORY[0x277CCA898]);
  v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:v24 value:&stru_287F92480 table:@"Localizable"];
  v34 = [v31 initWithString:v33];
  [v16 appendAttributedString:v34];

  [v16 appendAttributedString:v15];
  v35 = [(TUIReportToAppleSpecifierCell *)self attributedStringForSystemImageNamed:v47];
  [v16 appendAttributedString:v35];

  [v16 appendAttributedString:v23];
  v36 = objc_alloc(MEMORY[0x277CCA898]);
  v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v38 = [v37 localizedStringForKey:v48 value:&stru_287F92480 table:@"Localizable"];
  v39 = [v36 initWithString:v38];
  [v16 appendAttributedString:v39];

  v40 = objc_opt_new();
  v41 = objc_alloc(MEMORY[0x277D742E0]);
  v42 = [v41 initWithTextAlignment:4 location:MEMORY[0x277CBEC10] options:25.0];
  v54[0] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  [v40 setTabStops:v43];

  [v40 setAlignment:4];
  [v40 setFirstLineHeadIndent:0.0];
  v52 = *MEMORY[0x277D74118];
  v53 = v40;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v16 addAttributes:v44 range:{0, objc_msgSend(v16, "length")}];

  v45 = [(TUIReportToAppleSpecifierCell *)self detailTextLabel];
  [v45 setAttributedText:v16];

  [(TUIReportToAppleSpecifierCell *)self setNeedsLayout];
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __66__TUIReportToAppleSpecifierCell_refreshCellContentsWithSpecifier___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_6 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCellContentsWithSpecifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[TUIReportToAppleSpecifierCell refreshCellContentsWithSpecifier:]";
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end