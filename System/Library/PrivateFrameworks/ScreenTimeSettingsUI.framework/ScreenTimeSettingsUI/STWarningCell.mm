@interface STWarningCell
- (STWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation STWarningCell

- (STWarningCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v27[3] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = STWarningCell;
  v5 = [(PSTableCell *)&v26 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  contentView = [(STWarningCell *)v5 contentView];
  v25 = [MEMORY[0x277D755D0] configurationWithScale:3];
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v25];
  v9 = [v7 initWithImage:v8];

  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v9 setTintColor:systemRedColor];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v9];
  centerYAnchor = [v9 centerYAnchor];
  v24 = contentView;
  centerYAnchor2 = [contentView centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v27[0] = v11;
  trailingAnchor = [v9 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v27[1] = v14;
  leadingAnchor = [v9 leadingAnchor];
  v21 = v5;
  titleLabel = [(PSTableCell *)v5 titleLabel];
  trailingAnchor3 = [titleLabel trailingAnchor];
  v18 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:8.0];
  v27[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];

  [MEMORY[0x277CCAAD0] activateConstraints:v19];
  return v21;
}

@end