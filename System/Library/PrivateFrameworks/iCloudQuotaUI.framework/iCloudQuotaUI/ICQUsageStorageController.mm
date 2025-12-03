@interface ICQUsageStorageController
+ (id)storageAvailableSpecifier;
+ (id)storageUsedSpecifier;
+ (id)systemSizeAvailable:(id)available;
+ (id)systemSizeUsed:(id)used;
- (BOOL)mediaCache:(id)cache hasGroups:(id)groups;
- (BOOL)storageExpired;
- (Class)usageDetailControllerForBundleID:(id)d;
- (ICQUsageStorageController)init;
- (id)_specifierForApp:(id)app;
- (id)_specifierForBundle:(id)bundle;
- (id)controllerForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringWithAppSizeForSpecifier:(id)specifier;
- (id)tapToRadarURLForAttributes:(id)attributes;
- (void)addStorageSpecifiers:(id)specifiers completed:(BOOL)completed;
- (void)checkForPendingUpdate;
- (void)dealloc;
- (void)didUnlock;
- (void)handleURL:(id)l;
- (void)prepareForSnapshot;
- (void)refreshSoftwareUpdateRequiredSpace;
- (void)reloadSpecifiers;
- (void)reloadStorageSummary;
- (void)removeStorageSpecifier:(id)specifier;
- (void)setDelayUsagePopulation:(BOOL)population;
- (void)sizeChangedForSpecifier:(id)specifier;
- (void)snapshotAndReportDiskSpace;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICQUsageStorageController

- (id)tapToRadarURLForAttributes:(id)attributes
{
  v3 = MEMORY[0x277CBEB18];
  attributesCopy = attributes;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(attributesCopy, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ICQUsageStorageController_BugReporting__tapToRadarURLForAttributes___block_invoke;
  v10[3] = &unk_27A65A658;
  v11 = v5;
  v6 = v5;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v10];

  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  [v7 setQueryItems:v6];
  v8 = [v7 URL];

  return v8;
}

void __70__ICQUsageStorageController_BugReporting__tapToRadarURLForAttributes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

