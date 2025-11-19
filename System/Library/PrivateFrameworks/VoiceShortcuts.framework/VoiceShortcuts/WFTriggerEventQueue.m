@interface WFTriggerEventQueue
+ (BOOL)shouldRunTrigger:(id)a3 forEvent:(id)a4 runEvents:(id)a5 error:(id *)a6;
+ (double)rateLimitingTimeoutForTrigger:(id)a3 runEvents:(id)a4 numFailures:(unint64_t)a5;
- (BOOL)deleteTriggerEvent:(id)a3 error:(id *)a4;
- (BOOL)isTriggerEventStale:(id)a3;
- (BOOL)shouldRunEmailOrMessageTrigger:(id)a3 forEvent:(id)a4 runEvents:(id)a5 error:(id *)a6;
- (WFTriggerEventQueue)initWithDatabaseProvider:(id)a3 notificationManager:(id)a4 notificationScheduler:(id)a5;
- (WFTriggerEventQueue)initWithDatabaseProvider:(id)a3 notificationManager:(id)a4 notificationScheduler:(id)a5 triggerBootManager:(id)a6;
- (id)configuredTriggerForIdentifier:(id)a3 workflowReference:(id *)a4 error:(id *)a5;
- (id)databaseWithError:(id *)a3;
- (id)nextTriggerEventWithError:(id *)a3;
- (unint64_t)numberOfEventsInQueue;
- (void)clearWithCompletionHandler:(id)a3;
- (void)deactivateEphemeralTriggerIfNeeded:(id)a3 completion:(id)a4;
- (void)didFinishRunningWithError:(id)a3 cancelled:(BOOL)a4 trigger:(id)a5 runEvent:(id)a6;
- (void)disableTriggersWithIdentifiers:(id)a3;
- (void)enqueueTriggerWithIdentifier:(id)a3 eventInfo:(id)a4 force:(BOOL)a5 completion:(id)a6;
- (void)handleRemovedIgnoredNotifications:(id)a3;
- (void)notificationManager:(id)a3 didDismissTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5;
- (void)notificationManager:(id)a3 didFailToPostActionRequiredNotificationWithTriggerIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5;
- (void)notificationManager:(id)a3 didRequestDisablementOfTriggersWithIdentifiers:(id)a4;
- (void)notificationManager:(id)a3 receivedConfirmationToRunTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5;
- (void)notificationManager:(id)a3 receivedContinuePotentialLoopForTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5;
- (void)notificationManager:(id)a3 receivedStopPotentialLoopForTriggerWithIdentifier:(id)a4;
- (void)removeAllStaleTriggerEventsIgnoringValidIDs:(id)a3;
- (void)removePendingTriggerEventsWithEventIDs:(id)a3;
- (void)resume;
- (void)resumeWithConfiguredTrigger:(id)a3 workflowReference:(id)a4 eventInfo:(id)a5;
- (void)runWithConfiguredTrigger:(id)a3 workflowReference:(id)a4 eventInfo:(id)a5;
- (void)sendRateLimitEncounteredNotificationForTrigger:(id)a3;
- (void)setConfirmedForTriggerEventIDs:(id)a3 error:(id *)a4;
@end

@implementation WFTriggerEventQueue

- (void)deactivateEphemeralTriggerIfNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && ([v6 shouldRecur] & 1) == 0)
  {
    v23 = 0;
    v8 = [(WFTriggerEventQueue *)self databaseWithError:&v23];
    v9 = v23;
    v10 = v9;
    if (v8)
    {
      v22 = v9;
      v11 = [v8 recordWithDescriptor:v6 error:&v22];
      v12 = v22;

      if (v11)
      {
        [v11 setEnabled:0];
        v21 = v12;
        v13 = [v8 saveRecord:v11 withDescriptor:v6 error:&v21];
        v14 = v21;

        if (v13)
        {
          v15 = [MEMORY[0x277D79D98] standardClient];
          v16 = [v6 identifier];
          v17 = [v6 trigger];
          v18 = [objc_opt_class() triggerBacking];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __69__WFTriggerEventQueue_deactivateEphemeralTriggerIfNeeded_completion___block_invoke;
          v19[3] = &unk_2788FEF20;
          v20 = v7;
          [v15 unregisterTriggerWithIdentifier:v16 triggerBacking:v18 completion:v19];
        }

        else
        {
          (*(v7 + 2))(v7, 0, v14);
        }

        v12 = v14;
      }

      else
      {
        (*(v7 + 2))(v7, 0, v12);
      }

      v10 = v12;
    }

    else
    {
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)didFinishRunningWithError:(id)a3 cancelled:(BOOL)a4 trigger:(id)a5 runEvent:(id)a6
{
  v8 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = getWFTriggersLogObject();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]";
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_ERROR, "%s Finished running with error: %@", buf, 0x16u);
    }

    v14 = [(WFTriggerEventQueue *)self notificationManager];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    [v14 postNotificationThatTrigger:v11 failedWithError:v10 notificationRequestIdentifier:v16];

    v17 = 2;
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]";
      v26 = 1024;
      LODWORD(v27) = v8;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEBUG, "%s Finished running workflow in background extension (cancelled: %d)", buf, 0x12u);
    }

    v17 = 1;
  }

  v18 = [(WFTriggerEventQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__WFTriggerEventQueue_didFinishRunningWithError_cancelled_trigger_runEvent___block_invoke;
  block[3] = &unk_2788FEF70;
  block[4] = self;
  v22 = v12;
  v23 = v17;
  v19 = v12;
  dispatch_async(v18, block);

  [(WFTriggerEventQueue *)self resume];
  v20 = *MEMORY[0x277D85DE8];
}

void __76__WFTriggerEventQueue_didFinishRunningWithError_cancelled_trigger_runEvent___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v8 = 0;
  v3 = [v2 databaseWithError:&v8];
  v4 = v8;
  if (v3)
  {
    [v3 setOutcome:a1[6] forRunEvent:a1[5]];
  }

  else
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[5];
      *buf = 136315650;
      v10 = "[WFTriggerEventQueue didFinishRunningWithError:cancelled:trigger:runEvent:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Unable to load database, not setting outcome for run event %@: %{public}@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendRateLimitEncounteredNotificationForTrigger:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v12 = objc_alloc_init(v4);
  v6 = WFLocalizedString(@"Last attempt to run your Shortcut failed. Please wait before trying again.");
  [v12 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7D008] code:6004 userInfo:v12];
  v8 = MEMORY[0x277CCACA8];
  v9 = [v5 identifier];
  v10 = [v8 stringWithFormat:@"%@-rate-limit-error", v9];

  v11 = [(WFTriggerEventQueue *)self notificationManager];
  [v11 postNotificationThatTrigger:v5 failedWithError:v7 notificationRequestIdentifier:v10];
}

