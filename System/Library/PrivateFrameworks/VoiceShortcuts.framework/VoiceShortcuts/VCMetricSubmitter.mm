@interface VCMetricSubmitter
+ (id)activityIdentifier;
+ (void)performWithDatabaseProvider:(id)a3;
+ (void)scheduleWithDatabaseProvider:(id)a3;
+ (void)scheduleWithScheduler:(id)a3 databaseProvider:(id)a4;
- (BOOL)addWidgetMetricsToEvent:(id)a3 error:(id *)a4;
- (BOOL)hasSeenAutoShortcutsSections;
- (BOOL)homeAutomationsPresent:(id *)a3;
- (BOOL)isAppInstalled;
- (BOOL)isSleepEnabled;
- (VCMetricSubmitter)initWithCheckIn:(id)a3 event:(id)a4 databaseProvider:(id)a5;
- (VCMetricSubmitter)initWithDatabaseProvider:(id)a3;
- (int)coherenceSyncEnablementStatus:(id)a3;
- (unsigned)averageShortcutCountPerFolder:(id)a3;
- (unsigned)folderCount:(id)a3;
- (unsigned)numberOfAppSessions:(id *)a3;
- (unsigned)numberOfPersonalAutomationsEnabled:(id)a3;
- (unsigned)numberOfShortcutRuns:(id)a3;
- (unsigned)sleepShortcutCount:(id)a3;
- (unsigned)uncategorizedShortcutCount:(id)a3;
- (unsigned)watchShortcutCount:(id)a3;
- (void)perform;
@end

@implementation VCMetricSubmitter

- (int)coherenceSyncEnablementStatus:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D7C230] isSyncEnabled])
  {
    v4 = [MEMORY[0x277CBEBD0] syncShortcutsUserDefaults];
    v5 = [v4 BOOLForKey:*MEMORY[0x277D7D000]];

    if (v5)
    {
      v6 = 4;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__1358;
      v23 = __Block_byref_object_dispose__1359;
      v24 = 0;
      v7 = dispatch_semaphore_create(0);
      v8 = WFShortcutsCloudKitContainer();
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __51__VCMetricSubmitter_coherenceSyncEnablementStatus___block_invoke;
      v16 = &unk_2788FE848;
      v18 = &v19;
      v9 = v7;
      v17 = v9;
      [v8 accountInfoWithCompletionHandler:&v13];
      v10 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v9, v10);
      v11 = v20[5];
      if (v11 && [v11 accountStatus] == 1)
      {
        if ([v3 coherenceSyncEnabled])
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 5;
      }

      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
    v6 = 5;
  }

  return v6;
}

void __51__VCMetricSubmitter_coherenceSyncEnablementStatus___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)addWidgetMetricsToEvent:(id)a3 error:(id *)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(getATXHomeScreenConfigCacheClass());
  v54 = 0;
  v7 = [v6 loadHomeScreenAndTodayPageConfigurationsWithError:&v54];
  v8 = v54;
  v9 = v8;
  if (v7)
  {
    v27 = v8;
    v28 = v7;
    v30 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v7;
    v33 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    v29 = v6;
    v10 = 0;
    if (v33)
    {
      v40 = 0;
      v41 = 0;
      v39 = 0;
      v32 = *v51;
      v11 = *MEMORY[0x277D7A338];
      do
      {
        v12 = 0;
        do
        {
          if (*v51 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v12;
          v13 = *(*(&v50 + 1) + 8 * v12);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v35 = [v13 stacks];
          v37 = [v35 countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v37)
          {
            v36 = *v47;
            do
            {
              v14 = 0;
              do
              {
                if (*v47 != v36)
                {
                  objc_enumerationMutation(v35);
                }

                v38 = v14;
                v15 = *(*(&v46 + 1) + 8 * v14);
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v16 = [v15 widgets];
                v17 = [v16 countByEnumeratingWithState:&v42 objects:v55 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v43;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v43 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = *(*(&v42 + 1) + 8 * i);
                      v22 = [v21 appBundleId];
                      v23 = [v21 extensionBundleId];
                      if (v22 | v23 && (([v22 isEqualToString:v11] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"Shortcuts")))
                      {
                        v24 = [v15 stackLayoutSize];
                        switch(v24)
                        {
                          case 2:
                            ++v41;
                            break;
                          case 1:
                            ++v40;
                            break;
                          case 0:
                            ++v39;
                            break;
                        }

                        if ([v13 pageIndex] == 20000)
                        {
                          ++v10;
                        }
                      }
                    }

                    v18 = [v16 countByEnumeratingWithState:&v42 objects:v55 count:16];
                  }

                  while (v18);
                }

                v14 = v38 + 1;
              }

              while (v38 + 1 != v37);
              v37 = [v35 countByEnumeratingWithState:&v46 objects:v56 count:16];
            }

            while (v37);
          }

          v12 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v33);
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v39 = 0;
    }

    v5 = v30;
    [v30 setNumberOfSmallWidgets:?];
    [v30 setNumberOfMediumWidgets:v40];
    [v30 setNumberOfLargeWidgets:v41];
    [v30 setNumberOfWidgetsOnHomeScreen:(v41 - v10 + v40 + v39)];
    [v30 setNumberOfWidgetsOnLoL:v10];
    v7 = v28;
    v6 = v29;
    v9 = v27;
  }

  else
  {
    *a4 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:213456 underlyingError:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (unsigned)sleepShortcutCount:(id)a3
{
  v3 = [a3 sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A8A8]];
  v4 = [v3 count];

  return v4;
}

