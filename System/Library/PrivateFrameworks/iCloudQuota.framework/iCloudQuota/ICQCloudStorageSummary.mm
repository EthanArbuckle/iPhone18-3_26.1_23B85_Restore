@interface ICQCloudStorageSummary
- (ICQCloudStorageSummary)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQCloudStorageSummary

- (id)description
{
  v2 = *&self->_displayLabel;
  v3 = *&self->_commerceStorage;
  manageStoragePage = self->_manageStoragePage;
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"displayLabel: %@, totalStorage: %@, usedStorage: %@, freeStorage: %@, commerceStorage: %@, mediaStorage: %@, tips: %@, backupInfo: %@, subscriptionInfo: %@, manageStorageURL: %@, manageStorageTitle: %@, manageStorageActionButtonText: %@, manageStoragePage: %@, detailsPageInfo: %@, ", self->_displayLabel, self->_totalStorage, self->_usedStorage, self->_freeStorage, self->_commerceStorage, self->_mediaStorage, self->_tips, self->_backupInfo, self->_subscriptionInfo, self->_manageStorageURL, self->_manageStorageTitle, self->_manageStorageActionButtonText, manageStoragePage, self->_iCloudDetailsPageInfo];
  v6 = [v5 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQCloudStorageSummary);
  [(ICQCloudStorageSummary *)v4 setDisplayLabel:self->_displayLabel];
  [(ICQCloudStorageSummary *)v4 setTotalStorage:self->_totalStorage];
  [(ICQCloudStorageSummary *)v4 setUsedStorage:self->_usedStorage];
  [(ICQCloudStorageSummary *)v4 setFreeStorage:self->_freeStorage];
  [(ICQCloudStorageSummary *)v4 setCommerceStorage:self->_commerceStorage];
  [(ICQCloudStorageSummary *)v4 setMediaStorage:self->_mediaStorage];
  [(ICQCloudStorageSummary *)v4 setTips:self->_tips];
  [(ICQCloudStorageSummary *)v4 setBackupInfo:self->_backupInfo];
  [(ICQCloudStorageSummary *)v4 setSubscriptionInfo:self->_subscriptionInfo];
  [(ICQCloudStorageSummary *)v4 setManageStorageURL:self->_manageStorageURL];
  [(ICQCloudStorageSummary *)v4 setManageStorageTitle:self->_manageStorageTitle];
  [(ICQCloudStorageSummary *)v4 setManageStorageActionButtonText:self->_manageStorageActionButtonText];
  [(ICQCloudStorageSummary *)v4 setManageStoragePage:self->_manageStoragePage];
  [(ICQCloudStorageSummary *)v4 setICloudDetailsPageInfo:self->_iCloudDetailsPageInfo];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  displayLabel = self->_displayLabel;
  coderCopy = coder;
  [coderCopy encodeObject:displayLabel forKey:@"displayLabel"];
  [coderCopy encodeObject:self->_totalStorage forKey:@"totalStorage"];
  [coderCopy encodeObject:self->_usedStorage forKey:@"usedStorage"];
  [coderCopy encodeObject:self->_freeStorage forKey:@"freeStorage"];
  [coderCopy encodeObject:self->_commerceStorage forKey:@"commerceStorageQuota"];
  [coderCopy encodeObject:self->_mediaStorage forKey:@"usageByMedia"];
  [coderCopy encodeObject:self->_tips forKey:@"tips"];
  [coderCopy encodeObject:self->_backupInfo forKey:@"backupInfo"];
  [coderCopy encodeObject:self->_subscriptionInfo forKey:@"subscriptionInfo"];
  [coderCopy encodeObject:self->_manageStorageURL forKey:@"manageStorageURL"];
  [coderCopy encodeObject:self->_manageStorageTitle forKey:@"manageStorageTitle"];
  [coderCopy encodeObject:self->_manageStorageActionButtonText forKey:@"manageStorageActionButtonText"];
  [coderCopy encodeObject:self->_manageStoragePage forKey:@"manageStoragePage"];
  [coderCopy encodeObject:self->_iCloudDetailsPageInfo forKey:@"iCloudDetailsPageInfo"];
}

- (ICQCloudStorageSummary)initWithCoder:(id)coder
{
  v44[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = ICQCloudStorageSummary;
  v5 = [(ICQCloudStorageSummary *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalStorage"];
    totalStorage = v5->_totalStorage;
    v5->_totalStorage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usedStorage"];
    usedStorage = v5->_usedStorage;
    v5->_usedStorage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freeStorage"];
    freeStorage = v5->_freeStorage;
    v5->_freeStorage = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commerceStorageQuota"];
    commerceStorage = v5->_commerceStorage;
    v5->_commerceStorage = v14;

    v16 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"usageByMedia"];
    mediaStorage = v5->_mediaStorage;
    v5->_mediaStorage = v19;

    v21 = MEMORY[0x277CBEB98];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v23 = [v21 setWithArray:v22];

    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"tips"];
    tips = v5->_tips;
    v5->_tips = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupInfo"];
    backupInfo = v5->_backupInfo;
    v5->_backupInfo = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionInfo"];
    subscriptionInfo = v5->_subscriptionInfo;
    v5->_subscriptionInfo = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manageStorageURL"];
    manageStorageURL = v5->_manageStorageURL;
    v5->_manageStorageURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manageStorageTitle"];
    manageStorageTitle = v5->_manageStorageTitle;
    v5->_manageStorageTitle = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manageStorageActionButtonText"];
    manageStorageActionButtonText = v5->_manageStorageActionButtonText;
    v5->_manageStorageActionButtonText = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manageStoragePage"];
    manageStoragePage = v5->_manageStoragePage;
    v5->_manageStoragePage = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudDetailsPageInfo"];
    iCloudDetailsPageInfo = v5->_iCloudDetailsPageInfo;
    v5->_iCloudDetailsPageInfo = v38;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v5;
}

@end