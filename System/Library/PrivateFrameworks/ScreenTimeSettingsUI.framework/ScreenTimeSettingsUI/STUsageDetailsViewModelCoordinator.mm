@interface STUsageDetailsViewModelCoordinator
+ (NSNumber)defaultUsageReportTypeForLocalUser;
+ (NSString)defaultDeviceIdentifierForLocalUser;
+ (id)defaultDeviceIdentifierForChild:(id)a3;
+ (id)defaultUsageReportTypeForChild:(id)a3;
+ (void)setDefaultDeviceIdentifier:(id)a3 childDSID:(id)a4;
+ (void)setDefaultDeviceIdentifierForLocalUser:(id)a3;
+ (void)setDefaultUsageReportType:(id)a3 childDSID:(id)a4;
+ (void)setDefaultUsageReportTypeForLocalUser:(id)a3;
- (STUsageDetailsViewModelCoordinator)initWithPersistenceController:(id)a3 organizationIdentifier:(id)a4 userDSID:(id)a5 devices:(id)a6 selectedDeviceIdentifier:(id)a7 selectedUsageReportType:(id)a8 usageContext:(int64_t)a9;
- (STUsageDetailsViewModelCoordinator)initWithPersistenceController:(id)a3 organizationIdentifier:(id)a4 userDSID:(id)a5 devices:(id)a6 selectedDeviceIdentifier:(id)a7 selectedUsageReportType:(id)a8 usageContext:(int64_t)a9 managedObjectContext:(id)a10;
- (id)_usageBlocksWithUser:(id)a3 device:(id)a4 error:(id *)a5;
- (id)_usageItemsWithUsageBlocks:(id)a3 lastUpdatedDate:(id *)a4 firstPickupByWeekdayByWeek:(id)a5 referenceDate:(id)a6 usageContext:(int64_t)a7;
- (id)initForLocalDeviceWithPersistenceController:(id)a3 selectedUsageReportType:(id)a4 usageContext:(int64_t)a5 managedObjectContext:(id)a6;
- (void)_didFinishRefreshingWithError:(id)a3 completionHandler:(id)a4;
- (void)_downloadRemoteDeviceActivityDataAndRefreshLegacyUsageDataWithCompletionHandler:(id)a3;
- (void)_loadAllHistoricalDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 selectedDay:(unint64_t)a6 selectedWeek:(unint64_t)a7 hadUsageData:(BOOL)a8 referenceDate:(id)a9 completionHandler:(id)a10;
- (void)_loadAllHistoricalUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 selectedDay:(unint64_t)a5 selectedWeek:(unint64_t)a6 hadUsageData:(BOOL)a7 referenceDate:(id)a8 completionHandler:(id)a9;
- (void)_loadLastWeekDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 referenceDate:(id)a6 completionHandler:(id)a7;
- (void)_loadLastWeekUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 referenceDate:(id)a5 completionHandler:(id)a6;
- (void)_loadTodayDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 referenceDate:(id)a6 completionHandler:(id)a7;
- (void)_loadTodayUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 referenceDate:(id)a5 completionHandler:(id)a6;
- (void)_refreshLegacyUsageDataWithCompletionHandler:(id)a3;
- (void)_refreshUsageDataAndReschedule;
- (void)_refreshUsageDataWithCompletion:(id)a3;
- (void)_unbouncedLoadViewModelWithCompletionHandler:(id)a3;
- (void)_updateWeekAndDayReportsWithUsageItems:(id)a3 weekStartDate:(id)a4 lastUpdatedDate:(id)a5 referenceDate:(id)a6 selectedItemDisplayName:(id)a7 isSelectedWeek:(BOOL)a8 selectedDay:(unint64_t)a9 weekUsageReports:(id)a10 dayUsageReports:(id)a11 dayUsageReportByWeekdays:(id)a12 firstPickupByWeekdayByWeek:(id)a13;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)dealloc;
- (void)debouncer:(id)a3 didDebounce:(id)a4;
- (void)loadViewModelWithCompletionHandler:(id)a3;
- (void)scheduleRefreshUsageData;
- (void)setSelectedDeviceIdentifier:(id)a3;
- (void)stopRefreshingUsageData;
@end

@implementation STUsageDetailsViewModelCoordinator

- (STUsageDetailsViewModelCoordinator)initWithPersistenceController:(id)a3 organizationIdentifier:(id)a4 userDSID:(id)a5 devices:(id)a6 selectedDeviceIdentifier:(id)a7 selectedUsageReportType:(id)a8 usageContext:(int64_t)a9
{
  v57[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v56.receiver = self;
  v56.super_class = STUsageDetailsViewModelCoordinator;
  v22 = [(STUsageDetailsViewModelCoordinator *)&v56 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_persistenceController, a3);
    v24 = [v17 copy];
    organizationIdentifier = v23->_organizationIdentifier;
    v23->_organizationIdentifier = v24;

    v26 = [v18 copy];
    userDSID = v23->_userDSID;
    v23->_userDSID = v26;

    v28 = [v19 copy];
    devices = v23->_devices;
    v23->_devices = v28;

    v30 = objc_opt_new();
    viewModel = v23->_viewModel;
    v23->_viewModel = v30;

    v32 = [v20 copy];
    selectedDeviceIdentifier = v23->_selectedDeviceIdentifier;
    v23->_selectedDeviceIdentifier = v32;

    v23->_usageContext = a9;
    v50 = v16;
    if (a9 == 2)
    {
      [(STUsageDetailsViewModel *)v23->_viewModel setSelectedWeek:1];
    }

    else if (a9 == 1 || !a9 && [v21 integerValue] == 1)
    {
      [(STUsageDetailsViewModel *)v23->_viewModel selectToday];
    }

    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    loadViewModelCompletions = v23->_loadViewModelCompletions;
    v23->_loadViewModelCompletions = v34;

    v36 = [objc_alloc(MEMORY[0x277D4B990]) initWithMinCoalescenceInterval:0.1 maxCoalescenceInterval:0.1];
    viewModelRefreshDebouncer = v23->_viewModelRefreshDebouncer;
    v23->_viewModelRefreshDebouncer = v36;

    [(STDebouncer *)v23->_viewModelRefreshDebouncer setDelegate:v23];
    v38 = [MEMORY[0x277D4BAC8] fetchRequest];
    v39 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"requestedDate" ascending:1];
    v57[0] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [v38 setSortDescriptors:v40];

    v41 = objc_alloc(MEMORY[0x277CBE430]);
    v42 = [(STPersistenceControllerProtocol *)v23->_persistenceController viewContext];
    v43 = [v41 initWithFetchRequest:v38 managedObjectContext:v42 sectionNameKeyPath:0 cacheName:0];
    usageFetchedResultsController = v23->_usageFetchedResultsController;
    v23->_usageFetchedResultsController = v43;

    [(NSFetchedResultsController *)v23->_usageFetchedResultsController setDelegate:v23];
    v45 = v23->_usageFetchedResultsController;
    v55 = 0;
    LOBYTE(v42) = [(NSFetchedResultsController *)v45 performFetch:&v55];
    v46 = v55;
    if ((v42 & 1) == 0)
    {
      v47 = +[STUILog usage];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [STUsageDetailsViewModelCoordinator initWithPersistenceController:organizationIdentifier:userDSID:devices:selectedDeviceIdentifier:selectedUsageReportType:usageContext:];
      }
    }

    v48 = +[STUILog usage];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v48, OS_LOG_TYPE_DEFAULT, "Initial Usage Fetch Started", buf, 2u);
    }

    [(STUsageDetailsViewModelCoordinator *)v23 setRefreshing:1];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __170__STUsageDetailsViewModelCoordinator_initWithPersistenceController_organizationIdentifier_userDSID_devices_selectedDeviceIdentifier_selectedUsageReportType_usageContext___block_invoke;
    v52[3] = &unk_279B7CC18;
    v53 = v23;
    [(STUsageDetailsViewModelCoordinator *)v53 loadViewModelWithCompletionHandler:v52];

    v16 = v51;
  }

  return v23;
}

uint64_t __170__STUsageDetailsViewModelCoordinator_initWithPersistenceController_organizationIdentifier_userDSID_devices_selectedDeviceIdentifier_selectedUsageReportType_usageContext___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Initial Usage Fetch Completed", v5, 2u);
  }

  v3 = objc_opt_new();
  [*(a1 + 32) setInitialUsageFetchDate:v3];

  return [*(a1 + 32) setRefreshing:0];
}

- (STUsageDetailsViewModelCoordinator)initWithPersistenceController:(id)a3 organizationIdentifier:(id)a4 userDSID:(id)a5 devices:(id)a6 selectedDeviceIdentifier:(id)a7 selectedUsageReportType:(id)a8 usageContext:(int64_t)a9 managedObjectContext:(id)a10
{
  objc_storeStrong(&self->_moc, a10);
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(STUsageDetailsViewModelCoordinator *)self initWithPersistenceController:v22 organizationIdentifier:v21 userDSID:v20 devices:v19 selectedDeviceIdentifier:v18 selectedUsageReportType:v17 usageContext:a9];

  return v23;
}

- (id)initForLocalDeviceWithPersistenceController:(id)a3 selectedUsageReportType:(id)a4 usageContext:(int64_t)a5 managedObjectContext:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [_TtC20ScreenTimeSettingsUI13DeviceDetails detailsForUserWithAltDSID:0 error:&v35];
  v14 = v35;
  if (!v13)
  {
    v16 = +[STUILog usage];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailsViewModelCoordinator initForLocalDeviceWithPersistenceController:selectedUsageReportType:usageContext:managedObjectContext:];
    }

    goto LABEL_7;
  }

  v15 = [v13 indexOfObjectPassingTest:&__block_literal_global_24];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x277D4BA00] userNotifications];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailsViewModelCoordinator initForLocalDeviceWithPersistenceController:selectedUsageReportType:usageContext:managedObjectContext:];
    }

