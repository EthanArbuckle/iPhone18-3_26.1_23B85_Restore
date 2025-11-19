@interface RTTUIRecentMessageCell
- (void)configureWithUtterance:(id)a3 needsPrefix:(BOOL)a4 otherContactDisplayName:(id)a5;
@end

@implementation RTTUIRecentMessageCell

- (void)configureWithUtterance:(id)a3 needsPrefix:(BOOL)a4 otherContactDisplayName:(id)a5
{
  v6 = a4;
  v87[8] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v83 = a5;
  v9 = [(RTTUIRecentMessageCell *)self label];

  v84 = v6;
  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x277D75D68]);
    v11 = MEMORY[0x277D75D00];
    v12 = [MEMORY[0x277D75210] effectWithStyle:9];
    v13 = [v11 effectForBlurEffect:v12 style:0];
    v14 = [v10 initWithEffect:v13];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = objc_opt_new();
    [(RTTUIRecentMessageCell *)self setLabel:v15];

    v16 = [(RTTUIRecentMessageCell *)self label];
    [v16 setNumberOfLines:0];

    v17 = [(RTTUIRecentMessageCell *)self label];
    [v17 setAdjustsFontForContentSizeCategory:1];

    v18 = [(RTTUIRecentMessageCell *)self label];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(RTTUIRecentMessageCell *)self contentView];
    [v19 addSubview:v14];

    v20 = [v14 contentView];
    v21 = [(RTTUIRecentMessageCell *)self label];
    [v20 addSubview:v21];

    v65 = MEMORY[0x277CCAAD0];
    v80 = [v14 leadingAnchor];
    v81 = [(RTTUIRecentMessageCell *)self contentView];
    v79 = [v81 leadingAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v87[0] = v78;
    v76 = [v14 topAnchor];
    v77 = [(RTTUIRecentMessageCell *)self contentView];
    v75 = [v77 topAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v87[1] = v74;
    v72 = [v14 trailingAnchor];
    v73 = [(RTTUIRecentMessageCell *)self contentView];
    v71 = [v73 trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v87[2] = v70;
    v68 = [v14 bottomAnchor];
    v69 = [(RTTUIRecentMessageCell *)self contentView];
    v67 = [v69 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v87[3] = v66;
    v64 = [(RTTUIRecentMessageCell *)self label];
    v62 = [v64 leadingAnchor];
    v63 = [v14 contentView];
    v61 = [v63 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v87[4] = v60;
    v59 = [(RTTUIRecentMessageCell *)self label];
    v57 = [v59 topAnchor];
    v58 = [v14 contentView];
    v56 = [v58 topAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v87[5] = v55;
    v54 = [(RTTUIRecentMessageCell *)self label];
    v52 = [v54 trailingAnchor];
    v53 = [v14 contentView];
    v22 = [v53 trailingAnchor];
    v23 = [v52 constraintEqualToAnchor:v22];
    v87[6] = v23;
    [(RTTUIRecentMessageCell *)self label];
    v24 = v82 = v8;
    v25 = [v24 bottomAnchor];
    v26 = [v14 contentView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v87[7] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:8];
    [v65 activateConstraints:v29];

    v8 = v82;
    v6 = v84;
  }

  v30 = [MEMORY[0x277D751C0] clearConfiguration];
  [(RTTUIRecentMessageCell *)self setBackgroundConfiguration:v30];

  if ([v8 isMe])
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v31 = ;
  v32 = *MEMORY[0x277D76918];
  v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v34 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v32 weight:*MEMORY[0x277D74420]];
  v35 = [v8 text];
  if ([v8 isTranscription])
  {
    v36 = [v33 fontDescriptor];
    v37 = [v36 fontDescriptorWithSymbolicTraits:1];

    v38 = MEMORY[0x277D74300];
    [v33 pointSize];
    v39 = [v38 fontWithDescriptor:v37 size:?];

    v33 = v39;
  }

  if (v6)
  {
    if ([v8 isMe])
    {
      v40 = ttyLocString();
      v41 = [v8 text];
      v51 = v41;
    }

    else
    {
      v40 = ttyLocString();
      v41 = [v8 text];
      v51 = v83;
    }

    v43 = AXCFormattedString();

    v44 = [v8 text];
    v42 = [v43 rangeOfString:v44];

    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = 0;
    }

    v35 = v43;
  }

  else
  {
    v42 = 0;
  }

  v45 = objc_alloc(MEMORY[0x277CCAB48]);
  v46 = *MEMORY[0x277D740A8];
  v47 = *MEMORY[0x277D740C0];
  v85[0] = *MEMORY[0x277D740A8];
  v85[1] = v47;
  v86[0] = v33;
  v86[1] = v31;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v49 = [v45 initWithString:v35 attributes:v48];

  if (v84 && v42)
  {
    [v49 addAttribute:v46 value:v34 range:{0, v42}];
  }

  v50 = [(RTTUIRecentMessageCell *)self label];
  [v50 setAttributedText:v49];
}

@end