- (void)snapshotAndReportDiskSpace
{
  v18 = *MEMORY[0x277D85DE8];
  navigationItem = [(ICQUsageStorageController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem2 = [(ICQUsageStorageController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];

  [v5 startAnimating];
  v15[0] = 0;
  if (!DiskSpaceDiagnosticsLibraryCore_frameworkLibrary)
  {
    v15[1] = MEMORY[0x277D85DD0];
    v15[2] = 3221225472;
    v15[3] = __DiskSpaceDiagnosticsLibraryCore_block_invoke;
    v15[4] = &__block_descriptor_40_e5_v8__0l;
    v15[5] = v15;
    v16 = xmmword_27A65A6C8;
    v17 = 0;
    DiskSpaceDiagnosticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v8 = v15[0];
    if (DiskSpaceDiagnosticsLibraryCore_frameworkLibrary)
    {
      if (!v15[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v15[0];
      v8 = abort_report_np();
    }

    free(v8);
  }

LABEL_4:
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_2884E07F0, v13}];
  v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.FilesystemMetadataSnapshotService"];
  [v10 setRemoteObjectInterface:v9];
  [v10 resume];
  remoteObjectProxy = [v10 remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke;
  v14[3] = &unk_27A65A6A8;
  v14[4] = self;
  v12 = [remoteObjectProxy generateFilesystemMetadataSnapshotWithOptions:0 reply:v14];
}

void __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke_cold_1(v6, v7);
    }

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"FILESYSTEM_METADATA_SNAPSHOT_FAIL_TITLE" value:&stru_28844FC60 table:@"Localizable"];

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"FILESYSTEM_METADATA_SNAPSHOT_FAIL_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke_70;
  block[3] = &unk_27A65A680;
  block[4] = *(a1 + 32);
  v17 = v6;
  v18 = v9;
  v19 = v11;
  v20 = v5;
  v12 = v5;
  v13 = v11;
  v14 = v9;
  v15 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke_70(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Radar" style:0 target:*(a1 + 32) action:sel_snapshotAndReportDiskSpace];
  v3 = [*(a1 + 32) navigationItem];
  [v3 setRightBarButtonItem:v2];

  v4 = [*(a1 + 32) navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:1];

  if (*(a1 + 40))
  {
    v6 = MEMORY[0x277D750F8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DIAGNOSTICS_ALERT_OK" value:&stru_28844FC60 table:@"Localizable"];
    v11 = [v6 actionWithTitle:v8 style:0 handler:0];

    v9 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 48) message:*(a1 + 56) preferredStyle:1];
    [v9 addAction:v11];
    [*(a1 + 32) presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
    [v11 setObject:@"[Disk Space]: " forKeyedSubscript:@"Title"];
    [v11 setObject:@"Purple Performance" forKeyedSubscript:@"ComponentName"];
    [v11 setObject:@"1.0" forKeyedSubscript:@"ComponentVersion"];
    [v11 setObject:@"223755" forKeyedSubscript:@"ComponentID"];
    [v11 setObject:@"Other Bug" forKeyedSubscript:@"Classification"];
    [v11 setObject:@"Always" forKeyedSubscript:@"Reproducibility"];
    [v11 setObject:*(a1 + 64) forKeyedSubscript:@"Attachments"];
    v9 = [*(a1 + 32) tapToRadarURLForAttributes:v11];
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v10 openURL:v9];
  }
}

- (ICQUsageStorageController)init
{
  v12.receiver = self;
  v12.super_class = ICQUsageStorageController;
  v2 = [(ICQUsageStorageController *)&v12 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_prepareForSnapshot name:@"preferencesPrepareForSnapshotNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_didEnterForeground name:*MEMORY[0x277D76758] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_appDeletionComplete name:@"AppDeletionCompleted" object:0];

    v6 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    appsStorageGroup = v2->_appsStorageGroup;
    v2->_appsStorageGroup = v6;

    [(PSSpecifier *)v2->_appsStorageGroup setProperty:@"STORAGE_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    deferredUsageApps = v2->_deferredUsageApps;
    v2->_deferredUsageApps = v8;

    v10 = +[ICQUsageStorageMonitor sharedMonitor];
    [v10 registerUsageStorageClient];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[ICQUsageStorageMonitor sharedMonitor];
  [v3 flushViews];

  v4 = +[ICQUsageStorageMonitor sharedMonitor];
  [v4 deregisterUsageStorageClient];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = ICQUsageStorageController;
  [(ICQUsageStorageController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICQUsageStorageController;
  [(ICQUsageStorageController *)&v4 viewWillAppear:appear];
  if (([(ICQUsageStorageController *)self isMovingToParentViewController]& 1) == 0)
  {
    [(ICQUsageStorageController *)self reloadStorageSummary];
    [(ICQUsageStorageController *)self checkForPendingUpdate];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = ICQUsageStorageController;
  [(ICQUsageStorageController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STORAGE" value:&stru_28844FC60 table:@"Usage Statistics"];
  [(ICQUsageStorageController *)self setTitle:v4];

  if (CPIsInternalDevice())
  {
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:@"Radar" style:0 target:self action:sel_snapshotAndReportDiskSpace];
    navigationItem = [(ICQUsageStorageController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICQUsageStorageController;
  [(ICQUsageStorageController *)&v5 viewDidDisappear:disappear];
  if ([(ICQUsageStorageController *)self isMovingFromParentViewController])
  {
    v4 = +[ICQUsageStorageMonitor sharedMonitor];
    [v4 clearUsageDataCache];
  }
}

- (void)reloadSpecifiers
{
  v3 = +[ICQUsageStorageMonitor sharedMonitor];
  [v3 clearUsageDataCache];

  self->_storageLookupInProgress = 0;
  [(NSMutableArray *)self->_deferredUsageApps removeAllObjects];
  photosSpecifier = self->_photosSpecifier;
  self->_photosSpecifier = 0;

  storageAvailableSpecifier = self->_storageAvailableSpecifier;
  self->_storageAvailableSpecifier = 0;

  storageUsedSpecifier = self->_storageUsedSpecifier;
  self->_storageUsedSpecifier = 0;

  self->_updateRequiredBytes = 0;
  updateName = self->_updateName;
  self->_updateName = 0;

  v8.receiver = self;
  v8.super_class = ICQUsageStorageController;
  [(ICQUsageStorageController *)&v8 reloadSpecifiers];
}

- (void)checkForPendingUpdate
{
  if (self->_openedFromSoftwareUpdate && !self->_SUManager)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v3 = getSUManagerClientClass_softClass;
    v20 = getSUManagerClientClass_softClass;
    if (!getSUManagerClientClass_softClass)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __getSUManagerClientClass_block_invoke;
      v15 = &unk_27A65A9F8;
      v16 = &v17;
      __getSUManagerClientClass_block_invoke(&v12);
      v3 = v18[3];
    }

    v4 = v3;
    _Block_object_dispose(&v17, 8);
    v5 = [[v3 alloc] initWithDelegate:0 clientType:1];
    SUManager = self->_SUManager;
    self->_SUManager = v5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getSUScanOptionsClass_softClass;
  v20 = getSUScanOptionsClass_softClass;
  if (!getSUScanOptionsClass_softClass)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getSUScanOptionsClass_block_invoke;
    v15 = &unk_27A65A9F8;
    v16 = &v17;
    __getSUScanOptionsClass_block_invoke(&v12);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = objc_alloc_init(v7);
  [v9 setForced:1];
  [v9 setIdentifier:@"com.apple.Preferences.usage_settings"];
  v10 = self->_SUManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ICQUsageStorageController_checkForPendingUpdate__block_invoke;
  v11[3] = &unk_27A65AB18;
  v11[4] = self;
  [(SUManagerClient *)v10 scanForUpdates:v9 withResult:v11];
}

void __50__ICQUsageStorageController_checkForPendingUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 1504);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ICQUsageStorageController_checkForPendingUpdate__block_invoke_2;
    v8[3] = &unk_27A65AAF0;
    v6 = v3;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    [v5 download:v8];
  }
}

void __50__ICQUsageStorageController_checkForPendingUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 progress];
  v8 = [v7 isDone];

  v20 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v9 = getSUDownloadPolicyFactoryClass_softClass;
  v25 = getSUDownloadPolicyFactoryClass_softClass;
  if (!getSUDownloadPolicyFactoryClass_softClass)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __getSUDownloadPolicyFactoryClass_block_invoke;
    v21[3] = &unk_27A65A9F8;
    v21[4] = &v22;
    __getSUDownloadPolicyFactoryClass_block_invoke(v21);
    v9 = v23[3];
  }

  v10 = v9;
  _Block_object_dispose(&v22, 8);
  v11 = [v9 userDownloadPolicyForDescriptor:*(a1 + 32) existingPolicy:0];
  [v11 isDownloadableForCurrentNetworkConditions:&v20 cellularFeesApply:0];
  if (v20 == 6 && ([*(a1 + 32) humanReadableUpdateName], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = *(a1 + 32);
    if (v8)
    {
      v14 = [v13 installationSize];
    }

    else
    {
      v14 = [v13 totalRequiredFreeSpace];
    }

    *(*(a1 + 40) + 1536) = v14;
    v17 = [*(a1 + 32) humanReadableUpdateName];
    v18 = *(a1 + 40);
    v19 = *(v18 + 1512);
    *(v18 + 1512) = v17;

    [*(a1 + 40) reloadStorageSummary];
  }

  else
  {
    *(*(a1 + 40) + 1536) = 0;
    v15 = *(a1 + 40);
    v16 = *(v15 + 1512);
    *(v15 + 1512) = 0;
  }
}

- (void)refreshSoftwareUpdateRequiredSpace
{
  v3 = [(ICQUsageStorageController *)self specifierForID:@"SUMMARY_GROUP"];
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  [(ICQUsageStorageController *)self getGroup:&v20 row:0 ofSpecifier:v3];
  updateRequiredBytes = self->_updateRequiredBytes;
  v5 = +[ICQUsageStorageMonitor sharedMonitor];
  [v5 availableSize];
  v7 = updateRequiredBytes - v6;

  if (v7 <= 0.0)
  {
    [v3 removePropertyForKey:*MEMORY[0x277D3FF88]];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_8;
    }

    table = [(ICQUsageStorageController *)self table];
    table2 = [MEMORY[0x277CCAA78] indexSetWithIndex:v20];
    [table _reloadSectionHeaderFooters:table2 withRowAnimation:100];
    goto LABEL_6;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"UPDATE_STORAGE_REQUIREMENT_%@" value:&stru_28844FC60 table:@"Usage Statistics"];
  v13 = [MEMORY[0x277CCA8E8] stringFromByteCount:v7 countStyle:2];
  table = [v10 stringWithFormat:v12, v13];

  v14 = *MEMORY[0x277D3FF88];
  v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3FF88]];
  LOBYTE(v13) = [v15 isEqualToString:table];

  if ((v13 & 1) == 0)
  {
    [v3 setObject:table forKeyedSubscript:v14];
    table2 = [(ICQUsageStorageController *)self table];
    v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:v20];
    [table2 _reloadSectionHeaderFooters:v16 withRowAnimation:100];

LABEL_6:
  }

LABEL_8:
  v17 = [(PSSpecifier *)self->_storageAvailableSpecifier objectForKeyedSubscript:*MEMORY[0x277D40148]];
  detailTextLabel = [v17 detailTextLabel];
  if (v7 > 0.0)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableCellGrayTextColor];
  }
  v19 = ;
  [detailTextLabel setTextColor:v19];
}

