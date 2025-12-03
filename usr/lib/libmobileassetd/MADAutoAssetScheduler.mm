@interface MADAutoAssetScheduler
+ (BOOL)isAssetTypeAtAggressiveFrequency:(id)frequency;
+ (BOOL)isAssetTypeAtHeightenedFrequency:(id)frequency;
+ (BOOL)isSelector:(id)selector consideredEqualTo:(id)to;
+ (id)autoAssetScheduler;
+ (id)jobTypeName:(BOOL)name setJob:(BOOL)job requiringRetry:(BOOL)retry;
+ (id)jobsAwaitingTrigger;
+ (id)nameForXPCStatus:(int64_t)status;
+ (id)newSetPolicyForDomainName:(id)name forAssetSetIdentifier:(id)identifier;
+ (id)persistedEntryIDForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier;
+ (id)stringFromDate:(id)date;
+ (int64_t)_preferenceChosenTickerIntervalSecs;
+ (int64_t)persistedScheduledCount;
+ (int64_t)tickerIntervalForActivityIntervalSecs:(int64_t)secs;
+ (void)addScheduledJobs:(id)jobs basedOnControl:(id)control;
+ (void)controlEliminateSelector:(id)selector;
+ (void)controlEliminateSetDomainName:(id)name forAssetSetIdentifier:(id)identifier indicatingWhenEliminated:(BOOL)eliminated;
+ (void)forceGlobalForget:(id)forget;
+ (void)jobFinishedForSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure;
+ (void)jobFinishedForSetDomainName:(id)name forAssetSetIdentifier:(id)identifier withPotentialNetworkFailure:(BOOL)failure;
+ (void)resumeFromPersisted:(id)persisted;
+ (void)schedulePushNotifications:(id)notifications;
+ (void)scheduleSelector:(id)selector triggeringAtIntervalSecs:(int64_t)secs;
+ (void)scheduleSetDomainName:(id)name forAssetSetIdentifier:(id)identifier usingSetUpdatePolicy:(id)policy forSetConfiguration:(id)configuration;
+ (void)setPersistedStateCaching:(BOOL)caching;
+ (void)shutdown;
+ (void)triggerWithRetrySetDomainName:(id)name forAssetSetIdentifier:(id)identifier usingSetUpdatePolicy:(id)policy;
- (MADAutoAssetScheduler)init;
- (id)_assetTypeForAssetSelector:(id)selector;
- (id)_currentlyScheduledMarkers;
- (id)_currentlyScheduledMarkersRequiringRetry;
- (id)_markerForSelector:(id)selector andJob:(id)job;
- (id)_newSetPolicyForDomainName:(id)name forAssetSetIdentifier:(id)identifier fromLocation:(id)location;
- (id)_setConfigurationForAssetSelector:(id)selector;
- (id)_snapshotOfJobsBySelector;
- (id)defaultSchedulerSetPolicy;
- (id)summary;
- (int64_t)_aggressiveIntervalSecs;
- (int64_t)_decideTriggerIntervalSecs:(id)secs forAssetSelector:(id)selector;
- (int64_t)_heightenedIntervalSecs;
- (void)_eliminateSelector:(id)selector forSetJob:(BOOL)job indicatingWhenEliminated:(BOOL)eliminated;
- (void)_eliminateSpecificSelector:(id)selector;
- (void)_informConnectorActiveJobFinishedforSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure;
- (void)_informConnectorAlteredSelectors;
- (void)_informConnectorTriggeredSelectors:(id)selectors withTriggeredRequiringRetry:(id)retry;
- (void)_jobFinishedForSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure;
- (void)_jobFinishedForSetDomainName:(id)name forAssetSetIdentifier:(id)identifier withPotentialNetworkFailure:(BOOL)failure;
- (void)_logPersistedConfigLoad:(id)load activityIntervalSecs:(int64_t)secs pushTriggerSecs:(int64_t)triggerSecs lastTickDate:(id)date message:(id)message;
- (void)_logPersistedConfigSet:(id)set activityIntervalSecs:(int64_t)secs pushTriggerSecs:(int64_t)triggerSecs lastTickDate:(id)date message:(id)message;
- (void)_logPersistedEntry:(id)entry operation:(id)operation persistingSelector:(id)selector intervalSecs:(int64_t)secs remainingSecs:(int64_t)remainingSecs pushedJob:(BOOL)job setJob:(BOOL)setJob setPolicy:(id)self0 pushedPolicy:(id)self1 requiringRetry:(BOOL)self2 message:(id)self3;
- (void)_logPersistedRemovedEntry:(id)entry removedSelector:(id)selector message:(id)message;
- (void)_logPersistedTableOfContents:(id)contents;
- (void)_performActivityOperations;
- (void)_performPushNotificationOperations;
- (void)_performTickerOperations:(int64_t)operations;
- (void)_performTriggeredSetJobForSetConfiguration:(id)configuration usingSetUpdatePolicy:(id)policy;
- (void)_registerForAndStartActivity:(int64_t)activity;
- (void)_resumeConnector;
- (void)_schedulePushNotifications:(id)notifications;
- (void)_scheduleSelector:(id)selector triggeringAtIntervalSecs:(int64_t)secs withRemainingSecs:(int64_t)remainingSecs forPushedJob:(BOOL)job forSetJob:(BOOL)setJob withSetPolicy:(id)policy triggeringIfLearned:(BOOL)learned resettingRemaining:(BOOL)self0 isReadOnlyForResumeFromPersisted:(BOOL)self1;
- (void)_setActivityCriteria:(id)criteria pushNotificationInitiated:(BOOL)initiated withActivityDelay:(int64_t)delay;
- (void)_startActivityBackupTrigger;
- (void)_startPushDelayTimer:(int64_t)timer;
- (void)_trackSetConfigurations:(id)configurations;
@end

@implementation MADAutoAssetScheduler

+ (void)shutdown
{
  v2 = +[MADAutoAssetScheduler autoAssetScheduler];
  v3 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:shutdown}: Dispatching shutdown request for autoAssetScheduler", buf, 2u);
  }

  schedulerQueue = [v2 schedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__MADAutoAssetScheduler_shutdown__block_invoke;
  block[3] = &unk_4B2AA0;
  v8 = v2;
  v5 = v2;
  dispatch_sync(schedulerQueue, block);

  v6 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:shutdown}: Successfully shut down autoAssetScheduler", buf, 2u);
  }
}

void __33__MADAutoAssetScheduler_shutdown__block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:shutdown}: Shutdown request running on queue", v4, 2u);
  }

  v3 = [*(a1 + 32) schedulerQueue];
  dispatch_suspend(v3);
}

- (MADAutoAssetScheduler)init
{
  v28.receiver = self;
  v28.super_class = MADAutoAssetScheduler;
  v2 = [(MADAutoAssetScheduler *)&v28 init];
  if (v2)
  {
    uTF8String = [@"com.apple.MobileAsset.daemon.autoassetscheduler" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(uTF8String, v4);
    schedulerQueue = v2->_schedulerQueue;
    v2->_schedulerQueue = v5;

    v7 = [[MADAutoAssetPersisted alloc] initForModule:@"AutoAssetScheduler" ofModuleVersion:@"1.0" usingDispatchQueue:v2->_schedulerQueue loggingByName:0 withVersionMigrator:&__block_literal_global_5];
    persistedState = v2->_persistedState;
    v2->_persistedState = v7;

    v9 = v2->_schedulerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __29__MADAutoAssetScheduler_init__block_invoke_2;
    block[3] = &unk_4B2AA0;
    v10 = v2;
    v27 = v10;
    dispatch_sync(v9, block);
    v11 = objc_alloc_init(NSMutableArray);
    jobsAwaitingTrigger = v10->_jobsAwaitingTrigger;
    v10->_jobsAwaitingTrigger = v11;

    v10->_jobsAwaitingPushTrigger = 0;
    v13 = objc_alloc_init(NSMutableDictionary);
    jobsBySelector = v10->_jobsBySelector;
    v10->_jobsBySelector = v13;

    v10->_globalActivityInterval = 0;
    v10->_activityIntervalSecs = 86400;
    v15 = +[MADAutoAssetScheduler _preferenceChosenTickerIntervalSecs];
    if (v15 < 0)
    {
      activityIntervalSecs = v10->_activityIntervalSecs;
    }

    else
    {
      activityIntervalSecs = v15;
      v10->_globalActivityInterval = 1;
      if (v15)
      {
        v10->_activityIntervalSecs = v15;
      }

      else
      {
        v10->_activityIntervalSecs = 0;
      }
    }

    v17 = [MADAutoAssetScheduler tickerIntervalForActivityIntervalSecs:activityIntervalSecs];
    *&v10->_tickerIntervalReRegistering = 0;
    v10->_tickerIntervalSecs = v17;
    v10->_pushDelaySecs = 0;
    v10->_pushCounter = 0;
    v10->_scheduledJobsXPCActivity = 0;
    scheduledJobsBackupTriggerTimer = v10->_scheduledJobsBackupTriggerTimer;
    v10->_scheduledJobsBackupTriggerTimer = 0;

    lastTickTimestampString = v10->_lastTickTimestampString;
    v10->_pushJobsXPCActivity = 0;
    v10->_lastTickTimestampString = 0;

    v20 = +[NSUUID UUID];
    uUIDString = [v20 UUIDString];
    xpcActivityUUID = v10->_xpcActivityUUID;
    v10->_xpcActivityUUID = uUIDString;

    v23 = objc_alloc_init(NSMutableDictionary);
    setConfigurations = v10->_setConfigurations;
    v10->_setConfigurations = v23;
  }

  return v2;
}

+ (BOOL)isAssetTypeAtHeightenedFrequency:(id)frequency
{
  frequencyCopy = frequency;
  if (frequencyCopy && ([&off_4F6E00 containsObject:frequencyCopy] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MADAutoAssetControlManager preferenceActivityHeightenedAssetType];
    v4 = [SUCore stringIsEqual:frequencyCopy to:v5];
  }

  return v4;
}

+ (BOOL)isAssetTypeAtAggressiveFrequency:(id)frequency
{
  frequencyCopy = frequency;
  if (frequencyCopy && ([&off_4F6E18 containsObject:frequencyCopy] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MADAutoAssetControlManager preferenceActivityAggressiveAssetType];
    v4 = [SUCore stringIsEqual:frequencyCopy to:v5];
  }

  return v4;
}

+ (id)autoAssetScheduler
{
  if (autoAssetScheduler_dispatchOnceAutoAssetScheduler != -1)
  {
    +[MADAutoAssetScheduler autoAssetScheduler];
  }

  v3 = autoAssetScheduler___autoAssetScheduler;

  return v3;
}

void __43__MADAutoAssetScheduler_autoAssetScheduler__block_invoke(id a1)
{
  autoAssetScheduler___autoAssetScheduler = objc_alloc_init(MADAutoAssetScheduler);

  _objc_release_x1();
}

+ (void)resumeFromPersisted:(id)persisted
{
  persistedCopy = persisted;
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "MADScheduler:resumeFromPersisted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  if (v4)
  {
    schedulerQueue = [v4 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __45__MADAutoAssetScheduler_resumeFromPersisted___block_invoke_1213;
    v8[3] = &unk_4B2B18;
    v9 = v4;
    v10 = persistedCopy;
    dispatch_async(schedulerQueue, v8);

    v7 = v9;
  }

  else
  {
    v7 = [MADAutoAssetControlManager selectDispatchQueue:0];
    dispatch_async(v7, &__block_literal_global_1212);
  }

  os_activity_scope_leave(&state);
}

void __45__MADAutoAssetScheduler_resumeFromPersisted___block_invoke(id a1)
{
  v1 = _MADLog(@"Auto");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:resumeFromPersisted} no activity scheduling | unable to locate auto-asset-scheduler (stuck dirty)", v2, 2u);
  }

  [MADAutoAssetControlManager schedulerResumed:0];
}

void __45__MADAutoAssetScheduler_resumeFromPersisted___block_invoke_1213(uint64_t a1)
{
  v1 = a1;
  [*(a1 + 32) _trackSetConfigurations:*(a1 + 40)];
  v2 = [*(v1 + 32) persistedState];
  [v2 loadPersistedState:@"resumeFromPersisted"];

  v3 = [*(v1 + 32) persistedState];
  v4 = [v3 persistedEntryIDs:@"resumeFromPersisted"];

  v98 = v1;
  if ([v4 count])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v82 = v4;
    obj = v4;
    v95 = [obj countByEnumeratingWithState:&v106 objects:v129 count:16];
    if (v95)
    {
      v94 = *v107;
      do
      {
        v5 = 0;
        do
        {
          if (*v107 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v106 + 1) + 8 * v5);
          v7 = objc_autoreleasePoolPush();
          v8 = [*(v1 + 32) persistedState];
          v9 = [v8 persistedEntry:v6 fromLocation:@"resumeFromPersisted"];

          if (v9)
          {
            v10 = [v9 secureCodedObjectForKey:@"assetSelector" ofClass:objc_opt_class()];
            v93 = [v9 ullForKey:@"intervalSecs"];
            v92 = [v9 ullForKey:@"remainingSecs"];
            v11 = [v9 BOOLeanForKey:@"pushJob"];
            v12 = [v9 BOOLeanForKey:@"requiringRetry"];
            v13 = [v9 BOOLeanForKey:@"setJob"];
            if (v13)
            {
              v97 = [v9 secureCodedObjectForKey:@"setPolicy" ofClass:objc_opt_class()];
              v14 = [v9 secureCodedObjectForKey:@"pushedPolicy" ofClass:objc_opt_class()];
              v99 = [*(v1 + 32) _setConfigurationForAssetSelector:v10];
            }

            else
            {
              v99 = 0;
              v14 = 0;
              v97 = 0;
            }

            v96 = v7;
            if (v10)
            {
              v90 = v11;
              v16 = [v10 assetType];
              if (v16)
              {
                v17 = v16;
                v89 = v12;
                v18 = [v10 assetSpecifier];
                if (v18)
                {
                  v19 = v18;
                  v20 = [v10 assetVersion];

                  if (!v20)
                  {
                    if (v99)
                    {
                      v21 = 0;
                    }

                    else
                    {
                      v21 = v13;
                    }

                    if (v21 == 1)
                    {
                      v22 = v14;
                      v1 = v98;
                      v23 = [*(v98 + 32) persistedState];
                      [v23 removePersistedEntry:v6 fromLocation:@"resumeFromPersisted(NOT-CONFIGURED)"];

                      v24 = _MADLog(@"AutoScheduler");
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        v25 = [*(v98 + 32) summary];
                        v26 = [v10 summary];
                        *buf = 138543874;
                        v111 = v25;
                        v112 = 2114;
                        v113 = v6;
                        v114 = 2114;
                        v115 = v26;
                        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} removed not-configured entry:%{public}@ | assetSelector:%{public}@", buf, 0x20u);

                        v1 = v98;
                      }

                      v27 = v97;
                      v14 = v22;
                    }

                    else
                    {
                      v24 = +[MADAutoAssetControlManager preferenceScheduledOnlyForAssetTypes];
                      if (v24)
                      {
                        if (v13)
                        {
                          [v99 firstEntryAssetType];
                        }

                        else
                        {
                          [v10 assetType];
                        }
                        v38 = ;
                        v83 = v14;
                        if (v38)
                        {
                          v87 = v38;
                          v104 = 0u;
                          v105 = 0u;
                          v102 = 0u;
                          v103 = 0u;
                          v85 = v24;
                          v39 = [v85 countByEnumeratingWithState:&v102 objects:v128 count:16];
                          if (v39)
                          {
                            v40 = v39;
                            v41 = *v103;
                            while (2)
                            {
                              for (i = 0; i != v40; i = i + 1)
                              {
                                if (*v103 != v41)
                                {
                                  objc_enumerationMutation(v85);
                                }

                                if (([SUCore stringIsEqual:v87 to:*(*(&v102 + 1) + 8 * i)]& 1) != 0)
                                {

                                  v14 = v83;
                                  goto LABEL_56;
                                }
                              }

                              v40 = [v85 countByEnumeratingWithState:&v102 objects:v128 count:16];
                              if (v40)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          v43 = _MADLog(@"AutoScheduler");
                          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                          {
                            v44 = [*(v98 + 32) summary];
                            *buf = 138543874;
                            v111 = v44;
                            v112 = 2114;
                            v113 = v6;
                            v114 = 2114;
                            v115 = v10;
                            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} asset-type blocked | entryID:%{public}@ | assetSelector:%{public}@", buf, 0x20u);
                          }
                        }

                        else
                        {
                          v50 = _MADLog(@"AutoScheduler");
                          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                          {
                            v51 = [*(v98 + 32) summary];
                            *buf = 138543874;
                            v111 = v51;
                            v112 = 2114;
                            v113 = v6;
                            v114 = 2114;
                            v115 = v10;
                            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} unable to determine asset-type (ignored) | entryID:%{public}@ | assetSelector:%{public}@", buf, 0x20u);
                          }
                        }

                        v27 = v97;
                        v1 = v98;
                        v14 = v83;
                      }

                      else
                      {
LABEL_56:
                        v45 = [v10 assetType];
                        v46 = [SUCore stringIsEqual:v45 to:@"com.apple.UnifiedAssetFramework"];

                        if (v46)
                        {
                          v47 = 86400;
                          if (v93 < 86400)
                          {
                            v47 = v93;
                          }

                          v86 = v47;
                          v48 = 14400;
                          if (v92 < 14400)
                          {
                            v48 = v92;
                          }

                          v88 = v48;
                          v49 = v89;
                          if (v13 && v93 <= 86400 && v92 < 14401)
                          {
                            v13 = &dword_0 + 1;
                            v1 = v98;
                          }

                          else
                          {
                            v84 = _MADLog(@"AutoScheduler");
                            v1 = v98;
                            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                            {
                              v52 = [*(v98 + 32) summary];
                              v53 = [v10 summary];
                              v54 = v53;
                              *buf = 138545410;
                              v55 = @"N";
                              if (v13)
                              {
                                v55 = @"Y";
                              }

                              v111 = v52;
                              v112 = 2114;
                              v113 = v6;
                              v114 = 2114;
                              v115 = v53;
                              v116 = 2114;
                              v117 = v55;
                              v118 = 2048;
                              v119 = v93;
                              v120 = 2048;
                              v121 = v92;
                              v122 = 2114;
                              v123 = @"Y";
                              v124 = 2048;
                              v125 = v86;
                              v126 = 2048;
                              v127 = v88;
                              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} migrated set-job entry:%{public}@ | assetSelector:%{public}@ | (fromPersisted)setJob:%{public}@,intervalSecs:%ld,remainingSecs:%ld | (alteringTo)setJob:%{public}@,intervalSecs:%ld,remainingSecs:%ld", buf, 0x5Cu);

                              v49 = v89;
                              v1 = v98;
                            }

                            v13 = &dword_0 + 1;
                          }
                        }

                        else
                        {
                          v88 = v92;
                          v86 = v93;
                          v1 = v98;
                          v49 = v89;
                        }

                        v27 = v97;
                        if (v90)
                        {
                          v56 = v14;
                          v57 = *(v1 + 32);
                          v58 = [v57 jobsAwaitingPushTrigger] + 1;
                          v59 = v57;
                          v14 = v56;
                          v49 = v89;
                          [v59 setJobsAwaitingPushTrigger:v58];
                        }

                        LOBYTE(v81) = v49;
                        LOBYTE(v79) = v13;
                        [*(v1 + 32) _logPersistedEntry:@"resumeFromPersisted" operation:@"ENTRY_LOAD" persistingSelector:v10 intervalSecs:v86 remainingSecs:v88 pushedJob:v90 setJob:v79 setPolicy:v97 pushedPolicy:v14 requiringRetry:v81 message:@"resumed scheduled job"];
                        BYTE2(v80) = 1;
                        LOWORD(v80) = 0;
                        [*(v1 + 32) _scheduleSelector:v10 triggeringAtIntervalSecs:v86 withRemainingSecs:v88 forPushedJob:v90 forSetJob:v13 withSetPolicy:v97 triggeringIfLearned:v80 resettingRemaining:? isReadOnlyForResumeFromPersisted:?];
                      }
                    }

                    goto LABEL_36;
                  }
                }

                else
                {
                }
              }

              v28 = v14;
              v31 = [v10 assetType];
              v30 = @"Y";
              if (v31)
              {
                v32 = @"Y";
              }

              else
              {
                v32 = @"N";
              }

              v24 = v32;

              v33 = [v10 assetSpecifier];
              if (v33)
              {
                v34 = @"Y";
              }

              else
              {
                v34 = @"N";
              }

              v29 = v34;

              v1 = v98;
            }

            else
            {
              v28 = v14;
              v24 = @"N";
              v29 = @"N";
              v30 = @"N";
            }

            v35 = [*(v1 + 32) persistedState];
            [v35 removePersistedEntry:v6 fromLocation:@"resumeFromPersisted"];

            v36 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = [*(v98 + 32) summary];
              *buf = 138544386;
              v111 = v37;
              v112 = 2114;
              v113 = v6;
              v114 = 2114;
              v115 = v30;
              v116 = 2114;
              v117 = v24;
              v118 = 2114;
              v119 = v29;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} removed corrupted entry:%{public}@ | assetSelector:%{public}@, assetType:%{public}@, assetSpecifier:%{public}@", buf, 0x34u);
            }

            v27 = v97;
            v1 = v98;
            v14 = v28;
            v7 = v96;
