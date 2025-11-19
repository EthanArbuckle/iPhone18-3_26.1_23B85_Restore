@interface STTimeTitleDetailCell
- (STTimeTitleDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation STTimeTitleDetailCell

- (STTimeTitleDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = STTimeTitleDetailCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4, a5];
  if (v5)
  {
    v6 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v7 = [(STTimeTitleDetailCell *)v5 detailTextLabel];
    [v7 setTextColor:v6];
  }

  return v5;
}

@end