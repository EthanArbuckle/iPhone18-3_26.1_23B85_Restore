@interface ICQBackupNonDetailTruncatingCell
- (ICQBackupNonDetailTruncatingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation ICQBackupNonDetailTruncatingCell

- (ICQBackupNonDetailTruncatingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = ICQBackupNonDetailTruncatingCell;
  v5 = [(PSTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 titleLabel];
    [v7 setAdjustsFontSizeToFitWidth:1];
  }

  return v6;
}

@end