LABEL_36:

            goto LABEL_37;
          }

          v10 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = [*(v1 + 32) summary];
            *buf = 138543618;
            v111 = v15;
            v112 = 2114;
            v113 = v6;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} unable to determine previous status for entry:%{public}@", buf, 0x16u);
          }

LABEL_37:

          objc_autoreleasePoolPop(v7);
          v5 = v5 + 1;
        }

        while (v5 != v95);
        v60 = [obj countByEnumeratingWithState:&v106 objects:v129 count:16];
        v95 = v60;
      }

      while (v60);
    }

    v61 = [*(v1 + 32) jobsBySelector];
    v62 = [v61 count];

    v63 = [*(v1 + 32) _snapshotOfJobsBySelector];
    v64 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [*(v1 + 32) summary];
      v66 = @"s";
      *buf = 138543874;
      v111 = v65;
      if (v62 == (&dword_0 + 1))
      {
        v66 = &stru_4BD3F0;
      }

      v112 = 2048;
      v113 = v62;
      v114 = 2114;
      v115 = v66;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} %ld job%{public}@ scheduled | MA_MILESTONE", buf, 0x20u);

      v4 = v82;
    }

    else
    {
      v4 = v82;
    }
  }

  else
  {
    v64 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [*(v1 + 32) summary];
      *buf = 138543362;
      v111 = v67;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} no jobs scheduled | MA_MILESTONE", buf, 0xCu);
    }

    v63 = 0;
  }

  [*(v1 + 32) _logPersistedTableOfContents:@"resumeFromPersisted"];
  v68 = +[MADAutoAssetScheduler _preferenceChosenTickerIntervalSecs];
  if (v68 < 0)
  {
    v69 = &loc_15180;
  }

  else
  {
    v69 = v68;
  }

  if (v69 < 1)
  {
    v70 = @"DISABLED";
  }

  else if (v69 == [*(v1 + 32) activityIntervalSecs])
  {
    v70 = +[MADAutoAssetControlManager allocIntervalString:](MADAutoAssetControlManager, "allocIntervalString:", [*(v1 + 32) activityIntervalSecs]);
  }

  else
  {
    v71 = [NSString alloc];
    v72 = +[MADAutoAssetControlManager allocIntervalString:](MADAutoAssetControlManager, "allocIntervalString:", [*(v1 + 32) activityIntervalSecs]);
    v73 = [MADAutoAssetControlManager allocIntervalString:v69];
    v70 = [v71 initWithFormat:@"%@ (previously %@)", v72, v73];

    v1 = v98;
  }

  if ([*(v1 + 32) jobsAwaitingPushTrigger] < 1)
  {
    v74 = @"NO-PUSH-JOBS";
  }

  else
  {
    v74 = [MADAutoAssetControlManager allocIntervalString:900];
  }

  v75 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    v76 = [*(v98 + 32) summary];
    *buf = 138544130;
    v111 = v76;
    v112 = 2114;
    v113 = v70;
    v114 = 2114;
    v115 = v74;
    v116 = 2048;
    v117 = v69;
    _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:resumeFromPersisted} registering auto-asset-scheduler XPC Activity | activityInterval:%{public}@, pushDelay:%{public}@, intervalSecs:%ld", buf, 0x2Au);
  }

  [*(v98 + 32) _registerForAndStartActivity:v69];
  [*(v98 + 32) _logPersistedConfigLoad:@"resumeFromPersisted" activityIntervalSecs:v69 pushTriggerSecs:900 lastTickDate:0 message:@"completed resuming of auto-asset-scheduler"];
  [*(v98 + 32) _resumeConnector];
  v77 = [MADAutoAssetControlManager selectDispatchQueue:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__MADAutoAssetScheduler_resumeFromPersisted___block_invoke_1259;
  block[3] = &unk_4B2AA0;
  v101 = v63;
  v78 = v63;
  dispatch_async(v77, block);
}

+ (int64_t)persistedScheduledCount
{
  v2 = +[MADAutoAssetScheduler autoAssetScheduler];
  v3 = v2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  if (v2)
  {
    schedulerQueue = [v2 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __48__MADAutoAssetScheduler_persistedScheduledCount__block_invoke;
    v8[3] = &unk_4B2AC8;
    v10 = &v12;
    v9 = v3;
    dispatch_sync(schedulerQueue, v8);

    v5 = v9;
  }

  else
  {
    v5 = _MADLog(@"Auto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:persistedScheduledCount} unable to determine current scheduled jobs from persisted-state (no auto-asset-scheduler)", buf, 2u);
    }
  }

  v6 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v6;
}

void __48__MADAutoAssetScheduler_persistedScheduledCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 persistedEntryCount:@"AUTO-SCHEDULER"];
}

+ (id)newSetPolicyForDomainName:(id)name forAssetSetIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v7 = +[MADAutoAssetScheduler autoAssetScheduler];
  v8 = v7;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  if (v7)
  {
    schedulerQueue = [v7 schedulerQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __73__MADAutoAssetScheduler_newSetPolicyForDomainName_forAssetSetIdentifier___block_invoke;
    v13[3] = &unk_4B32D8;
    v17 = &v19;
    v14 = v8;
    v15 = nameCopy;
    v16 = identifierCopy;
    dispatch_sync(schedulerQueue, v13);

    v10 = v14;
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:newSetPolicyForDomainName} unable to provide set-policy (no auto-asset-scheduler)", buf, 2u);
    }
  }

  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

uint64_t __73__MADAutoAssetScheduler_newSetPolicyForDomainName_forAssetSetIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _newSetPolicyForDomainName:*(a1 + 40) forAssetSetIdentifier:*(a1 + 48) fromLocation:@"newSetPolicyForDomainName"];

  return _objc_release_x1();
}

+ (void)scheduleSelector:(id)selector triggeringAtIntervalSecs:(int64_t)secs
{
  selectorCopy = selector;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADScheduler:scheduleSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (!selectorCopy)
  {
    v8 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v11 = "{AUTO-SCHEDULER:scheduleSelector} no scheduling change | nil asset-selector provided";
    v12 = v8;
    v13 = 2;
LABEL_9:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_13;
  }

  if (secs < 0)
  {
    v8 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 134217984;
    secsCopy = secs;
    v11 = "{AUTO-SCHEDULER:scheduleSelector} no scheduling change | invalid trigger-interval-secs: %ld";
    v12 = v8;
    v13 = 12;
    goto LABEL_9;
  }

  v7 = +[MADAutoAssetScheduler autoAssetScheduler];
  v8 = v7;
  if (v7)
  {
    schedulerQueue = [v7 schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __67__MADAutoAssetScheduler_scheduleSelector_triggeringAtIntervalSecs___block_invoke;
    block[3] = &unk_4B3300;
    v16 = v8;
    v17 = selectorCopy;
    secsCopy2 = secs;
    dispatch_async(schedulerQueue, block);

    v10 = v16;
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      summary = [selectorCopy summary];
      *buf = 138543362;
      secsCopy = summary;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:scheduleSelector} | unable to locate auto-asset-scheduler | failed to [re-]schedule selector:%{public}@", buf, 0xCu);
    }
  }

LABEL_13:
  os_activity_scope_leave(&state);
}

id __67__MADAutoAssetScheduler_scheduleSelector_triggeringAtIntervalSecs___block_invoke(uint64_t a1)
{
  BYTE2(v2) = 0;
  LOWORD(v2) = 1;
  return [*(a1 + 32) _scheduleSelector:*(a1 + 40) triggeringAtIntervalSecs:*(a1 + 48) withRemainingSecs:*(a1 + 48) forPushedJob:0 forSetJob:0 withSetPolicy:0 triggeringIfLearned:v2 resettingRemaining:? isReadOnlyForResumeFromPersisted:?];
}

+ (void)scheduleSetDomainName:(id)name forAssetSetIdentifier:(id)identifier usingSetUpdatePolicy:(id)policy forSetConfiguration:(id)configuration
{
  nameCopy = name;
  identifierCopy = identifier;
  policyCopy = policy;
  configurationCopy = configuration;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_0, "MADScheduler:scheduleSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (!nameCopy)
  {
    v14 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v20 = "{AUTO-SCHEDULER:scheduleSetDomainName} no scheduling change | nil client-domain-name provided";
LABEL_17:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_26;
  }

  if (!identifierCopy)
  {
    v14 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v20 = "{AUTO-SCHEDULER:scheduleSetDomainName} no scheduling change | nil asset-set-identifier provided";
    goto LABEL_17;
  }

  if (configurationCopy)
  {
    v14 = [[MAAutoAssetSelector alloc] initForAssetType:nameCopy withAssetSpecifier:identifierCopy];
    v15 = +[MADAutoAssetScheduler autoAssetScheduler];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        v17 = +[MADAutoAssetControlManager preferenceActivityIntervalSecs];
        if (v17 <= 0)
        {
          v18 = 604800;
        }

        else
        {
          v18 = v17;
        }

        if (policyCopy)
        {
          v19 = [[MADAutoSetPolicy alloc] initFromAutoAssetSetPolicy:policyCopy];
        }

        else
        {
          v19 = 0;
        }

        schedulerQueue = [v16 schedulerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __110__MADAutoAssetScheduler_scheduleSetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy_forSetConfiguration___block_invoke;
        block[3] = &unk_4B3328;
        v25 = nameCopy;
        v26 = identifierCopy;
        v27 = v16;
        v28 = configurationCopy;
        v30 = v19;
        v31 = v18;
        v29 = v14;
        v21 = v19;
        dispatch_async(schedulerQueue, block);

        goto LABEL_25;
      }

      v21 = _MADLog(@"Auto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = nameCopy;
        v35 = 2114;
        v36 = identifierCopy;
        v22 = "{AUTO-SCHEDULER:scheduleSetDomainName} | unable to locate auto-asset-scheduler | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@";
        goto LABEL_22;
      }
    }

    else
    {
      v21 = _MADLog(@"Auto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = nameCopy;
        v35 = 2114;
        v36 = identifierCopy;
        v22 = "{AUTO-SCHEDULER:scheduleSetDomainName} | unable to create set-selector | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@";
LABEL_22:
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v14 = _MADLog(@"Auto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v20 = "{AUTO-SCHEDULER:scheduleSetDomainName} no scheduling change | nil set-configuration provided";
    goto LABEL_17;
  }

LABEL_26:

  os_activity_scope_leave(&state);
}

void __110__MADAutoAssetScheduler_scheduleSetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy_forSetConfiguration___block_invoke(uint64_t a1)
{
  v4 = [MADAutoAssetScheduler persistedEntryIDForClientDomain:*(a1 + 32) forAssetSetIdentifier:*(a1 + 40)];
  if (v4)
  {
    v2 = [*(a1 + 48) setConfigurations];
    [v2 setSafeObject:*(a1 + 56) forKey:v4];
  }

  BYTE2(v3) = 0;
  LOWORD(v3) = 1;
  [*(a1 + 48) _scheduleSelector:*(a1 + 64) triggeringAtIntervalSecs:*(a1 + 80) withRemainingSecs:*(a1 + 80) forPushedJob:0 forSetJob:1 withSetPolicy:*(a1 + 72) triggeringIfLearned:v3 resettingRemaining:? isReadOnlyForResumeFromPersisted:?];
}

+ (void)triggerWithRetrySetDomainName:(id)name forAssetSetIdentifier:(id)identifier usingSetUpdatePolicy:(id)policy
{
  nameCopy = name;
  identifierCopy = identifier;
  policyCopy = policy;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v10 = _os_activity_create(&dword_0, "MADScheduler:triggerWithRetrySetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &state);

  if (!nameCopy)
  {
    v12 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "{AUTO-SCHEDULER:triggerWithRetrySetDomainName} no scheduling change | nil client-domain-name provided";
LABEL_9:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_13;
  }

  if (!identifierCopy)
  {
    v12 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "{AUTO-SCHEDULER:triggerWithRetrySetDomainName} no scheduling change | nil asset-set-identifier provided";
    goto LABEL_9;
  }

  v11 = +[MADAutoAssetScheduler autoAssetScheduler];
  v12 = v11;
  if (v11)
  {
    schedulerQueue = [v11 schedulerQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __98__MADAutoAssetScheduler_triggerWithRetrySetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy___block_invoke;
    v16[3] = &unk_4B3350;
    v17 = nameCopy;
    v18 = identifierCopy;
    v19 = v12;
    v20 = policyCopy;
    dispatch_async(schedulerQueue, v16);

    v14 = v17;
  }

  else
  {
    v14 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = nameCopy;
      v24 = 2114;
      v25 = identifierCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:triggerWithRetrySetDomainName} | unable to locate auto-asset-scheduler | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  os_activity_scope_leave(&state);
}

void __98__MADAutoAssetScheduler_triggerWithRetrySetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy___block_invoke(uint64_t a1)
{
  v2 = [MADAutoAssetScheduler persistedEntryIDForClientDomain:*(a1 + 32) forAssetSetIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 48) setConfigurations];
    v4 = [v3 safeObjectForKey:v2 ofClass:objc_opt_class()];

    if (v4)
    {
      [*(a1 + 48) _performTriggeredSetJobForSetConfiguration:v4 usingSetUpdatePolicy:*(a1 + 56)];
    }

    else
    {
      v5 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = 138543618;
        v9 = v6;
        v10 = 2114;
        v11 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:triggerWithRetrySetDomainName} set-configuration not known - not triggering | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@", &v8, 0x16u);
      }
    }
  }
}

