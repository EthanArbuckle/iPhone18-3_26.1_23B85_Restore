@interface WFAutomationListCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (WFAutomationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFAutomationListCellDelegate)delegate;
- (void)prepareForReuse;
- (void)setConfiguredTrigger:(id)trigger workflow:(id)workflow delegate:(id)delegate;
- (void)setHomeTrigger:(id)trigger;
- (void)setTitle:(id)title description:(id)description triggerIcon:(id)icon triggerTintColor:(id)color triggerCornerRadius:(double)radius actionIcons:(id)icons;
- (void)updateUI;
@end

@implementation WFAutomationListCell

- (WFAutomationListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WFAutomationListCell;
  [(WFAutomationListCell *)&v3 prepareForReuse];
  [(WFAutomationListCell *)self setConfiguredTrigger:0 workflow:0 delegate:0];
  [(WFAutomationListCell *)self setHomeTrigger:0];
}

- (void)updateUI
{
  v56[1] = *MEMORY[0x277D85DE8];
  configuredTrigger = [(WFAutomationListCell *)self configuredTrigger];

  if (configuredTrigger)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(WFAutomationListCell *)self setTintColor:systemBlueColor];

    configuredTrigger2 = [(WFAutomationListCell *)self configuredTrigger];
    trigger = [configuredTrigger2 trigger];

    localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
    titleLabel = [(WFAutomationListCell *)self titleLabel];
    [titleLabel setText:localizedDescriptionWithConfigurationSummary];

    configuredTrigger3 = [(WFAutomationListCell *)self configuredTrigger];
    LODWORD(titleLabel) = [configuredTrigger3 isEnabled];

    if (titleLabel)
    {
      workflow = [(WFAutomationListCell *)self workflow];
      hiddenFromLibraryAndSync = [workflow hiddenFromLibraryAndSync];

      workflow2 = [(WFAutomationListCell *)self workflow];
      v13 = workflow2;
      if (hiddenFromLibraryAndSync)
      {
        [workflow2 actionsDescription];
      }

      else
      {
        [workflow2 name];
      }
      descriptionLabel2 = ;
      descriptionLabel = [(WFAutomationListCell *)self descriptionLabel];
      [descriptionLabel setText:descriptionLabel2];
    }

    else
    {
      v13 = WFLocalizedString(@"Disabled");
      descriptionLabel2 = [(WFAutomationListCell *)self descriptionLabel];
      [descriptionLabel2 setText:v13];
    }

    summaryIconsView = [(WFAutomationListCell *)self summaryIconsView];
    displayGlyph = [trigger displayGlyph];
    platformImage = [displayGlyph platformImage];
    displayGlyphTintColor = [trigger displayGlyphTintColor];
    uIColor = [displayGlyphTintColor UIColor];
    [summaryIconsView setTriggerIcon:platformImage tintColor:uIColor withTrigger:trigger];

    workflow3 = [(WFAutomationListCell *)self workflow];
    LODWORD(displayGlyph) = [workflow3 hiddenFromLibraryAndSync];

    workflow4 = [(WFAutomationListCell *)self workflow];
    v41 = workflow4;
    if (displayGlyph)
    {
      actions = [workflow4 actions];
      workflow5 = [(WFAutomationListCell *)self workflow];
      actions2 = [workflow5 actions];
      v45 = [actions2 count];

      if (v45 >= 6)
      {
        v46 = 6;
      }

      else
      {
        v46 = v45;
      }

      v49Icon = [actions subarrayWithRange:{0, v46}];

      if (![v49Icon count])
      {
        goto LABEL_19;
      }

      v48 = [v49Icon if_compactMap:&__block_literal_global_1752];
    }

    else
    {
      icon = [workflow4 icon];
      v49Icon = [icon icon];

      if (!v49Icon)
      {
LABEL_19:

        return;
      }

      v56[0] = v49Icon;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    }

    v50 = v48;
    summaryIconsView2 = [(WFAutomationListCell *)self summaryIconsView];
    [summaryIconsView2 setActionIcons:v50];

    goto LABEL_19;
  }

  homeTrigger = [(WFAutomationListCell *)self homeTrigger];

  if (homeTrigger)
  {
    wf_homeTintColor = [MEMORY[0x277D75348] wf_homeTintColor];
    [(WFAutomationListCell *)self setTintColor:wf_homeTintColor];

    v16 = objc_alloc(getHFTriggerUISummaryClass());
    homeTrigger2 = [(WFAutomationListCell *)self homeTrigger];
    trigger2 = [homeTrigger2 trigger];
    homeTrigger3 = [(WFAutomationListCell *)self homeTrigger];
    home = [homeTrigger3 home];
    summaryIconsView6 = [v16 initWithTrigger:trigger2 inHome:home forceDisabled:0];

    triggerDisplayTitle = [summaryIconsView6 triggerDisplayTitle];
    titleLabel2 = [(WFAutomationListCell *)self titleLabel];
    [titleLabel2 setText:triggerDisplayTitle];

    triggerDescription = [summaryIconsView6 triggerDescription];
    descriptionLabel3 = [(WFAutomationListCell *)self descriptionLabel];
    [descriptionLabel3 setText:triggerDescription];

    HFTriggerIconFactoryClass = getHFTriggerIconFactoryClass();
    homeTrigger4 = [(WFAutomationListCell *)self homeTrigger];
    trigger3 = [homeTrigger4 trigger];
    v28 = [(objc_class *)HFTriggerIconFactoryClass iconDescriptorForTrigger:trigger3];

    summaryIconsView3 = [(WFAutomationListCell *)self summaryIconsView];
    [summaryIconsView3 setHomeTriggerIcon:v28];

    triggerSummaryIconDescriptors = [summaryIconsView6 triggerSummaryIconDescriptors];
    summaryIconsView4 = [(WFAutomationListCell *)self summaryIconsView];
    [summaryIconsView4 setHomeActionIcons:triggerSummaryIconDescriptors];
  }

  else
  {
    titleLabel3 = [(WFAutomationListCell *)self titleLabel];
    [titleLabel3 setText:0];

    descriptionLabel4 = [(WFAutomationListCell *)self descriptionLabel];
    [descriptionLabel4 setText:0];

    summaryIconsView5 = [(WFAutomationListCell *)self summaryIconsView];
    [summaryIconsView5 setTriggerIcon:0 tintColor:0 withTrigger:0];

    summaryIconsView6 = [(WFAutomationListCell *)self summaryIconsView];
    [summaryIconsView6 setActionIcons:MEMORY[0x277CBEBF8]];
  }
}