+ (id)systemSizeUsed:(id)used
{
  v3 = MEMORY[0x277CCA8E8];
  v4 = +[ICQUsageStorageMonitor sharedMonitor];
  [v4 usedSize];
  v6 = [v3 stringFromByteCount:v5 countStyle:2];

  return v6;
}

+ (id)systemSizeAvailable:(id)available
{
  v3 = MEMORY[0x277CCA8E8];
  v4 = +[ICQUsageStorageMonitor sharedMonitor];
  [v4 availableSize];
  v6 = [v3 stringFromByteCount:v5 countStyle:2];

  return v6;
}

+ (id)storageUsedSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"USED" value:&stru_28844FC60 table:@"Usage Statistics"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel_systemSizeUsed_ detail:0 cell:4 edit:0];

  return v6;
}

+ (id)storageAvailableSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"AVAILABLE" value:&stru_28844FC60 table:@"Usage Statistics"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel_systemSizeAvailable_ detail:0 cell:4 edit:0];

  return v6;
}

- (void)reloadStorageSummary
{
  v3 = +[ICQUsageStorageMonitor sharedMonitor];
  [v3 fetchSystemSizeStrings];

  [(ICQUsageStorageController *)self reloadSpecifier:self->_storageAvailableSpecifier animated:0];
  [(ICQUsageStorageController *)self reloadSpecifier:self->_storageUsedSpecifier animated:0];

  [(ICQUsageStorageController *)self refreshSoftwareUpdateRequiredSpace];
}

