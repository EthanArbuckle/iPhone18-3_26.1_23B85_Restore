@interface ICQUIPaddedSpecifierWithCenterSubtitleCell
+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier;
+ (id)_attributedStringFromSpecifier:(id)specifier;
+ (id)_subTitleAttributes;
- (ICQUIPaddedSpecifierWithCenterSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ICQUIPaddedSpecifierWithCenterSubtitleCell

- (ICQUIPaddedSpecifierWithCenterSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ICQUIPaddedSpecifierWithCenterSubtitleCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)v4 setSelectionStyle:0];
    [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)v5 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  v98[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self setHeaderImageView:v3];

  headerImageView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  [headerImageView setContentMode:1];

  headerImageView2 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  [headerImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  headerImageView3 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  LODWORD(v7) = 1132068864;
  [headerImageView3 setContentCompressionResistancePriority:1 forAxis:v7];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self setHeaderTitleLabel:v8];

  headerTitleLabel = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  [headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  headerTitleLabel2 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
  [headerTitleLabel2 setFont:v11];

  headerTitleLabel3 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [headerTitleLabel3 setTextColor:labelColor];

  headerTitleLabel4 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  [headerTitleLabel4 setNumberOfLines:5];

  headerTitleLabel5 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  [headerTitleLabel5 setTextAlignment:1];

  headerTitleLabel6 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  LODWORD(v17) = 1148846080;
  [headerTitleLabel6 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self setHeaderSubTitleTextView:v18];

  headerSubTitleTextView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[ICQUIPaddedSpecifierWithCenterSubtitleCell _subTitleFont];
  headerSubTitleTextView2 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView2 setFont:v20];

  v22 = *MEMORY[0x277D768C8];
  v23 = *(MEMORY[0x277D768C8] + 8);
  v24 = *(MEMORY[0x277D768C8] + 16);
  v25 = *(MEMORY[0x277D768C8] + 24);
  headerSubTitleTextView3 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView3 setLayoutMargins:{v22, v23, v24, v25}];

  headerSubTitleTextView4 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView4 setTextContainerInset:{v22, v23, v24, v25}];

  headerSubTitleTextView5 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView5 setTextAlignment:1];

  headerSubTitleTextView6 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView6 setScrollEnabled:0];

  headerSubTitleTextView7 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView7 setSelectable:1];

  headerSubTitleTextView8 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView8 setEditable:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  headerSubTitleTextView9 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [headerSubTitleTextView9 setBackgroundColor:clearColor];

  contentView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  headerImageView4 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  [contentView addSubview:headerImageView4];

  contentView2 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  headerTitleLabel7 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  [contentView2 addSubview:headerTitleLabel7];

  contentView3 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  headerSubTitleTextView10 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  [contentView3 addSubview:headerSubTitleTextView10];

  v75 = MEMORY[0x277CCAAD0];
  headerImageView5 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  heightAnchor = [headerImageView5 heightAnchor];
  v95 = [heightAnchor constraintEqualToConstant:56.0];
  v98[0] = v95;
  headerImageView6 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  widthAnchor = [headerImageView6 widthAnchor];
  v92 = [widthAnchor constraintEqualToConstant:56.0];
  v98[1] = v92;
  headerImageView7 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  leadingAnchor = [headerImageView7 leadingAnchor];
  contentView4 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
  v98[2] = v87;
  headerImageView8 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  centerXAnchor = [headerImageView8 centerXAnchor];
  contentView5 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v82 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v98[3] = v82;
  headerImageView9 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  topAnchor = [headerImageView9 topAnchor];
  contentView6 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v77 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
  v98[4] = v77;
  headerImageView10 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  bottomAnchor = [headerImageView10 bottomAnchor];
  headerTitleLabel8 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  topAnchor3 = [headerTitleLabel8 topAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-16.0];
  v98[5] = v71;
  headerTitleLabel9 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  leadingAnchor3 = [headerTitleLabel9 leadingAnchor];
  contentView7 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  leadingAnchor4 = [contentView7 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:24.0];
  v98[6] = v66;
  headerTitleLabel10 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  centerXAnchor3 = [headerTitleLabel10 centerXAnchor];
  contentView8 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  centerXAnchor4 = [contentView8 centerXAnchor];
  v61 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v98[7] = v61;
  headerTitleLabel11 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  bottomAnchor2 = [headerTitleLabel11 bottomAnchor];
  headerSubTitleTextView11 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  topAnchor4 = [headerSubTitleTextView11 topAnchor];
  v56 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-8.0];
  v98[8] = v56;
  headerSubTitleTextView12 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  leadingAnchor5 = [headerSubTitleTextView12 leadingAnchor];
  contentView9 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  leadingAnchor6 = [contentView9 leadingAnchor];
  v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:24.0];
  v98[9] = v51;
  headerSubTitleTextView13 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  centerXAnchor5 = [headerSubTitleTextView13 centerXAnchor];
  contentView10 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  centerXAnchor6 = [contentView10 centerXAnchor];
  v43 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v98[10] = v43;
  headerSubTitleTextView14 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  bottomAnchor3 = [headerSubTitleTextView14 bottomAnchor];
  contentView11 = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self contentView];
  bottomAnchor4 = [contentView11 bottomAnchor];
  v48 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
  v98[11] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:12];
  [v75 activateConstraints:v49];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = ICQUIPaddedSpecifierWithCenterSubtitleCell;
  [(PSTableCell *)&v15 refreshCellContentsWithSpecifier:specifierCopy];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:&stru_28844FC60];

  imageView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self imageView];
  [imageView setImage:0];

  headerImageView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerImageView];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFC0]];
  [headerImageView setImage:v8];

  headerTitleLabel = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerTitleLabel];
  v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
  [headerTitleLabel setText:v10];

  v11 = [ICQUIPaddedSpecifierWithCenterSubtitleCell _attributedStringFromSpecifier:specifierCopy];
  headerSubTitleTextView = [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self headerSubTitleTextView];
  v13 = headerSubTitleTextView;
  if (v11)
  {
    [headerSubTitleTextView setAttributedText:v11];
  }

  else
  {
    v14 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];
    [v13 setText:v14];
  }

  [(ICQUIPaddedSpecifierWithCenterSubtitleCell *)self setNeedsLayout];
}