- (void)notificationManager:(id)a3 didRequestDisablementOfTriggersWithIdentifiers:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[WFTriggerEventQueue notificationManager:didRequestDisablementOfTriggersWithIdentifiers:]";
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Disabling triggers with identifiers: %{public}@", buf, 0x16u);
  }

  if ([v5 count])
  {
    v7 = [(WFTriggerEventQueue *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __90__WFTriggerEventQueue_notificationManager_didRequestDisablementOfTriggersWithIdentifiers___block_invoke;
    v10[3] = &unk_2788FFFC0;
    v10[4] = self;
    v11 = v5;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v13 = "[WFTriggerEventQueue notificationManager:didRequestDisablementOfTriggersWithIdentifiers:]";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationManager:(id)a3 didFailToPostActionRequiredNotificationWithTriggerIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[WFTriggerEventQueue notificationManager:didFailToPostActionRequiredNotificationWithTriggerIdentifier:pendingTriggerEventIDs:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Failed to post notifciation prompt for trigger with identifier: %{public}@", buf, 0x16u);
  }

  if ([v8 count])
  {
    v10 = [(WFTriggerEventQueue *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __127__WFTriggerEventQueue_notificationManager_didFailToPostActionRequiredNotificationWithTriggerIdentifier_pendingTriggerEventIDs___block_invoke;
    v13[3] = &unk_2788FFFC0;
    v13[4] = self;
    v14 = v8;
    dispatch_async(v10, v13);
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[WFTriggerEventQueue notificationManager:didFailToPostActionRequiredNotificationWithTriggerIdentifier:pendingTriggerEventIDs:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notificationManager:(id)a3 didDismissTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = getWFTriggersLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[WFTriggerEventQueue notificationManager:didDismissTriggerWithIdentifier:pendingTriggerEventIDs:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s User dismissed notification prompt for trigger with identifier: %{public}@", buf, 0x16u);
  }

  if ([v8 count])
  {
    v10 = [(WFTriggerEventQueue *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__WFTriggerEventQueue_notificationManager_didDismissTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    v13[3] = &unk_2788FFFC0;
    v13[4] = self;
    v14 = v8;
    dispatch_async(v10, v13);
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[WFTriggerEventQueue notificationManager:didDismissTriggerWithIdentifier:pendingTriggerEventIDs:]";
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEBUG, "%s No event info found to delete", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notificationManager:(id)a3 receivedStopPotentialLoopForTriggerWithIdentifier:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = [(WFTriggerEventQueue *)self queue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __93__WFTriggerEventQueue_notificationManager_receivedStopPotentialLoopForTriggerWithIdentifier___block_invoke;
    v12 = &unk_2788FFFC0;
    v13 = self;
    v14 = v5;
    dispatch_async(v6, &v9);

    [(WFTriggerEventQueue *)self resume:v9];
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[WFTriggerEventQueue notificationManager:receivedStopPotentialLoopForTriggerWithIdentifier:]";
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to stop loop for trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __93__WFTriggerEventQueue_notificationManager_receivedStopPotentialLoopForTriggerWithIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10 = 0;
  v3 = [v2 databaseWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = [v3 sortedRunEventsForTriggerID:*(a1 + 40)];
    v6 = [v5 descriptors];

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v8 = [v6 if_map:&__block_literal_global_247];

    [*(a1 + 32) removePendingTriggerEventsWithEventIDs:v8];
    [*(a1 + 32) storeLoopDetectionForTriggerWithIdentifier:*(a1 + 40) loopDetected:0];
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFTriggerEventQueue notificationManager:receivedStopPotentialLoopForTriggerWithIdentifier:]_block_invoke";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to remove events for trigger because database is not available: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationManager:(id)a3 receivedContinuePotentialLoopForTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [(WFTriggerEventQueue *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2;
    v14[3] = &unk_2788FFFC0;
    v14[4] = self;
    v10 = &v15;
    v15 = v7;
    v11 = v14;
LABEL_7:
    dispatch_async(v9, v11);

    goto LABEL_8;
  }

  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]";
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Failed to continue loop for trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
  }

  if ([v8 count])
  {
    v9 = [(WFTriggerEventQueue *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    block[3] = &unk_2788FFFC0;
    block[4] = self;
    v10 = &v17;
    v17 = v8;
    v11 = block;
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __120__WFTriggerEventQueue_notificationManager_receivedContinuePotentialLoopForTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 databaseWithError:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [v3 triggerEventsForTriggerIdentifier:*(a1 + 40)];
    v6 = [v5 descriptors];

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v8 = [v6 if_map:&__block_literal_global_243];

    v9 = *(a1 + 32);
    v13 = 0;
    [v9 setPausedForTriggerEventIDs:v8 paused:0 error:&v13];
    v10 = v13;
    if (v10)
    {
      v11 = getWFTriggersLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to set paused for trigger events with error: %{public}@", buf, 0x16u);
      }
    }

    [*(a1 + 32) storeLoopDetectionForTriggerWithIdentifier:*(a1 + 40) loopDetected:0];
    [*(a1 + 32) resume];
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFTriggerEventQueue notificationManager:receivedContinuePotentialLoopForTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Failed to stop loop for trigger because database is not available: %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notificationManager:(id)a3 receivedConfirmationToRunTriggerWithIdentifier:(id)a4 pendingTriggerEventIDs:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [v10 count];
    v13 = [(WFTriggerEventQueue *)self queue];
    if (v12)
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_239;
      v21 = &unk_2788FFFC0;
      v22 = self;
      v14 = &v23;
      v23 = v11;
      dispatch_async(v13, &v18);

      [(WFTriggerEventQueue *)self resume:v18];
LABEL_10:

      goto LABEL_11;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2;
    block[3] = &unk_2788FFFC0;
    block[4] = self;
    v14 = &v25;
    v25 = v9;
    v16 = block;
LABEL_9:
    dispatch_async(v13, v16);

    goto LABEL_10;
  }

  v15 = getWFTriggersLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v29 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]";
    _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEBUG, "%s Failed to run trigger because recieved confirmation with no trigger identifier", buf, 0xCu);
  }

  if ([v11 count])
  {
    v13 = [(WFTriggerEventQueue *)self queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke;
    v26[3] = &unk_2788FFFC0;
    v26[4] = self;
    v14 = &v27;
    v27 = v11;
    v16 = v26;
    goto LABEL_9;
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
}

void __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = 0;
  v12 = 0;
  v4 = [v2 configuredTriggerForIdentifier:v3 workflowReference:&v12 error:&v11];
  v5 = v12;
  v6 = v11;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke_2";
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_new();
    [v8 resumeWithConfiguredTrigger:v4 workflowReference:v5 eventInfo:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __113__WFTriggerEventQueue_notificationManager_receivedConfirmationToRunTriggerWithIdentifier_pendingTriggerEventIDs___block_invoke_239(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = 0;
  [v2 setConfirmedForTriggerEventIDs:v1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = getWFTriggersLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "[WFTriggerEventQueue notificationManager:receivedConfirmationToRunTriggerWithIdentifier:pendingTriggerEventIDs:]_block_invoke";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_ERROR, "%s Failed to set confirmed for trigger events with error: %{public}@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)disableTriggersWithIdentifiers:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v5);

  v10 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D7C988]) initWithDatabase:v6];
    [v8 disableTriggersWithIdentifiers:v4];
  }

  else
  {
    v8 = getWFTriggersLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[WFTriggerEventQueue disableTriggersWithIdentifiers:]";
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTriggerEventStale:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 dateCreated];

  v8 = [v5 components:16 fromDate:v7 toDate:v6 options:0];

  LOBYTE(v7) = [v8 day] > 6;
  return v7;
}

- (void)removeAllStaleTriggerEventsIgnoringValidIDs:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v5);

  v35 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v35];
  v7 = v35;
  v8 = v7;
  if (v6)
  {
    v28 = v7;
    v29 = v6;
    v9 = [v6 allSortedTriggerEvents];
    v10 = [v9 descriptors];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = *v32;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [v16 identifier];
        if ([v4 containsObject:v17])
        {

LABEL_15:
          v22 = getWFTriggersLogObject();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v23 = [v16 identifier];
          *buf = 136315394;
          v38 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
          v39 = 2114;
          v40 = v23;
          v24 = v22;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = "%s Trigger event is valid with id: %{public}@";
LABEL_17:
          _os_log_impl(&dword_23103C000, v24, v25, v26, buf, 0x16u);
          goto LABEL_18;
        }

        v18 = [(WFTriggerEventQueue *)self isTriggerEventStale:v16];

        if (!v18)
        {
          goto LABEL_15;
        }

        v19 = getWFTriggersLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v16 identifier];
          *buf = 136315394;
          v38 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
          v39 = 2114;
          v40 = v20;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s Removing stale trigger event with id: %{public}@", buf, 0x16u);
        }

        v30 = 0;
        v21 = [(WFTriggerEventQueue *)self deleteTriggerEvent:v16 error:&v30];
        v22 = v30;
        if (!v21)
        {
          v23 = getWFTriggersLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v38 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
            v39 = 2114;
            v40 = v22;
            v24 = v23;
            v25 = OS_LOG_TYPE_ERROR;
            v26 = "%s Could not delete trigger notification with error %{public}@";
            goto LABEL_17;
          }

LABEL_18:
        }

LABEL_19:
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (!v13)
      {
LABEL_21:

        v8 = v28;
        v6 = v29;
        goto LABEL_24;
      }
    }
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v38 = "[WFTriggerEventQueue removeAllStaleTriggerEventsIgnoringValidIDs:]";
    v39 = 2114;
    v40 = v8;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
  }

