@interface STUsageReporter
- (BOOL)generateReport:(id *)report;
- (NSArray)applicationAndWebUsage;
- (NSArray)categoryUsage;
- (NSArray)notifications;
- (NSArray)pickups;
- (NSDate)firstPickup;
- (NSFetchedResultsController)installedAppsController;
- (STUsageReporter)initWithUsage:(id)usage dateInterval:(id)interval;
- (double)totalScreenTime;
- (id)_categoryUsageWithoutAllUsageItem;
- (id)_firstPickupFromUsageBlocks:(id)blocks;
- (id)_ratiosForCategory:(id)category perCalendarUnit:(unint64_t)unit useTotalScreenTime:(BOOL)time;
- (id)categoryRatiosPerCalendarUnit:(unint64_t)unit numberOfCategories:(unint64_t)categories;
- (id)firstPickupOfIntervalWithMostPickups:(unint64_t *)pickups perCalendarUnit:(unint64_t)unit;
- (id)notificationRatiosForApplication:(id)application perCalendarUnit:(unint64_t)unit;
- (id)notificationsPerCalendarUnit:(unint64_t)unit;
- (id)pickupRatiosForApplication:(id)application perCalendarUnit:(unint64_t)unit;
- (id)pickupsPerCalendarUnit:(unint64_t)unit;
- (id)ratiosForApplication:(id)application perCalendarUnit:(unint64_t)unit;
- (id)ratiosForWebDomain:(id)domain perCalendarUnit:(unint64_t)unit;
- (id)screenTimeUsagePerCalendarUnit:(unint64_t)unit;
- (int64_t)totalNotifications;
- (int64_t)totalPickups;
- (void)_enumerateUsageBlocksWithUnitGranularity:(unint64_t)granularity block:(id)block;
- (void)_updateInstalledBundleIdentifiers;
- (void)controllerDidChangeContent:(id)content;
- (void)installedAppsController;
@end

@implementation STUsageReporter

- (STUsageReporter)initWithUsage:(id)usage dateInterval:(id)interval
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = STUsageReporter;
  intervalCopy = interval;
  usageCopy = usage;
  v7 = [(STUsageReporter *)&v23 init];
  v8 = [intervalCopy copy];
  dateInterval = v7->_dateInterval;
  v7->_dateInterval = v8;

  user = [usageCopy user];
  dsid = [user dsid];
  v12 = [dsid copy];
  userDSID = v7->_userDSID;
  v7->_userDSID = v12;

  v14 = [STUsageBlock fetchRequestMatchingUsage:usageCopy dateInterval:intervalCopy];

  v15 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
  v24[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v14 setSortDescriptors:v16];

  [v14 setShouldRefreshRefetchedObjects:1];
  v17 = objc_alloc(MEMORY[0x1E695D600]);
  managedObjectContext = [usageCopy managedObjectContext];

  v19 = [v17 initWithFetchRequest:v14 managedObjectContext:managedObjectContext sectionNameKeyPath:0 cacheName:0];
  fetchedResultsController = v7->_fetchedResultsController;
  v7->_fetchedResultsController = v19;

  [(NSFetchedResultsController *)v7->_fetchedResultsController setDelegate:v7];
  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)generateReport:(id *)report
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  LOBYTE(report) = [fetchedResultsController performFetch:report];

  return report;
}

