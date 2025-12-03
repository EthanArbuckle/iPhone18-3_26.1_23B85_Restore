@interface _TVRUIAppInfoUnhideItemsCell
- (_TVRUIAppInfoUnhideItemsCell)initWithFrame:(CGRect)frame;
- (void)_configureHierarchy;
@end

@implementation _TVRUIAppInfoUnhideItemsCell

- (_TVRUIAppInfoUnhideItemsCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIAppInfoUnhideItemsCell;
  v3 = [(_TVRUIAppInfoUnhideItemsCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIAppInfoUnhideItemsCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)_configureHierarchy
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 setFont:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TVRUIUnhideApps" value:&stru_287E6AEF8 table:@"Localizable"];
  [v3 setText:v6];

  [v3 setTextAlignment:1];
  contentView = [(_TVRUIAppInfoUnhideItemsCell *)self contentView];
  [contentView addSubview:v3];
  v20 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v23;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v8;
  topAnchor = [v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v11;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v20 activateConstraints:v15];

  [contentView _setContinuousCornerRadius:12.0];
  v16 = [MEMORY[0x277D75348] colorWithWhite:0.3 alpha:1.0];
  cGColor = [v16 CGColor];
  layer = [contentView layer];
  [layer setBorderColor:cGColor];

  layer2 = [contentView layer];
  [layer2 setBorderWidth:1.0];
}

@end