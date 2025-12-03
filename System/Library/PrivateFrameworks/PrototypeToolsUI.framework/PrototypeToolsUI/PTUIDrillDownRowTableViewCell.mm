@interface PTUIDrillDownRowTableViewCell
- (PTUIDrillDownRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PTUIDrillDownRowTableViewCell

- (PTUIDrillDownRowTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PTUIDrillDownRowTableViewCell;
  v4 = [(PTUIDrillDownRowTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PTUIDrillDownRowTableViewCell *)v4 setAccessoryType:1];
  }

  return v5;
}

void __53__PTUIDrillDownRowTableViewCell_updateDisplayedValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) row];
  v4 = [v2 value];

  v3 = [*(a1 + 32) detailTextLabel];
  [v3 setText:v4];
}

@end