- (unsigned)numberOfAppSessions:(id *)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = [(VCMetricSubmitter *)self checkIn];
  v5 = MEMORY[0x277CCA920];
  v6 = MEMORY[0x277CFE260];
  v7 = [v4 intervalStartDate];
  v8 = [v4 currentDate];
  v9 = [v6 predicateForEventsWithStartOrEndInDateRangeWithFrom:v7 to:v8];
  v30[0] = v9;
  v10 = MEMORY[0x277CFE260];
  v11 = [MEMORY[0x277CFE1A8] withBundle:*MEMORY[0x277D7A338]];
  v12 = [v10 predicateForEventsWithIdentifierValue:v11];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v14 = [v5 andPredicateWithSubpredicates:v13];

  v15 = MEMORY[0x277CFE1E0];
  v16 = [MEMORY[0x277CFE298] appInFocusStream];
  v29 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v18 = [v15 eventQueryWithPredicate:v14 eventStreams:v17 offset:0 limit:0 sortDescriptors:MEMORY[0x277CBEBF8]];

  [v18 setResultType:1];
  [v18 setReadMetadata:0];
  v19 = [MEMORY[0x277CFE208] knowledgeStore];
  v28 = 0;
  v20 = [v19 executeQuery:v18 error:&v28];
  v21 = v28;

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [v23 firstObject];

  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v25 = [v24 unsignedIntValue];
  }

  else
  {

    [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1296357 underlyingError:v21];
    *a3 = v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (unsigned)numberOfShortcutRuns:(id)a3
{
  v4 = a3;
  v5 = [(VCMetricSubmitter *)self checkIn];
  v6 = [v5 intervalStartDate];
  v7 = [v5 currentDate];
  v8 = [v4 sortedRunEventsWithSource:0 startDate:v6 endDate:v7];

  LODWORD(v4) = [v8 count];
  return v4;
}

- (unsigned)numberOfPersonalAutomationsEnabled:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v3];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [v4 allConfiguredTriggers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__VCMetricSubmitter_numberOfPersonalAutomationsEnabled___block_invoke;
  v7[3] = &unk_2788FE820;
  v7[4] = &v8;
  [v5 enumerateObjectsUsingBlock:v7];

  LODWORD(v5) = *(v9 + 6);
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __56__VCMetricSubmitter_numberOfPersonalAutomationsEnabled___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEnabled];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (unsigned)folderCount:(id)a3
{
  v3 = [a3 sortedVisibleFolders];
  v4 = [v3 count];

  return v4;
}

- (unsigned)watchShortcutCount:(id)a3
{
  v3 = MEMORY[0x277D7A1F8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithWorkflowType:*MEMORY[0x277D7A8B0]];
  v7 = [v4 sortedWorkflowsWithQuery:v6];

  LODWORD(v4) = [v7 count];
  return v4;
}

- (unsigned)uncategorizedShortcutCount:(id)a3
{
  v3 = MEMORY[0x277D7A1F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithLocation:1];
  v6 = [v4 sortedWorkflowsWithQuery:v5];

  LODWORD(v4) = [v6 count];
  return v4;
}

- (unsigned)averageShortcutCountPerFolder:(id)a3
{
  v3 = a3;
  v4 = [v3 sortedVisibleFolders];
  v5 = [v4 count];

  if (v5)
  {
    v5 = [v3 countOfWorkflowsInAFolder] / v5;
  }

  return v5;
}

