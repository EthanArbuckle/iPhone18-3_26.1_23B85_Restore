@interface BRCAnalyticsReporter
+ (BOOL)isTelemetryReportingEnabled;
+ (id)_aggregatedTelemetryDescription:(id)description;
+ (void)_enumerateAggregatedTelemetryForSession:(id)session withBlock:(id)block;
+ (void)cancelSyncConsistencyReportWithMountPath:(id)path queue:(id)queue;
- (BOOL)_resumePausedTreeConsistencyCheckOperationWithSystemTask:(id)task;
- (BOOL)_shouldDeferForExistingSnapshot;
- (BRCAnalyticsReporter)initWithSession:(id)session;
- (void)_checkSyncConsistencyWithSystemTask:(id)task;
- (void)_cleanupTimedOutEventMetrics:(id)metrics;
- (void)_forgetEventMetrics:(id)metrics;
- (void)_gatherAppTelemetryEventsWithSystemTask:(id)task;
- (void)_reportSyncUpBackoffInfo;
- (void)_setupSyncConsistencyCancellationTimerWithSession:(id)session;
- (void)_setupSyncConsistencyDeferralTimerWithSystemTask:(id)task;
- (void)_waitForApplySchedulerToBeIdleWithCompletion:(id)completion;
- (void)_withEventMetricsOfKind:(id)kind accessor:(id)accessor;
- (void)aggregateReportForAppTelemetryIdentifier:(int)identifier itemID:(id)d zoneMangledID:(id)iD enhancedDrivePrivacyEnabled:(id)enabled error:(id)error;
- (void)createFSEventToSyncUpEventForFileID:(unint64_t)d genID:(unsigned int)iD;
- (void)createUserDownloadEventForOperationID:(id)d isRecursive:(BOOL)recursive isForBackup:(BOOL)backup;
- (void)deleteMissingErrorThrottles;
- (void)didApplyItemInsideSharedItemID:(id)d;
- (void)dumpDatabaseInfoToContext:(id)context;
- (void)dumpToContext:(id)context;
- (void)forgetEventMetric:(id)metric;
- (void)lookupFSEventToSyncUpEventByFileID:(unint64_t)d genID:(unsigned int)iD accessor:(id)accessor;
- (void)lookupFSEventToSyncUpEventByItemID:(id)d accessor:(id)accessor;
- (void)lookupUserDownloadEventByFileObjectID:(id)d accessor:(id)accessor;
- (void)lookupUserDownloadEventByOperationID:(id)d accessor:(id)accessor;
- (void)postReportForDefaultSubCategoryWithCategory:(unint64_t)category telemetryTimeEvent:(id)event;
- (void)registerBackgroundXPCActivities;
- (void)submitEventMetric:(id)metric;
@end

@implementation BRCAnalyticsReporter

- (BRCAnalyticsReporter)initWithSession:(id)session
{
  sessionCopy = session;
  v27.receiver = self;
  v27.super_class = BRCAnalyticsReporter;
  v6 = [(BRCAnalyticsReporter *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("analytics-reporter", v9);

    queue = v7->_queue;
    v7->_queue = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("wait-on-idle", v13);

    waitOnIdleQueue = v7->_waitOnIdleQueue;
    v7->_waitOnIdleQueue = v14;

    v16 = objc_opt_new();
    eventsByKind = v7->_eventsByKind;
    v7->_eventsByKind = v16;

    v18 = objc_alloc_init(BRCSyncHealthReport);
    syncHealthReport = v7->_syncHealthReport;
    v7->_syncHealthReport = v18;

    v20 = [[BRCCKMetricEndpoint alloc] initWithSession:sessionCopy];
    metricEndpoint = v7->_metricEndpoint;
    v7->_metricEndpoint = &v20->super;

    v22 = objc_alloc_init(BRCRTCReporter);
    rtcReporter = v7->_rtcReporter;
    v7->_rtcReporter = v22;

    v24 = objc_alloc_init(BRCAppTelemetryConverter);
    appTelemetryConvertor = v7->_appTelemetryConvertor;
    v7->_appTelemetryConvertor = v24;
  }

  return v7;
}

- (void)registerBackgroundXPCActivities
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] iCloud Analytics collection is disabled, unregistering bgst%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained[1] clientTruthWorkloop];

    if (v8)
    {
      v9 = [v7[1] clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_15;
      block[3] = &unk_2784FF450;
      block[4] = v7;
      dispatch_async_and_wait(v9, block);
    }
  }

  v10 = +[BRCBGSystemTaskManager sharedManager];
  [v10 completeTask:v3];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_15(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [*(*(a1 + 32) + 8) accountHandler];
  v4 = [v3 acAccountID];
  v5 = [v2 personaIdentifierForACAccountID:v4];

  if ([v5 isEqualToString:@"__defaultPersonaID__"])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v5;
  if (!v7)
  {
    if (BRCEventKindUserDownload_block_invoke___personaOnceToken != -1)
    {
      __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_15_cold_1();
    }

    v8 = BRCEventKindUserDownload_block_invoke___personalPersona;
  }

  v9 = [MEMORY[0x277D77BF8] sharedManager];
  v38 = [v9 currentPersona];

  v52 = 0;
  v10 = [v38 userPersonaUniqueString];
  v11 = v10;
  if (v10 == v8 || ([v10 isEqualToString:v8] & 1) != 0)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v51 = 0;
    v29 = [v38 copyCurrentPersonaContextWithError:&v51];
    v30 = v51;
    v31 = v52;
    v52 = v29;

    if (v30)
    {
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        __br_notify_register_dispatch_block_invoke_cold_4();
      }
    }

    v12 = [v38 br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v12)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, 0x90u))
      {
        *buf = 138412802;
        v57 = v5;
        v58 = 2112;
        v59 = v12;
        v60 = 2112;
        v61 = v34;
        _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_49:
    }
  }

  else
  {
    if (!v7 && ([v38 isDataSeparatedPersona] & 1) == 0)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v12 = 0;
      goto LABEL_49;
    }

    v36 = brc_bread_crumbs();
    v37 = brc_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v13 = objc_alloc_init(BRCSyncHealthReport);
  [(BRCSyncHealthReport *)v13 generateReportWithSession:*(*(a1 + 32) + 8)];
  [BRCCoreAnalyticsReporter uploadMetricsReport:v13];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = [(BRCSyncHealthReport *)v13 telemetryErrorEvents];
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v15)
  {
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(a1 + 32) postReportForDefaultSubCategoryWithCategory:7 telemetryTimeEvent:*(*(&v47 + 1) + 8 * i)];
      }

      v15 = [v14 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v15);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = [(BRCSyncHealthReport *)v13 telemetryOtherEvents];
  v19 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v19)
  {
    v20 = *v44;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(a1 + 32) postReportForDefaultSubCategoryWithCategory:7 telemetryTimeEvent:*(*(&v43 + 1) + 8 * j)];
      }

      v19 = [v18 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [(BRCSyncHealthReport *)v13 aggregatedEvents];
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v23)
  {
    v24 = *v40;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(a1 + 32) postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:*(*(&v39 + 1) + 8 * k)];
      }

      v23 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v23);
  }

  [*(*(a1 + 32) + 8) _sendFPFSImportStatusTelemetryEvent];
  v26 = *(a1 + 32);
  v27 = *(v26 + 56);
  *(v26 + 56) = v13;

  _BRRestorePersona();
  v28 = *MEMORY[0x277D85DE8];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRCEventKindUserDownload_block_invoke___personalPersona;
  BRCEventKindUserDownload_block_invoke___personalPersona = v0;
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_29(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained || ([WeakRetained[1] clientTruthWorkloop], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v13 = +[BRCBGSystemTaskManager sharedManager];
    [v13 completeTask:v3];
    goto LABEL_17;
  }

  v10 = +[BRCAccountsManager sharedManager];
  v11 = [v7[1] accountHandler];
  v12 = [v11 acAccountID];
  v13 = [v10 personaIdentifierForACAccountID:v12];

  if ([v13 isEqualToString:@"__defaultPersonaID__"])
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = v13;
  if (!v15)
  {
    if (BRCEventKindUserDownload_block_invoke_2___personaOnceToken != -1)
    {
      __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_29_cold_2();
    }

    v16 = BRCEventKindUserDownload_block_invoke_2___personalPersona;
  }

  v17 = [MEMORY[0x277D77BF8] sharedManager];
  v18 = [v17 currentPersona];

  v33 = 0;
  v19 = [v18 userPersonaUniqueString];
  v20 = v19;
  if (v19 == v16 || ([v19 isEqualToString:v16] & 1) != 0)
  {
    v21 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v32 = 0;
      v23 = [v18 copyCurrentPersonaContextWithError:&v32];
      v24 = v32;
      v25 = v33;
      v33 = v23;

      if (v24)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, 0x90u))
        {
          __br_notify_register_dispatch_block_invoke_cold_4();
        }
      }

      v21 = [v18 br_generateAndRestorePersonaContextWithPersonaUniqueString:v16];

      if (!v21)
      {
        goto LABEL_15;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        *buf = 138412802;
        v35 = v13;
        v36 = 2112;
        v37 = v21;
        v38 = 2112;
        v39 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v15 || ([v18 isDataSeparatedPersona] & 1) != 0)
      {
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_15;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v21 = 0;
    }
  }

