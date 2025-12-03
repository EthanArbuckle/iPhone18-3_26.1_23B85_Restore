@interface STTimeTitleDetailCell
- (STTimeTitleDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation STTimeTitleDetailCell

- (STTimeTitleDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = STTimeTitleDetailCell;
  specifier = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier, specifier];
  if (specifier)
  {
    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    detailTextLabel = [(STTimeTitleDetailCell *)specifier detailTextLabel];
    [detailTextLabel setTextColor:tableCellBlueTextColor];
  }

  return specifier;
}

@end