LABEL_7:
    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v30 = v11;
  v31 = v14;
  v32 = self;
  v33 = v10;
  v34 = a5;
  v16 = [v13 objectAtIndexedSubscript:v15];
  v17 = [v16 identifier];
  v19 = [v16 coreDuetIdentifier];
  v20 = +[STUILog usage];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 name];
    *buf = 138543874;
    v37 = v19;
    v38 = 2114;
    v39 = v17;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&dword_264BA2000, v20, OS_LOG_TYPE_DEFAULT, "initForLocalDeviceWithPersistenceController Local Device Found:  %{public}@ %{public}@ %{public}@", buf, 0x20u);
  }

  v22 = [STUIDevice alloc];
  v23 = [v16 name];
  v24 = [v16 platform];
  v25 = [v16 isLocalDevice];
  v26 = [v16 lastUpdatedDate];
  v27 = [(STUIDevice *)v22 initWithName:v23 identifier:v17 coreDuetIdentifier:v19 platform:v24 hasDeviceActivity:1 isLocalDevice:v25 lastFamilyCheckinDate:v26];

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  [v18 addObject:v27];

  v10 = v33;
  a5 = v34;
  v14 = v31;
  self = v32;
  v11 = v30;
LABEL_11:

  v28 = [(STUsageDetailsViewModelCoordinator *)self initWithPersistenceController:v12 organizationIdentifier:*MEMORY[0x277D4BC50] userDSID:&unk_28769D628 devices:v18 selectedDeviceIdentifier:v17 selectedUsageReportType:v11 usageContext:a5 managedObjectContext:v10];
  return v28;
}

- (void)dealloc
{
  v3 = [(STUsageDetailsViewModelCoordinator *)self usageDataRefreshTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = STUsageDetailsViewModelCoordinator;
  [(STUsageDetailsViewModelCoordinator *)&v4 dealloc];
}

- (void)setSelectedDeviceIdentifier:(id)a3
{
  v5 = a3;
  selectedDeviceIdentifier = self->_selectedDeviceIdentifier;
  if (selectedDeviceIdentifier != v5)
  {
    v7 = v5;
    if (!v5 || (selectedDeviceIdentifier = [selectedDeviceIdentifier isEqualToString:v5], v5 = v7, (selectedDeviceIdentifier & 1) == 0))
    {
      objc_storeStrong(&self->_selectedDeviceIdentifier, a3);
      [(STUsageDetailsViewModelCoordinator *)self _updateUsageFetchedResultsController];
      selectedDeviceIdentifier = [(STUsageDetailsViewModelCoordinator *)self loadViewModelWithCompletionHandler:0];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](selectedDeviceIdentifier, v5);
}

- (void)stopRefreshingUsageData
{
  v3 = [(STUsageDetailsViewModelCoordinator *)self usageDataRefreshTimer];
  [v3 invalidate];

  [(STUsageDetailsViewModelCoordinator *)self setUsageDataRefreshTimer:0];
}

- (void)scheduleRefreshUsageData
{
  v3 = [(STUsageDetailsViewModelCoordinator *)self lastUsageDataRefreshTime];
  v8 = [v3 dateByAddingTimeInterval:60.0];

  [v8 timeIntervalSinceNow];
  if (v4 <= 0.0)
  {
    [(STUsageDetailsViewModelCoordinator *)self _refreshUsageDataAndReschedule];
  }

  else
  {
    v5 = v4;
    v6 = [(STUsageDetailsViewModelCoordinator *)self usageDataRefreshTimer];
    [v6 invalidate];

    [(STUsageDetailsViewModelCoordinator *)self setUsageDataRefreshTimer:0];
    v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__refreshUsageDataAndReschedule selector:0 userInfo:0 repeats:v5];
    [(STUsageDetailsViewModelCoordinator *)self setUsageDataRefreshTimer:v7];
  }
}

- (void)_refreshUsageDataAndReschedule
{
  v3 = [(STUsageDetailsViewModelCoordinator *)self usageDataRefreshTimer];
  [v3 invalidate];

  [(STUsageDetailsViewModelCoordinator *)self setUsageDataRefreshTimer:0];
  v4 = +[STUILog usage];
  v5 = os_signpost_id_generate(v4);

  v6 = +[STUILog usage];
  v7 = v6;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_264BA2000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Usage refresh", "", &buf, 2u);
  }

  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__STUsageDetailsViewModelCoordinator__refreshUsageDataAndReschedule__block_invoke;
  v13[3] = &unk_279B7C998;
  v13[4] = self;
  [v8 addOperationWithBlock:v13];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"WillRefreshUsageNotification" object:0];

  objc_initWeak(&buf, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__STUsageDetailsViewModelCoordinator__refreshUsageDataAndReschedule__block_invoke_2;
  v10[3] = &unk_279B7E5F0;
  objc_copyWeak(v11, &buf);
  v11[1] = v5;
  [(STUsageDetailsViewModelCoordinator *)self _refreshUsageDataWithCompletion:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&buf);
}

void __68__STUsageDetailsViewModelCoordinator__refreshUsageDataAndReschedule__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = +[STUILog usage];
    v4 = v3;
    v5 = *(a1 + 40);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_264BA2000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Usage refresh", "", v7, 2u);
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained setLastUsageDataRefreshTime:v6];

    [WeakRetained scheduleRefreshUsageData];
  }
}

- (void)_refreshUsageDataWithCompletion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(STUsageDetailsViewModelCoordinator *)self organizationIdentifier];
    v6 = [v5 isEqualToString:*MEMORY[0x277D4BC50]];

    if (v6)
    {
      v7 = +[STUILog usage];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Refreshing local device activity data.", buf, 2u);
      }

      v8 = MEMORY[0x277D4B998];
      v9 = [(STUsageDetailsViewModelCoordinator *)self lastUsageDataRefreshTime];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__STUsageDetailsViewModelCoordinator__refreshUsageDataWithCompletion___block_invoke;
      v10[3] = &unk_279B7D690;
      v10[4] = self;
      v11 = v4;
      [v8 refreshAndUploadLocalDataSinceDate:v9 completionHandler:v10];
    }

    else
    {
      [(STUsageDetailsViewModelCoordinator *)self _downloadRemoteDeviceActivityDataAndRefreshLegacyUsageDataWithCompletionHandler:v4];
    }
  }

  else
  {
    [(STUsageDetailsViewModelCoordinator *)self _refreshLegacyUsageDataWithCompletionHandler:v4];
  }
}

void __70__STUsageDetailsViewModelCoordinator__refreshUsageDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STUILog usage];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__STUsageDetailsViewModelCoordinator__refreshUsageDataWithCompletion___block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _downloadRemoteDeviceActivityDataAndRefreshLegacyUsageDataWithCompletionHandler:*(a1 + 40)];
}

- (void)_downloadRemoteDeviceActivityDataAndRefreshLegacyUsageDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STUILog usage];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Downloading remote device activity data.", v6, 2u);
  }

  [MEMORY[0x277D4B998] downloadRemoteData];
  [(STUsageDetailsViewModelCoordinator *)self _refreshLegacyUsageDataWithCompletionHandler:v4];
}

- (void)_refreshLegacyUsageDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STUsageDetailsViewModelCoordinator *)self currentUsageRequestObjectID];

  if (v5)
  {
    v6 = +[STUILog usage];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264BA2000, v6, OS_LOG_TYPE_DEFAULT, "Skipping legacy usage data refresh because a refresh is already in-progress.", buf, 2u);
    }
  }

  else
  {
    v7 = [(STUsageDetailsViewModelCoordinator *)self userDSID];
    v8 = [(STUsageDetailsViewModelCoordinator *)self persistenceController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__STUsageDetailsViewModelCoordinator__refreshLegacyUsageDataWithCompletionHandler___block_invoke;
    v9[3] = &unk_279B7D550;
    v10 = v7;
    v11 = self;
    v12 = v4;
    v6 = v7;
    [v8 performBackgroundTask:v9];
  }
}

void __83__STUsageDetailsViewModelCoordinator__refreshLegacyUsageDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = *(a1 + 32);
    v26 = 0;
    v5 = [MEMORY[0x277D4B988] fetchUserWithDSID:v4 inContext:v3 error:&v26];
    v6 = v26;
    if (!v5)
    {
      v7 = +[STUILog usage];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __83__STUsageDetailsViewModelCoordinator__refreshLegacyUsageDataWithCompletionHandler___block_invoke_cold_3();
      }

      goto LABEL_9;
    }

    if ([v5 allDevicesAreNewUsage])
    {
      v7 = +[STUILog usage];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 appleID];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_264BA2000, v7, OS_LOG_TYPE_DEFAULT, "Not refreshing legacy usage data because all of %{public}@'s devices are new_usage.", &buf, 0xCu);
      }

LABEL_9:

      v9 = *(a1 + 48);
      v10 = v6;
      if (v9)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v9[2](v9, v10);
        }

        else
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v28 = __STUICallCompletionHandlerOnMainThread_block_invoke_4;
          v29 = &unk_279B7D130;
          v31 = v9;
          v30 = v10;
          dispatch_async(MEMORY[0x277D85CD0], &buf);
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = +[STUILog usage];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_264BA2000, v11, OS_LOG_TYPE_DEFAULT, "Refreshing legacy usage data.", &buf, 2u);
  }

  v12 = *(a1 + 32);
  v25 = v6;
  v5 = [MEMORY[0x277D4BAC8] fetchOrCreateUsageRequestForUserWithDSID:v12 inContext:v3 error:&v25];
  v13 = v25;

  if (v5)
  {
    v14 = [v5 objectID];
    [*(a1 + 40) setCurrentUsageRequestObjectID:v14];

    [v5 setAcknowledgedDate:0];
    v15 = objc_opt_new();
    [v5 setRequestedDate:v15];

    [v5 setIsBackgroundTask:0];
    v16 = [*(a1 + 40) persistenceController];
    v24 = v13;
    v17 = [v16 saveContext:v3 error:&v24];
    v18 = v24;

    v19 = +[STUILog usage];
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_264BA2000, v20, OS_LOG_TYPE_DEFAULT, "Successfully saved legacy usage request.", &buf, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __83__STUsageDetailsViewModelCoordinator__refreshLegacyUsageDataWithCompletionHandler___block_invoke_cold_1();
    }

    v22 = *(a1 + 48);
    v23 = v18;
  }

  else
  {
    v21 = +[STUILog usage];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __83__STUsageDetailsViewModelCoordinator__refreshLegacyUsageDataWithCompletionHandler___block_invoke_cold_2();
    }

    v22 = *(a1 + 48);
    v23 = v13;
  }

  v10 = v23;
  if (v22)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v22[2](v22, v10);
    }

    else
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v28 = __STUICallCompletionHandlerOnMainThread_block_invoke_4;
      v29 = &unk_279B7D130;
      v31 = v22;
      v30 = v10;
      dispatch_async(MEMORY[0x277D85CD0], &buf);
    }
  }