+ (id)_subTitleAttributes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setAlignment:1];
  v7[0] = *MEMORY[0x277D740A8];
  _subTitleFont = [self _subTitleFont];
  v7[1] = *MEMORY[0x277D74118];
  v8[0] = _subTitleFont;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (_NSRange)_rangeForLinkFromSpecifier:(id)specifier
{
  v3 = *MEMORY[0x277D40160];
  specifierCopy = specifier;
  v5 = [specifierCopy objectForKeyedSubscript:v3];
  v6 = [specifierCopy objectForKeyedSubscript:ICQUILearnMoreTextKey];
  v7 = [specifierCopy objectForKeyedSubscript:ICQUILearnMoreLinkKey];

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
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D40160];
  specifierCopy = specifier;
  v6 = [specifierCopy objectForKeyedSubscript:v4];
  v7 = [specifierCopy objectForKeyedSubscript:ICQUILearnMoreTextKey];
  v8 = [specifierCopy objectForKeyedSubscript:ICQUILearnMoreLinkKey];

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
      v25 = [v12 objectAtIndexedSubscript:0];
      v23 = [v12 objectAtIndexedSubscript:1];
      v28 = *MEMORY[0x277D740C0];
      v13 = v28;
      labelColor = [MEMORY[0x277D75348] labelColor];
      v29[0] = labelColor;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

      v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v25 attributes:v24];
      v26[0] = v13;
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      v27[0] = systemBlueColor;
      v26[1] = *MEMORY[0x277D740E8];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v27[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

      v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v18];
      [v15 appendAttributedString:v19];
      v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v23];
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

  return v11;
}

@end