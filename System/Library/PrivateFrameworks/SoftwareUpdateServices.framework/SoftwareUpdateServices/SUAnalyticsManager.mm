@interface SUAnalyticsManager
+ (id)sharedManager;
+ (id)sharedManagerWithPath:(id)path;
- (BOOL)_queue_submitAllEvents;
- (BOOL)_queue_submitEvent:(id)event;
- (BOOL)saveEventToDisk:(id)disk;
- (BOOL)submitAllEvents;
- (BOOL)submitEvent:(id)event;
- (BOOL)submitEventsWithName:(id)name;
- (NSDictionary)events;
- (SUAnalyticsManager)init;
- (SUAnalyticsManager)initWithPath:(id)path;
- (id)copyEventFromPath:(id)path;
- (id)coreAnalyticEventforSUAnalyticEvent:(id)event;
- (void)_queue_setEvent:(id)event;
- (void)removeAllEvents;
- (void)removeEvent:(id)event;
- (void)removeEventsWithName:(id)name;
- (void)setEvent:(id)event;
@end

@implementation SUAnalyticsManager

- (SUAnalyticsManager)init
{
  v10.receiver = self;
  v10.super_class = SUAnalyticsManager;
  v2 = [(SUAnalyticsManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SUServices.SUCoreAnalyticsManagerQueue", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277D64160]);
    coreEventSubmitter = v2->_coreEventSubmitter;
    v2->_coreEventSubmitter = v6;

    savePath = v2->_savePath;
    v2->_savePath = @"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/";
  }

  return v2;
}

- (SUAnalyticsManager)initWithPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = SUAnalyticsManager;
  v6 = [(SUAnalyticsManager *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SUServices.SUCoreAnalyticsManagerQueue", v7);
    stateQueue = v6->_stateQueue;
    v6->_stateQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277D64160]);
    coreEventSubmitter = v6->_coreEventSubmitter;
    v6->_coreEventSubmitter = v10;

    objc_storeStrong(&v6->_savePath, path);
  }

  return v6;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SUAnalyticsManager sharedManager];
  }

  v3 = sharedManager___manager;

  return v3;
}

void __35__SUAnalyticsManager_sharedManager__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v0 fileExistsAtPath:@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/"])
  {
    v1 = 0;
  }

  else
  {
    v11 = 0;
    [v0 createDirectoryAtPath:@"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/" withIntermediateDirectories:1 attributes:0 error:&v11];
    v1 = v11;
    if (v1)
    {
      v2 = SULogAnalytics();
      SULogErrorForSubsystem(v2, @"Failed to create directory %@ for SUCoreAnalytics: %@", v3, v4, v5, v6, v7, v8, @"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/");
    }
  }

  v9 = objc_alloc_init(SUAnalyticsManager);
  v10 = sharedManager___manager;
  sharedManager___manager = v9;
}

+ (id)sharedManagerWithPath:(id)path
{
  pathCopy = path;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUAnalyticsManager_sharedManagerWithPath___block_invoke;
  block[3] = &unk_279CAA708;
  v10 = pathCopy;
  v4 = sharedManagerWithPath__onceToken;
  v5 = pathCopy;
  if (v4 != -1)
  {
    dispatch_once(&sharedManagerWithPath__onceToken, block);
  }

  v6 = sharedManagerWithPath____manager;
  v7 = sharedManagerWithPath____manager;

  return v6;
}

void __44__SUAnalyticsManager_sharedManagerWithPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"/var/MobileSoftwareUpdate/Controller/SUCoreAnalytics/";
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = 0;
  }

  else
  {
    v15 = 0;
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v15];
    v5 = v15;
    if (v5)
    {
      v6 = SULogAnalytics();
      SULogErrorForSubsystem(v6, @"Failed to create directory %@ for SUCoreAnalytics: %@", v7, v8, v9, v10, v11, v12, v3);
    }
  }

  v13 = [[SUAnalyticsManager alloc] initWithPath:*(a1 + 32)];
  v14 = sharedManagerWithPath____manager;
  sharedManagerWithPath____manager = v13;
}