LABEL_24:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedIgnoredNotifications:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFTriggersLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v13 = "[WFTriggerEventQueue handleRemovedIgnoredNotifications:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEBUG, "%s Removing all trigger events", buf, 0xCu);
  }

  v6 = [(WFTriggerEventQueue *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke;
  v9[3] = &unk_2788FFFC0;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke_2;
  v5[3] = &unk_2788FEC68;
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) removeAllStaleTriggerEventsIgnoringValidIDs:v4];
}

void __57__WFTriggerEventQueue_handleRemovedIgnoredNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 content];
  v6 = [v4 userInfo];

  v5 = WFPendingTriggerEventIDsFromNotificationUserInfo();
  [*(a1 + 32) addObjectsFromArray:v5];
}

- (BOOL)shouldRunEmailOrMessageTrigger:(id)a3 forEvent:(id)a4 runEvents:(id)a5 error:(id *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([(WFTriggerEventQueue *)self numberOfEventsInQueue]< 0xC9)
  {
    v9 = [v7 objectForKey:@"NewValue"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v9 count]< 0xB)
      {
        v11 = 1;
        goto LABEL_14;
      }

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Trigger contains more than 10 emails or messages, not running trigger", &v14, 0xCu);
      }
    }

    else
    {

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 136315138;
        v15 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Could not cast eventInfo to NSArray", &v14, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = "[WFTriggerEventQueue shouldRunEmailOrMessageTrigger:forEvent:runEvents:error:]";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s Queue has more than 50 events, not running trigger", &v14, 0xCu);
    }
  }

  v11 = 0;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)removePendingTriggerEventsWithEventIDs:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = getWFTriggersLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
    v35 = 2114;
    v36 = v4;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEBUG, "%s Attempting to remove pending trigger events with identifiers %{public}@", buf, 0x16u);
  }

  v32 = 0;
  v7 = [(WFTriggerEventQueue *)self databaseWithError:&v32];
  v8 = v32;
  if (v7)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v8;
      v26 = v4;
      v12 = *v29;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v14 objectType:4];
          v27 = 0;
          v16 = [v7 deleteReference:v15 error:&v27];
          v17 = v27;
          v18 = getWFTriggersLogObject();
          v19 = v18;
          if (v16)
          {
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_15;
            }

            *buf = 136315394;
            v34 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
            v35 = 2114;
            v36 = v14;
            v20 = v19;
            v21 = OS_LOG_TYPE_DEBUG;
            v22 = "%s Successfully deleted trigger event with identifier: %{public}@";
            v23 = 22;
          }

          else
          {
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }

            *buf = 136315650;
            v34 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
            v35 = 2114;
            v36 = v14;
            v37 = 2114;
            v38 = v17;
            v20 = v19;
            v21 = OS_LOG_TYPE_ERROR;
            v22 = "%s Failed to delete trigger event with identifier: %{public}@ with error: %{public}@";
            v23 = 32;
          }

          _os_log_impl(&dword_23103C000, v20, v21, v22, buf, v23);