+ (void)jobFinishedForSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure
{
  selectorCopy = selector;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADScheduler:jobFinishedForSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (selectorCopy)
  {
    v7 = +[MADAutoAssetScheduler autoAssetScheduler];
    v8 = v7;
    if (v7)
    {
      schedulerQueue = [v7 schedulerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __76__MADAutoAssetScheduler_jobFinishedForSelector_withPotentialNetworkFailure___block_invoke;
      block[3] = &unk_4B3378;
      v13 = v8;
      v14 = selectorCopy;
      failureCopy = failure;
      dispatch_async(schedulerQueue, block);

      v10 = v13;
    }

    else
    {
      v10 = _MADLog(@"Auto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        summary = [selectorCopy summary];
        *buf = 138543362;
        v18 = summary;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:jobFinishedForSelector} | no auto-asset-scheduler | selector:%{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:jobFinishedForSelector} no scheduling change | nil asset-selector provided", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);
}

+ (void)jobFinishedForSetDomainName:(id)name forAssetSetIdentifier:(id)identifier withPotentialNetworkFailure:(BOOL)failure
{
  nameCopy = name;
  identifierCopy = identifier;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADScheduler:jobFinishedForSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  if (!nameCopy)
  {
    v11 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v14 = "{AUTO-SCHEDULER:jobFinishedForSetDomainName} no scheduling change | nil client-domain-name provided";
    v15 = v11;
    v16 = 2;
LABEL_9:
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_13;
  }

  if (!identifierCopy)
  {
    v11 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v24 = nameCopy;
    v14 = "{AUTO-SCHEDULER:jobFinishedForSetDomainName} no scheduling change | nil asset-set-identifier provided | clientDomainName:%{public}@";
    v15 = v11;
    v16 = 12;
    goto LABEL_9;
  }

  v10 = +[MADAutoAssetScheduler autoAssetScheduler];
  v11 = v10;
  if (v10)
  {
    schedulerQueue = [v10 schedulerQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __103__MADAutoAssetScheduler_jobFinishedForSetDomainName_forAssetSetIdentifier_withPotentialNetworkFailure___block_invoke;
    v17[3] = &unk_4B33A0;
    v18 = v11;
    v19 = nameCopy;
    v20 = identifierCopy;
    failureCopy = failure;
    dispatch_async(schedulerQueue, v17);

    v13 = v18;
  }

  else
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = nameCopy;
      v25 = 2114;
      v26 = identifierCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:jobFinishedForSetDomainName} | no auto-asset-scheduler | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  os_activity_scope_leave(&state);
}

+ (void)schedulePushNotifications:(id)notifications
{
  notificationsCopy = notifications;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_0, "MADScheduler:schedulePushNotifications", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (notificationsCopy)
  {
    v5 = +[MADAutoAssetScheduler autoAssetScheduler];
    v6 = v5;
    if (v5)
    {
      schedulerQueue = [v5 schedulerQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __51__MADAutoAssetScheduler_schedulePushNotifications___block_invoke;
      v10[3] = &unk_4B2B18;
      v11 = v6;
      v12 = notificationsCopy;
      dispatch_async(schedulerQueue, v10);

      v8 = v11;
    }

    else
    {
      v8 = _MADLog(@"Auto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        safeSummary = [notificationsCopy safeSummary];
        *buf = 138543362;
        v15 = safeSummary;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:schedulePushNotifications} | unable to locate auto-asset-scheduler | failed to schedule pushNotificationsBySelector:%{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = _MADLog(@"Auto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:schedulePushNotifications} no push change | nil pushNotificationsBySelector provided", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);
}

+ (void)controlEliminateSelector:(id)selector
{
  selectorCopy = selector;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_0, "MADScheduler:controlEliminateSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (selectorCopy)
  {
    v5 = +[MADAutoAssetScheduler autoAssetScheduler];
    v6 = v5;
    if (v5)
    {
      schedulerQueue = [v5 schedulerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __50__MADAutoAssetScheduler_controlEliminateSelector___block_invoke_2;
      block[3] = &unk_4B2B18;
      v13 = v6;
      v14 = selectorCopy;
      dispatch_async(schedulerQueue, block);

      v8 = &v13;
      v9 = v14;
    }

    else
    {
      v10 = _MADLog(@"Auto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        summary = [selectorCopy summary];
        *buf = 138543362;
        v19 = summary;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:eliminateSelector} | unable to locate auto-asset-scheduler | failed to eliminate selector:%{public}@", buf, 0xCu);
      }

      v9 = [MADAutoAssetControlManager selectDispatchQueue:0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __50__MADAutoAssetScheduler_controlEliminateSelector___block_invoke;
      v15[3] = &unk_4B2AA0;
      v8 = &v16;
      v16 = selectorCopy;
      dispatch_async(v9, v15);
    }
  }

  else
  {
    v6 = _MADLog(@"Auto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:eliminateSelector} no scheduling change | nil asset-selector provided", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);
}

+ (void)controlEliminateSetDomainName:(id)name forAssetSetIdentifier:(id)identifier indicatingWhenEliminated:(BOOL)eliminated
{
  eliminatedCopy = eliminated;
  nameCopy = name;
  identifierCopy = identifier;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADScheduler:controlEliminateSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v10 = [[MAAutoAssetSelector alloc] initForAssetType:nameCopy withAssetSpecifier:identifierCopy];
  if (v10)
  {
    v11 = +[MADAutoAssetScheduler autoAssetScheduler];
    v12 = v11;
    if (v11)
    {
      schedulerQueue = [v11 schedulerQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __102__MADAutoAssetScheduler_controlEliminateSetDomainName_forAssetSetIdentifier_indicatingWhenEliminated___block_invoke_2;
      v18[3] = &unk_4B33C8;
      v19 = nameCopy;
      v20 = identifierCopy;
      v21 = v12;
      v22 = v10;
      v23 = eliminatedCopy;
      dispatch_async(schedulerQueue, v18);

      v14 = &v19;
      v15 = v20;
LABEL_10:

      goto LABEL_11;
    }

    v16 = _MADLog(@"Auto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      summary = [v10 summary];
      *buf = 138543362;
      v28 = summary;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:eliminateSelector} | unable to locate auto-asset-scheduler | failed to eliminate setJobSelector:%{public}@", buf, 0xCu);
    }

    if (eliminatedCopy)
    {
      v15 = [MADAutoAssetControlManager selectDispatchQueue:0];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __102__MADAutoAssetScheduler_controlEliminateSetDomainName_forAssetSetIdentifier_indicatingWhenEliminated___block_invoke;
      block[3] = &unk_4B2AA0;
      v14 = &v25;
      v25 = v10;
      dispatch_async(v15, block);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = nameCopy;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:controlEliminateSetDomainName} no scheduling change | unable to create set-job-selector | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@", buf, 0x16u);
    }
  }

LABEL_11:

  os_activity_scope_leave(&state);
}

void __102__MADAutoAssetScheduler_controlEliminateSetDomainName_forAssetSetIdentifier_indicatingWhenEliminated___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) assetType];
  v2 = [*(a1 + 32) assetSpecifier];
  [MADAutoAssetControlManager schedulerEliminatedSetDomainName:v3 forAssetSetIdentifier:v2];
}

void __102__MADAutoAssetScheduler_controlEliminateSetDomainName_forAssetSetIdentifier_indicatingWhenEliminated___block_invoke_2(uint64_t a1)
{
  v3 = [MADAutoAssetScheduler persistedEntryIDForClientDomain:*(a1 + 32) forAssetSetIdentifier:*(a1 + 40)];
  if (v3)
  {
    v2 = [*(a1 + 48) setConfigurations];
    [v2 removeObjectForKey:v3];
  }

  [*(a1 + 48) _eliminateSelector:*(a1 + 56) forSetJob:1 indicatingWhenEliminated:*(a1 + 64)];
}

- (void)_trackSetConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = configurationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (v11)
        {
          clientDomainName = [v11 clientDomainName];
          assetSetIdentifier = [v11 assetSetIdentifier];
          v15 = [MADAutoAssetScheduler persistedEntryIDForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier];

          setConfigurations = [(MADAutoAssetScheduler *)self setConfigurations];
          [setConfigurations setSafeObject:v11 forKey:v15];
        }

        else
        {
          v15 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            summary = [(MADAutoAssetScheduler *)self summary];
            *buf = 138543362;
            v23 = summary;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_trackSetConfigurations} unable to access entry in allDefinedSetConfigurations", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }
}

- (id)_setConfigurationForAssetSelector:(id)selector
{
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MADAutoAssetScheduler *)self setConfigurations];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
LABEL_3:
    v8 = 0;
    v23 = v6;
    while (1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v26 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      if (!v9)
      {
        v12 = _MADLog(@"AutoScheduler");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          summary = [(MADAutoAssetScheduler *)self summary];
          *buf = 138543362;
          v31 = summary;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_setConfigurationForAssetSelector} unable to access entry key in self.setConfigurations", buf, 0xCu);
        }

        goto LABEL_18;
      }

      setConfigurations = [(MADAutoAssetScheduler *)self setConfigurations];
      v12 = [setConfigurations safeObjectForKey:v9 ofClass:objc_opt_class()];

      if (v12)
      {
        break;
      }

      clientDomainName = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(clientDomainName, OS_LOG_TYPE_ERROR))
      {
        summary2 = [(MADAutoAssetScheduler *)self summary];
        *buf = 138543618;
        v31 = summary2;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&dword_0, clientDomainName, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_setConfigurationForAssetSelector} unable to access entry in self.setConfigurations | nextSetConfigurationKey:%{public}@", buf, 0x16u);

LABEL_16:
        v6 = v23;
      }

LABEL_18:
      objc_autoreleasePoolPop(v10);
      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    clientDomainName = [v12 clientDomainName];
    assetType = [selectorCopy assetType];
    if (([SUCore stringIsEqual:clientDomainName to:assetType]& 1) != 0)
    {
      v15 = v7;
      selfCopy = self;
      assetSetIdentifier = [v12 assetSetIdentifier];
      assetSpecifier = [selectorCopy assetSpecifier];
      v22 = [SUCore stringIsEqual:assetSetIdentifier to:assetSpecifier];

      if (v22)
      {
        objc_autoreleasePoolPop(v10);
        goto LABEL_22;
      }

      self = selfCopy;
      v7 = v15;
      v6 = v23;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_20:
  v12 = 0;
LABEL_22:

  return v12;
}

- (id)_snapshotOfJobsBySelector
{
  selfCopy = self;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v4 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  jobsBySelector = [(MADAutoAssetScheduler *)selfCopy jobsBySelector];
  v22 = [jobsBySelector countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v22)
  {
    v6 = *v24;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(jobsBySelector);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        jobsBySelector2 = [(MADAutoAssetScheduler *)selfCopy jobsBySelector];
        v12 = [jobsBySelector2 safeObjectForKey:v9 ofClass:objc_opt_class()];

        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(MADAutoAssetScheduler *)selfCopy summary];
            v14 = v6;
            v15 = selfCopy;
            v16 = p_weak_ivar_lyt;
            v17 = jobsBySelector;
            v19 = v18 = v4;
            *buf = 138543362;
            v28 = v19;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_snapshotOfJobsBySelector} unable to load scheduledJob entry", buf, 0xCu);

            v4 = v18;
            jobsBySelector = v17;
            p_weak_ivar_lyt = v16;
            selfCopy = v15;
            v6 = v14;
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v22 = [jobsBySelector countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v22);
  }

  if ([v4 count])
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_scheduleSelector:(id)selector triggeringAtIntervalSecs:(int64_t)secs withRemainingSecs:(int64_t)remainingSecs forPushedJob:(BOOL)job forSetJob:(BOOL)setJob withSetPolicy:(id)policy triggeringIfLearned:(BOOL)learned resettingRemaining:(BOOL)self0 isReadOnlyForResumeFromPersisted:(BOOL)self1
{
  setJobCopy = setJob;
  jobCopy = job;
  selectorCopy = selector;
  policyCopy = policy;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  assetType = [selectorCopy assetType];
  if (setJobCopy)
  {
    v20 = [(MADAutoAssetScheduler *)self _assetTypeForAssetSelector:selectorCopy];

    assetType = v20;
  }

  if (!assetType)
  {
    v22 = _MADLog(@"AutoScheduler");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    summary = [(MADAutoAssetScheduler *)self summary];
    summary2 = [selectorCopy summary];
    *buf = 138543618;
    v115 = summary;
    v116 = 2114;
    v117 = summary2;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} unable to determine asset-type | assetSelector:%{public}@", buf, 0x16u);
LABEL_18:

    goto LABEL_62;
  }

  v101 = jobCopy;
  v99 = policyCopy;
  v21 = +[MADAutoAssetControlManager preferenceScheduledOnlyForAssetTypes];
  if (v21)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v108 objects:v113 count:16];
    if (!v23)
    {
LABEL_13:

      v27 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        summary3 = [(MADAutoAssetScheduler *)self summary];
        summary4 = [selectorCopy summary];
        *buf = 138543618;
        v115 = summary3;
        v116 = 2114;
        v117 = summary4;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} asset-type blocked | assetSelector:%{public}@", buf, 0x16u);
      }

      goto LABEL_74;
    }

    v24 = v23;
    v25 = *v109;
LABEL_7:
    v26 = 0;
    while (1)
    {
      if (*v109 != v25)
      {
        objc_enumerationMutation(v22);
      }

      if (([SUCore stringIsEqual:assetType to:*(*(&v108 + 1) + 8 * v26)]& 1) != 0)
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v108 objects:v113 count:16];
        if (!v24)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }
  }

  v96 = setJobCopy;
  v95 = assetType;
  v32 = selectorCopy;
  v33 = [(MADAutoAssetScheduler *)self _decideTriggerIntervalSecs:@"_scheduleSelector" forAssetSelector:selectorCopy];
  v104 = 0u;
  v105 = 0u;
  if (v33 >= remainingSecs)
  {
    remainingSecsCopy = remainingSecs;
  }

  else
  {
    remainingSecsCopy = v33;
  }

  v92 = remainingSecsCopy;
  v93 = v33;
  v106 = 0uLL;
  v107 = 0uLL;
  selfCopy = self;
  obj = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v35 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
  if (!v35)
  {
    goto LABEL_31;
  }

  v36 = v35;
  v37 = *v105;
  while (2)
  {
    for (i = 0; i != v36; i = i + 1)
    {
      if (*v105 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v104 + 1) + 8 * i);
      v40 = objc_autoreleasePoolPush();
      assetSelector = [v39 assetSelector];
      persistedEntryID = [assetSelector persistedEntryID];

      assetSelector2 = [v39 assetSelector];
      LODWORD(assetSelector) = [MADAutoAssetScheduler isSelector:v32 consideredEqualTo:assetSelector2];

      if (assetSelector)
      {
        intervalSecs = [v39 intervalSecs];
        v65 = intervalSecs != v93;
        if (intervalSecs != v93)
        {
          [v39 setIntervalSecs:v93];
        }

        selectorCopy = v32;
        v22 = obj;
        if (remaining)
        {
          policyCopy = v99;
          if ([v39 remainingSecs] != v93)
          {
            [v39 setRemainingSecs:v93];
            v65 = 1;
          }
        }

        else
        {
          policyCopy = v99;
        }

        if (([v39 pushedJob] & 1) == 0 && v101)
        {
          v65 = 1;
          [v39 setPushedJob:1];
          [v39 setPushedPolicy:policyCopy];
          [(MADAutoAssetScheduler *)selfCopy setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)selfCopy jobsAwaitingPushTrigger]+ 1];
        }

        assetSelector3 = [v39 assetSelector];
        v67 = [selectorCopy isEqual:assetSelector3];

        if ((v67 & 1) == 0)
        {
          [v39 setAssetSelector:selectorCopy];
          v65 = 1;
        }

        if ([v39 setJob] != v96)
        {
          [v39 setSetJob:?];
          v65 = 1;
        }

        if ([v39 setJob])
        {
          if (policyCopy)
          {
            setPolicy = [v39 setPolicy];
            v69 = [policyCopy isEqual:setPolicy];

            if (v69)
            {
              goto LABEL_56;
            }

            [v39 setSetPolicy:policyCopy];
          }

          else if (!v65)
          {
            goto LABEL_64;
          }

LABEL_68:
          persistedState = [(MADAutoAssetScheduler *)selfCopy persistedState];
          v75 = [persistedState persistedEntry:persistedEntryID fromLocation:@"_scheduleSelector"];

          v102 = [v75 BOOLeanForKey:@"requiringRetry"];
          assetSelector4 = [v39 assetSelector];
          [v75 persistSecureCodedObject:assetSelector4 forKey:@"assetSelector"];

          -[NSObject persistULL:forKey:](v75, "persistULL:forKey:", [v39 intervalSecs], @"intervalSecs");
          -[NSObject persistULL:forKey:](v75, "persistULL:forKey:", [v39 remainingSecs], @"remainingSecs");
          -[NSObject persistBoolean:forKey:](v75, "persistBoolean:forKey:", [v39 pushedJob], @"pushJob");
          -[NSObject persistBoolean:forKey:](v75, "persistBoolean:forKey:", [v39 setJob], @"setJob");
          setPolicy2 = [v39 setPolicy];

          if (setPolicy2)
          {
            setPolicy3 = [v39 setPolicy];
            [v75 persistSecureCodedObject:setPolicy3 forKey:@"setPolicy"];
          }

          pushedPolicy = [v39 pushedPolicy];

          if (pushedPolicy)
          {
            pushedPolicy2 = [v39 pushedPolicy];
            [v75 persistSecureCodedObject:pushedPolicy2 forKey:@"pushedPolicy"];
          }

          persistedState2 = [(MADAutoAssetScheduler *)selfCopy persistedState];
          summary5 = [v39 summary];
          [persistedState2 storePersistedEntry:persistedEntryID withEntrySummary:summary5 fromLocation:@"_scheduleSelector"];

          assetSelector5 = [v39 assetSelector];
          intervalSecs2 = [v39 intervalSecs];
          remainingSecs = [v39 remainingSecs];
          pushedJob = [v39 pushedJob];
          setJob = [v39 setJob];
          setPolicy4 = [v39 setPolicy];
          pushedPolicy3 = [v39 pushedPolicy];
          LOBYTE(v91) = v102;
          LOBYTE(v90) = setJob;
          [(MADAutoAssetScheduler *)selfCopy _logPersistedEntry:@"_scheduleSelector" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector5 intervalSecs:intervalSecs2 remainingSecs:remainingSecs pushedJob:pushedJob setJob:v90 setPolicy:setPolicy4 pushedPolicy:pushedPolicy3 requiringRetry:v91 message:@"already scheduled job (adjusted)"];

          assetType = v95;
          v22 = obj;
LABEL_73:

          objc_autoreleasePoolPop(v40);
          goto LABEL_74;
        }

LABEL_56:
        if (v65)
        {
          goto LABEL_68;
        }