LABEL_15:
  [v7 _gatherAppTelemetryEventsWithSystemTask:v3];

  _BRRestorePersona();
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_30()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRCEventKindUserDownload_block_invoke_2___personalPersona;
  BRCEventKindUserDownload_block_invoke_2___personalPersona = v0;
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_36(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_36_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained || ([WeakRetained[1] clientTruthWorkloop], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v9))
  {
    v13 = +[BRCBGSystemTaskManager sharedManager];
    [v13 completeTask:v3];
    goto LABEL_17;
  }

  v10 = +[BRCAccountsManager sharedManager];
  v11 = [v7[1] accountHandler];
  v12 = [v11 acAccountID];
  v13 = [v10 personaIdentifierForACAccountID:v12];

  if ([v13 isEqualToString:@"__defaultPersonaID__"])
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = v13;
  if (!v15)
  {
    if (BRCEventKindUserDownload_block_invoke_3___personaOnceToken != -1)
    {
      __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_36_cold_2();
    }

    v16 = BRCEventKindUserDownload_block_invoke_3___personalPersona;
  }

  v17 = [MEMORY[0x277D77BF8] sharedManager];
  v18 = [v17 currentPersona];

  v33 = 0;
  v19 = [v18 userPersonaUniqueString];
  v20 = v19;
  if (v19 == v16 || ([v19 isEqualToString:v16] & 1) != 0)
  {
    v21 = 0;
  }

  else
  {
    if (voucher_process_can_use_arbitrary_personas())
    {
      v32 = 0;
      v23 = [v18 copyCurrentPersonaContextWithError:&v32];
      v24 = v32;
      v25 = v33;
      v33 = v23;

      if (v24)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, 0x90u))
        {
          __br_notify_register_dispatch_block_invoke_cold_4();
        }
      }

      v21 = [v18 br_generateAndRestorePersonaContextWithPersonaUniqueString:v16];

      if (!v21)
      {
        goto LABEL_15;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        *buf = 138412802;
        v35 = v13;
        v36 = 2112;
        v37 = v21;
        v38 = 2112;
        v39 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      if (v15 || ([v18 isDataSeparatedPersona] & 1) != 0)
      {
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __br_notify_register_dispatch_block_invoke_cold_3();
        }

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
        goto LABEL_15;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v21 = 0;
    }
  }

LABEL_15:
  [v7 _checkSyncConsistencyWithSystemTask:v3];

  _BRRestorePersona();
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_37()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRCEventKindUserDownload_block_invoke_3___personalPersona;
  BRCEventKindUserDownload_block_invoke_3___personalPersona = v0;
}

- (void)_waitForApplySchedulerToBeIdleWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_session;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__BRCAnalyticsReporter__waitForApplySchedulerToBeIdleWithCompletion___block_invoke;
  v16[3] = &unk_278500020;
  v6 = v5;
  v17 = v6;
  v7 = completionCopy;
  v18 = v7;
  v8 = MEMORY[0x22AA4A310](v16);
  applyScheduler = [(BRCAccountSession *)v6 applyScheduler];
  hasActiveWorkGroup = [applyScheduler hasActiveWorkGroup];
  v11 = dispatch_group_wait(hasActiveWorkGroup, 0);

  if (v11)
  {
    waitOnIdleQueue = self->_waitOnIdleQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__BRCAnalyticsReporter__waitForApplySchedulerToBeIdleWithCompletion___block_invoke_3;
    v13[3] = &unk_278500048;
    v14 = v6;
    v15 = v8;
    dispatch_async(waitOnIdleQueue, v13);
  }

  else
  {
    v8[2](v8, 0);
  }
}

void __69__BRCAnalyticsReporter__waitForApplySchedulerToBeIdleWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) clientTruthWorkloop];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__BRCAnalyticsReporter__waitForApplySchedulerToBeIdleWithCompletion___block_invoke_2;
  v5[3] = &unk_2784FFFF8;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

uint64_t __69__BRCAnalyticsReporter__waitForApplySchedulerToBeIdleWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  [v2 telemetryApplySchedulerTimeout];
  v4 = (v3 * 1000000000.0);

  v5 = [*(a1 + 32) applyScheduler];
  v6 = [v5 hasActiveWorkGroup];
  v7 = dispatch_time(0, v4);
  dispatch_group_wait(v6, v7);

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)_gatherAppTelemetryEventsWithSystemTask:(id)task
{
  taskCopy = task;
  v5 = self->_session;
  clientTruthWorkloop = [(BRCAccountSession *)v5 clientTruthWorkloop];
  if (!clientTruthWorkloop)
  {
    goto LABEL_5;
  }

  v7 = clientTruthWorkloop;
  applyScheduler = [(BRCAccountSession *)v5 applyScheduler];
  hasActiveWorkGroup = [applyScheduler hasActiveWorkGroup];

  if (hasActiveWorkGroup)
  {
    if (([taskCopy isTaskExpired] & 1) == 0)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke;
      v11[3] = &unk_278500098;
      v12 = v5;
      selfCopy = self;
      v14 = taskCopy;
      [(BRCAnalyticsReporter *)self _waitForApplySchedulerToBeIdleWithCompletion:v11];
    }
  }

  else
  {
LABEL_5:
    v10 = +[BRCBGSystemTaskManager sharedManager];
    [v10 completeTask:taskCopy];
  }
}

void __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke(id *a1, int a2)
{
  v4 = [a1[4] cloudDocsClientZone];
  v5 = [v4 rootItemID];

  v6 = [a1[4] cloudDocsClientZone];
  v7 = [v6 dbRowID];

  v8 = a1[5];
  if (v8[8])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_cold_1((a1 + 5));
    }

    v11 = +[BRCBGSystemTaskManager sharedManager];
    [v11 expireTask:a1[6]];
