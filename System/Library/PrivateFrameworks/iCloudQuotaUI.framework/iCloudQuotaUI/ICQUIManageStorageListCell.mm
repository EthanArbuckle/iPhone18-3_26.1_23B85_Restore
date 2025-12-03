@interface ICQUIManageStorageListCell
- (id)getLazyIcon;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
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
  bundleIds = [v3 bundleIds];
  v5 = [bundleIds countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v5)
  {
LABEL_10:

LABEL_11:
    v10 = [ICQUIDrilldownImage alloc];
    v13.receiver = self;
    v13.super_class = ICQUIManageStorageListCell;
    bundleIds = [(PSTableCell *)&v13 getLazyIcon];
    v9 = -[ICQUIDrilldownImage initWithCGImage:](v10, "initWithCGImage:", [bundleIds CGImage]);
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
      objc_enumerationMutation(bundleIds);
    }

    v9 = [_ICQUIHelperFunctions appIconWithSize:*(*(&v14 + 1) + 8 * v8) forBundleID:29.0, 29.0];
    if (v9)
    {
      break;
    }

    if (v6 == ++v8)
    {
      v6 = [bundleIds countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  objc_storeStrong(&self->_currentSpecifier, specifier);
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = ICQUIManageStorageListCell;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  detailTextLabel = [(ICQUIManageStorageListCell *)self detailTextLabel];
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel setText:v7];
  imageView = [(ICQUIManageStorageListCell *)self imageView];
  [imageView setContentMode:1];

  [(ICQUIManageStorageListCell *)self setNeedsLayout];
}

@end