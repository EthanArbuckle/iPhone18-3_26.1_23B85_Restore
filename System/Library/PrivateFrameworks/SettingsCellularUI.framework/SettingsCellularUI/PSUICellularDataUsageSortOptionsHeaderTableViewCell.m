@interface PSUICellularDataUsageSortOptionsHeaderTableViewCell
- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)changeSortTapped:(id)a3;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularDataUsageSortOptionsHeaderTableViewCell

- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)v9 commonInit];
    [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)v10 refreshCellContentsWithSpecifier:v8];
  }

  return v10;
}

- (PSUICellularDataUsageSortOptionsHeaderTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  v4 = [(PSMultilineTitleTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v5 = [(PSTableCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v7 = [(PSTableCell *)self valueLabel];
  [v7 setTextColor:v6];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v3];
  v9 = [(PSTableCell *)self valueLabel];
  [v9 setFont:v8];

  v10 = [(PSTableCell *)self valueLabel];
  [v10 setUserInteractionEnabled:1];

  v20 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_changeSortTapped_];
  [v20 setNumberOfTapsRequired:1];
  v11 = [(PSTableCell *)self valueLabel];
  [v11 addGestureRecognizer:v20];

  v12 = [(PSTableCell *)self valueLabel];
  [v12 setNumberOfLines:0];

  v13 = [(PSTableCell *)self valueLabel];
  LODWORD(v14) = 1144750080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v14];

  v15 = [(PSTableCell *)self valueLabel];
  v16 = [v15 widthAnchor];
  v17 = [(PSUICellularDataUsageSortOptionsHeaderTableViewCell *)self contentView];
  v18 = [v17 widthAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 multiplier:0.4];
  [v19 setActive:1];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = PSUICellularDataUsageSortOptionsHeaderTableViewCell;
  [(PSTableCell *)&v17 refreshCellContentsWithSpecifier:a3];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:0x287737A98];

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
  v11 = [(PSTableCell *)self titleLabel];
  [v11 setText:v10];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:v9 value:&stru_287733598 table:@"Cellular"];
  v14 = [(PSTableCell *)self valueLabel];
  [v14 setText:v13];

  v15 = [MEMORY[0x277D75348] systemBlueColor];
  v16 = [(PSTableCell *)self valueLabel];
  [v16 setTextColor:v15];
}

- (void)changeSortTapped:(id)a3
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:0x287737A98];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setBool:v4 ^ 1u forKey:0x287737A98];

  v6 = MEMORY[0x277D85CD0];

  dispatch_async(v6, &__block_literal_global_24);
}

void __72__PSUICellularDataUsageSortOptionsHeaderTableViewCell_changeSortTapped___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4D8A8] object:0];
}

@end