LABEL_15:

    goto LABEL_16;
  }

  if (!a2)
  {
    v12 = [a1[4] clientDB];
    [v12 execute:{@"DELETE FROM telemetry_failure_counts WHERE item_id = %@ AND zone_rowid = %@", v5, v7}];

    v11 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:a1[4]];
    v13 = [a1[4] clientDB];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_53;
    v28[3] = &unk_2784FF910;
    v29 = a1[4];
    v14 = [v13 fetchObject:v28 sql:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE (item_sharing_options & 4) != 0 AND item_type IN (0, 9, 10) AND rowid > %llu ORDER BY rowid ASC LIMIT 1", objc_msgSend(v11, "telemetryMinRowID")}];

    [v11 setTelemetryMinRowID:{objc_msgSend(v14, "dbRowID")}];
    if (v14)
    {
      if ([v14 isDirectory])
      {
        v15 = [v14 itemGlobalID];
        v16 = a1[5];
        v17 = v16[8];
        v16[8] = v15;

        v18 = [v14 asDirectory];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_60;
        v24[3] = &unk_278500070;
        v25 = v14;
        v23 = *(a1 + 2);
        v19 = v23.i64[0];
        v26 = vextq_s8(v23, v23, 8uLL);
        v27 = a1[6];
        [BRCItemCountMismatchReport generateReportForSharedFolder:v18 qualityOfService:17 completionHandler:v24];
      }

      else
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_cold_2();
        }

        [a1[5] _gatherAppTelemetryEventsWithSystemTask:a1[6]];
      }
    }

    else
    {
      [a1[5] _reportSyncUpBackoffInfo];
      v20 = +[BRCBGSystemTaskManager sharedManager];
      [v20 completeTask:a1[6]];
    }

    goto LABEL_15;
  }

  [v8 _handleApplySchedulerTimeoutWithSystemTask:a1[6] telemetryEventType:0xFFFFFFFFLL];
LABEL_16:
}

id __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_53(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

void __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 64);
    if (!v6)
    {
      [v3 shareChangedDuringCheckWithSession:*(a1 + 48)];
      v5 = *(a1 + 40);
      v6 = *(v5 + 64);
    }

    *(v5 + 64) = 0;

    v7 = [*(a1 + 48) clientDB];
    [v7 assertOnQueue];

    v8 = [v4 telemetryEvent];
    if (v8)
    {
      [*(a1 + 40) postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v8];
    }

    [*(a1 + 40) _gatherAppTelemetryEventsWithSystemTask:*(a1 + 56)];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_60_cold_1(a1);
    }
  }
}

- (void)_setupSyncConsistencyDeferralTimerWithSystemTask:(id)task
{
  taskCopy = task;
  if (self->_syncConsistencyDeferralTimer)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAnalyticsReporter _setupSyncConsistencyDeferralTimerWithSystemTask:];
    }
  }

  else
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    [v5 syncConsistencyXPCActivityDeferralCheckInterval];
    v7 = brc_interval_to_nsec();
    v8 = dispatch_time(0, v7);
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    [v5 syncConsistencyXPCActivityDeferralCheckInterval];
    v10 = brc_interval_to_nsec();
    [v5 syncConsistencyXPCActivityCheckLeeway];
    v11 = brc_interval_to_nsec();
    dispatch_source_set_timer(v9, v8, v10, v11);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __73__BRCAnalyticsReporter__setupSyncConsistencyDeferralTimerWithSystemTask___block_invoke;
    handler[3] = &unk_2784FF478;
    v22 = taskCopy;
    v12 = v9;
    v23 = v12;
    dispatch_source_set_event_handler(v12, handler);
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__BRCAnalyticsReporter__setupSyncConsistencyDeferralTimerWithSystemTask___block_invoke_62;
    v18[3] = &unk_2784FF400;
    objc_copyWeak(&v19, &location);
    v13 = v12;
    v14 = v18;
    v15 = v14;
    if (*MEMORY[0x277CFB010])
    {
      v16 = (*MEMORY[0x277CFB010])(v14);

      v15 = v16;
    }

    dispatch_source_set_cancel_handler(v13, v15);

    dispatch_resume(v13);
    syncConsistencyDeferralTimer = self->_syncConsistencyDeferralTimer;
    self->_syncConsistencyDeferralTimer = v13;
    v6 = v13;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __73__BRCAnalyticsReporter__setupSyncConsistencyDeferralTimerWithSystemTask___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isTaskExpired])
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Deferring the sync consistency checker%@", &v7, 0xCu);
    }

    v4 = BRDiskCheckerServiceConnection();
    v5 = [v4 remoteObjectProxy];
    [v5 pauseTreeConsistencyCheck];

    dispatch_source_cancel(*(a1 + 40));
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __73__BRCAnalyticsReporter__setupSyncConsistencyDeferralTimerWithSystemTask___block_invoke_62(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[9];
    WeakRetained[9] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

+ (void)cancelSyncConsistencyReportWithMountPath:(id)path queue:(id)queue
{
  pathCopy = path;
  queueCopy = queue;
  v7 = BRDiskCheckerServiceConnection();
  remoteObjectProxy = [v7 remoteObjectProxy];
  [remoteObjectProxy cancelTreeConsistencyCheck];

  v9 = [BRCUserDefaults defaultsForMangledID:0];
  syncConsistencyCheckerSnapshotting = [v9 syncConsistencyCheckerSnapshotting];

  if (syncConsistencyCheckerSnapshotting)
  {
    v11 = brc_interval_to_nsec();
    v12 = dispatch_time(0, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__BRCAnalyticsReporter_cancelSyncConsistencyReportWithMountPath_queue___block_invoke;
    block[3] = &unk_2784FF450;
    v14 = pathCopy;
    dispatch_after(v12, queueCopy, block);
  }
}

- (void)_setupSyncConsistencyCancellationTimerWithSession:(id)session
{
  sessionCopy = session;
  if (self->_syncConsistencyCancellationTimer)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAnalyticsReporter _setupSyncConsistencyCancellationTimerWithSession:];
    }
  }

  else
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    [v5 syncConsistencyTimeout];
    v7 = brc_interval_to_nsec();
    volume = [sessionCopy volume];
    mountPath = [volume mountPath];

    objc_initWeak(&location, self);
    v10 = dispatch_time(0, v7);
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    [v5 syncConsistencyXPCActivityCheckLeeway];
    dispatch_source_set_timer(v11, v10, 0xFFFFFFFFFFFFFFFFLL, (v12 * 1000000000.0));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__BRCAnalyticsReporter__setupSyncConsistencyCancellationTimerWithSession___block_invoke;
    handler[3] = &unk_2784FF4A0;
    v6 = mountPath;
    v23 = v6;
    v24 = sessionCopy;
    v13 = v11;
    v25 = v13;
    dispatch_source_set_event_handler(v13, handler);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__BRCAnalyticsReporter__setupSyncConsistencyCancellationTimerWithSession___block_invoke_65;
    v20[3] = &unk_2784FF400;
    objc_copyWeak(&v21, &location);
    v14 = v13;
    v15 = v20;
    v16 = v15;
    if (*MEMORY[0x277CFB010])
    {
      v17 = (*MEMORY[0x277CFB010])(v15);

      v16 = v17;
    }

    dispatch_source_set_cancel_handler(v14, v16);

    dispatch_resume(v14);
    syncConsistencyCancellationTimer = self->_syncConsistencyCancellationTimer;
    self->_syncConsistencyCancellationTimer = v14;
    v19 = v14;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __74__BRCAnalyticsReporter__setupSyncConsistencyCancellationTimerWithSession___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Cancelling the sync consistency checker because it timed out%@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) resetQueue];
  [BRCAnalyticsReporter cancelSyncConsistencyReportWithMountPath:v4 queue:v5];

  dispatch_source_cancel(*(a1 + 48));
  v6 = *MEMORY[0x277D85DE8];
}

