@interface WFAutomationListCollectionViewCell
- (BOOL)showsSeparator;
- (WFAutomationListCollectionViewCell)initWithFrame:(CGRect)a3;
- (unint64_t)maskedCorners;
- (void)prepareForReuse;
- (void)setConfiguredTrigger:(id)a3 workflow:(id)a4;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setShowsSeparator:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUI;
@end

@implementation WFAutomationListCollectionViewCell

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = WFAutomationListCollectionViewCell;
  v4 = a3;
  [(WFAutomationListCollectionViewCell *)&v14 traitCollectionDidChange:v4];
  v5 = [(WFAutomationListCollectionViewCell *)self traitCollection:v14.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    v10 = [(WFAutomationListCollectionViewCell *)self traitCollection];
    [v10 displayScale];
    v12 = 1.0 / v11;
    v13 = [(WFAutomationListCollectionViewCell *)self separatorViewHeightConstraint];
    [v13 setConstant:v12];
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
  v3 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];

  if (v3)
  {
    [(WFAutomationListCollectionViewCell *)self setTintColor:0];
    v4 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    v48 = [v4 trigger];

    v5 = [v48 localizedDescriptionWithConfigurationSummary];
    v6 = [(WFAutomationListCollectionViewCell *)self titleLabel];
    [v6 setText:v5];

    v7 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    LODWORD(v6) = [v7 isEnabled];

    if (v6)
    {
      v8 = [(WFAutomationListCollectionViewCell *)self workflow];
      v9 = [v8 actionsDescription];
      v10 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [v10 setText:v9];
    }

    else
    {
      v8 = WFLocalizedString(@"Disabled");
      v9 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [v9 setText:v8];
    }

    v29 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
    v30 = [v48 displayGlyph];
    v31 = [v30 UIImage];
    v32 = [v48 displayGlyphTintColor];
    v33 = [v32 UIColor];
    v34 = [(WFAutomationListCollectionViewCell *)self configuredTrigger];
    v35 = [v34 trigger];
    [v29 setTriggerIcon:v31 tintColor:v33 withTrigger:v35];

    v36 = [(WFAutomationListCollectionViewCell *)self workflow];
    v37 = [v36 actions];
    v38 = [(WFAutomationListCollectionViewCell *)self workflow];
    v39 = [v38 actions];
    v40 = [v39 count];

    if (v40 >= 6)
    {
      v41 = 6;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v37 subarrayWithRange:{0, v41}];

    v43 = [v42 if_compactMap:&__block_literal_global_4671];
    v44 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
    [v44 setActionIcons:v43];
  }

  else
  {
    v11 = [(WFAutomationListCollectionViewCell *)self homeTrigger];

    if (v11)
    {
      v12 = [MEMORY[0x277D75348] wf_homeTintColor];
      [(WFAutomationListCollectionViewCell *)self setTintColor:v12];

      v13 = objc_alloc(getHFTriggerUISummaryClass_4673());
      v14 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      v15 = [v14 trigger];
      v16 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      v17 = [v16 home];
      v48 = [v13 initWithTrigger:v15 inHome:v17 forceDisabled:0];

      v18 = [v48 triggerDisplayTitle];
      v19 = [(WFAutomationListCollectionViewCell *)self titleLabel];
      [v19 setText:v18];

      v20 = [v48 triggerDescription];
      v21 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [v21 setText:v20];

      HFTriggerIconFactoryClass_4674 = getHFTriggerIconFactoryClass_4674();
      v23 = [(WFAutomationListCollectionViewCell *)self homeTrigger];
      v24 = [v23 trigger];
      v25 = [(objc_class *)HFTriggerIconFactoryClass_4674 iconDescriptorForTrigger:v24];

      v26 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [v26 setHomeTriggerIcon:v25];

      v27 = [v48 triggerSummaryIconDescriptors];
      v28 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [v28 setHomeActionIcons:v27];
    }

    else
    {
      v45 = [(WFAutomationListCollectionViewCell *)self titleLabel];
      [v45 setText:0];

      v46 = [(WFAutomationListCollectionViewCell *)self descriptionLabel];
      [v46 setText:0];

      v47 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [v47 setTriggerIcon:0 tintColor:0 withTrigger:0];

      v48 = [(WFAutomationListCollectionViewCell *)self summaryIconsView];
      [v48 setActionIcons:MEMORY[0x277CBEBF8]];
    }
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v4 = [(WFAutomationListCollectionViewCell *)self layer];
  [v4 setMaskedCorners:a3];
}