- (id)copyEventFromPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  v5 = [defaultManager attributesOfItemAtPath:pathCopy error:&v42];
  v6 = v42;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *MEMORY[0x277CCA1E0];
  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
  if (!v10 || (v11 = v10, [v5 objectForKeyedSubscript:v9], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCA1F0]), v12, v11, (v13 & 1) != 0))
  {
    v41 = 0;
    v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:pathCopy options:0 error:&v41];
    v15 = v41;
    v7 = v15;
    if (!v14 || v15)
    {
      v18 = SULogAnalytics();
      SULogErrorForSubsystem(v18, @"Failed to read contents of event file: %@ (%@)", v26, v27, v28, v29, v30, v31, pathCopy);
      v19 = 0;
    }

    else
    {
      v40 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v40];
      v17 = v40;
      v18 = v17;
      if (!v16 || v17)
      {
        v32 = SULogAnalytics();
        SULogErrorForSubsystem(v32, @"Invalid event data for :%@ (%@)", v33, v34, v35, v36, v37, v38, pathCopy);

        v19 = 0;
      }

      else
      {
        v19 = v16;
      }
    }
  }

  else
  {
LABEL_13:
    v14 = SULogAnalytics();
    SULogErrorForSubsystem(v14, @"Invalid file type found for even at path: %@ [%@] (skipping)", v20, v21, v22, v23, v24, v25, pathCopy);
    v19 = 0;
  }

  return v19;
}

- (BOOL)saveEventToDisk:(id)disk
{
  diskCopy = disk;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUAnalyticsManager_saveEventToDisk___block_invoke;
  block[3] = &unk_279CAC0F8;
  v9 = diskCopy;
  v10 = &v11;
  block[4] = self;
  v6 = diskCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(diskCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return diskCopy;
}

void __38__SUAnalyticsManager_saveEventToDisk___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    v31 = SULogAnalytics();
    v38 = v31;
    v39 = @"Save called on object with no path specified";
    goto LABEL_9;
  }

  v2 = [*(a1 + 40) eventUUID];
  if (!v2 || (v3 = v2, [*(a1 + 40) eventName], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v31 = SULogAnalytics();
    v38 = v31;
    v39 = @"Invalid event passed to saveEvent.Skipping";
LABEL_9:
    SULogErrorForSubsystem(v31, v39, v32, v33, v34, v35, v36, v37, v49);

    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd-HH:mm:ss.SSS"];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 stringFromDate:v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = [*(a1 + 40) eventName];
  v10 = [*(a1 + 40) eventUUID];
  v11 = [v8 stringWithFormat:@"%@_%@_%@%s", v7, v9, v10, ".suanalytics"];

  v12 = [*(*(a1 + 32) + 24) stringByAppendingPathComponent:v11];
  v13 = SULogAnalytics();
  v14 = [*(a1 + 40) eventName];
  v51 = [*(a1 + 40) eventUUID];
  SULogInfoForSubsystem(v13, @"Saving event %@:%@ to %@", v15, v16, v17, v18, v19, v20, v14);

  v21 = *(a1 + 40);
  v52 = 0;
  v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v52];
  v23 = v52;
  if (v22 && ([v22 writeToFile:v12 atomically:1] & 1) != 0)
  {
    v24 = SULogAnalytics();
    SULogInfoForSubsystem(v24, @"Successfully saved event", v25, v26, v27, v28, v29, v30, v50);

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v40 = SULogAnalytics();
    v47 = v40;
    v48 = @"Unknown Archiver Error";
    if (v23)
    {
      v48 = v23;
    }

    SULogErrorForSubsystem(v40, @"Unable to save SU coreanalytics event(%@)", v41, v42, v43, v44, v45, v46, v48);
  }
}