void __74__BRCAnalyticsReporter__setupSyncConsistencyCancellationTimerWithSession___block_invoke_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[10];
    WeakRetained[10] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (BOOL)_resumePausedTreeConsistencyCheckOperationWithSystemTask:(id)task
{
  taskCopy = task;
  v5 = BRDiskCheckerServiceConnection();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke;
  v12[3] = &unk_2785000C0;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_67;
  v11[3] = &unk_2785000C0;
  v11[4] = &v13;
  [v6 resumeTreeConsistencyCheckWithReply:v11];

  [(BRCAnalyticsReporter *)self _setupSyncConsistencyDeferralTimerWithSystemTask:taskCopy];
  v7 = v14[5];
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAnalyticsReporter _resumePausedTreeConsistencyCheckOperationWithSystemTask:];
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAnalyticsReporter _resumePausedTreeConsistencyCheckOperationWithSystemTask:];
    }
  }

  _Block_object_dispose(&v13, 8);
  return v7 == 0;
}

void __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)_shouldDeferForExistingSnapshot
{
  volume = [(BRCAccountSession *)self->_session volume];
  mountPath = [volume mountPath];

  v4 = open([mountPath UTF8String], 0);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = BRCHasAPFSSnapshot(v4, 0);
    close(v5);
  }

  return v6;
}

- (void)_checkSyncConsistencyWithSystemTask:(id)task
{
  taskCopy = task;
  if (![(BRCAnalyticsReporter *)self _resumePausedTreeConsistencyCheckOperationWithSystemTask:taskCopy])
  {
    v5 = self->_session;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke;
    v7[3] = &unk_278500098;
    v7[4] = self;
    v8 = taskCopy;
    v9 = v5;
    v6 = v5;
    [(BRCAnalyticsReporter *)self _waitForApplySchedulerToBeIdleWithCompletion:v7];
  }
}

void __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 _handleApplySchedulerTimeoutWithSystemTask:v4 telemetryEventType:4294967294];
  }

  else if ([v3 _shouldDeferForExistingSnapshot])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_cold_1();
    }

    v7 = +[BRCBGSystemTaskManager sharedManager];
    [v7 expireTask:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 48) resetQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_68;
    block[3] = &unk_2784FF4A0;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v11 = v9;
    v12 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

