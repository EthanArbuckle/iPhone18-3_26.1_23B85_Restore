@interface TSCellularPlanLabelTableViewCell
- (TSCellularPlanLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setLabel:(id)label badge:(id)badge;
- (void)setLabelWithNoBadge:(id)badge;
@end

@implementation TSCellularPlanLabelTableViewCell

- (TSCellularPlanLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = TSCellularPlanLabelTableViewCell;
  v4 = [(TSCellularPlanLabelTableViewCell *)&v25 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TSCellularPlanLabelTableViewCell *)v4 setLabel:v6];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    label = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [label setFont:v7];

    label2 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [label2 setNumberOfLines:0];

    label3 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [label3 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    label4 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    [contentView addSubview:label4];

    contentView2 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    label5 = [(TSCellularPlanLabelTableViewCell *)v4 label];
    centerYAnchor = [label5 centerYAnchor];
    contentView3 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v26[0] = v17;
    contentView4 = [(TSCellularPlanLabelTableViewCell *)v4 contentView];
    heightAnchor = [contentView4 heightAnchor];
    v20 = [heightAnchor constraintGreaterThanOrEqualToConstant:45.0];
    v26[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [contentView2 addConstraints:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setLabelWithNoBadge:(id)badge
{
  v17[1] = *MEMORY[0x277D85DE8];
  badgeCopy = badge;
  label = [(TSCellularPlanLabelTableViewCell *)self label];
  [label setText:badgeCopy];

  badge = [(TSCellularPlanLabelTableViewCell *)self badge];

  if (badge)
  {
    badge2 = [(TSCellularPlanLabelTableViewCell *)self badge];
    [badge2 removeFromSuperview];
  }

  contentView = [(TSCellularPlanLabelTableViewCell *)self contentView];
  label2 = [(TSCellularPlanLabelTableViewCell *)self label];
  leadingAnchor = [label2 leadingAnchor];
  contentView2 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v17[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [contentView addConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setLabel:(id)label badge:(id)badge
{
  v52[1] = *MEMORY[0x277D85DE8];
  badgeCopy = badge;
  labelCopy = label;
  label = [(TSCellularPlanLabelTableViewCell *)self label];
  [label setText:labelCopy];

  badge = [(TSCellularPlanLabelTableViewCell *)self badge];

  if (badge)
  {
    badge2 = [(TSCellularPlanLabelTableViewCell *)self badge];
    [badge2 removeFromSuperview];
  }

  v11 = [MEMORY[0x277CBDB08] badgeForText:badgeCopy];
  [(TSCellularPlanLabelTableViewCell *)self setBadge:v11];

  v51 = *MEMORY[0x277D74068];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v52[0] = systemGrayColor;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  [(TSCellularPlanLabelTableViewCell *)self badge];
  v14 = v48 = badgeCopy;
  [v14 setViewAttributes:v13];

  contentView = [(TSCellularPlanLabelTableViewCell *)self contentView];
  badge3 = [(TSCellularPlanLabelTableViewCell *)self badge];
  [contentView addSubview:badge3];

  contentView2 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  badge4 = [(TSCellularPlanLabelTableViewCell *)self badge];
  leadingAnchor = [badge4 leadingAnchor];
  contentView3 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[0] = v42;
  badge5 = [(TSCellularPlanLabelTableViewCell *)self badge];
  trailingAnchor = [badge5 trailingAnchor];
  label2 = [(TSCellularPlanLabelTableViewCell *)self label];
  leadingAnchor3 = [label2 leadingAnchor];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:-4.0];
  v36 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:?];
  v50[1] = v36;
  badge6 = [(TSCellularPlanLabelTableViewCell *)self badge];
  bottomAnchor = [badge6 bottomAnchor];
  label3 = [(TSCellularPlanLabelTableViewCell *)self label];
  firstBaselineAnchor = [label3 firstBaselineAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor];
  v50[2] = v31;
  badge7 = [(TSCellularPlanLabelTableViewCell *)self badge];
  widthAnchor = [badge7 widthAnchor];
  v19 = [widthAnchor constraintLessThanOrEqualToConstant:300.0];
  v50[3] = v19;
  badge8 = [(TSCellularPlanLabelTableViewCell *)self badge];
  centerYAnchor = [badge8 centerYAnchor];
  contentView4 = [(TSCellularPlanLabelTableViewCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v50[4] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];
  [contentView2 addConstraints:v25];

  badge9 = [(TSCellularPlanLabelTableViewCell *)self badge];
  label4 = [(TSCellularPlanLabelTableViewCell *)self label];
  [label4 contentHuggingPriorityForAxis:0];
  *&v29 = v28 + 1.0;
  [badge9 setContentHuggingPriority:0 forAxis:v29];

  v30 = *MEMORY[0x277D85DE8];
}

@end