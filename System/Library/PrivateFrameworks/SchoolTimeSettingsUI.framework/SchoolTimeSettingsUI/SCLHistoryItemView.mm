@interface SCLHistoryItemView
- (SCLHistoryItemView)initWithFrame:(CGRect)a3;
- (SCLTimeIntervalsFormatter)intervalsFormatter;
- (SCLUnlockHistoryItemFormatter)historyItemFormatter;
- (void)setHistoryGroup:(id)a3;
- (void)updateConstraints;
@end

@implementation SCLHistoryItemView

- (SCLHistoryItemView)initWithFrame:(CGRect)a3
{
  v77[14] = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = SCLHistoryItemView;
  v3 = [(SCLHistoryItemView *)&v75 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    [(SCLHistoryItemView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_label setNumberOfLines:0];
    LODWORD(v7) = 1144733696;
    [(UILabel *)v3->_label setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1144733696;
    [(UILabel *)v3->_label setContentHuggingPriority:0 forAxis:v8];
    [(SCLHistoryItemView *)v3 addSubview:v3->_label];
    v9 = objc_alloc(MEMORY[0x277D756B8]);
    [(SCLHistoryItemView *)v3 bounds];
    v10 = [v9 initWithFrame:?];
    intervalLabel = v3->_intervalLabel;
    v3->_intervalLabel = v10;

    v12 = v3->_intervalLabel;
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v3->_intervalLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_intervalLabel setNumberOfLines:0];
    [(SCLHistoryItemView *)v3 addSubview:v3->_intervalLabel];
    v14 = objc_alloc_init(MEMORY[0x277D756D0]);
    [v14 setIdentifier:@"horizontalContentGuide"];
    [(SCLHistoryItemView *)v3 addLayoutGuide:v14];
    v15 = objc_alloc_init(MEMORY[0x277D756D0]);
    [v15 setIdentifier:@"textAlignmentGuide"];
    [(SCLHistoryItemView *)v3 addLayoutGuide:v15];
    v16 = [v14 leadingAnchor];
    v17 = [(SCLHistoryItemView *)v3 leadingAnchor];
    v74 = [v16 constraintEqualToAnchor:v17 constant:15.0];

    [v74 setIdentifier:@"contentGuide.leading"];
    v18 = [v14 trailingAnchor];
    v19 = [(SCLHistoryItemView *)v3 trailingAnchor];
    v73 = [v18 constraintEqualToAnchor:v19 constant:-15.0];

    [v73 setIdentifier:@"contentGuide.trailing"];
    v20 = [v14 heightAnchor];
    v72 = [v20 constraintEqualToConstant:0.0];

    [v72 setIdentifier:@"contentGuide.height"];
    v21 = [v14 topAnchor];
    v22 = [(SCLHistoryItemView *)v3 topAnchor];
    v71 = [v21 constraintEqualToAnchor:v22];

    [v71 setIdentifier:@"contentGuide.top"];
    v23 = [v15 centerYAnchor];
    v24 = [(SCLHistoryItemView *)v3 topAnchor];
    v70 = [v23 constraintEqualToAnchor:v24];

    [v70 setIdentifier:@"textAlignment.centerY"];
    v25 = [v15 centerXAnchor];
    v26 = [v14 centerXAnchor];
    v69 = [v25 constraintEqualToAnchor:v26];

    [v69 setIdentifier:@"textAlignment.centerX"];
    v27 = [v15 heightAnchor];
    v67 = [v27 constraintEqualToConstant:0.0];

    [v67 setIdentifier:@"textAlignment.height"];
    v68 = v15;
    v28 = [v15 widthAnchor];
    v66 = [v28 constraintEqualToConstant:20.0];

    [v66 setIdentifier:@"textAlignment.width"];
    v29 = [(UILabel *)v3->_intervalLabel leadingAnchor];
    v30 = [v14 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    [v31 setIdentifier:@"intervalLabel.leading"];
    v32 = [(UILabel *)v3->_intervalLabel topAnchor];
    v33 = [(SCLHistoryItemView *)v3 topAnchor];
    v65 = [v32 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:1.0];

    [v65 setIdentifier:@"intervalLabel.top"];
    v34 = [(UILabel *)v3->_intervalLabel trailingAnchor];
    v35 = [v15 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    [v36 setIdentifier:@"intervalLabel.trailing"];
    LODWORD(v37) = 1132068864;
    v38 = v36;
    [v36 setPriority:v37];
    v39 = [(SCLHistoryItemView *)v3 bottomAnchor];
    v40 = [(UILabel *)v3->_label bottomAnchor];
    v64 = [v39 constraintEqualToSystemSpacingBelowAnchor:v40 multiplier:1.0];

    LODWORD(v41) = 1144750080;
    [v64 setPriority:v41];
    v42 = [(UILabel *)v3->_intervalLabel widthAnchor];
    v43 = [v14 widthAnchor];
    v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

    [v44 setIdentifier:@"intervalLabel.width"];
    v45 = [(UILabel *)v3->_label widthAnchor];
    v46 = [v14 widthAnchor];
    v47 = [v45 constraintLessThanOrEqualToAnchor:v46];

    [v47 setIdentifier:@"itemLabel.width"];
    v77[0] = v74;
    v77[1] = v73;
    v77[2] = v71;
    v77[3] = v72;
    v77[4] = v69;
    v77[5] = v70;
    v77[6] = v67;
    v77[7] = v66;
    v77[8] = v31;
    v77[9] = v65;
    v77[10] = v38;
    v77[11] = v64;
    v77[12] = v44;
    v77[13] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:14];
    unconditionalConstraints = v3->_unconditionalConstraints;
    v3->_unconditionalConstraints = v48;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_unconditionalConstraints];
    v50 = [(UILabel *)v3->_label leadingAnchor];
    v51 = [v14 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    v53 = [(UILabel *)v3->_label trailingAnchor];
    v54 = [v14 trailingAnchor];
    v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

    LODWORD(v56) = 1144750080;
    [v55 setPriority:v56];
    v57 = [(UILabel *)v3->_label topAnchor];
    v58 = [(UILabel *)v3->_intervalLabel bottomAnchor];
    v59 = [v57 constraintEqualToSystemSpacingBelowAnchor:v58 multiplier:1.0];

    v76[0] = v52;
    v76[1] = v55;
    v76[2] = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
    verticalLayoutConstraints = v3->_verticalLayoutConstraints;
    v3->_verticalLayoutConstraints = v60;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_verticalLayoutConstraints];
  }

  v62 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateConstraints
{
  v2.receiver = self;
  v2.super_class = SCLHistoryItemView;
  [(SCLHistoryItemView *)&v2 updateConstraints];
}

- (SCLUnlockHistoryItemFormatter)historyItemFormatter
{
  historyItemFormatter = self->_historyItemFormatter;
  if (!historyItemFormatter)
  {
    v4 = objc_alloc_init(SCLUnlockHistoryItemFormatter);
    v5 = self->_historyItemFormatter;
    self->_historyItemFormatter = v4;

    historyItemFormatter = self->_historyItemFormatter;
  }

  return historyItemFormatter;
}

- (SCLTimeIntervalsFormatter)intervalsFormatter
{
  intervalsFormatter = self->_intervalsFormatter;
  if (!intervalsFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4B780]);
    v5 = self->_intervalsFormatter;
    self->_intervalsFormatter = v4;

    intervalsFormatter = self->_intervalsFormatter;
  }

  return intervalsFormatter;
}

