@interface PSUICellularDataUsageSortOptionsHeaderTableViewCell
- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)changeSortTapped:(id)tapped;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularDataUsageSortOptionsHeaderTableViewCell

- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)v9 commonInit];
    [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  v4 = [(PSMultilineTitleTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = *MEMORY[0x277D76968];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setFont:v4];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setTextColor:systemBlueColor];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v3];
  valueLabel2 = [(PSTableCell *)self valueLabel];
  [valueLabel2 setFont:v8];

  valueLabel3 = [(PSTableCell *)self valueLabel];
  [valueLabel3 setUserInteractionEnabled:1];

  v20 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_changeSortTapped_];
  [v20 setNumberOfTapsRequired:1];
  valueLabel4 = [(PSTableCell *)self valueLabel];
  [valueLabel4 addGestureRecognizer:v20];

  valueLabel5 = [(PSTableCell *)self valueLabel];
  [valueLabel5 setNumberOfLines:0];

  valueLabel6 = [(PSTableCell *)self valueLabel];
  LODWORD(v14) = 1144750080;
  [valueLabel6 setContentCompressionResistancePriority:0 forAxis:v14];

  valueLabel7 = [(PSTableCell *)self valueLabel];
  widthAnchor = [valueLabel7 widthAnchor];
  contentView = [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)self contentView];
  widthAnchor2 = [contentView widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.4];
  [v19 setActive:1];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v17.receiver = self;
  v17.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  [(PSTableCell *)&v17 refreshCellContentsWithSpecifier:specifier];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:0x287737A98];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    v8 = @"APPS_BY_NAME";
  }

  else
  {
    v8 = @"APPS_BY_USAGE";
  }

  if (v5)
  {
    v9 = @"SORT_BY_USAGE";
  }

  else
  {
    v9 = @"SORT_BY_NAME";
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Cellular"];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setText:v10];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v9 value:&stru_287733598 table:@"Cellular"];
  valueLabel = [(PSTableCell *)self valueLabel];
  [valueLabel setText:v13];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  valueLabel2 = [(PSTableCell *)self valueLabel];
  [valueLabel2 setTextColor:systemBlueColor];
}

- (void)changeSortTapped:(id)tapped
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:0x287737A98];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 setBool:v4 ^ 1u forKey:0x287737A98];

  v6 = MEMORY[0x277D85CD0];

  dispatch_async(v6, &__block_literal_global_24);
}

void __72__PSUICellularDataUsageSortOptionsHeaderTableViewCell_changeSortTapped___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4D8A8] object:0];
}

@end