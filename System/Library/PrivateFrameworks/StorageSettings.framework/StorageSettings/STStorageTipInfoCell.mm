@interface STStorageTipInfoCell
- (STStorageTipInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation STStorageTipInfoCell

- (STStorageTipInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v21[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = STStorageTipInfoCell;
  v9 = [(PSTableCell *)&v20 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STStorageTipInfoCell *)v9 contentView];
    v12 = objc_alloc(MEMORY[0x277D756B8]);
    v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    infoLabel = v10->_infoLabel;
    v10->_infoLabel = v13;

    v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v10->_infoLabel setFont:v15];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v10->_infoLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v10->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_infoLabel setAccessibilityIdentifier:@"Info"];
    [(UILabel *)v10->_infoLabel setNumberOfLines:0];
    [(UILabel *)v10->_infoLabel setLineBreakMode:0];
    [contentView addSubview:v10->_infoLabel];
    v21[0] = v10->_infoLabel;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [contentView setAccessibilityElements:v17];

    [(STStorageTipInfoCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateConstraints
{
  v3 = _NSDictionaryOfVariableBindings(&cfstr_Infolabel.isa, self->_infoLabel, 0);
  if ([(NSMutableArray *)self->_constraints count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  }

  array = [MEMORY[0x277CBEB18] array];
  constraints = self->_constraints;
  self->_constraints = array;

  v6 = self->_constraints;
  v7 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-60-[_infoLabel]-10-|" options:0 metrics:0 views:v3];
  [(NSMutableArray *)v6 addObjectsFromArray:v7];

  v8 = self->_constraints;
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-10-[_infoLabel]-16-|" options:0 metrics:0 views:v3];
  [(NSMutableArray *)v8 addObjectsFromArray:v9];

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v10.receiver = self;
  v10.super_class = STStorageTipInfoCell;
  [(STStorageTipInfoCell *)&v10 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = STStorageTipInfoCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stInfo"];
  v6 = [specifierCopy propertyForKey:@"stTipKind"];
  v7 = [v6 isEqualToString:@"stActionTip"];

  v8 = [specifierCopy propertyForKey:@"stSize"];
  unsignedLongLongValue = [v8 unsignedLongLongValue];

  v10 = [specifierCopy propertyForKey:@"stImmediateGain"];
  unsignedLongLongValue2 = [v10 unsignedLongLongValue];

  v12 = [specifierCopy propertyForKey:@"stEventualGain"];

  unsignedLongLongValue3 = [v12 unsignedLongLongValue];
  if (unsignedLongLongValue)
  {
    v14 = unsignedLongLongValue;
  }

  else
  {
    v14 = unsignedLongLongValue2;
  }

  if (unsignedLongLongValue3 <= 0x3E8)
  {
    v15 = 0;
  }

  else
  {
    v15 = unsignedLongLongValue3;
  }

  if (v15 + v14 >= 0x3E9)
  {
    v16 = STFormattedSize();
    if (unsignedLongLongValue3 > 0x3E8)
    {
      v17 = 1;
    }

    else
    {
      v17 = v7;
    }

    if (v17)
    {
      v18 = @"ST_UPTO_INFO_FMT %@ %@";
    }

    else
    {
      v18 = @"ST_SIZE_INFO_FMT %@ %@";
    }

    v19 = MEMORY[0x277CCACA8];
    v20 = STFrameworkLocStr(v18);
    v21 = [v19 stringWithFormat:v20, v16, v5, v22.receiver, v22.super_class];

    v5 = v21;
  }

  [(UILabel *)self->_infoLabel setText:v5];
  [(STStorageTipInfoCell *)self setNeedsUpdateConstraints];
  [(STStorageTipInfoCell *)self setNeedsDisplay];
}

@end