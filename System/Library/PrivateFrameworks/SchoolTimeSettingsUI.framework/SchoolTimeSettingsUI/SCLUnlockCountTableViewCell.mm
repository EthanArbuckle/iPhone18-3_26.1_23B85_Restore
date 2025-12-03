@interface SCLUnlockCountTableViewCell
- (SCLUnlockCountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)attributedStringForUnlockCount:(id)count;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SCLUnlockCountTableViewCell

- (SCLUnlockCountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = SCLUnlockCountTableViewCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    detailTextLabel = [(SCLUnlockCountTableViewCell *)v5 detailTextLabel];
    [detailTextLabel setHidden:1];

    textLabel = [(SCLUnlockCountTableViewCell *)v6 textLabel];
    [textLabel setNumberOfLines:0];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = SCLUnlockCountTableViewCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v8 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D401A8], v8.receiver, v8.super_class}];

  textLabel = [(SCLUnlockCountTableViewCell *)self textLabel];
  v7 = [(SCLUnlockCountTableViewCell *)self attributedStringForUnlockCount:v5];
  [textLabel setAttributedText:v7];
}

- (id)attributedStringForUnlockCount:(id)count
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB8];
  countCopy = count;
  v5 = [v3 localizedStringFromNumber:countCopy numberStyle:1];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v6 localizedStringForKey:@"DAILY_UNLOCK_COUNT" value:&stru_28762AB68 table:@"StringsDict"];

  v7 = MEMORY[0x277CCACA8];
  integerValue = [countCopy integerValue];

  v9 = [v7 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%lu" error:0, integerValue];
  v28 = *MEMORY[0x277D740A8];
  v10 = v28;
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v30[0] = v11;
  v29 = *MEMORY[0x277D740C0];
  v12 = v29;
  tableCellGrayTextColor = [MEMORY[0x277D75348] tableCellGrayTextColor];
  v30[1] = tableCellGrayTextColor;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v28 count:2];

  v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9 attributes:v14];
  v16 = v5;
  v17 = [v9 rangeOfString:v5];
  v19 = v18;
  v26[0] = v10;
  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  v26[1] = v12;
  v27[0] = v20;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v27[1] = whiteColor;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  [v15 setAttributes:v22 range:{v17, v19}];
  v23 = *MEMORY[0x277D85DE8];

  return v15;
}

@end