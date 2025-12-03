@interface SCLUnlockHistoryPersistentStore
- (BOOL)deleteHistory:(id *)history;
- (BOOL)insertItem:(id)item;
- (BOOL)purgeOldItems;
- (SCLUnlockHistoryPersistentStore)initWithURL:(id)l;
- (id)recentHistoryItems;
- (id)recentItemsThresholdDate;
- (void)dealloc;
- (void)loadStore;
@end

@implementation SCLUnlockHistoryPersistentStore

- (SCLUnlockHistoryPersistentStore)initWithURL:(id)l
{
  v19[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SCLUnlockHistoryPersistentStore;
  v6 = [(SCLUnlockHistoryPersistentStore *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 URLForResource:@"SchoolTime" withExtension:@"momd"];

    v10 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v9];
    v11 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"SchoolTime" managedObjectModel:v10];
    persistentContainer = v7->_persistentContainer;
    v7->_persistentContainer = v11;

    v13 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:lCopy];
    [v13 setType:*MEMORY[0x277CBE2E8]];
    v14 = v7->_persistentContainer;
    v19[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [(NSPersistentContainer *)v14 setPersistentStoreDescriptions:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)loadStore
{
  persistentContainer = self->_persistentContainer;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SCLUnlockHistoryPersistentStore_loadStore__block_invoke;
  v3[3] = &unk_279B6C9D8;
  v3[4] = self;
  [(NSPersistentContainer *)persistentContainer loadPersistentStoresWithCompletionHandler:v3];
}

void __44__SCLUnlockHistoryPersistentStore_loadStore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = scl_persistence_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __44__SCLUnlockHistoryPersistentStore_loadStore__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Loaded description %@", &v11, 0xCu);
    }

    v9 = [*(a1 + 32) persistentContainer];
    v8 = [v9 newBackgroundContext];

    [v8 setName:@"SCLUnlockHistoryPersistentStore context"];
    [*(a1 + 32) setStoreContext:v8];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSManagedObjectContext *)self->_storeContext refreshAllObjects];
  v3.receiver = self;
  v3.super_class = SCLUnlockHistoryPersistentStore;
  [(SCLUnlockHistoryPersistentStore *)&v3 dealloc];
}

- (BOOL)insertItem:(id)item
{
  itemCopy = item;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  storeContext = [(SCLUnlockHistoryPersistentStore *)self storeContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SCLUnlockHistoryPersistentStore_insertItem___block_invoke;
  v10[3] = &unk_279B6CA00;
  v6 = storeContext;
  v11 = v6;
  v7 = itemCopy;
  v12 = v7;
  v13 = &v14;
  [v6 performBlockAndWait:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __46__SCLUnlockHistoryPersistentStore_insertItem___block_invoke(uint64_t a1)
{
  v2 = [[SCLUnlockEvent alloc] initWithContext:*(a1 + 32)];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) calendar];
  v5 = [v4 calendarIdentifier];
  [(SCLUnlockEvent *)v2 setCalendarIdentifier:v5];

  v6 = [*(a1 + 40) timeZone];
  v7 = [v6 name];
  [(SCLUnlockEvent *)v2 setTimeZoneName:v7];

  v8 = [MEMORY[0x277CCAD78] UUID];
  [(SCLUnlockEvent *)v2 setIdentifier:v8];

  v9 = [*(a1 + 40) unlockedInterval];
  v10 = [v9 startDate];
  [(SCLUnlockEvent *)v2 setStartDate:v10];

  v11 = [*(a1 + 40) unlockedInterval];
  [v11 duration];
  [(SCLUnlockEvent *)v2 setDuration:v12];

  v13 = [*(a1 + 40) scheduleStartTime];
  -[SCLUnlockEvent setScheduleStartHour:](v2, "setScheduleStartHour:", [v13 hour]);

  v14 = [*(a1 + 40) scheduleStartTime];
  -[SCLUnlockEvent setScheduleStartMinute:](v2, "setScheduleStartMinute:", [v14 minute]);

  v15 = [*(a1 + 40) scheduleEndTime];
  -[SCLUnlockEvent setScheduleEndHour:](v2, "setScheduleEndHour:", [v15 hour]);

  v16 = [*(a1 + 40) scheduleEndTime];
  -[SCLUnlockEvent setScheduleEndMinute:](v2, "setScheduleEndMinute:", [v16 minute]);

  v17 = *(a1 + 32);
  v20 = 0;
  LOBYTE(v16) = [v17 save:&v20];
  v18 = v20;
  *(*(v3[1] + 8) + 24) = v16;
  if ((*(*(v3[1] + 8) + 24) & 1) == 0)
  {
    v19 = scl_persistence_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __46__SCLUnlockHistoryPersistentStore_insertItem___block_invoke_cold_1(v3, v18, v19);
    }
  }
}