LABEL_15:
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (!v11)
        {
          v8 = v25;
          v4 = v26;
          break;
        }
      }
    }
  }

  else
  {
    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[WFTriggerEventQueue removePendingTriggerEventsWithEventIDs:]";
      v35 = 2114;
      v36 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setConfirmedForTriggerEventIDs:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v32 = "[WFTriggerEventQueue setConfirmedForTriggerEventIDs:error:]";
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEBUG, "%s Attempting to mark trigger events as confirmed with ids: %{public}@", buf, 0x16u);
  }

  v30 = 0;
  v9 = [(WFTriggerEventQueue *)self databaseWithError:&v30];
  v10 = v30;
  if (v9)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v24 = v6;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v25 = 0;
          [v9 setConfirmedForTriggerEventWithIdentifier:v16 error:{&v25, v23, v24}];
          v17 = v25;
          if (v17)
          {
            v18 = v17;
            v19 = getWFTriggersLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v32 = "[WFTriggerEventQueue setConfirmedForTriggerEventIDs:error:]";
              v33 = 2114;
              v34 = v16;
              v35 = 2114;
              v36 = v18;
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Failed to set confirmed for trigger with eventID: %{public}@ error: %{public}@", buf, 0x20u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v13);
      v10 = v23;
      v6 = v24;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v10 reason:@"Unable to load database"];
    v11 = v20;
    if (a4)
    {
      v21 = v20;
      *a4 = v11;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)configuredTriggerForIdentifier:(id)a3 workflowReference:(id *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v9);

  v25 = 0;
  v10 = [(WFTriggerEventQueue *)self databaseWithError:&v25];
  v11 = v25;
  if (v10)
  {
    v12 = [v10 configuredTriggerForTriggerID:v8];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 workflowID];

      if (v14)
      {
        if (!a4 || ([v13 workflowID], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "referenceForWorkflowID:", v15), *a4 = objc_claimAutoreleasedReturnValue(), v15, *a4))
        {
          v13 = v13;
          v16 = v13;
          goto LABEL_19;
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = [v13 workflowID];
        v23 = [v21 vc_voiceShortcutErrorWithCode:6001 reason:{@"Couldn't find workflow (%@) for trigger with identifier: %@", v22, v8}];
        if (a5)
        {
          v23 = v23;
          *a5 = v23;
        }
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6001 reason:{@"Missing workflow identifier for trigger with identifier: %@", v8}];
        if (a5)
        {
          v20 = v20;
          *a5 = v20;
        }
      }
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6003 reason:{@"Could not find trigger with identifier: %@", v8}];
      if (a5)
      {
        v19 = v19;
        *a5 = v19;
      }

      v13 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v11 reason:@"Unable to load database"];
    v13 = v17;
    if (a5)
    {
      v18 = v17;
      v16 = 0;
      *a5 = v13;
      goto LABEL_19;
    }
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (id)nextTriggerEventWithError:(id *)a3
{
  v5 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v5);

  v14 = 0;
  v6 = [(WFTriggerEventQueue *)self databaseWithError:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = [v6 runnableSortedTriggerEvents];
    v9 = [v8 descriptors];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = v10;
      v12 = v11;
      goto LABEL_8;
    }

    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v7 reason:@"Unable to load database"];
    if (a3)
    {
      v11 = v11;
      v12 = 0;
      *a3 = v11;
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)deleteTriggerEvent:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v7);

  v16 = 0;
  v8 = [(WFTriggerEventQueue *)self databaseWithError:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 identifier];
      *buf = 136315394;
      v18 = "[WFTriggerEventQueue deleteTriggerEvent:error:]";
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Removing trigger event with identifier: %{public}@", buf, 0x16u);
    }

    v12 = [v8 deleteReference:v6 error:a4];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1004 underlyingError:v9 reason:@"Unable to load database"];
    if (a4)
    {
      v13 = v13;
      *a4 = v13;
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)numberOfEventsInQueue
{
  v3 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(WFTriggerEventQueue *)self databaseWithError:0];
  v5 = [v4 allSortedTriggerEvents];
  v6 = [v5 count];

  return v6;
}

