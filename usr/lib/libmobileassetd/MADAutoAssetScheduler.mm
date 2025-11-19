@interface MADAutoAssetScheduler
+ (BOOL)isAssetTypeAtAggressiveFrequency:(id)a3;
+ (BOOL)isAssetTypeAtHeightenedFrequency:(id)a3;
+ (BOOL)isSelector:(id)a3 consideredEqualTo:(id)a4;
+ (id)autoAssetScheduler;
+ (id)jobTypeName:(BOOL)a3 setJob:(BOOL)a4 requiringRetry:(BOOL)a5;
+ (id)jobsAwaitingTrigger;
+ (id)nameForXPCStatus:(int64_t)a3;
+ (id)newSetPolicyForDomainName:(id)a3 forAssetSetIdentifier:(id)a4;
+ (id)persistedEntryIDForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4;
+ (id)stringFromDate:(id)a3;
+ (int64_t)_preferenceChosenTickerIntervalSecs;
+ (int64_t)persistedScheduledCount;
+ (int64_t)tickerIntervalForActivityIntervalSecs:(int64_t)a3;
+ (void)addScheduledJobs:(id)a3 basedOnControl:(id)a4;
+ (void)controlEliminateSelector:(id)a3;
+ (void)controlEliminateSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 indicatingWhenEliminated:(BOOL)a5;
+ (void)forceGlobalForget:(id)a3;
+ (void)jobFinishedForSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4;
+ (void)jobFinishedForSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withPotentialNetworkFailure:(BOOL)a5;
+ (void)resumeFromPersisted:(id)a3;
+ (void)schedulePushNotifications:(id)a3;
+ (void)scheduleSelector:(id)a3 triggeringAtIntervalSecs:(int64_t)a4;
+ (void)scheduleSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 usingSetUpdatePolicy:(id)a5 forSetConfiguration:(id)a6;
+ (void)setPersistedStateCaching:(BOOL)a3;
+ (void)shutdown;
+ (void)triggerWithRetrySetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 usingSetUpdatePolicy:(id)a5;
- (MADAutoAssetScheduler)init;
- (id)_assetTypeForAssetSelector:(id)a3;
- (id)_currentlyScheduledMarkers;
- (id)_currentlyScheduledMarkersRequiringRetry;
- (id)_markerForSelector:(id)a3 andJob:(id)a4;
- (id)_newSetPolicyForDomainName:(id)a3 forAssetSetIdentifier:(id)a4 fromLocation:(id)a5;
- (id)_setConfigurationForAssetSelector:(id)a3;
- (id)_snapshotOfJobsBySelector;
- (id)defaultSchedulerSetPolicy;
- (id)summary;
- (int64_t)_aggressiveIntervalSecs;
- (int64_t)_decideTriggerIntervalSecs:(id)a3 forAssetSelector:(id)a4;
- (int64_t)_heightenedIntervalSecs;
- (void)_eliminateSelector:(id)a3 forSetJob:(BOOL)a4 indicatingWhenEliminated:(BOOL)a5;
- (void)_eliminateSpecificSelector:(id)a3;
- (void)_informConnectorActiveJobFinishedforSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4;
- (void)_informConnectorAlteredSelectors;
- (void)_informConnectorTriggeredSelectors:(id)a3 withTriggeredRequiringRetry:(id)a4;
- (void)_jobFinishedForSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4;
- (void)_jobFinishedForSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withPotentialNetworkFailure:(BOOL)a5;
- (void)_logPersistedConfigLoad:(id)a3 activityIntervalSecs:(int64_t)a4 pushTriggerSecs:(int64_t)a5 lastTickDate:(id)a6 message:(id)a7;
- (void)_logPersistedConfigSet:(id)a3 activityIntervalSecs:(int64_t)a4 pushTriggerSecs:(int64_t)a5 lastTickDate:(id)a6 message:(id)a7;
- (void)_logPersistedEntry:(id)a3 operation:(id)a4 persistingSelector:(id)a5 intervalSecs:(int64_t)a6 remainingSecs:(int64_t)a7 pushedJob:(BOOL)a8 setJob:(BOOL)a9 setPolicy:(id)a10 pushedPolicy:(id)a11 requiringRetry:(BOOL)a12 message:(id)a13;
- (void)_logPersistedRemovedEntry:(id)a3 removedSelector:(id)a4 message:(id)a5;
- (void)_logPersistedTableOfContents:(id)a3;
- (void)_performActivityOperations;
- (void)_performPushNotificationOperations;
- (void)_performTickerOperations:(int64_t)a3;
- (void)_performTriggeredSetJobForSetConfiguration:(id)a3 usingSetUpdatePolicy:(id)a4;
- (void)_registerForAndStartActivity:(int64_t)a3;
- (void)_resumeConnector;
- (void)_schedulePushNotifications:(id)a3;
- (void)_scheduleSelector:(id)a3 triggeringAtIntervalSecs:(int64_t)a4 withRemainingSecs:(int64_t)a5 forPushedJob:(BOOL)a6 forSetJob:(BOOL)a7 withSetPolicy:(id)a8 triggeringIfLearned:(BOOL)a9 resettingRemaining:(BOOL)a10 isReadOnlyForResumeFromPersisted:(BOOL)a11;
- (void)_setActivityCriteria:(id)a3 pushNotificationInitiated:(BOOL)a4 withActivityDelay:(int64_t)a5;
- (void)_startActivityBackupTrigger;
- (void)_startPushDelayTimer:(int64_t)a3;
- (void)_trackSetConfigurations:(id)a3;
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

  v4 = [v2 schedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__MADAutoAssetScheduler_shutdown__block_invoke;
  block[3] = &unk_4B2AA0;
  v8 = v2;
  v5 = v2;
  dispatch_sync(v4, block);

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
    v3 = [@"com.apple.MobileAsset.daemon.autoassetscheduler" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
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
    v21 = [v20 UUIDString];
    xpcActivityUUID = v10->_xpcActivityUUID;
    v10->_xpcActivityUUID = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    setConfigurations = v10->_setConfigurations;
    v10->_setConfigurations = v23;
  }

  return v2;
}

+ (BOOL)isAssetTypeAtHeightenedFrequency:(id)a3
{
  v3 = a3;
  if (v3 && ([&off_4F6E00 containsObject:v3] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MADAutoAssetControlManager preferenceActivityHeightenedAssetType];
    v4 = [SUCore stringIsEqual:v3 to:v5];
  }

  return v4;
}