LABEL_64:
        v75 = _MADLog(@"AutoScheduler");
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          summary6 = [(MADAutoAssetScheduler *)selfCopy summary];
          summary7 = [v39 summary];
          *buf = 138543618;
          v115 = summary6;
          v116 = 2114;
          v117 = summary7;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} already scheduled | alreadyAwaiting:%{public}@", buf, 0x16u);
        }

        assetType = v95;
        goto LABEL_73;
      }

      objc_autoreleasePoolPop(v40);
    }

    v36 = [obj countByEnumeratingWithState:&v104 objects:v112 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v44 = [MADAutoAssetScheduledJob alloc];
  selectorCopy = v32;
  v45 = v32;
  policyCopy = v99;
  v46 = [(MADAutoAssetScheduledJob *)v44 initForAssetSelector:v45 withActivityInterval:v93 forPushedJob:v101 forSetJob:v96 withSetPolicy:v99 requiringRetry:0];
  v22 = v46;
  if (!v46)
  {
    summary = _MADLog(@"AutoScheduler");
    assetType = v95;
    if (!os_log_type_enabled(summary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    summary2 = [(MADAutoAssetScheduler *)selfCopy summary];
    summary8 = [selectorCopy summary];
    *buf = 138543618;
    v115 = summary2;
    v116 = 2114;
    v117 = summary8;
    _os_log_impl(&dword_0, summary, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} no scheduling change | unable to allocate job for selector:%{public}@", buf, 0x16u);

    goto LABEL_18;
  }

  v47 = v46;
  [v46 setRemainingSecs:v92];
  v48 = selfCopy;
  jobsAwaitingTrigger = [(MADAutoAssetScheduler *)selfCopy jobsAwaitingTrigger];
  [jobsAwaitingTrigger addObject:v47];

  jobsBySelector = [(MADAutoAssetScheduler *)selfCopy jobsBySelector];
  persistedEntryID2 = [selectorCopy persistedEntryID];
  [jobsBySelector setSafeObject:v47 forKey:persistedEntryID2];

  assetType = v95;
  if (!persisted)
  {
    persistedEntryID3 = [selectorCopy persistedEntryID];
    persistedState3 = [(MADAutoAssetScheduler *)selfCopy persistedState];
    v54 = [persistedState3 persistedEntry:persistedEntryID3 fromLocation:@"_scheduleSelector"];

    [v54 persistSecureCodedObject:selectorCopy forKey:@"assetSelector"];
    [v54 persistULL:-[NSObject intervalSecs](v47 forKey:{"intervalSecs"), @"intervalSecs"}];
    [v54 persistULL:-[NSObject remainingSecs](v47 forKey:{"remainingSecs"), @"remainingSecs"}];
    [v54 persistBoolean:v101 forKey:@"pushJob"];
    [v54 persistBoolean:v96 forKey:@"setJob"];
    setPolicy5 = [v47 setPolicy];

    if (setPolicy5)
    {
      setPolicy6 = [v47 setPolicy];
      [v54 persistSecureCodedObject:setPolicy6 forKey:@"setPolicy"];
    }

    pushedPolicy4 = [v47 pushedPolicy];

    if (pushedPolicy4)
    {
      pushedPolicy5 = [v47 pushedPolicy];
      [v54 persistSecureCodedObject:pushedPolicy5 forKey:@"pushedPolicy"];
    }

    [v54 persistBoolean:0 forKey:@"requiringRetry"];
    v48 = selfCopy;
    persistedState4 = [(MADAutoAssetScheduler *)selfCopy persistedState];
    summary9 = [v47 summary];
    [persistedState4 storePersistedEntry:persistedEntryID3 withEntrySummary:summary9 fromLocation:@"_scheduleSelector"];
  }

  intervalSecs3 = [v47 intervalSecs];
  remainingSecs2 = [v47 remainingSecs];
  pushedPolicy6 = [v47 pushedPolicy];
  LOBYTE(v91) = 0;
  LOBYTE(v90) = v96;
  [(MADAutoAssetScheduler *)v48 _logPersistedEntry:@"_scheduleSelector" operation:@"ENTRY_ADD" persistingSelector:selectorCopy intervalSecs:intervalSecs3 remainingSecs:remainingSecs2 pushedJob:v101 setJob:v90 setPolicy:v99 pushedPolicy:pushedPolicy6 requiringRetry:v91 message:@"now tracking scheduled job"];

  if (learned)
  {
    summary = objc_alloc_init(NSMutableArray);
    [summary addObject:selectorCopy];
    [(MADAutoAssetScheduler *)v48 _informConnectorTriggeredSelectors:0 withTriggeredRequiringRetry:summary];
  }

  else
  {
    summary = +[MADAnalyticsManager getAnalyticsManager];
    xpcActivityUUID = [(MADAutoAssetScheduler *)v48 xpcActivityUUID];
    v72 = [NSNumber numberWithBool:v101];
    v73 = [NSNumber numberWithBool:v96];
    v74 = [summary recordMobileAssetScheduler:v92 forSelector:selectorCopy withXpcID:xpcActivityUUID forPushJob:v72 forSetJob:v73 inSchedulerState:0 inXPCState:0 didJobFail:0];
  }

  v22 = v47;
LABEL_62:

LABEL_74:
}

- (void)_schedulePushNotifications:(id)notifications
{
  notificationsCopy = notifications;
  selfCopy = self;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v75 = objc_alloc_init(NSMutableDictionary);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v90 objects:v111 count:16];
  obj = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v91;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v91 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v90 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [obj safeObjectForKey:v11 ofClass:objc_opt_class()];
        jobsBySelector = [(MADAutoAssetScheduler *)selfCopy jobsBySelector];
        v15 = [jobsBySelector safeObjectForKey:v11 ofClass:objc_opt_class()];

        if (!v15)
        {
          v16 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            summary = [(MADAutoAssetScheduler *)selfCopy summary];
            summary2 = [v13 summary];
            *buf = 138543874;
            v95 = summary;
            v96 = 2114;
            v97 = v11;
            v98 = 2114;
            v99 = summary2;
            v19 = v16;
            v20 = "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} requested push-notification dropped (no scheduled job) | pushSelectorKey:%{public}@ | pushPolicy:%{public}@";
LABEL_12:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
          }

LABEL_13:

          goto LABEL_15;
        }

        if ([v15 pushedJob])
        {
          v16 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            summary = [(MADAutoAssetScheduler *)selfCopy summary];
            summary2 = [v13 summary];
            *buf = 138543874;
            v95 = summary;
            v96 = 2114;
            v97 = v11;
            v98 = 2114;
            v99 = summary2;
            v19 = v16;
            v20 = "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} requested push-notification not modified (already scheduled push-job) | pushSelectorKey:%{public}@ | pushPolicy:%{public}@";
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        [v75 setSafeObject:v13 forKey:v11];
LABEL_15:

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v90 objects:v111 count:16];
    }

    while (v8);
  }

  v21 = v75;
  if ([v75 count])
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v82 = v75;
    v22 = selfCopy;
    v81 = [v82 countByEnumeratingWithState:&v86 objects:v110 count:16];
    if (v81)
    {
      v80 = *v87;
      while (1)
      {
        for (j = 0; j != v81; j = j + 1)
        {
          if (*v87 != v80)
          {
            objc_enumerationMutation(v82);
          }

          v24 = *(*(&v86 + 1) + 8 * j);
          v25 = objc_autoreleasePoolPush();
          v84 = [v82 safeObjectForKey:v24 ofClass:objc_opt_class()];
          jobsBySelector2 = [(MADAutoAssetScheduler *)v22 jobsBySelector];
          v27 = [jobsBySelector2 safeObjectForKey:v24 ofClass:objc_opt_class()];

          if (v27)
          {
            if ([v27 pushedJob])
            {
              v28 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                summary3 = [(MADAutoAssetScheduler *)v22 summary];
                v30 = v84;
                summary4 = [v84 summary];
                *buf = 138543874;
                v95 = summary3;
                v96 = 2114;
                v97 = v24;
                v98 = 2114;
                v99 = summary4;
                v32 = v28;
                v33 = "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} trimmed push-notification when already push-job (ignored) | pushSelectorKey:%{public}@ | pushPolicy:%{public}@";
LABEL_29:
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x20u);

                goto LABEL_54;
              }
            }

            else
            {
              v78 = v25;
              assetSelector = [v27 assetSelector];
              persistedEntryID = [assetSelector persistedEntryID];

              if ([v84 checkForNewerIntervalSecs])
              {
                if ([v84 checkForNewerIntervalSecs] >= 600)
                {
                  checkForNewerIntervalSecs = &loc_93A80;
                  if ([v84 checkForNewerIntervalSecs] <= 604800)
                  {
                    checkForNewerIntervalSecs = [v84 checkForNewerIntervalSecs];
                  }
                }

                else
                {
                  checkForNewerIntervalSecs = (&stru_248 + 16);
                }
              }

              else
              {
                checkForNewerIntervalSecs = (&stru_338 + 76);
              }

              if ([v84 newerFoundAutoDownloadJitterSecs])
              {
                if ([v84 newerFoundAutoDownloadJitterSecs] >= 600)
                {
                  if ([v84 newerFoundAutoDownloadJitterSecs] <= 604800)
                  {
                    newerFoundAutoDownloadJitterSecs = [v84 newerFoundAutoDownloadJitterSecs];
                  }

                  else
                  {
                    newerFoundAutoDownloadJitterSecs = 604800;
                  }
                }

                else
                {
                  newerFoundAutoDownloadJitterSecs = 600;
                }
              }

              else
              {
                newerFoundAutoDownloadJitterSecs = 900;
              }

              [(MADAutoAssetScheduler *)v22 setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)v22 jobsAwaitingPushTrigger]+ 1];
              [v27 setPushedJob:1];
              v37 = objc_opt_new();
              [v37 setUserInitiated:1];
              [v37 setAllowCheckDownloadOnBattery:1];
              [v37 setAllowCheckDownloadOverCellular:1];
              [v37 setAllowCheckDownloadOverExpensive:1];
              [v37 setAllowCheckDownloadWhenCPUHigh:1];
              [v37 setAllowCheckDownloadWhenBatteryLow:1];
              v77 = v37;
              [v27 setPushedPolicy:v37];
              jobsBySelector3 = [(MADAutoAssetScheduler *)v22 jobsBySelector];
              [jobsBySelector3 setSafeObject:v27 forKey:v24];

              persistedState = [(MADAutoAssetScheduler *)v22 persistedState];
              v40 = [persistedState persistedEntry:persistedEntryID fromLocation:@"_schedulePushNotifications"];

              v76 = v40;
              if (v40)
              {
                v72 = [v40 BOOLeanForKey:@"requiringRetry"];
                [v40 persistBoolean:1 forKey:@"pushJob"];
                pushedPolicy = [v27 pushedPolicy];
                [v40 persistSecureCodedObject:pushedPolicy forKey:@"pushedPolicy"];

                persistedState2 = [(MADAutoAssetScheduler *)v22 persistedState];
                summary5 = [v27 summary];
                [persistedState2 storePersistedEntry:persistedEntryID withEntrySummary:summary5 fromLocation:@"_schedulePushNotifications"];

                assetSelector2 = [v27 assetSelector];
                intervalSecs = [v27 intervalSecs];
                remainingSecs = [v27 remainingSecs];
                pushedJob = [v27 pushedJob];
                setJob = [v27 setJob];
                [v27 setPolicy];
                v74 = newerFoundAutoDownloadJitterSecs;
                v48 = v24;
                v50 = v49 = checkForNewerIntervalSecs;
                pushedPolicy2 = [v27 pushedPolicy];
                LOBYTE(v63) = v72;
                LOBYTE(v62) = setJob;
                v22 = selfCopy;
                [(MADAutoAssetScheduler *)selfCopy _logPersistedEntry:@"_schedulePushNotifications" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector2 intervalSecs:intervalSecs remainingSecs:remainingSecs pushedJob:pushedJob setJob:v62 setPolicy:v50 pushedPolicy:pushedPolicy2 requiringRetry:v63 message:@"scheduled-job now push-job"];

                checkForNewerIntervalSecs = v49;
                v24 = v48;
                newerFoundAutoDownloadJitterSecs = v74;
              }

              else
              {
                assetSelector2 = _MADLog(@"AutoScheduler");
                if (os_log_type_enabled(assetSelector2, OS_LOG_TYPE_ERROR))
                {
                  summary6 = [(MADAutoAssetScheduler *)v22 summary];
                  [v27 summary];
                  v54 = v53 = newerFoundAutoDownloadJitterSecs;
                  *buf = 138543874;
                  v95 = summary6;
                  v96 = 2114;
                  v97 = v24;
                  v98 = 2114;
                  v99 = v54;
                  _os_log_impl(&dword_0, assetSelector2, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} already-scheduled-job without persisted entry (unable to persist that job has been pushed) | pushSelectorKey:%{public}@ | alreadyScheduledJob:%{public}@", buf, 0x20u);

                  newerFoundAutoDownloadJitterSecs = v53;
                }
              }

              v55 = &checkForNewerIntervalSecs[arc4random_uniform(newerFoundAutoDownloadJitterSecs)];
              v56 = +[MADAutoAssetControlManager preferencePushActivityIntervalSecs];
              if (v56 <= 0)
              {
                v57 = v55;
              }

              else
              {
                v57 = v56;
              }

              v58 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                summary7 = [(MADAutoAssetScheduler *)v22 summary];
                summary8 = [v84 summary];
                v69 = [MADAutoAssetControlManager allocIntervalString:604800];
                v65 = v69;
                v67 = [MADAutoAssetControlManager allocIntervalString:0];
                v66 = v67;
                v59 = [MADAutoAssetControlManager allocIntervalString:604800];
                v68 = v59;
                v64 = [MADAutoAssetControlManager allocIntervalString:0];
                v60 = [MADAutoAssetControlManager allocIntervalString:v57];

                *buf = 138545154;
                v95 = summary7;
                v96 = 2114;
                v97 = v24;
                v98 = 2114;
                v99 = summary8;
                v100 = 2114;
                v101 = v69;
                v102 = 2114;
                v103 = v67;
                v104 = 2114;
                v105 = v59;
                v106 = 2114;
                v107 = v64;
                v108 = 2114;
                v109 = v60;
                _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} scheduled-job now push-job | pushSelectorKey:%{public}@ | pushPolicy:%{public}@ | delay(%{public}@..%{public}@), jitter(%{public}@..%{public}@) | finalDelaySecs:%{public}@", buf, 0x52u);

                v22 = selfCopy;
              }

              [(MADAutoAssetScheduler *)v22 _startPushDelayTimer:v57];
              v25 = v78;
              v28 = persistedEntryID;
            }
          }

          else
          {
            v28 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              summary3 = [(MADAutoAssetScheduler *)v22 summary];
              v30 = v84;
              summary4 = [v84 summary];
              *buf = 138543874;
              v95 = summary3;
              v96 = 2114;
              v97 = v24;
              v98 = 2114;
              v99 = summary4;
              v32 = v28;
              v33 = "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} trimmed push-notification without already-scheduled-job (dropped) | pushSelectorKey:%{public}@ | pushPolicy:%{public}@";
              goto LABEL_29;
            }
          }

          v30 = v84;
LABEL_54:

          objc_autoreleasePoolPop(v25);
        }

        v81 = [v82 countByEnumeratingWithState:&v86 objects:v110 count:16];
        if (!v81)
        {
          v21 = v75;
          break;
        }
      }
    }
  }

  else
  {
    v82 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      summary9 = [(MADAutoAssetScheduler *)selfCopy summary];
      *buf = 138543362;
      v95 = summary9;
      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} no new push-notification (no scheduling change)", buf, 0xCu);
    }
  }
}

- (int64_t)_decideTriggerIntervalSecs:(id)secs forAssetSelector:(id)selector
{
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  _heightenedIntervalSecs = +[MADAutoAssetControlManager preferenceActivityIntervalSecs];
  v8 = [(MADAutoAssetScheduler *)self _assetTypeForAssetSelector:selectorCopy];
  if (_heightenedIntervalSecs < 0)
  {
    if (_MAPreferencesIsInternalAllowed() && !+[MADAutoAssetControlManager preferenceScheduledAsIfNotInternal])
    {
      v9 = @"internal image";
      _heightenedIntervalSecs = 86400;
    }

    else if ([MADAutoAssetScheduler isAssetTypeAtHeightenedFrequency:v8])
    {
      _heightenedIntervalSecs = [(MADAutoAssetScheduler *)self _heightenedIntervalSecs];
      v9 = @"heightened";
    }

    else if ([MADAutoAssetScheduler isAssetTypeAtAggressiveFrequency:v8])
    {
      _heightenedIntervalSecs = [(MADAutoAssetScheduler *)self _aggressiveIntervalSecs];
      v9 = @"aggressive";
    }

    else
    {
      v9 = @"default";
      _heightenedIntervalSecs = 604800;
    }
  }

  else
  {
    v9 = @"preference-based";
  }

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    summary = [(MADAutoAssetScheduler *)self summary];
    summary2 = [selectorCopy summary];
    v14 = 138544386;
    v15 = summary;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = summary2;
    v20 = 2114;
    v21 = v8;
    v22 = 2048;
    v23 = _heightenedIntervalSecs;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_decideTriggerIntervalSecs} reason:%{public}@ | assetSelector:%{public}@ | scheduledJobAssetType:%{public}@ | determinedIntervalSecs:%ld", &v14, 0x34u);
  }

  return _heightenedIntervalSecs;
}

- (int64_t)_heightenedIntervalSecs
{
  result = +[MADAutoAssetControlManager preferenceActivityHeightenedIntervalSecs];
  if (result <= 0)
  {
    return 259200;
  }

  return result;
}

- (int64_t)_aggressiveIntervalSecs
{
  result = +[MADAutoAssetControlManager preferenceActivityAggressiveIntervalSecs];
  if (result <= 0)
  {
    return 86400;
  }

  return result;
}

