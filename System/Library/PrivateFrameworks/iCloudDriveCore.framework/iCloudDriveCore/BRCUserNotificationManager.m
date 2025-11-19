@interface BRCUserNotificationManager
+ (id)sharedManager;
- (BOOL)hasPendingNotificationsForIdentifier:(id)a3;
- (BRCUserNotificationManager)init;
- (id)_buildNotificationWithMetadata:(id)a3 requestID:(id)a4;
- (id)_getSessionContextForAccountID:(id)a3;
- (id)_notificationCategories;
- (void)_configureUserNotificationCenter;
- (void)addPendingNotificationWithMetadata:(id)a3 requestID:(id)a4 forKey:(id)a5;
- (void)registerSessionContext:(id)a3 forAccountID:(id)a4;
- (void)removeDeliveredNotificationsMatchingPredicate:(id)a3;
- (void)scheduleNotificationWithMetadata:(id)a3 requestID:(id)a4;
- (void)schedulePendingNotificationWithIdentifier:(id)a3;
- (void)unRegisterSessionContextForAccountID:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation BRCUserNotificationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[BRCUserNotificationManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

- (id)_notificationCategories
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"APPROVE_ACTION" title:@"Approve" options:1];
  v3 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"DECLINE_ACTION" title:@"Decline" options:1];
  v4 = MEMORY[0x277CE1F98];
  v10[0] = v2;
  v10[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v6 = [v4 categoryWithIdentifier:@"com.apple.bird.notifications.request.access" actions:v5 intentIdentifiers:MEMORY[0x277CBEBF8] options:1];

  v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_getSessionContextForAccountID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__34;
  v16 = __Block_byref_object_dispose__34;
  v17 = 0;
  v5 = [(BRCUserNotificationManager *)self _getQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BRCUserNotificationManager__getSessionContextForAccountID___block_invoke;
  block[3] = &unk_278500D08;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__BRCUserNotificationManager__getSessionContextForAccountID___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(v1[1] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(v1[1] + 8) + 40))
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __61__BRCUserNotificationManager__getSessionContextForAccountID___block_invoke_cold_1(v1);
    }
  }
}

- (void)_configureUserNotificationCenter
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.bird.usernotifications"];
  birdNotificationCenter = self->_birdNotificationCenter;
  self->_birdNotificationCenter = v3;

  [(UNUserNotificationCenter *)self->_birdNotificationCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_birdNotificationCenter setWantsNotificationResponsesDelivered];
  v5 = self->_birdNotificationCenter;
  v6 = [(BRCUserNotificationManager *)self _notificationCategories];
  [(UNUserNotificationCenter *)v5 setNotificationCategories:v6];
}

- (BRCUserNotificationManager)init
{
  v13.receiver = self;
  v13.super_class = BRCUserNotificationManager;
  v2 = [(BRCUserNotificationManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(BRCUserNotificationManager *)v2 _configureUserNotificationCenter];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bird.notifications", v5);

    notificationsQueue = v3->_notificationsQueue;
    v3->_notificationsQueue = v6;

    v8 = objc_opt_new();
    sessionsForAccountID = v3->_sessionsForAccountID;
    v3->_sessionsForAccountID = v8;

    v10 = objc_opt_new();
    pendingNotification = v3->_pendingNotification;
    v3->_pendingNotification = v10;
  }

  return v3;
}

uint64_t __43__BRCUserNotificationManager_sharedManager__block_invoke()
{
  sharedManager_manager_0 = objc_alloc_init(BRCUserNotificationManager);

  return MEMORY[0x2821F96F8]();
}

- (void)registerSessionContext:(id)a3 forAccountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(BRCUserNotificationManager *)self _getQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BRCUserNotificationManager_registerSessionContext_forAccountID___block_invoke;
    block[3] = &unk_2784FF4A0;
    block[4] = self;
    v12 = v7;
    v13 = v6;
    dispatch_sync(v8, block);
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      [BRCUserNotificationManager registerSessionContext:forAccountID:];
    }
  }
}