- (void)setEvent:(id)event
{
  stateQueue = self->_stateQueue;
  eventCopy = event;
  dispatch_assert_queue_not_V2(stateQueue);
  [(SUAnalyticsManager *)self saveEventToDisk:eventCopy];
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUAnalyticsManager_removeEvent___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __34__SUAnalyticsManager_removeEvent___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) savePath];
  v39 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v39];
  v5 = v39;

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v32 = v2;
    v7 = [v4 sortedArrayUsingSelector:sel_compare_];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v6 = 0;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = MEMORY[0x277CCACA8];
          v14 = [*(a1 + 40) eventName];
          v15 = [*(a1 + 40) eventUUID];
          v16 = [v13 stringWithFormat:@"%@_%@%s", v14, v15, ".suanalytics"];
          v17 = [v12 hasSuffix:v16];

          if (v17)
          {
            v18 = [*(*(a1 + 32) + 24) stringByAppendingPathComponent:v12];

            v6 = v18;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    else
    {
      v6 = 0;
    }

    v4 = obj;

    v5 = 0;
    v2 = v32;
  }

  v19 = v4;
  if ([v2 fileExistsAtPath:v6])
  {
    v34 = 0;
    v20 = [v2 removeItemAtPath:v6 error:&v34];
    v21 = v34;
    if ((v20 & 1) == 0)
    {
      v22 = SULogAnalytics();
      v23 = [*(a1 + 40) eventName];
      v24 = [*(a1 + 40) eventUUID];
      SULogErrorForSubsystem(v22, @"Unable to remove event %@ : %@ : %@", v25, v26, v27, v28, v29, v30, v23);
    }
  }

  else
  {
    v21 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)removeEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUAnalyticsManager_removeEventsWithName___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(stateQueue, v7);
}