- (id)databaseWithError:(id *)a3
{
  v5 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(WFTriggerEventQueue *)self databaseProvider];
  v7 = [v6 databaseWithError:a3];

  return v7;
}

- (void)enqueueTriggerWithIdentifier:(id)a3 eventInfo:(id)a4 force:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(WFTriggerEventQueue *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__WFTriggerEventQueue_enqueueTriggerWithIdentifier_eventInfo_force_completion___block_invoke;
  v16[3] = &unk_2788FF468;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __79__WFTriggerEventQueue_enqueueTriggerWithIdentifier_eventInfo_force_completion___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v71 = 0;
  v72 = 0;
  v4 = [v2 configuredTriggerForIdentifier:v3 workflowReference:&v72 error:&v71];
  v5 = v72;
  v6 = v71;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = [v4 trigger];
    v10 = getWFTriggersLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 136315394;
      v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
      v76 = 2114;
      v77 = v13;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s 🤖 Enqueuing trigger of type: %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 48);
    v70 = 0;
    v15 = [v9 shouldFireTriggerWithEventInfo:v14 error:&v70];
    v16 = v70;

    if ((v15 & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
LABEL_60:

      v6 = v16;
      goto LABEL_61;
    }

    v17 = *(a1 + 32);
    v69 = v16;
    v18 = [v17 databaseWithError:&v69];
    v19 = v69;

    if (!v18)
    {
      v33 = getWFTriggersLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v76 = 2114;
        v77 = v19;
        _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because database is not available: %{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_59;
    }

    v20 = [v4 identifier];
    v21 = [v18 sortedRunEventsForTriggerID:v20];
    v22 = [v21 descriptors];

    v23 = *(a1 + 32);
    v24 = objc_opt_class();
    v25 = *(a1 + 48);
    v68 = v19;
    LOBYTE(v21) = [v24 shouldRunTrigger:v4 forEvent:v25 runEvents:v22 error:&v68];
    v26 = v68;

    if ((v21 & 1) == 0)
    {
      v34 = getWFTriggersLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 48);
        *buf = 136315906;
        v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v76 = 2112;
        v77 = v4;
        v78 = 2112;
        v79 = v35;
        v80 = 2112;
        v81 = v26;
        _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_INFO, "%s Not running trigger (%@) for event (%@) because: %@", buf, 0x2Au);
      }

      if ([v26 code] == 6004)
      {
        [*(a1 + 32) sendRateLimitEncounteredNotificationForTrigger:v4];
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v67 = v26;
      v29 = [v27 shouldRunEmailOrMessageTrigger:v4 forEvent:v28 runEvents:v22 error:&v67];
      v30 = v67;

      if ((v29 & 1) == 0)
      {
        v31 = getWFTriggersLogObject();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 48);
          *buf = 136315906;
          v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
          v76 = 2112;
          v77 = v4;
          v78 = 2112;
          v79 = v32;
          v80 = 2112;
          v81 = v30;
          _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_INFO, "%s Not running trigger (%@) for event (%@) because: %@", buf, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
        v26 = v30;
        goto LABEL_58;
      }
    }

    else
    {
      v30 = v26;
    }

    if (([v4 shouldPrompt] & 1) != 0 || (objc_msgSend(objc_opt_class(), "isAllowedToRunAutomatically") & 1) == 0)
    {
      v36 = getWFTriggersLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 40);
        *buf = 136315394;
        v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
        v76 = 2114;
        v77 = v37;
        _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_DEFAULT, "%s 🤖 Trigger needs confirmation, adding (%{public}@) to run queue", buf, 0x16u);
      }

      if ([v9 requiresEventInfoAsInput])
      {
        v38 = *(a1 + 32);
        v39 = *(a1 + 48);
        v66 = v30;
        v40 = [v38 triggerEventForConfiguredTrigger:v4 eventInfo:v39 confirmed:0 paused:0 error:&v66];
        v26 = v66;

        if (!v40)
        {
          v56 = getWFTriggersLogObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
            v76 = 2114;
            v77 = v26;
            _os_log_impl(&dword_23103C000, v56, OS_LOG_TYPE_ERROR, "%s Failed to create trigger events with error: %{public}@", buf, 0x16u);
          }

          goto LABEL_58;
        }

        v41 = [v40 identifier];
        v73 = v41;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];

        v43 = v42;
        v30 = v26;
      }

      else
      {
        v43 = 0;
      }

      VCOSTransactionWithName(@"WFTriggerEventQueue.enqueueTriggerWithIdentifier");
      v62 = v61 = v22;
      if (ActionKitLibrary_sOnce != -1)
      {
        dispatch_once(&ActionKitLibrary_sOnce, &__block_literal_global_395);
      }

      v63 = v43;
      v65 = v30;
      v44 = [MEMORY[0x277D7CA60] workflowWithReference:v5 database:v18 error:&v65];
      v26 = v65;

      if (!v44)
      {
        v54 = getWFTriggersLogObject();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = [v5 identifier];
          *buf = 136315906;
          v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
          v76 = 2112;
          v77 = v55;
          v78 = 2112;
          v79 = v9;
          v80 = 2114;
          v81 = v26;
          _os_log_impl(&dword_23103C000, v54, OS_LOG_TYPE_ERROR, "%s Failed to fetch workflow (%@) for trigger (%@): %{public}@", buf, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
        goto LABEL_58;
      }

      v45 = [v44 actions];
      v60 = v44;
      v46 = [v44 actions];
      v47 = [v46 count];

      if (v47 >= 8)
      {
        v48 = 8;
      }

      else
      {
        v48 = v47;
      }

      v49 = [v45 subarrayWithRange:{0, v48}];

      v50 = [v49 if_compactMap:&__block_literal_global_194];
      v51 = [v9 requiresEventInfoAsInput];
      v52 = [*(a1 + 32) notificationManager];
      v64 = 0;
      v59 = v50;
      LOBYTE(v50) = [v52 postNotificationOfType:0 forTrigger:v4 workflowReference:v5 removeDeliveredNotifications:v51 ^ 1u pendingTriggerEventIDs:v63 actionIcons:v50 error:&v64];
      v53 = v64;

      LOBYTE(v52) = v50;
      v22 = v61;
      if ((v52 & 1) == 0)
      {
        log = getWFTriggersLogObject();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke_2";
          v76 = 2114;
          v77 = v53;
          _os_log_impl(&dword_23103C000, log, OS_LOG_TYPE_ERROR, "%s Failed to post notification prompt with error: %{public}@", buf, 0x16u);
        }

        if ([v63 count])
        {
          [*(a1 + 32) removePendingTriggerEventsWithEventIDs:v63];
        }
      }

      [*(a1 + 32) resume];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      [*(a1 + 32) resumeWithConfiguredTrigger:v4 workflowReference:v5 eventInfo:*(a1 + 48)];
      (*(*(a1 + 56) + 16))();
      v26 = v30;
    }

    [MEMORY[0x277D7C990] trackTriggeredAutomationWithConfiguredTrigger:v4];
