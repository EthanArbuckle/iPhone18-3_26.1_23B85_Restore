@interface ICQUsageController
- (id)specifiers;
- (id)usageStorageSpecifiers;
- (void)dealloc;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICQUsageController

- (id)usageStorageSpecifiers
{
  storageSpecifiers = self->_storageSpecifiers;
  if (!storageSpecifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_storageSpecifiers;
    self->_storageSpecifiers = array;

    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"STORAGE" value:&stru_28844FC60 table:@"Usage Statistics"];
    v9 = [v6 preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:0 edit:0];

    [v9 setProperty:@"STORAGE_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    [(NSMutableArray *)self->_storageSpecifiers addObject:v9];
    v10 = +[ICQUsageStorageMonitor sharedMonitor];
    [v10 fetchSystemSizeStrings];

    v11 = +[ICQUsageStorageController storageUsedSpecifier];
    storageUsedSpecifier = self->_storageUsedSpecifier;
    self->_storageUsedSpecifier = v11;

    [(NSMutableArray *)self->_storageSpecifiers addObject:self->_storageUsedSpecifier];
    v13 = +[ICQUsageStorageController storageAvailableSpecifier];
    storageAvailableSpecifier = self->_storageAvailableSpecifier;
    self->_storageAvailableSpecifier = v13;

    [(NSMutableArray *)self->_storageSpecifiers addObject:self->_storageAvailableSpecifier];
    if ((PSIsInEDUMode() & 1) == 0)
    {
      v15 = MEMORY[0x277D3FAD8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"MANAGE_STORAGE" value:&stru_28844FC60 table:@"Usage Statistics"];
      v18 = [v15 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v18 setIdentifier:@"DEVICE_STORAGE"];
      [(NSMutableArray *)self->_storageSpecifiers addObject:v18];
    }

    storageSpecifiers = self->_storageSpecifiers;
  }

  return storageSpecifiers;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(ICQUsageController *)self isMovingFromParentViewController])
  {
    [(ICQCloudStorageGroupController *)self->_cloudGroup groupRemovedFromListController];
  }

  v5.receiver = self;
  v5.super_class = ICQUsageController;
  [(ICQUsageController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ICQUsageController;
  [(ICQUsageController *)&v6 viewWillAppear:appear];
  if (([(ICQUsageController *)self isMovingToParentViewController]& 1) == 0)
  {
    v4 = +[ICQQuotaRequestManager sharedManager];
    [v4 noteQuotaInfoChanged];

    v5 = +[ICQUsageStorageMonitor sharedMonitor];
    [v5 fetchSystemSizeStrings];

    [(ICQUsageController *)self reloadSpecifier:self->_storageAvailableSpecifier];
    [(ICQUsageController *)self reloadSpecifier:self->_storageUsedSpecifier];
  }

  [(ICQCloudStorageGroupController *)self->_cloudGroup addGroupToListController:self];
}

- (void)dealloc
{
  [(ICQCloudStorageGroupController *)self->_cloudGroup groupRemovedFromListController];
  v3.receiver = self;
  v3.super_class = ICQUsageController;
  [(ICQUsageController *)&v3 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (!self->_cloudGroup)
    {
      mEMORY[0x277CEC748] = [MEMORY[0x277CEC748] sharedManager];
      primaryAccount = [mEMORY[0x277CEC748] primaryAccount];

      if (primaryAccount)
      {
        v8 = objc_alloc_init(ICQCloudStorageGroupController);
        cloudGroup = self->_cloudGroup;
        self->_cloudGroup = v8;
      }
    }

    usageStorageSpecifiers = [(ICQUsageController *)self usageStorageSpecifiers];
    [array addObjectsFromArray:usageStorageSpecifiers];

    v11 = [(ICQCloudStorageGroupController *)self->_cloudGroup specifiersWithBuyMore:0];
    [array addObjectsFromArray:v11];

    v12 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

@end