LABEL_32:
}

- (void)_didFinishRefreshingWithError:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__STUsageDetailsViewModelCoordinator__didFinishRefreshingWithError_completionHandler___block_invoke;
  v11[3] = &unk_279B7E618;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 addOperationWithBlock:v11];
}

uint64_t __86__STUsageDetailsViewModelCoordinator__didFinishRefreshingWithError_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRefreshing:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (NSString)defaultDeviceIdentifierForLocalUser
{
  v2 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v3 = [v2 deviceIdentifierForLocalUser];

  return v3;
}

+ (void)setDefaultDeviceIdentifierForLocalUser:(id)a3
{
  v3 = a3;
  v4 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  [v4 setDeviceIdentifierForLocalUser:v3];
}

+ (NSNumber)defaultUsageReportTypeForLocalUser
{
  v2 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v3 = [v2 usageReportTypeForLocalUser];

  return v3;
}

+ (void)setDefaultUsageReportTypeForLocalUser:(id)a3
{
  v3 = a3;
  v4 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  [v4 setUsageReportTypeForLocalUser:v3];
}

+ (id)defaultDeviceIdentifierForChild:(id)a3
{
  v3 = a3;
  v4 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v5 = [v4 deviceIdentifierForChildUserDSID:v3];

  return v5;
}

+ (void)setDefaultDeviceIdentifier:(id)a3 childDSID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  [v7 setDeviceIdentifierTo:v6 forChildUserDSID:v5];
}

+ (id)defaultUsageReportTypeForChild:(id)a3
{
  v3 = a3;
  v4 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  v5 = [v4 usageReportTypeForChildUserDSID:v3];

  return v5;
}

+ (void)setDefaultUsageReportType:(id)a3 childDSID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_TtC20ScreenTimeSettingsUI23STUsageDetailsSelection shared];
  [v7 setUsageReportTypeTo:v6 forChildUserDSID:v5];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v8 = a4;
  v9 = [(STUsageDetailsViewModelCoordinator *)self currentUsageRequestObjectID];
  v10 = [v8 objectID];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [v8 acknowledgedDate];

    if (v12)
    {
      v13 = +[STUILog usage];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, "Usage Request Complete", buf, 2u);
      }

      [(STUsageDetailsViewModelCoordinator *)self setRefreshing:1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __104__STUsageDetailsViewModelCoordinator_controller_didChangeObject_atIndexPath_forChangeType_newIndexPath___block_invoke;
      v14[3] = &unk_279B7CC18;
      v14[4] = self;
      [(STUsageDetailsViewModelCoordinator *)self loadViewModelWithCompletionHandler:v14];
    }
  }
}

uint64_t __104__STUsageDetailsViewModelCoordinator_controller_didChangeObject_atIndexPath_forChangeType_newIndexPath___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Finished refreshing legacy usage data", v4, 2u);
  }

  [*(a1 + 32) setRefreshing:0];
  return [*(a1 + 32) setCurrentUsageRequestObjectID:0];
}

- (void)debouncer:(id)a3 didDebounce:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(STUsageDetailsViewModelCoordinator *)self viewModelRefreshDebouncer];

  if (v8 == v6)
  {
    v9 = +[STUILog usage];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [STUsageDetailsViewModelCoordinator debouncer:didDebounce:];
    }

    v10 = self->_loadViewModelCompletions;
    objc_sync_enter(v10);
    v11 = [(NSMutableArray *)self->_loadViewModelCompletions copy];
    [(NSMutableArray *)self->_loadViewModelCompletions removeAllObjects];
    objc_sync_exit(v10);

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__STUsageDetailsViewModelCoordinator_debouncer_didDebounce___block_invoke;
    v13[3] = &unk_279B7CC18;
    v14 = v11;
    v12 = v11;
    [(STUsageDetailsViewModelCoordinator *)self _unbouncedLoadViewModelWithCompletionHandler:v13];
  }
}

void __60__STUsageDetailsViewModelCoordinator_debouncer_didDebounce___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_usageBlocksWithUser:(id)a3 device:(id)a4 error:(id *)a5
{
  v23[3] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAC30];
  v8 = a4;
  v9 = [v7 predicateWithFormat:@"%K == %@", @"usage.user", a3];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"usage.device", v8];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lld", @"durationInMinutes", 60];
  v12 = [MEMORY[0x277D4BAC0] fetchRequest];
  v13 = MEMORY[0x277CCA920];
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];
  [v12 setPredicate:v15];

  v22[0] = @"countedItems";
  v22[1] = @"categories";
  v22[2] = @"categories.timedItems";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v12 setRelationshipKeyPathsForPrefetching:v16];

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v12 setSortDescriptors:v18];

  [v12 setReturnsObjectsAsFaults:0];
  v19 = [v12 execute:a5];

  return v19;
}

- (id)_usageItemsWithUsageBlocks:(id)a3 lastUpdatedDate:(id *)a4 firstPickupByWeekdayByWeek:(id)a5 referenceDate:(id)a6 usageContext:(int64_t)a7
{
  v143 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v88 = a5;
  v10 = a6;
  v11 = objc_opt_new();
  v90 = +[_TtC20ScreenTimeSettingsUI12UsageDetails screenTimeUsageItemIdentifier];
  v116 = +[_TtC20ScreenTimeSettingsUI12UsageDetails appUsageItemIdentifier];
  v114 = +[_TtC20ScreenTimeSettingsUI12UsageDetails webUsageItemIdentifier];
  v99 = +[_TtC20ScreenTimeSettingsUI12UsageDetails categoryUsageItemIdentifier];
  v101 = +[_TtC20ScreenTimeSettingsUI12UsageDetails notificationUsageItemIdentifier];
  v102 = +[_TtC20ScreenTimeSettingsUI12UsageDetails pickupUsageItemIdentifier];
  v12 = [MEMORY[0x277CF9650] systemHiddenBundleIdentifiersForDeviceFamily:102];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_new();
  }

  v120 = v14;

  v87 = [MEMORY[0x277CBEA80] currentCalendar];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v15 = v9;
  v91 = [v15 countByEnumeratingWithState:&v133 objects:v142 count:16];
  if (v91)
  {
    v89 = *v134;
    v100 = *MEMORY[0x277D4BC28];
    v97 = *MEMORY[0x277D4BC20];
    v98 = *MEMORY[0x277D4BC38];
    v96 = *MEMORY[0x277D4BC30];
    v94 = *MEMORY[0x277D4BC58];
    v95 = *MEMORY[0x277D4BC98];
    v107 = *MEMORY[0x277CF9620];
    v16 = 0x277CCA000uLL;
    v103 = *MEMORY[0x277CF9610];
    v113 = *MEMORY[0x277CF9618];
    v115 = v11;
    v105 = v15;
    v106 = v10;
    do
    {
      v17 = 0;
      do
      {
        if (*v134 != v89)
        {
          v18 = v17;
          objc_enumerationMutation(v15);
          v17 = v18;
        }

        v92 = v17;
        v19 = *(*(&v133 + 1) + 8 * v17);
        v117 = [v19 startDate];
        if (a7 != 1)
        {
          v20 = [v19 firstPickupDate];
          if (v20)
          {
            v110 = v19;
            v21 = [v87 components:8704 fromDate:v20];
            v22 = [*(v16 + 2992) numberWithInteger:{objc_msgSend(v21, "weekOfYear")}];
            v23 = [v88 objectForKeyedSubscript:v22];
            if (!v23)
            {
              v23 = objc_opt_new();
              [v88 setObject:v23 forKeyedSubscript:v22];
            }

            v24 = [*(v16 + 2992) numberWithInteger:{objc_msgSend(v21, "weekday")}];
            v25 = [v23 objectForKeyedSubscript:v24];

            if (!v25)
            {
              [v23 setObject:v20 forKeyedSubscript:v24];
            }

            v19 = v110;
          }
        }

        v26 = objc_opt_new();
        [v26 setItemType:1];
        [v26 setIdentifier:v90];
        [v26 setTimePeriod:0];
        [v26 setStartDate:v117];
        v27 = [*(v16 + 2992) numberWithLongLong:{objc_msgSend(v19, "screenTimeInSeconds")}];
        [v26 setTotalUsage:v27];

        [v11 addObject:v26];
        if (a7 != 1)
        {
          v28 = objc_opt_new();
          [v28 setItemType:6];
          [v28 setIdentifier:v102];
          [v28 setTimePeriod:0];
          [v28 setStartDate:v117];
          v29 = [*(v16 + 2992) numberWithLongLong:{objc_msgSend(v19, "numberOfPickupsWithoutApplicationUsage")}];
          [v28 setTotalUsage:v29];

          [v11 addObject:v28];
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v111 = v19;
          v30 = [v19 countedItems];
          v31 = [v30 countByEnumeratingWithState:&v129 objects:v141 count:16];
          if (!v31)
          {
            goto LABEL_46;
          }

          v32 = v31;
          v33 = *v130;
          while (1)
          {
            v34 = 0;
            v118 = v32;
            do
            {
              if (*v130 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v129 + 1) + 8 * v34);
              v36 = [v35 bundleIdentifier];
              if (v36)
              {
                if ([v120 containsObject:v36] & 1) != 0 || (objc_msgSend(v36, "hasPrefix:", v100))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = [v36 hasPrefix:v97] ^ 1;
                }

                if ([v35 numberOfNotifications] < 1)
                {
                  if ([v35 numberOfPickups] <= 0)
                  {
                    goto LABEL_44;
                  }

                  if (v37)
                  {
                    goto LABEL_42;
                  }
                }

                else
                {
                  v38 = objc_opt_new();
                  [v38 setItemType:5];
                  if (v37)
                  {
                    if ([v36 hasPrefix:v98])
                    {
                      v39 = v95;
                      goto LABEL_39;
                    }

                    if ([v36 hasPrefix:v96])
                    {
                      v39 = v94;
LABEL_39:
                      v43 = [v101 stringByAppendingFormat:@"-%@", v39];
                      [v38 setIdentifier:v43];

                      v44 = objc_alloc(MEMORY[0x277D4BAD0]);
                      v45 = [v35 usageTrusted];
                      v46 = v44;
                      v47 = v39;
                      v32 = v118;
                    }

                    else
                    {
                      v48 = [v101 stringByAppendingFormat:@"-%@", v36];
                      [v38 setIdentifier:v48];

                      v49 = objc_alloc(MEMORY[0x277D4BAD0]);
                      v45 = [v35 usageTrusted];
                      v46 = v49;
                      v47 = v36;
                    }

                    v50 = [v46 initWithIdentifier:v47 usageTrusted:v45];
                    [v38 setTrustIdentifier:v50];

                    [v38 setTimePeriod:0];
                    [v38 setStartDate:v117];
                    v51 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "numberOfNotifications")}];
                    [v38 setTotalUsage:v51];

                    [v115 addObject:v38];
                    if ([v35 numberOfPickups] <= 0)
                    {
                      goto LABEL_44;
                    }

LABEL_42:
                    v41 = [v102 stringByAppendingFormat:@"-%@", v36];
                    v52 = objc_opt_new();
                    [v52 setItemType:6];
                    [v52 setIdentifier:v41];
                    v53 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v36 usageTrusted:{objc_msgSend(v35, "usageTrusted")}];
                    [v52 setTrustIdentifier:v53];

                    [v52 setTimePeriod:0];
                    [v52 setStartDate:v117];
                    v54 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "numberOfPickups")}];
                    [v52 setTotalUsage:v54];

                    v32 = v118;
                    [v115 addObject:v52];