LABEL_58:

    v19 = v26;
LABEL_59:

    v16 = v19;
    goto LABEL_60;
  }

  v8 = getWFTriggersLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v75 = "[WFTriggerEventQueue enqueueTriggerWithIdentifier:eventInfo:force:completion:]_block_invoke";
    v76 = 2114;
    v77 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_61:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)runWithConfiguredTrigger:(id)a3 workflowReference:(id)a4 eventInfo:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(WFTriggerEventQueue *)self triggerBootManager];
  [v12 willRunAutomations];

  v13 = [(WFTriggerEventQueue *)self triggerEventRunner];
  v14 = [v8 workflowID];
  v15 = [v13 isRunningWorkflowWithIdentifier:v14];

  if (v15)
  {
    v16 = getWFTriggersLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = [v8 workflowID];
      *buf = 136315394;
      v30 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]";
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_FAULT, "%s Attempted to run trigger while triggerEventRunner is running with workflow id: %{public}@.", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if ([v8 shouldPrompt])
  {
    goto LABEL_16;
  }

  v18 = [v8 trigger];
  v19 = [objc_opt_class() isAllowedToRunAutomatically];

  if (!v19)
  {
    goto LABEL_16;
  }

  if (([v8 shouldNotify] & 1) != 0 || (objc_msgSend(v8, "trigger"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(objc_opt_class(), "requiresNotification"), v20, v21))
  {
    v22 = [(WFTriggerEventQueue *)self notificationManager];
    v28 = 0;
    v23 = [v22 postNotificationOfType:1 forTrigger:v8 workflowReference:v9 removeDeliveredNotifications:1 pendingTriggerEventIDs:0 actionIcons:0 error:&v28];
    v24 = v28;

    if ((v23 & 1) == 0)
    {
      v25 = getWFTriggersLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]";
        v31 = 2114;
        v32 = v24;
        _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_ERROR, "%s Failed to post notification alert due to error: %{public}@", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    if ([v8 notificationLevel] > 2)
    {
      goto LABEL_16;
    }

    v24 = [(WFTriggerEventQueue *)self notificationScheduler];
    [v24 scheduleTriggerForNotifications:v8];
  }

LABEL_16:
  v26 = [(WFTriggerEventQueue *)self triggerEventRunner];
  [v26 startRunningWorkflow:v9 forTrigger:v8 eventInfo:v10];

  if (_os_feature_enabled_impl())
  {
    [(WFTriggerEventQueue *)self deactivateEphemeralTriggerIfNeeded:v8 completion:&__block_literal_global_3088];
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

void __76__WFTriggerEventQueue_runWithConfiguredTrigger_workflowReference_eventInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[WFTriggerEventQueue runWithConfiguredTrigger:workflowReference:eventInfo:]_block_invoke";
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to deactivate ephemeral trigger: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)resumeWithConfiguredTrigger:(id)a3 workflowReference:(id)a4 eventInfo:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFTriggerEventQueue *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = getWFTriggersLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 identifier];
    *buf = 136315394;
    v26 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s 🤖 Resuming trigger with id: %{public}@", buf, 0x16u);
  }

  v14 = [(WFTriggerEventQueue *)self triggerEventRunner];
  v15 = [v8 workflowID];
  if ([v14 isRunningWorkflowWithIdentifier:v15])
  {
    goto LABEL_8;
  }

  v16 = [(WFTriggerEventQueue *)self triggerBootManager];
  if (([v16 canRunAutomations] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v17 = [v8 potentialLoopDetected];

  if ((v17 & 1) == 0)
  {
    [(WFTriggerEventQueue *)self runWithConfiguredTrigger:v8 workflowReference:v9 eventInfo:v10];
    goto LABEL_16;
  }

LABEL_9:
  v18 = getWFTriggersLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 workflowID];
    *buf = 136315394;
    v26 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
    v27 = 2114;
    v28 = v19;
    _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_DEFAULT, "%s 🤖 Persisting to database because triggerEventRunner is running workflow with id: %{public}@", buf, 0x16u);
  }

  v24 = 0;
  v20 = -[WFTriggerEventQueue triggerEventForConfiguredTrigger:eventInfo:confirmed:paused:error:](self, "triggerEventForConfiguredTrigger:eventInfo:confirmed:paused:error:", v8, v10, 1, [v8 potentialLoopDetected], &v24);
  v21 = v24;

  if (!v20)
  {
    v22 = getWFTriggersLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "[WFTriggerEventQueue resumeWithConfiguredTrigger:workflowReference:eventInfo:]";
      v27 = 2112;
      v28 = v8;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to create trigger events for trigger %@: %{public}@", buf, 0x20u);
    }
  }

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)clearWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFTriggerEventQueue *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__WFTriggerEventQueue_clearWithCompletionHandler___block_invoke;
  v7[3] = &unk_2788FF680;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__WFTriggerEventQueue_clearWithCompletionHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v38 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEBUG, "%s Attempting to clear all events from the trigger queue", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v36 = 0;
  v4 = [v3 databaseWithError:&v36];
  v5 = v36;
  v6 = v5;
  if (v4)
  {
    v29 = v5;
    v30 = v4;
    v7 = [v4 allSortedTriggerEvents];
    v8 = [v7 descriptors];

    v9 = getWFTriggersLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 count];
      *buf = 136315394;
      v38 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
      v39 = 2048;
      v40 = v10;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEBUG, "%s Found %lu trigger events to delete", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v31 = 0;
          v18 = [v17 deleteTriggerEvent:v16 error:&v31];
          v19 = v31;
          v20 = getWFTriggersLogObject();
          v21 = v20;
          if (v18)
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_17;
            }

            v22 = [v16 identifier];
            *buf = 136315394;
            v38 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
            v39 = 2114;
            v40 = v22;
            v23 = v21;
            v24 = OS_LOG_TYPE_DEBUG;
            v25 = "%s Successfully deleted trigger event with identifier: %{public}@";
            v26 = 22;
          }

          else
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v22 = [v16 identifier];
            *buf = 136315650;
            v38 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
            v39 = 2114;
            v40 = v22;
            v41 = 2114;
            v42 = v19;
            v23 = v21;
            v24 = OS_LOG_TYPE_ERROR;
            v25 = "%s Failed to delete trigger event with identifier %{public}@: %{public}@";
            v26 = 32;
          }

          _os_log_impl(&dword_23103C000, v23, v24, v25, buf, v26);