void __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_68(uint64_t a1)
{
  [*(a1 + 32) _setupSyncConsistencyDeferralTimerWithSystemTask:*(a1 + 40)];
  [*(a1 + 32) _setupSyncConsistencyCancellationTimerWithSession:*(a1 + 48)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_2;
  v4[3] = &unk_2785000E8;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v5 = v2;
  [BRCSyncConsistencyReport generateReportWithSession:v3 mangledIDs:0 completion:v4];
}

void __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 72);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  if ([v3 wasAbleToRun])
  {
    v7 = +[BRCBGSystemTaskManager sharedManager];
    [v7 completeTask:*(a1 + 40)];

    v8 = [v3 telemetryErrorEvents];
    v9 = [v8 count];

    if (v9)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [v3 telemetryErrorEvents];
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          v14 = 0;
          do
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(a1 + 32) postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:*(*(&v27 + 1) + 8 * v14++)];
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = +[AppTelemetryTimeSeriesEvent newFullyConsistentEvent];
      [v15 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v16];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [v3 telemetryWarningEvents];
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(a1 + 32) postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:*(*(&v23 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }
  }

  else
  {
    [*(a1 + 32) _handleApplySchedulerTimeoutWithSystemTask:*(a1 + 40) telemetryEventType:4294967294];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_reportSyncUpBackoffInfo
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  clientZones = [(BRCAccountSession *)self->_session clientZones];
  v3 = [clientZones countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v25 = 0;
    v5 = 0;
    v6 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(clientZones);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        mangledID = [v8 mangledID];
        if (([v8 isSyncBlocked] & 1) == 0)
        {
          v10 = [BRCUserDefaults defaultsForMangledID:mangledID];
          [v8 syncUpBackoffRatio];
          v12 = v11;
          [v8 syncUpBackoffDelay];
          v14 = v13;
          [v10 syncUpBackoffRatioForFailure];
          if (v12 > v15)
          {
            v16 = brc_bread_crumbs();
            v17 = brc_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v31 = v8;
              v32 = 2048;
              v33 = v12;
              v34 = 2112;
              v35 = v16;
              _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Client zone %@ has a sync up backoff ratio of %f which is too large%@", buf, 0x20u);
            }

            v5 = (v5 + 1);
          }

          [v10 syncUpBackoffDelayForFailure];
          if (v14 > v18)
          {
            v19 = brc_bread_crumbs();
            v20 = brc_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v31 = v8;
              v32 = 2048;
              v33 = v14;
              v34 = 2112;
              v35 = v19;
              _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Client zone %@ has a sync up backoff delay of %f which is too large%@", buf, 0x20u);
            }

            ++v25;
          }

          [v8 resetSyncUpBackoffRatio];
        }
      }

      v4 = [clientZones countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v4);
  }

  else
  {
    v25 = 0;
    v5 = 0;
  }

  v21 = [AppTelemetryTimeSeriesEvent newSyncUpBackoffRatioSummaryEventWithNumberOfFailedZones:v5];
  [(BRCAnalyticsReporter *)self postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v21];
  v22 = [AppTelemetryTimeSeriesEvent newSyncUpBackoffDelaySummaryEventWithNumberOfFailedZones:v25];
  [(BRCAnalyticsReporter *)self postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)submitEventMetric:(id)metric
{
  v8[1] = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (metricCopy)
  {
    [(BRCMetricEndpoint *)self->_metricEndpoint submitEventMetric:metricCopy];
    associatedAppTelemetryEvent = [metricCopy associatedAppTelemetryEvent];
    if (associatedAppTelemetryEvent)
    {
      [(BRCAnalyticsReporter *)self postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:associatedAppTelemetryEvent];
    }

    v8[0] = metricCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(BRCAnalyticsReporter *)self _forgetEventMetrics:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forgetEventMetric:(id)metric
{
  v9 = *MEMORY[0x277D85DE8];
  if (metric)
  {
    metricCopy = metric;
    v4 = MEMORY[0x277CBEA60];
    metricCopy2 = metric;
    v6 = [v4 arrayWithObjects:&metricCopy count:1];

    [(BRCAnalyticsReporter *)self _forgetEventMetrics:v6, metricCopy, v9];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_forgetEventMetrics:(id)metrics
{
  v23 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [metricsCopy firstObject];
  eventName = [firstObject eventName];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = metricsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        eventName2 = [*(*(&v16 + 1) + 8 * v11) eventName];
        v13 = [eventName2 isEqualToString:eventName];

        if ((v13 & 1) == 0)
        {
          [(BRCAnalyticsReporter *)v20 _forgetEventMetrics:?];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [(NSMutableDictionary *)self->_eventsByKind objectForKeyedSubscript:eventName];
  [v14 removeObjectsInArray:v7];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupTimedOutEventMetrics:(id)metrics
{
  v25 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dispatch_assert_queue_V2(self->_queue);
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [BRCUserDefaults defaultsForMangledID:0];
  [v6 eventMetricTimeout];
  v8 = v7;

  v9 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = metricsCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        startTime = [v15 startTime];
        [date timeIntervalSinceDate:startTime];
        v18 = v17;

        if (v18 > v8)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_withEventMetricsOfKind:(id)kind accessor:(id)accessor
{
  kindCopy = kind;
  accessorCopy = accessor;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BRCAnalyticsReporter__withEventMetricsOfKind_accessor___block_invoke;
  block[3] = &unk_2784FF5B8;
  block[4] = self;
  v12 = kindCopy;
  v13 = accessorCopy;
  v9 = accessorCopy;
  v10 = kindCopy;
  dispatch_sync(queue, block);
}

void __57__BRCAnalyticsReporter__withEventMetricsOfKind_accessor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_opt_new();
    [*(*(a1 + 32) + 48) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    v2 = v3;
  }

  v4 = v2;
  if ([v2 count] == 10)
  {
    [*(a1 + 32) _cleanupTimedOutEventMetrics:v4];
  }

  (*(*(a1 + 48) + 16))();
}

+ (id)_aggregatedTelemetryDescription:(id)description
{
  v3 = MEMORY[0x277CCAB68];
  descriptionCopy = description;
  telemetrySchema = [descriptionCopy telemetrySchema];
  if (telemetrySchema > 299)
  {
    if (telemetrySchema <= 402)
    {
      if (telemetrySchema > 400)
      {
        if (telemetrySchema == 401)
        {
          v6 = @"FPFS_MIGRATION_FINISHED";
        }

        else
        {
          v6 = @"FPFS_MIGRATION_STATUS_REPORT";
        }
      }

      else if (telemetrySchema == 300)
      {
        v6 = @"INITIAL_SCAN_REJECTED_MISMATCH_TYPE";
      }

      else if (telemetrySchema == 400)
      {
        v6 = @"FPFS_MIGRATION_STARTED";
      }

      else
      {
LABEL_40:
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", telemetrySchema];
      }
    }

    else
    {
      switch(telemetrySchema)
      {
        case 500:
          v6 = @"ITEM_BOUNCE_APPLY_NEW_WITH_EXISTING";
          break;
        case 501:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW";
          break;
        case 502:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_EXISTING";
          break;
        case 503:
          v6 = @"ITEM_BOUNCE_BY_SERVER";
          break;
        case 504:
          v6 = @"ITEM_BOUNCE_CREATE_ITEM_WITH_EXISTING";
          break;
        case 505:
          v6 = @"ITEM_BOUNCE_CHANGE_ITEM_WITH_EXISTING";
          break;
        case 506:
          v6 = @"ITEM_BOUNCE_SHARE_ACCEPT_EXISTING_WITH_NEW";
          break;
        case 507:
          v6 = @"ITEM_BOUNCE_SHARE_ACCEPT_NEW_WITH_EXISTING";
          break;
        case 508:
          v6 = @"ITEM_BOUNCE_TRASHED_ITEM";
          break;
        case 509:
          v6 = @"ITEM_BOUNCE_ITEM_DIRECTORY_MERGE";
          break;
        case 510:
          v6 = @"ITEM_BOUNCE_NEW_DIRECTORY_WITH_EXISTING";
          break;
        case 511:
          v6 = @"ITEM_BOUNCE_EXISTING_WITH_NEW_DIRECTORY";
          break;
        case 512:
          v6 = @"ITEM_BOUNCE_ITEM_WITH_DOCUMENTS_FOLDER";
          break;
        case 513:
          v6 = @"ITEM_BOUNCE_APPLY_DEAD_EXISTING_WITH_NEW";
          break;
        case 514:
          v6 = @"ITEM_BOUNCE_APPLY_NOT_KNOWN_BY_SERVER_WITH_NEW";
          break;
        case 515:
          v6 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_REPARENT_WITH_NEW";
          break;
        case 516:
          v6 = @"ITEM_BOUNCE_APPLY_LOCAL_DIFF_FILE_NAME_WITH_NEW";
          break;
        case 517:
          v6 = @"ITEM_BOUNCE_APPLY_INITIAL_SCAN_WITH_NEW";
          break;
        case 518:
          v6 = @"ITEM_BOUNCE_APPLY_SHARED_ITEM_WITH_NEW_SHARED_ITEM_UNTITLED_FILE_NAME";
          break;
        case 519:
          v6 = @"ITEM_BOUNCE_APPLY_EXISTING_WITH_NEW_UNTITLED_FILE_NAME";
          break;
        default:
          if (telemetrySchema == 403)
          {
            v6 = @"FPFS_MIGRATION_NON_MIGRATED_ITEM_REPORT";
          }

          else
          {
            if (telemetrySchema != 404)
            {
              goto LABEL_40;
            }

            v6 = @"FPFS_MIGRATION_STUCK_STATUS";
          }

          break;
      }
    }
  }

  else
  {
    v6 = @"UNKNOWN";
    switch(telemetrySchema)
    {
      case 0:
        break;
      case 1:
        v6 = @"_UNUSED_SYNC_UP_BACKOFF_RATIO";
        break;
      case 2:
        v6 = @"FOLDER_SHARING_ITEM_COUNT_MISMATCH";
        break;
      case 3:
        v6 = @"MISSING_PUSH";
        break;
      case 4:
        v6 = @"PERMANENTLY_INCONSISTENT";
        break;
      case 5:
        v6 = @"DROPPED_EVENTS";
        break;
      case 6:
        v6 = @"TEST_METRIC";
        break;
      case 7:
        v6 = @"SHARE_ALIAS_IN_SHARED_FOLDER";
        break;
      case 8:
        v6 = @"MALIGNANT_ZONE_RESET";
        break;
      case 9:
        v6 = @"BENIGN_ZONE_RESET";
        break;
      case 10:
        v6 = @"DB_RESET";
        break;
      case 11:
        v6 = @"APPLY_SCHEDULER_MISSING_JOBS";
        break;
      case 12:
        v6 = @"SYNC_UP_MISSING_JOBS";
        break;
      case 13:
        v6 = @"READER_MISSING_JOBS";
        break;
      case 14:
        v6 = @"UPLOADER_MISSING_JOBS";
        break;
      case 15:
        v6 = @"DOWNLOADER_MISSING_JOBS";
        break;
      case 16:
        v6 = @"_UNUSED_SYNC_UP_BACKOFF_DELAY";
        break;
      case 17:
        v6 = @"FOLDER_SHARING_PCS_CHAINING";
        break;
      case 18:
        v6 = @"NEW_SHARE_ACCEPTATION";
        break;
      case 19:
        v6 = @"FS_EVENT_TO_SYNC_UP";
        break;
      case 20:
        v6 = @"USER_DOWNLOAD";
        break;
      case 21:
        v6 = @"CORRUPT_PACKAGE_DOWNLOAD";
        break;
      case 22:
        v6 = @"DIRECTORY_MISSING_CHAINPCS";
        break;
      case 23:
        v6 = @"SYNC_BOOSTING_PROBLEM_COUNT";
        break;
      case 24:
        v6 = @"DEEP_SCAN";
        break;
      case 25:
        v6 = @"OPERATION_TIMED_OUT";
        break;
      case 26:
        v6 = @"MISSING_SHARE_ALIAS";
        break;
      case 27:
        v6 = @"ASSET_CONTENT_NOT_FOUND";
        break;
      case 28:
        v6 = @"QBS_DIR_FAULT_COUNT";
        break;
      case 29:
        v6 = @"FILE_BOUNCED_MANY_TIMES";
        break;
      case 30:
        v6 = @"SYNC_UP_BACKOFF_RATIO_SUMMARY";
        break;
      case 31:
        v6 = @"SYNC_UP_BACKOFF_DELAY_SUMMARY";
        break;
      case 32:
        v6 = @"QBS_PERFORMANCE";
        break;
      case 33:
        v6 = @"ACCOUNT_SESSION_OPEN_ERROR";
        break;
      case 34:
        v6 = @"CORRUPT_SHARING_OPTIONS";
        break;
      case 35:
        v6 = @"INCORRECT_CONTENT_POLICY_COUNT";
        break;
      case 36:
        v6 = @"CORRUPT_BASEHASH_SALT_COUNT";
        break;
      case 37:
        v6 = @"EDP_KEYS_MISMATCH";
        break;
      case 38:
        v6 = @"DATABASE_ID_MISMATCH";
        break;
      case 39:
        v6 = @"COLLABORATION_UPLOAD";
        break;
      case 40:
        v6 = @"DANGLING_ZOMBIE_DIRECTORY_COUNT";
        break;
      case 41:
        v6 = @"RECORD_VALUE_ERROR";
        break;
      case 42:
        v6 = @"AGGRESSIVE_SALTING";
        break;
      case 43:
        v6 = @"REIMPORT_DOMAIN_FAILED_ON_STARTUP";
        break;
      case 44:
        v6 = @"EXCEEDED_UPLOADS_ON_CELLULAR";
        break;
      case 45:
        v6 = @"PRECENTAGE_OF_BYTES_UPLOADED_FOR_BATCH";
        break;
      case 46:
        v6 = @"BOUNCED_DOCUMENTS_DIRECTORY_COUNT";
        break;
      case 47:
        v6 = @"SAVE_SHARE_ERROR";
        break;
      case 48:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
        goto LABEL_40;
      case 49:
        v6 = @"MISSING_PUSH_V2";
        break;
      case 100:
        v6 = @"FULLY_CONSISTENT";
        break;
      case 101:
        v6 = @"FILE_CHECKSUM_MISMATCH";
        break;
      case 102:
        v6 = @"PACKAGE_CHECKSUM_MISMATCH";
        break;
      case 103:
        v6 = @"CHILD_COUNT_MISMATCH";
        break;
      case 104:
        v6 = @"RECURSIVE_ITEM_COUNT_MISMATCH";
        break;
      case 105:
        v6 = @"SHARE_ALIAS_COUNT_MISMATCH";
        break;
      case 106:
        v6 = @"SHARE_COUNT_MISMATCH";
        break;
      case 107:
        v6 = @"CONSISTENCY_CHECKER_FAILED";
        break;
      case 108:
        v6 = @"FILE_READ_ERROR";
        break;
      default:
        switch(telemetrySchema)
        {
          case 200:
            v6 = @"CA_TOTAL_ERROR_COUNT";
            break;
          case 201:
            v6 = @"CA_UPLOAD_ERROR_COUNT";
            break;
          case 202:
            v6 = @"CA_DOWNLOAD_ERROR_COUNT";
            break;
          case 203:
            v6 = @"CA_SYNC_UP_ITEM_ERROR_COUNT";
            break;
          case 204:
            v6 = @"CA_SYNC_UP_ZONE_ERROR_COUNT";
            break;
          case 205:
            v6 = @"CA_SYNC_DOWN_ERROR_COUNT";
            break;
          case 210:
            v6 = @"CA_UPLOAD_ERROR";
            break;
          case 211:
            v6 = @"CA_DOWNLOAD_ERROR";
            break;
          case 212:
            v6 = @"CA_SYNC_UP_ITEM_ERROR";
            break;
          case 213:
            v6 = @"CA_SYNC_UP_ZONE_ERROR";
            break;
          case 214:
            v6 = @"CA_SYNC_DOWN_ERROR";
            break;
          case 215:
            v6 = @"CA_DAMAGED_FILE_UPLOAD_ERROR";
            break;
          case 216:
            v6 = @"CA_NIL_APP_LIBRARY";
            break;
          case 217:
            v6 = @"DANGLING_SHARE_REQUESTERS";
            break;
          default:
            goto LABEL_40;
        }

        break;
    }
  }

  v7 = [v3 stringWithFormat:@"|id = %@|count = %lld|", v6, objc_msgSend(descriptionCopy, "magnitudeLong")];

  investigation = [descriptionCopy investigation];

  if ([investigation hasZoneName])
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    zoneName = [investigation zoneName];
    v11 = [v9 initWithData:zoneName encoding:4];
    [v7 appendFormat:@"zoneID = %@|", v11];
  }

  if ([investigation hasItemID])
  {
    itemID = [investigation itemID];
    [v7 appendFormat:@"itemID = %@|", itemID];
  }

  if ([investigation hasErrorDomain])
  {
    errorDomain = [investigation errorDomain];
    errorCode = [investigation errorCode];
    errorDescription = [investigation errorDescription];
    underlyingErrorDomain = [investigation underlyingErrorDomain];
    [v7 appendFormat:@"errorDomain = %@|errorCode = %lld|errorDescription = %@|underlyingErrorDomain = %@|underlyingErrorCode = %lld|", errorDomain, errorCode, errorDescription, underlyingErrorDomain, objc_msgSend(investigation, "underlyingErrorCode")];
  }

  if ([investigation hasLastOSUpdate])
  {
    [v7 appendFormat:@"lastOSUpdate = %lld|", objc_msgSend(investigation, "lastOSUpdate")];
  }

  if ([investigation hasDbAge])
  {
    [v7 appendFormat:@"dbAge = %lld|", objc_msgSend(investigation, "dbAge")];
  }

  if ([investigation hasIsConsolidated])
  {
    isConsolidated = [investigation isConsolidated];
    v18 = "NO";
    if (isConsolidated)
    {
      v18 = "YES";
    }

    [v7 appendFormat:@"consolidate = %s|", v18];
  }

  return v7;
}

- (void)dumpDatabaseInfoToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:@"Pending Aggregated Telemetry"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  session = self->_session;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BRCAnalyticsReporter_dumpDatabaseInfoToContext___block_invoke;
  v7[3] = &unk_278500110;
  v8 = contextCopy;
  v6 = contextCopy;
  [BRCAnalyticsReporter _enumerateAggregatedTelemetryForSession:session withBlock:v7];
  [v6 writeEmptyLine];
}

void __50__BRCAnalyticsReporter_dumpDatabaseInfoToContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [BRCAnalyticsReporter _aggregatedTelemetryDescription:a2];
  [v2 writeLineWithFormat:@"%@", v3];
}

- (void)dumpToContext:(id)context
{
  v30[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v30[0] = BRCEventKindFSEventToSyncUp;
  v30[1] = BRCEventKindUserDownload;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [contextCopy writeLineWithFormat:@"analytics metrics"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __38__BRCAnalyticsReporter_dumpToContext___block_invoke;
        v22[3] = &unk_278500138;
        v23 = contextCopy;
        v24 = v10;
        [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v10 accessor:v22];

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  [contextCopy writeLineWithFormat:@"SyncHealthReport:"];
  syncHealthReport = self->_syncHealthReport;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__BRCAnalyticsReporter_dumpToContext___block_invoke_2;
  v20[3] = &unk_278500160;
  v13 = contextCopy;
  v21 = v13;
  [(BRCSyncHealthReport *)syncHealthReport syncErrors:v20];
  [v13 writeLineWithFormat:&stru_2837504F0];
  [v13 writeLineWithFormat:@"Aggregated Telemetry:"];
  v14 = self->_syncHealthReport;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__BRCAnalyticsReporter_dumpToContext___block_invoke_3;
  v18[3] = &unk_278500160;
  v19 = v13;
  v15 = v13;
  [(BRCSyncHealthReport *)v14 dumpAggregatedEvents:v18];
  [v15 writeLineWithFormat:&stru_2837504F0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)createFSEventToSyncUpEventForFileID:(unint64_t)d genID:(unsigned int)iD
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BRCAnalyticsReporter_createFSEventToSyncUpEventForFileID_genID___block_invoke;
  v4[3] = &__block_descriptor_44_e24_v16__0__NSMutableArray_8l;
  v4[4] = d;
  iDCopy = iD;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:BRCEventKindFSEventToSyncUp accessor:v4];
}

void __66__BRCAnalyticsReporter_createFSEventToSyncUpEventForFileID_genID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 32);
      v6 = [v3 objectAtIndexedSubscript:v4];
      v7 = [v6 fileID];

      if (v5 == v7)
      {
        break;
      }

      if (++v4 >= [v3 count])
      {
        goto LABEL_8;
      }
    }

    v8 = *(a1 + 40);
    v9 = [v3 objectAtIndexedSubscript:v4];
    v10 = [v9 genID];

    if (v8 != v10)
    {
      [v3 removeObjectAtIndex:v4];
    }
  }

LABEL_8:
  if ([v3 count] <= 9)
  {
    v11 = [BRCFSEventToSyncUpEvent alloc];
    v12 = [(BRCEventMetric *)v11 initWithEventName:BRCEventKindFSEventToSyncUp];
    v13 = [MEMORY[0x277CBEAA8] date];
    [(BRCEventMetric *)v12 setStartTime:v13];

    [(BRCFSEventToSyncUpEvent *)v12 setFileID:*(a1 + 32)];
    [(BRCFSEventToSyncUpEvent *)v12 setGenID:*(a1 + 40)];
    [v3 addObject:v12];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCAnalyticsReporter_createFSEventToSyncUpEventForFileID_genID___block_invoke_cold_1();
    }
  }
}

