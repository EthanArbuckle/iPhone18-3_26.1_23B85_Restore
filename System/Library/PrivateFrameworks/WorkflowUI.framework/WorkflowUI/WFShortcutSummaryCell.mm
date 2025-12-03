@interface WFShortcutSummaryCell
- (WFShortcutSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)addActionViewIfNeeded;
- (void)configureWithTitle:(id)title actionIcons:(id)icons;
- (void)prepareForReuse;
- (void)removeActionViewIfNeeded;
@end

@implementation WFShortcutSummaryCell

- (void)addActionViewIfNeeded
{
  subviews = [(UIStackView *)self->_mainStackView subviews];
  v4 = [subviews containsObject:self->_actionIconsView];

  if ((v4 & 1) == 0)
  {
    mainStackView = self->_mainStackView;
    actionIconsView = self->_actionIconsView;

    [(UIStackView *)mainStackView insertArrangedSubview:actionIconsView atIndex:0];
  }
}

- (void)removeActionViewIfNeeded
{
  subviews = [(UIStackView *)self->_mainStackView subviews];
  v4 = [subviews containsObject:self->_actionIconsView];

  if (v4)
  {
    [(UIStackView *)self->_mainStackView removeArrangedSubview:self->_actionIconsView];
    actionIconsView = self->_actionIconsView;

    [(WFRowOfIconsView *)actionIconsView removeFromSuperview];
  }
}

- (void)configureWithTitle:(id)title actionIcons:(id)icons
{
  titleCopy = title;
  iconsCopy = icons;
  v7 = iconsCopy;
  if (iconsCopy && [iconsCopy count])
  {
    [(WFShortcutSummaryCell *)self addActionViewIfNeeded];
    actionIconsView = [(WFShortcutSummaryCell *)self actionIconsView];
    [actionIconsView setIcons:v7];
  }

  else
  {
    [(WFShortcutSummaryCell *)self removeActionViewIfNeeded];
  }

  summaryLabel = [(WFShortcutSummaryCell *)self summaryLabel];
  [summaryLabel setText:titleCopy];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = WFShortcutSummaryCell;
  [(WFShortcutSummaryCell *)&v5 prepareForReuse];
  summaryLabel = [(WFShortcutSummaryCell *)self summaryLabel];
  [summaryLabel setText:0];

  actionIconsView = [(WFShortcutSummaryCell *)self actionIconsView];
  [actionIconsView setIcons:MEMORY[0x277CBEBF8]];
}

- (WFShortcutSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = WFShortcutSummaryCell;
  v4 = [(WFShortcutSummaryCell *)&v43 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(WFShortcutSummaryCell *)v5 contentView];
    [contentView addSubview:v5->_mainStackView];

    v33 = MEMORY[0x277CCAAD0];
    contentView2 = [(WFShortcutSummaryCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide topAnchor];
    topAnchor2 = [(UIStackView *)v5->_mainStackView topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[0] = v38;
    contentView3 = [(WFShortcutSummaryCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide2 leadingAnchor];
    leadingAnchor2 = [(UIStackView *)v5->_mainStackView leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[1] = v32;
    contentView4 = [(WFShortcutSummaryCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v5->_mainStackView trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[2] = v19;
    contentView5 = [(WFShortcutSummaryCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v5->_mainStackView bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v44[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v25];

    contentView6 = [(WFShortcutSummaryCell *)v5 contentView];
    [contentView6 setLayoutMargins:{14.0, 15.0, 14.0, 15.0}];

    v27 = v5;
  }

  return v5;
}

@end