- (void)addStorageSpecifiers:(id)specifiers completed:(BOOL)completed
{
  completedCopy = completed;
  specifiersCopy = specifiers;
  [(ICQUsageStorageController *)self beginUpdates];
  v6 = [(ICQUsageStorageController *)self indexOfSpecifierID:@"SPINNER_CELL"];
  v7 = v6;
  if (completedCopy)
  {
    [(ICQUsageStorageController *)self removeSpecifierID:@"SPINNER_CELL" animated:1];
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v8))
  {
    [ICQUsageStorageController addStorageSpecifiers:completed:];
  }

  v9 = [specifiersCopy count];
  v10 = [*(&self->super.super.super.super.super.isa + v8) count] + v9;
  if (v7 < v10)
  {
    v11 = 0;
    do
    {
      if (v11 >= [specifiersCopy count])
      {
        break;
      }

      if (v7 >= [*(&self->super.super.super.super.super.isa + v8) count])
      {
        unsignedIntegerValue = 0;
      }

      else
      {
        v12 = [*(&self->super.super.super.super.super.isa + v8) objectAtIndexedSubscript:v7];
        v13 = [v12 objectForKeyedSubscript:kTotalSizeProperty];
        unsignedIntegerValue = [v13 unsignedIntegerValue];
      }

      v15 = [specifiersCopy objectAtIndexedSubscript:v11];
      v16 = [v15 objectForKeyedSubscript:kTotalSizeProperty];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      if (unsignedIntegerValue2 > unsignedIntegerValue)
      {
        v18 = [specifiersCopy objectAtIndexedSubscript:v11];
        [(ICQUsageStorageController *)self insertSpecifier:v18 atIndex:v7];

        ++v11;
      }

      ++v7;
    }

    while (v10 != v7);
  }

  [(ICQUsageStorageController *)self endUpdates];
  if (completedCopy)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v20 = [mEMORY[0x277D75128] isRunningTest:@"EnterManageStoragePane"];

    if (v20)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128]2 finishedTest:@"EnterManageStoragePane"];
    }
  }
}

- (id)stringWithAppSizeForSpecifier:(id)specifier
{
  v3 = [specifier objectForKeyedSubscript:kTotalSizeProperty];
  [v3 floatValue];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"NO_DATA" value:&stru_28844FC60 table:@"Usage Statistics"];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8E8] stringFromByteCount:v5 countStyle:2];
  }

  return v6;
}