+ (BOOL)isAssetTypeAtAggressiveFrequency:(id)a3
{
  v3 = a3;
  if (v3 && ([&off_4F6E18 containsObject:v3] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MADAutoAssetControlManager preferenceActivityAggressiveAssetType];
    v4 = [SUCore stringIsEqual:v3 to:v5];
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

+ (void)resumeFromPersisted:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "MADScheduler:resumeFromPersisted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  if (v4)
  {
    v6 = [v4 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __45__MADAutoAssetScheduler_resumeFromPersisted___block_invoke_1213;
    v8[3] = &unk_4B2B18;
    v9 = v4;
    v10 = v3;
    dispatch_async(v6, v8);

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
    v4 = [v2 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __48__MADAutoAssetScheduler_persistedScheduledCount__block_invoke;
    v8[3] = &unk_4B2AC8;
    v10 = &v12;
    v9 = v3;
    dispatch_sync(v4, v8);

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

+ (id)newSetPolicyForDomainName:(id)a3 forAssetSetIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v9 = [v7 schedulerQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __73__MADAutoAssetScheduler_newSetPolicyForDomainName_forAssetSetIdentifier___block_invoke;
    v13[3] = &unk_4B32D8;
    v17 = &v19;
    v14 = v8;
    v15 = v5;
    v16 = v6;
    dispatch_sync(v9, v13);

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

+ (void)scheduleSelector:(id)a3 triggeringAtIntervalSecs:(int64_t)a4
{
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADScheduler:scheduleSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (!v5)
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

  if (a4 < 0)
  {
    v8 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 134217984;
    v21 = a4;
    v11 = "{AUTO-SCHEDULER:scheduleSelector} no scheduling change | invalid trigger-interval-secs: %ld";
    v12 = v8;
    v13 = 12;
    goto LABEL_9;
  }

  v7 = +[MADAutoAssetScheduler autoAssetScheduler];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __67__MADAutoAssetScheduler_scheduleSelector_triggeringAtIntervalSecs___block_invoke;
    block[3] = &unk_4B3300;
    v16 = v8;
    v17 = v5;
    v18 = a4;
    dispatch_async(v9, block);

    v10 = v16;
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 summary];
      *buf = 138543362;
      v21 = v14;
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

+ (void)scheduleSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 usingSetUpdatePolicy:(id)a5 forSetConfiguration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_0, "MADScheduler:scheduleSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  if (!v9)
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

  if (!v10)
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

  if (v12)
  {
    v14 = [[MAAutoAssetSelector alloc] initForAssetType:v9 withAssetSpecifier:v10];
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

        if (v11)
        {
          v19 = [[MADAutoSetPolicy alloc] initFromAutoAssetSetPolicy:v11];
        }

        else
        {
          v19 = 0;
        }

        v23 = [v16 schedulerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __110__MADAutoAssetScheduler_scheduleSetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy_forSetConfiguration___block_invoke;
        block[3] = &unk_4B3328;
        v25 = v9;
        v26 = v10;
        v27 = v16;
        v28 = v12;
        v30 = v19;
        v31 = v18;
        v29 = v14;
        v21 = v19;
        dispatch_async(v23, block);

        goto LABEL_25;
      }

      v21 = _MADLog(@"Auto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v34 = v9;
        v35 = 2114;
        v36 = v10;
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
        v34 = v9;
        v35 = 2114;
        v36 = v10;
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

+ (void)triggerWithRetrySetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 usingSetUpdatePolicy:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v10 = _os_activity_create(&dword_0, "MADScheduler:triggerWithRetrySetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &state);

  if (!v7)
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

  if (!v8)
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
    v13 = [v11 schedulerQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __98__MADAutoAssetScheduler_triggerWithRetrySetDomainName_forAssetSetIdentifier_usingSetUpdatePolicy___block_invoke;
    v16[3] = &unk_4B3350;
    v17 = v7;
    v18 = v8;
    v19 = v12;
    v20 = v9;
    dispatch_async(v13, v16);

    v14 = v17;
  }

  else
  {
    v14 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
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

+ (void)jobFinishedForSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4
{
  v5 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADScheduler:jobFinishedForSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (v5)
  {
    v7 = +[MADAutoAssetScheduler autoAssetScheduler];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 schedulerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __76__MADAutoAssetScheduler_jobFinishedForSelector_withPotentialNetworkFailure___block_invoke;
      block[3] = &unk_4B3378;
      v13 = v8;
      v14 = v5;
      v15 = a4;
      dispatch_async(v9, block);

      v10 = v13;
    }

    else
    {
      v10 = _MADLog(@"Auto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v5 summary];
        *buf = 138543362;
        v18 = v11;
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

+ (void)jobFinishedForSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withPotentialNetworkFailure:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADScheduler:jobFinishedForSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  if (!v7)
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

  if (!v8)
  {
    v11 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v24 = v7;
    v14 = "{AUTO-SCHEDULER:jobFinishedForSetDomainName} no scheduling change | nil asset-set-identifier provided | clientDomainName:%{public}@";
    v15 = v11;
    v16 = 12;
    goto LABEL_9;
  }

  v10 = +[MADAutoAssetScheduler autoAssetScheduler];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 schedulerQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __103__MADAutoAssetScheduler_jobFinishedForSetDomainName_forAssetSetIdentifier_withPotentialNetworkFailure___block_invoke;
    v17[3] = &unk_4B33A0;
    v18 = v11;
    v19 = v7;
    v20 = v8;
    v21 = a5;
    dispatch_async(v12, v17);

    v13 = v18;
  }

  else
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "{AUTO-SCHEDULER:jobFinishedForSetDomainName} | no auto-asset-scheduler | clientDomainName:%{public}@ | assetSetIdentifier:%{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  os_activity_scope_leave(&state);
}

+ (void)schedulePushNotifications:(id)a3
{
  v3 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_0, "MADScheduler:schedulePushNotifications", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (v3)
  {
    v5 = +[MADAutoAssetScheduler autoAssetScheduler];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 schedulerQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __51__MADAutoAssetScheduler_schedulePushNotifications___block_invoke;
      v10[3] = &unk_4B2B18;
      v11 = v6;
      v12 = v3;
      dispatch_async(v7, v10);

      v8 = v11;
    }

    else
    {
      v8 = _MADLog(@"Auto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v3 safeSummary];
        *buf = 138543362;
        v15 = v9;
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

+ (void)controlEliminateSelector:(id)a3
{
  v3 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_0, "MADScheduler:controlEliminateSelector", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (v3)
  {
    v5 = +[MADAutoAssetScheduler autoAssetScheduler];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 schedulerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __50__MADAutoAssetScheduler_controlEliminateSelector___block_invoke_2;
      block[3] = &unk_4B2B18;
      v13 = v6;
      v14 = v3;
      dispatch_async(v7, block);

      v8 = &v13;
      v9 = v14;
    }

    else
    {
      v10 = _MADLog(@"Auto");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v3 summary];
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:eliminateSelector} | unable to locate auto-asset-scheduler | failed to eliminate selector:%{public}@", buf, 0xCu);
      }

      v9 = [MADAutoAssetControlManager selectDispatchQueue:0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __50__MADAutoAssetScheduler_controlEliminateSelector___block_invoke;
      v15[3] = &unk_4B2AA0;
      v8 = &v16;
      v16 = v3;
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

+ (void)controlEliminateSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 indicatingWhenEliminated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADScheduler:controlEliminateSetDomainName", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v10 = [[MAAutoAssetSelector alloc] initForAssetType:v7 withAssetSpecifier:v8];
  if (v10)
  {
    v11 = +[MADAutoAssetScheduler autoAssetScheduler];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 schedulerQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __102__MADAutoAssetScheduler_controlEliminateSetDomainName_forAssetSetIdentifier_indicatingWhenEliminated___block_invoke_2;
      v18[3] = &unk_4B33C8;
      v19 = v7;
      v20 = v8;
      v21 = v12;
      v22 = v10;
      v23 = v5;
      dispatch_async(v13, v18);

      v14 = &v19;
      v15 = v20;
LABEL_10:

      goto LABEL_11;
    }

    v16 = _MADLog(@"Auto");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v10 summary];
      *buf = 138543362;
      v28 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:eliminateSelector} | unable to locate auto-asset-scheduler | failed to eliminate setJobSelector:%{public}@", buf, 0xCu);
    }

    if (v5)
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
      v28 = v7;
      v29 = 2114;
      v30 = v8;
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

- (void)_trackSetConfigurations:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
          v13 = [v11 clientDomainName];
          v14 = [v11 assetSetIdentifier];
          v15 = [MADAutoAssetScheduler persistedEntryIDForClientDomain:v13 forAssetSetIdentifier:v14];

          v16 = [(MADAutoAssetScheduler *)self setConfigurations];
          [v16 setSafeObject:v11 forKey:v15];
        }

        else
        {
          v15 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v17 = [(MADAutoAssetScheduler *)self summary];
            *buf = 138543362;
            v23 = v17;
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

- (id)_setConfigurationForAssetSelector:(id)a3
{
  v25 = a3;
  v4 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v4);

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
          v19 = [(MADAutoAssetScheduler *)self summary];
          *buf = 138543362;
          v31 = v19;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_setConfigurationForAssetSelector} unable to access entry key in self.setConfigurations", buf, 0xCu);
        }

        goto LABEL_18;
      }

      v11 = [(MADAutoAssetScheduler *)self setConfigurations];
      v12 = [v11 safeObjectForKey:v9 ofClass:objc_opt_class()];

      if (v12)
      {
        break;
      }

      v13 = _MADLog(@"AutoScheduler");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = [(MADAutoAssetScheduler *)self summary];
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_setConfigurationForAssetSelector} unable to access entry in self.setConfigurations | nextSetConfigurationKey:%{public}@", buf, 0x16u);

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

    v13 = [v12 clientDomainName];
    v14 = [v25 assetType];
    if (([SUCore stringIsEqual:v13 to:v14]& 1) != 0)
    {
      v15 = v7;
      v16 = self;
      v17 = [v12 assetSetIdentifier];
      v18 = [v25 assetSpecifier];
      v22 = [SUCore stringIsEqual:v17 to:v18];

      if (v22)
      {
        objc_autoreleasePoolPop(v10);
        goto LABEL_22;
      }

      self = v16;
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
  v2 = self;
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(MADAutoAssetScheduler *)v2 jobsBySelector];
  v22 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [(MADAutoAssetScheduler *)v2 jobsBySelector];
        v12 = [v11 safeObjectForKey:v9 ofClass:objc_opt_class()];

        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(MADAutoAssetScheduler *)v2 summary];
            v14 = v6;
            v15 = v2;
            v16 = p_weak_ivar_lyt;
            v17 = v5;
            v19 = v18 = v4;
            *buf = 138543362;
            v28 = v19;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_snapshotOfJobsBySelector} unable to load scheduledJob entry", buf, 0xCu);

            v4 = v18;
            v5 = v17;
            p_weak_ivar_lyt = v16;
            v2 = v15;
            v6 = v14;
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v22 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
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

- (void)_scheduleSelector:(id)a3 triggeringAtIntervalSecs:(int64_t)a4 withRemainingSecs:(int64_t)a5 forPushedJob:(BOOL)a6 forSetJob:(BOOL)a7 withSetPolicy:(id)a8 triggeringIfLearned:(BOOL)a9 resettingRemaining:(BOOL)a10 isReadOnlyForResumeFromPersisted:(BOOL)a11
{
  v12 = a7;
  v13 = a6;
  v16 = a3;
  v17 = a8;
  v18 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [v16 assetType];
  if (v12)
  {
    v20 = [(MADAutoAssetScheduler *)self _assetTypeForAssetSelector:v16];

    v19 = v20;
  }

  if (!v19)
  {
    v22 = _MADLog(@"AutoScheduler");
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    v30 = [(MADAutoAssetScheduler *)self summary];
    v31 = [v16 summary];
    *buf = 138543618;
    v115 = v30;
    v116 = 2114;
    v117 = v31;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} unable to determine asset-type | assetSelector:%{public}@", buf, 0x16u);
LABEL_18:

    goto LABEL_62;
  }

  v101 = v13;
  v99 = v17;
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
        v28 = [(MADAutoAssetScheduler *)self summary];
        v29 = [v16 summary];
        *buf = 138543618;
        v115 = v28;
        v116 = 2114;
        v117 = v29;
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

      if (([SUCore stringIsEqual:v19 to:*(*(&v108 + 1) + 8 * v26)]& 1) != 0)
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

  v96 = v12;
  v95 = v19;
  v32 = v16;
  v33 = [(MADAutoAssetScheduler *)self _decideTriggerIntervalSecs:@"_scheduleSelector" forAssetSelector:v16];
  v104 = 0u;
  v105 = 0u;
  if (v33 >= a5)
  {
    v34 = a5;
  }

  else
  {
    v34 = v33;
  }

  v92 = v34;
  v93 = v33;
  v106 = 0uLL;
  v107 = 0uLL;
  v98 = self;
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
      v41 = [v39 assetSelector];
      v42 = [v41 persistedEntryID];

      v43 = [v39 assetSelector];
      LODWORD(v41) = [MADAutoAssetScheduler isSelector:v32 consideredEqualTo:v43];

      if (v41)
      {
        v64 = [v39 intervalSecs];
        v65 = v64 != v93;
        if (v64 != v93)
        {
          [v39 setIntervalSecs:v93];
        }

        v16 = v32;
        v22 = obj;
        if (a10)
        {
          v17 = v99;
          if ([v39 remainingSecs] != v93)
          {
            [v39 setRemainingSecs:v93];
            v65 = 1;
          }
        }

        else
        {
          v17 = v99;
        }

        if (([v39 pushedJob] & 1) == 0 && v101)
        {
          v65 = 1;
          [v39 setPushedJob:1];
          [v39 setPushedPolicy:v17];
          [(MADAutoAssetScheduler *)v98 setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)v98 jobsAwaitingPushTrigger]+ 1];
        }

        v66 = [v39 assetSelector];
        v67 = [v16 isEqual:v66];

        if ((v67 & 1) == 0)
        {
          [v39 setAssetSelector:v16];
          v65 = 1;
        }

        if ([v39 setJob] != v96)
        {
          [v39 setSetJob:?];
          v65 = 1;
        }

        if ([v39 setJob])
        {
          if (v17)
          {
            v68 = [v39 setPolicy];
            v69 = [v17 isEqual:v68];

            if (v69)
            {
              goto LABEL_56;
            }

            [v39 setSetPolicy:v17];
          }

          else if (!v65)
          {
            goto LABEL_64;
          }

LABEL_68:
          v78 = [(MADAutoAssetScheduler *)v98 persistedState];
          v75 = [v78 persistedEntry:v42 fromLocation:@"_scheduleSelector"];

          v102 = [v75 BOOLeanForKey:@"requiringRetry"];
          v79 = [v39 assetSelector];
          [v75 persistSecureCodedObject:v79 forKey:@"assetSelector"];

          -[NSObject persistULL:forKey:](v75, "persistULL:forKey:", [v39 intervalSecs], @"intervalSecs");
          -[NSObject persistULL:forKey:](v75, "persistULL:forKey:", [v39 remainingSecs], @"remainingSecs");
          -[NSObject persistBoolean:forKey:](v75, "persistBoolean:forKey:", [v39 pushedJob], @"pushJob");
          -[NSObject persistBoolean:forKey:](v75, "persistBoolean:forKey:", [v39 setJob], @"setJob");
          v80 = [v39 setPolicy];

          if (v80)
          {
            v81 = [v39 setPolicy];
            [v75 persistSecureCodedObject:v81 forKey:@"setPolicy"];
          }

          v82 = [v39 pushedPolicy];

          if (v82)
          {
            v83 = [v39 pushedPolicy];
            [v75 persistSecureCodedObject:v83 forKey:@"pushedPolicy"];
          }

          v84 = [(MADAutoAssetScheduler *)v98 persistedState];
          v85 = [v39 summary];
          [v84 storePersistedEntry:v42 withEntrySummary:v85 fromLocation:@"_scheduleSelector"];

          v86 = [v39 assetSelector];
          v100 = [v39 intervalSecs];
          v97 = [v39 remainingSecs];
          v94 = [v39 pushedJob];
          v87 = [v39 setJob];
          v88 = [v39 setPolicy];
          v89 = [v39 pushedPolicy];
          LOBYTE(v91) = v102;
          LOBYTE(v90) = v87;
          [(MADAutoAssetScheduler *)v98 _logPersistedEntry:@"_scheduleSelector" operation:@"ENTRY_MODIFY" persistingSelector:v86 intervalSecs:v100 remainingSecs:v97 pushedJob:v94 setJob:v90 setPolicy:v88 pushedPolicy:v89 requiringRetry:v91 message:@"already scheduled job (adjusted)"];

          v19 = v95;
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
          v76 = [(MADAutoAssetScheduler *)v98 summary];
          v77 = [v39 summary];
          *buf = 138543618;
          v115 = v76;
          v116 = 2114;
          v117 = v77;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} already scheduled | alreadyAwaiting:%{public}@", buf, 0x16u);
        }

        v19 = v95;
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
  v16 = v32;
  v45 = v32;
  v17 = v99;
  v46 = [(MADAutoAssetScheduledJob *)v44 initForAssetSelector:v45 withActivityInterval:v93 forPushedJob:v101 forSetJob:v96 withSetPolicy:v99 requiringRetry:0];
  v22 = v46;
  if (!v46)
  {
    v30 = _MADLog(@"AutoScheduler");
    v19 = v95;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    v31 = [(MADAutoAssetScheduler *)v98 summary];
    v70 = [v16 summary];
    *buf = 138543618;
    v115 = v31;
    v116 = 2114;
    v117 = v70;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_scheduleSelector} no scheduling change | unable to allocate job for selector:%{public}@", buf, 0x16u);

    goto LABEL_18;
  }

  v47 = v46;
  [v46 setRemainingSecs:v92];
  v48 = v98;
  v49 = [(MADAutoAssetScheduler *)v98 jobsAwaitingTrigger];
  [v49 addObject:v47];

  v50 = [(MADAutoAssetScheduler *)v98 jobsBySelector];
  v51 = [v16 persistedEntryID];
  [v50 setSafeObject:v47 forKey:v51];

  v19 = v95;
  if (!a11)
  {
    v52 = [v16 persistedEntryID];
    v53 = [(MADAutoAssetScheduler *)v98 persistedState];
    v54 = [v53 persistedEntry:v52 fromLocation:@"_scheduleSelector"];

    [v54 persistSecureCodedObject:v16 forKey:@"assetSelector"];
    [v54 persistULL:-[NSObject intervalSecs](v47 forKey:{"intervalSecs"), @"intervalSecs"}];
    [v54 persistULL:-[NSObject remainingSecs](v47 forKey:{"remainingSecs"), @"remainingSecs"}];
    [v54 persistBoolean:v101 forKey:@"pushJob"];
    [v54 persistBoolean:v96 forKey:@"setJob"];
    v55 = [v47 setPolicy];

    if (v55)
    {
      v56 = [v47 setPolicy];
      [v54 persistSecureCodedObject:v56 forKey:@"setPolicy"];
    }

    v57 = [v47 pushedPolicy];

    if (v57)
    {
      v58 = [v47 pushedPolicy];
      [v54 persistSecureCodedObject:v58 forKey:@"pushedPolicy"];
    }

    [v54 persistBoolean:0 forKey:@"requiringRetry"];
    v48 = v98;
    v59 = [(MADAutoAssetScheduler *)v98 persistedState];
    v60 = [v47 summary];
    [v59 storePersistedEntry:v52 withEntrySummary:v60 fromLocation:@"_scheduleSelector"];
  }

  v61 = [v47 intervalSecs];
  v62 = [v47 remainingSecs];
  v63 = [v47 pushedPolicy];
  LOBYTE(v91) = 0;
  LOBYTE(v90) = v96;
  [(MADAutoAssetScheduler *)v48 _logPersistedEntry:@"_scheduleSelector" operation:@"ENTRY_ADD" persistingSelector:v16 intervalSecs:v61 remainingSecs:v62 pushedJob:v101 setJob:v90 setPolicy:v99 pushedPolicy:v63 requiringRetry:v91 message:@"now tracking scheduled job"];

  if (a9)
  {
    v30 = objc_alloc_init(NSMutableArray);
    [v30 addObject:v16];
    [(MADAutoAssetScheduler *)v48 _informConnectorTriggeredSelectors:0 withTriggeredRequiringRetry:v30];
  }

  else
  {
    v30 = +[MADAnalyticsManager getAnalyticsManager];
    v71 = [(MADAutoAssetScheduler *)v48 xpcActivityUUID];
    v72 = [NSNumber numberWithBool:v101];
    v73 = [NSNumber numberWithBool:v96];
    v74 = [v30 recordMobileAssetScheduler:v92 forSelector:v16 withXpcID:v71 forPushJob:v72 forSetJob:v73 inSchedulerState:0 inXPCState:0 didJobFail:0];
  }

  v22 = v47;
LABEL_62:

LABEL_74:
}

- (void)_schedulePushNotifications:(id)a3
{
  v4 = a3;
  v85 = self;
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  v75 = objc_alloc_init(NSMutableDictionary);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v6 = v4;
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
        v14 = [(MADAutoAssetScheduler *)v85 jobsBySelector];
        v15 = [v14 safeObjectForKey:v11 ofClass:objc_opt_class()];

        if (!v15)
        {
          v16 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(MADAutoAssetScheduler *)v85 summary];
            v18 = [v13 summary];
            *buf = 138543874;
            v95 = v17;
            v96 = 2114;
            v97 = v11;
            v98 = 2114;
            v99 = v18;
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
            v17 = [(MADAutoAssetScheduler *)v85 summary];
            v18 = [v13 summary];
            *buf = 138543874;
            v95 = v17;
            v96 = 2114;
            v97 = v11;
            v98 = 2114;
            v99 = v18;
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
    v22 = v85;
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
          v26 = [(MADAutoAssetScheduler *)v22 jobsBySelector];
          v27 = [v26 safeObjectForKey:v24 ofClass:objc_opt_class()];

          if (v27)
          {
            if ([v27 pushedJob])
            {
              v28 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = [(MADAutoAssetScheduler *)v22 summary];
                v30 = v84;
                v31 = [v84 summary];
                *buf = 138543874;
                v95 = v29;
                v96 = 2114;
                v97 = v24;
                v98 = 2114;
                v99 = v31;
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
              v34 = [v27 assetSelector];
              v79 = [v34 persistedEntryID];

              if ([v84 checkForNewerIntervalSecs])
              {
                if ([v84 checkForNewerIntervalSecs] >= 600)
                {
                  v35 = &loc_93A80;
                  if ([v84 checkForNewerIntervalSecs] <= 604800)
                  {
                    v35 = [v84 checkForNewerIntervalSecs];
                  }
                }

                else
                {
                  v35 = (&stru_248 + 16);
                }
              }

              else
              {
                v35 = (&stru_338 + 76);
              }

              if ([v84 newerFoundAutoDownloadJitterSecs])
              {
                if ([v84 newerFoundAutoDownloadJitterSecs] >= 600)
                {
                  if ([v84 newerFoundAutoDownloadJitterSecs] <= 604800)
                  {
                    v36 = [v84 newerFoundAutoDownloadJitterSecs];
                  }

                  else
                  {
                    v36 = 604800;
                  }
                }

                else
                {
                  v36 = 600;
                }
              }

              else
              {
                v36 = 900;
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
              v38 = [(MADAutoAssetScheduler *)v22 jobsBySelector];
              [v38 setSafeObject:v27 forKey:v24];

              v39 = [(MADAutoAssetScheduler *)v22 persistedState];
              v40 = [v39 persistedEntry:v79 fromLocation:@"_schedulePushNotifications"];

              v76 = v40;
              if (v40)
              {
                v72 = [v40 BOOLeanForKey:@"requiringRetry"];
                [v40 persistBoolean:1 forKey:@"pushJob"];
                v41 = [v27 pushedPolicy];
                [v40 persistSecureCodedObject:v41 forKey:@"pushedPolicy"];

                v42 = [(MADAutoAssetScheduler *)v22 persistedState];
                v43 = [v27 summary];
                [v42 storePersistedEntry:v79 withEntrySummary:v43 fromLocation:@"_schedulePushNotifications"];

                v44 = [v27 assetSelector];
                v45 = [v27 intervalSecs];
                v70 = [v27 remainingSecs];
                v46 = [v27 pushedJob];
                v47 = [v27 setJob];
                [v27 setPolicy];
                v74 = v36;
                v48 = v24;
                v50 = v49 = v35;
                v51 = [v27 pushedPolicy];
                LOBYTE(v63) = v72;
                LOBYTE(v62) = v47;
                v22 = v85;
                [(MADAutoAssetScheduler *)v85 _logPersistedEntry:@"_schedulePushNotifications" operation:@"ENTRY_MODIFY" persistingSelector:v44 intervalSecs:v45 remainingSecs:v70 pushedJob:v46 setJob:v62 setPolicy:v50 pushedPolicy:v51 requiringRetry:v63 message:@"scheduled-job now push-job"];

                v35 = v49;
                v24 = v48;
                v36 = v74;
              }

              else
              {
                v44 = _MADLog(@"AutoScheduler");
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v52 = [(MADAutoAssetScheduler *)v22 summary];
                  [v27 summary];
                  v54 = v53 = v36;
                  *buf = 138543874;
                  v95 = v52;
                  v96 = 2114;
                  v97 = v24;
                  v98 = 2114;
                  v99 = v54;
                  _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} already-scheduled-job without persisted entry (unable to persist that job has been pushed) | pushSelectorKey:%{public}@ | alreadyScheduledJob:%{public}@", buf, 0x20u);

                  v36 = v53;
                }
              }

              v55 = &v35[arc4random_uniform(v36)];
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
                v73 = [(MADAutoAssetScheduler *)v22 summary];
                v71 = [v84 summary];
                v69 = [MADAutoAssetControlManager allocIntervalString:604800];
                v65 = v69;
                v67 = [MADAutoAssetControlManager allocIntervalString:0];
                v66 = v67;
                v59 = [MADAutoAssetControlManager allocIntervalString:604800];
                v68 = v59;
                v64 = [MADAutoAssetControlManager allocIntervalString:0];
                v60 = [MADAutoAssetControlManager allocIntervalString:v57];

                *buf = 138545154;
                v95 = v73;
                v96 = 2114;
                v97 = v24;
                v98 = 2114;
                v99 = v71;
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

                v22 = v85;
              }

              [(MADAutoAssetScheduler *)v22 _startPushDelayTimer:v57];
              v25 = v78;
              v28 = v79;
            }
          }

          else
          {
            v28 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = [(MADAutoAssetScheduler *)v22 summary];
              v30 = v84;
              v31 = [v84 summary];
              *buf = 138543874;
              v95 = v29;
              v96 = 2114;
              v97 = v24;
              v98 = 2114;
              v99 = v31;
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
      v61 = [(MADAutoAssetScheduler *)v85 summary];
      *buf = 138543362;
      v95 = v61;
      _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_schedulePushNotifications} no new push-notification (no scheduling change)", buf, 0xCu);
    }
  }
}