- (NSFetchedResultsController)installedAppsController
{
  v23[1] = *MEMORY[0x1E69E9840];
  installedAppsController = self->_installedAppsController;
  if (!installedAppsController)
  {
    v4 = +[STInstalledApp fetchRequest];
    [v4 setReturnsDistinctResults:1];
    v23[0] = @"bundleIdentifier";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v4 setPropertiesToFetch:v5];

    v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"bundleIdentifier" ascending:1];
    v22 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v4 setSortDescriptors:v7];

    v8 = MEMORY[0x1E696AE18];
    userDSID = [(STUsageReporter *)self userDSID];
    v10 = [v8 predicateWithFormat:@"%K == %@", @"userDeviceState.user.dsid", userDSID];
    [v4 setPredicate:v10];

    [v4 setShouldRefreshRefetchedObjects:1];
    v11 = objc_alloc(MEMORY[0x1E695D600]);
    fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
    managedObjectContext = [fetchedResultsController managedObjectContext];
    v14 = [v11 initWithFetchRequest:v4 managedObjectContext:managedObjectContext sectionNameKeyPath:0 cacheName:0];
    v15 = self->_installedAppsController;
    self->_installedAppsController = v14;

    [(NSFetchedResultsController *)self->_installedAppsController setDelegate:self];
    v16 = self->_installedAppsController;
    v21 = 0;
    LOBYTE(fetchedResultsController) = [(NSFetchedResultsController *)v16 performFetch:&v21];
    v17 = v21;
    if ((fetchedResultsController & 1) == 0)
    {
      v18 = +[STLog usage];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(STUsageReporter *)v17 installedAppsController];
      }
    }

    installedAppsController = self->_installedAppsController;
  }

  v19 = *MEMORY[0x1E69E9840];

  return installedAppsController;
}

- (double)totalScreenTime
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  [STUsageBlock totalScreenTimeForUsageBlocks:fetchedObjects];
  v5 = v4;

  return v5;
}

- (int64_t)totalPickups
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v4 = [STUsageBlock totalPickupsForUsageBlocks:fetchedObjects];

  return v4;
}

- (int64_t)totalNotifications
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v4 = [STUsageBlock totalNotificationsForUsageBlocks:fetchedObjects];

  return v4;
}

- (NSArray)categoryUsage
{
  _categoryUsageWithoutAllUsageItem = [(STUsageReporter *)self _categoryUsageWithoutAllUsageItem];
  v4 = [_categoryUsageWithoutAllUsageItem mutableCopy];

  if ([(STUsageReporter *)self includeTotalUsageDetailItem])
  {
    v5 = [[STUsageDetailItem alloc] initWithType:3 identifier:@"__AllCategories__"];
    [(STUsageReporter *)self totalScreenTime];
    *&v6 = v6;
    [(STUsageDetailItem *)v5 setQuantity:v6];
    [v4 insertObject:v5 atIndex:0];
  }

  return v4;
}

- (id)_categoryUsageWithoutAllUsageItem
{
  v11[1] = *MEMORY[0x1E69E9840];
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v4 = [STUsageBlock usageCategoriesForUsageBlocks:fetchedObjects];

  v5 = [STUsageCategory categoryItemsExcludingSystemCategories:v4];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"quantity" ascending:0];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)applicationAndWebUsage
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v5 = [STUsageBlock usageCategoriesForUsageBlocks:fetchedObjects];

  v6 = [STUsageCategory applicationAndWebItemsExcludingSystemHiddenApplications:v5];
  v7 = [v6 mutableCopy];

  if ([(STUsageReporter *)self includeTotalUsageDetailItem])
  {
    v8 = [[STUsageDetailItem alloc] initWithType:3 identifier:@"__AllApps__"];
    [(STUsageReporter *)self totalScreenTime];
    *&v9 = v9;
    [(STUsageDetailItem *)v8 setQuantity:v9];
    [v7 insertObject:v8 atIndex:0];
  }

  return v7;
}

- (NSArray)notifications
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v5 = [STUsageBlock usageCountedItemsForUsageBlocks:fetchedObjects];

  v6 = [STUsageCountedItem notificationItemsExcludingSystemHiddenApplications:v5];
  v7 = [v6 mutableCopy];

  installedBundleIdentifiers = [(STUsageReporter *)self installedBundleIdentifiers];
  v9 = installedBundleIdentifiers;
  if (installedBundleIdentifiers)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__STUsageReporter_notifications__block_invoke;
    v14[3] = &unk_1E7CE7DC0;
    v15 = installedBundleIdentifiers;
    v10 = [v7 indexesOfObjectsPassingTest:v14];
    [v7 removeObjectsAtIndexes:v10];
  }

  else
  {
    [(STUsageReporter *)self _updateInstalledBundleIdentifiers];
  }

  if ([(STUsageReporter *)self includeTotalUsageDetailItem])
  {
    v11 = [[STUsageDetailItem alloc] initWithType:3 identifier:@"__AllApps__"];
    *&v12 = [(STUsageReporter *)self totalNotifications];
    [(STUsageDetailItem *)v11 setQuantity:v12];
    [v7 insertObject:v11 atIndex:0];
  }

  return v7;
}