- (BOOL)homeAutomationsPresent:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D7C4F0] sharedManager];
  if ([v4 status] == 1)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A388] code:90210 userInfo:0];
    *a3 = v5 = 0;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v4;
    v6 = [v4 homesToWhichWeCanAddHomeAutomations];
    v24 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v24)
    {
      v7 = *v33;
      v26 = v6;
      v23 = *v33;
      do
      {
        v8 = 0;
        do
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v6);
          }

          v25 = v8;
          v9 = *(*(&v32 + 1) + 8 * v8);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v10 = [v9 triggers];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v28 + 1) + 8 * i);
                v16 = v15;
                if (v15)
                {
                  if ([v15 conformsToProtocol:&unk_2846171C8])
                  {
                    v17 = v16;
                  }

                  else
                  {
                    v17 = 0;
                  }
                }

                else
                {
                  v17 = 0;
                }

                v18 = v17;

                v19 = [v18 hf_triggerType];
                if (v19 != 7 && v19)
                {

                  v5 = 1;
                  goto LABEL_28;
                }

                v20 = getWFEventTrackerLogObject();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v37 = "[VCMetricSubmitter homeAutomationsPresent:]";
                  v38 = 2114;
                  v39 = v16;
                  _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Ignoring trigger of unknown or placeholder type: %{public}@", buf, 0x16u);
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v8 = v25 + 1;
          v6 = v26;
          v7 = v23;
        }

        while (v25 + 1 != v24);
        v24 = [v26 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v24);
    }

    v5 = 0;
LABEL_28:
    v4 = v27;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hasSeenAutoShortcutsSections
{
  v3 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v4 = [v3 valueForKey:*MEMORY[0x277D7CD40]];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = 0;
    goto LABEL_6;
  }

  v5 = [(VCMetricCheckIn *)self->_checkIn intervalStartDate];
  v6 = [v5 compare:v4];

  if (v6 != -1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (BOOL)isSleepEnabled
{
  v2 = [objc_alloc(MEMORY[0x277D7C4E0]) initWithSleepFeature:1];
  v3 = [v2 sleepOnboardingStatus] == 1;

  return v3;
}

- (BOOL)isAppInstalled
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v3 = *MEMORY[0x277D7A338];
  v10 = 0;
  v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = getWFEventTrackerLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "[VCMetricSubmitter isAppInstalled]";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_FAULT, "%s Error accessing LSApplicationRecord for Shortcuts: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v6 = [v4 applicationState];
    v7 = [v6 isInstalled];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)perform
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[VCMetricSubmitter perform]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Attempting to perform checkin", buf, 0xCu);
  }

  v4 = [(VCMetricSubmitter *)self checkIn];
  v5 = [v4 isCheckInAllowed];

  if (v5)
  {
    v6 = [(VCMetricSubmitter *)self databaseProvider];
    v25 = 0;
    v7 = [v6 databaseWithError:&v25];
    v8 = v25;

    if (!v7)
    {
      v14 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "[VCMetricSubmitter perform]";
        v28 = 2114;
        v29 = v8;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Checkin is not possible because no database is available; %{public}@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v9 = [(VCMetricSubmitter *)self event];
    [v9 setInstalled:{-[VCMetricSubmitter isAppInstalled](self, "isAppInstalled")}];
    [v9 setSharingEnabled:{-[VCMetricSubmitter isSharingEnabled](self, "isSharingEnabled")}];
    [v9 setPersonalAutomationsEnabled:{-[VCMetricSubmitter personalAutomationsEnabled:](self, "personalAutomationsEnabled:", v7)}];
    [v9 setSleepEnabled:{-[VCMetricSubmitter isSleepEnabled](self, "isSleepEnabled")}];
    v24 = 0;
    v10 = [(VCMetricSubmitter *)self homeAutomationsPresent:&v24];
    v11 = v24;
    [v9 setHomeAutomationsEnabled:v10];
    [v9 setAverageShortcutCountPerFolder:{-[VCMetricSubmitter averageShortcutCountPerFolder:](self, "averageShortcutCountPerFolder:", v7)}];
    [v9 setShortcutsCount:{-[VCMetricSubmitter shortcutsCount:](self, "shortcutsCount:", v7)}];
    [v9 setUncategorizedShortcutCount:{-[VCMetricSubmitter uncategorizedShortcutCount:](self, "uncategorizedShortcutCount:", v7)}];
    [v9 setWatchShortcutCount:{-[VCMetricSubmitter watchShortcutCount:](self, "watchShortcutCount:", v7)}];
    [v9 setFolderCount:{-[VCMetricSubmitter folderCount:](self, "folderCount:", v7)}];
    [v9 setNumberOfPersonalAutomationsEnabled:{-[VCMetricSubmitter numberOfPersonalAutomationsEnabled:](self, "numberOfPersonalAutomationsEnabled:", v7)}];
    [v9 setAppComplicationSlotsUsed:{objc_msgSend(MEMORY[0x277D7C280], "appComplicationSlotsUsed")}];
    [v9 setShortcutComplicationSlotsUsed:{objc_msgSend(MEMORY[0x277D7C280], "shortcutComplicationSlotsUsed")}];
    [v9 setShortcutRunCount:{-[VCMetricSubmitter numberOfShortcutRuns:](self, "numberOfShortcutRuns:", v7)}];
    v23 = v11;
    v12 = [(VCMetricSubmitter *)self numberOfAppSessions:&v23];
    v13 = v23;

    [v9 setAppSessionCount:v12];
    [v9 setSleepShortcutsCount:{-[VCMetricSubmitter sleepShortcutCount:](self, "sleepShortcutCount:", v7)}];
    [v9 setAutoShortcutsSectionsViewed:{-[VCMetricSubmitter hasSeenAutoShortcutsSections](self, "hasSeenAutoShortcutsSections")}];
    [v9 setCoherenceSyncEnablement:{-[VCMetricSubmitter coherenceSyncEnablementStatus:](self, "coherenceSyncEnablementStatus:", v7)}];
    [v9 setCoherenceBlobSize:{-[NSObject libraryBlobSize](v7, "libraryBlobSize")}];
    v22 = v13;
    [(VCMetricSubmitter *)self addWidgetMetricsToEvent:v9 error:&v22];
    v14 = v22;

    if (v14)
    {
      v15 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v27 = "[VCMetricSubmitter perform]";
        v28 = 2114;
        v29 = v14;
        v16 = "%s Checkin is not possible because of an error: %{public}@";
        v17 = v15;
        v18 = OS_LOG_TYPE_FAULT;
        v19 = 22;
LABEL_14:
        _os_log_impl(&dword_23103C000, v17, v18, v16, buf, v19);
      }
    }

    else
    {
      [v9 track];
      v20 = [(VCMetricSubmitter *)self checkIn];
      [v20 updateCheckInToNow];

      v15 = getWFEventTrackerLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v27 = "[VCMetricSubmitter perform]";
        v16 = "%s Checkin completed successfully";
        v17 = v15;
        v18 = OS_LOG_TYPE_INFO;
        v19 = 12;
        goto LABEL_14;
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v8 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    *buf = 136315394;
    v27 = "[VCMetricSubmitter perform]";
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Checkin is not allowed at this time: %@", buf, 0x16u);
LABEL_17:
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (VCMetricSubmitter)initWithCheckIn:(id)a3 event:(id)a4 databaseProvider:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"event"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"checkIn"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"VCMetricSubmitter.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = VCMetricSubmitter;
  v13 = [(VCMetricSubmitter *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_checkIn, a3);
    objc_storeStrong(&v14->_event, a4);
    objc_storeStrong(&v14->_databaseProvider, a5);
    v15 = v14;
  }

  return v14;
}

- (VCMetricSubmitter)initWithDatabaseProvider:(id)a3
{
  v4 = a3;
  v5 = [VCMetricCheckIn recentCheckInWithMode:0];
  v6 = objc_alloc_init(MEMORY[0x277D7C658]);
  v7 = [(VCMetricSubmitter *)self initWithCheckIn:v5 event:v6 databaseProvider:v4];

  return v7;
}

+ (void)performWithDatabaseProvider:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabaseProvider:v3];

  [v4 perform];
}

