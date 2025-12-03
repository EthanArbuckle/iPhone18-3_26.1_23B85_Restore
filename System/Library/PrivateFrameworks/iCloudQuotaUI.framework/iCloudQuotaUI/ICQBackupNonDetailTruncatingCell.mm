@interface ICQBackupNonDetailTruncatingCell
- (ICQBackupNonDetailTruncatingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation ICQBackupNonDetailTruncatingCell

- (ICQBackupNonDetailTruncatingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = ICQBackupNonDetailTruncatingCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

@end