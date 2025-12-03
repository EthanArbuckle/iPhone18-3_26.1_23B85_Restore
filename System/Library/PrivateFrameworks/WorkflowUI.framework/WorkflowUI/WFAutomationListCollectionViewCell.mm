@interface WFAutomationListCollectionViewCell
- (BOOL)showsSeparator;
- (WFAutomationListCollectionViewCell)initWithFrame:(CGRect)frame;
- (unint64_t)maskedCorners;
- (void)prepareForReuse;
- (void)setConfiguredTrigger:(id)trigger workflow:(id)workflow;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setShowsSeparator:(BOOL)separator;
- (void)traitCollectionDidChange:(id)change;
- (void)updateUI;
@end

@implementation WFAutomationListCollectionViewCell

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = WFAutomationListCollectionViewCell;
  changeCopy = change;
  [(WFAutomationListCollectionViewCell *)&v14 traitCollectionDidChange:changeCopy];
  v5 = [(WFAutomationListCollectionViewCell *)self traitCollection:v14.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    traitCollection = [(WFAutomationListCollectionViewCell *)self traitCollection];
    [traitCollection displayScale];
    v12 = 1.0 / v11;
    separatorViewHeightConstraint = [(WFAutomationListCollectionViewCell *)self separatorViewHeightConstraint];
    [separatorViewHeightConstraint setConstant:v12];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFAutomationListCollectionViewCell;
  [(WFAutomationListCollectionViewCell *)&v3 prepareForReuse];
  [(WFAutomationListCollectionViewCell *)self setConfiguredTrigger:0 workflow:0];
  [(WFAutomationListCollectionViewCell *)self setHomeTrigger:0];
  [(WFAutomationListCollectionViewCell *)self setMaskedCorners:0];
}