LABEL_43:
                    goto LABEL_44;
                  }

                  [v38 setIdentifier:v101];
                  [v38 setTimePeriod:0];
                  [v38 setStartDate:v117];
                  v40 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "numberOfNotifications")}];
                  [v38 setTotalUsage:v40];

                  [v115 addObject:v38];
                  if ([v35 numberOfPickups] <= 0)
                  {
                    goto LABEL_44;
                  }
                }

                v41 = objc_opt_new();
                [v41 setItemType:6];
                [v41 setIdentifier:v102];
                [v41 setTimePeriod:0];
                [v41 setStartDate:v117];
                v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v35, "numberOfPickups")}];
                [v41 setTotalUsage:v42];

                [v115 addObject:v41];
                goto LABEL_43;
              }

LABEL_44:

              ++v34;
            }

            while (v32 != v34);
            v32 = [v30 countByEnumeratingWithState:&v129 objects:v141 count:16];
            if (!v32)
            {
LABEL_46:

              v11 = v115;
              v16 = 0x277CCA000uLL;
              v19 = v111;
              break;
            }
          }
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        obj = [v19 categories];
        v109 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
        if (!v109)
        {
          goto LABEL_77;
        }

        v108 = *v126;
        do
        {
          for (i = 0; i != v109; ++i)
          {
            if (*v126 != v108)
            {
              objc_enumerationMutation(obj);
            }

            v56 = *(*(&v125 + 1) + 8 * i);
            v57 = [v56 identifier];
            if (([v57 isEqualToString:v107] & 1) != 0 || objc_msgSend(v57, "isEqualToString:", v103))
            {

LABEL_55:
              if ([v57 isEqualToString:v113])
              {
                goto LABEL_75;
              }

              v112 = i;
              v119 = 0;
              goto LABEL_59;
            }

            v58 = [v57 isEqualToString:v113];

            if (v58)
            {
              goto LABEL_55;
            }

            v112 = i;
            [v99 stringByAppendingFormat:@"-%@", v57];
            v57 = v59 = v57;
            v60 = objc_opt_new();
            [v60 setItemType:3];
            [v60 setIdentifier:v57];
            v61 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v59 usageTrusted:1];
            [v60 setTrustIdentifier:v61];

            v119 = v59;
            [v60 setCategoryIdentifier:v59];
            [v60 setTimePeriod:0];
            [v60 setStartDate:v117];
            v62 = [*(v16 + 2992) numberWithLongLong:{objc_msgSend(v56, "totalTimeInSeconds")}];
            [v60 setTotalUsage:v62];

            [v11 addObject:v60];
LABEL_59:

            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v63 = [v56 timedItems];
            v64 = [v63 countByEnumeratingWithState:&v121 objects:v139 count:16];
            if (!v64)
            {
              goto LABEL_74;
            }

            v65 = v64;
            v66 = *v122;
            do
            {
              for (j = 0; j != v65; ++j)
              {
                if (*v122 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v121 + 1) + 8 * j);
                v69 = [v68 bundleIdentifier];
                if (!v69)
                {
                  v71 = [v68 domain];
                  v70 = v71;
                  if (!v71)
                  {
                    goto LABEL_72;
                  }

                  v72 = [v114 stringByAppendingFormat:@"-%@", v71];
                  v73 = objc_opt_new();
                  [v73 setItemType:4];
                  [v73 setIdentifier:v72];
                  v74 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v70 usageTrusted:{objc_msgSend(v68, "usageTrusted")}];
                  [v73 setTrustIdentifier:v74];

                  [v73 setCategoryIdentifier:v119];
                  [v73 setTimePeriod:0];
                  [v73 setStartDate:v117];
                  v75 = MEMORY[0x277CCABB0];
                  v76 = [v68 totalTimeInSeconds];
                  v77 = v75;
                  v11 = v115;
                  v78 = [v77 numberWithLongLong:v76];
                  [v73 setTotalUsage:v78];

                  [v115 addObject:v73];
                  goto LABEL_71;
                }

                if (![v120 containsObject:v69])
                {
                  v70 = [v116 stringByAppendingFormat:@"-%@", v69];
                  v72 = objc_opt_new();
                  [v72 setItemType:2];
                  [v72 setIdentifier:v70];
                  v79 = [objc_alloc(MEMORY[0x277D4BAD0]) initWithIdentifier:v69 usageTrusted:{objc_msgSend(v68, "usageTrusted")}];
                  [v72 setTrustIdentifier:v79];

                  [v72 setCategoryIdentifier:v119];
                  [v72 setTimePeriod:0];
                  [v72 setStartDate:v117];
                  v80 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "totalTimeInSeconds")}];
                  [v72 setTotalUsage:v80];

                  [v11 addObject:v72];
LABEL_71:

                  goto LABEL_72;
                }

                v70 = +[STUILog usage];
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v138 = v69;
                  _os_log_debug_impl(&dword_264BA2000, v70, OS_LOG_TYPE_DEBUG, "Skipping timed item for system app %@", buf, 0xCu);
                }

LABEL_72:
              }

              v65 = [v63 countByEnumeratingWithState:&v121 objects:v139 count:16];
            }

            while (v65);
LABEL_74:

            v15 = v105;
            v10 = v106;
            v16 = 0x277CCA000;
            i = v112;
            v57 = v119;
LABEL_75:
          }

          v109 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
        }

        while (v109);
LABEL_77:

        v17 = v92 + 1;
      }

      while (v92 + 1 != v91);
      v91 = [v15 countByEnumeratingWithState:&v133 objects:v142 count:16];
    }

    while (v91);
  }

  if (a4)
  {
    v81 = [v15 firstObject];
    v82 = [v81 usage];
    v83 = [v82 lastUpdatedDate];
    v84 = v83;
    if (!v83)
    {
      v83 = v10;
    }

    *a4 = v83;
  }

  return v11;
}

- (void)loadViewModelWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STUILog usage];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STUsageDetailsViewModelCoordinator loadViewModelWithCompletionHandler:];
  }

  if (v4)
  {
    v6 = self->_loadViewModelCompletions;
    objc_sync_enter(v6);
    loadViewModelCompletions = self->_loadViewModelCompletions;
    v8 = _Block_copy(v4);
    [(NSMutableArray *)loadViewModelCompletions addObject:v8];

    objc_sync_exit(v6);
  }

  [(STDebouncer *)self->_viewModelRefreshDebouncer bounce:0];
}

- (void)_unbouncedLoadViewModelWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[STUILog usage];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STUsageDetailsViewModelCoordinator _unbouncedLoadViewModelWithCompletionHandler:];
  }

  v6 = [(STUsageDetailsViewModelCoordinator *)self userDSID];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__7;
  v24[4] = __Block_byref_object_dispose__7;
  v25 = [(STUsageDetailsViewModelCoordinator *)self selectedDeviceIdentifier];
  v7 = [(STUsageDetailsViewModelCoordinator *)self viewModel];
  v8 = [v7 hasUsageData];
  v9 = [v7 selectedWeek];
  v10 = [v7 selectedDay];
  v11 = [(STUsageDetailsViewModelCoordinator *)self persistenceController];
  v12 = [v11 newBackgroundContext];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke;
  v16[3] = &unk_279B7E6B0;
  v16[4] = self;
  v13 = v6;
  v17 = v13;
  v14 = v4;
  v19 = v14;
  v20 = v24;
  v15 = v12;
  v18 = v15;
  v21 = v10;
  v22 = v9;
  v23 = v8;
  [v15 performBlock:v16];

  _Block_object_dispose(v24, 8);
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke(uint64_t a1)
{
  v171 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"HideNewUsageUI"];

  v4 = +[STScreenTimeSettingsUIBundle bundle];
  v5 = [v4 localizedStringForKey:@"AllDevicesTitle" value:&stru_28766E5A8 table:0];

  v6 = [*(a1 + 32) userDSID];
  v7 = [v6 integerValue];

  v8 = 0x277CCA000uLL;
  v134 = v3;
  if (v7)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"dsid", *(a1 + 40)];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"localUserDeviceState", v126];
  }
  v9 = ;
  v10 = [MEMORY[0x277D4B988] fetchRequest];
  [v10 setPredicate:v9];
  v11 = [*(a1 + 32) organizationIdentifier];
  v12 = [v11 isEqualToString:*MEMORY[0x277D4BC50]];

  if ((v12 & 1) == 0)
  {
    v166[0] = @"usages";
    v166[1] = @"usages.device";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:2];
    [v10 setRelationshipKeyPathsForPrefetching:v13];
  }

  v162 = 0;
  v14 = [v10 execute:&v162];
  v15 = v162;
  if (v14)
  {
    v140 = v12;
    if ([v14 count] >= 2)
    {
      v16 = +[STUILog usage];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_1();
      }
    }

    v17 = [v14 firstObject];
    v18 = v17;
    v130 = v14;
    v136 = v17;
    if (v12)
    {
      v132 = [v17 syncingEnabled];
    }

    else
    {
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v23 = [v17 usages];
      v24 = [v23 countByEnumeratingWithState:&v158 objects:v165 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = v15;
        v27 = v5;
        v28 = v10;
        v29 = v9;
        v30 = *v159;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v159 != v30)
            {
              objc_enumerationMutation(v23);
            }

            v32 = [*(*(&v158 + 1) + 8 * i) device];

            if (!v32)
            {
              v132 = 1;
              goto LABEL_28;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v158 objects:v165 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        v132 = 0;
LABEL_28:
        v9 = v29;
        v10 = v28;
        v5 = v27;
        v18 = v136;
        v15 = v26;
        v8 = 0x277CCA000;
      }

      else
      {
        v132 = 0;
      }
    }

    v33 = [*(v8 + 3120) predicateWithFormat:@"NOT (%K == %hd OR %K == %hd)", @"device.platform", 4, @"device.platform", 5];
    v34 = [v18 userDeviceStates];
    v129 = v33;
    v133 = [v34 filteredSetUsingPredicate:v33];

    v35 = [v18 altDSID];
    LODWORD(v33) = _os_feature_enabled_impl();
    v36 = +[STUILog usage];
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    v137 = v35;
    v131 = v10;
    if (v33)
    {
      if (v37)
      {
        *block = 0;
        _os_log_impl(&dword_264BA2000, v36, OS_LOG_TYPE_DEFAULT, "New usage feature flag is on.", block, 2u);
      }

      if (!v35 || v140 && ([v18 syncingEnabled] & 1) == 0)
      {
        v38 = [v18 localUserDeviceState];
        v39 = [v38 device];
        v40 = [v39 identifier];
        v41 = *(*(a1 + 64) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;
      }

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v43 = [*(a1 + 32) devices];
        v44 = [v43 countByEnumeratingWithState:&v154 objects:v164 count:16];
        if (v44)
        {
          v45 = v44;
          v138 = v5;
          v127 = v9;
          v46 = 0;
          v47 = *v155;
          do
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v155 != v47)
              {
                objc_enumerationMutation(v43);
              }

              v49 = *(*(&v154 + 1) + 8 * j);
              v50 = [v49 identifier];
              v51 = [v50 isEqualToString:*(*(*(a1 + 64) + 8) + 40)];

              if (v51)
              {
                v52 = v49;

                v46 = v52;
              }
            }

            v45 = [v43 countByEnumeratingWithState:&v154 objects:v164 count:16];
          }

          while (v45);

          v9 = v127;
          v5 = v138;
          if (v46)
          {
            v53 = [v46 name];

            LOBYTE(v140) = [v46 isLocalDevice];
            v54 = 0;
            v139 = v53;
            v55 = v129;
            v35 = v137;
            goto LABEL_82;
          }
        }

        else
        {
        }

        v74 = [*(a1 + 32) devices];
        v75 = [v74 indexOfObjectPassingTest:&__block_literal_global_244];

        v76 = [*(a1 + 32) devices];
        v77 = v76;
        v35 = v137;
        if (v75 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = [v76 firstObject];

          v77 = +[STUILog usage];
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_2(v46, v77);
          }
        }

        else
        {
          v46 = [v76 objectAtIndexedSubscript:v75];
        }

        v85 = [v46 identifier];
        v86 = *(*(a1 + 64) + 8);
        v87 = *(v86 + 40);
        *(v86 + 40) = v85;

        [*(a1 + 32) setSelectedDeviceIdentifier:*(*(*(a1 + 64) + 8) + 40)];
        v70 = [v46 name];

        LOBYTE(v140) = [v46 isLocalDevice];
      }

      else
      {
        v67 = [*(a1 + 32) devices];
        v68 = [v67 count];

        if (v68 != 1)
        {
          v139 = v5;
          v46 = 0;
          v54 = 0;
          LOBYTE(v140) = 0;
          goto LABEL_81;
        }

        v69 = [*(a1 + 32) devices];
        v46 = [v69 firstObject];

        v70 = [v46 name];

        LOBYTE(v140) = [v46 isLocalDevice];
        v71 = [v46 identifier];
        v72 = *(*(a1 + 64) + 8);
        v73 = *(v72 + 40);
        *(v72 + 40) = v71;

        [*(a1 + 32) setSelectedDeviceIdentifier:*(*(*(a1 + 64) + 8) + 40)];
      }

      v54 = 0;
      v139 = v70;
LABEL_81:
      v55 = v129;
LABEL_82:
      v88 = [MEMORY[0x277CCABD8] mainQueue];
      if (v134 & 1 | ((_os_feature_enabled_impl() & 1) == 0))
      {
        goto LABEL_97;
      }

      v128 = v9;
      v89 = v55;
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v90 = v54;
        v91 = [v46 hasDeviceActivity];
        v92 = [v46 coreDuetIdentifier];
        if (v91)
        {
          v93 = [v46 identifier];
LABEL_90:
          v94 = 1;
          goto LABEL_91;
        }

        v93 = 0;
        v94 = 0;
      }

      else
      {
        v90 = v54;
        if (!v35)
        {
          v95 = [v136 localUserDeviceState];
          v96 = [v95 device];
          v97 = [v96 identifier];
          v98 = *(*(a1 + 64) + 8);
          v99 = *(v98 + 40);
          *(v98 + 40) = v97;

          v92 = [v95 coreDuetIdentifier];

          v93 = 0;
          goto LABEL_90;
        }

        v94 = [MEMORY[0x277D4B998] hasDataForUserWithAltDSID:v35 userDeviceStates:v133];
        v93 = 0;
        v92 = 0;
      }

LABEL_91:
      v147[0] = MEMORY[0x277D85DD0];
      v147[1] = 3221225472;
      v147[2] = __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_249;
      v147[3] = &unk_279B7E660;
      v147[4] = *(a1 + 32);
      v100 = v92;
      v148 = v100;
      v150 = v94;
      v151 = v140;
      v101 = v139;
      v149 = v101;
      v152 = v132;
      [v88 addOperationWithBlock:v147];
      if (v94)
      {
        v135 = v88;
        v102 = objc_opt_new();
        v103 = [*(a1 + 32) usageContext];
        if (v103 == 2)
        {
          [*(a1 + 32) _loadLastWeekDeviceActivityForUserWithAltDSID:v137 deviceActivityIdentifier:v93 selectedItemDisplayName:v101 referenceDate:v102 completionHandler:*(a1 + 56)];
        }

        else
        {
          if (v103 != 1)
          {
            v54 = v90;
            if (!v103)
            {
              [*(a1 + 32) _loadAllHistoricalDeviceActivityForUserWithAltDSID:v137 deviceActivityIdentifier:v93 selectedItemDisplayName:v101 selectedDay:*(a1 + 72) selectedWeek:*(a1 + 80) hadUsageData:*(a1 + 88) referenceDate:v102 completionHandler:*(a1 + 56)];
            }

            goto LABEL_129;
          }

          [*(a1 + 32) _loadTodayDeviceActivityForUserWithAltDSID:v137 deviceActivityIdentifier:v93 selectedItemDisplayName:v101 referenceDate:v102 completionHandler:*(a1 + 56)];
        }

        v54 = v90;
LABEL_129:
        v124 = +[STUILog usage];
        v55 = v89;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          v125 = *(*(*(a1 + 64) + 8) + 40);
          *block = 138543618;
          *&block[4] = v137;
          *&block[12] = 2114;
          *&block[14] = v125;
          _os_log_impl(&dword_264BA2000, v124, OS_LOG_TYPE_DEFAULT, "Rendering usage with Device Activity Data for user: %{public}@ device: %{public}@", block, 0x16u);
        }

        v9 = v128;
        v88 = v135;
LABEL_132:

        v14 = v130;
        v10 = v131;
        v22 = v136;
        v5 = v139;
        goto LABEL_133;
      }

      v35 = v137;
      v54 = v90;
      v55 = v89;
      v9 = v128;