- (id)_assetTypeForAssetSelector:(id)selector
{
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v25 = selectorCopy;
  assetType = [selectorCopy assetType];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MADAutoAssetScheduler *)self setConfigurations];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = assetType;
    selfCopy = self;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        setConfigurations = [(MADAutoAssetScheduler *)self setConfigurations];
        v13 = [setConfigurations safeObjectForKey:v11 ofClass:objc_opt_class()];

        if (v13)
        {
          assetType2 = [v25 assetType];
          clientDomainName = [v13 clientDomainName];
          if (([SUCore stringIsEqual:assetType2 to:clientDomainName]& 1) != 0)
          {
            assetSpecifier = [v25 assetSpecifier];
            [v13 assetSetIdentifier];
            v17 = v8;
            v19 = v18 = v9;
            v20 = [SUCore stringIsEqual:assetSpecifier to:v19];

            v9 = v18;
            v8 = v17;

            self = selfCopy;
            if (v20)
            {
              assetType = [v13 firstEntryAssetType];

              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
    assetType = v22;
  }

LABEL_14:

  return assetType;
}

- (void)_jobFinishedForSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure
{
  failureCopy = failure;
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
  persistedEntryID = [selectorCopy persistedEntryID];
  v10 = [jobsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

  if (v10)
  {
    persistedEntryID2 = [selectorCopy persistedEntryID];
    persistedState = [(MADAutoAssetScheduler *)self persistedState];
    v37 = persistedEntryID2;
    v13 = [persistedState persistedEntry:persistedEntryID2 fromLocation:@"_jobFinishedForSelector"];

    if ([v13 BOOLeanForKey:@"requiringRetry"] != failureCopy)
    {
      [v13 persistBoolean:failureCopy forKey:@"requiringRetry"];
      persistedState2 = [(MADAutoAssetScheduler *)self persistedState];
      summary = [v10 summary];
      [persistedState2 storePersistedEntry:persistedEntryID2 withEntrySummary:summary fromLocation:@"_jobFinishedForSelector"];

      assetSelector = [v10 assetSelector];
      intervalSecs = [v10 intervalSecs];
      remainingSecs = [v10 remainingSecs];
      pushedJob = [v10 pushedJob];
      setJob = [v10 setJob];
      setPolicy = [v10 setPolicy];
      pushedPolicy = [v10 pushedPolicy];
      v20 = [NSString alloc];
      v21 = @"no longer retry-required";
      if (failureCopy)
      {
        v21 = @"retry-required (potential network failure)";
      }

      v22 = [v20 initWithFormat:@"scheduled job finished (%@)", v21];
      LOBYTE(v33) = failureCopy;
      LOBYTE(v32) = setJob;
      [(MADAutoAssetScheduler *)self _logPersistedEntry:@"_jobFinishedForSelector" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector intervalSecs:intervalSecs remainingSecs:remainingSecs pushedJob:pushedJob setJob:v32 setPolicy:setPolicy pushedPolicy:pushedPolicy requiringRetry:v33 message:v22];
    }

    v23 = +[MADAnalyticsManager getAnalyticsManager];
    assetSelector2 = [v10 assetSelector];
    v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 pushedJob]);
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 setJob]);
    v27 = [NSNumber numberWithBool:failureCopy];
    v28 = [v23 recordMobileAssetScheduler:-1 forSelector:assetSelector2 withXpcID:0 forPushJob:v25 forSetJob:v26 inSchedulerState:4 inXPCState:0 didJobFail:v27];

    [(MADAutoAssetScheduler *)self _informConnectorActiveJobFinishedforSelector:selectorCopy withPotentialNetworkFailure:failureCopy];
  }

  else
  {
    v29 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [(MADAutoAssetScheduler *)self summary];
      summary3 = [selectorCopy summary];
      *buf = 138543618;
      v39 = summary2;
      v40 = 2114;
      v41 = summary3;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_jobFinishedForSelector} no longer associated with scheduled job (presumed eliminated) | assetSelector:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_jobFinishedForSetDomainName:(id)name forAssetSetIdentifier:(id)identifier withPotentialNetworkFailure:(BOOL)failure
{
  failureCopy = failure;
  identifierCopy = identifier;
  nameCopy = name;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v11 = [[MAAutoAssetSelector alloc] initForAssetType:nameCopy withAssetSpecifier:identifierCopy];
  jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
  persistedEntryID = [v11 persistedEntryID];
  v14 = [jobsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

  if (v14)
  {
    persistedEntryID2 = [v11 persistedEntryID];
    persistedState = [(MADAutoAssetScheduler *)self persistedState];
    v17 = [persistedState persistedEntry:persistedEntryID2 fromLocation:@"_jobFinishedForSetDomainName"];

    if ([v17 BOOLeanForKey:@"requiringRetry"] != failureCopy)
    {
      [v17 persistBoolean:failureCopy forKey:@"requiringRetry"];
      persistedState2 = [(MADAutoAssetScheduler *)self persistedState];
      summary = [v14 summary];
      [persistedState2 storePersistedEntry:persistedEntryID2 withEntrySummary:summary fromLocation:@"_jobFinishedForSetDomainName"];

      assetSelector = [v14 assetSelector];
      intervalSecs = [v14 intervalSecs];
      remainingSecs = [v14 remainingSecs];
      pushedJob = [v14 pushedJob];
      setJob = [v14 setJob];
      setPolicy = [v14 setPolicy];
      pushedPolicy = [v14 pushedPolicy];
      v23 = [NSString alloc];
      v24 = @"no longer retry-required";
      if (failureCopy)
      {
        v24 = @"retry-required (potential network failure)";
      }

      v25 = [v23 initWithFormat:@"scheduled job finished (%@)", v24];
      LOBYTE(v34) = failureCopy;
      LOBYTE(v33) = setJob;
      [(MADAutoAssetScheduler *)self _logPersistedEntry:@"_jobFinishedForSetDomainName" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector intervalSecs:intervalSecs remainingSecs:remainingSecs pushedJob:pushedJob setJob:v33 setPolicy:setPolicy pushedPolicy:pushedPolicy requiringRetry:v34 message:v25];
    }

    v26 = +[MADAnalyticsManager getAnalyticsManager];
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 pushedJob]);
    v28 = [NSNumber numberWithBool:failureCopy];
    v29 = [v26 recordMobileAssetScheduler:-1 forSelector:v11 withXpcID:0 forPushJob:v27 forSetJob:&__kCFBooleanTrue inSchedulerState:4 inXPCState:0 didJobFail:v28];

    [(MADAutoAssetScheduler *)self _informConnectorActiveJobFinishedforSelector:v11 withPotentialNetworkFailure:failureCopy];
  }

  else
  {
    v30 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [(MADAutoAssetScheduler *)self summary];
      summary3 = [v11 summary];
      *buf = 138543618;
      v40 = summary2;
      v41 = 2114;
      v42 = summary3;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_jobFinishedForSetDomainName} no longer associated with scheduled job (presumed eliminated) | setJobSelector:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_eliminateSelector:(id)selector forSetJob:(BOOL)job indicatingWhenEliminated:(BOOL)eliminated
{
  eliminatedCopy = eliminated;
  jobCopy = job;
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  assetSpecifier = [selectorCopy assetSpecifier];

  if (assetSpecifier || (jobCopy & 1) != 0)
  {
    [(MADAutoAssetScheduler *)self _eliminateSpecificSelector:selectorCopy];
    goto LABEL_36;
  }

  v66 = objc_alloc_init(NSMutableArray);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(MADAutoAssetScheduler *)self jobsBySelector];
  v10 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = *v82;
  selfCopy = self;
  v65 = selectorCopy;
  v63 = jobCopy;
  v62 = *v82;
  do
  {
    v13 = 0;
    v67 = v11;
    do
    {
      if (*v82 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v70 = v13;
      v14 = *(*(&v81 + 1) + 8 * v13);
      context = objc_autoreleasePoolPush();
      jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
      v16 = [jobsBySelector safeObjectForKey:v14 ofClass:objc_opt_class()];

      assetSelector = [v16 assetSelector];

      v72 = v16;
      if (assetSelector)
      {
        assetSelector2 = [v16 assetSelector];
        assetType = [assetSelector2 assetType];
        assetType2 = [selectorCopy assetType];
        v21 = [SUCore stringIsEqual:assetType to:assetType2];

        if (!v21)
        {
          goto LABEL_25;
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v22 = v66;
        v23 = [v22 countByEnumeratingWithState:&v77 objects:v92 count:16];
        p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
        v25 = v72;
        if (v23)
        {
          v26 = v23;
          v27 = *v78;
          v71 = v22;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v78 != v27)
              {
                objc_enumerationMutation(v71);
              }

              v29 = *(*(&v77 + 1) + 8 * i);
              v30 = p_weak_ivar_lyt[223];
              assetSelector3 = [v25 assetSelector];
              assetType3 = [assetSelector3 assetType];
              assetType4 = [v29 assetType];
              if ([v30 stringIsEqual:assetType3 to:assetType4])
              {
                v34 = p_weak_ivar_lyt[223];
                assetSelector4 = [v25 assetSelector];
                assetSpecifier2 = [assetSelector4 assetSpecifier];
                assetSpecifier3 = [v29 assetSpecifier];
                LOBYTE(v34) = [v34 stringIsEqual:assetSpecifier2 to:assetSpecifier3];

                p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
                v25 = v72;

                if (v34)
                {
                  self = selfCopy;
                  selectorCopy = v65;
                  jobCopy = v63;
                  v12 = v62;
                  v11 = v67;
                  assetSelector5 = v71;
                  goto LABEL_24;
                }
              }

              else
              {
              }
            }

            v22 = v71;
            v26 = [v71 countByEnumeratingWithState:&v77 objects:v92 count:16];
          }

          while (v26);
        }

        assetSelector5 = [v25 assetSelector];
        [v22 addObject:assetSelector5];
        self = selfCopy;
        selectorCopy = v65;
        jobCopy = v63;
        v12 = v62;
        v11 = v67;
      }

      else
      {
        assetSelector5 = _MADLog(@"AutoScheduler");
        if (os_log_type_enabled(assetSelector5, OS_LOG_TYPE_ERROR))
        {
          summary = [(MADAutoAssetScheduler *)self summary];
          summary2 = [selectorCopy summary];
          *buf = 138543618;
          v86 = summary;
          v87 = 2114;
          v88 = summary2;
          _os_log_impl(&dword_0, assetSelector5, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} scheduledJob with nil assetSelector encountered on jobsBySelector | eliminateSelector:%{public}@", buf, 0x16u);
        }
      }

LABEL_24:

LABEL_25:
      objc_autoreleasePoolPop(context);
      v13 = v70 + 1;
    }

    while ((v70 + 1) != v11);
    v11 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  }

  while (v11);
LABEL_27:

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v41 = v66;
  v42 = [v41 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v74;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v74 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v73 + 1) + 8 * j);
        v47 = objc_autoreleasePoolPush();
        [(MADAutoAssetScheduler *)self _eliminateSpecificSelector:v46];
        objc_autoreleasePoolPop(v47);
      }

      v43 = [v41 countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v43);
  }

LABEL_36:
  [(MADAutoAssetScheduler *)self _informConnectorAlteredSelectors];
  v48 = +[MADAnalyticsManager getAnalyticsManager];
  v49 = [NSNumber numberWithBool:jobCopy];
  v50 = [v48 recordMobileAssetScheduler:-1 forSelector:selectorCopy withXpcID:0 forPushJob:0 forSetJob:v49 inSchedulerState:2 inXPCState:0 didJobFail:0];

  v51 = _MADLog(@"AutoScheduler");
  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
  if (jobCopy)
  {
    if (v52)
    {
      summary3 = [(MADAutoAssetScheduler *)self summary];
      if (eliminatedCopy)
      {
        v54 = @"Y";
      }

      else
      {
        v54 = @"N";
      }

      summary4 = [selectorCopy summary];
      *buf = 138543874;
      v86 = summary3;
      v87 = 2114;
      v88 = v54;
      v89 = 2114;
      v90 = summary4;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} set-job | indicatingEliminated:%{public}@ | eliminateSelector:%{public}@", buf, 0x20u);
    }

    if (eliminatedCopy)
    {
      assetType5 = [selectorCopy assetType];
      assetSpecifier4 = [selectorCopy assetSpecifier];
      [MADAutoAssetControlManager schedulerEliminatedSetDomainName:assetType5 forAssetSetIdentifier:assetSpecifier4];
    }
  }

  else
  {
    if (v52)
    {
      summary5 = [(MADAutoAssetScheduler *)self summary];
      if (eliminatedCopy)
      {
        v59 = @"Y";
      }

      else
      {
        v59 = @"N";
      }

      summary6 = [selectorCopy summary];
      *buf = 138543874;
      v86 = summary5;
      v87 = 2114;
      v88 = v59;
      v89 = 2114;
      v90 = summary6;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} auto-asset-job | indicatingEliminated:%{public}@ | eliminateSelector:%{public}@", buf, 0x20u);
    }

    if (eliminatedCopy)
    {
      [MADAutoAssetControlManager schedulerEliminatedSelector:selectorCopy];
    }
  }
}

- (void)_eliminateSpecificSelector:(id)selector
{
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  persistedEntryID = [selectorCopy persistedEntryID];
  if (persistedEntryID)
  {
    persistedState = [(MADAutoAssetScheduler *)self persistedState];
    v8 = [persistedState persistedEntryAlreadyExists:persistedEntryID fromLocation:@"_eliminateSpecificSelector"];

    if (v8)
    {
      persistedState2 = [(MADAutoAssetScheduler *)self persistedState];
      v10 = [persistedState2 persistedEntry:persistedEntryID fromLocation:@"_eliminateSpecificSelector"];

      jobsAwaitingTrigger = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
      v12 = [jobsAwaitingTrigger count];

      if (v12)
      {
        v13 = 0;
        while (1)
        {
          v14 = objc_autoreleasePoolPush();
          jobsAwaitingTrigger2 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
          v16 = [jobsAwaitingTrigger2 objectAtIndex:v13];

          if (v16)
          {
            assetSelector = [v16 assetSelector];
            v18 = [MADAutoAssetScheduler isSelector:assetSelector consideredEqualTo:selectorCopy];

            if (v18)
            {
              break;
            }
          }

          objc_autoreleasePoolPop(v14);
          ++v13;
          jobsAwaitingTrigger3 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
          v20 = [jobsAwaitingTrigger3 count];

          if (v13 >= v20)
          {
            goto LABEL_13;
          }
        }

        objc_autoreleasePoolPop(v14);
        jobsAwaitingTrigger4 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
        [jobsAwaitingTrigger4 removeObjectAtIndex:v13];
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_13:
    jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
    [jobsBySelector removeObjectForKey:persistedEntryID];

    if (v10)
    {
      persistedState3 = [(MADAutoAssetScheduler *)self persistedState];
      [persistedState3 removePersistedEntry:persistedEntryID fromLocation:@"_eliminateSpecificSelector"];

      [(MADAutoAssetScheduler *)self _logPersistedRemovedEntry:@"_eliminateSpecificSelector" removedSelector:selectorCopy message:@"eliminated specific asset-selector scheduled job"];
    }
  }

  else
  {
    v21 = _MADLog(@"Auto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      summary = [selectorCopy summary];
      v26 = 138543362;
      v27 = summary;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:_eliminateSpecificSelector} no selectorKey for eliminateSelector:%{public}@", &v26, 0xCu);
    }
  }
}

- (void)_registerForAndStartActivity:(int64_t)activity
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  if (activity >= 60)
  {
    activityCopy = activity;
  }

  else
  {
    activityCopy = 86400;
  }

  [(MADAutoAssetScheduler *)self setScheduledJobsXPCActivity:1];
  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    summary = [(MADAutoAssetScheduler *)self summary];
    *buf = 138543362;
    v13 = summary;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} xpc_activity_register...", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __54__MADAutoAssetScheduler__registerForAndStartActivity___block_invoke;
  v11[3] = &unk_4B3418;
  v11[4] = self;
  v11[5] = activityCopy;
  xpc_activity_register([@"com.apple.mobileassetd.auto-asset-scheduler" UTF8String], XPC_ACTIVITY_CHECK_IN, v11);
  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    summary2 = [(MADAutoAssetScheduler *)self summary];
    *buf = 138543362;
    v13 = summary2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} ...xpc_activity_register", buf, 0xCu);
  }
}

void __54__MADAutoAssetScheduler__registerForAndStartActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _MADLog(@"AutoScheduler");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[XPC] {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity | XPC_ACTIVITY_STATE_RUN...", buf, 2u);
    }

    [*(a1 + 32) _performActivityOperations];
    v11 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[XPC] {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity | ...XPC_ACTIVITY_STATE_RUN", buf, 2u);
    }

    v5 = +[NSUUID UUID];
    v12 = [v5 UUIDString];
    [*(a1 + 32) setXpcActivityUUID:v12];
  }

  else if (state)
  {
    if (v6)
    {
      *buf = 134217984;
      v20 = state;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[XPC] {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity | xpc_activity_state_t state:%ld", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[XPC] {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity | XPC_ACTIVITY_STATE_CHECK_IN...", buf, 2u);
    }

    v7 = xpc_activity_copy_criteria(v3);
    v8 = [*(a1 + 32) schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __54__MADAutoAssetScheduler__registerForAndStartActivity___block_invoke_1328;
    block[3] = &unk_4B33F0;
    v9 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = 0;
    v14 = v7;
    v15 = v9;
    v16 = v3;
    v5 = v7;
    dispatch_sync(v8, block);

    v10 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[XPC] {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity | ...XPC_ACTIVITY_STATE_CHECK_IN", buf, 2u);
    }
  }
}

void __54__MADAutoAssetScheduler__registerForAndStartActivity___block_invoke_1328(uint64_t a1)
{
  v2 = [MADAutoAssetScheduler tickerIntervalForActivityIntervalSecs:*(a1 + 56)];
  v3 = +[MADAnalyticsManager getAnalyticsManager];
  v4 = [NSNumber numberWithLong:*(a1 + 64)];
  v5 = [v3 recordMobileAssetScheduler:v2 forSelector:0 withXpcID:0 forPushJob:0 forSetJob:0 inSchedulerState:1 inXPCState:v4 didJobFail:0];

  v6 = *(a1 + 32);
  if (v6)
  {
    uint64 = xpc_dictionary_get_uint64(v6, XPC_ACTIVITY_INTERVAL);
    [*(a1 + 40) setScheduledJobsXPCActivity:3];
    [*(a1 + 40) _startActivityBackupTrigger];
    v8 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) summary];
      v10 = [MADAutoAssetControlManager allocIntervalString:uint64];
      *buf = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity activated with delayPeriod:%{public}@", buf, 0x16u);
    }

    v11 = [*(a1 + 40) persistedState];
    v12 = [v11 persistedConfig];
    [v12 persistULL:*(a1 + 56) forKey:@"activityInterval" shouldPersist:1];

    [*(a1 + 40) _logPersistedConfigSet:@"_registerForAndStartActivity" activityIntervalSecs:*(a1 + 56) pushTriggerSecs:-1 lastTickDate:0 message:@"activity interval verified as known to XPC Activity Manager"];
    return;
  }

  [*(a1 + 40) setTickerIntervalReRegistering:0];
  v13 = *(a1 + 40);
  if (*(a1 + 56) <= 0)
  {
    [v13 setActivityIntervalSecs:86400];
    [*(a1 + 40) setTickerIntervalSecs:14400];
    v2 = [*(a1 + 40) tickerIntervalSecs];
    v14 = _MADLog(@"AutoScheduler");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = [*(a1 + 40) summary];
    *buf = 138543362;
    v25 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} scheduler XPC activity without criteria (and no activityInterval provided) - using default ticker", buf, 0xCu);
  }

  else
  {
    [v13 setTickerIntervalSecs:v2];
    v14 = _MADLog(@"AutoScheduler");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = [*(a1 + 40) summary];
    v16 = +[MADAutoAssetControlManager allocIntervalString:](MADAutoAssetControlManager, "allocIntervalString:", [*(a1 + 40) tickerIntervalSecs]);
    *buf = 138543618;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity start with delayPeriod:%{public}@", buf, 0x16u);
  }

LABEL_11:
  if (v2 < 1)
  {
    xpc_activity_unregister([@"com.apple.mobileassetd.auto-asset-scheduler" UTF8String]);
    v20 = +[NSUUID UUID];
    v21 = [v20 UUIDString];
    [*(a1 + 40) setXpcActivityUUID:v21];

    [*(a1 + 40) setScheduledJobsXPCActivity:6];
    [*(a1 + 40) setTickerIntervalReRegistering:0];
    v22 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 40) summary];
      *buf = 138543362;
      v25 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity DISABLED (and no activityInterval provided)", buf, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) _setActivityCriteria:*(a1 + 48) pushNotificationInitiated:0 withActivityDelay:v2];
    [*(a1 + 40) setScheduledJobsXPCActivity:3];
    [*(a1 + 40) _startActivityBackupTrigger];
    v17 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) summary];
      v19 = [MADAutoAssetControlManager allocIntervalString:v2];
      *buf = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} periodic XPC activity started with delayPeriod:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_startActivityBackupTrigger
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  if (+[MADAutoAssetControlManager preferenceScheduledBackupTriggersDisabled])
  {
    v4 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(MADAutoAssetScheduler *)self summary];
      *buf = 138543362;
      v11 = summary;
      v6 = "%{public}@ | {AUTO-SCHEDULER:_startActivityBackupTrigger} backup ticker DISABLED";
LABEL_7:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_9:
    }
  }

  else
  {
    scheduledJobsBackupTriggerTimer = [(MADAutoAssetScheduler *)self scheduledJobsBackupTriggerTimer];

    if (!scheduledJobsBackupTriggerTimer)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __52__MADAutoAssetScheduler__startActivityBackupTrigger__block_invoke;
      v9[3] = &unk_4B3440;
      v9[4] = self;
      v8 = [NSTimer timerWithTimeInterval:1 repeats:v9 block:([(MADAutoAssetScheduler *)self tickerIntervalSecs]* 1.25)];
      [(MADAutoAssetScheduler *)self setScheduledJobsBackupTriggerTimer:v8];

      v4 = +[NSRunLoop mainRunLoop];
      summary = [(MADAutoAssetScheduler *)self scheduledJobsBackupTriggerTimer];
      [v4 addTimer:summary forMode:NSDefaultRunLoopMode];
      goto LABEL_9;
    }

    v4 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(MADAutoAssetScheduler *)self summary];
      *buf = 138543362;
      v11 = summary;
      v6 = "%{public}@ | {AUTO-SCHEDULER:_startActivityBackupTrigger} backup timer already running - no adjustments made";
      goto LABEL_7;
    }
  }
}

