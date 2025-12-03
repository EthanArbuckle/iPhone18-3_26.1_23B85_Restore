@interface TSCellularPlanRemapTableViewCell
- (TSCellularPlanRemapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TSCellularPlanRemapTableViewCell

- (TSCellularPlanRemapTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v44[4] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = TSCellularPlanRemapTableViewCell;
  v4 = [(TSCellularPlanRemapTableViewCell *)&v43 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(TSCellularPlanRemapTableViewCell *)v4 setTitleLabel:v6];

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [titleLabel setFont:v7];

    titleLabel2 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    [contentView setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];

    contentView2 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    titleLabel4 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    [contentView2 addSubview:titleLabel4];

    v33 = MEMORY[0x277CCAAD0];
    titleLabel5 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    topAnchor = [titleLabel5 topAnchor];
    contentView3 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:20.0];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v44[0] = v37;
    contentView4 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    titleLabel6 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    bottomAnchor2 = [titleLabel6 bottomAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:20.0];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:?];
    v44[1] = v30;
    titleLabel7 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    leadingAnchor = [titleLabel7 leadingAnchor];
    contentView5 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[2] = v14;
    titleLabel8 = [(TSCellularPlanRemapTableViewCell *)v4 titleLabel];
    trailingAnchor = [titleLabel8 trailingAnchor];
    contentView6 = [(TSCellularPlanRemapTableViewCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics3 scaledValueForValue:-30.0];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    v44[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v33 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v4;
}

@end