void __43__SUAnalyticsManager_removeEventsWithName___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) savePath];
  v27 = v2;
  v4 = [v2 enumeratorAtPath:v3];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if ([v10 hasSuffix:@".suanalytics"])
        {
          v11 = [*(a1 + 32) savePath];
          v12 = [v11 stringByAppendingPathComponent:v10];

          v13 = [*(a1 + 32) copyEventFromPath:v12];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 eventName];
            v16 = [v15 isEqualToString:*(a1 + 40)];

            if (v16)
            {
              v28 = 0;
              [v27 removeItemAtPath:v12 error:&v28];
              v17 = v28;
              v18 = SULogAnalytics();
              v25 = v18;
              if (v17)
              {
                SULogErrorForSubsystem(v18, @"Unable to remove event file %@: %@", v19, v20, v21, v22, v23, v24, v12);

                v25 = v17;
              }

              else
              {
                SULogInfoForSubsystem(v18, @"Succssfully removed event file %@", v19, v20, v21, v22, v23, v24, v12);
              }
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)removeAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUAnalyticsManager_removeAllEvents__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __37__SUAnalyticsManager_removeAllEvents__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = a1;
  v4 = [*(a1 + 32) savePath];
  v25 = v2;
  v5 = [v2 enumeratorAtPath:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if ([v11 hasSuffix:@".suanalytics"])
        {
          v12 = [*(v3 + 32) savePath];
          v13 = [v12 stringByAppendingPathComponent:v11];

          v26 = 0;
          v14 = [v25 removeItemAtPath:v13 error:&v26];
          v15 = v26;
          v16 = SULogAnalytics();
          v23 = v16;
          if (v14)
          {
            SULogInfoForSubsystem(v16, @"Successfully removed event file %@", v17, v18, v19, v20, v21, v22, v13);
          }

          else
          {
            SULogErrorForSubsystem(v16, @"Unable to remove event file %@: %@", v17, v18, v19, v20, v21, v22, v13);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUAnalyticsManager_submitEvent___block_invoke;
  block[3] = &unk_279CABAB0;
  block[4] = self;
  v9 = eventCopy;
  v10 = &v11;
  v6 = eventCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(eventCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return eventCopy;
}

void __34__SUAnalyticsManager_submitEvent___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v4 = [*(a1 + 32) savePath];
  v53 = v2;
  v5 = [v2 enumeratorAtPath:v4];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = MEMORY[0x277CCACA8];
        v12 = [*(a1 + 40) eventName];
        v13 = [*(a1 + 40) eventUUID];
        v14 = [v11 stringWithFormat:@"%@_%@%s", v12, v13, ".suanalytics"];
        v15 = [v10 hasSuffix:v14];

        if (v15)
        {
          v16 = [*(*(a1 + 32) + 24) stringByAppendingPathComponent:v10];

          v3 = v16;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v7);
  }

  v17 = v3;
  if (![v53 fileExistsAtPath:v3])
  {
    v18 = SULogAnalytics();
    v28 = [*(a1 + 40) eventName];
    v51 = [*(a1 + 40) eventUUID];
    SULogErrorForSubsystem(v18, @"Event %@ with uuid %@ does not exist", v29, v30, v31, v32, v33, v34, v28);

    v35 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v18 = [*(a1 + 32) copyEventFromPath:v3];
  if (v18)
  {
    [*(a1 + 32) _queue_setEvent:v18];
    v19 = [*(a1 + 32) _queue_submitEvent:v18];
    v20 = SULogAnalytics();
    v27 = v20;
    if (v19)
    {
      SULogInfoForSubsystem(v20, @"Submitted event %@\n", v21, v22, v23, v24, v25, v26, v18);

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      SULogErrorForSubsystem(v20, @"Failed to submit event %@\n", v21, v22, v23, v24, v25, v26, v18);
    }
  }

  else
  {
    v36 = SULogAnalytics();
    v37 = [*(a1 + 40) eventName];
    v52 = [*(a1 + 40) eventUUID];
    SULogErrorForSubsystem(v36, @"Unable to find/reconstruct stashed event for event %@ with uuid %@", v38, v39, v40, v41, v42, v43, v37);
  }

  v55 = 0;
  [v53 removeItemAtPath:v17 error:&v55];
  v35 = v55;
  if (v35)
  {
    v28 = SULogAnalytics();
    SULogErrorForSubsystem(v28, @"Failed to remove event file after event submission %@: %@", v44, v45, v46, v47, v48, v49, v17);
    goto LABEL_19;
  }

LABEL_20:

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUAnalyticsManager_submitEventsWithName___block_invoke;
  block[3] = &unk_279CAC0F8;
  selfCopy = self;
  v11 = &v12;
  v9 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(stateQueue, block);
  LOBYTE(nameCopy) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return nameCopy;
}

void __43__SUAnalyticsManager_submitEventsWithName___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [*(a1 + 40) savePath];
    v40 = v2;
    v4 = [v2 enumeratorAtPath:v3];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (!v6)
    {
      v41 = 0;
      goto LABEL_22;
    }

    v7 = v6;
    v41 = 0;
    v8 = *v44;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = [*(*(a1 + 40) + 24) stringByAppendingPathComponent:v10];
        if ([v10 hasSuffix:@".suanalytics"])
        {
          v12 = [*(a1 + 40) copyEventFromPath:v11];
          v13 = v12;
          if (!v12)
          {
            goto LABEL_14;
          }

          v14 = [v12 eventName];
          v15 = [v14 isEqualToString:*(a1 + 32)];

          if (!v15)
          {
            goto LABEL_14;
          }

          [*(a1 + 40) _queue_setEvent:v13];
          if (([*(a1 + 40) _queue_submitEvent:v13] & 1) == 0)
          {
            v23 = SULogAnalytics();
            SULogErrorForSubsystem(v23, @"Failed to submit event %@\n", v24, v25, v26, v27, v28, v29, v13);

            *(*(*(a1 + 48) + 8) + 24) = 0;
            goto LABEL_14;
          }

          v42 = v41;
          [v40 removeItemAtPath:v11 error:&v42];
          v16 = v42;

          if (v16)
          {
            v13 = SULogAnalytics();
            SULogErrorForSubsystem(v13, @"Failed to remove event file %@: %@", v17, v18, v19, v20, v21, v22, v11);
            v41 = v16;
LABEL_14:

            goto LABEL_15;
          }

          v41 = 0;
        }

LABEL_15:

        ++v9;
      }

      while (v7 != v9);
      v30 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v7 = v30;
      if (!v30)
      {
LABEL_22:

        goto LABEL_23;
      }
    }
  }

  v31 = SULogAnalytics();
  SULogErrorForSubsystem(v31, @"Invalid event name passed to submitEventWithName", v32, v33, v34, v35, v36, v37, v39);

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_23:
  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitAllEvents
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = selfCopy->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SUAnalyticsManager_submitAllEvents__block_invoke;
  v5[3] = &unk_279CAA948;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __37__SUAnalyticsManager_submitAllEvents__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) savePath];
  v38 = v2;
  v4 = [v2 enumeratorAtPath:v3];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        if ([v10 hasSuffix:@".suanalytics"])
        {
          v11 = [*(a1 + 32) savePath];
          v12 = [v11 stringByAppendingPathComponent:v10];

          v13 = [*(a1 + 32) copyEventFromPath:v12];
          if (v13)
          {
            [*(a1 + 32) _queue_setEvent:v13];
            v39 = 0;
            [v38 removeItemAtPath:v12 error:&v39];
            v14 = v39;
            if (v14)
            {
              v15 = v14;
              v16 = SULogAnalytics();
              SULogErrorForSubsystem(v16, @"Failed to remove event file after event submission %@: %@", v17, v18, v19, v20, v21, v22, v12);
              goto LABEL_12;
            }
          }

          else
          {
            v23 = SULogAnalytics();
            SULogErrorForSubsystem(v23, @"Unable to read event at %@ for submission..Removing and moving on", v24, v25, v26, v27, v28, v29, v12);

            v40 = 0;
            [v38 removeItemAtPath:v12 error:&v40];
            v30 = v40;
            if (v30)
            {
              v15 = v30;
              v16 = SULogAnalytics();
              SULogErrorForSubsystem(v16, @"Failed to remove event file %@: %@", v31, v32, v33, v34, v35, v36, v12);
LABEL_12:
            }
          }

          continue;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v7);
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _queue_submitAllEvents];
  v37 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)events
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__11;
  v11 = __Block_byref_object_dispose__11;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__SUAnalyticsManager_events__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __28__SUAnalyticsManager_events__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) events];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_setEvent:(id)event
{
  stateQueue = self->_stateQueue;
  eventCopy = event;
  dispatch_assert_queue_V2(stateQueue);
  coreEventSubmitter = self->_coreEventSubmitter;
  v7 = [(SUAnalyticsManager *)self coreAnalyticEventforSUAnalyticEvent:eventCopy];

  [(SUCoreAnalyticsEventSubmitter *)coreEventSubmitter setEvent:v7];
}