- (int64_t)_decideTriggerIntervalSecs:(id)a3 forAssetSelector:(id)a4
{
  v5 = a4;
  v6 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v6);

  v7 = +[MADAutoAssetControlManager preferenceActivityIntervalSecs];
  v8 = [(MADAutoAssetScheduler *)self _assetTypeForAssetSelector:v5];
  if (v7 < 0)
  {
    if (_MAPreferencesIsInternalAllowed() && !+[MADAutoAssetControlManager preferenceScheduledAsIfNotInternal])
    {
      v9 = @"internal image";
      v7 = 86400;
    }

    else if ([MADAutoAssetScheduler isAssetTypeAtHeightenedFrequency:v8])
    {
      v7 = [(MADAutoAssetScheduler *)self _heightenedIntervalSecs];
      v9 = @"heightened";
    }

    else if ([MADAutoAssetScheduler isAssetTypeAtAggressiveFrequency:v8])
    {
      v7 = [(MADAutoAssetScheduler *)self _aggressiveIntervalSecs];
      v9 = @"aggressive";
    }

    else
    {
      v9 = @"default";
      v7 = 604800;
    }
  }

  else
  {
    v9 = @"preference-based";
  }

  v10 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MADAutoAssetScheduler *)self summary];
    v12 = [v5 summary];
    v14 = 138544386;
    v15 = v11;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v8;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_decideTriggerIntervalSecs} reason:%{public}@ | assetSelector:%{public}@ | scheduledJobAssetType:%{public}@ | determinedIntervalSecs:%ld", &v14, 0x34u);
  }

  return v7;
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

