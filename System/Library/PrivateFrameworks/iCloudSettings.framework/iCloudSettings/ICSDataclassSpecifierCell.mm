@interface ICSDataclassSpecifierCell
+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier;
+ (id)_attributedStringFromSpecifier:(id)specifier;
+ (id)_subTitleAttributes;
- (ICSDataclassSpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICSDataclassSpecifierCell

- (ICSDataclassSpecifierCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ICSDataclassSpecifierCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ICSDataclassSpecifierCell *)v4 setSelectionStyle:0];
    [(UITableViewCell *)v5 setSeparatorInsetToLayoutMarginsWithAdditionalPadding:12.0];
    [(ICSDataclassSpecifierCell *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v99[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(ICSDataclassSpecifierCell *)self setHeaderImageView:v3];

  headerImageView = [(ICSDataclassSpecifierCell *)self headerImageView];
  [headerImageView setContentMode:1];

  headerImageView2 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [headerImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  headerImageView3 = [(ICSDataclassSpecifierCell *)self headerImageView];
  LODWORD(v7) = 1132068864;
  [headerImageView3 setContentCompressionResistancePriority:1 forAxis:v7];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ICSDataclassSpecifierCell *)self setHeaderTitleLabel:v8];

  headerTitleLabel = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  headerTitleLabel2 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
  [headerTitleLabel2 setFont:v11];

  headerTitleLabel3 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [headerTitleLabel3 setTextColor:labelColor];

  headerTitleLabel4 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel4 setNumberOfLines:5];

  headerTitleLabel5 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [headerTitleLabel5 setTextAlignment:1];

  headerTitleLabel6 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  LODWORD(v17) = 1148846080;
  [headerTitleLabel6 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(ICSDataclassSpecifierCell *)self setHeaderSubTitleTextView:v18];

  headerSubTitleTextView = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[ICSDataclassSpecifierCell _subTitleFont];
  headerSubTitleTextView2 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView2 setFont:v20];

  v22 = *MEMORY[0x277D768C8];
  v23 = *(MEMORY[0x277D768C8] + 8);
  v24 = *(MEMORY[0x277D768C8] + 16);
  v25 = *(MEMORY[0x277D768C8] + 24);
  headerSubTitleTextView3 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView3 setLayoutMargins:{v22, v23, v24, v25}];

  headerSubTitleTextView4 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView4 setTextContainerInset:{v22, v23, v24, v25}];

  headerSubTitleTextView5 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView5 setTextAlignment:1];

  headerSubTitleTextView6 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView6 setScrollEnabled:0];

  headerSubTitleTextView7 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView7 setSelectable:1];

  headerSubTitleTextView8 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView8 setEditable:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  headerSubTitleTextView9 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [headerSubTitleTextView9 setBackgroundColor:clearColor];

  contentView = [(ICSDataclassSpecifierCell *)self contentView];
  headerImageView4 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [contentView addSubview:headerImageView4];

  contentView2 = [(ICSDataclassSpecifierCell *)self contentView];
  headerTitleLabel7 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [contentView2 addSubview:headerTitleLabel7];

  contentView3 = [(ICSDataclassSpecifierCell *)self contentView];
  headerSubTitleTextView10 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [contentView3 addSubview:headerSubTitleTextView10];

  v76 = MEMORY[0x277CCAAD0];
  headerImageView5 = [(ICSDataclassSpecifierCell *)self headerImageView];
  heightAnchor = [headerImageView5 heightAnchor];
  v96 = [heightAnchor constraintEqualToConstant:56.0];
  v99[0] = v96;
  headerImageView6 = [(ICSDataclassSpecifierCell *)self headerImageView];
  widthAnchor = [headerImageView6 widthAnchor];
  v93 = [widthAnchor constraintEqualToConstant:56.0];
  v99[1] = v93;
  headerImageView7 = [(ICSDataclassSpecifierCell *)self headerImageView];
  leadingAnchor = [headerImageView7 leadingAnchor];
  contentView4 = [(ICSDataclassSpecifierCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v88 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:24.0];
  v99[2] = v88;
  headerImageView8 = [(ICSDataclassSpecifierCell *)self headerImageView];
  centerXAnchor = [headerImageView8 centerXAnchor];
  contentView5 = [(ICSDataclassSpecifierCell *)self contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v83 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v99[3] = v83;
  headerImageView9 = [(ICSDataclassSpecifierCell *)self headerImageView];
  topAnchor = [headerImageView9 topAnchor];
  contentView6 = [(ICSDataclassSpecifierCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v78 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
  v99[4] = v78;
  headerImageView10 = [(ICSDataclassSpecifierCell *)self headerImageView];
  bottomAnchor = [headerImageView10 bottomAnchor];
  headerTitleLabel8 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  topAnchor3 = [headerTitleLabel8 topAnchor];
  v72 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-16.0];
  v99[5] = v72;
  headerTitleLabel9 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  leadingAnchor3 = [headerTitleLabel9 leadingAnchor];
  contentView7 = [(ICSDataclassSpecifierCell *)self contentView];
  leadingAnchor4 = [contentView7 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  v99[6] = v67;
  headerTitleLabel10 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  centerXAnchor3 = [headerTitleLabel10 centerXAnchor];
  contentView8 = [(ICSDataclassSpecifierCell *)self contentView];
  centerXAnchor4 = [contentView8 centerXAnchor];
  v62 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v99[7] = v62;
  headerTitleLabel11 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  bottomAnchor2 = [headerTitleLabel11 bottomAnchor];
  headerSubTitleTextView11 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  topAnchor4 = [headerSubTitleTextView11 topAnchor];
  v57 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-8.0];
  v99[8] = v57;
  headerSubTitleTextView12 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  leadingAnchor5 = [headerSubTitleTextView12 leadingAnchor];
  contentView9 = [(ICSDataclassSpecifierCell *)self contentView];
  leadingAnchor6 = [contentView9 leadingAnchor];
  v52 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:24.0];
  v99[9] = v52;
  headerSubTitleTextView13 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  centerXAnchor5 = [headerSubTitleTextView13 centerXAnchor];
  contentView10 = [(ICSDataclassSpecifierCell *)self contentView];
  centerXAnchor6 = [contentView10 centerXAnchor];
  v43 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v99[10] = v43;
  headerSubTitleTextView14 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  bottomAnchor3 = [headerSubTitleTextView14 bottomAnchor];
  contentView11 = [(ICSDataclassSpecifierCell *)self contentView];
  bottomAnchor4 = [contentView11 bottomAnchor];
  v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v99[11] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:12];
  [v76 activateConstraints:v49];

  v50 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v16.receiver = self;
  v16.super_class = ICSDataclassSpecifierCell;
  [(PSTableCell *)&v16 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:&stru_288487370];

  imageView = [(ICSDataclassSpecifierCell *)self imageView];
  [imageView setHidden:1];

  headerImageView = [(ICSDataclassSpecifierCell *)self headerImageView];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFC0]];
  [headerImageView setImage:v8];

  headerImageView2 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [headerImageView2 setAccessibilityIdentifier:@"AppsUsingiCloud"];

  headerTitleLabel = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [headerTitleLabel setText:v11];

  v12 = [ICSDataclassSpecifierCell _attributedStringFromSpecifier:specifierCopy];
  headerSubTitleTextView = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v14 = headerSubTitleTextView;
  if (v12)
  {
    [headerSubTitleTextView setAttributedText:v12];
  }

  else
  {
    v15 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
    [v14 setText:v15];
  }

  [(ICSDataclassSpecifierCell *)self setNeedsLayout];
}

