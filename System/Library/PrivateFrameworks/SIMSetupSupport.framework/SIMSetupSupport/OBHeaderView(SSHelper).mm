@interface OBHeaderView(SSHelper)
- (uint64_t)_labelToDetailPadding;
- (void)addDetailLabel:()SSHelper withErrorCodeSubstr:;
- (void)addDetailLabel:()SSHelper withPhoneNumber:;
@end

@implementation OBHeaderView(SSHelper)

- (void)addDetailLabel:()SSHelper withErrorCodeSubstr:
{
  v34[4] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D756B8];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  if (!+[TSUtilities isSolariumEnabled])
  {
    [v9 setTextAlignment:1];
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v9 setTextColor:labelColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:clearColor];

  _detailFont = [self _detailFont];
  [v9 setFont:_detailFont];

  [v9 setNumberOfLines:0];
  [v9 setText:v8];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v9 setColor:systemGrayColor toSubstring:v7];

  [self addSubview:v9];
  v14 = MEMORY[0x277CCAAD0];
  detailLabelConstraints = [self detailLabelConstraints];
  [v14 deactivateConstraints:detailLabelConstraints];

  widthAnchor = [v9 widthAnchor];
  widthAnchor2 = [self widthAnchor];
  v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v34[0] = v31;
  leftAnchor = [v9 leftAnchor];
  leftAnchor2 = [self leftAnchor];
  v28 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v34[1] = v28;
  topAnchor = [v9 topAnchor];
  headerLabel = [self headerLabel];
  bottomAnchor = [headerLabel bottomAnchor];
  [self _labelToDetailPadding];
  v19 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  v34[2] = v19;
  bottomAnchor2 = [v9 bottomAnchor];
  bottomAnchor3 = [self bottomAnchor];
  [self bottomPadding];
  v23 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v22];
  v34[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [self setDetailLabelConstraints:v24];

  v25 = MEMORY[0x277CCAAD0];
  detailLabelConstraints2 = [self detailLabelConstraints];
  [v25 activateConstraints:detailLabelConstraints2];

  v27 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_labelToDetailPadding
{
  if (objc_opt_respondsToSelector())
  {

    return [self headerLabelToDetailLabelPadding];
  }

  else
  {

    return [self headerLabelToDetailAndSubtitleLabelPadding];
  }
}

- (void)addDetailLabel:()SSHelper withPhoneNumber:
{
  v33[4] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D756B8];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  if (!+[TSUtilities isSolariumEnabled])
  {
    [v9 setTextAlignment:1];
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v9 setTextColor:labelColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:clearColor];

  _detailFont = [self _detailFont];
  [v9 setFont:_detailFont];

  [v9 setNumberOfLines:0];
  [v9 setText:v8];

  [v9 setBoldSubString:v7];
  [self addSubview:v9];
  v13 = MEMORY[0x277CCAAD0];
  detailLabelConstraints = [self detailLabelConstraints];
  [v13 deactivateConstraints:detailLabelConstraints];

  widthAnchor = [v9 widthAnchor];
  widthAnchor2 = [self widthAnchor];
  v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v33[0] = v30;
  leftAnchor = [v9 leftAnchor];
  leftAnchor2 = [self leftAnchor];
  v27 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v33[1] = v27;
  topAnchor = [v9 topAnchor];
  headerLabel = [self headerLabel];
  bottomAnchor = [headerLabel bottomAnchor];
  [self _labelToDetailPadding];
  v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  v33[2] = v18;
  bottomAnchor2 = [v9 bottomAnchor];
  bottomAnchor3 = [self bottomAnchor];
  [self bottomPadding];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v21];
  v33[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [self setDetailLabelConstraints:v23];

  v24 = MEMORY[0x277CCAAD0];
  detailLabelConstraints2 = [self detailLabelConstraints];
  [v24 activateConstraints:detailLabelConstraints2];

  v26 = *MEMORY[0x277D85DE8];
}

@end