- (void)updateUI
{
  configuredTrigger = [(WFAutomationListCollectionViewCell *)self configuredTrigger];

  if (configuredTrigger)
  {
    [(WFAutomationListCollectionViewCell *)self setTintColor:0];
    configuredTrigger2 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    trigger = [configuredTrigger2 trigger];

    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
    titleLabel = [(WFAutomationListCollectionViewCell *)self titleLabel];
    [titleLabel setText:localizedDescriptionWithConfigurationSummary];

    configuredTrigger3 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    LODWORD(titleLabel) = [configuredTrigger3 isEnabled];

    if (titleLabel)
    {
      workflow = [(WFAutomationListCollectionViewCell *)self workflow];
      actionsDescription = [workflow actionsDescription];
      descriptionLabel = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [descriptionLabel setText:actionsDescription];
    }

    else
    {
      workflow = WFLocalizedString(@"Disabled");
      actionsDescription = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [actionsDescription setText:workflow];
    }

    summaryIconsView = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
    displayGlyph = [trigger displayGlyph];
    uIImage = [displayGlyph UIImage];
    displayGlyphTintColor = [trigger displayGlyphTintColor];
    uIColor = [displayGlyphTintColor UIColor];
    configuredTrigger4 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    trigger2 = [configuredTrigger4 trigger];
    [summaryIconsView setTriggerIcon:uIImage tintColor:uIColor withTrigger:trigger2];

    workflow2 = [(WFAutomationListCollectionViewCell *)self workflow];
    actions = [workflow2 actions];
    workflow3 = [(WFAutomationListCollectionViewCell *)self workflow];
    actions2 = [workflow3 actions];
    v40 = [actions2 count];

    if (v40 >= 6)
    {
      v41 = 6;
    }

    else
    {
      v41 = v40;
    }

    v42 = [actions subarrayWithRange:{0, v41}];

    v43 = [v42 if_compactMap:&__block_literal_global_4671];
    summaryIconsView2 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
    [summaryIconsView2 setActionIcons:v43];
  }

  else
  {
    homeTrigger = [(WFAutomationListCollectionViewCell *)self homeTrigger];

    if (homeTrigger)
    {
      wf_homeTintColor = [MEMORY[0x277D75348] wf_homeTintColor];
      [(WFAutomationListCollectionViewCell *)self setTintColor:wf_homeTintColor];

      v13 = objc_alloc(getHFTriggerUISummaryClass_4673());
      homeTrigger2 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      trigger3 = [homeTrigger2 trigger];
      homeTrigger3 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      home = [homeTrigger3 home];
      trigger = [v13 initWithTrigger:trigger3 inHome:home forceDisabled:0];

      triggerDisplayTitle = [trigger triggerDisplayTitle];
      titleLabel2 = [(WFAutomationListCollectionViewCell *)self titleLabel];
      [titleLabel2 setText:triggerDisplayTitle];

      triggerDescription = [trigger triggerDescription];
      descriptionLabel2 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [descriptionLabel2 setText:triggerDescription];

      HFTriggerIconFactoryClass_4674 = getHFTriggerIconFactoryClass_4674();
      homeTrigger4 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      trigger4 = [homeTrigger4 trigger];
      v25 = [(objc_class *)HFTriggerIconFactoryClass_4674 iconDescriptorForTrigger:trigger4];

      summaryIconsView3 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [summaryIconsView3 setHomeTriggerIcon:v25];

      triggerSummaryIconDescriptors = [trigger triggerSummaryIconDescriptors];
      summaryIconsView4 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [summaryIconsView4 setHomeActionIcons:triggerSummaryIconDescriptors];
    }

    else
    {
      titleLabel3 = [(WFAutomationListCollectionViewCell *)self titleLabel];
      [titleLabel3 setText:0];

      descriptionLabel3 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [descriptionLabel3 setText:0];

      summaryIconsView5 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [summaryIconsView5 setTriggerIcon:0 tintColor:0 withTrigger:0];

      trigger = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [trigger setActionIcons:MEMORY[0x277CBEBF8]];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)corners
{
  layer = [(WFAutomationListCollectionViewCell *)self layer];
  [layer setMaskedCorners:corners];
}

- (unint64_t)maskedCorners
{
  layer = [(WFAutomationListCollectionViewCell *)self layer];
  maskedCorners = [layer maskedCorners];

  return maskedCorners;
}

- (void)setConfiguredTrigger:(id)trigger workflow:(id)workflow
{
  workflowCopy = workflow;
  [(WFAutomationListCollectionViewCell *)self setConfiguredTrigger:trigger];
  [(WFAutomationListCollectionViewCell *)self setWorkflow:workflowCopy];

  [(WFAutomationListCollectionViewCell *)self updateUI];
}

- (WFAutomationListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v89[2] = *MEMORY[0x277D85DE8];
  v87.receiver = self;
  v87.super_class = WFAutomationListCollectionViewCell;
  v3 = [(WFAutomationListCollectionViewCell *)&v87 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(WFAutomationListCollectionViewCell *)v3 layer];
    [layer setMasksToBounds:1];

    v6 = *MEMORY[0x277CDA138];
    layer2 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [layer2 setCornerCurve:v6];

    layer3 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [layer3 setCornerRadius:16.0];

    layer4 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [layer4 setMaskedCorners:0];

    contentView = [(WFAutomationListCollectionViewCell *)v4 contentView];
    [contentView setDirectionalLayoutMargins:{16.0, 18.0, 14.0, 8.0}];

    v86 = objc_alloc_init(MEMORY[0x277D75D18]);
    wf_tableCellDefaultSelectionTintColor = [MEMORY[0x277D75348] wf_tableCellDefaultSelectionTintColor];
    [v86 setBackgroundColor:wf_tableCellDefaultSelectionTintColor];

    [(WFAutomationListCollectionViewCell *)v4 setSelectedBackgroundView:v86];
    v12 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setAxis:1];
    [v12 setAlignment:0];
    [v12 setDistribution:0];
    [v12 setSpacing:4.0];
    v13 = objc_alloc_init(WFAutomationSummaryIconsView);
    summaryIconsView = v4->_summaryIconsView;
    v4->_summaryIconsView = v13;

    [(WFAutomationSummaryIconsView *)v4->_summaryIconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(WFAutomationSummaryIconsView *)v4->_summaryIconsView setContentCompressionResistancePriority:1 forAxis:v15];
    [v12 addArrangedSubview:v4->_summaryIconsView];
    [v12 setCustomSpacing:v4->_summaryIconsView afterView:12.0];
    v16 = objc_alloc(MEMORY[0x277D756B8]);
    v17 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
    v21 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], v18, v19, v20}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v21;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v4->_titleLabel setFont:v23];

    LODWORD(v24) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v24];
    [v12 addArrangedSubview:v4->_titleLabel];
    v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v17, v18, v19, v20}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v25;

    [(UILabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_descriptionLabel setNumberOfLines:3];
    v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v4->_descriptionLabel setFont:v27];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:secondaryLabelColor];

    LODWORD(v29) = 1148846080;
    [(UILabel *)v4->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v29];
    v84 = v12;
    [v12 addArrangedSubview:v4->_descriptionLabel];
    v30 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right"];
    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    v32 = [v30 imageWithTintColor:tertiaryLabelColor];
    v33 = [v32 imageWithRenderingMode:1];
    imageFlippedForRightToLeftLayoutDirection = [v33 imageFlippedForRightToLeftLayoutDirection];

    v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageFlippedForRightToLeftLayoutDirection];
    LODWORD(v35) = 1148829696;
    [v34 setContentCompressionResistancePriority:0 forAxis:v35];
    LODWORD(v36) = 1148829696;
    [v34 setContentHuggingPriority:0 forAxis:v36];
    v37 = objc_alloc(MEMORY[0x277D75A68]);
    v89[0] = v84;
    v89[1] = v34;
    v82 = v34;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v39 = [v37 initWithArrangedSubviews:v38];

    [v39 setAxis:0];
    [v39 setSpacing:8.0];
    [v39 setAlignment:3];
    contentView2 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v83 = v39;
    [contentView2 addSubview:v39];

    contentView3 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    v43 = [v39 wf_addConstraintsToFillLayoutGuide:layoutMarginsGuide];

    trailingAnchor = [v34 trailingAnchor];
    contentView4 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v48 setActive:1];

    v49 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v49;

    separatorView = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [separatorView setTranslatesAutoresizingMaskIntoConstraints:0];

    separatorColor = [MEMORY[0x277D75348] separatorColor];
    separatorView2 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [separatorView2 setBackgroundColor:separatorColor];

    separatorView3 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    heightAnchor = [separatorView3 heightAnchor];
    traitCollection = [(WFAutomationListCollectionViewCell *)v4 traitCollection];
    [traitCollection displayScale];
    v58 = [heightAnchor constraintEqualToConstant:1.0 / v57];
    separatorViewHeightConstraint = v4->_separatorViewHeightConstraint;
    v4->_separatorViewHeightConstraint = v58;

    contentView5 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    separatorView4 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [contentView5 addSubview:separatorView4];

    v74 = MEMORY[0x277CCAAD0];
    separatorView5 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    leadingAnchor = [separatorView5 leadingAnchor];
    contentView6 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v88[0] = v76;
    separatorView6 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    trailingAnchor3 = [separatorView6 trailingAnchor];
    contentView7 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    trailingAnchor4 = [contentView7 trailingAnchor];
    v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v88[1] = v63;
    separatorView7 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    bottomAnchor = [separatorView7 bottomAnchor];
    contentView8 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v68 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v88[2] = v68;
    v88[3] = v4->_separatorViewHeightConstraint;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
    [v74 activateConstraints:v69];

    v70 = v4;
  }

  return v4;
}

- (void)setShowsSeparator:(BOOL)separator
{
  separatorCopy = separator;
  separatorView = [(WFAutomationListCollectionViewCell *)self separatorView];
  [separatorView setHidden:!separatorCopy];
}

- (BOOL)showsSeparator
{
  separatorView = [(WFAutomationListCollectionViewCell *)self separatorView];
  isHidden = [separatorView isHidden];

  return isHidden ^ 1;
}

@end