uint64_t __32__STUsageReporter_notifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (NSArray)pickups
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v5 = [STUsageBlock usageCountedItemsForUsageBlocks:fetchedObjects];

  v6 = [STUsageCountedItem pickupItemsExcludingSystemHiddenApplications:v5];
  v7 = [v6 mutableCopy];

  if ([(STUsageReporter *)self includeTotalUsageDetailItem])
  {
    v8 = [[STUsageDetailItem alloc] initWithType:3 identifier:@"__AllApps__"];
    *&v9 = [(STUsageReporter *)self totalPickups];
    [(STUsageDetailItem *)v8 setQuantity:v9];
    [v7 insertObject:v8 atIndex:0];
  }

  return v7;
}

- (id)screenTimeUsagePerCalendarUnit:(unint64_t)unit
{
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__STUsageReporter_screenTimeUsagePerCalendarUnit___block_invoke;
  v8[3] = &unk_1E7CE7DE8;
  v6 = v5;
  v9 = v6;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v8];

  return v6;
}

void __50__STUsageReporter_screenTimeUsagePerCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[STUsageDetailItem alloc] initWithType:1 identifier:@"__AllApps__"];
  v4 = [v3 valueForKeyPath:@"@sum.screenTimeInSeconds"];

  [v4 floatValue];
  [(STUsageDetailItem *)v5 setQuantity:?];

  [*(a1 + 32) addObject:v5];
}