- (void)unRegisterSessionContextForAccountID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BRCUserNotificationManager *)self _getQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__BRCUserNotificationManager_unRegisterSessionContextForAccountID___block_invoke;
    v8[3] = &unk_2784FF478;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v5, v8);
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      [BRCUserNotificationManager unRegisterSessionContextForAccountID:];
    }
  }
}

void __67__BRCUserNotificationManager_unRegisterSessionContextForAccountID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__BRCUserNotificationManager_unRegisterSessionContextForAccountID___block_invoke_2;
  v3[3] = &unk_278504D90;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  [v2 getDeliveredNotificationsWithCompletionHandler:v3];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__BRCUserNotificationManager_unRegisterSessionContextForAccountID___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v19 = WeakRetained;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 request];
          v14 = [v13 identifier];
          v15 = [v14 containsString:*(a1 + 32)];

          if (v15)
          {
            v16 = [v12 request];
            v17 = [v16 identifier];
            [v6 addObject:v17];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v5 = v19;
    [v19[1] removeDeliveredNotificationsWithIdentifiers:v6];

    v3 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeDeliveredNotificationsMatchingPredicate:(id)a3
{
  v4 = a3;
  birdNotificationCenter = self->_birdNotificationCenter;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__BRCUserNotificationManager_removeDeliveredNotificationsMatchingPredicate___block_invoke;
  v7[3] = &unk_278504DB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(UNUserNotificationCenter *)birdNotificationCenter getDeliveredNotificationsWithCompletionHandler:v7];
}

void __76__BRCUserNotificationManager_removeDeliveredNotificationsMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 identifier];
        v12 = [BRCUserNotificationRequestAccessRequestID decodeWithRequestIDString:v11];

        if (!v12)
        {
          v13 = [v9 request];
          v14 = [v13 identifier];
          v12 = [BRCUserNotificationRequestAccessApprovedRequestID decodeWithRequestIDString:v14];
        }

        if ((*(*(a1 + 40) + 16))())
        {
          v15 = [v12 encode];
          [v17 addObject:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v17 count])
  {
    [*(*(a1 + 32) + 8) removeDeliveredNotificationsWithIdentifiers:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_buildNotificationWithMetadata:(id)a3 requestID:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v8 = [MEMORY[0x277CE1FE0] defaultSound];
  [v7 setSound:v8];

  v9 = [v5 title];
  [v7 setTitle:v9];

  v10 = [v5 body];
  [v7 setBody:v10];

  v11 = [v5 subtitle];
  [v7 setSubtitle:v11];

  v12 = [v6 requestCategory];
  [v7 setCategoryIdentifier:v12];

  [v7 setShouldBackgroundDefaultAction:1];
  v13 = [v5 thumbnailURL];

  if (v13)
  {
    v14 = MEMORY[0x277CE1F90];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
    v17 = [v5 thumbnailURL];
    v33 = 0;
    v18 = [v14 attachmentWithIdentifier:v16 URL:v17 options:0 error:&v33];
    v19 = v33;

    if (v19 || !v18)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [BRCUserNotificationManager _buildNotificationWithMetadata:requestID:];
      }
    }

    else
    {
      v34[0] = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      [v7 setAttachments:v20];
    }
  }

  v22 = [v6 iconAppIdentifier];

  v23 = MEMORY[0x277CE1FB0];
  if (v22)
  {
    v24 = [v6 iconAppIdentifier];
    v25 = [v23 iconForApplicationIdentifier:v24];
    [v7 setIcon:v25];
  }

  else
  {
    v24 = [MEMORY[0x277CE1FB0] iconWithUTI:*MEMORY[0x277CFADE0]];
    [v7 setIcon:v24];
  }

  v26 = [v5 userInfo];

  if (v26)
  {
    v27 = [v5 userInfo];
    [v7 setUserInfo:v27];
  }

  v28 = MEMORY[0x277CE1FC0];
  v29 = [v6 encode];
  v30 = [v28 requestWithIdentifier:v29 content:v7 trigger:0];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)addPendingNotificationWithMetadata:(id)a3 requestID:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BRCUserNotificationManager *)self _buildNotificationWithMetadata:v8 requestID:v9];
  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationManager addPendingNotificationWithMetadata:v11 requestID:? forKey:?];
    }

    v14 = self;
    objc_sync_enter(v14);
    [(NSMutableDictionary *)v14->_pendingNotification setObject:v11 forKeyedSubscript:v10];
    objc_sync_exit(v14);
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BRCUserNotificationManager addPendingNotificationWithMetadata:requestID:forKey:];
    }

    v14 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      [BRCUserNotificationManager addPendingNotificationWithMetadata:requestID:forKey:];
    }
  }
}