- (Class)usageDetailControllerForBundleID:(id)d
{
  v11[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = usageDetailControllerForBundleID__specialDetailControllerMap;
  if (!usageDetailControllerForBundleID__specialDetailControllerMap)
  {
    v10[0] = *MEMORY[0x277D3FDF0];
    v11[0] = objc_opt_class();
    v10[1] = *MEMORY[0x277D3FDE0];
    v11[1] = objc_opt_class();
    v10[2] = *MEMORY[0x277D3FDE8];
    v11[2] = objc_opt_class();
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    v6 = usageDetailControllerForBundleID__specialDetailControllerMap;
    usageDetailControllerForBundleID__specialDetailControllerMap = v5;

    v4 = usageDetailControllerForBundleID__specialDetailControllerMap;
  }

  v7 = [v4 objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = v7;

  return v7;
}

- (BOOL)storageExpired
{
  if (!self->_storageExpiry)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_storageExpiry];
  v5 = v4 > self->_timeoutLimit;

  return v5;
}

- (void)didUnlock
{
  if ([(ICQUsageStorageController *)self storageExpired])
  {
    v3 = +[ICQUsageStorageMonitor sharedMonitor];
    [v3 clearUsageDataCache];

    [(ICQUsageStorageController *)self reloadSpecifiers];
  }
}

- (void)prepareForSnapshot
{
  v7 = 0;
  v8 = 0;
  v3 = [(ICQUsageStorageController *)self indexOfSpecifier:self->_appsStorageGroup];
  [(ICQUsageStorageController *)self getGroup:&v8 row:&v7 ofSpecifierAtIndex:v3];
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28844FC60 target:0 set:0 get:0 detail:0 cell:15 edit:0];
  [v4 setProperty:@"SPINNER_CELL" forKey:*MEMORY[0x277D3FFB8]];
  v5 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v3, -[ICQUsageStorageController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]), v8)}];
  [(ICQUsageStorageController *)self removeContiguousSpecifiers:v5 animated:0];

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_appsStorageGroup, v4, 0}];
  [(ICQUsageStorageController *)self insertContiguousSpecifiers:v6 atIndex:v3 animated:0];
}

- (id)_specifierForApp:(id)app
{
  v27 = *MEMORY[0x277D85DE8];
  appCopy = app;
  bundleIdentifier = [appCopy bundleIdentifier];
  v6 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [appCopy name];
    [appCopy totalSize];
    *buf = 138412802;
    v22 = name;
    v23 = 2112;
    v24 = bundleIdentifier;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Usage item '%@' in bundle %@ has total size %f", buf, 0x20u);
  }

  v9 = MEMORY[0x277D3FAD8];
  name2 = [appCopy name];
  v11 = [v9 preferenceSpecifierNamed:name2 target:self set:0 get:sel_stringWithAppSizeForSpecifier_ detail:-[ICQUsageStorageController usageDetailControllerForBundleID:](self cell:"usageDetailControllerForBundleID:" edit:{bundleIdentifier), 2, 0}];

  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v11 setProperty:bundleIdentifier forKey:*MEMORY[0x277D3FFB8]];
  [v11 setProperty:bundleIdentifier forKey:*MEMORY[0x277D40008]];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v11 setProperty:v12 forKey:*MEMORY[0x277D40020]];

  bundleVersion = [appCopy bundleVersion];
  [v11 setProperty:bundleVersion forKey:@"VERSION"];

  if (([appCopy isSystemApp] & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"APP_SIZE" value:&stru_28844FC60 table:@"Usage Statistics"];
    [v11 setProperty:v15 forKey:@"SIZE_TITLE"];

    v16 = MEMORY[0x277CCABB0];
    [appCopy staticSize];
    v17 = [v16 numberWithFloat:?];
    [v11 setProperty:v17 forKey:@"SIZE_VALUE"];
  }

  [v11 setProperty:appCopy forKey:@"USAGE_APP"];
  v18 = MEMORY[0x277CCABB0];
  [appCopy totalSize];
  v19 = [v18 numberWithFloat:?];
  [v11 setProperty:v19 forKey:kTotalSizeProperty];

  return v11;
}

