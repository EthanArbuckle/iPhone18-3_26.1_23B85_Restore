@interface RTTUIRecentMessageCell
- (void)configureWithUtterance:(id)utterance needsPrefix:(BOOL)prefix otherContactDisplayName:(id)name;
@end

@implementation RTTUIRecentMessageCell

- (void)configureWithUtterance:(id)utterance needsPrefix:(BOOL)prefix otherContactDisplayName:(id)name
{
  prefixCopy = prefix;
  v87[8] = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  nameCopy = name;
  label = [(RTTUIRecentMessageCell *)self label];

  v84 = prefixCopy;
  if (!label)
  {
    v10 = objc_alloc(MEMORY[0x277D75D68]);
    v11 = MEMORY[0x277D75D00];
    v12 = [MEMORY[0x277D75210] effectWithStyle:9];
    v13 = [v11 effectForBlurEffect:v12 style:0];
    v14 = [v10 initWithEffect:v13];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = objc_opt_new();
    [(RTTUIRecentMessageCell *)self setLabel:v15];

    label2 = [(RTTUIRecentMessageCell *)self label];
    [label2 setNumberOfLines:0];

    label3 = [(RTTUIRecentMessageCell *)self label];
    [label3 setAdjustsFontForContentSizeCategory:1];

    label4 = [(RTTUIRecentMessageCell *)self label];
    [label4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(RTTUIRecentMessageCell *)self contentView];
    [contentView addSubview:v14];

    contentView2 = [v14 contentView];
    label5 = [(RTTUIRecentMessageCell *)self label];
    [contentView2 addSubview:label5];

    v65 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v14 leadingAnchor];
    contentView3 = [(RTTUIRecentMessageCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v87[0] = v78;
    topAnchor = [v14 topAnchor];
    contentView4 = [(RTTUIRecentMessageCell *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v87[1] = v74;
    trailingAnchor = [v14 trailingAnchor];
    contentView5 = [(RTTUIRecentMessageCell *)self contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v87[2] = v70;
    bottomAnchor = [v14 bottomAnchor];
    contentView6 = [(RTTUIRecentMessageCell *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v87[3] = v66;
    label6 = [(RTTUIRecentMessageCell *)self label];
    leadingAnchor3 = [label6 leadingAnchor];
    contentView7 = [v14 contentView];
    leadingAnchor4 = [contentView7 leadingAnchor];
    v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v87[4] = v60;
    label7 = [(RTTUIRecentMessageCell *)self label];
    topAnchor3 = [label7 topAnchor];
    contentView8 = [v14 contentView];
    topAnchor4 = [contentView8 topAnchor];
    v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v87[5] = v55;
    label8 = [(RTTUIRecentMessageCell *)self label];
    trailingAnchor3 = [label8 trailingAnchor];
    contentView9 = [v14 contentView];
    trailingAnchor4 = [contentView9 trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v87[6] = v23;
    [(RTTUIRecentMessageCell *)self label];
    v24 = v82 = utteranceCopy;
    bottomAnchor3 = [v24 bottomAnchor];
    contentView10 = [v14 contentView];
    bottomAnchor4 = [contentView10 bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v87[7] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:8];
    [v65 activateConstraints:v29];

    utteranceCopy = v82;
    prefixCopy = v84;
  }

  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [(RTTUIRecentMessageCell *)self setBackgroundConfiguration:clearConfiguration];

  if ([utteranceCopy isMe])
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
  text = [utteranceCopy text];
  if ([utteranceCopy isTranscription])
  {
    fontDescriptor = [v33 fontDescriptor];
    v37 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v38 = MEMORY[0x277D74300];
    [v33 pointSize];
    v39 = [v38 fontWithDescriptor:v37 size:?];

    v33 = v39;
  }

  if (prefixCopy)
  {
    if ([utteranceCopy isMe])
    {
      v40 = ttyLocString();
      text2 = [utteranceCopy text];
      v51 = text2;
    }

    else
    {
      v40 = ttyLocString();
      text2 = [utteranceCopy text];
      v51 = nameCopy;
    }

    v43 = AXCFormattedString();

    text3 = [utteranceCopy text];
    v42 = [v43 rangeOfString:text3];

    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = 0;
    }

    text = v43;
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
  v49 = [v45 initWithString:text attributes:v48];

  if (v84 && v42)
  {
    [v49 addAttribute:v46 value:v34 range:{0, v42}];
  }

  label9 = [(RTTUIRecentMessageCell *)self label];
  [label9 setAttributedText:v49];
}

@end