- (BOOL)hasPendingNotificationsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_pendingNotification objectForKeyedSubscript:v4];
  v7 = v6 != 0;

  objc_sync_exit(v5);
  return v7;
}

- (void)schedulePendingNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCUserNotificationManager schedulePendingNotificationWithIdentifier:];
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_pendingNotification objectForKeyedSubscript:v4];
  if (v6)
  {
    [(NSMutableDictionary *)v5->_pendingNotification removeObjectForKey:v4];
    objc_sync_exit(v5);

    birdNotificationCenter = v5->_birdNotificationCenter;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__BRCUserNotificationManager_schedulePendingNotificationWithIdentifier___block_invoke;
    v10[3] = &unk_2784FF540;
    v11 = v6;
    [(UNUserNotificationCenter *)birdNotificationCenter addNotificationRequest:v11 withCompletionHandler:v10];
    v8 = v11;
  }

  else
  {
    objc_sync_exit(v5);

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationManager schedulePendingNotificationWithIdentifier:];
    }
  }
}

void __72__BRCUserNotificationManager_schedulePendingNotificationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Error while adding notification request %@ %@%@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNotificationWithMetadata:(id)a3 requestID:(id)a4
{
  v6 = a4;
  birdNotificationCenter = self->_birdNotificationCenter;
  v8 = [(BRCUserNotificationManager *)self _buildNotificationWithMetadata:a3 requestID:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__BRCUserNotificationManager_scheduleNotificationWithMetadata_requestID___block_invoke;
  v10[3] = &unk_2784FF540;
  v11 = v6;
  v9 = v6;
  [(UNUserNotificationCenter *)birdNotificationCenter addNotificationRequest:v8 withCompletionHandler:v10];
}

void __73__BRCUserNotificationManager_scheduleNotificationWithMetadata_requestID___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Error while adding notification request %@ %@%@", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 identifier];

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v24 = [v7 actionIdentifier];
    v25 = 138412802;
    v26 = v24;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Received notification response %@ for request %@%@", &v25, 0x20u);
  }

  v14 = [BRCUserNotificationRequestAccessRequestID decodeWithRequestIDString:v11];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 accountID];
    v17 = [(BRCUserNotificationManager *)self _getSessionContextForAccountID:v16];

    if (v17)
    {
      [v15 performOnActionWithNotificationResponse:v7 sessionContext:v17 completionHandler:v8];
      goto LABEL_15;
    }

LABEL_12:
    v8[2](v8);
    goto LABEL_15;
  }

  v18 = [BRCUserNotificationRequestAccessApprovedRequestID decodeWithRequestIDString:v11];
  v17 = v18;
  if (!v18)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserNotificationManager userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:];
    }

    goto LABEL_12;
  }

  v19 = [v18 accountID];
  v20 = [(BRCUserNotificationManager *)self _getSessionContextForAccountID:v19];

  if (v20)
  {
    [v17 performOnActionWithNotificationResponse:v7 sessionContext:v20 completionHandler:v8];
  }

  else
  {
    v8[2](v8);
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
}

void __61__BRCUserNotificationManager__getSessionContextForAccountID___block_invoke_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerSessionContext:forAccountID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Trying to register session context for nil account ID%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)unRegisterSessionContextForAccountID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Trying to un register session context for nil account ID%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_buildNotificationWithMetadata:requestID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Could not attach thumbnail to notification: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addPendingNotificationWithMetadata:(void *)a1 requestID:forKey:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Adding %@ to pending notifications%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addPendingNotificationWithMetadata:requestID:forKey:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: request%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addPendingNotificationWithMetadata:requestID:forKey:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)schedulePendingNotificationWithIdentifier:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: identifier%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)schedulePendingNotificationWithIdentifier:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Couldn't find notification request for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Got unknown request ID %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end