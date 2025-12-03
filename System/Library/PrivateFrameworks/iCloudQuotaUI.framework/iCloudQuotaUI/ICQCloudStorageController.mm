@interface ICQCloudStorageController
- (id)specifiers;
- (void)_changeStoragePlan;
- (void)_storageUpgrade;
- (void)_storageUpgradeOfferNotification:(id)notification;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICQCloudStorageController

- (void)dealloc
{
  [(ICQCloudStorageGroupController *)self->_cloudGroup groupRemovedFromListController];
  [(NSTimer *)self->_storageUpgradeOfferTimer invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7F2A0] object:0];

  v4.receiver = self;
  v4.super_class = ICQCloudStorageController;
  [(ICQCloudStorageController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (!self->_cloudGroup)
    {
      v6 = objc_alloc_init(ICQCloudStorageGroupController);
      cloudGroup = self->_cloudGroup;
      self->_cloudGroup = v6;
    }

    v8 = [(ICQCloudStorageGroupController *)self->_cloudGroup specifiersWithBuyMore:PSUsedByManagedAccount() ^ 1];
    [v5 addObjectsFromArray:v8];

    v9 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)_changeStoragePlan
{
  specifiers = [(ICQCloudStorageController *)self specifiers];
  [(ICQCloudStorageGroupController *)self->_cloudGroup addGroupToListController:self];
  cloudGroup = self->_cloudGroup;

  [(ICQCloudStorageGroupController *)cloudGroup enterBuyStorage];
}

- (void)_storageUpgradeOfferNotification:(id)notification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7F2A0] object:0];

  [(NSTimer *)self->_storageUpgradeOfferTimer invalidate];
  storageUpgradeOfferTimer = self->_storageUpgradeOfferTimer;
  self->_storageUpgradeOfferTimer = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICQCloudStorageController__storageUpgradeOfferNotification___block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__ICQCloudStorageController__storageUpgradeOfferNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [MEMORY[0x277D7F390] sharedOfferManager];
    v12 = [v5 currentOffer];

    if ([ICQUpgradeFlowManager shouldShowForOffer:v12])
    {
      v6 = [[ICQUpgradeFlowManager alloc] initWithOffer:v12];
      v7 = *(a1 + 32);
      v8 = *(v7 + 1464);
      *(v7 + 1464) = v6;

      v9 = *(a1 + 32);
      v10 = v9[183];
      v11 = [v9 navigationController];
      [v10 beginFlowWithPresentingViewController:v11];
    }

    else
    {
      [*(a1 + 32) _changeStoragePlan];
    }
  }
}

- (void)_storageUpgrade
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__storageUpgradeOfferNotification_ name:*MEMORY[0x277D7F2A0] object:0];

  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  fetchOfferIfNeeded = [mEMORY[0x277D7F390] fetchOfferIfNeeded];

  if (fetchOfferIfNeeded)
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__storageUpgradeOfferTimeout_ selector:0 userInfo:0 repeats:10.0];
    storageUpgradeOfferTimer = self->_storageUpgradeOfferTimer;
    self->_storageUpgradeOfferTimer = v6;
  }

  else
  {

    [(ICQCloudStorageController *)self _storageUpgradeOfferNotification:0];
  }
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v5 = [lCopy objectForKey:@"path"];
  if ([v5 isEqualToString:@"MANAGE_STORAGE"])
  {
    specifiers = [(ICQCloudStorageController *)self specifiers];
    [(ICQCloudStorageGroupController *)self->_cloudGroup addGroupToListController:self];
    [(ICQCloudStorageGroupController *)self->_cloudGroup enterManageStorageWhenPossible];
  }

  else if ([v5 isEqualToString:@"CHANGE_STORAGE_PLAN"])
  {
    [(ICQCloudStorageController *)self _changeStoragePlan];
  }

  else if ([v5 isEqualToString:@"STORAGE_UPGRADE"])
  {
    [(ICQCloudStorageController *)self _storageUpgrade];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ICQCloudStorageController;
    [(ICQCloudStorageController *)&v7 handleURL:lCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICQCloudStorageController;
  [(ICQCloudStorageController *)&v4 viewWillAppear:appear];
  if ([(ICQCloudStorageController *)self isMovingToParentViewController])
  {
    [(ICQCloudStorageGroupController *)self->_cloudGroup addGroupToListController:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICQCloudStorageController;
  [(ICQCloudStorageController *)&v4 viewWillDisappear:disappear];
  if ([(ICQCloudStorageController *)self isMovingFromParentViewController])
  {
    [(ICQCloudStorageGroupController *)self->_cloudGroup groupRemovedFromListController];
  }
}

@end