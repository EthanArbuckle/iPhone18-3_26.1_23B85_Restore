@interface PGMemoryNotificationHelper
+ (BOOL)memoriesOfTheDayAreWorthNotifyingWithPhotoLibrary:(id)a3;
+ (id)_memoryFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)lastTriggeredNotificationDateWithPhotoLibrary:(id)a3;
+ (id)nextPossibleNotificationDateWithPhotoLibrary:(id)a3;
@end

@implementation PGMemoryNotificationHelper

+ (id)_memoryFetchOptionsWithPhotoLibrary:(id)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [a3 librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID" ascending:0];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setSortDescriptors:v6];

  [v3 setIncludePendingMemories:0];
  [v3 setIncludeRejectedMemories:1];
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)memoriesOfTheDayAreWorthNotifyingWithPhotoLibrary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 startOfDayForDate:v5];

  v8 = [a1 _memoryFetchOptionsWithPhotoLibrary:v4];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d && (%K >= %@) && (%K <= %@)", @"category", 401, @"creationDate", v7, @"creationDate", v5];
  [v8 setPredicate:v9];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 isGreat] & 1) != 0 || (objc_msgSend(v15, "isStellar") & 1) != 0 || (objc_msgSend(v15, "isMustSee"))
        {
          v16 = 1;
          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)lastTriggeredNotificationDateWithPhotoLibrary:(id)a3
{
  v3 = [a1 _memoryFetchOptionsWithPhotoLibrary:a3];
  [v3 setFetchLimit:1];
  [v3 setChunkSizeForFetch:100];
  [v3 setCacheSizeForFetch:{objc_msgSend(v3, "chunkSizeForFetch")}];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %d", @"notificationState", 0];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
  v6 = [v5 firstObject];
  v7 = [v6 creationDate];

  return v7;
}

+ (id)nextPossibleNotificationDateWithPhotoLibrary:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [a1 _memoryFetchOptionsWithPhotoLibrary:v4];
  [v6 setChunkSizeForFetch:100];
  [v6 setCacheSizeForFetch:{objc_msgSend(v6, "chunkSizeForFetch")}];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"category", 401];
  [v6 setPredicate:v7];

  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v46 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v44 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v43 + 1) + 8 * v12);
      if ([v13 category] != 101)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = [v13 creationDate];

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v15 = [v5 objectForKey:@"PGManagerNotificationUserDefaultsDateOfFirstTimeUsage"];
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    [v5 setObject:v14 forKey:@"PGManagerNotificationUserDefaultsDateOfFirstTimeUsage"];
  }

LABEL_14:
  v16 = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [MEMORY[0x277CBEAA8] date];
  if ([v16 isDateInWeekend:v17])
  {
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Memories Notification generated over the weekend, special time interval between notification applied.", buf, 2u);
    }

    v20 = 259200.0;
  }

  else
  {
    v20 = 518400.0;
  }

  v21 = [v5 objectForKey:@"PGManagerNotificationUserDefaultsRegularTimeIntervalBeforeNotifying"];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
    v20 = v23;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v37 = v4;
    v27 = *v39;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        if ([*(*(&v38 + 1) + 8 * i) notificationState] == 1)
        {
          v29 = [v5 objectForKey:@"PGManagerNotificationUserDefaultsExtendedTimeIntervalBeforeNotifying"];
          v30 = v29;
          if (v29)
          {
            [v29 doubleValue];
            v20 = v31;
          }

          else
          {
            v20 = 2592000.0;
          }

          v32 = +[PGLogging sharedLogging];
          v33 = [v32 loggingConnection];

          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Extending notification time interval because one or more memories are still in the state PHMemoryNotificationStateRequested", buf, 2u);
          }

          goto LABEL_36;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_36:
    v4 = v37;
  }

  v34 = [v14 dateByAddingTimeInterval:v20];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

@end