- (id)_assetTypeForAssetSelector:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  v25 = v4;
  v6 = [v4 assetType];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MADAutoAssetScheduler *)self setConfigurations];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = v6;
    v23 = self;
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
        v12 = [(MADAutoAssetScheduler *)self setConfigurations];
        v13 = [v12 safeObjectForKey:v11 ofClass:objc_opt_class()];

        if (v13)
        {
          v14 = [v25 assetType];
          v15 = [v13 clientDomainName];
          if (([SUCore stringIsEqual:v14 to:v15]& 1) != 0)
          {
            v16 = [v25 assetSpecifier];
            [v13 assetSetIdentifier];
            v17 = v8;
            v19 = v18 = v9;
            v20 = [SUCore stringIsEqual:v16 to:v19];

            v9 = v18;
            v8 = v17;

            self = v23;
            if (v20)
            {
              v6 = [v13 firstEntryAssetType];

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
    v6 = v22;
  }

LABEL_14:

  return v6;
}

- (void)_jobFinishedForSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetScheduler *)self jobsBySelector];
  v9 = [v6 persistedEntryID];
  v10 = [v8 safeObjectForKey:v9 ofClass:objc_opt_class()];

  if (v10)
  {
    v11 = [v6 persistedEntryID];
    v12 = [(MADAutoAssetScheduler *)self persistedState];
    v37 = v11;
    v13 = [v12 persistedEntry:v11 fromLocation:@"_jobFinishedForSelector"];

    if ([v13 BOOLeanForKey:@"requiringRetry"] != v4)
    {
      [v13 persistBoolean:v4 forKey:@"requiringRetry"];
      v14 = [(MADAutoAssetScheduler *)self persistedState];
      v15 = [v10 summary];
      [v14 storePersistedEntry:v11 withEntrySummary:v15 fromLocation:@"_jobFinishedForSelector"];

      v16 = [v10 assetSelector];
      v36 = [v10 intervalSecs];
      v35 = [v10 remainingSecs];
      v34 = [v10 pushedJob];
      v17 = [v10 setJob];
      v18 = [v10 setPolicy];
      v19 = [v10 pushedPolicy];
      v20 = [NSString alloc];
      v21 = @"no longer retry-required";
      if (v4)
      {
        v21 = @"retry-required (potential network failure)";
      }

      v22 = [v20 initWithFormat:@"scheduled job finished (%@)", v21];
      LOBYTE(v33) = v4;
      LOBYTE(v32) = v17;
      [(MADAutoAssetScheduler *)self _logPersistedEntry:@"_jobFinishedForSelector" operation:@"ENTRY_MODIFY" persistingSelector:v16 intervalSecs:v36 remainingSecs:v35 pushedJob:v34 setJob:v32 setPolicy:v18 pushedPolicy:v19 requiringRetry:v33 message:v22];
    }

    v23 = +[MADAnalyticsManager getAnalyticsManager];
    v24 = [v10 assetSelector];
    v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 pushedJob]);
    v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 setJob]);
    v27 = [NSNumber numberWithBool:v4];
    v28 = [v23 recordMobileAssetScheduler:-1 forSelector:v24 withXpcID:0 forPushJob:v25 forSetJob:v26 inSchedulerState:4 inXPCState:0 didJobFail:v27];

    [(MADAutoAssetScheduler *)self _informConnectorActiveJobFinishedforSelector:v6 withPotentialNetworkFailure:v4];
  }

  else
  {
    v29 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(MADAutoAssetScheduler *)self summary];
      v31 = [v6 summary];
      *buf = 138543618;
      v39 = v30;
      v40 = 2114;
      v41 = v31;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_jobFinishedForSelector} no longer associated with scheduled job (presumed eliminated) | assetSelector:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_jobFinishedForSetDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withPotentialNetworkFailure:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [[MAAutoAssetSelector alloc] initForAssetType:v9 withAssetSpecifier:v8];
  v12 = [(MADAutoAssetScheduler *)self jobsBySelector];
  v13 = [v11 persistedEntryID];
  v14 = [v12 safeObjectForKey:v13 ofClass:objc_opt_class()];

  if (v14)
  {
    v15 = [v11 persistedEntryID];
    v16 = [(MADAutoAssetScheduler *)self persistedState];
    v17 = [v16 persistedEntry:v15 fromLocation:@"_jobFinishedForSetDomainName"];

    if ([v17 BOOLeanForKey:@"requiringRetry"] != v5)
    {
      [v17 persistBoolean:v5 forKey:@"requiringRetry"];
      v18 = [(MADAutoAssetScheduler *)self persistedState];
      v19 = [v14 summary];
      [v18 storePersistedEntry:v15 withEntrySummary:v19 fromLocation:@"_jobFinishedForSetDomainName"];

      v38 = [v14 assetSelector];
      v37 = [v14 intervalSecs];
      v36 = [v14 remainingSecs];
      v35 = [v14 pushedJob];
      v20 = [v14 setJob];
      v21 = [v14 setPolicy];
      v22 = [v14 pushedPolicy];
      v23 = [NSString alloc];
      v24 = @"no longer retry-required";
      if (v5)
      {
        v24 = @"retry-required (potential network failure)";
      }

      v25 = [v23 initWithFormat:@"scheduled job finished (%@)", v24];
      LOBYTE(v34) = v5;
      LOBYTE(v33) = v20;
      [(MADAutoAssetScheduler *)self _logPersistedEntry:@"_jobFinishedForSetDomainName" operation:@"ENTRY_MODIFY" persistingSelector:v38 intervalSecs:v37 remainingSecs:v36 pushedJob:v35 setJob:v33 setPolicy:v21 pushedPolicy:v22 requiringRetry:v34 message:v25];
    }

    v26 = +[MADAnalyticsManager getAnalyticsManager];
    v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 pushedJob]);
    v28 = [NSNumber numberWithBool:v5];
    v29 = [v26 recordMobileAssetScheduler:-1 forSelector:v11 withXpcID:0 forPushJob:v27 forSetJob:&__kCFBooleanTrue inSchedulerState:4 inXPCState:0 didJobFail:v28];

    [(MADAutoAssetScheduler *)self _informConnectorActiveJobFinishedforSelector:v11 withPotentialNetworkFailure:v5];
  }

  else
  {
    v30 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(MADAutoAssetScheduler *)self summary];
      v32 = [v11 summary];
      *buf = 138543618;
      v40 = v31;
      v41 = 2114;
      v42 = v32;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_jobFinishedForSetDomainName} no longer associated with scheduled job (presumed eliminated) | setJobSelector:%{public}@", buf, 0x16u);
    }
  }
}