- (unint64_t)maskedCorners
{
  v2 = [(WFAutomationListCollectionViewCell *)self layer];
  v3 = [v2 maskedCorners];

  return v3;
}

- (void)setConfiguredTrigger:(id)a3 workflow:(id)a4
{
  v6 = a4;
  [(WFAutomationListCollectionViewCell *)self setConfiguredTrigger:a3];
  [(WFAutomationListCollectionViewCell *)self setWorkflow:v6];

  [(WFAutomationListCollectionViewCell *)self updateUI];
}

- (WFAutomationListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v89[2] = *MEMORY[0x277D85DE8];
  v87.receiver = self;
  v87.super_class = WFAutomationListCollectionViewCell;
  v3 = [(WFAutomationListCollectionViewCell *)&v87 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(WFAutomationListCollectionViewCell *)v3 layer];
    [v5 setMasksToBounds:1];

    v6 = *MEMORY[0x277CDA138];
    v7 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [v7 setCornerCurve:v6];

    v8 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [v8 setCornerRadius:16.0];

    v9 = [(WFAutomationListCollectionViewCell *)v4 layer];
    [v9 setMaskedCorners:0];

    v10 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    [v10 setDirectionalLayoutMargins:{16.0, 18.0, 14.0, 8.0}];

    v86 = objc_alloc_init(MEMORY[0x277D75D18]);
    v11 = [MEMORY[0x277D75348] wf_tableCellDefaultSelectionTintColor];
    [v86 setBackgroundColor:v11];

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

    v28 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:v28];

    LODWORD(v29) = 1148846080;
    [(UILabel *)v4->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v29];
    v84 = v12;
    [v12 addArrangedSubview:v4->_descriptionLabel];
    v30 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right"];
    v31 = [MEMORY[0x277D75348] tertiaryLabelColor];
    v32 = [v30 imageWithTintColor:v31];
    v33 = [v32 imageWithRenderingMode:1];
    v85 = [v33 imageFlippedForRightToLeftLayoutDirection];

    v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v85];
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
    v40 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v83 = v39;
    [v40 addSubview:v39];

    v41 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v42 = [v41 layoutMarginsGuide];
    v43 = [v39 wf_addConstraintsToFillLayoutGuide:v42];

    v44 = [v34 trailingAnchor];
    v45 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v46 = [v45 layoutMarginsGuide];
    v47 = [v46 trailingAnchor];
    v48 = [v44 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v49;

    v51 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = [MEMORY[0x277D75348] separatorColor];
    v53 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [v53 setBackgroundColor:v52];

    v54 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    v55 = [v54 heightAnchor];
    v56 = [(WFAutomationListCollectionViewCell *)v4 traitCollection];
    [v56 displayScale];
    v58 = [v55 constraintEqualToConstant:1.0 / v57];
    separatorViewHeightConstraint = v4->_separatorViewHeightConstraint;
    v4->_separatorViewHeightConstraint = v58;

    v60 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v61 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    [v60 addSubview:v61];

    v74 = MEMORY[0x277CCAAD0];
    v81 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    v79 = [v81 leadingAnchor];
    v80 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v78 = [v80 layoutMarginsGuide];
    v77 = [v78 leadingAnchor];
    v76 = [v79 constraintEqualToAnchor:v77];
    v88[0] = v76;
    v75 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    v72 = [v75 trailingAnchor];
    v73 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v62 = [v73 trailingAnchor];
    v63 = [v72 constraintEqualToAnchor:v62];
    v88[1] = v63;
    v64 = [(WFAutomationListCollectionViewCell *)v4 separatorView];
    v65 = [v64 bottomAnchor];
    v66 = [(WFAutomationListCollectionViewCell *)v4 contentView];
    v67 = [v66 bottomAnchor];
    v68 = [v65 constraintEqualToAnchor:v67];
    v88[2] = v68;
    v88[3] = v4->_separatorViewHeightConstraint;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
    [v74 activateConstraints:v69];

    v70 = v4;
  }

  return v4;
}

- (void)setShowsSeparator:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFAutomationListCollectionViewCell *)self separatorView];
  [v4 setHidden:!v3];
}

- (BOOL)showsSeparator
{
  v2 = [(WFAutomationListCollectionViewCell *)self separatorView];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

@end