LABEL_17:
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v13);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v29;
    v4 = v30;
  }

  else
  {
    v27 = getWFTriggersLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[WFTriggerEventQueue clearWithCompletionHandler:]_block_invoke";
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Unable to load database: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  v3 = [(WFTriggerEventQueue *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WFTriggerEventQueue_resume__block_invoke;
  block[3] = &unk_278900148;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__WFTriggerEventQueue_resume__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v33 = 0;
  v3 = [v2 nextTriggerEventWithError:&v33];
  v4 = v33;
  if (v3)
  {
    v5 = [*(a1 + 32) triggerBootManager];
    v6 = [v5 canRunAutomations];

    if (v6)
    {
      v7 = [v3 triggerID];
      if (!v7)
      {
        v10 = getWFTriggersLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v35 = "[WFTriggerEventQueue resume]_block_invoke";
          _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Not resuming queue due to missing trigger id", buf, 0xCu);
        }

        goto LABEL_31;
      }

      v8 = *(a1 + 32);
      v31 = v4;
      v32 = 0;
      v9 = [v8 configuredTriggerForIdentifier:v7 workflowReference:&v32 error:&v31];
      v10 = v32;
      v11 = v31;

      if (v9 && v10)
      {
        v12 = [*(a1 + 32) triggerEventRunner];
        v13 = [v10 identifier];
        v14 = [v12 isRunningWorkflowWithIdentifier:v13];

        if (!v14)
        {
          v22 = *(a1 + 32);
          v30 = v11;
          v23 = [v22 deleteTriggerEvent:v3 error:&v30];
          v4 = v30;

          if ((v23 & 1) == 0)
          {
            v24 = getWFTriggersLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v35 = "[WFTriggerEventQueue resume]_block_invoke";
              v36 = 2114;
              v37 = v4;
              _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Unable to delete next trigger event with error: %{public}@", buf, 0x16u);
            }
          }

          v25 = getWFTriggersLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v3 triggerID];
            *buf = 136315394;
            v35 = "[WFTriggerEventQueue resume]_block_invoke";
            v36 = 2114;
            v37 = v26;
            _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_DEFAULT, "%s 🤖 Resuming processing for trigger with identifier %{public}@", buf, 0x16u);
          }

          v27 = *(a1 + 32);
          v15 = [v3 eventInfo];
          v28 = WFTriggerEventInfoDictionaryConverter(v15);
          [v27 runWithConfiguredTrigger:v9 workflowReference:v10 eventInfo:v28];

          goto LABEL_30;
        }

        v15 = getWFTriggersLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v10 identifier];
          *buf = 136315394;
          v35 = "[WFTriggerEventQueue resume]_block_invoke";
          v36 = 2112;
          v37 = v16;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEBUG, "%s Not resuming because the triggerEventRunner is running a workflow with identifier %@", buf, 0x16u);
        }
      }

      else
      {
        v15 = getWFTriggersLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v35 = "[WFTriggerEventQueue resume]_block_invoke";
          v36 = 2114;
          v37 = v11;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to fire trigger because it could not be found: %{public}@", buf, 0x16u);
        }
      }

      v4 = v11;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[WFTriggerEventQueue resume]_block_invoke";
      v18 = "%s Not resuming queue due to boot manager not allowing automation runs";
      v19 = v7;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v17 = getWFTriggersLogObject();
  v7 = v17;
  if (v4)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[WFTriggerEventQueue resume]_block_invoke";
      v36 = 2114;
      v37 = v4;
      v18 = "%s Unable to get next trigger event with error: %{public}@";
      v19 = v7;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 22;
LABEL_14:
      _os_log_impl(&dword_23103C000, v19, v20, v18, buf, v21);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v35 = "[WFTriggerEventQueue resume]_block_invoke";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEBUG, "%s Not resuming because there are no events in the queue", buf, 0xCu);
  }

  v4 = v7;