- (void)_eliminateSelector:(id)a3 forSetJob:(BOOL)a4 indicatingWhenEliminated:(BOOL)a5
{
  v61 = a5;
  v5 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 assetSpecifier];

  if (v9 || (v5 & 1) != 0)
  {
    [(MADAutoAssetScheduler *)self _eliminateSpecificSelector:v7];
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
  v64 = self;
  v65 = v7;
  v63 = v5;
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
      v15 = [(MADAutoAssetScheduler *)self jobsBySelector];
      v16 = [v15 safeObjectForKey:v14 ofClass:objc_opt_class()];

      v17 = [v16 assetSelector];

      v72 = v16;
      if (v17)
      {
        v18 = [v16 assetSelector];
        v19 = [v18 assetType];
        v20 = [v7 assetType];
        v21 = [SUCore stringIsEqual:v19 to:v20];

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
              v31 = [v25 assetSelector];
              v32 = [v31 assetType];
              v33 = [v29 assetType];
              if ([v30 stringIsEqual:v32 to:v33])
              {
                v34 = p_weak_ivar_lyt[223];
                v35 = [v25 assetSelector];
                v36 = [v35 assetSpecifier];
                v37 = [v29 assetSpecifier];
                LOBYTE(v34) = [v34 stringIsEqual:v36 to:v37];

                p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
                v25 = v72;

                if (v34)
                {
                  self = v64;
                  v7 = v65;
                  v5 = v63;
                  v12 = v62;
                  v11 = v67;
                  v40 = v71;
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

        v40 = [v25 assetSelector];
        [v22 addObject:v40];
        self = v64;
        v7 = v65;
        v5 = v63;
        v12 = v62;
        v11 = v67;
      }

      else
      {
        v40 = _MADLog(@"AutoScheduler");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v38 = [(MADAutoAssetScheduler *)self summary];
          v39 = [v7 summary];
          *buf = 138543618;
          v86 = v38;
          v87 = 2114;
          v88 = v39;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} scheduledJob with nil assetSelector encountered on jobsBySelector | eliminateSelector:%{public}@", buf, 0x16u);
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
  v49 = [NSNumber numberWithBool:v5];
  v50 = [v48 recordMobileAssetScheduler:-1 forSelector:v7 withXpcID:0 forPushJob:0 forSetJob:v49 inSchedulerState:2 inXPCState:0 didJobFail:0];

  v51 = _MADLog(@"AutoScheduler");
  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v52)
    {
      v53 = [(MADAutoAssetScheduler *)self summary];
      if (v61)
      {
        v54 = @"Y";
      }

      else
      {
        v54 = @"N";
      }

      v55 = [v7 summary];
      *buf = 138543874;
      v86 = v53;
      v87 = 2114;
      v88 = v54;
      v89 = 2114;
      v90 = v55;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} set-job | indicatingEliminated:%{public}@ | eliminateSelector:%{public}@", buf, 0x20u);
    }

    if (v61)
    {
      v56 = [v7 assetType];
      v57 = [v7 assetSpecifier];
      [MADAutoAssetControlManager schedulerEliminatedSetDomainName:v56 forAssetSetIdentifier:v57];
    }
  }

  else
  {
    if (v52)
    {
      v58 = [(MADAutoAssetScheduler *)self summary];
      if (v61)
      {
        v59 = @"Y";
      }

      else
      {
        v59 = @"N";
      }

      v60 = [v7 summary];
      *buf = 138543874;
      v86 = v58;
      v87 = 2114;
      v88 = v59;
      v89 = 2114;
      v90 = v60;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_eliminateSelector} auto-asset-job | indicatingEliminated:%{public}@ | eliminateSelector:%{public}@", buf, 0x20u);
    }

    if (v61)
    {
      [MADAutoAssetControlManager schedulerEliminatedSelector:v7];
    }
  }
}

- (void)_eliminateSpecificSelector:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 persistedEntryID];
  if (v6)
  {
    v7 = [(MADAutoAssetScheduler *)self persistedState];
    v8 = [v7 persistedEntryAlreadyExists:v6 fromLocation:@"_eliminateSpecificSelector"];

    if (v8)
    {
      v9 = [(MADAutoAssetScheduler *)self persistedState];
      v10 = [v9 persistedEntry:v6 fromLocation:@"_eliminateSpecificSelector"];

      v11 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
      v12 = [v11 count];

      if (v12)
      {
        v13 = 0;
        while (1)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
          v16 = [v15 objectAtIndex:v13];

          if (v16)
          {
            v17 = [v16 assetSelector];
            v18 = [MADAutoAssetScheduler isSelector:v17 consideredEqualTo:v4];

            if (v18)
            {
              break;
            }
          }

          objc_autoreleasePoolPop(v14);
          ++v13;
          v19 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
          v20 = [v19 count];

          if (v13 >= v20)
          {
            goto LABEL_13;
          }
        }

        objc_autoreleasePoolPop(v14);
        v25 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
        [v25 removeObjectAtIndex:v13];
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_13:
    v23 = [(MADAutoAssetScheduler *)self jobsBySelector];
    [v23 removeObjectForKey:v6];

    if (v10)
    {
      v24 = [(MADAutoAssetScheduler *)self persistedState];
      [v24 removePersistedEntry:v6 fromLocation:@"_eliminateSpecificSelector"];

      [(MADAutoAssetScheduler *)self _logPersistedRemovedEntry:@"_eliminateSpecificSelector" removedSelector:v4 message:@"eliminated specific asset-selector scheduled job"];
    }
  }

  else
  {
    v21 = _MADLog(@"Auto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v4 summary];
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "{AUTO-SCHEDULER:_eliminateSpecificSelector} no selectorKey for eliminateSelector:%{public}@", &v26, 0xCu);
    }
  }
}

- (void)_registerForAndStartActivity:(int64_t)a3
{
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 >= 60)
  {
    v6 = a3;
  }

  else
  {
    v6 = 86400;
  }

  [(MADAutoAssetScheduler *)self setScheduledJobsXPCActivity:1];
  v7 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MADAutoAssetScheduler *)self summary];
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_registerForAndStartActivity} xpc_activity_register...", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __54__MADAutoAssetScheduler__registerForAndStartActivity___block_invoke;
  v11[3] = &unk_4B3418;
  v11[4] = self;
  v11[5] = v6;
  xpc_activity_register([@"com.apple.mobileassetd.auto-asset-scheduler" UTF8String], XPC_ACTIVITY_CHECK_IN, v11);
  v9 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MADAutoAssetScheduler *)self summary];
    *buf = 138543362;
    v13 = v10;
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
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  if (+[MADAutoAssetControlManager preferenceScheduledBackupTriggersDisabled])
  {
    v4 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MADAutoAssetScheduler *)self summary];
      *buf = 138543362;
      v11 = v5;
      v6 = "%{public}@ | {AUTO-SCHEDULER:_startActivityBackupTrigger} backup ticker DISABLED";
LABEL_7:
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_9:
    }
  }

  else
  {
    v7 = [(MADAutoAssetScheduler *)self scheduledJobsBackupTriggerTimer];

    if (!v7)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __52__MADAutoAssetScheduler__startActivityBackupTrigger__block_invoke;
      v9[3] = &unk_4B3440;
      v9[4] = self;
      v8 = [NSTimer timerWithTimeInterval:1 repeats:v9 block:([(MADAutoAssetScheduler *)self tickerIntervalSecs]* 1.25)];
      [(MADAutoAssetScheduler *)self setScheduledJobsBackupTriggerTimer:v8];

      v4 = +[NSRunLoop mainRunLoop];
      v5 = [(MADAutoAssetScheduler *)self scheduledJobsBackupTriggerTimer];
      [v4 addTimer:v5 forMode:NSDefaultRunLoopMode];
      goto LABEL_9;
    }

    v4 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MADAutoAssetScheduler *)self summary];
      *buf = 138543362;
      v11 = v5;
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

- (void)_startPushDelayTimer:(int64_t)a3
{
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  if (+[MADAutoAssetControlManager preferenceScheduledBackupTriggersDisabled])
  {
    v6 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MADAutoAssetScheduler *)self summary];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_startPushBackupTrigger} push delay timer DISABLED", &buf, 0xCu);
    }
  }

  else
  {
    [(MADAutoAssetScheduler *)self setPushDelaySecs:a3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    [@"com.apple.MobileAsset.handlePushNotificationReceived" UTF8String];
    v19 = os_transaction_create();
    v8 = [(MADAutoAssetScheduler *)self schedulerQueue];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);

    v10 = dispatch_time(0, 1000000000 * a3);
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

- (void)_setActivityCriteria:(id)a3 pushNotificationInitiated:(BOOL)a4 withActivityDelay:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v9);

  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (a5 <= 60)
  {
    v12 = 60;
  }

  else
  {
    v12 = a5;
  }

  v13 = &XPC_ACTIVITY_DELAY;
  if ((a5 * 0.05) > 5.0)
  {
    v14 = a5 * 0.05;
  }

  else
  {
    v14 = 5.0;
  }

  if (!v6)
  {
    v13 = &XPC_ACTIVITY_INTERVAL;
  }

  xpc_dictionary_set_uint64(v10, *v13, v12);
  xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_REPEATING, !v6);
  xpc_dictionary_set_uint64(v11, XPC_ACTIVITY_GRACE_PERIOD, v14);
  xpc_dictionary_set_BOOL(v11, XPC_ACTIVITY_POWER_NAP, 1);
  xpc_dictionary_set_string(v11, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v15 = _MADLog(@"AutoScheduler");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MADAutoAssetScheduler *)self summary];
    if (v6)
    {
      v17 = @"push";
    }

    else
    {
      v17 = @"scheduled";
    }

    v18 = [MADAutoAssetControlManager allocIntervalString:v12];
    v19 = v18;
    v20 = @"s";
    v21 = 138544642;
    v22 = v16;
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

  xpc_activity_set_criteria(v8, v11);
}