+ (id)_subTitleAttributes
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setAlignment:1];
  v8[0] = *MEMORY[0x277D740A8];
  _subTitleFont = [self _subTitleFont];
  v8[1] = *MEMORY[0x277D74118];
  v9[0] = _subTitleFont;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier
{
  v3 = *MEMORY[0x277D40160];
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:v3];
  v6 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v7 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [v5 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v10 = [v13 length];
      v11 = [v7 length];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }
  }

  v14 = v10;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

+ (id)_attributedStringFromSpecifier:(id)specifier
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D40160];
  specifierCopy = specifier;
  v6 = [specifierCopy objectForKeyedSubscript:v4];
  v7 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v8 = [specifierCopy objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 componentsSeparatedByString:@"%@"];
    if ([v12 count] == 2)
    {
      v26 = [v12 objectAtIndexedSubscript:0];
      v24 = [v12 objectAtIndexedSubscript:1];
      v29 = *MEMORY[0x277D740C0];
      v13 = v29;
      labelColor = [MEMORY[0x277D75348] labelColor];
      v30[0] = labelColor;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

      v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v26 attributes:v25];
      v27[0] = v13;
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      v28[0] = systemBlueColor;
      v27[1] = *MEMORY[0x277D740E8];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v28[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v18];
      [v15 appendAttributedString:v19];
      v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v24];
      [v15 appendAttributedString:v20];
      _subTitleAttributes = [self _subTitleAttributes];
      [v15 addAttributes:_subTitleAttributes range:{0, objc_msgSend(v15, "length")}];

      v11 = [v15 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

@end