+ (void)scheduleWithScheduler:(id)a3 databaseProvider:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"VCMetricSubmitter.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"scheduler"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"VCMetricSubmitter.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_3:
  v10 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [a1 activityIdentifier];
    *buf = 136315394;
    v20 = "+[VCMetricSubmitter scheduleWithScheduler:databaseProvider:]";
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEBUG, "%s Scheduling metric check in activity: (%{public}@)", buf, 0x16u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke;
  v16[3] = &unk_2788FE898;
  v17 = v9;
  v18 = a1;
  v12 = v9;
  [v7 scheduleWithRunHandler:v16];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke_2;
  block[3] = &unk_2788FE870;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v10 = v6;
  v11 = v4;
  v7 = v4;
  dispatch_async(v5, block);

  return 0;
}

uint64_t __60__VCMetricSubmitter_scheduleWithScheduler_databaseProvider___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 48) activityIdentifier];
    v6 = 136315394;
    v7 = "+[VCMetricSubmitter scheduleWithScheduler:databaseProvider:]_block_invoke_2";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Scheduling metric checkin activity invoked: (%{public}@)", &v6, 0x16u);
  }

  [*(a1 + 48) performWithDatabaseProvider:*(a1 + 32)];
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)scheduleWithDatabaseProvider:(id)a3
{
  v4 = a3;
  v5 = [WFXPCActivityScheduler alloc];
  v6 = [a1 activityIdentifier];
  v7 = [(WFXPCActivityScheduler *)v5 initWithActivityIdentifier:v6];

  [a1 scheduleWithScheduler:v7 databaseProvider:v4];
}

+ (id)activityIdentifier
{
  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"+[VCMetricSubmitter activityIdentifier] must be overridden"];
  __break(1u);
  return result;
}

@end