- (void)lookupFSEventToSyncUpEventByFileID:(unint64_t)d genID:(unsigned int)iD accessor:(id)accessor
{
  accessorCopy = accessor;
  v9 = BRCEventKindFSEventToSyncUp;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__BRCAnalyticsReporter_lookupFSEventToSyncUpEventByFileID_genID_accessor___block_invoke;
  v11[3] = &unk_2785001A8;
  iDCopy = iD;
  v12 = accessorCopy;
  dCopy = d;
  v10 = accessorCopy;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v9 accessor:v11];
}

void __74__BRCAnalyticsReporter_lookupFSEventToSyncUpEventByFileID_genID_accessor___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 40);
        if (v9 == [v8 fileID])
        {
          v10 = *(a1 + 48);
          if (v10 == [v8 genID])
          {
            (*(*(a1 + 32) + 16))();
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)lookupFSEventToSyncUpEventByItemID:(id)d accessor:(id)accessor
{
  dCopy = d;
  accessorCopy = accessor;
  v8 = BRCEventKindFSEventToSyncUp;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__BRCAnalyticsReporter_lookupFSEventToSyncUpEventByItemID_accessor___block_invoke;
  v11[3] = &unk_2785001D0;
  v12 = dCopy;
  v13 = accessorCopy;
  v9 = accessorCopy;
  v10 = dCopy;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v8 accessor:v11];
}