void __52__MADAutoAssetScheduler__startActivityBackupTrigger__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) schedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__MADAutoAssetScheduler__startActivityBackupTrigger__block_invoke_2;
  block[3] = &unk_4B2AA0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __52__MADAutoAssetScheduler__startActivityBackupTrigger__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activityTickerFired];
  [*(a1 + 32) setActivityTickerFired:0];
  if ((v2 & 1) == 0)
  {
    v3 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) summary];
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startActivityBackupTrigger} backup ticker | ticking...", &v7, 0xCu);
    }

    [*(a1 + 32) _performTickerOperations:{2 * objc_msgSend(*(a1 + 32), "tickerIntervalSecs")}];
    v5 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) summary];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startActivityBackupTrigger} backup ticker | ...ticking", &v7, 0xCu);
    }
  }
}

- (void)_startPushDelayTimer:(int64_t)timer
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  if (+[MADAutoAssetControlManager preferenceScheduledBackupTriggersDisabled])
  {
    v6 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(MADAutoAssetScheduler *)self summary];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = summary;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startPushBackupTrigger} push delay timer DISABLED", &buf, 0xCu);
    }
  }

  else
  {
    [(MADAutoAssetScheduler *)self setPushDelaySecs:timer];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    [@"com.apple.MobileAsset.handlePushNotificationReceived" UTF8String];
    v19 = os_transaction_create();
    schedulerQueue2 = [(MADAutoAssetScheduler *)self schedulerQueue];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, schedulerQueue2);

    v10 = dispatch_time(0, 1000000000 * timer);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __46__MADAutoAssetScheduler__startPushDelayTimer___block_invoke;
    handler[3] = &unk_4B2BD0;
    v13 = v9;
    p_buf = &buf;
    handler[4] = self;
    v11 = v9;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_resume(v11);

    _Block_object_dispose(&buf, 8);
  }
}

void __46__MADAutoAssetScheduler__startPushDelayTimer___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) summary];
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startPushBackupTrigger} push delay timer | pushing...", &v8, 0xCu);
  }

  [*(a1 + 32) _performPushNotificationOperations];
  v4 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) summary];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startPushBackupTrigger} push delay timer | ...pushing", &v8, 0xCu);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  dispatch_source_cancel(*(a1 + 40));
}

- (void)_setActivityCriteria:(id)criteria pushNotificationInitiated:(BOOL)initiated withActivityDelay:(int64_t)delay
{
  initiatedCopy = initiated;
  criteriaCopy = criteria;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (delay <= 60)
  {
    delayCopy = 60;
  }

  else
  {
    delayCopy = delay;
  }

  v13 = &XPC_ACTIVITY_DELAY;
  if ((delay * 0.05) > 5.0)
  {
    v14 = delay * 0.05;
  }

  else
  {
    v14 = 5.0;
  }

  if (!initiatedCopy)
  {
    v13 = &XPC_ACTIVITY_INTERVAL;
  }

  xpc_dictionary_set_uint64(v10, *v13, delayCopy);
  xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_REPEATING, !initiatedCopy);
  xpc_dictionary_set_uint64(v11, XPC_ACTIVITY_GRACE_PERIOD, v14);
  xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_POWER_NAP, 1);
  xpc_dictionary_set_string(v11, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v15 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    summary = [(MADAutoAssetScheduler *)self summary];
    if (initiatedCopy)
    {
      v17 = @"push";
    }

    else
    {
      v17 = @"scheduled";
    }

    v18 = [MADAutoAssetControlManager allocIntervalString:delayCopy];
    v19 = v18;
    v20 = @"s";
    v21 = 138544642;
    v22 = summary;
    v24 = @"MAINTENANCE";
    v23 = 2114;
    v25 = 2114;
    if (v14 == 1.0)
    {
      v20 = &stru_4BD3F0;
    }

    v26 = v17;
    v27 = 2114;
    v28 = v18;
    v29 = 2048;
    v30 = v14;
    v31 = 2114;
    v32 = v20;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_setActivityCriteria} [%{public}@] %{public}@-jobs XPC activity started | delayPeriod:%{public}@, grace period:%llu sec%{public}@ | run from power-nap:true", &v21, 0x3Eu);
  }

  xpc_activity_set_criteria(criteriaCopy, v11);
}

- (void)_performActivityOperations
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__MADAutoAssetScheduler__performActivityOperations__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_async(schedulerQueue, block);
}

void __51__MADAutoAssetScheduler__performActivityOperations__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScheduledJobsXPCActivity:4];
  v2 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) summary];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} periodic ticker XPC activity | ticking...", &v6, 0xCu);
  }

  [*(a1 + 32) setActivityTickerFired:1];
  [*(a1 + 32) _performTickerOperations:{objc_msgSend(*(a1 + 32), "tickerIntervalSecs")}];
  [*(a1 + 32) setScheduledJobsXPCActivity:3];
  v4 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) summary];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} periodic ticker XPC activity | ...ticking", &v6, 0xCu);
  }
}

- (void)_performTickerOperations:(int64_t)operations
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v6 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v8 = objc_alloc_init(NSMutableArray);
  persistedState = [(MADAutoAssetScheduler *)self persistedState];
  persistedConfig = [persistedState persistedConfig];
  v11 = [persistedConfig dateForKey:@"lastActivityTickerDate"];

  v12 = objc_alloc_init(NSDate);
  if (operations <= 0)
  {
    v13 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      summary = [(MADAutoAssetScheduler *)selfCopy summary];
      *buf = 138543618;
      v89 = summary;
      v90 = 2048;
      operationsCopy2 = operations;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} invalid elapsed ticker seconds - using minimum | elapsedTickerSecs:%ld", buf, 0x16u);
    }

    operations = 60;
  }

  v74 = v8;
  v75 = v6;
  v72 = v12;
  v73 = v11;
  if (v11 && v12 && ([v12 timeIntervalSinceDate:v11], v15 > 0.0) && (v16 = v15 / operations, v16 >= 2))
  {
    operationsCopy3 = v16 * operations;
    v18 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [(MADAutoAssetScheduler *)selfCopy summary];
      *buf = 138543874;
      v89 = summary2;
      v90 = 2048;
      operationsCopy2 = operations;
      v92 = 2048;
      v93 = operationsCopy3;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} making up for missed tick(s) | standardTickSecs:%ld, elapsedTickerSecs:%ld", buf, 0x20u);
    }
  }

  else
  {
    operationsCopy3 = operations;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(MADAutoAssetScheduler *)selfCopy jobsAwaitingTrigger];
  v20 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  v78 = selfCopy;
  if (v20)
  {
    v21 = v20;
    v22 = *v84;
    v76 = *v84;
    v77 = operationsCopy3;
    do
    {
      v23 = 0;
      v79 = v21;
      do
      {
        if (*v84 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v83 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        if (v24)
        {
          assetSelector = [v24 assetSelector];

          if (assetSelector)
          {
            assetSelector2 = [v24 assetSelector];
            persistedEntryID = [assetSelector2 persistedEntryID];

            persistedState2 = [(MADAutoAssetScheduler *)selfCopy persistedState];
            v30 = [persistedState2 persistedEntry:persistedEntryID fromLocation:@"_performActivityOperations"];

            v31 = [v30 BOOLeanForKey:@"requiringRetry"];
            v81 = v25;
            v82 = v30;
            if ([v24 remainingSecs] > operationsCopy3)
            {
              [v24 setRemainingSecs:{objc_msgSend(v24, "remainingSecs") - operationsCopy3}];
              [v30 persistULL:objc_msgSend(v24 forKey:{"remainingSecs"), @"remainingSecs"}];
LABEL_41:
              persistedState3 = [(MADAutoAssetScheduler *)selfCopy persistedState];
              summary3 = [v24 summary];
              [persistedState3 storePersistedEntry:persistedEntryID withEntrySummary:summary3 fromLocation:@"_performActivityOperations"];

              assetSelector3 = [v24 assetSelector];
              intervalSecs = [v24 intervalSecs];
              remainingSecs = [v24 remainingSecs];
              pushedJob = [v24 pushedJob];
              setJob = [v24 setJob];
              setPolicy = [v24 setPolicy];
              pushedPolicy = [v24 pushedPolicy];
              LOBYTE(v71) = v31;
              LOBYTE(v70) = setJob;
              selfCopy = v78;
              [(MADAutoAssetScheduler *)v78 _logPersistedEntry:@"_performTickerOperations" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector3 intervalSecs:intervalSecs remainingSecs:remainingSecs pushedJob:pushedJob setJob:v70 setPolicy:setPolicy pushedPolicy:pushedPolicy requiringRetry:v71 message:@"adjusted currently awaiting scheduled job"];

              v22 = v76;
              operationsCopy3 = v77;
              v21 = v79;
              v25 = v81;
              goto LABEL_42;
            }

            requiringRetry = [v24 requiringRetry];
            assetSelector4 = [v24 assetSelector];
            if (requiringRetry)
            {
              v37 = v74;
            }

            else
            {
              v37 = v75;
            }

            [v37 addObject:assetSelector4];

            v38 = +[MADAnalyticsManager getAnalyticsManager];
            assetSelector5 = [v24 assetSelector];
            xpcActivityUUID = [(MADAutoAssetScheduler *)selfCopy xpcActivityUUID];
            v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v24 setJob]);
            v42 = [v38 recordMobileAssetScheduler:-1 forSelector:assetSelector5 withXpcID:xpcActivityUUID forPushJob:&__kCFBooleanFalse forSetJob:v41 inSchedulerState:3 inXPCState:0 didJobFail:0];

            LODWORD(assetSelector5) = [v24 pushedJob];
            v43 = _MADLog(@"AutoScheduler");
            v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
            if (assetSelector5)
            {
              if (v44)
              {
                summary4 = [(MADAutoAssetScheduler *)selfCopy summary];
                summary5 = [v24 summary];
                *buf = 138543618;
                v89 = summary4;
                v90 = 2114;
                operationsCopy2 = summary5;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered push-job | currentlyAwaiting:%{public}@", buf, 0x16u);
              }

              [v24 setPushedJob:0];
              [v24 setPushedPolicy:0];
              if ([(MADAutoAssetScheduler *)selfCopy jobsAwaitingPushTrigger]>= 1)
              {
                [(MADAutoAssetScheduler *)selfCopy setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)selfCopy jobsAwaitingPushTrigger]- 1];
LABEL_40:
                v52 = [v82 ullForKey:@"intervalSecs"];
                [v24 setRemainingSecs:v52];
                [v82 persistULL:v52 forKey:@"remainingSecs"];
                [v82 persistBoolean:0 forKey:@"pushJob"];
                [v82 persistBoolean:0 forKey:@"requiringRetry"];
                v31 = 0;
                goto LABEL_41;
              }

              v43 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                summary6 = [(MADAutoAssetScheduler *)selfCopy summary];
                summary7 = [v24 summary];
                *buf = 138543618;
                v89 = summary6;
                v90 = 2114;
                operationsCopy2 = summary7;
                v49 = v43;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered push-job when no job awaiting push trigger | currentlyAwaiting:%{public}@";
LABEL_38:
                _os_log_impl(&dword_0, v49, v50, v51, buf, 0x16u);
              }
            }

            else if (v44)
            {
              summary6 = [(MADAutoAssetScheduler *)selfCopy summary];
              summary7 = [v24 summary];
              *buf = 138543618;
              v89 = summary6;
              v90 = 2114;
              operationsCopy2 = summary7;
              v49 = v43;
              v50 = OS_LOG_TYPE_DEFAULT;
              v51 = "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered job | currentlyAwaiting:%{public}@";
              goto LABEL_38;
            }

            goto LABEL_40;
          }

          persistedEntryID = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
          {
            summary8 = [(MADAutoAssetScheduler *)selfCopy summary];
            summary9 = [v24 summary];
            *buf = 138543618;
            v89 = summary8;
            v90 = 2114;
            operationsCopy2 = summary9;
            _os_log_impl(&dword_0, persistedEntryID, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} nil currentlyAwaiting.assetSelector encountered on jobsAwaitingTrigger | currentlyAwaiting:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          persistedEntryID = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
          {
            summary10 = [(MADAutoAssetScheduler *)selfCopy summary];
            *buf = 138543362;
            v89 = summary10;
            _os_log_impl(&dword_0, persistedEntryID, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} nil currentlyAwaiting encountered on jobsAwaitingTrigger", buf, 0xCu);
          }
        }

LABEL_42:

        objc_autoreleasePoolPop(v25);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
    }

    while (v21);
  }

  persistedState4 = [(MADAutoAssetScheduler *)selfCopy persistedState];
  persistedConfig2 = [persistedState4 persistedConfig];
  [persistedConfig2 persistDate:v72 forKey:@"lastActivityTickerDate" shouldPersist:1];

  v64 = v78;
  [(MADAutoAssetScheduler *)v78 _logPersistedConfigSet:@"_performTickerOperations" activityIntervalSecs:[(MADAutoAssetScheduler *)v78 activityIntervalSecs] pushTriggerSecs:-1 lastTickDate:v72 message:@"updated last tick date"];
  if ([v75 count] || objc_msgSend(v74, "count"))
  {
    v65 = _MADLog(@"AutoScheduler");
    v66 = v73;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      summary11 = [(MADAutoAssetScheduler *)v78 summary];
      v68 = [v75 count];
      v69 = [v74 count];
      *buf = 138543874;
      v89 = summary11;
      v90 = 2048;
      operationsCopy2 = v68;
      v92 = 2048;
      v93 = v69;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduled triggered selectors | NoRetry:%ld RequiringRetry:%ld | MA_MILESTONE", buf, 0x20u);

      v64 = v78;
    }

    [(MADAutoAssetScheduler *)v64 _informConnectorTriggeredSelectors:v75 withTriggeredRequiringRetry:v74];
  }

  else
  {
    +[MADAutoAssetControlManager schedulerTriggeredNoActivity];
    v66 = v73;
  }

  +[MADAutoAssetControlManager schedulerTickOccurred];
}

- (void)_performPushNotificationOperations
{
  selfCopy = self;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  [(MADAutoAssetScheduler *)selfCopy setPushCounter:[(MADAutoAssetScheduler *)selfCopy pushCounter]+ 1];
  v50 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  jobsAwaitingTrigger = [(MADAutoAssetScheduler *)selfCopy jobsAwaitingTrigger];
  v5 = [jobsAwaitingTrigger countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    v47 = *v56;
    v48 = jobsAwaitingTrigger;
    do
    {
      v8 = 0;
      v51 = v6;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(jobsAwaitingTrigger);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (v9)
        {
          assetSelector = [v9 assetSelector];

          if (assetSelector)
          {
            v54 = v10;
            assetSelector2 = [v9 assetSelector];
            persistedEntryID = [assetSelector2 persistedEntryID];

            persistedState = [(MADAutoAssetScheduler *)selfCopy persistedState];
            v15 = [persistedState persistedEntry:persistedEntryID fromLocation:@"_performPushNotificationOperations"];

            v16 = [v15 BOOLeanForKey:@"requiringRetry"];
            if ([v9 pushedJob])
            {
              v53 = v16;
              requiringRetry = [v9 requiringRetry];
              assetSelector3 = [v9 assetSelector];
              if (requiringRetry)
              {
                v19 = v49;
              }

              else
              {
                v19 = v50;
              }

              [v19 addObject:assetSelector3];

              [v9 setPushedJob:0];
              [(MADAutoAssetScheduler *)selfCopy setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)selfCopy jobsAwaitingPushTrigger]- 1];
              v20 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                summary = [(MADAutoAssetScheduler *)selfCopy summary];
                summary2 = [v9 summary];
                *buf = 138543618;
                v60 = summary;
                v61 = 2114;
                v62 = summary2;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} 1-shot triggered push-job | currentlyAwaiting:%{public}@", buf, 0x16u);
              }

              v23 = +[MADAnalyticsManager getAnalyticsManager];
              assetSelector4 = [v9 assetSelector];
              xpcActivityUUID = [(MADAutoAssetScheduler *)selfCopy xpcActivityUUID];
              v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 setJob]);
              v27 = [v23 recordMobileAssetScheduler:-1 forSelector:assetSelector4 withXpcID:xpcActivityUUID forPushJob:&__kCFBooleanTrue forSetJob:v26 inSchedulerState:3 inXPCState:0 didJobFail:0];

              [v15 persistULL:objc_msgSend(v15 forKey:{"ullForKey:", @"intervalSecs", @"remainingSecs"}];
              [v15 persistBoolean:0 forKey:@"pushJob"];
              persistedState2 = [(MADAutoAssetScheduler *)selfCopy persistedState];
              summary3 = [v9 summary];
              [persistedState2 storePersistedEntry:persistedEntryID withEntrySummary:summary3 fromLocation:@"_performPushNotificationOperations"];

              assetSelector5 = [v9 assetSelector];
              intervalSecs = [v9 intervalSecs];
              remainingSecs = [v9 remainingSecs];
              pushedJob = [v9 pushedJob];
              v33 = v15;
              v34 = selfCopy;
              setJob = [v9 setJob];
              setPolicy = [v9 setPolicy];
              pushedPolicy = [v9 pushedPolicy];
              LOBYTE(v46) = v53;
              LOBYTE(v45) = setJob;
              selfCopy = v34;
              v15 = v33;
              [(MADAutoAssetScheduler *)selfCopy _logPersistedEntry:@"_performPushNotificationOperations" operation:@"ENTRY_MODIFY" persistingSelector:assetSelector5 intervalSecs:intervalSecs remainingSecs:remainingSecs pushedJob:pushedJob setJob:v45 setPolicy:setPolicy pushedPolicy:pushedPolicy requiringRetry:v46 message:@"adjusted currently awaiting push job"];

              v7 = v47;
              jobsAwaitingTrigger = v48;
              v6 = v51;
            }

            v10 = v54;
          }

          else
          {
            persistedEntryID = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
            {
              summary4 = [(MADAutoAssetScheduler *)selfCopy summary];
              summary5 = [v9 summary];
              *buf = 138543618;
              v60 = summary4;
              v61 = 2114;
              v62 = summary5;
              _os_log_impl(&dword_0, persistedEntryID, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} nil currentlyAwaiting.assetSelector encountered on jobsAwaitingTrigger | assetSelector:%{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          persistedEntryID = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
          {
            summary6 = [(MADAutoAssetScheduler *)selfCopy summary];
            *buf = 138543362;
            v60 = summary6;
            _os_log_impl(&dword_0, persistedEntryID, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} nil currentlyAwaiting encountered on jobsAwaitingTrigger", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [jobsAwaitingTrigger countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v6);
  }

  if ([v50 count] || objc_msgSend(v49, "count"))
  {
    v41 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      summary7 = [(MADAutoAssetScheduler *)selfCopy summary];
      v43 = [v50 count];
      v44 = [v49 count];
      *buf = 138543874;
      v60 = summary7;
      v61 = 2048;
      v62 = v43;
      v63 = 2048;
      v64 = v44;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} 1-shot triggered selectors | NoRetry:%ld RequiringRetry:%ld | MA_MILESTONE", buf, 0x20u);
    }

    [(MADAutoAssetScheduler *)selfCopy _informConnectorTriggeredSelectors:v50 withTriggeredRequiringRetry:v49];
  }
}

