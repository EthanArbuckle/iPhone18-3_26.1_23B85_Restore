@interface WFAutomationListCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (WFAutomationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFAutomationListCellDelegate)delegate;
- (void)prepareForReuse;
- (void)setConfiguredTrigger:(id)a3 workflow:(id)a4 delegate:(id)a5;
- (void)setHomeTrigger:(id)a3;
- (void)setTitle:(id)a3 description:(id)a4 triggerIcon:(id)a5 triggerTintColor:(id)a6 triggerCornerRadius:(double)a7 actionIcons:(id)a8;
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
  v3 = [(WFAutomationListCell *)self configuredTrigger];

  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBlueColor];
    [(WFAutomationListCell *)self setTintColor:v4];

    v5 = [(WFAutomationListCell *)self configuredTrigger];
    v6 = [v5 trigger];

    v7 = [v6 localizedDescriptionWithConfigurationSummary];
    v8 = [(WFAutomationListCell *)self titleLabel];
    [v8 setText:v7];

    v9 = [(WFAutomationListCell *)self configuredTrigger];
    LODWORD(v8) = [v9 isEnabled];

    if (v8)
    {
      v10 = [(WFAutomationListCell *)self workflow];
      v11 = [v10 hiddenFromLibraryAndSync];

      v12 = [(WFAutomationListCell *)self workflow];
      v13 = v12;
      if (v11)
      {
        [v12 actionsDescription];
      }

      else
      {
        [v12 name];
      }
      v32 = ;
      v33 = [(WFAutomationListCell *)self descriptionLabel];
      [v33 setText:v32];
    }

    else
    {
      v13 = WFLocalizedString(@"Disabled");
      v32 = [(WFAutomationListCell *)self descriptionLabel];
      [v32 setText:v13];
    }

    v34 = [(WFAutomationListCell *)self summaryIconsView];
    v35 = [v6 displayGlyph];
    v36 = [v35 platformImage];
    v37 = [v6 displayGlyphTintColor];
    v38 = [v37 UIColor];
    [v34 setTriggerIcon:v36 tintColor:v38 withTrigger:v6];

    v39 = [(WFAutomationListCell *)self workflow];
    LODWORD(v35) = [v39 hiddenFromLibraryAndSync];

    v40 = [(WFAutomationListCell *)self workflow];
    v41 = v40;
    if (v35)
    {
      v42 = [v40 actions];
      v43 = [(WFAutomationListCell *)self workflow];
      v44 = [v43 actions];
      v45 = [v44 count];

      if (v45 >= 6)
      {
        v46 = 6;
      }

      else
      {
        v46 = v45;
      }

      v47 = [v42 subarrayWithRange:{0, v46}];

      if (![v47 count])
      {
        goto LABEL_19;
      }

      v48 = [v47 if_compactMap:&__block_literal_global_1752];
    }

    else
    {
      v49 = [v40 icon];
      v47 = [v49 icon];

      if (!v47)
      {
LABEL_19:

        return;
      }

      v56[0] = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    }

    v50 = v48;
    v51 = [(WFAutomationListCell *)self summaryIconsView];
    [v51 setActionIcons:v50];

    goto LABEL_19;
  }

  v14 = [(WFAutomationListCell *)self homeTrigger];

  if (v14)
  {
    v15 = [MEMORY[0x277D75348] wf_homeTintColor];
    [(WFAutomationListCell *)self setTintColor:v15];

    v16 = objc_alloc(getHFTriggerUISummaryClass());
    v17 = [(WFAutomationListCell *)self homeTrigger];
    v18 = [v17 trigger];
    v19 = [(WFAutomationListCell *)self homeTrigger];
    v20 = [v19 home];
    v55 = [v16 initWithTrigger:v18 inHome:v20 forceDisabled:0];

    v21 = [v55 triggerDisplayTitle];
    v22 = [(WFAutomationListCell *)self titleLabel];
    [v22 setText:v21];

    v23 = [v55 triggerDescription];
    v24 = [(WFAutomationListCell *)self descriptionLabel];
    [v24 setText:v23];

    HFTriggerIconFactoryClass = getHFTriggerIconFactoryClass();
    v26 = [(WFAutomationListCell *)self homeTrigger];
    v27 = [v26 trigger];
    v28 = [(objc_class *)HFTriggerIconFactoryClass iconDescriptorForTrigger:v27];

    v29 = [(WFAutomationListCell *)self summaryIconsView];
    [v29 setHomeTriggerIcon:v28];

    v30 = [v55 triggerSummaryIconDescriptors];
    v31 = [(WFAutomationListCell *)self summaryIconsView];
    [v31 setHomeActionIcons:v30];
  }

  else
  {
    v52 = [(WFAutomationListCell *)self titleLabel];
    [v52 setText:0];

    v53 = [(WFAutomationListCell *)self descriptionLabel];
    [v53 setText:0];

    v54 = [(WFAutomationListCell *)self summaryIconsView];
    [v54 setTriggerIcon:0 tintColor:0 withTrigger:0];

    v55 = [(WFAutomationListCell *)self summaryIconsView];
    [v55 setActionIcons:MEMORY[0x277CBEBF8]];
  }
}