- (void)_performActivityOperations
{
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__MADAutoAssetScheduler__performActivityOperations__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)_performTickerOperations:(int64_t)a3
{
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableArray);
  v7 = self;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(MADAutoAssetScheduler *)self persistedState];
  v10 = [v9 persistedConfig];
  v11 = [v10 dateForKey:@"lastActivityTickerDate"];

  v12 = objc_alloc_init(NSDate);
  if (a3 <= 0)
  {
    v13 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MADAutoAssetScheduler *)v7 summary];
      *buf = 138543618;
      v89 = v14;
      v90 = 2048;
      v91 = a3;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} invalid elapsed ticker seconds - using minimum | elapsedTickerSecs:%ld", buf, 0x16u);
    }

    a3 = 60;
  }

  v74 = v8;
  v75 = v6;
  v72 = v12;
  v73 = v11;
  if (v11 && v12 && ([v12 timeIntervalSinceDate:v11], v15 > 0.0) && (v16 = v15 / a3, v16 >= 2))
  {
    v17 = v16 * a3;
    v18 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(MADAutoAssetScheduler *)v7 summary];
      *buf = 138543874;
      v89 = v19;
      v90 = 2048;
      v91 = a3;
      v92 = 2048;
      v93 = v17;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} making up for missed tick(s) | standardTickSecs:%ld, elapsedTickerSecs:%ld", buf, 0x20u);
    }
  }

  else
  {
    v17 = a3;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(MADAutoAssetScheduler *)v7 jobsAwaitingTrigger];
  v20 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
  v78 = v7;
  if (v20)
  {
    v21 = v20;
    v22 = *v84;
    v76 = *v84;
    v77 = v17;
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
          v26 = [v24 assetSelector];

          if (v26)
          {
            v27 = [v24 assetSelector];
            v28 = [v27 persistedEntryID];

            v29 = [(MADAutoAssetScheduler *)v7 persistedState];
            v30 = [v29 persistedEntry:v28 fromLocation:@"_performActivityOperations"];

            v31 = [v30 BOOLeanForKey:@"requiringRetry"];
            v81 = v25;
            v82 = v30;
            if ([v24 remainingSecs] > v17)
            {
              [v24 setRemainingSecs:{objc_msgSend(v24, "remainingSecs") - v17}];
              [v30 persistULL:objc_msgSend(v24 forKey:{"remainingSecs"), @"remainingSecs"}];
LABEL_41:
              v53 = [(MADAutoAssetScheduler *)v7 persistedState];
              v54 = [v24 summary];
              [v53 storePersistedEntry:v28 withEntrySummary:v54 fromLocation:@"_performActivityOperations"];

              v55 = [v24 assetSelector];
              v56 = [v24 intervalSecs];
              v57 = [v24 remainingSecs];
              v58 = [v24 pushedJob];
              v59 = [v24 setJob];
              v60 = [v24 setPolicy];
              v61 = [v24 pushedPolicy];
              LOBYTE(v71) = v31;
              LOBYTE(v70) = v59;
              v7 = v78;
              [(MADAutoAssetScheduler *)v78 _logPersistedEntry:@"_performTickerOperations" operation:@"ENTRY_MODIFY" persistingSelector:v55 intervalSecs:v56 remainingSecs:v57 pushedJob:v58 setJob:v70 setPolicy:v60 pushedPolicy:v61 requiringRetry:v71 message:@"adjusted currently awaiting scheduled job"];

              v22 = v76;
              v17 = v77;
              v21 = v79;
              v25 = v81;
              goto LABEL_42;
            }

            v35 = [v24 requiringRetry];
            v36 = [v24 assetSelector];
            if (v35)
            {
              v37 = v74;
            }

            else
            {
              v37 = v75;
            }

            [v37 addObject:v36];

            v38 = +[MADAnalyticsManager getAnalyticsManager];
            v39 = [v24 assetSelector];
            v40 = [(MADAutoAssetScheduler *)v7 xpcActivityUUID];
            v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v24 setJob]);
            v42 = [v38 recordMobileAssetScheduler:-1 forSelector:v39 withXpcID:v40 forPushJob:&__kCFBooleanFalse forSetJob:v41 inSchedulerState:3 inXPCState:0 didJobFail:0];

            LODWORD(v39) = [v24 pushedJob];
            v43 = _MADLog(@"AutoScheduler");
            v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
            if (v39)
            {
              if (v44)
              {
                v45 = [(MADAutoAssetScheduler *)v7 summary];
                v46 = [v24 summary];
                *buf = 138543618;
                v89 = v45;
                v90 = 2114;
                v91 = v46;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered push-job | currentlyAwaiting:%{public}@", buf, 0x16u);
              }

              [v24 setPushedJob:0];
              [v24 setPushedPolicy:0];
              if ([(MADAutoAssetScheduler *)v7 jobsAwaitingPushTrigger]>= 1)
              {
                [(MADAutoAssetScheduler *)v7 setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)v7 jobsAwaitingPushTrigger]- 1];
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
                v47 = [(MADAutoAssetScheduler *)v7 summary];
                v48 = [v24 summary];
                *buf = 138543618;
                v89 = v47;
                v90 = 2114;
                v91 = v48;
                v49 = v43;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered push-job when no job awaiting push trigger | currentlyAwaiting:%{public}@";
LABEL_38:
                _os_log_impl(&dword_0, v49, v50, v51, buf, 0x16u);
              }
            }

            else if (v44)
            {
              v47 = [(MADAutoAssetScheduler *)v7 summary];
              v48 = [v24 summary];
              *buf = 138543618;
              v89 = v47;
              v90 = 2114;
              v91 = v48;
              v49 = v43;
              v50 = OS_LOG_TYPE_DEFAULT;
              v51 = "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} scheduler triggered job | currentlyAwaiting:%{public}@";
              goto LABEL_38;
            }

            goto LABEL_40;
          }

          v28 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v33 = [(MADAutoAssetScheduler *)v7 summary];
            v34 = [v24 summary];
            *buf = 138543618;
            v89 = v33;
            v90 = 2114;
            v91 = v34;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} nil currentlyAwaiting.assetSelector encountered on jobsAwaitingTrigger | currentlyAwaiting:%{public}@", buf, 0x16u);
          }
        }

        else
        {
          v28 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v32 = [(MADAutoAssetScheduler *)v7 summary];
            *buf = 138543362;
            v89 = v32;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performActivityOperations} nil currentlyAwaiting encountered on jobsAwaitingTrigger", buf, 0xCu);
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

  v62 = [(MADAutoAssetScheduler *)v7 persistedState];
  v63 = [v62 persistedConfig];
  [v63 persistDate:v72 forKey:@"lastActivityTickerDate" shouldPersist:1];

  v64 = v78;
  [(MADAutoAssetScheduler *)v78 _logPersistedConfigSet:@"_performTickerOperations" activityIntervalSecs:[(MADAutoAssetScheduler *)v78 activityIntervalSecs] pushTriggerSecs:-1 lastTickDate:v72 message:@"updated last tick date"];
  if ([v75 count] || objc_msgSend(v74, "count"))
  {
    v65 = _MADLog(@"AutoScheduler");
    v66 = v73;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v67 = [(MADAutoAssetScheduler *)v78 summary];
      v68 = [v75 count];
      v69 = [v74 count];
      *buf = 138543874;
      v89 = v67;
      v90 = 2048;
      v91 = v68;
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
  v2 = self;
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  [(MADAutoAssetScheduler *)v2 setPushCounter:[(MADAutoAssetScheduler *)v2 pushCounter]+ 1];
  v50 = objc_alloc_init(NSMutableArray);
  v49 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v4 = [(MADAutoAssetScheduler *)v2 jobsAwaitingTrigger];
  v5 = [v4 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    v47 = *v56;
    v48 = v4;
    do
    {
      v8 = 0;
      v51 = v6;
      do
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v55 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        if (v9)
        {
          v11 = [v9 assetSelector];

          if (v11)
          {
            v54 = v10;
            v12 = [v9 assetSelector];
            v13 = [v12 persistedEntryID];

            v14 = [(MADAutoAssetScheduler *)v2 persistedState];
            v15 = [v14 persistedEntry:v13 fromLocation:@"_performPushNotificationOperations"];

            v16 = [v15 BOOLeanForKey:@"requiringRetry"];
            if ([v9 pushedJob])
            {
              v53 = v16;
              v17 = [v9 requiringRetry];
              v18 = [v9 assetSelector];
              if (v17)
              {
                v19 = v49;
              }

              else
              {
                v19 = v50;
              }

              [v19 addObject:v18];

              [v9 setPushedJob:0];
              [(MADAutoAssetScheduler *)v2 setJobsAwaitingPushTrigger:[(MADAutoAssetScheduler *)v2 jobsAwaitingPushTrigger]- 1];
              v20 = _MADLog(@"AutoScheduler");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [(MADAutoAssetScheduler *)v2 summary];
                v22 = [v9 summary];
                *buf = 138543618;
                v60 = v21;
                v61 = 2114;
                v62 = v22;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} 1-shot triggered push-job | currentlyAwaiting:%{public}@", buf, 0x16u);
              }

              v23 = +[MADAnalyticsManager getAnalyticsManager];
              v24 = [v9 assetSelector];
              v25 = [(MADAutoAssetScheduler *)v2 xpcActivityUUID];
              v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 setJob]);
              v27 = [v23 recordMobileAssetScheduler:-1 forSelector:v24 withXpcID:v25 forPushJob:&__kCFBooleanTrue forSetJob:v26 inSchedulerState:3 inXPCState:0 didJobFail:0];

              [v15 persistULL:objc_msgSend(v15 forKey:{"ullForKey:", @"intervalSecs", @"remainingSecs"}];
              [v15 persistBoolean:0 forKey:@"pushJob"];
              v28 = [(MADAutoAssetScheduler *)v2 persistedState];
              v29 = [v9 summary];
              [v28 storePersistedEntry:v13 withEntrySummary:v29 fromLocation:@"_performPushNotificationOperations"];

              v30 = [v9 assetSelector];
              v52 = [v9 intervalSecs];
              v31 = [v9 remainingSecs];
              v32 = [v9 pushedJob];
              v33 = v15;
              v34 = v2;
              v35 = [v9 setJob];
              v36 = [v9 setPolicy];
              v37 = [v9 pushedPolicy];
              LOBYTE(v46) = v53;
              LOBYTE(v45) = v35;
              v2 = v34;
              v15 = v33;
              [(MADAutoAssetScheduler *)v2 _logPersistedEntry:@"_performPushNotificationOperations" operation:@"ENTRY_MODIFY" persistingSelector:v30 intervalSecs:v52 remainingSecs:v31 pushedJob:v32 setJob:v45 setPolicy:v36 pushedPolicy:v37 requiringRetry:v46 message:@"adjusted currently awaiting push job"];

              v7 = v47;
              v4 = v48;
              v6 = v51;
            }

            v10 = v54;
          }

          else
          {
            v13 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v39 = [(MADAutoAssetScheduler *)v2 summary];
              v40 = [v9 summary];
              *buf = 138543618;
              v60 = v39;
              v61 = 2114;
              v62 = v40;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} nil currentlyAwaiting.assetSelector encountered on jobsAwaitingTrigger | assetSelector:%{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v13 = _MADLog(@"AutoScheduler");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v38 = [(MADAutoAssetScheduler *)v2 summary];
            *buf = 138543362;
            v60 = v38;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} nil currentlyAwaiting encountered on jobsAwaitingTrigger", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v6);
  }

  if ([v50 count] || objc_msgSend(v49, "count"))
  {
    v41 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(MADAutoAssetScheduler *)v2 summary];
      v43 = [v50 count];
      v44 = [v49 count];
      *buf = 138543874;
      v60 = v42;
      v61 = 2048;
      v62 = v43;
      v63 = 2048;
      v64 = v44;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performPushNotificationOperations} 1-shot triggered selectors | NoRetry:%ld RequiringRetry:%ld | MA_MILESTONE", buf, 0x20u);
    }

    [(MADAutoAssetScheduler *)v2 _informConnectorTriggeredSelectors:v50 withTriggeredRequiringRetry:v49];
  }
}