LABEL_33:

  v29 = *MEMORY[0x277D85DE8];
}

- (WFTriggerEventQueue)initWithDatabaseProvider:(id)a3 notificationManager:(id)a4 notificationScheduler:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFTriggerEventQueue.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v24.receiver = self;
  v24.super_class = WFTriggerEventQueue;
  v13 = [(WFTriggerEventQueue *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_databaseProvider, a3);
    objc_storeStrong(&v14->_notificationManager, a4);
    objc_storeStrong(&v14->_notificationScheduler, a5);
    [(WFTriggerUserNotificationManager *)v14->_notificationManager setDelegate:v14];
    v15 = [[WFTriggerEventRunner alloc] initWithDatabaseProvider:v10 delegate:v14];
    triggerEventRunner = v14->_triggerEventRunner;
    v14->_triggerEventRunner = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);

    v19 = dispatch_queue_create("com.apple.siriactionsd.WFTriggerEventQueue", v18);
    queue = v14->_queue;
    v14->_queue = v19;

    v21 = v14;
  }

  return v14;
}

- (WFTriggerEventQueue)initWithDatabaseProvider:(id)a3 notificationManager:(id)a4 notificationScheduler:(id)a5 triggerBootManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFTriggerEventQueue.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v15 = [(WFTriggerEventQueue *)self initWithDatabaseProvider:v11 notificationManager:v12 notificationScheduler:v13];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_triggerBootManager, a6);
    v17 = v16;
  }

  return v16;
}

+ (double)rateLimitingTimeoutForTrigger:(id)a3 runEvents:(id)a4 numFailures:(unint64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 count])
  {
    if (a5 > 5)
    {
      v10 = 120.0;
    }

    else
    {
      v10 = dbl_231166958[a5];
    }
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "+[WFTriggerEventQueue rateLimitingTimeoutForTrigger:runEvents:numFailures:]";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s No recent runs for trigger (%@); running it", &v14, 0x16u);
    }

    v10 = 0.0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)shouldRunTrigger:(id)a3 forEvent:(id)a4 runEvents:(id)a5 error:(id *)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:a1 file:@"WFTriggerEventQueue.m" lineNumber:577 description:{@"Invalid parameter not satisfying: %@", @"trigger"}];
  }

  if (([v11 isEnabled]& 1) != 0)
  {
    if ([v11 shouldPrompt])
    {
      v14 = getWFTriggersLogObject();
      v15 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v53 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
        v16 = "%s Don't bother rate-limiting prompt automations; the user is doing that when they press Run";
        v17 = v14;
        v18 = 12;
LABEL_25:
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, v16, buf, v18);
      }
    }

    else if ([v13 count])
    {
      v47 = v12;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v49;
        while (2)
        {
          v27 = 0;
          v28 = v25;
          v25 += v24;
          do
          {
            if (*v49 != v26)
            {
              objc_enumerationMutation(v22);
            }

            if ([*(*(&v48 + 1) + 8 * v27) outcome] == 1)
            {
              v25 = v28;
              goto LABEL_27;
            }

            ++v28;
            ++v27;
          }

          while (v24 != v27);
          v24 = [v22 countByEnumeratingWithState:&v48 objects:buf count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_27:

      [a1 rateLimitingTimeoutForTrigger:v11 runEvents:v22 numFailures:v25];
      v30 = v29;
      v14 = [v22 firstObject];
      v31 = [v14 date];
      v32 = [v31 dateByAddingTimeInterval:v30];

      v33 = [MEMORY[0x277CBEAA8] date];
      v46 = v32;
      v34 = [v32 compare:v33];

      v15 = v34 != 1;
      if (v34 == 1)
      {
        if (v25)
        {
          v36 = 0;
          while (1)
          {
            if (v36 >= [v22 count])
            {
LABEL_36:
              v39 = 6008;
              v40 = @"unfinished attempts in run history";
              goto LABEL_39;
            }

            v37 = [v22 objectAtIndexedSubscript:v36];
            v38 = [v37 outcome];

            if (v38 == 2)
            {
              break;
            }

            if (v25 == ++v36)
            {
              goto LABEL_36;
            }
          }

          v39 = 6004;
          v40 = @"failed attempts in run history";
        }

        else
        {
          v40 = @"timing (no actual failures)";
          v39 = 6008;
        }

LABEL_39:
        v12 = v47;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not running trigger (%@) for event (%@) due to rate-limiting with timeout=%0.0f and root cause: %@", v11, v47, *&v30, v40];
        v41 = getWFTriggersLogObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v53 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
          v54 = 2112;
          v55 = v35;
          _os_log_impl(&dword_23103C000, v41, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
        }

        v42 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:v39 reason:{@"%@", v35}];
        if (a6)
        {
          v42 = v42;
          *a6 = v42;
        }
      }

      else
      {
        v35 = getWFTriggersLogObject();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v53 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
          v54 = 2112;
          v55 = v11;
          _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_INFO, "%s No rate-limiting checks applied; running trigger (%@)", buf, 0x16u);
        }

        v12 = v47;
      }
    }

    else
    {
      v14 = getWFTriggersLogObject();
      v15 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v53 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
        v54 = 2112;
        v55 = v11;
        v16 = "%s No recent runs for trigger (%@); running it";
        v17 = v14;
        v18 = 22;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v19 = getWFTriggersLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v53 = "+[WFTriggerEventQueue shouldRunTrigger:forEvent:runEvents:error:]";
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Trigger (%@) is disabled; not running it", buf, 0x16u);
    }

    v20 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:6005 reason:@"Automation disabled"];
    v14 = v20;
    if (a6)
    {
      v21 = v20;
      v15 = 0;
      *a6 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v15;
}

@end