- (id)categoryRatiosPerCalendarUnit:(unint64_t)unit numberOfCategories:(unint64_t)categories
{
  v23 = *MEMORY[0x1E69E9840];
  _categoryUsageWithoutAllUsageItem = [(STUsageReporter *)self _categoryUsageWithoutAllUsageItem];
  if ([_categoryUsageWithoutAllUsageItem count] >= 4)
  {
    v8 = [_categoryUsageWithoutAllUsageItem subarrayWithRange:{0, categories}];

    _categoryUsageWithoutAllUsageItem = v8;
  }

  v9 = objc_opt_new();
  v10 = [_categoryUsageWithoutAllUsageItem valueForKeyPath:@"identifier"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(STUsageReporter *)self _ratiosForCategory:*(*(&v18 + 1) + 8 * i) perCalendarUnit:unit useTotalScreenTime:0];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_ratiosForCategory:(id)category perCalendarUnit:(unint64_t)unit useTotalScreenTime:(BOOL)time
{
  categoryCopy = category;
  v9 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__STUsageReporter__ratiosForCategory_perCalendarUnit_useTotalScreenTime___block_invoke;
  v15[3] = &unk_1E7CE7E10;
  timeCopy = time;
  v16 = categoryCopy;
  v10 = v9;
  v17 = v10;
  v11 = categoryCopy;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __73__STUsageReporter__ratiosForCategory_perCalendarUnit_useTotalScreenTime___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0.0;
  v5 = 0.0;
  if (*(a1 + 48) == 1)
  {
    [STUsageBlock totalScreenTimeForUsageBlocks:v3];
    v5 = v6;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [STUsageBlock usageCategoriesForUsageBlocks:v3, 0];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 totalTimeInSeconds];
        v14 = [v12 identifier];
        v15 = [v14 isEqualToString:*(a1 + 32)];

        if (v15)
        {
          v4 = v4 + v13;
        }

        if (!*(a1 + 48))
        {
          v5 = v5 + v13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [[STUsageDetailItem alloc] initWithType:3 identifier:*(a1 + 32)];
  v18 = v16;
  if (v5 != 0.0)
  {
    if ((v4 / v5) <= 1.0)
    {
      v5 = v4 / v5;
    }

    else
    {
      v5 = 1.0;
    }
  }

  *&v17 = v5;
  [(STUsageDetailItem *)v16 setQuantity:v17];
  [*(a1 + 40) addObject:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)ratiosForApplication:(id)application perCalendarUnit:(unint64_t)unit
{
  applicationCopy = application;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__STUsageReporter_ratiosForApplication_perCalendarUnit___block_invoke;
  v13[3] = &unk_1E7CE7E38;
  v14 = applicationCopy;
  v8 = v7;
  v15 = v8;
  v9 = applicationCopy;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __56__STUsageReporter_ratiosForApplication_perCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = a2;
  obj = [STUsageBlock usageCategoriesForUsageBlocks:?];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v31;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 timedItems];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              v14 = [v13 totalTimeInSeconds];
              v15 = [v13 bundleIdentifier];
              v16 = [v15 isEqualToString:*(a1 + 32)];

              if (v16)
              {
                v5 = v5 + v14;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  [STUsageBlock totalScreenTimeForUsageBlocks:v23];
  v18 = v17;
  v19 = [[STUsageDetailItem alloc] initWithType:1 identifier:*(a1 + 32)];
  v21 = v19;
  if (v18 != 0.0)
  {
    if ((v5 / v18) <= 1.0)
    {
      v18 = v5 / v18;
    }

    else
    {
      v18 = 1.0;
    }
  }

  *&v20 = v18;
  [(STUsageDetailItem *)v19 setQuantity:v20];
  [*(a1 + 40) addObject:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (id)ratiosForWebDomain:(id)domain perCalendarUnit:(unint64_t)unit
{
  domainCopy = domain;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__STUsageReporter_ratiosForWebDomain_perCalendarUnit___block_invoke;
  v13[3] = &unk_1E7CE7E38;
  v14 = domainCopy;
  v8 = v7;
  v15 = v8;
  v9 = domainCopy;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __54__STUsageReporter_ratiosForWebDomain_perCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = a2;
  obj = [STUsageBlock usageCategoriesForUsageBlocks:?];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = *v31;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 timedItems];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              v14 = [v13 totalTimeInSeconds];
              v15 = [v13 domain];
              v16 = [v15 isEqualToString:*(a1 + 32)];

              if (v16)
              {
                v5 = v5 + v14;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
  }

  [STUsageBlock totalScreenTimeForUsageBlocks:v23];
  v18 = v17;
  v19 = [[STUsageDetailItem alloc] initWithType:2 identifier:*(a1 + 32)];
  v21 = v19;
  if (v18 != 0.0)
  {
    if ((v5 / v18) <= 1.0)
    {
      v18 = v5 / v18;
    }

    else
    {
      v18 = 1.0;
    }
  }

  *&v20 = v18;
  [(STUsageDetailItem *)v19 setQuantity:v20];
  [*(a1 + 40) addObject:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (id)pickupsPerCalendarUnit:(unint64_t)unit
{
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__STUsageReporter_pickupsPerCalendarUnit___block_invoke;
  v8[3] = &unk_1E7CE7DE8;
  v6 = v5;
  v9 = v6;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v8];

  return v6;
}

void __42__STUsageReporter_pickupsPerCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v7 = v7 + [v9 numberOfPickupsWithoutApplicationUsage];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 countedItems];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v7 = v7 + [*(*(&v18 + 1) + 8 * j) numberOfPickups];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v15 = [[STUsageDetailItem alloc] initWithType:1 identifier:@"__AllApps__"];
  *&v16 = v7;
  [(STUsageDetailItem *)v15 setQuantity:v16];
  [*(a1 + 32) addObject:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)pickupRatiosForApplication:(id)application perCalendarUnit:(unint64_t)unit
{
  applicationCopy = application;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__STUsageReporter_pickupRatiosForApplication_perCalendarUnit___block_invoke;
  v13[3] = &unk_1E7CE7E38;
  v14 = applicationCopy;
  v8 = v7;
  v15 = v8;
  v9 = applicationCopy;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __62__STUsageReporter_pickupRatiosForApplication_perCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v23 = *v29;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v5 = v5 + [v8 numberOfPickupsWithoutApplicationUsage];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v8 countedItems];
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              v15 = [v14 numberOfPickups];
              v16 = [v14 bundleIdentifier];
              v17 = [v16 isEqualToString:*(a1 + 32)];

              if (v17)
              {
                v6 = v6 + v15;
              }

              v5 = v5 + v15;
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  v18 = [[STUsageDetailItem alloc] initWithType:1 identifier:*(a1 + 32)];
  v19 = v18;
  *&v20 = v6 / v5;
  if (v5 == 0.0)
  {
    *&v20 = v5;
  }

  [(STUsageDetailItem *)v18 setQuantity:v20];
  [*(a1 + 40) addObject:v19];

  v21 = *MEMORY[0x1E69E9840];
}

- (NSDate)firstPickup
{
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v5 = [(STUsageReporter *)self _firstPickupFromUsageBlocks:fetchedObjects];

  return v5;
}

- (id)firstPickupOfIntervalWithMostPickups:(unint64_t *)pickups perCalendarUnit:(unint64_t)unit
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  *pickups = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__STUsageReporter_firstPickupOfIntervalWithMostPickups_perCalendarUnit___block_invoke;
  v6[3] = &unk_1E7CE7E60;
  v6[5] = &v7;
  v6[6] = pickups;
  v6[4] = self;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __72__STUsageReporter_firstPickupOfIntervalWithMostPickups_perCalendarUnit___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [STUsageBlock totalPickupsForUsageBlocks:?];
  v4 = *(a1 + 48);
  if (v3 > *v4)
  {
    *v4 = v3;
    v5 = [*(a1 + 32) _firstPickupFromUsageBlocks:v8];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_firstPickupFromUsageBlocks:(id)blocks
{
  blocksCopy = blocks;
  v4 = [blocksCopy indexOfObjectPassingTest:&__block_literal_global_19];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstPickupDate = 0;
  }

  else
  {
    v6 = [blocksCopy objectAtIndexedSubscript:v4];
    firstPickupDate = [v6 firstPickupDate];
  }

  return firstPickupDate;
}

BOOL __47__STUsageReporter__firstPickupFromUsageBlocks___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 firstPickupDate];
  v3 = v2 != 0;

  return v3;
}

- (id)notificationsPerCalendarUnit:(unint64_t)unit
{
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__STUsageReporter_notificationsPerCalendarUnit___block_invoke;
  v8[3] = &unk_1E7CE7DE8;
  v6 = v5;
  v9 = v6;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v8];

  return v6;
}

