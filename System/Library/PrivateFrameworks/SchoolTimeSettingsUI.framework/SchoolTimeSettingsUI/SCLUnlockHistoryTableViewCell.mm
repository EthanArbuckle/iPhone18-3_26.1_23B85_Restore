@interface SCLUnlockHistoryTableViewCell
- (SCLUnlockHistoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SCLUnlockHistoryTableViewCell

- (SCLUnlockHistoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = SCLUnlockHistoryTableViewCell;
  v5 = [(PSTableCell *)&v37 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    textLabel = [(SCLUnlockHistoryTableViewCell *)v5 textLabel];
    [textLabel setHidden:1];

    detailTextLabel = [(SCLUnlockHistoryTableViewCell *)v6 detailTextLabel];
    [detailTextLabel setHidden:1];

    v9 = [SCLHistoryItemView alloc];
    contentView = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    [contentView bounds];
    v11 = [(SCLHistoryItemView *)v9 initWithFrame:?];
    historyItemView = v6->_historyItemView;
    v6->_historyItemView = v11;

    [(SCLHistoryItemView *)v6->_historyItemView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    [contentView2 addSubview:v6->_historyItemView];

    v14 = objc_alloc(MEMORY[0x277D75520]);
    v15 = [v14 initForTextStyle:*MEMORY[0x277D76918]];
    contentView3 = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    bottomAnchor = [contentView3 bottomAnchor];
    bottomAnchor2 = [(SCLHistoryItemView *)v6->_historyItemView bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [v19 setIdentifier:@"contentView.bottom"];
    LODWORD(v20) = 1148829696;
    [v19 setPriority:v20];
    leadingAnchor = [(SCLHistoryItemView *)v6->_historyItemView leadingAnchor];
    contentView4 = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    [v24 setIdentifier:@"contentView.leading"];
    firstBaselineAnchor = [(SCLHistoryItemView *)v6->_historyItemView firstBaselineAnchor];
    contentView5 = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    topAnchor = [contentView5 topAnchor];
    [v15 scaledValueForValue:30.0];
    v28 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];

    [v28 setIdentifier:@"historyView.baselineDifference"];
    trailingAnchor = [(SCLHistoryItemView *)v6->_historyItemView trailingAnchor];
    contentView6 = [(SCLUnlockHistoryTableViewCell *)v6 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    [v32 setIdentifier:@"contentView.trailing"];
    v33 = MEMORY[0x277CCAAD0];
    v38[0] = v28;
    v38[1] = v19;
    v38[2] = v24;
    v38[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v33 activateConstraints:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = SCLUnlockHistoryTableViewCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D401A8], v8.receiver, v8.super_class}];

  historyItemView = [(SCLUnlockHistoryTableViewCell *)self historyItemView];
  [historyItemView setHistoryGroup:v5];

  historyItemView2 = [(SCLUnlockHistoryTableViewCell *)self historyItemView];
  [historyItemView2 layoutIfNeeded];
}

@end