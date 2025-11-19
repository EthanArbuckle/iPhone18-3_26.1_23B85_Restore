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
  v10 = [MEMORY[0x277D75348] labelColor];
  [v9 setTextColor:v10];

  v11 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v11];

  v12 = [a1 _detailFont];
  [v9 setFont:v12];

  [v9 setNumberOfLines:0];
  [v9 setText:v8];

  v13 = [MEMORY[0x277D75348] systemGrayColor];
  [v9 setColor:v13 toSubstring:v7];

  [a1 addSubview:v9];
  v14 = MEMORY[0x277CCAAD0];
  v15 = [a1 detailLabelConstraints];
  [v14 deactivateConstraints:v15];

  v33 = [v9 widthAnchor];
  v32 = [a1 widthAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v34[0] = v31;
  v30 = [v9 leftAnchor];
  v29 = [a1 leftAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v34[1] = v28;
  v16 = [v9 topAnchor];
  v17 = [a1 headerLabel];
  v18 = [v17 bottomAnchor];
  [a1 _labelToDetailPadding];
  v19 = [v16 constraintEqualToAnchor:v18 constant:?];
  v34[2] = v19;
  v20 = [v9 bottomAnchor];
  v21 = [a1 bottomAnchor];
  [a1 bottomPadding];
  v23 = [v20 constraintEqualToAnchor:v21 constant:-v22];
  v34[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [a1 setDetailLabelConstraints:v24];

  v25 = MEMORY[0x277CCAAD0];
  v26 = [a1 detailLabelConstraints];
  [v25 activateConstraints:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_labelToDetailPadding
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 headerLabelToDetailLabelPadding];
  }

  else
  {

    return [a1 headerLabelToDetailAndSubtitleLabelPadding];
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
  v10 = [MEMORY[0x277D75348] labelColor];
  [v9 setTextColor:v10];

  v11 = [MEMORY[0x277D75348] clearColor];
  [v9 setBackgroundColor:v11];

  v12 = [a1 _detailFont];
  [v9 setFont:v12];

  [v9 setNumberOfLines:0];
  [v9 setText:v8];

  [v9 setBoldSubString:v7];
  [a1 addSubview:v9];
  v13 = MEMORY[0x277CCAAD0];
  v14 = [a1 detailLabelConstraints];
  [v13 deactivateConstraints:v14];

  v32 = [v9 widthAnchor];
  v31 = [a1 widthAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v33[0] = v30;
  v29 = [v9 leftAnchor];
  v28 = [a1 leftAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[1] = v27;
  v15 = [v9 topAnchor];
  v16 = [a1 headerLabel];
  v17 = [v16 bottomAnchor];
  [a1 _labelToDetailPadding];
  v18 = [v15 constraintEqualToAnchor:v17 constant:?];
  v33[2] = v18;
  v19 = [v9 bottomAnchor];
  v20 = [a1 bottomAnchor];
  [a1 bottomPadding];
  v22 = [v19 constraintEqualToAnchor:v20 constant:-v21];
  v33[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [a1 setDetailLabelConstraints:v23];

  v24 = MEMORY[0x277CCAAD0];
  v25 = [a1 detailLabelConstraints];
  [v24 activateConstraints:v25];

  v26 = *MEMORY[0x277D85DE8];
}

@end