void __48__STUsageReporter_notificationsPerCalendarUnit___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [STUsageBlock usageCountedItemsForUsageBlocks:a2, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 = v7 + [*(*(&v12 + 1) + 8 * i) numberOfNotifications];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v9 = [[STUsageDetailItem alloc] initWithType:1 identifier:@"__AllApps__"];
  *&v10 = v7;
  [(STUsageDetailItem *)v9 setQuantity:v10];
  [*(a1 + 32) addObject:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)notificationRatiosForApplication:(id)application perCalendarUnit:(unint64_t)unit
{
  applicationCopy = application;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__STUsageReporter_notificationRatiosForApplication_perCalendarUnit___block_invoke;
  v13[3] = &unk_1E7CE7E38;
  v14 = applicationCopy;
  v8 = v7;
  v15 = v8;
  v9 = applicationCopy;
  [(STUsageReporter *)self _enumerateUsageBlocksWithUnitGranularity:unit block:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __68__STUsageReporter_notificationRatiosForApplication_perCalendarUnit___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [STUsageBlock usageCountedItemsForUsageBlocks:a2, 0];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 numberOfNotifications];
        v12 = [v10 bundleIdentifier];
        v13 = [v12 isEqualToString:*(a1 + 32)];

        if (v13)
        {
          v8 = v8 + v11;
        }

        v7 = v7 + v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v14 = [[STUsageDetailItem alloc] initWithType:1 identifier:*(a1 + 32)];
  v15 = v14;
  *&v16 = v8 / v7;
  if (v7 == 0.0)
  {
    *&v16 = v7;
  }

  [(STUsageDetailItem *)v14 setQuantity:v16];
  [*(a1 + 40) addObject:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateUsageBlocksWithUnitGranularity:(unint64_t)granularity block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v27 = [fetchedObjects mutableCopy];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  dateInterval = [(STUsageReporter *)self dateInterval];
  endDate = [dateInterval endDate];
  v23 = dateInterval;
  startDate = [dateInterval startDate];
  v25 = endDate;
  if ([startDate compare:endDate] == -1)
  {
    v24 = blockCopy;
    do
    {
      v12 = startDate;
      startDate = [currentCalendar dateByAddingUnit:granularity value:1 toDate:startDate options:512];
      v13 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v27;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        while (2)
        {
          granularityCopy = granularity;
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            startDate2 = [v20 startDate];
            if ([v12 compare:startDate2] == 1 || objc_msgSend(startDate2, "compare:", startDate) != -1)
            {

              granularity = granularityCopy;
              blockCopy = v24;
              goto LABEL_14;
            }

            [v13 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          granularity = granularityCopy;
          blockCopy = v24;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      blockCopy[2](blockCopy, v13);
      [v14 removeObjectsInArray:v13];
    }

    while ([startDate compare:v25] == -1);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  fetchedResultsController = [(STUsageReporter *)self fetchedResultsController];

  if (fetchedResultsController == contentCopy)
  {
    [(STUsageReporter *)self willChangeValueForKey:@"totalScreenTime"];
    [(STUsageReporter *)self willChangeValueForKey:@"totalNotifications"];
    [(STUsageReporter *)self willChangeValueForKey:@"totalPickups"];
    [(STUsageReporter *)self willChangeValueForKey:@"categoryUsage"];
    [(STUsageReporter *)self willChangeValueForKey:@"applicationAndWebUsage"];
    [(STUsageReporter *)self willChangeValueForKey:@"pickups"];
    [(STUsageReporter *)self willChangeValueForKey:@"notifications"];
    [(STUsageReporter *)self willChangeValueForKey:@"firstPickup"];
    [(STUsageReporter *)self didChangeValueForKey:@"totalScreenTime"];
    [(STUsageReporter *)self didChangeValueForKey:@"totalNotifications"];
    [(STUsageReporter *)self didChangeValueForKey:@"totalPickups"];
    [(STUsageReporter *)self didChangeValueForKey:@"categoryUsage"];
    [(STUsageReporter *)self didChangeValueForKey:@"applicationAndWebUsage"];
    [(STUsageReporter *)self didChangeValueForKey:@"pickups"];
    [(STUsageReporter *)self didChangeValueForKey:@"notifications"];
    [(STUsageReporter *)self didChangeValueForKey:@"firstPickup"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UsageReporterDidChangeContent" object:self];
  }

  else
  {
    installedAppsController = [(STUsageReporter *)self installedAppsController];

    v6 = contentCopy;
    if (installedAppsController != contentCopy)
    {
      goto LABEL_6;
    }

    [(STUsageReporter *)self _updateInstalledBundleIdentifiers];
  }

  v6 = contentCopy;
LABEL_6:
}

- (void)_updateInstalledBundleIdentifiers
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  installedAppsController = [(STUsageReporter *)self installedAppsController];
  fetchedObjects = [installedAppsController fetchedObjects];

  v6 = [fetchedObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(fetchedObjects);
        }

        bundleIdentifier = [*(*(&v18 + 1) + 8 * v9) bundleIdentifier];
        [v3 addObject:bundleIdentifier];

        ++v9;
      }

      while (v7 != v9);
      v7 = [fetchedObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  mEMORY[0x1E6993B98] = [MEMORY[0x1E6993B98] sharedCategories];
  array = [v3 array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke;
  v15[3] = &unk_1E7CE7290;
  v16 = v3;
  selfCopy = self;
  v13 = v3;
  [mEMORY[0x1E6993B98] categoriesForBundleIDs:array completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke_2;
    v14[3] = &unk_1E7CE7EA8;
    v15 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
    v7 = v15;
  }

  else
  {
    v7 = +[STLog usage];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke_cold_1(v6, v7);
    }
  }

  v8 = [*(a1 + 32) set];
  v9 = [*(a1 + 40) installedBundleIdentifiers];
  v10 = [v9 isEqualToSet:v8];

  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696ADC8] mainQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke_69;
    v12[3] = &unk_1E7CE7AA0;
    v12[4] = *(a1 + 40);
    v13 = v8;
    [v11 addOperationWithBlock:v12];
  }
}

void __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 equivalentBundleIdentifiers];
  [v3 addObjectsFromArray:v4];
}

- (void)installedAppsController
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch installed apps: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __52__STUsageReporter__updateInstalledBundleIdentifiers__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch categories for installed apps: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end