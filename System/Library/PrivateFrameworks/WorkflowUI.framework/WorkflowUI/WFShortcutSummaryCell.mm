@interface WFShortcutSummaryCell
- (WFShortcutSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)addActionViewIfNeeded;
- (void)configureWithTitle:(id)a3 actionIcons:(id)a4;
- (void)prepareForReuse;
- (void)removeActionViewIfNeeded;
@end

@implementation WFShortcutSummaryCell

- (void)addActionViewIfNeeded
{
  v3 = [(UIStackView *)self->_mainStackView subviews];
  v4 = [v3 containsObject:self->_actionIconsView];

  if ((v4 & 1) == 0)
  {
    mainStackView = self->_mainStackView;
    actionIconsView = self->_actionIconsView;

    [(UIStackView *)mainStackView insertArrangedSubview:actionIconsView atIndex:0];
  }
}

- (void)removeActionViewIfNeeded
{
  v3 = [(UIStackView *)self->_mainStackView subviews];
  v4 = [v3 containsObject:self->_actionIconsView];

  if (v4)
  {
    [(UIStackView *)self->_mainStackView removeArrangedSubview:self->_actionIconsView];
    actionIconsView = self->_actionIconsView;

    [(WFRowOfIconsView *)actionIconsView removeFromSuperview];
  }
}

- (void)configureWithTitle:(id)a3 actionIcons:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 count])
  {
    [(WFShortcutSummaryCell *)self addActionViewIfNeeded];
    v8 = [(WFShortcutSummaryCell *)self actionIconsView];
    [v8 setIcons:v7];
  }

  else
  {
    [(WFShortcutSummaryCell *)self removeActionViewIfNeeded];
  }

  v9 = [(WFShortcutSummaryCell *)self summaryLabel];
  [v9 setText:v10];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFShortcutSummaryCell;
  [(WFShortcutSummaryCell *)&v5 prepareForReuse];
  v3 = [(WFShortcutSummaryCell *)self summaryLabel];
  [v3 setText:0];

  v4 = [(WFShortcutSummaryCell *)self actionIconsView];
  [v4 setIcons:MEMORY[0x277CBEBF8]];
}

- (WFShortcutSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = WFShortcutSummaryCell;
  v4 = [(WFShortcutSummaryCell *)&v43 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(WFShortcutSummaryCell *)v4 setAccessoryType:0];
    v6 = objc_opt_new();
    mainStackView = v5->_mainStackView;
    v5->_mainStackView = v6;

    [(UIStackView *)v5->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_mainStackView setSpacing:8.0];
    [(UIStackView *)v5->_mainStackView setAxis:1];
    [(UIStackView *)v5->_mainStackView setAlignment:0];
    [(UIStackView *)v5->_mainStackView setDistribution:3];
    v8 = [[WFRowOfIconsView alloc] initWithMaxNumberOfIcons:8 height:30.0];
    actionIconsView = v5->_actionIconsView;
    v5->_actionIconsView = v8;

    [(WFRowOfIconsView *)v5->_actionIconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_opt_new();
    summaryLabel = v5->_summaryLabel;
    v5->_summaryLabel = v10;

    [(UILabel *)v5->_summaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277D74300];
    v13 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v14 = [v13 fontDescriptorWithSymbolicTraits:2];
    v15 = [v12 fontWithDescriptor:v14 size:0.0];
    [(UILabel *)v5->_summaryLabel setFont:v15];

    [(UILabel *)v5->_summaryLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v5->_summaryLabel setNumberOfLines:4];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v5->_summaryLabel setContentCompressionResistancePriority:1 forAxis:v16];
    [(UIStackView *)v5->_mainStackView addArrangedSubview:v5->_summaryLabel];
    v17 = [(WFShortcutSummaryCell *)v5 contentView];
    [v17 addSubview:v5->_mainStackView];

    v33 = MEMORY[0x277CCAAD0];
    v42 = [(WFShortcutSummaryCell *)v5 contentView];
    v41 = [v42 layoutMarginsGuide];
    v40 = [v41 topAnchor];
    v39 = [(UIStackView *)v5->_mainStackView topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v44[0] = v38;
    v37 = [(WFShortcutSummaryCell *)v5 contentView];
    v36 = [v37 layoutMarginsGuide];
    v35 = [v36 leadingAnchor];
    v34 = [(UIStackView *)v5->_mainStackView leadingAnchor];
    v32 = [v35 constraintEqualToAnchor:v34];
    v44[1] = v32;
    v31 = [(WFShortcutSummaryCell *)v5 contentView];
    v30 = [v31 layoutMarginsGuide];
    v29 = [v30 trailingAnchor];
    v18 = [(UIStackView *)v5->_mainStackView trailingAnchor];
    v19 = [v29 constraintEqualToAnchor:v18];
    v44[2] = v19;
    v20 = [(WFShortcutSummaryCell *)v5 contentView];
    v21 = [v20 layoutMarginsGuide];
    v22 = [v21 bottomAnchor];
    v23 = [(UIStackView *)v5->_mainStackView bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v44[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v25];

    v26 = [(WFShortcutSummaryCell *)v5 contentView];
    [v26 setLayoutMargins:{14.0, 15.0, 14.0, 15.0}];

    v27 = v5;
  }

  return v5;
}

@end