LABEL_97:
      v104 = +[STUILog usage];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = *(*(*(a1 + 64) + 8) + 40);
        *block = 138543618;
        *&block[4] = v35;
        *&block[12] = 2114;
        *&block[14] = v105;
        _os_log_impl(&dword_264BA2000, v104, OS_LOG_TYPE_DEFAULT, "Rendering usage with Legacy Screen Time Data for user: %{public}@ device: %{public}@", block, 0x16u);
      }

      if (_os_feature_enabled_impl())
      {
        if (*(*(*(a1 + 64) + 8) + 40))
        {
          v106 = MEMORY[0x277D4B978];
          v107 = [v46 coreDuetIdentifier];
          v108 = *(a1 + 48);
          v146 = v15;
          v109 = [v106 fetchDeviceWithCoreDuetIdentifier:v107 inContext:v108 error:&v146];
          v110 = v146;

          if (v109)
          {
            v54 = v109;
          }

          else
          {
            v111 = [MEMORY[0x277D4BA00] usage];
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_3();
            }

            v54 = 0;
          }
        }

        else
        {
          v110 = v15;
        }
      }

      else
      {
        v110 = v15;
      }

      v112 = objc_opt_new();
      v100 = v112;
      if (!*(*(*(a1 + 64) + 8) + 40) || v54)
      {
        v116 = *(a1 + 32);
        v145 = v110;
        v117 = [v116 _usageBlocksWithUser:v136 device:v54 error:&v145];
        v15 = v145;

        v118 = v54;
        v119 = [v117 mutableCopy];

        v100 = v119;
        v54 = v118;
        if (!v100)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v15 = v110;
        if (!v112)
        {
LABEL_111:
          v113 = +[STUILog usage];
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_4();
          }

          v114 = *(a1 + 56);
          v115 = v15;
          if (v114)
          {
            if ([MEMORY[0x277CCACC8] isMainThread])
            {
              v114[2](v114, v115);
            }

            else
            {
              *block = MEMORY[0x277D85DD0];
              *&block[8] = 3221225472;
              *&block[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_4;
              v168 = &unk_279B7D130;
              v170 = v114;
              v169 = v115;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }
          }

          v15 = v115;

          goto LABEL_132;
        }
      }

      v120 = v54;
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_250;
      v141[3] = &unk_279B7E688;
      v141[4] = *(a1 + 32);
      v143 = v140;
      v121 = v139;
      v142 = v121;
      v144 = v132;
      [v88 addOperationWithBlock:v141];
      v122 = objc_opt_new();
      v123 = [*(a1 + 32) usageContext];
      switch(v123)
      {
        case 2:
          [*(a1 + 32) _loadLastWeekUsageWithUsageBlocks:v100 selectedItemDisplayName:v121 referenceDate:v122 completionHandler:*(a1 + 56)];
          break;
        case 1:
          [*(a1 + 32) _loadTodayUsageWithUsageBlocks:v100 selectedItemDisplayName:v121 referenceDate:v122 completionHandler:*(a1 + 56)];
          break;
        case 0:
          [*(a1 + 32) _loadAllHistoricalUsageWithUsageBlocks:v100 selectedItemDisplayName:v121 selectedDay:*(a1 + 72) selectedWeek:*(a1 + 80) hadUsageData:*(a1 + 88) referenceDate:v122 completionHandler:*(a1 + 56)];
          break;
      }

      v54 = v120;
      goto LABEL_132;
    }

    if (v37)
    {
      *block = 0;
      _os_log_impl(&dword_264BA2000, v36, OS_LOG_TYPE_DEFAULT, "New usage feature flag is off.", block, 2u);
    }

    v56 = *(*(*(a1 + 64) + 8) + 40);
    if (v56)
    {
      v57 = *(a1 + 48);
      v153 = v15;
      v58 = [MEMORY[0x277D4B978] fetchDeviceWithIdentifier:v56 inContext:v57 error:&v153];
      v59 = v153;

      if (v58)
      {
        v60 = v58;
        v61 = *(*(*(a1 + 64) + 8) + 40);
        v62 = [v136 localUserDeviceState];
        v63 = [v62 device];
        [v63 identifier];
        v65 = v64 = v9;
        LOBYTE(v61) = [v61 isEqualToString:v65];

        v9 = v64;
        v35 = v137;
        LOBYTE(v140) = v140 & v61;
        v66 = [v60 name];

        v46 = 0;
        v139 = v66;
        v54 = v60;
        v15 = v59;
        goto LABEL_81;
      }

      v15 = v59;
      v18 = v136;
    }

    v139 = v5;
    if (v132 && [v133 count] > 1)
    {
      v46 = 0;
      v54 = 0;
      LOBYTE(v140) = 1;
      goto LABEL_81;
    }

    if (v140)
    {
      v78 = [v18 localUserDeviceState];
      v54 = [v78 device];
      v55 = v129;
    }

    else
    {
      v55 = v129;
      if (![v133 count])
      {
        goto LABEL_73;
      }

      v78 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"device.name" ascending:1];
      v163 = v78;
      v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v163 count:1];
      v80 = [v133 sortedArrayUsingDescriptors:v79];

      v81 = [v80 objectAtIndexedSubscript:0];
      v82 = [v81 device];

      v54 = v82;
      v35 = v137;
    }

    if (v54)
    {
      [v54 name];
      v139 = v83 = v139;
LABEL_76:

      v84 = [v54 identifier];
      [*(a1 + 32) setSelectedDeviceIdentifier:v84];

      v46 = 0;
      goto LABEL_82;
    }

LABEL_73:
    v83 = +[STUILog usage];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *block = 0;
      _os_log_impl(&dword_264BA2000, v83, OS_LOG_TYPE_DEFAULT, "No device found for remote user", block, 2u);
    }

    v54 = 0;
    goto LABEL_76;
  }

  v19 = +[STUILog usage];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_5();
  }

  v20 = STSafeErrorFromCoreDataError();
  v21 = *(a1 + 56);
  v22 = v20;
  if (v21)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v21[2](v21, v22);
    }

    else
    {
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __STUICallCompletionHandlerOnMainThread_block_invoke_4;
      v168 = &unk_279B7D130;
      v170 = v21;
      v169 = v22;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

LABEL_133:
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_249(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  [v2 setSelectedCoreDuetIdentifier:*(a1 + 40)];
  [v2 setHasDeviceActivityData:*(a1 + 56)];
  [v2 setLocalDevice:*(a1 + 57)];
  [v2 setSelectedItemDisplayName:*(a1 + 48)];
  [v2 setHasAggregateUsageData:*(a1 + 58)];
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_250(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  [v2 setLocalDevice:*(a1 + 48)];
  [v2 setSelectedItemDisplayName:*(a1 + 40)];
  [v2 setHasAggregateUsageData:*(a1 + 49)];
}

- (void)_loadTodayUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 referenceDate:(id)a5 completionHandler:(id)a6
{
  v30 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v36 = 0;
  v29 = objc_opt_new();
  v13 = [(STUsageDetailsViewModelCoordinator *)self _usageItemsWithUsageBlocks:v12 lastUpdatedDate:&v36 firstPickupByWeekdayByWeek:v29 referenceDate:v10 usageContext:1];

  v14 = v36;
  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [v15 startOfDayForDate:v10];

  v17 = [v15 component:512 fromDate:v16];
  v18 = [STUsageReport alloc];
  v19 = [v29 objectForKeyedSubscript:&unk_28769D640];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  v21 = [v19 objectForKeyedSubscript:v20];
  v22 = [(STUsageReport *)v18 initWithReportType:1 startDate:v16 lastUpdatedDate:v14 firstPickup:v21 usageItems:v13];

  [(STUsageReport *)v22 setDisplayName:v11];
  v23 = [MEMORY[0x277CCABD8] mainQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __125__STUsageDetailsViewModelCoordinator__loadTodayUsageWithUsageBlocks_selectedItemDisplayName_referenceDate_completionHandler___block_invoke;
  v31[3] = &unk_279B7E6D8;
  v31[4] = self;
  v32 = v14;
  v33 = v13;
  v34 = v22;
  v35 = v30;
  v24 = v30;
  v25 = v22;
  v26 = v13;
  v27 = v14;
  [v23 addOperationWithBlock:v31];
}

void __125__STUsageDetailsViewModelCoordinator__loadTodayUsageWithUsageBlocks_selectedItemDisplayName_referenceDate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with today's usage", v5, 2u);
  }

  v3 = [*(a1 + 32) viewModel];
  [v3 setLastUpdatedDate:*(a1 + 40)];
  [v3 setRawUsageItems:*(a1 + 48)];
  [v3 setSelectedDayUsageReport:*(a1 + 56)];
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)_loadTodayDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 referenceDate:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = MEMORY[0x277CBEA80];
  v14 = a6;
  v44 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v13 currentCalendar];
  v18 = [v17 startOfDayForDate:v14];
  v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v14];
  v49 = 0;
  v20 = [_TtC20ScreenTimeSettingsUI12UsageDetails detailsForUserWithAltDSID:v16 deviceActivityIdentifier:v15 dateInterval:v19 referenceDate:v14 usageContext:1 error:&v49];

  v21 = v49;
  if (!v20)
  {
    v22 = +[STUILog usage];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailsViewModelCoordinator _loadTodayDeviceActivityForUserWithAltDSID:deviceActivityIdentifier:selectedItemDisplayName:referenceDate:completionHandler:];
    }
  }

  v42 = v19;
  v43 = v21;
  v23 = [v17 component:512 fromDate:{v18, self}];
  v24 = [STUsageReport alloc];
  v25 = [v20 lastUpdatedDate];
  v26 = [v20 firstPickupByWeekdayByWeek];
  v27 = [v26 objectForKeyedSubscript:&unk_28769D640];
  [MEMORY[0x277CCABB0] numberWithInteger:v23];
  v28 = v18;
  v30 = v29 = v12;
  [v27 objectForKeyedSubscript:v30];
  v31 = v41 = v17;
  v32 = [v20 usageItems];
  v33 = v24;
  v34 = v28;
  v35 = [(STUsageReport *)v33 initWithReportType:1 startDate:v28 lastUpdatedDate:v25 firstPickup:v31 usageItems:v32];

  [(STUsageReport *)v35 setDisplayName:v44];
  v36 = [MEMORY[0x277CCABD8] mainQueue];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __162__STUsageDetailsViewModelCoordinator__loadTodayDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_referenceDate_completionHandler___block_invoke;
  v45[3] = &unk_279B7D108;
  v45[4] = v40;
  v46 = v20;
  v47 = v35;
  v48 = v29;
  v37 = v29;
  v38 = v35;
  v39 = v20;
  [v36 addOperationWithBlock:v45];
}