- (void)setHomeTrigger:(id)trigger
{
  triggerCopy = trigger;
  homeTrigger = self->_homeTrigger;
  if (homeTrigger != triggerCopy)
  {
    v8 = triggerCopy;
    v7 = [(HFTriggerItem *)homeTrigger isEqual:triggerCopy];
    triggerCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_homeTrigger, trigger);
      [(WFAutomationListCell *)self setConfiguredTrigger:0];
      [(WFAutomationListCell *)self setWorkflow:0];
      [(WFAutomationListCell *)self updateUI];
      triggerCopy = v8;
    }
  }
}

- (void)setConfiguredTrigger:(id)trigger workflow:(id)workflow delegate:(id)delegate
{
  delegateCopy = delegate;
  workflowCopy = workflow;
  [(WFAutomationListCell *)self setConfiguredTrigger:trigger];
  [(WFAutomationListCell *)self setWorkflow:workflowCopy];

  [(WFAutomationListCell *)self setDelegate:delegateCopy];

  [(WFAutomationListCell *)self updateUI];
}

- (void)setTitle:(id)title description:(id)description triggerIcon:(id)icon triggerTintColor:(id)color triggerCornerRadius:(double)radius actionIcons:(id)icons
{
  iconsCopy = icons;
  colorCopy = color;
  iconCopy = icon;
  descriptionCopy = description;
  titleCopy = title;
  titleLabel = [(WFAutomationListCell *)self titleLabel];
  [titleLabel setText:titleCopy];

  descriptionLabel = [(WFAutomationListCell *)self descriptionLabel];
  [descriptionLabel setText:descriptionCopy];

  summaryIconsView = [(WFAutomationListCell *)self summaryIconsView];
  platformImage = [iconCopy platformImage];

  platformColor = [colorCopy platformColor];

  [summaryIconsView setTriggerIcon:platformImage tintColor:platformColor withCornerRadius:radius];
  summaryIconsView2 = [(WFAutomationListCell *)self summaryIconsView];
  [summaryIconsView2 setActionIcons:iconsCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = *(MEMORY[0x277D76C78] + 8);
  v5 = [(WFAutomationListCell *)self contentView:fits.width];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v5 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v4 verticalFittingPriority:{v6, v7}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (WFAutomationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = WFAutomationListCell;
  v4 = [(WFAutomationListCell *)&v51 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WFAutomationListCell *)v4 setSeparatorInset:0.0, 18.0, 0.0, 0.0];
    [(WFAutomationListCell *)v5 setAccessoryType:1];
    v50 = objc_alloc_init(MEMORY[0x277D75D18]);
    wf_tableCellDefaultSelectionTintColor = [MEMORY[0x277D75348] wf_tableCellDefaultSelectionTintColor];
    [v50 setBackgroundColor:wf_tableCellDefaultSelectionTintColor];

    [(WFAutomationListCell *)v5 setSelectedBackgroundView:v50];
    contentView = [(WFAutomationListCell *)v5 contentView];
    [contentView setDirectionalLayoutMargins:{16.0, 18.0, 14.0, 8.0}];

    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setAlignment:0];
    [v8 setDistribution:0];
    [v8 setSpacing:4.0];
    contentView2 = [(WFAutomationListCell *)v5 contentView];
    [contentView2 addSubview:v8];

    topAnchor = [v8 topAnchor];
    contentView3 = [(WFAutomationListCell *)v5 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[0] = v45;
    bottomAnchor = [v8 bottomAnchor];
    contentView4 = [(WFAutomationListCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[1] = v40;
    leadingAnchor = [v8 leadingAnchor];
    contentView5 = [(WFAutomationListCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[2] = v12;
    trailingAnchor = [v8 trailingAnchor];
    contentView6 = [(WFAutomationListCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[3] = v17;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v38];
    v18 = objc_alloc_init(WFAutomationSummaryIconsView);
    summaryIconsView = v5->_summaryIconsView;
    v5->_summaryIconsView = v18;

    [(WFAutomationSummaryIconsView *)v5->_summaryIconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1148846080;
    [(WFAutomationSummaryIconsView *)v5->_summaryIconsView setContentCompressionResistancePriority:1 forAxis:v20];
    [v8 addArrangedSubview:v5->_summaryIconsView];
    [v8 setCustomSpacing:v5->_summaryIconsView afterView:12.0];
    v21 = objc_alloc(MEMORY[0x277D756B8]);
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
    v26 = [v21 initWithFrame:{*MEMORY[0x277CBF3A0], v23, v24, v25}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v26;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_titleLabel setNumberOfLines:3];
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v5->_titleLabel setFont:v28];

    LODWORD(v29) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:1 forAxis:v29];
    [v8 addArrangedSubview:v5->_titleLabel];
    v30 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v22, v23, v24, v25}];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v30;

    [(UILabel *)v5->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_descriptionLabel setNumberOfLines:3];
    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v5->_descriptionLabel setFont:v32];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_descriptionLabel setTextColor:secondaryLabelColor];

    LODWORD(v34) = 1148846080;
    [(UILabel *)v5->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v34];
    [v8 addArrangedSubview:v5->_descriptionLabel];
    v35 = v5;
  }

  return v5;
}

@end