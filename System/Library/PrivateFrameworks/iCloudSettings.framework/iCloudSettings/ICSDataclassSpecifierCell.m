@interface ICSDataclassSpecifierCell
+ (_NSRange)_rangeForLinkFromSpecifier:(id)a3;
+ (id)_attributedStringFromSpecifier:(id)a3;
+ (id)_subTitleAttributes;
- (ICSDataclassSpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupViews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICSDataclassSpecifierCell

- (ICSDataclassSpecifierCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICSDataclassSpecifierCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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

  v4 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [v4 setContentMode:1];

  v5 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ICSDataclassSpecifierCell *)self headerImageView];
  LODWORD(v7) = 1132068864;
  [v6 setContentCompressionResistancePriority:1 forAxis:v7];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(ICSDataclassSpecifierCell *)self setHeaderTitleLabel:v8];

  v9 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] weight:*MEMORY[0x277D743F8]];
  [v10 setFont:v11];

  v12 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v13 = [MEMORY[0x277D75348] labelColor];
  [v12 setTextColor:v13];

  v14 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [v14 setNumberOfLines:5];

  v15 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [v15 setTextAlignment:1];

  v16 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(ICSDataclassSpecifierCell *)self setHeaderSubTitleTextView:v18];

  v19 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[ICSDataclassSpecifierCell _subTitleFont];
  v21 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v21 setFont:v20];

  v22 = *MEMORY[0x277D768C8];
  v23 = *(MEMORY[0x277D768C8] + 8);
  v24 = *(MEMORY[0x277D768C8] + 16);
  v25 = *(MEMORY[0x277D768C8] + 24);
  v26 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v26 setLayoutMargins:{v22, v23, v24, v25}];

  v27 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v27 setTextContainerInset:{v22, v23, v24, v25}];

  v28 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v28 setTextAlignment:1];

  v29 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v29 setScrollEnabled:0];

  v30 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v30 setSelectable:1];

  v31 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v31 setEditable:0];

  v32 = [MEMORY[0x277D75348] clearColor];
  v33 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v33 setBackgroundColor:v32];

  v34 = [(ICSDataclassSpecifierCell *)self contentView];
  v35 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [v34 addSubview:v35];

  v36 = [(ICSDataclassSpecifierCell *)self contentView];
  v37 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  [v36 addSubview:v37];

  v38 = [(ICSDataclassSpecifierCell *)self contentView];
  v39 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  [v38 addSubview:v39];

  v76 = MEMORY[0x277CCAAD0];
  v98 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v97 = [v98 heightAnchor];
  v96 = [v97 constraintEqualToConstant:56.0];
  v99[0] = v96;
  v95 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v94 = [v95 widthAnchor];
  v93 = [v94 constraintEqualToConstant:56.0];
  v99[1] = v93;
  v92 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v90 = [v92 leadingAnchor];
  v91 = [(ICSDataclassSpecifierCell *)self contentView];
  v89 = [v91 leadingAnchor];
  v88 = [v90 constraintGreaterThanOrEqualToAnchor:v89 constant:24.0];
  v99[2] = v88;
  v87 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v85 = [v87 centerXAnchor];
  v86 = [(ICSDataclassSpecifierCell *)self contentView];
  v84 = [v86 centerXAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v99[3] = v83;
  v82 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v80 = [v82 topAnchor];
  v81 = [(ICSDataclassSpecifierCell *)self contentView];
  v79 = [v81 topAnchor];
  v78 = [v80 constraintEqualToAnchor:v79 constant:32.0];
  v99[4] = v78;
  v77 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v74 = [v77 bottomAnchor];
  v75 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v73 = [v75 topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73 constant:-16.0];
  v99[5] = v72;
  v71 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v69 = [v71 leadingAnchor];
  v70 = [(ICSDataclassSpecifierCell *)self contentView];
  v68 = [v70 leadingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:24.0];
  v99[6] = v67;
  v66 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v64 = [v66 centerXAnchor];
  v65 = [(ICSDataclassSpecifierCell *)self contentView];
  v63 = [v65 centerXAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v99[7] = v62;
  v61 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v59 = [v61 bottomAnchor];
  v60 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v58 = [v60 topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:-8.0];
  v99[8] = v57;
  v56 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v54 = [v56 leadingAnchor];
  v55 = [(ICSDataclassSpecifierCell *)self contentView];
  v53 = [v55 leadingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:24.0];
  v99[9] = v52;
  v51 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v40 = [v51 centerXAnchor];
  v41 = [(ICSDataclassSpecifierCell *)self contentView];
  v42 = [v41 centerXAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v99[10] = v43;
  v44 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v45 = [v44 bottomAnchor];
  v46 = [(ICSDataclassSpecifierCell *)self contentView];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintEqualToAnchor:v47 constant:-12.0];
  v99[11] = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:12];
  [v76 activateConstraints:v49];

  v50 = *MEMORY[0x277D85DE8];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICSDataclassSpecifierCell;
  [(PSTableCell *)&v16 refreshCellContentsWithSpecifier:v4];
  v5 = [(PSTableCell *)self titleLabel];
  [v5 setText:&stru_288487370];

  v6 = [(ICSDataclassSpecifierCell *)self imageView];
  [v6 setHidden:1];

  v7 = [(ICSDataclassSpecifierCell *)self headerImageView];
  v8 = [v4 propertyForKey:*MEMORY[0x277D3FFC0]];
  [v7 setImage:v8];

  v9 = [(ICSDataclassSpecifierCell *)self headerImageView];
  [v9 setAccessibilityIdentifier:@"AppsUsingiCloud"];

  v10 = [(ICSDataclassSpecifierCell *)self headerTitleLabel];
  v11 = [v4 propertyForKey:*MEMORY[0x277D40170]];
  [v10 setText:v11];

  v12 = [ICSDataclassSpecifierCell _attributedStringFromSpecifier:v4];
  v13 = [(ICSDataclassSpecifierCell *)self headerSubTitleTextView];
  v14 = v13;
  if (v12)
  {
    [v13 setAttributedText:v12];
  }

  else
  {
    v15 = [v4 propertyForKey:*MEMORY[0x277D40160]];
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
  v4 = [a1 _subTitleFont];
  v8[1] = *MEMORY[0x277D74118];
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (_NSRange)_rangeForLinkFromSpecifier:(id)a3
{
  v3 = *MEMORY[0x277D40160];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v7 = [v4 objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

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

+ (id)_attributedStringFromSpecifier:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D40160];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:@"AAUIDataclassAttributedLinkText"];
  v8 = [v5 objectForKeyedSubscript:@"AAUIDataclassAttributedLink"];

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
      v14 = [MEMORY[0x277D75348] labelColor];
      v30[0] = v14;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

      v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v26 attributes:v25];
      v27[0] = v13;
      v16 = [MEMORY[0x277D75348] systemBlueColor];
      v28[0] = v16;
      v27[1] = *MEMORY[0x277D740E8];
      v17 = [MEMORY[0x277CBEBC0] URLWithString:v8];
      v28[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v19 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v18];
      [v15 appendAttributedString:v19];
      v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v24];
      [v15 appendAttributedString:v20];
      v21 = [a1 _subTitleAttributes];
      [v15 addAttributes:v21 range:{0, objc_msgSend(v15, "length")}];

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