- (void)setHistoryGroup:(id)a3
{
  v54[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_historyGroup, a3);
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v7 = 0x277CCA000uLL;
  v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
  [v8 beginEditing];
  v45 = v5;
  v9 = [v5 items];
  v10 = 0x277CCA000uLL;
  v43 = v9;
  if ([v9 count])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"UNLOCK_HISTORY_UNLOCKED_SECTION_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];

    v13 = objc_alloc(MEMORY[0x277CCA898]);
    [v12 stringByAppendingString:@"\n"];
    v15 = v14 = v9;
    v16 = *MEMORY[0x277D740A8];
    v54[0] = v6;
    v17 = *MEMORY[0x277D740C0];
    v44 = v16;
    v53[0] = v16;
    v53[1] = v17;
    v42 = v17;
    v18 = [MEMORY[0x277D75348] whiteColor];
    v54[1] = v18;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v20 = v19 = self;
    v21 = [v13 initWithString:v15 attributes:v20];

    self = v19;
    [v8 appendAttributedString:v21];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __38__SCLHistoryItemView_setHistoryGroup___block_invoke;
    v46[3] = &unk_279B6F068;
    v46[4] = v19;
    v47 = v8;
    v22 = v14;
    v10 = 0x277CCA000;
    v48 = v22;
    [v22 enumerateObjectsUsingBlock:v46];

    v7 = 0x277CCA000;
  }

  else
  {
    v44 = *MEMORY[0x277D740A8];
    v42 = *MEMORY[0x277D740C0];
  }

  [v8 endEditing];
  [(UILabel *)self->_label setAttributedText:v8];
  v23 = objc_alloc_init(*(v7 + 2888));
  v24 = objc_alloc(MEMORY[0x277CCA898]);
  v25 = [*(v10 + 2264) bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"UNLOCK_HISTORY_SCHEDULE_SECTION_TITLE" value:&stru_28762AB68 table:@"SchoolTimeSettings"];
  v41 = v6;
  v52[0] = v6;
  v51[0] = v44;
  v51[1] = v42;
  [MEMORY[0x277D75348] whiteColor];
  v28 = v27 = self;
  v52[1] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v30 = [v24 initWithString:v26 attributes:v29];
  [v23 appendAttributedString:v30];

  v31 = [v23 mutableString];
  [v31 appendString:@"\n"];

  v32 = [(SCLHistoryItemView *)v27 intervalsFormatter];
  v33 = [v45 effectiveSchedule];
  v34 = [v33 uniformTimeIntervals];
  v35 = [v32 stringFromTimeIntervals:v34];

  v36 = objc_alloc(MEMORY[0x277CCA898]);
  v49[1] = v42;
  v50[0] = v41;
  v49[0] = v44;
  v37 = [MEMORY[0x277D75348] tableCellGrayTextColor];
  v50[1] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v39 = [v36 initWithString:v35 attributes:v38];
  [v23 appendAttributedString:v39];

  [(UILabel *)v27->_intervalLabel setAttributedText:v23];
  [(SCLHistoryItemView *)v27 setNeedsUpdateConstraints];
  [(SCLHistoryItemView *)v27 setNeedsLayout];

  v40 = *MEMORY[0x277D85DE8];
}

void __38__SCLHistoryItemView_setHistoryGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 historyItemFormatter];
  v9 = [v7 attributedStringForObjectValue:v6 withDefaultAttributes:0];

  [*(a1 + 40) appendAttributedString:v9];
  if (a3 + 1 < [*(a1 + 48) count])
  {
    v8 = [*(a1 + 40) mutableString];
    [v8 appendString:@"\n"];
  }
}

@end