void __68__BRCAnalyticsReporter_lookupFSEventToSyncUpEventByItemID_accessor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v11 + 1) + 8 * i) itemID];
        LODWORD(v8) = [v8 isEqualToItemID:v9];

        if (v8)
        {
          (*(*(a1 + 40) + 16))();
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createUserDownloadEventForOperationID:(id)d isRecursive:(BOOL)recursive isForBackup:(BOOL)backup
{
  dCopy = d;
  v9 = BRCEventKindUserDownload;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__BRCAnalyticsReporter_createUserDownloadEventForOperationID_isRecursive_isForBackup___block_invoke;
  v11[3] = &unk_2785001F8;
  v12 = dCopy;
  recursiveCopy = recursive;
  backupCopy = backup;
  v10 = dCopy;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v9 accessor:v11];
}

void __86__BRCAnalyticsReporter_createUserDownloadEventForOperationID_isRecursive_isForBackup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] <= 9)
  {
    v4 = [BRCUserDownloadEvent alloc];
    v5 = [(BRCEventMetric *)v4 initWithEventName:BRCEventKindUserDownload];
    v6 = [MEMORY[0x277CBEAA8] date];
    [(BRCEventMetric *)v5 setStartTime:v6];

    [(BRCUserDownloadEvent *)v5 setOperationID:*(a1 + 32)];
    [(BRCUserDownloadEvent *)v5 setIsRecursiveDownload:*(a1 + 40)];
    [(BRCUserDownloadEvent *)v5 setIsDownloadingForBackup:*(a1 + 41)];
    [v3 addObject:v5];
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __86__BRCAnalyticsReporter_createUserDownloadEventForOperationID_isRecursive_isForBackup___block_invoke_cold_1();
    }
  }
}

- (void)lookupUserDownloadEventByOperationID:(id)d accessor:(id)accessor
{
  dCopy = d;
  accessorCopy = accessor;
  v8 = BRCEventKindUserDownload;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__BRCAnalyticsReporter_lookupUserDownloadEventByOperationID_accessor___block_invoke;
  v11[3] = &unk_2785001D0;
  v12 = dCopy;
  v13 = accessorCopy;
  v9 = accessorCopy;
  v10 = dCopy;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v8 accessor:v11];
}

void __70__BRCAnalyticsReporter_lookupUserDownloadEventByOperationID_accessor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) operationID];
        v9 = [v8 isEqual:*(a1 + 32)];

        if (v9)
        {
          (*(*(a1 + 40) + 16))();
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)lookupUserDownloadEventByFileObjectID:(id)d accessor:(id)accessor
{
  dCopy = d;
  accessorCopy = accessor;
  v8 = BRCEventKindUserDownload;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__BRCAnalyticsReporter_lookupUserDownloadEventByFileObjectID_accessor___block_invoke;
  v11[3] = &unk_2785001D0;
  v12 = dCopy;
  v13 = accessorCopy;
  v9 = accessorCopy;
  v10 = dCopy;
  [(BRCAnalyticsReporter *)self _withEventMetricsOfKind:v8 accessor:v11];
}