void __162__STUsageDetailsViewModelCoordinator__loadTodayDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_referenceDate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with today's device activity", v7, 2u);
  }

  v3 = [*(a1 + 32) viewModel];
  v4 = [*(a1 + 40) lastUpdatedDate];
  [v3 setLastUpdatedDate:v4];

  v5 = [*(a1 + 40) usageItems];
  [v3 setRawUsageItems:v5];

  [v3 setSelectedDayUsageReport:*(a1 + 48)];
  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)_loadLastWeekUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 referenceDate:(id)a5 completionHandler:(id)a6
{
  v30 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v36 = 0;
  v14 = [(STUsageDetailsViewModelCoordinator *)self _usageItemsWithUsageBlocks:v12 lastUpdatedDate:&v36 firstPickupByWeekdayByWeek:v13 referenceDate:v10 usageContext:2];

  v15 = v36;
  v16 = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [v16 firstWeekday];
  v18 = [v16 nextDateAfterDate:v10 matchingUnit:512 value:v17 options:260];

  v19 = [STUsageReport alloc];
  v20 = [v13 objectForKeyedSubscript:&unk_28769D658];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  v22 = [v20 objectForKeyedSubscript:v21];
  v23 = [(STUsageReport *)v19 initWithReportType:0 startDate:v18 lastUpdatedDate:v15 firstPickup:v22 usageItems:v14];

  [(STUsageReport *)v23 setDisplayName:v11];
  v24 = [MEMORY[0x277CCABD8] mainQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __128__STUsageDetailsViewModelCoordinator__loadLastWeekUsageWithUsageBlocks_selectedItemDisplayName_referenceDate_completionHandler___block_invoke;
  v31[3] = &unk_279B7E6D8;
  v31[4] = self;
  v32 = v15;
  v33 = v14;
  v34 = v23;
  v35 = v30;
  v25 = v30;
  v26 = v23;
  v27 = v14;
  v28 = v15;
  [v24 addOperationWithBlock:v31];
}

void __128__STUsageDetailsViewModelCoordinator__loadLastWeekUsageWithUsageBlocks_selectedItemDisplayName_referenceDate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with last week's usage", v5, 2u);
  }

  v3 = [*(a1 + 32) viewModel];
  [v3 setLastUpdatedDate:*(a1 + 40)];
  [v3 setRawUsageItems:*(a1 + 48)];
  [v3 setSelectedWeekUsageReport:*(a1 + 56)];
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)_loadLastWeekDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 referenceDate:(id)a6 completionHandler:(id)a7
{
  v46 = a7;
  v12 = MEMORY[0x277CBEA80];
  v13 = a6;
  v45 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v12 currentCalendar];
  v17 = [v16 firstWeekday];
  v18 = [v16 nextDateAfterDate:v13 matchingUnit:512 value:v17 options:260];
  v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v13];
  v52 = 0;
  v20 = [_TtC20ScreenTimeSettingsUI12UsageDetails detailsForUserWithAltDSID:v15 deviceActivityIdentifier:v14 dateInterval:v19 referenceDate:v13 usageContext:2 error:&v52];

  v21 = v52;
  if (!v20)
  {
    v22 = v19;
    v23 = v18;
    v24 = v16;
    v25 = +[STUILog usage];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailsViewModelCoordinator _loadLastWeekDeviceActivityForUserWithAltDSID:deviceActivityIdentifier:selectedItemDisplayName:referenceDate:completionHandler:];
    }

    v16 = v24;
    v18 = v23;
    v19 = v22;
  }

  v43 = v19;
  v44 = v16;
  v26 = [STUsageReport alloc];
  v27 = [v20 lastUpdatedDate];
  v28 = [v20 firstPickupByWeekdayByWeek];
  v29 = [v28 objectForKeyedSubscript:&unk_28769D658];
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
  v31 = [v29 objectForKeyedSubscript:v30];
  v32 = [v20 usageItems];
  v33 = v18;
  v42 = v18;
  v34 = self;
  v35 = v32;
  v36 = [(STUsageReport *)v26 initWithReportType:0 startDate:v33 lastUpdatedDate:v27 firstPickup:v31 usageItems:v32];

  [(STUsageReport *)v36 setDisplayName:v45];
  v37 = [MEMORY[0x277CCABD8] mainQueue];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __165__STUsageDetailsViewModelCoordinator__loadLastWeekDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_referenceDate_completionHandler___block_invoke;
  v47[3] = &unk_279B7E700;
  v47[4] = v34;
  v48 = v20;
  v50 = v21;
  v51 = v46;
  v49 = v36;
  v38 = v21;
  v39 = v46;
  v40 = v36;
  v41 = v20;
  [v37 addOperationWithBlock:v47];
}

void __165__STUsageDetailsViewModelCoordinator__loadLastWeekDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_referenceDate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with last week's device activity", v7, 2u);
  }

  v3 = [*(a1 + 32) viewModel];
  v4 = [*(a1 + 40) lastUpdatedDate];
  [v3 setLastUpdatedDate:v4];

  v5 = [*(a1 + 40) usageItems];
  [v3 setRawUsageItems:v5];

  [v3 setSelectedWeekUsageReport:*(a1 + 48)];
  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 56));
  }
}

- (void)_loadAllHistoricalUsageWithUsageBlocks:(id)a3 selectedItemDisplayName:(id)a4 selectedDay:(unint64_t)a5 selectedWeek:(unint64_t)a6 hadUsageData:(BOOL)a7 referenceDate:(id)a8 completionHandler:(id)a9
{
  v13 = a3;
  v14 = a4;
  v38 = a8;
  v15 = a9;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__7;
  v65[4] = __Block_byref_object_dispose__7;
  v66 = 0;
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  }

  v19 = v14;
  v36 = v15;
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v21 = [v13 firstObject];
  v22 = [v21 startDate];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __171__STUsageDetailsViewModelCoordinator__loadAllHistoricalUsageWithUsageBlocks_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke;
  v50[3] = &unk_279B7E728;
  v62 = a6;
  v64 = a7;
  v35 = v13;
  v51 = v35;
  v52 = self;
  v61 = v65;
  v23 = v17;
  v53 = v23;
  v24 = v38;
  v54 = v24;
  v39 = v19;
  v55 = v39;
  v63 = a5;
  v25 = v16;
  v56 = v25;
  v26 = v22;
  v57 = v26;
  v27 = v37;
  v58 = v27;
  v28 = v18;
  v59 = v28;
  v29 = v20;
  v60 = v29;
  [STUsageDetailsViewModel _enumerateWeeklyReportStartDatesWithReferenceDate:v24 ascending:0 block:v50];
  v30 = [MEMORY[0x277CCABD8] mainQueue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __171__STUsageDetailsViewModelCoordinator__loadAllHistoricalUsageWithUsageBlocks_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_2;
  v42[3] = &unk_279B7E750;
  v31 = v25;
  v43 = v31;
  v44 = self;
  v48 = v65;
  v32 = v29;
  v45 = v32;
  v33 = v27;
  v46 = v33;
  v49 = a6;
  v34 = v36;
  v47 = v34;
  [v30 addOperationWithBlock:v42];

  _Block_object_dispose(v65, 8);
}

void __171__STUsageDetailsViewModelCoordinator__loadAllHistoricalUsageWithUsageBlocks_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 120);
  if ((*(a1 + 136) & 1) == 0 && !a3 && !v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 dateByAddingUnit:0x2000 value:-1 toDate:v7 options:0];

    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"startDate", v10];
    v12 = [*(a1 + 32) filteredArrayUsingPredicate:v11];
    v13 = *(*(a1 + 112) + 8);
    obj = *(v13 + 40);
    v14 = [*(a1 + 40) _usageItemsWithUsageBlocks:v12 lastUpdatedDate:&obj firstPickupByWeekdayByWeek:*(a1 + 48) referenceDate:*(a1 + 56) usageContext:0];
    objc_storeStrong((v13 + 40), obj);
    [*(a1 + 40) _updateWeekAndDayReportsWithUsageItems:v14 weekStartDate:v7 lastUpdatedDate:*(*(*(a1 + 112) + 8) + 40) referenceDate:*(a1 + 56) selectedItemDisplayName:*(a1 + 64) isSelectedWeek:1 selectedDay:*(a1 + 128) weekUsageReports:0 dayUsageReports:0 dayUsageReportByWeekdays:0 firstPickupByWeekdayByWeek:*(a1 + 48)];
    [*(a1 + 72) addObjectsFromArray:v14];
    [*(a1 + 32) removeObjectsInArray:v12];

    v8 = 0;
  }

  if ([*(a1 + 32) count])
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = *(*(a1 + 112) + 8);
    v20 = *(v17 + 40);
    v18 = (v17 + 40);
    v19 = v20;
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = &v26;
    }

    if (!v19)
    {
      v26 = 0;
    }

    v22 = [v15 _usageItemsWithUsageBlocks:v16 lastUpdatedDate:v21 firstPickupByWeekdayByWeek:*(a1 + 48) referenceDate:*(a1 + 56) usageContext:0];
    if (!v19)
    {
      objc_storeStrong(v18, v26);
    }

    v23 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, objc_msgSend(v22, "count")}];
    [*(a1 + 72) insertObjects:v22 atIndexes:v23];
    [*(a1 + 32) removeAllObjects];
  }

  v24 = [MEMORY[0x277CBEA80] currentCalendar];
  v25 = [v24 dateByAddingUnit:0x2000 value:1 toDate:v7 options:0];

  if ([*(a1 + 80) compare:v25] == -1)
  {
    [*(a1 + 40) _updateWeekAndDayReportsWithUsageItems:*(a1 + 72) weekStartDate:v7 lastUpdatedDate:*(*(*(a1 + 112) + 8) + 40) referenceDate:*(a1 + 56) selectedItemDisplayName:*(a1 + 64) isSelectedWeek:v8 == a3 selectedDay:*(a1 + 128) weekUsageReports:*(a1 + 88) dayUsageReports:*(a1 + 96) dayUsageReportByWeekdays:*(a1 + 104) firstPickupByWeekdayByWeek:*(a1 + 48)];
  }

  else
  {
    *a4 = 1;
  }
}

void __171__STUsageDetailsViewModelCoordinator__loadAllHistoricalUsageWithUsageBlocks_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with all historical usage (#items: %lu)", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) viewModel];
  [v4 setLastUpdatedDate:*(*(*(a1 + 72) + 8) + 40)];
  [v4 setRawUsageItems:*(a1 + 32)];
  if ([*(a1 + 48) count])
  {
    [v4 setDayUsageReportByWeekdays:*(a1 + 48)];
  }

  else
  {
    [v4 setDayUsageReportByWeekdays:0];
    [v4 setSelectedDayUsageReport:0];
  }

  v5 = [*(a1 + 56) count];
  if (v5)
  {
    v6 = v5;
    [v4 setWeekUsageReports:*(a1 + 56)];
    if (*(a1 + 80) >= v6)
    {
      [v4 setSelectedWeek:v6 - 1];
    }
  }

  else
  {
    [v4 setWeekUsageReports:0];
    [v4 setSelectedWeekUsageReport:0];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }
}

- (void)_loadAllHistoricalDeviceActivityForUserWithAltDSID:(id)a3 deviceActivityIdentifier:(id)a4 selectedItemDisplayName:(id)a5 selectedDay:(unint64_t)a6 selectedWeek:(unint64_t)a7 hadUsageData:(BOOL)a8 referenceDate:(id)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a4;
  v34 = a5;
  v17 = a9;
  v18 = a10;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = __Block_byref_object_copy__7;
  v70[4] = __Block_byref_object_dispose__7;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__7;
  v68[4] = __Block_byref_object_dispose__7;
  v69 = objc_opt_new();
  v33 = objc_opt_new();
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = 0;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  }

  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__7;
  v66 = __Block_byref_object_dispose__7;
  v67 = 0;
  obj = 0;
  v29 = v15;
  v19 = [_TtC20ScreenTimeSettingsUI12UsageDetails earliestUsageDateForUserWithAltDSID:v15 deviceActivityIdentifier:v16 error:&obj];
  objc_storeStrong(&v67, obj);
  if (v19)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke;
    v44[3] = &unk_279B7E778;
    v58 = a7;
    v60 = a8;
    v45 = v17;
    v46 = v29;
    v55 = &v62;
    v47 = v16;
    v48 = self;
    v49 = v34;
    v59 = a6;
    v20 = v33;
    v50 = v20;
    v51 = v19;
    v56 = v70;
    v57 = v68;
    v21 = v32;
    v52 = v21;
    v53 = v31;
    v22 = v30;
    v54 = v22;
    [STUsageDetailsViewModel _enumerateWeeklyReportStartDatesWithReferenceDate:v45 ascending:0 block:v44];
    v23 = [MEMORY[0x277CCABD8] mainQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_262;
    v35[3] = &unk_279B7E7A0;
    v36 = v20;
    v37 = self;
    v41 = v70;
    v38 = v22;
    v39 = v21;
    v43 = a7;
    v40 = v18;
    v42 = &v62;
    [v23 addOperationWithBlock:v35];

    v24 = v45;
  }

  else
  {
    v25 = v63[5];
    v26 = v18;
    v27 = v25;
    if (v26)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v26[2](v26, v27);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_4;
        block[3] = &unk_279B7D130;
        v74 = v26;
        v73 = v27;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    v24 = +[STUILog usage];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailsViewModelCoordinator _loadAllHistoricalDeviceActivityForUserWithAltDSID:deviceActivityIdentifier:selectedItemDisplayName:selectedDay:selectedWeek:hadUsageData:referenceDate:completionHandler:];
    }
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
}