- (void)_performTriggeredSetJobForSetConfiguration:(id)configuration usingSetUpdatePolicy:(id)policy
{
  configurationCopy = configuration;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [MAAutoAssetSelector alloc];
  clientDomainName = [configurationCopy clientDomainName];
  assetSetIdentifier = [configurationCopy assetSetIdentifier];

  v12 = [v9 initForAssetType:clientDomainName withAssetSpecifier:assetSetIdentifier];
  if (v8 && v12)
  {
    [v8 addObject:v12];
    v13 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      summary = [(MADAutoAssetScheduler *)self summary];
      v15 = 138543874;
      v16 = summary;
      v17 = 2048;
      v18 = [v7 count];
      v19 = 2048;
      v20 = [v8 count];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performTriggeredSetJobForSetConfiguration} directly triggered selector | NoRetry:%ld RequiringRetry:%ld | MA_MILESTONE", &v15, 0x20u);
    }

    [(MADAutoAssetScheduler *)self _informConnectorTriggeredSelectors:v7 withTriggeredRequiringRetry:v8];
  }
}

- (id)_newSetPolicyForDomainName:(id)name forAssetSetIdentifier:(id)identifier fromLocation:(id)location
{
  locationCopy = location;
  identifierCopy = identifier;
  nameCopy = name;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  locationCopy = [[NSString alloc] initWithFormat:@"%@:_newSetPolicyForDomainName", locationCopy];
  v13 = [[MAAutoAssetSelector alloc] initForAssetType:nameCopy withAssetSpecifier:identifierCopy];

  jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
  persistedEntryID = [v13 persistedEntryID];
  v16 = [jobsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

  if (v16)
  {
    persistedEntryID2 = [v13 persistedEntryID];
    persistedState = [(MADAutoAssetScheduler *)self persistedState];
    v19 = [persistedState persistedEntry:persistedEntryID2 fromLocation:locationCopy];

    if ([v19 BOOLeanForKey:@"setJob"])
    {
      defaultSchedulerSetPolicy = [v19 secureCodedObjectForKey:@"setPolicy" ofClass:objc_opt_class()];
      if (!defaultSchedulerSetPolicy)
      {
        defaultSchedulerSetPolicy = [(MADAutoAssetScheduler *)self defaultSchedulerSetPolicy];
      }

      v21 = objc_alloc_init(MANAutoAssetSetPolicy);
      -[MANAutoAssetSetPolicy setUserInitiated:](v21, "setUserInitiated:", [defaultSchedulerSetPolicy userInitiated]);
      -[MANAutoAssetSetPolicy setLockInhibitsEmergencyRemoval:](v21, "setLockInhibitsEmergencyRemoval:", [defaultSchedulerSetPolicy lockInhibitsEmergencyRemoval]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOnBattery:](v21, "setAllowCheckDownloadOnBattery:", [defaultSchedulerSetPolicy allowCheckDownloadOnBattery]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenBatteryLow:](v21, "setAllowCheckDownloadWhenBatteryLow:", [defaultSchedulerSetPolicy allowCheckDownloadWhenBatteryLow]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenCPUHigh:](v21, "setAllowCheckDownloadWhenCPUHigh:", [defaultSchedulerSetPolicy allowCheckDownloadWhenCPUHigh]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverExpensive:](v21, "setAllowCheckDownloadOverExpensive:", [defaultSchedulerSetPolicy allowCheckDownloadOverExpensive]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverCellular:](v21, "setAllowCheckDownloadOverCellular:", [defaultSchedulerSetPolicy allowCheckDownloadOverCellular]);
      -[MANAutoAssetSetPolicy setBlockCheckDownload:](v21, "setBlockCheckDownload:", [defaultSchedulerSetPolicy blockCheckDownload]);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)defaultSchedulerSetPolicy
{
  if (defaultSchedulerSetPolicy_dispatchOnceSchedulerDefaultSetPolicy != -1)
  {
    [MADAutoAssetScheduler defaultSchedulerSetPolicy];
  }

  v3 = defaultSchedulerSetPolicy___defaultSetPolicy;

  return v3;
}

void __50__MADAutoAssetScheduler_defaultSchedulerSetPolicy__block_invoke(id a1)
{
  v1 = objc_alloc_init(MADAutoSetPolicy);
  v2 = defaultSchedulerSetPolicy___defaultSetPolicy;
  defaultSchedulerSetPolicy___defaultSetPolicy = v1;

  [defaultSchedulerSetPolicy___defaultSetPolicy setUserInitiated:0];
  [defaultSchedulerSetPolicy___defaultSetPolicy setLockInhibitsEmergencyRemoval:0];
  [defaultSchedulerSetPolicy___defaultSetPolicy setAllowCheckDownloadOnBattery:1];
  [defaultSchedulerSetPolicy___defaultSetPolicy setAllowCheckDownloadWhenBatteryLow:0];
  [defaultSchedulerSetPolicy___defaultSetPolicy setAllowCheckDownloadWhenCPUHigh:0];
  [defaultSchedulerSetPolicy___defaultSetPolicy setAllowCheckDownloadOverExpensive:0];
  [defaultSchedulerSetPolicy___defaultSetPolicy setAllowCheckDownloadOverCellular:1];
  [defaultSchedulerSetPolicy___defaultSetPolicy setBlockCheckDownload:0];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [defaultSchedulerSetPolicy___defaultSetPolicy summary];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "AUTO-SCHEDULER:{defaultSchedulerSetPolicy} initialized the default scheduler set-policy | defaultSetPolicy:%{public}@", &v5, 0xCu);
  }
}

- (void)_resumeConnector
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  _currentlyScheduledMarkers = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  _currentlyScheduledMarkersRequiringRetry = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkersRequiringRetry];
  [MADAutoAssetConnector resumeMonitoringMarkers:_currentlyScheduledMarkers withMarkersRequiringRetry:_currentlyScheduledMarkersRequiringRetry];
}

- (void)_informConnectorAlteredSelectors
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  _currentlyScheduledMarkers = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  [MADAutoAssetConnector alteredMonitoringMarkers:_currentlyScheduledMarkers withTriggeredNoRetry:0 withTriggeredRequiringRetry:0];
}

- (void)_informConnectorTriggeredSelectors:(id)selectors withTriggeredRequiringRetry:(id)retry
{
  selectorsCopy = selectors;
  retryCopy = retry;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = selectorsCopy;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [(MADAutoAssetScheduler *)self _markerForSelector:v16];
        [v9 addObject:v18];

        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = retryCopy;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        v26 = [(MADAutoAssetScheduler *)self _markerForSelector:v24, v28];
        [v10 addObject:v26];

        objc_autoreleasePoolPop(v25);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  _currentlyScheduledMarkers = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  [MADAutoAssetConnector alteredMonitoringMarkers:_currentlyScheduledMarkers withTriggeredNoRetry:v9 withTriggeredRequiringRetry:v10];
}

- (void)_informConnectorActiveJobFinishedforSelector:(id)selector withPotentialNetworkFailure:(BOOL)failure
{
  failureCopy = failure;
  selectorCopy = selector;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v8 = [(MADAutoAssetScheduler *)self _markerForSelector:selectorCopy];

  [MADAutoAssetConnector scheduledMarkerFinished:v8 withPotentialNetworkFailure:failureCopy];
}

- (id)_currentlyScheduledMarkers
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  jobsAwaitingTrigger = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v6 = [jobsAwaitingTrigger countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(jobsAwaitingTrigger);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if (v10)
        {
          assetSelector = [v10 assetSelector];

          if (assetSelector)
          {
            assetSelector2 = [v10 assetSelector];
            v14 = [(MADAutoAssetScheduler *)self _markerForSelector:assetSelector2 andJob:v10];

            [v4 addObject:v14];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [jobsAwaitingTrigger countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_currentlyScheduledMarkersRequiringRetry
{
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  jobsAwaitingTrigger = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v6 = [jobsAwaitingTrigger countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(jobsAwaitingTrigger);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (v10)
        {
          assetSelector = [*(*(&v18 + 1) + 8 * i) assetSelector];
          if (assetSelector)
          {
            v12 = assetSelector;
            requiringRetry = [v10 requiringRetry];

            if (requiringRetry)
            {
              v14 = objc_autoreleasePoolPush();
              assetSelector2 = [v10 assetSelector];
              v16 = [(MADAutoAssetScheduler *)self _markerForSelector:assetSelector2 andJob:v10];

              [v4 addObject:v16];
              objc_autoreleasePoolPop(v14);
            }
          }
        }
      }

      v7 = [jobsAwaitingTrigger countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_markerForSelector:(id)selector andJob:(id)job
{
  selectorCopy = selector;
  jobCopy = job;
  v8 = jobCopy;
  if ((jobCopy || (-[MADAutoAssetScheduler jobsBySelector](self, "jobsBySelector"), v9 = objc_claimAutoreleasedReturnValue(), [selectorCopy persistedEntryID], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "safeObjectForKey:ofClass:", v10, objc_opt_class()), v8 = objc_claimAutoreleasedReturnValue(), v10, v9, v8)) && objc_msgSend(v8, "setJob"))
  {
    assetSelector = [v8 assetSelector];
    assetType2 = [(MADAutoAssetScheduler *)self _setConfigurationForAssetSelector:assetSelector];

    setPolicy = [v8 setPolicy];
    if (!setPolicy)
    {
      setPolicy = [(MADAutoAssetScheduler *)self defaultSchedulerSetPolicy];
    }

    v14 = [MADMarker alloc];
    assetType = [selectorCopy assetType];
    clientDomainName = [assetType2 clientDomainName];
    assetSetIdentifier = [assetType2 assetSetIdentifier];
    pushedPolicy = [v8 pushedPolicy];
    v19 = [(MADMarker *)v14 initForAssetType:assetType forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAssetSelector:0 forSetJob:1 withSetPolicy:setPolicy withPushedPolicy:pushedPolicy];
  }

  else
  {
    v20 = [MADMarker alloc];
    assetType2 = [selectorCopy assetType];
    v19 = [(MADMarker *)v20 initForAssetType:assetType2 forClientDomainName:0 forAssetSetIdentifier:0 forAssetSelector:selectorCopy forSetJob:0 withSetPolicy:0 withPushedPolicy:0];
  }

  return v19;
}

+ (id)persistedEntryIDForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  domainCopy = domain;
  identifierCopy = [[NSString alloc] initWithFormat:@"%@_%@", domainCopy, identifierCopy];

  return identifierCopy;
}

- (void)_logPersistedConfigLoad:(id)load activityIntervalSecs:(int64_t)secs pushTriggerSecs:(int64_t)triggerSecs lastTickDate:(id)date message:(id)message
{
  loadCopy = load;
  dateCopy = date;
  messageCopy = message;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v16 = [NSString alloc];
  v17 = [MADAutoAssetControlManager allocIntervalString:secs];
  v18 = [MADAutoAssetControlManager allocIntervalString:triggerSecs];
  v19 = v18;
  if (dateCopy)
  {
    v20 = [MADAutoAssetScheduler stringFromDate:dateCopy];
    v21 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v19, v20];
  }

  else
  {
    v21 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v18, @"N"];
  }

  v22 = [MADAutoAssetPersisted persistedOperationSymbol:@"CONFIG_LOAD"];
  v23 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138546178;
    v25 = @"PERSISTED";
    v26 = 2114;
    v27 = @"AUTO-SCHEDULER";
    v28 = 2114;
    v29 = @"CONFIG_LOAD";
    v30 = 2114;
    v31 = @"SCHED";
    v32 = 2114;
    v33 = @">----->";
    v34 = 2114;
    v35 = loadCopy;
    v36 = 2114;
    v37 = messageCopy;
    v38 = 2114;
    v39 = @"SCHED";
    v40 = 2114;
    v41 = v22;
    v42 = 2114;
    v43 = v21;
    v44 = 2114;
    v45 = @"SCHED";
    v46 = 2114;
    v47 = @"<-----<";
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:%{public}@", buf, 0x7Au);
  }
}

- (void)_logPersistedConfigSet:(id)set activityIntervalSecs:(int64_t)secs pushTriggerSecs:(int64_t)triggerSecs lastTickDate:(id)date message:(id)message
{
  setCopy = set;
  dateCopy = date;
  messageCopy = message;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v16 = [NSString alloc];
  if (secs < 0)
  {
    v17 = @"UNCHANGED";
    if ((triggerSecs & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = [MADAutoAssetControlManager allocIntervalString:triggerSecs];
      if (dateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v17 = [MADAutoAssetControlManager allocIntervalString:secs];
    if ((triggerSecs & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v18 = @"UNCHANGED";
  if (dateCopy)
  {
LABEL_4:
    v19 = [MADAutoAssetScheduler stringFromDate:dateCopy];
    v20 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v18, v19];

    if (triggerSecs < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v20 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v18, @"N"];
  if ((triggerSecs & 0x8000000000000000) == 0)
  {
LABEL_5:
  }

LABEL_6:
  if ((secs & 0x8000000000000000) == 0)
  {
  }

  v21 = [MADAutoAssetPersisted persistedOperationSymbol:@"CONFIG_SET"];
  v22 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138546178;
    v24 = @"PERSISTED";
    v25 = 2114;
    v26 = @"AUTO-SCHEDULER";
    v27 = 2114;
    v28 = @"CONFIG_SET";
    v29 = 2114;
    v30 = @"SCHED";
    v31 = 2114;
    v32 = @">----->";
    v33 = 2114;
    v34 = setCopy;
    v35 = 2114;
    v36 = messageCopy;
    v37 = 2114;
    v38 = @"SCHED";
    v39 = 2114;
    v40 = v21;
    v41 = 2114;
    v42 = v20;
    v43 = 2114;
    v44 = @"SCHED";
    v45 = 2114;
    v46 = @"<-----<";
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) %{public}@\n#_%{public}@:%{public}@", buf, 0x7Au);
  }
}

- (void)_logPersistedEntry:(id)entry operation:(id)operation persistingSelector:(id)selector intervalSecs:(int64_t)secs remainingSecs:(int64_t)remainingSecs pushedJob:(BOOL)job setJob:(BOOL)setJob setPolicy:(id)self0 pushedPolicy:(id)self1 requiringRetry:(BOOL)self2 message:(id)self3
{
  jobCopy = job;
  entryCopy = entry;
  operationCopy = operation;
  selectorCopy = selector;
  policyCopy = policy;
  pushedPolicyCopy = pushedPolicy;
  messageCopy = message;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v24 = [MADAutoAssetPersisted persistedOperationSymbol:operationCopy];
  persistedEntryID = [selectorCopy persistedEntryID];
  if (persistedEntryID)
  {
    v38 = v24;
    v26 = [MADAutoAssetScheduler jobTypeName:jobCopy setJob:setJob requiringRetry:retry];
    v27 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MADAutoAssetControlManager allocIntervalString:secs];
      v28 = [MADAutoAssetControlManager allocIntervalString:remainingSecs];
      summary = @"N";
      v30 = @"Y";
      if (!retry)
      {
        v30 = @"N";
      }

      v36 = v30;
      if (policyCopy)
      {
        summary = [policyCopy summary];
      }

      if (pushedPolicyCopy)
      {
        summary2 = [pushedPolicyCopy summary];
      }

      else
      {
        summary2 = @"N";
      }

      *buf = 138547714;
      v42 = @"PERSISTED";
      v43 = 2114;
      v44 = @"AUTO-SCHEDULER";
      v45 = 2114;
      v46 = operationCopy;
      v47 = 2114;
      v48 = @"SCHED";
      v49 = 2114;
      v50 = @">----->";
      v51 = 2114;
      v52 = entryCopy;
      v53 = 2114;
      v54 = messageCopy;
      v55 = 2114;
      v56 = @"SCHED";
      v57 = 2114;
      v58 = v24;
      v59 = 2114;
      v60 = persistedEntryID;
      v61 = 2114;
      v62 = v26;
      v63 = 2114;
      v64 = v37;
      v65 = 2114;
      v34 = v28;
      v66 = v28;
      v67 = 2114;
      v68 = v36;
      v69 = 2114;
      v70 = summary;
      v71 = 2114;
      v35 = summary2;
      v72 = summary2;
      v73 = 2114;
      v74 = @"SCHED";
      v75 = 2114;
      v76 = @"<-----<";
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | [%{public}@] intervalSecs:%{public}@ | remainingSecs:%{public}@ | requiringRetry:%{public}@ | setPolicy:%{public}@ | pushedPolicy:%{public}@\n#_%{public}@:%{public}@", buf, 0xB6u);
      if (pushedPolicyCopy)
      {
      }

      if (policyCopy)
      {
      }
    }

    v24 = v38;
  }

  else
  {
    v26 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      summary3 = [(MADAutoAssetScheduler *)self summary];
      summary4 = [selectorCopy summary];
      *buf = 138544386;
      v42 = summary3;
      v43 = 2114;
      v44 = entryCopy;
      v45 = 2114;
      v46 = operationCopy;
      v47 = 2114;
      v48 = messageCopy;
      v49 = 2114;
      v50 = summary4;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedEntry} %{public}@ | no selectorKey | %{public}@ | assetSelector:%{public}@", buf, 0x34u);
    }
  }
}

- (void)_logPersistedRemovedEntry:(id)entry removedSelector:(id)selector message:(id)message
{
  entryCopy = entry;
  selectorCopy = selector;
  messageCopy = message;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  v12 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  persistedEntryID = [selectorCopy persistedEntryID];
  v14 = _MADLog(@"AutoScheduler");
  v15 = v14;
  if (persistedEntryID)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138546178;
      v19 = @"PERSISTED";
      v20 = 2114;
      v21 = @"AUTO-SCHEDULER";
      v22 = 2114;
      v23 = @"ENTRY_REMOVE";
      v24 = 2114;
      v25 = @"SCHED";
      v26 = 2114;
      v27 = @">----->";
      v28 = 2114;
      v29 = entryCopy;
      v30 = 2114;
      v31 = messageCopy;
      v32 = 2114;
      v33 = @"SCHED";
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = persistedEntryID;
      v38 = 2114;
      v39 = @"SCHED";
      v40 = 2114;
      v41 = @"<-----<";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@]\n#_%{public}@:%{public}@", &v18, 0x7Au);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    summary = [(MADAutoAssetScheduler *)self summary];
    summary2 = [selectorCopy summary];
    v18 = 138544130;
    v19 = summary;
    v20 = 2114;
    v21 = entryCopy;
    v22 = 2114;
    v23 = messageCopy;
    v24 = 2114;
    v25 = summary2;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedRemovedEntry} %{public}@ | no selectorKey to remove | removedSelector:%{public}@", &v18, 0x2Au);
  }
}