- (BOOL)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  coreEventSubmitter = self->_coreEventSubmitter;

  return [(SUCoreAnalyticsEventSubmitter *)coreEventSubmitter submitAllEvents];
}

- (BOOL)_queue_submitEvent:(id)event
{
  stateQueue = self->_stateQueue;
  eventCopy = event;
  dispatch_assert_queue_V2(stateQueue);
  coreEventSubmitter = self->_coreEventSubmitter;
  v7 = [(SUAnalyticsManager *)self coreAnalyticEventforSUAnalyticEvent:eventCopy];

  LOBYTE(coreEventSubmitter) = [(SUCoreAnalyticsEventSubmitter *)coreEventSubmitter submitEvent:v7];
  return coreEventSubmitter;
}

- (id)coreAnalyticEventforSUAnalyticEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = objc_alloc(MEMORY[0x277D64158]);
  eventName = [eventCopy eventName];
  v6 = [v4 initWithEventName:eventName];

  eventUUID = [eventCopy eventUUID];
  [v6 setEventUUID:eventUUID];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  eventPayload = [eventCopy eventPayload];
  v9 = [eventPayload countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(eventPayload);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        eventPayload2 = [eventCopy eventPayload];
        v15 = [eventPayload2 objectForKey:v13];
        [v6 setEventPayloadEntry:v13 value:v15];
      }

      v10 = [eventPayload countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

@end