@interface ICQUIManageStorageListCell
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ICQUIManageStorageListCell

- (id)getLazyIcon
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(PSSpecifier *)self->_currentSpecifier objectForKeyedSubscript:@"DRILLDOWN_APP_INFO"];
  if (![v3 fetchLocally])
  {
    goto LABEL_11;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 bundleIds];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
LABEL_10:

LABEL_11:
    v10 = [ICQUIDrilldownImage alloc];
    v13.receiver = self;
    v13.super_class = ICQUIManageStorageListCell;
    v4 = [(PSTableCell *)&v13 getLazyIcon];
    v9 = -[ICQUIDrilldownImage initWithCGImage:](v10, "initWithCGImage:", [v4 CGImage]);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = *v15;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v15 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = [_ICQUIHelperFunctions appIconWithSize:*(*(&v14 + 1) + 8 * v8) forBundleID:29.0, 29.0];
    if (v9)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

LABEL_12:
  v11 = v9;

  return v11;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  objc_storeStrong(&self->_currentSpecifier, a3);
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQUIManageStorageListCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:v5];
  v6 = [(ICQUIManageStorageListCell *)self detailTextLabel];
  v7 = [v5 propertyForKey:*MEMORY[0x277D40160]];

  [v6 setText:v7];
  v8 = [(ICQUIManageStorageListCell *)self imageView];
  [v8 setContentMode:1];

  [(ICQUIManageStorageListCell *)self setNeedsLayout];
}

@end