void __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 136);
  if ((*(a1 + 152) & 1) == 0 && !a3 && !v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v9 dateByAddingUnit:0x2000 value:-1 toDate:v7 options:0];

    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:*(a1 + 32)];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 112) + 8);
    obj = *(v15 + 40);
    v16 = [_TtC20ScreenTimeSettingsUI12UsageDetails detailsForUserWithAltDSID:v12 deviceActivityIdentifier:v13 dateInterval:v11 referenceDate:v14 usageContext:0 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    if (!v16)
    {
      v40 = +[STUILog usage];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_cold_2();
      }

      *a4 = 1;
      goto LABEL_18;
    }

    v42 = *(a1 + 56);
    v17 = [v16 usageItems];
    [v16 lastUpdatedDate];
    v18 = v44 = v10;
    v19 = *(a1 + 32);
    v20 = a4;
    v21 = *(a1 + 64);
    v22 = *(a1 + 144);
    [v16 firstPickupByWeekdayByWeek];
    v23 = v43 = v11;
    v24 = v21;
    a4 = v20;
    [v42 _updateWeekAndDayReportsWithUsageItems:v17 weekStartDate:v7 lastUpdatedDate:v18 referenceDate:v19 selectedItemDisplayName:v24 isSelectedWeek:1 selectedDay:v22 weekUsageReports:0 dayUsageReports:0 dayUsageReportByWeekdays:0 firstPickupByWeekdayByWeek:v23];

    a3 = 0;
    v8 = 0;
  }

  if ([*(a1 + 72) count])
  {
    goto LABEL_9;
  }

  v45 = v8;
  v10 = [*(a1 + 80) earlierDate:v7];
  v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 endDate:*(a1 + 32)];
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = *(*(a1 + 112) + 8);
  v46 = *(v29 + 40);
  v30 = [_TtC20ScreenTimeSettingsUI12UsageDetails detailsForUserWithAltDSID:v26 deviceActivityIdentifier:v27 dateInterval:v25 referenceDate:v28 usageContext:0 error:&v46];
  objc_storeStrong((v29 + 40), v46);
  if (v30)
  {
    v31 = [v30 lastUpdatedDate];
    v32 = *(*(a1 + 120) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    v34 = [v30 firstPickupByWeekdayByWeek];
    v35 = *(*(a1 + 128) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    v37 = *(a1 + 72);
    v38 = [v30 usageItems];
    [v37 addObjectsFromArray:v38];

    v8 = v45;
LABEL_9:
    v39 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [v39 dateByAddingUnit:0x2000 value:1 toDate:v7 options:0];

    if ([*(a1 + 80) compare:v10] == -1)
    {
      [*(a1 + 56) _updateWeekAndDayReportsWithUsageItems:*(a1 + 72) weekStartDate:v7 lastUpdatedDate:*(*(*(a1 + 120) + 8) + 40) referenceDate:*(a1 + 32) selectedItemDisplayName:*(a1 + 64) isSelectedWeek:v8 == a3 selectedDay:*(a1 + 144) weekUsageReports:*(a1 + 88) dayUsageReports:*(a1 + 96) dayUsageReportByWeekdays:*(a1 + 104) firstPickupByWeekdayByWeek:*(*(*(a1 + 128) + 8) + 40)];
    }

    else
    {
      *a4 = 1;
    }

    goto LABEL_18;
  }

  v41 = +[STUILog usage];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_cold_1();
  }

  *a4 = 1;
LABEL_18:
}

void __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_262(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[STUILog usage];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Updating view model with all historical device activity (#items: %lu)", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) viewModel];
  [v4 setLastUpdatedDate:*(*(*(a1 + 72) + 8) + 40)];
  [v4 setRawUsageItems:*(a1 + 32)];
  if ([*(a1 + 48) count])
  {
    [v4 setDayUsageReportByWeekdays:*(a1 + 48)];
  }

  else
  {
    [v4 setDayUsageReportByWeekdays:0];
    [v4 setSelectedDayUsageReport:0];
  }

  v5 = [*(a1 + 56) count];
  if (v5)
  {
    v6 = v5;
    [v4 setWeekUsageReports:*(a1 + 56)];
    if (*(a1 + 88) >= v6)
    {
      [v4 setSelectedWeek:v6 - 1];
    }
  }

  else
  {
    [v4 setWeekUsageReports:0];
    [v4 setSelectedWeekUsageReport:0];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    (*(v7 + 16))(v7, *(*(*(a1 + 80) + 8) + 40));
  }
}

- (void)_updateWeekAndDayReportsWithUsageItems:(id)a3 weekStartDate:(id)a4 lastUpdatedDate:(id)a5 referenceDate:(id)a6 selectedItemDisplayName:(id)a7 isSelectedWeek:(BOOL)a8 selectedDay:(unint64_t)a9 weekUsageReports:(id)a10 dayUsageReports:(id)a11 dayUsageReportByWeekdays:(id)a12 firstPickupByWeekdayByWeek:(id)a13
{
  v45 = a8;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v41 = a6;
  v20 = a7;
  v37 = a11;
  v39 = a13;
  v21 = a12;
  v22 = a10;
  v23 = [[STUsageReport alloc] initWithReportType:0 startDate:v18 lastUpdatedDate:v19 firstPickup:0 usageItems:v17];
  v38 = v20;
  [(STUsageReport *)v23 setDisplayName:v20];
  [v22 addObject:v23];

  v24 = [MEMORY[0x277CCABD8] mainQueue];
  if (v45)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke;
    v60[3] = &unk_279B7CAE0;
    v60[4] = self;
    v61 = v23;
    [v24 addOperationWithBlock:v60];
  }

  v42 = v23;
  v40 = v21;
  if (v21)
  {
    v25 = objc_opt_new();
  }

  else
  {
    v25 = 0;
  }

  v26 = MEMORY[0x277CCABB0];
  v27 = [MEMORY[0x277CBEA80] currentCalendar];
  v28 = [v26 numberWithInteger:{objc_msgSend(v27, "component:fromDate:", 0x2000, v18)}];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke_2;
  v47[3] = &unk_279B7E7C8;
  v48 = v41;
  v49 = v19;
  v50 = v39;
  v51 = v28;
  v52 = v17;
  v53 = v38;
  v57 = v25;
  v58 = v36;
  v59 = v45;
  v54 = v37;
  v55 = v24;
  v56 = self;
  v29 = v25;
  v46 = v24;
  v30 = v37;
  v44 = v38;
  v31 = v17;
  v32 = v28;
  v33 = v39;
  v34 = v19;
  v35 = v41;
  [STUsageDetailsViewModel _enumerateDayReportStartDatesWithStartOfWeek:v18 ascending:1 block:v47];
  [v40 addObject:v29];
}

void __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) viewModel];
  [v2 setSelectedWeekUsageReport:v1];
}

void __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) compare:v5] != -1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v8 = [STUsageReport alloc];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
    v11 = [v10 objectForKeyedSubscript:v7];
    v12 = [(STUsageReport *)v8 initWithReportType:1 startDate:v5 lastUpdatedDate:v9 firstPickup:v11 usageItems:*(a1 + 64)];

    [(STUsageReport *)v12 setDisplayName:*(a1 + 72)];
    if (*(a1 + 112) == a3)
    {
      [*(a1 + 80) addObject:v12];
      if (*(a1 + 120) == 1)
      {
        v14 = MEMORY[0x277D85DD0];
        v15 = 3221225472;
        v16 = __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke_3;
        v17 = &unk_279B7CAE0;
        v13 = *(a1 + 88);
        v18 = *(a1 + 96);
        v19 = v12;
        [v13 addOperationWithBlock:&v14];
      }
    }

    [*(a1 + 104) setObject:v12 forKeyedSubscript:{v7, v14, v15, v16, v17, v18}];
  }

  objc_autoreleasePoolPop(v6);
}

void __257__STUsageDetailsViewModelCoordinator__updateWeekAndDayReportsWithUsageItems_weekStartDate_lastUpdatedDate_referenceDate_selectedItemDisplayName_isSelectedWeek_selectedDay_weekUsageReports_dayUsageReports_dayUsageReportByWeekdays_firstPickupByWeekdayByWeek___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) viewModel];
  [v2 setSelectedDayUsageReport:v1];
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_264BA2000, v0, OS_LOG_TYPE_FAULT, "More than 1 user found: %@", v1, 0xCu);
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_264BA2000, a2, OS_LOG_TYPE_ERROR, "loadViewModel no localDevice found! Setting to first device found %@", v4, 0xCu);
}

void __83__STUsageDetailsViewModelCoordinator__unbouncedLoadViewModelWithCompletionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_264BA2000, v0, v1, "Could not find expected device in ST core data: %@. Empty usage will be shown.", v2, v3, v4, v5, v6);
}

void __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_264BA2000, v0, v1, "Failed to fetch all usage details using DeviceActivity: %{public}@", v2, v3, v4, v5, v6);
}

void __208__STUsageDetailsViewModelCoordinator__loadAllHistoricalDeviceActivityForUserWithAltDSID_deviceActivityIdentifier_selectedItemDisplayName_selectedDay_selectedWeek_hadUsageData_referenceDate_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_3(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5(&dword_264BA2000, v0, v1, "Failed to fetch previous week usage details using DeviceActivity: %{public}@", v2, v3, v4, v5, v6);
}

@end