- (void)setHomeTrigger:(id)a3
{
  v5 = a3;
  homeTrigger = self->_homeTrigger;
  if (homeTrigger != v5)
  {
    v8 = v5;
    v7 = [(HFTriggerItem *)homeTrigger isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_homeTrigger, a3);
      [(WFAutomationListCell *)self setConfiguredTrigger:0];
      [(WFAutomationListCell *)self setWorkflow:0];
      [(WFAutomationListCell *)self updateUI];
      v5 = v8;
    }
  }
}

- (void)setConfiguredTrigger:(id)a3 workflow:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(WFAutomationListCell *)self setConfiguredTrigger:a3];
  [(WFAutomationListCell *)self setWorkflow:v9];

  [(WFAutomationListCell *)self setDelegate:v8];

  [(WFAutomationListCell *)self updateUI];
}

- (void)setTitle:(id)a3 description:(id)a4 triggerIcon:(id)a5 triggerTintColor:(id)a6 triggerCornerRadius:(double)a7 actionIcons:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(WFAutomationListCell *)self titleLabel];
  [v19 setText:v18];

  v20 = [(WFAutomationListCell *)self descriptionLabel];
  [v20 setText:v17];

  v21 = [(WFAutomationListCell *)self summaryIconsView];
  v22 = [v16 platformImage];

  v23 = [v15 platformColor];

  [v21 setTriggerIcon:v22 tintColor:v23 withCornerRadius:a7];
  v24 = [(WFAutomationListCell *)self summaryIconsView];
  [v24 setActionIcons:v14];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = *(MEMORY[0x277D76C78] + 8);
  v5 = [(WFAutomationListCell *)self contentView:a3.width];
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

- (WFAutomationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v52[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = WFAutomationListCell;
  v4 = [(WFAutomationListCell *)&v51 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WFAutomationListCell *)v4 setSeparatorInset:0.0, 18.0, 0.0, 0.0];
    [(WFAutomationListCell *)v5 setAccessoryType:1];
    v50 = objc_alloc_init(MEMORY[0x277D75D18]);
    v6 = [MEMORY[0x277D75348] wf_tableCellDefaultSelectionTintColor];
    [v50 setBackgroundColor:v6];

    [(WFAutomationListCell *)v5 setSelectedBackgroundView:v50];
    v7 = [(WFAutomationListCell *)v5 contentView];
    [v7 setDirectionalLayoutMargins:{16.0, 18.0, 14.0, 8.0}];

    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAxis:1];
    [v8 setAlignment:0];
    [v8 setDistribution:0];
    [v8 setSpacing:4.0];
    v9 = [(WFAutomationListCell *)v5 contentView];
    [v9 addSubview:v8];

    v48 = [v8 topAnchor];
    v49 = [(WFAutomationListCell *)v5 contentView];
    v47 = [v49 layoutMarginsGuide];
    v46 = [v47 topAnchor];
    v45 = [v48 constraintEqualToAnchor:v46];
    v52[0] = v45;
    v43 = [v8 bottomAnchor];
    v44 = [(WFAutomationListCell *)v5 contentView];
    v42 = [v44 layoutMarginsGuide];
    v41 = [v42 bottomAnchor];
    v40 = [v43 constraintEqualToAnchor:v41];
    v52[1] = v40;
    v37 = [v8 leadingAnchor];
    v39 = [(WFAutomationListCell *)v5 contentView];
    v10 = [v39 layoutMarginsGuide];
    v11 = [v10 leadingAnchor];
    v12 = [v37 constraintEqualToAnchor:v11];
    v52[2] = v12;
    v13 = [v8 trailingAnchor];
    v14 = [(WFAutomationListCell *)v5 contentView];
    v15 = [v14 layoutMarginsGuide];
    v16 = [v15 trailingAnchor];
    v17 = [v13 constraintEqualToAnchor:v16];
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

    v33 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_descriptionLabel setTextColor:v33];

    LODWORD(v34) = 1148846080;
    [(UILabel *)v5->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v34];
    [v8 addArrangedSubview:v5->_descriptionLabel];
    v35 = v5;
  }

  return v5;
}

@end