- (void)_logPersistedTableOfContents:(id)contents
{
  contentsCopy = contents;
  schedulerQueue = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(schedulerQueue);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    persistedState = [(MADAutoAssetScheduler *)self persistedState];
    v7 = [persistedState persistedEntryIDs:contentsCopy];

    v31 = v7;
    if ([v7 count])
    {
      v8 = [v7 count];
      v9 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v36 = @"PERSISTED";
        v37 = 2114;
        v38 = @"AUTO-SCHEDULER";
        v39 = 2114;
        v40 = @"ENTRY_LOAD";
        v41 = 2114;
        v42 = @"SCHED";
        v43 = 2114;
        v44 = @">----->";
        v45 = 2114;
        v46 = contentsCopy;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      if (v8 >= 1)
      {
        v11 = 0;
        *&v10 = 138543874;
        v30 = v10;
        selfCopy = self;
        do
        {
          v12 = [v7 objectAtIndexedSubscript:{v11, v30}];
          persistedState2 = [(MADAutoAssetScheduler *)self persistedState];
          v14 = [persistedState2 persistedEntry:v12 fromLocation:contentsCopy];

          if (v14)
          {
            v15 = [v14 ullForKey:@"intervalSecs"];
            v33 = [v14 ullForKey:@"remainingSecs"];
            v16 = [v14 BOOLeanForKey:@"pushJob"];
            v17 = [v14 BOOLeanForKey:@"setJob"];
            v34 = +[MADAutoAssetScheduler jobTypeName:setJob:requiringRetry:](MADAutoAssetScheduler, "jobTypeName:setJob:requiringRetry:", v16, v17, [v14 BOOLeanForKey:@"requiringRetry"]);
            if (v17)
            {
              v18 = [v14 secureCodedObjectForKey:@"setPolicy" ofClass:objc_opt_class()];
            }

            else
            {
              v18 = 0;
            }

            v20 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v8;
              v22 = [MADAutoAssetControlManager allocIntervalString:v15];
              v23 = [MADAutoAssetControlManager allocIntervalString:v33];
              v24 = v23;
              *buf = 138545410;
              v25 = @"Y";
              if (!v18)
              {
                v25 = @"N";
              }

              v36 = @"SCHED";
              v37 = 2114;
              v38 = @"E_LOD";
              v39 = 2048;
              v40 = (v11 + 1);
              v7 = v31;
              v41 = 2048;
              v42 = v21;
              v43 = 2114;
              v44 = v12;
              v45 = 2114;
              v46 = v34;
              v47 = 2114;
              v48 = v22;
              v49 = 2114;
              v50 = v23;
              v51 = 2114;
              v52 = v25;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | (%{public}@) intervalSecs:%{public}@ | remainingSecs:%{public}@ | setPolicy:%{public}@", buf, 0x5Cu);

              v8 = v21;
            }

            self = selfCopy;
          }

          else
          {
            v18 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              summary = [(MADAutoAssetScheduler *)self summary];
              *buf = v30;
              v36 = contentsCopy;
              v37 = 2114;
              v38 = summary;
              v39 = 2114;
              v40 = v12;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{%{public}@:_logPersistedTableOfContents} | %{public}@ | unable to load entry:%{public}@", buf, 0x20u);
            }
          }

          ++v11;
        }

        while (v8 != v11);
      }

      v26 = _MADLog(@"AutoScheduler");
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 138544642;
      v36 = @"PERSISTED";
      v37 = 2114;
      v38 = @"AUTO-SCHEDULER";
      v39 = 2114;
      v40 = @"ENTRY_LOAD";
      v41 = 2114;
      v42 = @"SCHED";
      v43 = 2114;
      v44 = @"<-----<";
      v45 = 2114;
      v46 = contentsCopy;
      v27 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v28 = v26;
      v29 = 62;
    }

    else
    {
      v26 = _MADLog(@"AutoScheduler");
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:

        goto LABEL_25;
      }

      *buf = 138545410;
      v36 = @"PERSISTED";
      v37 = 2114;
      v38 = @"AUTO-SCHEDULER";
      v39 = 2114;
      v40 = @"ENTRY_LOAD";
      v41 = 2114;
      v42 = @"SCHED";
      v43 = 2114;
      v44 = @">----->";
      v45 = 2114;
      v46 = contentsCopy;
      v47 = 2114;
      v48 = @"empty table-of-contents";
      v49 = 2114;
      v50 = @"SCHED";
      v51 = 2114;
      v52 = @"<-----<";
      v27 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v28 = v26;
      v29 = 92;
    }

    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    goto LABEL_24;
  }

LABEL_25:
}

- (id)summary
{
  jobsAwaitingTrigger = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v18 = [jobsAwaitingTrigger count];
  jobsBySelector = [(MADAutoAssetScheduler *)self jobsBySelector];
  v17 = [jobsBySelector count];
  jobsAwaitingPushTrigger = [(MADAutoAssetScheduler *)self jobsAwaitingPushTrigger];
  v15 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduler *)self activityIntervalSecs]];
  v3 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduler *)self tickerIntervalSecs]];
  if ([(MADAutoAssetScheduler *)self activityTickerFired])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v5 = [MADAutoAssetControlManager allocIntervalString:[(MADAutoAssetScheduler *)self pushDelaySecs]];
  pushCounter = [(MADAutoAssetScheduler *)self pushCounter];
  lastTickTimestampString = [(MADAutoAssetScheduler *)self lastTickTimestampString];
  if (lastTickTimestampString)
  {
    lastTickTimestampString2 = [(MADAutoAssetScheduler *)self lastTickTimestampString];
  }

  else
  {
    lastTickTimestampString2 = @"N";
  }

  v9 = [MADAutoAssetScheduler nameForXPCStatus:[(MADAutoAssetScheduler *)self scheduledJobsXPCActivity]];
  v10 = [MADAutoAssetScheduler nameForXPCStatus:[(MADAutoAssetScheduler *)self pushJobsXPCActivity]];
  tickerIntervalReRegistering = [(MADAutoAssetScheduler *)self tickerIntervalReRegistering];
  v12 = @"Y";
  if (!tickerIntervalReRegistering)
  {
    v12 = @"N";
  }

  v13 = [NSString stringWithFormat:@"[jobsAwaitingTrigger:%ld, jobsBySelector:%ld, jobsAwaitingPushTrigger:%ld|activityInterval:%@, tickerInterval:%@, tickerFired:%@, pushDelay:%@, pushCounter:%ld, lastTick:%@|[xpcActivity]scheduled:%@, push:%@|[issueReRegister]scheduled:%@]", v18, v17, jobsAwaitingPushTrigger, v15, v3, v4, v5, pushCounter, lastTickTimestampString2, v9, v10, v12];

  if (lastTickTimestampString)
  {
  }

  return v13;
}

+ (id)jobTypeName:(BOOL)name setJob:(BOOL)job requiringRetry:(BOOL)retry
{
  v5 = @"scheduled-job";
  if (retry)
  {
    v5 = @"scheduled-job(requiring-retry)";
  }

  v6 = @"set-job";
  if (retry)
  {
    v6 = @"set-job(requiring-retry)";
  }

  if (job)
  {
    v5 = v6;
  }

  if (retry)
  {
    v7 = @"push-job(requiring-retry)";
  }

  else
  {
    v7 = @"push-job";
  }

  if (name)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

+ (id)nameForXPCStatus:(int64_t)status
{
  if (status > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_4B34A8 + status);
  }
}

+ (id)stringFromDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
    v5 = [v4 stringFromDate:dateCopy];

    if (!v5)
    {
      v5 = @"Y";
    }
  }

  else
  {
    v5 = @"N";
  }

  return v5;
}

+ (int64_t)tickerIntervalForActivityIntervalSecs:(int64_t)secs
{
  result = 14400;
  if (secs >= 60 && secs != 86400 && secs != 604800)
  {
    if (secs < 0x258)
    {
      return secs;
    }

    else
    {
      return ((secs / 10.0) + 1.0);
    }
  }

  return result;
}

+ (BOOL)isSelector:(id)selector consideredEqualTo:(id)to
{
  selectorCopy = selector;
  toCopy = to;
  v7 = toCopy;
  if (!(selectorCopy | toCopy))
  {
    v8 = 1;
    goto LABEL_22;
  }

  v8 = 0;
  if (selectorCopy && toCopy)
  {
    assetType = [selectorCopy assetType];
    if (!assetType)
    {
      goto LABEL_16;
    }

    assetType3 = assetType;
    assetType2 = [v7 assetType];
    if (!assetType2)
    {
      v8 = 0;
LABEL_21:

      goto LABEL_22;
    }

    assetType4 = assetType2;
    assetSpecifier = [selectorCopy assetSpecifier];
    if (assetSpecifier)
    {
      assetSpecifier3 = assetSpecifier;
      assetSpecifier2 = [v7 assetSpecifier];
      if (!assetSpecifier2)
      {
        v8 = 0;
        goto LABEL_14;
      }

      assetSpecifier4 = assetSpecifier2;
      assetVersion = [selectorCopy assetVersion];
      if (assetVersion)
      {

        v8 = 0;
LABEL_11:

LABEL_14:
LABEL_20:

        goto LABEL_21;
      }

      assetVersion2 = [v7 assetVersion];

      if (assetVersion2)
      {
LABEL_16:
        v8 = 0;
        goto LABEL_22;
      }

      assetType3 = [selectorCopy assetType];
      assetType4 = [v7 assetType];
      if ([SUCore stringIsEqual:assetType3 to:assetType4])
      {
        assetSpecifier3 = [selectorCopy assetSpecifier];
        assetSpecifier4 = [v7 assetSpecifier];
        v8 = [SUCore stringIsEqual:assetSpecifier3 to:assetSpecifier4];
        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

LABEL_22:

  return v8;
}

+ (void)addScheduledJobs:(id)jobs basedOnControl:(id)control
{
  jobsCopy = jobs;
  controlCopy = control;
  v7 = +[MADAutoAssetScheduler autoAssetScheduler];
  v8 = v7;
  if (v7)
  {
    schedulerQueue = [v7 schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__MADAutoAssetScheduler_addScheduledJobs_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v12 = v8;
    v13 = controlCopy;
    v14 = jobsCopy;
    dispatch_sync(schedulerQueue, block);

    v10 = v12;
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:addScheduledJobs} unable to locate auto-asset-scheduler | unable to provide scheduled jobs summary entries", buf, 2u);
    }
  }
}

void __57__MADAutoAssetScheduler_addScheduledJobs_basedOnControl___block_invoke(uint64_t a1)
{
  v1 = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) jobsAwaitingTrigger];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v26;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v21 = *v26;
    do
    {
      v6 = 0;
      v22 = v3;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if (v7)
        {
          v9 = p_weak_ivar_lyt[266];
          v10 = [v7 assetSelector];
          LODWORD(v9) = [v9 selectorToBeIncluded:v10 basedOnControl:*(v1 + 40)];

          if (v9)
          {
            v11 = p_weak_ivar_lyt;
            v12 = v1;
            v13 = [MAAutoAssetSummary alloc];
            v14 = [v7 assetSelector];
            if ([v7 pushedJob])
            {
              v15 = 401;
            }

            else
            {
              v15 = 400;
            }

            v16 = [v7 intervalSecs];
            v17 = [v7 remainingSecs];
            if ([v7 pushedJob])
            {
              v18 = [*(v12 + 32) pushDelaySecs];
            }

            else
            {
              v18 = 0;
            }

            v19 = [v13 initWithAssetSelector:v14 withAssetRepresentation:v15 withAssetWasPatched:0 withAssetIsStaged:0 withJobStatus:0 withScheduledIntervalSecs:v16 withScheduledRemainingSecs:v17 withPushDelaySecs:v18 withActiveClientCount:0 withActiveMonitorCount:0 withMaximumClientCount:0 withTotalClientCount:0];

            if (v19)
            {
              v1 = v12;
              [*(v12 + 48) addObject:v19];
              v4 = v21;
              p_weak_ivar_lyt = v11;
            }

            else
            {
              v20 = _MADLog(@"Auto");
              v1 = v12;
              p_weak_ivar_lyt = v11;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:addScheduledJobs} unable to allocate summaryEntry", buf, 2u);
              }

              v4 = v21;
            }

            v3 = v22;
          }
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v3);
  }
}

+ (id)jobsAwaitingTrigger
{
  v2 = +[MADAutoAssetScheduler autoAssetScheduler];
  v3 = v2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  if (v2)
  {
    schedulerQueue = [v2 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __44__MADAutoAssetScheduler_jobsAwaitingTrigger__block_invoke;
    v8[3] = &unk_4B2AC8;
    v10 = &v12;
    v9 = v3;
    dispatch_sync(schedulerQueue, v8);

    v5 = v9;
  }

  else
  {
    v5 = _MADLog(@"Auto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:jobsAwaitingTrigger} unable to locate auto-asset-scheduler | unable to provide scheduled jobs array", buf, 2u);
    }
  }

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

void __44__MADAutoAssetScheduler_jobsAwaitingTrigger__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) jobsAwaitingTrigger];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (void)forceGlobalForget:(id)forget
{
  forgetCopy = forget;
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  v5 = v4;
  if (v4)
  {
    schedulerQueue = [v4 schedulerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __43__MADAutoAssetScheduler_forceGlobalForget___block_invoke;
    v9[3] = &unk_4B2B18;
    v10 = v5;
    v11 = forgetCopy;
    dispatch_sync(schedulerQueue, v9);

    v7 = v10;
  }

  else
  {
    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      summary = [forgetCopy summary];
      *buf = 138543362;
      v13 = summary;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:forceGlobalForget} unable to locate auto-asset-scheduler | unable to force forgetting of selector:%{public}@", buf, 0xCu);
    }
  }
}

void __43__MADAutoAssetScheduler_forceGlobalForget___block_invoke(uint64_t a1)
{
  v46 = objc_alloc_init(NSMutableDictionary);
  v2 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) summary];
    v4 = [*(a1 + 40) assetType];
    *buf = 138543618;
    v63 = v3;
    v64 = 2114;
    v65 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:forceGlobalForget} forgotting jobs for assetType:%{public}@", buf, 0x16u);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [*(a1 + 32) jobsBySelector];
  v5 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v50 = *v57;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v56 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) jobsBySelector];
        v11 = [v10 safeObjectForKey:v8 ofClass:objc_opt_class()];

        v12 = [v11 assetSelector];
        v13 = [v12 assetType];
        v14 = [*(a1 + 40) assetType];
        LODWORD(v10) = [SUCore stringIsEqual:v13 to:v14];

        if (v10)
        {
          [v46 setSafeObject:v11 forKey:v8];
        }

        else
        {
          v15 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [*(a1 + 32) summary];
            v17 = [v11 summary];
            *buf = 138543618;
            v63 = v16;
            v64 = 2114;
            v65 = v17;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:forceGlobalForget} preserving job:%{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v6 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = v46;
  v42 = [v43 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v42)
  {
    v41 = *v53;
    do
    {
      v18 = 0;
      do
      {
        if (*v53 != v41)
        {
          objc_enumerationMutation(v43);
        }

        v51 = v18;
        v19 = *(*(&v52 + 1) + 8 * v18);
        obja = objc_autoreleasePoolPush();
        v44 = v19;
        v20 = [v43 safeObjectForKey:v19 ofClass:objc_opt_class()];
        v21 = [v20 assetSelector];
        v22 = [v21 persistedEntryID];

        v23 = [*(a1 + 32) persistedState];
        v47 = v22;
        v45 = [v23 persistedEntry:v22 fromLocation:@"forceGlobalForget"];

        v24 = [*(a1 + 32) jobsAwaitingTrigger];
        v25 = [v24 count];

        if (v25)
        {
          v26 = 0;
          while (1)
          {
            v27 = objc_autoreleasePoolPush();
            v28 = [*(a1 + 32) jobsAwaitingTrigger];
            v29 = [v28 objectAtIndexedSubscript:v26];

            v30 = [v29 assetSelector];
            v31 = [v30 assetType];
            v32 = [v20 assetSelector];
            v33 = [v32 assetType];
            LOBYTE(v28) = [SUCore stringIsEqual:v31 to:v33];

            objc_autoreleasePoolPop(v27);
            if (v28)
            {
              break;
            }

            ++v26;
            v34 = [*(a1 + 32) jobsAwaitingTrigger];
            v35 = [v34 count];

            if (v26 >= v35)
            {
              goto LABEL_26;
            }
          }

          v36 = [*(a1 + 32) jobsAwaitingTrigger];
          [v36 removeObjectAtIndex:v26];
        }

LABEL_26:
        v37 = [*(a1 + 32) jobsBySelector];
        [v37 removeObjectForKey:v44];

        if (v45)
        {
          v38 = [*(a1 + 32) persistedState];
          [v38 removePersistedEntry:v47 fromLocation:@"forceGlobalForget"];

          v39 = *(a1 + 32);
          v40 = [v20 assetSelector];
          [v39 _logPersistedRemovedEntry:@"forceGlobalForget" removedSelector:v40 message:@"forgot scheduled job"];
        }

        objc_autoreleasePoolPop(obja);
        v18 = v51 + 1;
      }

      while ((v51 + 1) != v42);
      v42 = [v43 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v42);
  }
}

+ (int64_t)_preferenceChosenTickerIntervalSecs
{
  result = +[MADAutoAssetControlManager preferenceActivityTickerSecs];
  if (result < 0)
  {

    return +[MADAutoAssetControlManager preferenceActivityIntervalSecs];
  }

  return result;
}

+ (void)setPersistedStateCaching:(BOOL)caching
{
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  schedulerQueue = [v4 schedulerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MADAutoAssetScheduler_setPersistedStateCaching___block_invoke;
  v7[3] = &unk_4B3488;
  v8 = v4;
  cachingCopy = caching;
  v6 = v4;
  dispatch_sync(schedulerQueue, v7);
}

void __50__MADAutoAssetScheduler_setPersistedStateCaching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  [v2 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];
}

@end