- (id)_specifierForBundle:(id)bundle
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  v6 = objc_opt_class();
  usageBundleStorageReporter = [bundleCopy usageBundleStorageReporter];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    usageBundleStorageReporter2 = [bundleCopy usageBundleStorageReporter];
    v10 = [usageBundleStorageReporter2 usageDetailControllerClassForUsageBundleApp:bundleCopy];

    if (v10)
    {
      v6 = v10;
    }
  }

  v11 = MEMORY[0x277D3FAD8];
  name = [bundleCopy name];
  v13 = [v11 preferenceSpecifierNamed:name target:self set:0 get:sel_stringWithAppSizeForSpecifier_ detail:v6 cell:2 edit:0];

  [v13 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v13 setProperty:bundleIdentifier forKey:*MEMORY[0x277D3FFB8]];
  [v13 setProperty:bundleIdentifier forKey:*MEMORY[0x277D40008]];
  [v13 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  [v13 setProperty:bundleCopy forKey:@"USAGE_BUNDLE_APP"];
  v14 = MEMORY[0x277CCABB0];
  [bundleCopy totalSize];
  v15 = [v14 numberWithFloat:?];
  [v13 setProperty:v15 forKey:kTotalSizeProperty];

  v16 = MEMORY[0x277D3FB90];
  v17 = [objc_msgSend(v13 "detailControllerClass")];
  [v16 setupSpecifier:v13 forMediaGroups:v17];

  usageBundleStorageReporter3 = [bundleCopy usageBundleStorageReporter];
  LOBYTE(v17) = objc_opt_respondsToSelector();

  if (v17)
  {
    usageBundleStorageReporter4 = [bundleCopy usageBundleStorageReporter];
    v22 = v13;
    [usageBundleStorageReporter4 usageBundleApp:bundleCopy willDisplaySpecifier:&v22];
    v20 = v22;

    v13 = v20;
  }

  return v13;
}

- (BOOL)mediaCache:(id)cache hasGroups:(id)groups
{
  v19 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  groupsCopy = groups;
  v7 = [groupsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v11 = [cacheCopy objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [groupsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (void)setDelayUsagePopulation:(BOOL)population
{
  if (self->_delayUsagePopulation != population)
  {
    self->_delayUsagePopulation = population;
    if (!population)
    {
      [(ICQUsageStorageController *)self reloadSpecifiers];
    }
  }
}

- (id)specifiers
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"kPreferenceTimeoutLimitKey"];
  [v4 doubleValue];
  self->_timeoutLimit = v5;

  storageExpired = [(ICQUsageStorageController *)self storageExpired];
  v7 = MEMORY[0x277D3FC48];
  if (storageExpired)
  {
    v8 = *MEMORY[0x277D3FC48];
    v9 = *(&self->super.super.super.super.super.isa + v8);
    *(&self->super.super.super.super.super.isa + v8) = 0;
  }

  v10 = +[ICQUsageStorageMonitor sharedMonitor];
  [v10 fetchSystemSizeStrings];

  v11 = *v7;
  v12 = *(&self->super.super.super.super.super.isa + v11);
  if (!v12)
  {
    if (!self->_storageLookupInProgress && !self->_delayUsagePopulation)
    {
      self->_storageLookupInProgress = 1;
      date = [MEMORY[0x277CBEAA8] date];
      storageExpiry = self->_storageExpiry;
      self->_storageExpiry = date;

      v15 = +[ICQUsageStorageMonitor sharedMonitor];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __39__ICQUsageStorageController_specifiers__block_invoke;
      v25[3] = &unk_27A65AB60;
      v25[4] = self;
      [v15 populateUsageDataWithProgressBlock:v25];

      [(ICQUsageStorageController *)self checkForPendingUpdate];
    }

    v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUMMARY_GROUP"];
    storageUsedSpecifier = [objc_opt_class() storageUsedSpecifier];
    storageUsedSpecifier = self->_storageUsedSpecifier;
    self->_storageUsedSpecifier = storageUsedSpecifier;

    storageAvailableSpecifier = [objc_opt_class() storageAvailableSpecifier];
    storageAvailableSpecifier = self->_storageAvailableSpecifier;
    self->_storageAvailableSpecifier = storageAvailableSpecifier;

    v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28844FC60 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    [v21 setProperty:@"SPINNER_CELL" forKey:*MEMORY[0x277D3FFB8]];
    v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v16, self->_storageUsedSpecifier, self->_storageAvailableSpecifier, self->_appsStorageGroup, v21, 0}];
    v23 = *(&self->super.super.super.super.super.isa + v11);
    *(&self->super.super.super.super.super.isa + v11) = v22;

    v12 = *(&self->super.super.super.super.super.isa + v11);
  }

  return v12;
}