- (void)_performTriggeredSetJobForSetConfiguration:(id)a3 usingSetUpdatePolicy:(id)a4
{
  v5 = a3;
  v6 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [MAAutoAssetSelector alloc];
  v10 = [v5 clientDomainName];
  v11 = [v5 assetSetIdentifier];

  v12 = [v9 initForAssetType:v10 withAssetSpecifier:v11];
  if (v8 && v12)
  {
    [v8 addObject:v12];
    v13 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MADAutoAssetScheduler *)self summary];
      v15 = 138543874;
      v16 = v14;
      v17 = 2048;
      v18 = [v7 count];
      v19 = 2048;
      v20 = [v8 count];
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ | {AUTO-SCHEDULER:_performTriggeredSetJobForSetConfiguration} directly triggered selector | NoRetry:%ld RequiringRetry:%ld | MA_MILESTONE", &v15, 0x20u);
    }

    [(MADAutoAssetScheduler *)self _informConnectorTriggeredSelectors:v7 withTriggeredRequiringRetry:v8];
  }
}

- (id)_newSetPolicyForDomainName:(id)a3 forAssetSetIdentifier:(id)a4 fromLocation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [[NSString alloc] initWithFormat:@"%@:_newSetPolicyForDomainName", v8];
  v13 = [[MAAutoAssetSelector alloc] initForAssetType:v10 withAssetSpecifier:v9];

  v14 = [(MADAutoAssetScheduler *)self jobsBySelector];
  v15 = [v13 persistedEntryID];
  v16 = [v14 safeObjectForKey:v15 ofClass:objc_opt_class()];

  if (v16)
  {
    v17 = [v13 persistedEntryID];
    v18 = [(MADAutoAssetScheduler *)self persistedState];
    v19 = [v18 persistedEntry:v17 fromLocation:v12];

    if ([v19 BOOLeanForKey:@"setJob"])
    {
      v20 = [v19 secureCodedObjectForKey:@"setPolicy" ofClass:objc_opt_class()];
      if (!v20)
      {
        v20 = [(MADAutoAssetScheduler *)self defaultSchedulerSetPolicy];
      }

      v21 = objc_alloc_init(MANAutoAssetSetPolicy);
      -[MANAutoAssetSetPolicy setUserInitiated:](v21, "setUserInitiated:", [v20 userInitiated]);
      -[MANAutoAssetSetPolicy setLockInhibitsEmergencyRemoval:](v21, "setLockInhibitsEmergencyRemoval:", [v20 lockInhibitsEmergencyRemoval]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOnBattery:](v21, "setAllowCheckDownloadOnBattery:", [v20 allowCheckDownloadOnBattery]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenBatteryLow:](v21, "setAllowCheckDownloadWhenBatteryLow:", [v20 allowCheckDownloadWhenBatteryLow]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadWhenCPUHigh:](v21, "setAllowCheckDownloadWhenCPUHigh:", [v20 allowCheckDownloadWhenCPUHigh]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverExpensive:](v21, "setAllowCheckDownloadOverExpensive:", [v20 allowCheckDownloadOverExpensive]);
      -[MANAutoAssetSetPolicy setAllowCheckDownloadOverCellular:](v21, "setAllowCheckDownloadOverCellular:", [v20 allowCheckDownloadOverCellular]);
      -[MANAutoAssetSetPolicy setBlockCheckDownload:](v21, "setBlockCheckDownload:", [v20 blockCheckDownload]);
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
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  v4 = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkersRequiringRetry];
  [MADAutoAssetConnector resumeMonitoringMarkers:v5 withMarkersRequiringRetry:v4];
}

- (void)_informConnectorAlteredSelectors
{
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  [MADAutoAssetConnector alteredMonitoringMarkers:v4 withTriggeredNoRetry:0 withTriggeredRequiringRetry:0];
}

- (void)_informConnectorTriggeredSelectors:(id)a3 withTriggeredRequiringRetry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v6;
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
  v19 = v7;
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

  v27 = [(MADAutoAssetScheduler *)self _currentlyScheduledMarkers];
  [MADAutoAssetConnector alteredMonitoringMarkers:v27 withTriggeredNoRetry:v9 withTriggeredRequiringRetry:v10];
}

- (void)_informConnectorActiveJobFinishedforSelector:(id)a3 withPotentialNetworkFailure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(MADAutoAssetScheduler *)self _markerForSelector:v6];

  [MADAutoAssetConnector scheduledMarkerFinished:v8 withPotentialNetworkFailure:v4];
}