void __71__BRCAnalyticsReporter_lookupUserDownloadEventByFileObjectID_accessor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) fileObjectIDs];
        v9 = [v8 containsObject:*(a1 + 32)];

        if (v9)
        {
          (*(*(a1 + 40) + 16))();
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postReportForDefaultSubCategoryWithCategory:(unint64_t)category telemetryTimeEvent:(id)event
{
  v6 = [(BRCAppTelemetryConverter *)self->_appTelemetryConvertor dictionaryRepresentationFromEvent:event];
  [(BRCRTCReporter *)self->_rtcReporter postReportWithCategory:category type:1 payload:v6 error:0];
}

+ (void)_enumerateAggregatedTelemetryForSession:(id)session withBlock:(id)block
{
  v36[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  blockCopy = block;
  v24 = sessionCopy;
  clientDB = [sessionCopy clientDB];
  v7 = [clientDB fetch:{@"SELECT app_telemetry_identifier, zone_mangled_id, item_id, enhanced_drive_privacy_enabled, error_domain, error_code, error_description, underlying_error_domain, underlying_error_code, count FROM aggregated_daily_telemetry"}];

  if ([v7 next])
  {
    v25 = *MEMORY[0x277CCA7E8];
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 intAtIndex:0];
      v10 = [v7 stringAtIndex:1];
      if ([v10 length])
      {
        v33 = [objc_alloc(MEMORY[0x277CFAE60]) initWithMangledString:v10];
      }

      else
      {
        v33 = 0;
      }

      v11 = [v7 stringAtIndex:2];
      if (![v11 length])
      {

        v11 = 0;
      }

      v12 = [v7 stringAtIndex:3];
      if ([v12 length])
      {
        v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isEqualToString:", @"1"}];
      }

      else
      {
        v32 = 0;
      }

      v13 = [v7 stringAtIndex:4];
      v14 = [v7 longLongAtIndex:5];
      v34 = [v7 stringAtIndex:6];
      v15 = [v7 stringAtIndex:7];
      v16 = [v7 longLongAtIndex:8];
      v31 = v12;
      if ([v13 length])
      {
        v29 = v10;
        v30 = v8;
        v17 = MEMORY[0x277CCA9B8];
        v18 = [v15 length];
        if (v18)
        {
          v35 = v25;
          v27 = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:v16 userInfo:0];
          v36[0] = v27;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
          v19 = v26;
        }

        else
        {
          v19 = 0;
        }

        v20 = [v17 br_errorWithDomain:v13 code:v14 userInfo:v19 description:{@"%@", v34}];
        v9 = v9;
        if (v18)
        {
        }

        v10 = v29;
        v21 = v30;
      }

      else
      {
        v20 = 0;
        v21 = v8;
      }

      v22 = +[AppTelemetryTimeSeriesEvent newAggregatedEventWithIdentifier:recordID:zoneMangledID:enhancedDrivePrivacyEnabled:error:count:](AppTelemetryTimeSeriesEvent, "newAggregatedEventWithIdentifier:recordID:zoneMangledID:enhancedDrivePrivacyEnabled:error:count:", v9, v11, v33, v32, v20, [v7 longLongAtIndex:9]);
      blockCopy[2](blockCopy, v22);

      objc_autoreleasePoolPop(v21);
    }

    while (([v7 next] & 1) != 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)aggregateReportForAppTelemetryIdentifier:(int)identifier itemID:(id)d zoneMangledID:(id)iD enhancedDrivePrivacyEnabled:(id)enabled error:(id)error
{
  dCopy = d;
  iDCopy = iD;
  enabledCopy = enabled;
  errorCopy = error;
  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__BRCAnalyticsReporter_aggregateReportForAppTelemetryIdentifier_itemID_zoneMangledID_enhancedDrivePrivacyEnabled_error___block_invoke;
  v21[3] = &unk_278500248;
  v21[4] = self;
  v22 = enabledCopy;
  identifierCopy = identifier;
  v23 = errorCopy;
  v24 = iDCopy;
  v25 = dCopy;
  v17 = dCopy;
  v18 = iDCopy;
  v19 = errorCopy;
  v20 = enabledCopy;
  dispatch_async(clientTruthWorkloop, v21);
}

void __120__BRCAnalyticsReporter_aggregateReportForAppTelemetryIdentifier_itemID_zoneMangledID_enhancedDrivePrivacyEnabled_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) clientDB];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __120__BRCAnalyticsReporter_aggregateReportForAppTelemetryIdentifier_itemID_zoneMangledID_enhancedDrivePrivacyEnabled_error___block_invoke_2;
  v9[3] = &unk_278500220;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v12 = *(a1 + 72);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 performWithFlags:4 action:v9];
}

uint64_t __120__BRCAnalyticsReporter_aggregateReportForAppTelemetryIdentifier_itemID_zoneMangledID_enhancedDrivePrivacyEnabled_error___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 BOOLValue];
    v5 = @"0";
    if (v4)
    {
      v5 = @"1";
    }

    v6 = v5;
  }

  else
  {
    v6 = &stru_2837504F0;
  }

  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v9 = *(a1 + 64);
  v10 = [*(a1 + 48) mangledIDString];
  v11 = *(a1 + 56);
  v12 = [*(a1 + 40) domain];
  v13 = [*(a1 + 40) code];
  v14 = [*(a1 + 40) br_errorDescription];
  v15 = [v8 domain];
  if (v8)
  {
    v16 = [v8 code];
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2837504F0;
  }

  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = &stru_2837504F0;
  }

  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = &stru_2837504F0;
  }

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = &stru_2837504F0;
  }

  if (v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = &stru_2837504F0;
  }

  v22 = [v24 execute:{@"INSERT INTO aggregated_daily_telemetry (app_telemetry_identifier, zone_mangled_id, item_id, enhanced_drive_privacy_enabled, error_domain, error_code, error_description, underlying_error_domain, underlying_error_code) VALUES (%d, %@, %@, %@, %@, %ld, %@, %@, %ld) ON CONFLICT DO UPDATE SET count=count+1", v9, v21, v20, v6, v19, v13, v18, v17, v16}];

  return v22;
}

- (void)deleteMissingErrorThrottles
{
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB executeWithSlowStatementRadar:@"full scan on TELEMETRY_FAILURE_COUNTS_TABLE" sql:@"DELETE FROM telemetry_failure_counts AS tf WHERE NOT EXISTS (SELECT 1 FROM server_items AS si WHERE si.item_id = tf.item_id AND si.zone_rowid = tf.zone_rowid) AND NOT item_id_is_root(tf.item_id)"];
}

- (void)didApplyItemInsideSharedItemID:(id)d
{
  session = self->_session;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  [clientDB assertOnQueue];

  LODWORD(clientDB) = [dCopy isEqualToItemGlobalID:self->_currentTelemetryItemGlobalID];
  if (clientDB)
  {
    currentTelemetryItemGlobalID = self->_currentTelemetryItemGlobalID;
    self->_currentTelemetryItemGlobalID = 0;
  }
}

+ (BOOL)isTelemetryReportingEnabled
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  shouldReportTelemetryEvents = [v2 shouldReportTelemetryEvents];

  if (!shouldReportTelemetryEvents)
  {
    return 0;
  }

  if (CFPreferencesGetAppBooleanValue(@"AllowiCloudAnalytics", @"com.apple.Preferences", 0))
  {
    return 1;
  }

  v5 = MEMORY[0x277CFAEB0];

  return [v5 isInternalBuild];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Reporting analytics metrics%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCAnalyticsReporter_registerBackgroundXPCActivities__block_invoke_36_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Checking sync consistency%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 64);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __64__BRCAnalyticsReporter__gatherAppTelemetryEventsWithSystemTask___block_invoke_60_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v1, v2, "[ERROR] Failed to generate a report for shared folder %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setupSyncConsistencyDeferralTimerWithSystemTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Already have a deferral timer registered%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupSyncConsistencyCancellationTimerWithSession:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Already have a cancellation timer registered%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resumePausedTreeConsistencyCheckOperationWithSystemTask:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Failed resuming tree consistency operation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_resumePausedTreeConsistencyCheckOperationWithSystemTask:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Successfully resumed existing tree consistency operation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__BRCAnalyticsReporter__resumePausedTreeConsistencyCheckOperationWithSystemTask___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] error connecting to telemetry-disk-checker xpc service: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BRCAnalyticsReporter__checkSyncConsistencyWithSystemTask___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Deferring activity because a snapshot already exists%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_forgetEventMetrics:(uint8_t *)a1 .cold.1(uint8_t *a1, void *a2)
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [metric.eventName isEqualToString:kind]%@", a1, 0xCu);
  }
}

void __66__BRCAnalyticsReporter_createFSEventToSyncUpEventForFileID_genID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  [v0 fileID];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __86__BRCAnalyticsReporter_createUserDownloadEventForOperationID_isRecursive_isForBackup___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  v4 = v0;
  _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] analytics: creating %@ event%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end