void __39__ICQUsageStorageController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v96 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v67 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    __39__ICQUsageStorageController_specifiers__block_invoke_cold_1();
  }

  v66 = v9;
  v69 = [MEMORY[0x277CBEB18] array];
  v10 = [v8 arrayByAddingObjectsFromArray:*(*(a1 + 32) + 1496)];

  [*(*(a1 + 32) + 1496) removeAllObjects];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v84 objects:v95 count:16];
  v13 = v67;
  v68 = v11;
  if (v12)
  {
    v14 = v12;
    v15 = *v85;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v85 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v84 + 1) + 8 * i);
        v18 = [*(a1 + 32) _specifierForApp:v17];
        v19 = [objc_msgSend(v18 "detailControllerClass")];
        v20 = [*(a1 + 32) mediaCache:v13 hasGroups:v19];
        if ((v20 & 1) != 0 || a5)
        {
          if (((v20 | a5 ^ 1) & 1) == 0)
          {
            v23 = _ICQGetLogSystem();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v17 name];
              v25 = [v19 componentsJoinedByString:{@", "}];
              *buf = 138412546;
              v92 = v24;
              v93 = 2112;
              v94 = v25;
              _os_log_impl(&dword_275623000, v23, OS_LOG_TYPE_DEFAULT, "App %@ depends on media groups %@ but they were never loaded", buf, 0x16u);

              v13 = v67;
            }

            v11 = v68;
          }

          v21 = v69;
          v22 = v18;
        }

        else
        {
          v21 = *(*(a1 + 32) + 1496);
          v22 = v17;
        }

        [v21 addObject:v22];
      }

      v14 = [v11 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v14);
  }

  v26 = *(a1 + 32);
  v27 = v26[186];
  if (!v27 && (a5 & 1) == 0)
  {
    v28 = +[ICQUsagePhotosController mediaGroups];
    v29 = v13;
    v30 = v28;
    v31 = [v26 mediaCache:v29 hasGroups:v28];

    if ((v31 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v27)
  {
LABEL_20:
    v32 = MEMORY[0x277D3FAD8];
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"PHOTOS" value:&stru_28844FC60 table:@"Usage Statistics"];
    v11 = v68;
    v35 = [v32 preferenceSpecifierNamed:v34 target:*(a1 + 32) set:0 get:sel_stringWithAppSizeForSpecifier_ detail:objc_opt_class() cell:2 edit:0];
    v36 = *(a1 + 32);
    v37 = *(v36 + 1488);
    *(v36 + 1488) = v35;

    [*(*(a1 + 32) + 1488) setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v38 = *(*(a1 + 32) + 1488);
    v39 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v38 setProperty:v39 forKey:*MEMORY[0x277D40020]];

    [*(*(a1 + 32) + 1488) setProperty:@"com.apple.mobileslideshow" forKey:*MEMORY[0x277D40008]];
    [*(*(a1 + 32) + 1488) setIdentifier:@"PHOTOS"];
    v40 = *(*(a1 + 32) + 1488);
    v41 = +[ICQUsagePhotosController mediaGroups];
    [ICQUsageDetailController setupSpecifier:v40 forMediaGroups:v41];

    [v69 addObject:*(*(a1 + 32) + 1488)];
  }

LABEL_21:
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v42 = v69;
  v43 = [v42 countByEnumeratingWithState:&v80 objects:v90 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v81;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v81 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v80 + 1) + 8 * j);
        v48 = [objc_msgSend(v47 "detailControllerClass")];
        [ICQUsageDetailController setupSpecifier:v47 forMediaGroups:v48];
      }

      v44 = [v42 countByEnumeratingWithState:&v80 objects:v90 count:16];
    }

    while (v44);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v49 = v66;
  v50 = [v49 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v77;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v77 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(a1 + 32) _specifierForBundle:*(*(&v76 + 1) + 8 * k)];
        [v42 addObject:v54];
      }

      v51 = [v49 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v51);
  }

  [v42 sortUsingComparator:&__block_literal_global_1];
  if (a5)
  {
    *(*(a1 + 32) + 1472) = 0;
  }

  if ([v42 count])
  {
    [*(a1 + 32) addStorageSpecifiers:v42 completed:a5];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v55 = v42;
  v56 = [v55 countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v73;
    while (2)
    {
      for (m = 0; m != v57; ++m)
      {
        if (*v73 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v72 + 1) + 8 * m) identifier];
        v61 = [*(a1 + 32) specifierIDPendingPush];
        v62 = [v60 isEqualToString:v61];

        if (v62)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __39__ICQUsageStorageController_specifiers__block_invoke_2;
          block[3] = &unk_27A65A820;
          block[4] = *(a1 + 32);
          dispatch_async(MEMORY[0x277D85CD0], block);
          goto LABEL_49;
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v72 objects:v88 count:16];
      if (v57)
      {
        continue;
      }

      break;
    }
  }