- (BOOL)deleteHistory:(id *)history
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  storeContext = [(SCLUnlockHistoryPersistentStore *)self storeContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SCLUnlockHistoryPersistentStore_deleteHistory___block_invoke;
  v7[3] = &unk_279B6CA28;
  v5 = storeContext;
  v9 = &v11;
  historyCopy = history;
  v8 = v5;
  [v5 performBlockAndWait:v7];
  LOBYTE(history) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return history;
}

void __49__SCLUnlockHistoryPersistentStore_deleteHistory___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE360]);
  v3 = +[SCLUnlockEvent fetchRequest];
  v6 = [v2 initWithFetchRequest:v3];

  v4 = [*(a1 + 32) executeRequest:v6 error:*(a1 + 48)];
  v5 = *(a1 + 48);
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = *v5 == 0;
  }
}

- (id)recentHistoryItems
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = +[SCLUnlockEvent fetchRequest];
  persistentContainer = [(SCLUnlockHistoryPersistentStore *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  [v3 setAffectedStores:persistentStores];

  recentItemsThresholdDate = [(SCLUnlockHistoryPersistentStore *)self recentItemsThresholdDate];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", recentItemsThresholdDate];
  [v3 setPredicate:v8];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v24[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v3 setSortDescriptors:v10];

  storeContext = [(SCLUnlockHistoryPersistentStore *)self storeContext];
  array = [MEMORY[0x277CBEB18] array];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__SCLUnlockHistoryPersistentStore_recentHistoryItems__block_invoke;
  v20[3] = &unk_279B6CA50;
  v21 = storeContext;
  v22 = v3;
  v13 = array;
  v23 = v13;
  v14 = v3;
  v15 = storeContext;
  [v15 performBlockAndWait:v20];
  v16 = v23;
  v17 = v13;

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

void __53__SCLUnlockHistoryPersistentStore_recentHistoryItems__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v31 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v31];
  v5 = v31;
  if (v5)
  {
    obj = scl_persistence_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __53__SCLUnlockHistoryPersistentStore_recentHistoryItems__block_invoke_cold_1();
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = 0;
      v24 = v4;
      v26 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = MEMORY[0x277CBEA80];
          v11 = [v9 calendarIdentifier];
          v12 = [v10 calendarWithIdentifier:v11];

          v13 = MEMORY[0x277CBEBB0];
          v14 = [v9 timeZoneName];
          v15 = [v13 timeZoneWithName:v14];

          v16 = objc_alloc(MEMORY[0x277CCA970]);
          v17 = [v9 startDate];
          v18 = [v16 initWithStartDate:v17 duration:{objc_msgSend(v9, "duration")}];

          v19 = -[SCLScheduleTime initWithHour:minute:]([SCLScheduleTime alloc], "initWithHour:minute:", [v9 scheduleStartHour], objc_msgSend(v9, "scheduleStartMinute"));
          v20 = -[SCLScheduleTime initWithHour:minute:]([SCLScheduleTime alloc], "initWithHour:minute:", [v9 scheduleEndHour], objc_msgSend(v9, "scheduleEndMinute"));
          v21 = [[SCLUnlockHistoryItem alloc] initWithInterval:v18 calendar:v12 timeZone:v15 startTime:v19 endTime:v20];
          [*(a1 + 48) addObject:v21];
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
      v5 = v23;
      v4 = v24;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)purgeOldItems
{
  v3 = +[SCLUnlockEvent fetchRequest];
  persistentContainer = [(SCLUnlockHistoryPersistentStore *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  [v3 setAffectedStores:persistentStores];

  recentItemsThresholdDate = [(SCLUnlockHistoryPersistentStore *)self recentItemsThresholdDate];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate < %@", recentItemsThresholdDate];
  [v3 setPredicate:v8];
  v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v3];
  [v9 setResultType:2];
  storeContext = [(SCLUnlockHistoryPersistentStore *)self storeContext];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke;
  v15[3] = &unk_279B6CA00;
  v11 = storeContext;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = &v19;
  [v11 performBlockAndWait:v15];
  v13 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v8 = 0;
  v4 = [v2 executeRequest:v3 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = scl_persistence_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [v4 result];
    v7 = scl_persistence_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke_cold_2();
    }

    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (id)recentItemsThresholdDate
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];
  v5 = [currentCalendar startOfDayForDate:v4];

  return v5;
}

void __44__SCLUnlockHistoryPersistentStore_loadStore__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Couldn't load description %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__SCLUnlockHistoryPersistentStore_insertItem___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_264829000, log, OS_LOG_TYPE_ERROR, "Failed to save item %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __53__SCLUnlockHistoryPersistentStore_recentHistoryItems__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Could not retrieve recent history items: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_264829000, v0, v1, "Failed to purge old items: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__SCLUnlockHistoryPersistentStore_purgeOldItems__block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_264829000, v0, OS_LOG_TYPE_DEBUG, "Deleted %@ items", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end