- (id)_currentlyScheduledMarkers
{
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if (v10)
        {
          v12 = [v10 assetSelector];

          if (v12)
          {
            v13 = [v10 assetSelector];
            v14 = [(MADAutoAssetScheduler *)self _markerForSelector:v13 andJob:v10];

            [v4 addObject:v14];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_currentlyScheduledMarkersRequiringRetry
{
  v3 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (v10)
        {
          v11 = [*(*(&v18 + 1) + 8 * i) assetSelector];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 requiringRetry];

            if (v13)
            {
              v14 = objc_autoreleasePoolPush();
              v15 = [v10 assetSelector];
              v16 = [(MADAutoAssetScheduler *)self _markerForSelector:v15 andJob:v10];

              [v4 addObject:v16];
              objc_autoreleasePoolPop(v14);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_markerForSelector:(id)a3 andJob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((v7 || (-[MADAutoAssetScheduler jobsBySelector](self, "jobsBySelector"), v9 = objc_claimAutoreleasedReturnValue(), [v6 persistedEntryID], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "safeObjectForKey:ofClass:", v10, objc_opt_class()), v8 = objc_claimAutoreleasedReturnValue(), v10, v9, v8)) && objc_msgSend(v8, "setJob"))
  {
    v11 = [v8 assetSelector];
    v12 = [(MADAutoAssetScheduler *)self _setConfigurationForAssetSelector:v11];

    v13 = [v8 setPolicy];
    if (!v13)
    {
      v13 = [(MADAutoAssetScheduler *)self defaultSchedulerSetPolicy];
    }

    v14 = [MADMarker alloc];
    v15 = [v6 assetType];
    v16 = [v12 clientDomainName];
    v17 = [v12 assetSetIdentifier];
    v18 = [v8 pushedPolicy];
    v19 = [(MADMarker *)v14 initForAssetType:v15 forClientDomainName:v16 forAssetSetIdentifier:v17 forAssetSelector:0 forSetJob:1 withSetPolicy:v13 withPushedPolicy:v18];
  }

  else
  {
    v20 = [MADMarker alloc];
    v12 = [v6 assetType];
    v19 = [(MADMarker *)v20 initForAssetType:v12 forClientDomainName:0 forAssetSetIdentifier:0 forAssetSelector:v6 forSetJob:0 withSetPolicy:0 withPushedPolicy:0];
  }

  return v19;
}

+ (id)persistedEntryIDForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@_%@", v6, v5];

  return v7;
}

- (void)_logPersistedConfigLoad:(id)a3 activityIntervalSecs:(int64_t)a4 pushTriggerSecs:(int64_t)a5 lastTickDate:(id)a6 message:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [NSString alloc];
  v17 = [MADAutoAssetControlManager allocIntervalString:a4];
  v18 = [MADAutoAssetControlManager allocIntervalString:a5];
  v19 = v18;
  if (v13)
  {
    v20 = [MADAutoAssetScheduler stringFromDate:v13];
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
    v35 = v12;
    v36 = 2114;
    v37 = v14;
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

- (void)_logPersistedConfigSet:(id)a3 activityIntervalSecs:(int64_t)a4 pushTriggerSecs:(int64_t)a5 lastTickDate:(id)a6 message:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [NSString alloc];
  if (a4 < 0)
  {
    v17 = @"UNCHANGED";
    if ((a5 & 0x8000000000000000) == 0)
    {
LABEL_3:
      v18 = [MADAutoAssetControlManager allocIntervalString:a5];
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v17 = [MADAutoAssetControlManager allocIntervalString:a4];
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v18 = @"UNCHANGED";
  if (v13)
  {
LABEL_4:
    v19 = [MADAutoAssetScheduler stringFromDate:v13];
    v20 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v18, v19];

    if (a5 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v20 = [v16 initWithFormat:@"activityIntervalSecs:%@ | pushTriggerSecs:%@ | lastTickDate:%@", v17, v18, @"N"];
  if ((a5 & 0x8000000000000000) == 0)
  {
LABEL_5:
  }

LABEL_6:
  if ((a4 & 0x8000000000000000) == 0)
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
    v34 = v12;
    v35 = 2114;
    v36 = v14;
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

- (void)_logPersistedEntry:(id)a3 operation:(id)a4 persistingSelector:(id)a5 intervalSecs:(int64_t)a6 remainingSecs:(int64_t)a7 pushedJob:(BOOL)a8 setJob:(BOOL)a9 setPolicy:(id)a10 pushedPolicy:(id)a11 requiringRetry:(BOOL)a12 message:(id)a13
{
  v13 = a8;
  v40 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  v39 = a13;
  v23 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v23);

  v24 = [MADAutoAssetPersisted persistedOperationSymbol:v19];
  v25 = [v20 persistedEntryID];
  if (v25)
  {
    v38 = v24;
    v26 = [MADAutoAssetScheduler jobTypeName:v13 setJob:a9 requiringRetry:a12];
    v27 = _MADLog(@"AutoScheduler");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MADAutoAssetControlManager allocIntervalString:a6];
      v28 = [MADAutoAssetControlManager allocIntervalString:a7];
      v29 = @"N";
      v30 = @"Y";
      if (!a12)
      {
        v30 = @"N";
      }

      v36 = v30;
      if (v21)
      {
        v29 = [v21 summary];
      }

      if (v22)
      {
        v31 = [v22 summary];
      }

      else
      {
        v31 = @"N";
      }

      *buf = 138547714;
      v42 = @"PERSISTED";
      v43 = 2114;
      v44 = @"AUTO-SCHEDULER";
      v45 = 2114;
      v46 = v19;
      v47 = 2114;
      v48 = @"SCHED";
      v49 = 2114;
      v50 = @">----->";
      v51 = 2114;
      v52 = v40;
      v53 = 2114;
      v54 = v39;
      v55 = 2114;
      v56 = @"SCHED";
      v57 = 2114;
      v58 = v24;
      v59 = 2114;
      v60 = v25;
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
      v70 = v29;
      v71 = 2114;
      v35 = v31;
      v72 = v31;
      v73 = 2114;
      v74 = @"SCHED";
      v75 = 2114;
      v76 = @"<-----<";
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@] | [%{public}@] intervalSecs:%{public}@ | remainingSecs:%{public}@ | requiringRetry:%{public}@ | setPolicy:%{public}@ | pushedPolicy:%{public}@\n#_%{public}@:%{public}@", buf, 0xB6u);
      if (v22)
      {
      }

      if (v21)
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
      v32 = [(MADAutoAssetScheduler *)self summary];
      v33 = [v20 summary];
      *buf = 138544386;
      v42 = v32;
      v43 = 2114;
      v44 = v40;
      v45 = 2114;
      v46 = v19;
      v47 = 2114;
      v48 = v39;
      v49 = 2114;
      v50 = v33;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedEntry} %{public}@ | no selectorKey | %{public}@ | assetSelector:%{public}@", buf, 0x34u);
    }
  }
}

- (void)_logPersistedRemovedEntry:(id)a3 removedSelector:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  v13 = [v9 persistedEntryID];
  v14 = _MADLog(@"AutoScheduler");
  v15 = v14;
  if (v13)
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
      v29 = v8;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = @"SCHED";
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      v38 = 2114;
      v39 = @"SCHED";
      v40 = 2114;
      v41 = @"<-----<";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:(%{public}@) [%{public}@]\n#_%{public}@:%{public}@", &v18, 0x7Au);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = [(MADAutoAssetScheduler *)self summary];
    v17 = [v9 summary];
    v18 = 138544130;
    v19 = v16;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedRemovedEntry} %{public}@ | no selectorKey to remove | removedSelector:%{public}@", &v18, 0x2Au);
  }
}

- (void)_logPersistedTableOfContents:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetScheduler *)self schedulerQueue];
  dispatch_assert_queue_V2(v5);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    v6 = [(MADAutoAssetScheduler *)self persistedState];
    v7 = [v6 persistedEntryIDs:v4];

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
        v46 = v4;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      if (v8 >= 1)
      {
        v11 = 0;
        *&v10 = 138543874;
        v30 = v10;
        v32 = self;
        do
        {
          v12 = [v7 objectAtIndexedSubscript:{v11, v30}];
          v13 = [(MADAutoAssetScheduler *)self persistedState];
          v14 = [v13 persistedEntry:v12 fromLocation:v4];

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

            self = v32;
          }

          else
          {
            v18 = _MADLog(@"AutoScheduler");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(MADAutoAssetScheduler *)self summary];
              *buf = v30;
              v36 = v4;
              v37 = 2114;
              v38 = v19;
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
      v46 = v4;
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
      v46 = v4;
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
  v20 = [(MADAutoAssetScheduler *)self jobsAwaitingTrigger];
  v18 = [v20 count];
  v19 = [(MADAutoAssetScheduler *)self jobsBySelector];
  v17 = [v19 count];
  v16 = [(MADAutoAssetScheduler *)self jobsAwaitingPushTrigger];
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
  v6 = [(MADAutoAssetScheduler *)self pushCounter];
  v7 = [(MADAutoAssetScheduler *)self lastTickTimestampString];
  if (v7)
  {
    v8 = [(MADAutoAssetScheduler *)self lastTickTimestampString];
  }

  else
  {
    v8 = @"N";
  }

  v9 = [MADAutoAssetScheduler nameForXPCStatus:[(MADAutoAssetScheduler *)self scheduledJobsXPCActivity]];
  v10 = [MADAutoAssetScheduler nameForXPCStatus:[(MADAutoAssetScheduler *)self pushJobsXPCActivity]];
  v11 = [(MADAutoAssetScheduler *)self tickerIntervalReRegistering];
  v12 = @"Y";
  if (!v11)
  {
    v12 = @"N";
  }

  v13 = [NSString stringWithFormat:@"[jobsAwaitingTrigger:%ld, jobsBySelector:%ld, jobsAwaitingPushTrigger:%ld|activityInterval:%@, tickerInterval:%@, tickerFired:%@, pushDelay:%@, pushCounter:%ld, lastTick:%@|[xpcActivity]scheduled:%@, push:%@|[issueReRegister]scheduled:%@]", v18, v17, v16, v15, v3, v4, v5, v6, v8, v9, v10, v12];

  if (v7)
  {
  }

  return v13;
}

+ (id)jobTypeName:(BOOL)a3 setJob:(BOOL)a4 requiringRetry:(BOOL)a5
{
  v5 = @"scheduled-job";
  if (a5)
  {
    v5 = @"scheduled-job(requiring-retry)";
  }

  v6 = @"set-job";
  if (a5)
  {
    v6 = @"set-job(requiring-retry)";
  }

  if (a4)
  {
    v5 = v6;
  }

  if (a5)
  {
    v7 = @"push-job(requiring-retry)";
  }

  else
  {
    v7 = @"push-job";
  }

  if (a3)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

+ (id)nameForXPCStatus:(int64_t)a3
{
  if (a3 > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_4B34A8 + a3);
  }
}

+ (id)stringFromDate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(NSDateFormatter);
    [v4 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
    v5 = [v4 stringFromDate:v3];

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

+ (int64_t)tickerIntervalForActivityIntervalSecs:(int64_t)a3
{
  result = 14400;
  if (a3 >= 60 && a3 != 86400 && a3 != 604800)
  {
    if (a3 < 0x258)
    {
      return a3;
    }

    else
    {
      return ((a3 / 10.0) + 1.0);
    }
  }

  return result;
}

+ (BOOL)isSelector:(id)a3 consideredEqualTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = 1;
    goto LABEL_22;
  }

  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 assetType];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = [v7 assetType];
    if (!v11)
    {
      v8 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v12 = v11;
    v13 = [v5 assetSpecifier];
    if (v13)
    {
      v14 = v13;
      v15 = [v7 assetSpecifier];
      if (!v15)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v16 = v15;
      v17 = [v5 assetVersion];
      if (v17)
      {

        v8 = 0;
LABEL_11:

LABEL_14:
LABEL_20:

        goto LABEL_21;
      }

      v18 = [v7 assetVersion];

      if (v18)
      {
LABEL_16:
        v8 = 0;
        goto LABEL_22;
      }

      v10 = [v5 assetType];
      v12 = [v7 assetType];
      if ([SUCore stringIsEqual:v10 to:v12])
      {
        v14 = [v5 assetSpecifier];
        v16 = [v7 assetSpecifier];
        v8 = [SUCore stringIsEqual:v14 to:v16];
        goto LABEL_11;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

LABEL_22:

  return v8;
}

+ (void)addScheduledJobs:(id)a3 basedOnControl:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADAutoAssetScheduler autoAssetScheduler];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 schedulerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__MADAutoAssetScheduler_addScheduledJobs_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v12 = v8;
    v13 = v6;
    v14 = v5;
    dispatch_sync(v9, block);

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
    v4 = [v2 schedulerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __44__MADAutoAssetScheduler_jobsAwaitingTrigger__block_invoke;
    v8[3] = &unk_4B2AC8;
    v10 = &v12;
    v9 = v3;
    dispatch_sync(v4, v8);

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

+ (void)forceGlobalForget:(id)a3
{
  v3 = a3;
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 schedulerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __43__MADAutoAssetScheduler_forceGlobalForget___block_invoke;
    v9[3] = &unk_4B2B18;
    v10 = v5;
    v11 = v3;
    dispatch_sync(v6, v9);

    v7 = v10;
  }

  else
  {
    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 summary];
      *buf = 138543362;
      v13 = v8;
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

+ (void)setPersistedStateCaching:(BOOL)a3
{
  v4 = +[MADAutoAssetScheduler autoAssetScheduler];
  v5 = [v4 schedulerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MADAutoAssetScheduler_setPersistedStateCaching___block_invoke;
  v7[3] = &unk_4B3488;
  v8 = v4;
  v9 = a3;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __50__MADAutoAssetScheduler_setPersistedStateCaching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  [v2 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];
}

@end