LABEL_49:

  if (a5)
  {
    v63 = [*(a1 + 32) specifierIDPendingPush];

    if (v63)
    {
      v64 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [*(a1 + 32) specifierIDPendingPush];
        *buf = 138412290;
        v92 = v65;
        _os_log_impl(&dword_275623000, v64, OS_LOG_TYPE_DEFAULT, "Did not find a specifier for url path: %@", buf, 0xCu);
      }

      [*(a1 + 32) clearPendingURL];
    }
  }
}

uint64_t __39__ICQUsageStorageController_specifiers__block_invoke_446(uint64_t a1, void *a2, void *a3)
{
  v4 = kTotalSizeProperty;
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:kTotalSizeProperty];

  v8 = [v6 compare:v7];
  return v8;
}

- (id)controllerForSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = ICQUsageStorageController;
  v4 = [(ICQUsageStorageController *)&v6 controllerForSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setStorageController:self];
  }

  return v4;
}

- (void)removeStorageSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count] < 3)
  {
    [ICQUsageStorageController removeStorageSpecifier:];
  }

  [(ICQUsageStorageController *)self removeSpecifier:specifierCopy animated:1];
  [(ICQUsageStorageController *)self reloadStorageSummary];
}

- (void)sizeChangedForSpecifier:(id)specifier
{
  v4 = kTotalSizeProperty;
  specifierCopy = specifier;
  v6 = [specifierCopy objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = [(ICQUsageStorageController *)self indexOfSpecifier:self->_appsStorageGroup];
  v9 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  v10 = [v9 count];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ICQUsageStorageController_sizeChangedForSpecifier___block_invoke;
  v13[3] = &__block_descriptor_40_e24_i24__0__PSSpecifier_8q16l;
  v13[4] = unsignedLongLongValue;
  v11 = [v9 sortedInsertionIndexWithRange:v8 block:{v10 - v8, v13}];
  v12 = [(ICQUsageStorageController *)self indexOfSpecifier:specifierCopy];
  [(ICQUsageStorageController *)self removeSpecifierAtIndex:v12];
  [(ICQUsageStorageController *)self insertSpecifier:specifierCopy atIndex:((__PAIR128__(v11 animated:v12) - v11) >> 64), 0];

  [(ICQUsageStorageController *)self reloadStorageSummary];
}

uint64_t __53__ICQUsageStorageController_sizeChangedForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:kTotalSizeProperty];
  v4 = [v3 unsignedLongLongValue];

  v5 = *(a1 + 32);
  v6 = v4 > v5;
  v7 = v4 >= v5;
  if (v6)
  {
    return 2;
  }

  else
  {
    return v7;
  }
}

- (void)handleURL:(id)l
{
  lCopy = l;
  specifierIDPendingPush = [(ICQUsageStorageController *)self specifierIDPendingPush];

  if (specifierIDPendingPush)
  {
    specifierIDPendingPush2 = [(ICQUsageStorageController *)self specifierIDPendingPush];
    v7 = [(ICQUsageStorageController *)self specifierForID:specifierIDPendingPush2];

    v8 = [(ICQUsageStorageController *)self controllerForSpecifier:v7];
    [v8 setParentController:self];
    rootController = [(ICQUsageStorageController *)self rootController];
    [v8 setRootController:rootController];

    [v8 setSpecifier:v7];
    [(ICQUsageStorageController *)self showController:v8];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ICQUsageStorageController;
    [(ICQUsageStorageController *)&v10 handleURL:lCopy];
  }
}

void __69__ICQUsageStorageController_BugReporting__snapshotAndReportDiskSpace__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Failed to snapshot filesystem metadata with error: %@", &v2, 0xCu);
}

@end