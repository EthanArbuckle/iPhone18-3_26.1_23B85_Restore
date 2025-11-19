@interface UNCLocalNotificationRepository
- (BOOL)_queue_saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 withOptions:(unint64_t)a6 forBundleIdentifier:(id)a7;
- (BOOL)_shouldPersistNotificationRecord:(id)a3 forBundleSettings:(id)a4 perTopicSettings:(id)a5;
- (UNCLocalNotificationRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4 librarian:(id)a5 categoryRepository:(id)a6 badgeService:(id)a7;
- (UNCLocalNotificationRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5 categoryRepository:(id)a6 badgeService:(id)a7;
- (UNCNotificationRepositoryDelegate)delegate;
- (UNCNotificationRepositorySettingsProvider)settingsProvider;
- (id)_badgeNumberForBundleIdentifier:(id)a3;
- (id)_queue_notificationRecordForIdentifier:(id)a3 forBundleIdentifier:(id)a4;
- (id)_queue_notificationRecordsForBundleIdentifier:(id)a3;
- (id)allBundleIdentifiers;
- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)notificationRecordsForBundleIdentifier:(id)a3;
- (void)_badge_queue_setBadgeValue:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_logNotification:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_notifyObserversWithReceipt:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_performMigration;
- (void)_queue_performMigrationForBundleIdentifier:(id)a3;
- (void)_queue_performMigrationForPushStore;
- (void)_queue_performMigrationForPushStoreAtPath:(id)a3;
- (void)_queue_performMigrationForUserNotificationsStore;
- (void)_queue_performValidation;
- (void)_queue_removeAllNotificationRecordsForBundleIdentifier:(id)a3;
- (void)_queue_removeInvalidNotificationRecordsForBundleIdentifier:(id)a3;
- (void)_queue_removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_removeNotificationRecordsPassingTest:(id)a3 forBundleIdentifier:(id)a4;
- (void)_queue_removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3;
- (void)_queue_removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (void)_queue_triggerInvalidationForFirstUnlock;
- (void)_removeStoreForBundleIdentifier:(id)a3 overridePathExtension:(id)a4;
- (void)_setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_setBadgeValue:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3;
- (void)notificationSourcesDidInstall:(id)a3;
- (void)notificationSourcesDidUninstall:(id)a3;
- (void)performMigration;
- (void)performValidation;
- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeAllNotificationRecordsForBundleIdentifierSync:(id)a3;
- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)removeNotificationRecordsPassingTest:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3;
- (void)removeNotificationRepository;
- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4;
- (void)removeStoreForBundleIdentifier:(id)a3;
- (void)saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 forBundleIdentifier:(id)a6 withCompletionHandler:(id)a7;
@end

@implementation UNCLocalNotificationRepository

- (UNCLocalNotificationRepository)initWithDirectory:(id)a3 librarian:(id)a4 repositoryProtectionStrategy:(id)a5 categoryRepository:(id)a6 badgeService:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[UNCKeyedDataStoreRepository alloc] initWithDirectory:v16 fileName:@"DeliveredNotifications" pathExtension:@"plist" librarian:v15 repositoryProtectionStrategy:v14 objectIdentifierKey:@"AppNotificationIdentifier" maxObjectsPerKey:[(UNCLocalNotificationRepository *)self _maxObjectsPerKey]];

  [(UNCKeyedDataStoreRepository *)v17 setRecordValidationTest:UNSNotificationRecordDictionaryValidation];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create("com.apple.NotificationRepository.observable", v18);

  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create("com.apple.NotificationRepository.call-out", v20);

  v22 = [[UNCKeyedObservable alloc] initWithQueue:v19 callOutQueue:v21];
  v23 = [(UNCLocalNotificationRepository *)self initWithDataStoreRepository:v17 observable:v22 librarian:v15 categoryRepository:v13 badgeService:v12];

  return v23;
}

- (UNCLocalNotificationRepository)initWithDataStoreRepository:(id)a3 observable:(id)a4 librarian:(id)a5 categoryRepository:(id)a6 badgeService:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v32 = a7;
  v33.receiver = self;
  v33.super_class = UNCLocalNotificationRepository;
  v17 = [(UNCLocalNotificationRepository *)&v33 init];
  if (v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    unlimitedBodyBundleIdentifiers = v17->_unlimitedBodyBundleIdentifiers;
    v17->_unlimitedBodyBundleIdentifiers = v18;

    dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    obj = a6;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v24 = v23 = v13;
    v25 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationRepository", v24);
    queue = v17->_queue;
    v17->_queue = v25;

    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create("com.apple.usernotificationsserver.NotificationRepositoryBadgeService", v27);
    badgeServiceQueue = v17->_badgeServiceQueue;
    v17->_badgeServiceQueue = v28;

    v13 = v23;
    v14 = v22;
    v15 = v21;
    v16 = v20;
    objc_storeStrong(&v17->_repository, a3);
    objc_storeStrong(&v17->_observable, a4);
    objc_storeStrong(&v17->_librarian, a5);
    objc_storeStrong(&v17->_badgeService, a7);
    objc_storeStrong(&v17->_categoryRepository, obj);
  }

  return v17;
}

- (void)addObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__UNCLocalNotificationRepository_addObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UNCLocalNotificationRepository_removeObserver_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (id)notificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__UNCLocalNotificationRepository_notificationRecordsForBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __73__UNCLocalNotificationRepository_notificationRecordsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_notificationRecordsForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__UNCLocalNotificationRepository_notificationRecordForIdentifier_bundleIdentifier___block_invoke;
  v13[3] = &unk_1E85D7768;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __83__UNCLocalNotificationRepository_notificationRecordForIdentifier_bundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_notificationRecordForIdentifier:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 forBundleIdentifier:(id)a6 withCompletionHandler:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    if (v14)
    {
      v16 = [v12 date];

      if (!v16)
      {
        v24 = *MEMORY[0x1E6983368];
        if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
        {
          [UNCLocalNotificationRepository saveNotificationRecord:v14 targetRevisionNumber:v24 shouldRepost:v12 forBundleIdentifier:? withCompletionHandler:?];
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        else if (!v15)
        {
          goto LABEL_19;
        }

        v25 = MEMORY[0x1E696ABC0];
        v26 = 1400;
LABEL_18:
        v31 = [v25 un_errorWithUNErrorCode:v26 userInfo:0];
        v15[2](v15, 0, v31);

        goto LABEL_19;
      }

      if ([v12 willNotifyUser] & 1) != 0 || (objc_msgSend(v12, "hasBadge"))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke;
        aBlock[3] = &unk_1E85D7790;
        aBlock[4] = self;
        v17 = v12;
        v38 = v17;
        v39 = v13;
        v42 = a5;
        v18 = v14;
        v40 = v18;
        v41 = v15;
        v19 = _Block_copy(aBlock);
        queue = self->_queue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_2;
        v33[3] = &unk_1E85D7808;
        v33[4] = self;
        v34 = v18;
        v35 = v17;
        v36 = v19;
        v21 = v19;
        dispatch_async(queue, v33);

        goto LABEL_19;
      }

      v27 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        v28 = v27;
        v29 = [v12 identifier];
        v30 = [v29 un_logDigest];
        *buf = 138543618;
        v44 = v14;
        v45 = 2114;
        v46 = v30;
        _os_log_impl(&dword_1DA7A9000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not delivering user visible notification %{public}@ because it has no alert, sound or badge", buf, 0x16u);
      }

      if (v15)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = 1401;
        goto LABEL_18;
      }
    }

    else
    {
      v23 = *MEMORY[0x1E6983368];
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
      {
        [UNCLocalNotificationRepository saveNotificationRecord:v23 targetRevisionNumber:v12 shouldRepost:? forBundleIdentifier:? withCompletionHandler:?];
      }
    }
  }

  else
  {
    v22 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_ERROR))
    {
      [UNCLocalNotificationRepository saveNotificationRecord:v22 targetRevisionNumber:? shouldRepost:? forBundleIdentifier:? withCompletionHandler:?];
    }
  }

LABEL_19:

  v32 = *MEMORY[0x1E69E9840];
}

void __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) _queue_saveNotificationRecord:*(a1 + 40) targetRevisionNumber:*(a1 + 48) shouldRepost:*(a1 + 72) withOptions:a2 forBundleIdentifier:*(a1 + 56)];
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = v8;
    if (v8)
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      v7 = [MEMORY[0x1E696ABC0] un_errorWithUNPrivateErrorCode:2000 userInfo:0];
      v6 = *(a1 + 64);
    }

    v8 = v7;
    (*(v6 + 16))(v6, a2);
  }
}

void __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = [WeakRetained isApplicationForeground:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (!v3)
  {
    if ([v4 hasSound])
    {
      if (([*(a1 + 48) hasAlertContent] & 1) == 0)
      {
        v12 = *MEMORY[0x1E6983368];
        if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          v13 = *(a1 + 48);
          v15 = v12;
          v16 = [v13 identifier];
          v17 = [v16 un_logDigest];
          *buf = 138543618;
          v22 = v14;
          v23 = 2114;
          v24 = v17;
          _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Suppressing sound on user visible notification %{public}@ because it has no alert and the app is in the background", buf, 0x16u);
        }
      }
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_13;
  }

  if (![v4 pipelineState])
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 72));
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_3;
    v19[3] = &unk_1E85D77E0;
    v19[4] = *(a1 + 32);
    v20 = *(a1 + 56);
    [v9 willPresentNotification:v10 forBundleIdentifier:v11 withCompletionHandler:v19];

LABEL_13:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *(a1 + 56);
  v6 = [*(a1 + 48) presentationOptions];
  v7 = *(v5 + 16);
  v8 = *MEMORY[0x1E69E9840];

  v7(v5, v6, 0);
}

void __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__UNCLocalNotificationRepository_saveNotificationRecord_targetRevisionNumber_shouldRepost_forBundleIdentifier_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E85D77B8;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __111__UNCLocalNotificationRepository_saveNotificationRequest_shouldRepost_apsMessageTimestamp_forBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983390];
  v6 = os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v5;
      v10 = [v7 identifier];
      v11 = [v10 un_logDigest];
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v4;
      v12 = "[%{public}@] NOT delivering user visible push notification %{public}@ [ error=%{public}@ ]";
      v13 = v9;
      v14 = 32;
LABEL_6:
      _os_log_impl(&dword_1DA7A9000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    }
  }

  else if (v6)
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v9 = v5;
    v10 = [v15 identifier];
    v11 = [v10 un_logDigest];
    v18 = 138543618;
    v19 = v16;
    v20 = 2114;
    v21 = v11;
    v12 = "[%{public}@] Delivered user visible push notification %{public}@";
    v13 = v9;
    v14 = 22;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__UNCLocalNotificationRepository_removeAllNotificationRecordsForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeAllNotificationRecordsForBundleIdentifierSync:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__UNCLocalNotificationRepository_removeAllNotificationRecordsForBundleIdentifierSync___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__UNCLocalNotificationRepository_removeInvalidNotificationRecordsForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeNotificationRecordsPassingTest:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UNCLocalNotificationRepository_removeNotificationRecordsPassingTest_forBundleIdentifier___block_invoke;
  block[3] = &unk_1E85D7830;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__UNCLocalNotificationRepository_removeNotificationRecordsForIdentifiers_bundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UNCLocalNotificationRepository_removeSimilarNotificationRecords_bundleIdentifier___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__UNCLocalNotificationRepository_removeNotificationRecordsWithNonPushTriggerForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeStoreForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UNCLocalNotificationRepository_removeStoreForBundleIdentifier___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_removeStoreForBundleIdentifier:(id)a3 overridePathExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__UNCLocalNotificationRepository__removeStoreForBundleIdentifier_overridePathExtension___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)removeNotificationRepository
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__UNCLocalNotificationRepository_removeNotificationRepository__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)allBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__UNCLocalNotificationRepository_allBundleIdentifiers__block_invoke;
  v5[3] = &unk_1E85D6E48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__UNCLocalNotificationRepository_allBundleIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)performMigration
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UNCLocalNotificationRepository_performMigration__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)performValidation
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UNCLocalNotificationRepository_performValidation__block_invoke;
  block[3] = &unk_1E85D6F70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__UNCLocalNotificationRepository_contentProtectionStateChangedForFirstUnlock___block_invoke;
  v4[3] = &unk_1E85D7858;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

uint64_t __78__UNCLocalNotificationRepository_contentProtectionStateChangedForFirstUnlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _queue_performMigrationForUserNotificationsStore];
  }

  result = [*(*(a1 + 32) + 8) protectionStateChanged];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_triggerInvalidationForFirstUnlock];
  }

  return result;
}

- (void)notificationSourcesDidInstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__UNCLocalNotificationRepository_notificationSourcesDidInstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __64__UNCLocalNotificationRepository_notificationSourcesDidInstall___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 allowUnlimitedContentBody];
        v9 = *(*(a1 + 40) + 24);
        v10 = [v7 bundleIdentifier];
        if (v8)
        {
          [v9 addObject:v10];
        }

        else
        {
          [v9 removeObject:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notificationSourcesDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__UNCLocalNotificationRepository_notificationSourcesDidUninstall___block_invoke;
  v7[3] = &unk_1E85D6E70;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __66__UNCLocalNotificationRepository_notificationSourcesDidUninstall___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 40) + 24);
        v8 = [*(*(&v10 + 1) + 8 * v6) bundleIdentifier];
        [v7 removeObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_queue_notificationRecordsForBundleIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:v5];

  v7 = [(UNCLocalNotificationRepository *)self _notificationsForObjects:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)_queue_notificationRecordForIdentifier:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  repository = self->_repository;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__UNCLocalNotificationRepository__queue_notificationRecordForIdentifier_forBundleIdentifier___block_invoke;
  v16[3] = &unk_1E85D7880;
  v10 = v6;
  v17 = v10;
  v11 = [(UNCKeyedDataStoreRepository *)repository objectsPassingTest:v16 forKey:v8];

  if ([v11 count])
  {
    v12 = UNSDictionaryToNotificationRecord;
    v13 = [v11 firstObject];
    v14 = v12[2](v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __93__UNCLocalNotificationRepository__queue_notificationRecordForIdentifier_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"AppNotificationIdentifier"];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)_queue_saveNotificationRecord:(id)a3 targetRevisionNumber:(id)a4 shouldRepost:(BOOL)a5 withOptions:(unint64_t)a6 forBundleIdentifier:(id)a7
{
  v76 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  dispatch_assert_queue_V2(self->_queue);
  [v11 setShouldBadgeApplicationIcon:a6 & 1];
  [v11 setShouldPlaySound:(a6 >> 1) & 1];
  [v11 setShouldPresentAlert:(a6 & 0x1C) != 0];
  [v11 setPresentationOptions:a6];
  v77 = [v11 pipelineState];
  if (!v77)
  {
    [(UNCLocalNotificationRepository *)self _logNotification:v11 forBundleIdentifier:v13];
  }

  v14 = [v11 badge];
  v15 = [v11 shouldBadgeApplicationIcon];
  v16 = v15;
  v84 = v14;
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v11 identifier];
    v21 = [v20 un_logDigest];
    *buf = 138544386;
    v86 = v13;
    v87 = 2114;
    v88 = v21;
    v89 = 1024;
    *v90 = v17;
    *&v90[4] = 1024;
    *&v90[6] = v16;
    *v91 = 2114;
    *&v91[2] = v84;
    _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Badge can be set for notification %{public}@: %d [ canBadge: %d badgeNumber: %{public}@ ]", buf, 0x2Cu);
  }

  if (v17)
  {
    v22 = [v11 badge];
    [(UNCLocalNotificationRepository *)self _setBadgeNumber:v22 forBundleIdentifier:v13 withCompletionHandler:0];
  }

  if ([v11 hasAlertContent])
  {
    v23 = [v11 shouldPresentAlert];
  }

  else
  {
    v23 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsProvider);
  v25 = [WeakRetained notificationSettingsForBundleIdentifier:v13];

  v26 = objc_loadWeakRetained(&self->_settingsProvider);
  v27 = [v26 notificationSettingsForTopicsWithBundleIdentifier:v13];

  v28 = [(UNCLocalNotificationRepository *)self _shouldPersistNotificationRecord:v11 forBundleSettings:v25 perTopicSettings:v27];
  v29 = v28;
  v30 = v23 & v28;
  v31 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v80 = v12;
    log = v31;
    [v11 identifier];
    v74 = v82 = v13;
    v32 = [v74 un_logDigest];
    v33 = v27;
    v34 = [v11 hasAlertContent];
    v35 = v25;
    v36 = [v11 shouldPresentAlert];
    v37 = self;
    v38 = v29;
    v39 = UNSStringFromPipelineState(v77);
    *buf = 138544898;
    v86 = v82;
    v87 = 2114;
    v88 = v32;
    v89 = 1024;
    *v90 = v30;
    *&v90[4] = 1024;
    *&v90[6] = v34;
    v27 = v33;
    *v91 = 1024;
    *&v91[2] = v36;
    v25 = v35;
    *&v91[6] = 1024;
    *&v91[8] = v38;
    self = v37;
    v92 = 2114;
    v93 = v39;
    _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving notification %{public}@: %{BOOL}d [ hasAlertContent: %{BOOL}d, shouldPresentAlert: %{BOOL}d settingsShouldSave: %{BOOL}d pipelineState: %{public}@]", buf, 0x38u);

    v13 = v82;
    v12 = v80;
  }

  if (v30)
  {
    v40 = [v11 identifier];
    v41 = self;
    v42 = [(UNCLocalNotificationRepository *)self _queue_notificationRecordForIdentifier:v40 forBundleIdentifier:v13];

    if (v42)
    {
      if (!v12 || (v43 = [v42 revisionNumber], v43 == objc_msgSend(v12, "integerValue")))
      {
        v44 = [v42 revisionNumber] + 1;
LABEL_33:
        v81 = v12;
        [v11 setRevisionNumber:v44];
        v59 = [v11 dictionaryRepresentationWithTruncation:{-[NSMutableSet containsObject:](v41->_unlimitedBodyBundleIdentifiers, "containsObject:", v13) ^ 1}];
        repository = v41->_repository;
        v83 = v13;
        if (v76)
        {
          [(UNCKeyedDataStoreRepository *)repository addObject:v59 forKey:v13];
        }

        else
        {
          [(UNCKeyedDataStoreRepository *)repository replaceObject:v59 forKey:v13];
        }
        v61 = ;
        if ([v61 hasChanges])
        {
          v62 = [v61 addedObjects];
          v63 = [(UNCLocalNotificationRepository *)v41 _notificationsForObjects:v62];

          [v61 replacedObjects];
          v64 = v75 = v59;
          v65 = [(UNCLocalNotificationRepository *)v41 _notificationsForObjects:v64];

          v66 = [v61 replacementObjects];
          [(UNCLocalNotificationRepository *)v41 _notificationsForObjects:v66];
          v67 = v79 = v27;

          v68 = [v61 removedObjects];
          [(UNCLocalNotificationRepository *)v41 _notificationsForObjects:v68];
          v70 = v69 = v25;

          v59 = v75;
          [(UNCLocalNotificationRepository *)v41 _queue_notifyObserversNotificationsDidAddNotifications:v63 replaceNotifications:v65 replacementNotifications:v67 removedNotifications:v70 shouldRepost:v76 shouldSync:1 forBundleIdentifier:v83];

          v25 = v69;
          v27 = v79;
        }

        v47 = 1;
        v12 = v81;
        v13 = v83;
        goto LABEL_39;
      }

      v53 = *MEMORY[0x1E6983368];
      if (!os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v49 = v53;
      v54 = [v11 identifier];
      [v54 un_logDigest];
      v55 = v78 = v27;
      v56 = v25;
      v57 = [v42 revisionNumber];
      v58 = [v12 integerValue];
      *buf = 138544130;
      v86 = v13;
      v87 = 2114;
      v88 = v55;
      v89 = 2050;
      *v90 = v57;
      v25 = v56;
      *&v90[8] = 2050;
      *v91 = v58;
      _os_log_impl(&dword_1DA7A9000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not save notification %{public}@: Revision number (%{public}ld) is different from the expected value (%{public}ld)", buf, 0x2Au);

      v27 = v78;
    }

    else
    {
      if (!v12)
      {
        v44 = 0;
        goto LABEL_33;
      }

      v48 = *MEMORY[0x1E6983368];
      if (!os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v49 = v48;
      v50 = [v11 identifier];
      [v50 un_logDigest];
      v52 = v51 = v27;
      *buf = 138543618;
      v86 = v13;
      v87 = 2114;
      v88 = v52;
      _os_log_impl(&dword_1DA7A9000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Could not save notification %{public}@: Already removed!", buf, 0x16u);

      v27 = v51;
    }

LABEL_31:
    v47 = 0;
    goto LABEL_39;
  }

  if (([v11 hasAlertContent] & 1) != 0 || objc_msgSend(v11, "hasSound") && objc_msgSend(v11, "shouldPlaySound"))
  {
    v45 = [MEMORY[0x1E695DEC8] arrayWithObject:v11];
    v46 = self;
    v42 = v45;
    [(UNCLocalNotificationRepository *)v46 _queue_notifyObserversNotificationsDidAddNotifications:v45 replaceNotifications:0 replacementNotifications:0 removedNotifications:0 shouldRepost:0 shouldSync:0 forBundleIdentifier:v13];
    v47 = 1;
LABEL_39:

    goto LABEL_40;
  }

  v47 = 1;
LABEL_40:

  v71 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)_queue_removeAllNotificationRecordsForBundleIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all delivered notifications", &v7, 0xCu);
  }

  [(UNCLocalNotificationRepository *)self _queue_removeNotificationRecordsPassingTest:&__block_literal_global_13 forBundleIdentifier:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeInvalidNotificationRecordsForBundleIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = *MEMORY[0x1E6983368];
  if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all delivered notifications that are no longer valid", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_settingsProvider);
  v7 = [WeakRetained notificationSettingsForBundleIdentifier:v4];

  v8 = objc_loadWeakRetained(&self->_settingsProvider);
  v9 = [v8 notificationSettingsForTopicsWithBundleIdentifier:v4];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__UNCLocalNotificationRepository__queue_removeInvalidNotificationRecordsForBundleIdentifier___block_invoke;
  v14[3] = &unk_1E85D78C8;
  v14[4] = self;
  v15 = v7;
  v16 = v9;
  v17 = v4;
  v10 = v4;
  v11 = v9;
  v12 = v7;
  [(UNCLocalNotificationRepository *)self _queue_removeNotificationRecordsPassingTest:v14 forBundleIdentifier:v10];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __93__UNCLocalNotificationRepository__queue_removeInvalidNotificationRecordsForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _shouldPersistNotificationRecord:v3 forBundleSettings:*(a1 + 40) perTopicSettings:*(a1 + 48)];
  if ((v4 & 1) == 0)
  {
    v5 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = v5;
      v8 = [v3 identifier];
      v9 = [v8 un_logDigest];
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing notification %{public}@ because applicable settings no longer require its persistence", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4 ^ 1u;
}

- (void)_queue_removeNotificationRecordsPassingTest:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  repository = self->_repository;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__UNCLocalNotificationRepository__queue_removeNotificationRecordsPassingTest_forBundleIdentifier___block_invoke;
  v12[3] = &unk_1E85D78F0;
  v13 = v6;
  v10 = v6;
  v11 = [(UNCKeyedDataStoreRepository *)repository removeObjectsPassingTest:v12 forKey:v8];
  [(UNCLocalNotificationRepository *)self _queue_notifyObserversWithReceipt:v11 bundleIdentifier:v8];
}

uint64_t __98__UNCLocalNotificationRepository__queue_removeNotificationRecordsPassingTest_forBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(UNSDictionaryToNotificationRecord + 2))(UNSDictionaryToNotificationRecord, a2);
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

- (void)_queue_removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  repository = self->_repository;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__UNCLocalNotificationRepository__queue_removeNotificationRecordsForIdentifiers_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E85D7880;
  v13 = v6;
  v10 = v6;
  v11 = [(UNCKeyedDataStoreRepository *)repository removeObjectsPassingTest:v12 forKey:v8];
  [(UNCLocalNotificationRepository *)self _queue_notifyObserversWithReceipt:v11 bundleIdentifier:v8];
}

uint64_t __98__UNCLocalNotificationRepository__queue_removeNotificationRecordsForIdentifiers_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = (*(UNSDictionaryToNotificationRecord + 2))(UNSDictionaryToNotificationRecord, a2);
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)_queue_removeSimilarNotificationRecords:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  queue = self->_queue;
  v8 = a4;
  dispatch_assert_queue_V2(queue);
  repository = self->_repository;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__UNCLocalNotificationRepository__queue_removeSimilarNotificationRecords_bundleIdentifier___block_invoke;
  v12[3] = &unk_1E85D7880;
  v13 = v6;
  v10 = v6;
  v11 = [(UNCKeyedDataStoreRepository *)repository removeObjectsPassingTest:v12 forKey:v8];
  [(UNCLocalNotificationRepository *)self _queue_notifyObserversWithReceipt:v11 bundleIdentifier:v8];
}

uint64_t __91__UNCLocalNotificationRepository__queue_removeSimilarNotificationRecords_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (*(UNSDictionaryToNotificationRecord + 2))(UNSDictionaryToNotificationRecord, a2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isSimilar:{v3, v10}])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_queue_removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(UNCKeyedDataStoreRepository *)self->_repository removeObjectsPassingTest:&__block_literal_global_23 forKey:v5];
  [(UNCLocalNotificationRepository *)self _queue_notifyObserversWithReceipt:v6 bundleIdentifier:v5];
}

uint64_t __104__UNCLocalNotificationRepository__queue_removeNotificationRecordsWithNonPushTriggerForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = (*(UNSDictionaryToNotificationRecord + 2))(UNSDictionaryToNotificationRecord, a2);
  v3 = [v2 triggerType];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"Push"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_queue_notifyObserversWithReceipt:(id)a3 bundleIdentifier:(id)a4
{
  v15 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if ([v15 hasChanges])
  {
    v7 = [v15 addedObjects];
    v8 = [(UNCLocalNotificationRepository *)self _notificationsForObjects:v7];

    v9 = [v15 replacedObjects];
    v10 = [(UNCLocalNotificationRepository *)self _notificationsForObjects:v9];

    v11 = [v15 replacementObjects];
    v12 = [(UNCLocalNotificationRepository *)self _notificationsForObjects:v11];

    v13 = [v15 removedObjects];
    v14 = [(UNCLocalNotificationRepository *)self _notificationsForObjects:v13];

    [(UNCLocalNotificationRepository *)self _queue_notifyObserversNotificationsDidAddNotifications:v8 replaceNotifications:v10 replacementNotifications:v12 removedNotifications:v14 shouldRepost:1 shouldSync:1 forBundleIdentifier:v6];
  }
}

- (id)_badgeNumberForBundleIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_not_V2(queue);
  v6 = [(UNCBadgeService *)self->_badgeService badgeNumberForBundleIdentifier:v5];

  return v6;
}

- (void)_setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([v11 isEqual:&unk_1F5663638])
  {

    v10 = 0;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10;
  [(UNCLocalNotificationRepository *)self _setBadgeValue:v10 forBundleIdentifier:v8 withCompletionHandler:v9];
}

- (void)_setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = [v8 numberWithInteger:a3];
  [(UNCLocalNotificationRepository *)self _setBadgeValue:v11 forBundleIdentifier:v10 withCompletionHandler:v9];
}

- (void)_setBadgeString:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([v11 isEqual:&stru_1F563BF08])
  {

    v10 = 0;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10;
  [(UNCLocalNotificationRepository *)self _setBadgeValue:v10 forBundleIdentifier:v8 withCompletionHandler:v9];
}

- (void)_setBadgeValue:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  badgeServiceQueue = self->_badgeServiceQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__UNCLocalNotificationRepository__setBadgeValue_forBundleIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E85D7808;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(badgeServiceQueue, v15);
}

- (void)_badge_queue_setBadgeValue:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  badgeServiceQueue = self->_badgeServiceQueue;
  v11 = a3;
  dispatch_assert_queue_V2(badgeServiceQueue);
  dispatch_assert_queue_not_V2(self->_queue);
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  LODWORD(badgeServiceQueue) = [(UNCBadgeService *)self->_badgeService setBadgeValue:v11 forBundleIdentifier:v8];

  if (badgeServiceQueue)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__UNCLocalNotificationRepository__badge_queue_setBadgeValue_forBundleIdentifier_withCompletionHandler___block_invoke;
    block[3] = &unk_1E85D7350;
    block[4] = self;
    v14 = v8;
    v15 = v9;
    dispatch_async(queue, block);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __103__UNCLocalNotificationRepository__badge_queue_setBadgeValue_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAllNotificationRecordsForBundleIdentifier:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_logNotification:(id)a3 forBundleIdentifier:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 shouldBadgeApplicationIcon])
  {
    v6 = [v7 hasBadge];
  }

  else
  {
    v6 = 0;
  }

  if ([v7 shouldPlaySound] && objc_msgSend(v7, "hasSound"))
  {
    v6 |= 2u;
  }

  if ([v7 shouldPresentAlert] && objc_msgSend(v7, "hasAlertContent"))
  {
    v6 |= 4u;
  }

  UNCPowerLogUserNotificationRequestEvent(v5, v6);
}

- (void)_queue_performMigration
{
  dispatch_assert_queue_V2(self->_queue);
  [(UNCLocalNotificationRepository *)self _queue_performMigrationForUserNotificationsStore];

  [(UNCLocalNotificationRepository *)self _queue_performMigrationForPushStore];
}

- (void)_queue_performMigrationForUserNotificationsStore
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = [(UNCKeyedDataStoreRepository *)self->_repository allKeys];
  objc_autoreleasePoolPop(v3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [(UNCLocalNotificationRepository *)self _queue_performMigrationForBundleIdentifier:v10, v13];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_queue_triggerInvalidationForFirstUnlock
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = [(UNCKeyedDataStoreRepository *)self->_repository allKeys];
  objc_autoreleasePoolPop(v3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(UNCKeyedObservable *)self->_observable notifyObserversKey:MEMORY[0x1E69E9820] usingBlock:3221225472, __74__UNCLocalNotificationRepository__queue_triggerInvalidationForFirstUnlock__block_invoke, &unk_1E85D6FE8, self, *(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __74__UNCLocalNotificationRepository__queue_triggerInvalidationForFirstUnlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 notificationRepository:*(a1 + 32) didDiscoverContentOnFirstUnlockForBundleIdentifier:*(a1 + 40)];
  }
}

- (void)_queue_performMigrationForPushStore
{
  v26[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndex:0];

  v20 = v4;
  v26[0] = v4;
  v26[1] = @"SpringBoard";
  v26[2] = @"PushStore";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v5 = [MEMORY[0x1E696AEC0] pathWithComponents:?];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 pathExtension];
        v15 = [v14 isEqualToString:@"pushstore"];

        if (v15)
        {
          v16 = objc_autoreleasePoolPush();
          v17 = [v5 stringByAppendingPathComponent:v13];
          [(UNCLocalNotificationRepository *)self _queue_performMigrationForPushStoreAtPath:v17];

          objc_autoreleasePoolPop(v16);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_queue_performMigrationForPushStoreAtPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  if ([v6 length])
  {
    v7 = *MEMORY[0x1E6983380];
    if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating notification repository", &v9, 0xCu);
    }

    [(UNCKeyedDataStoreRepository *)self->_repository migrateStoreAtPath:v4 forKey:v6];
  }

  [(UNCLocalNotificationRepository *)self _queue_performMigrationForBundleIdentifier:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_queue_performMigrationForBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unc_map:UNSNotificationRecordDictionaryMigration usingLibrarian:self->_librarian];
    if (([v6 isEqualToArray:v7] & 1) == 0)
    {
      v8 = *MEMORY[0x1E6983380];
      if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v11 = 138543618;
        v12 = v4;
        v13 = 2048;
        v14 = [v6 count];
        _os_log_impl(&dword_1DA7A9000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Migrating notification repository (%ld)", &v11, 0x16u);
      }

      [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v7 forKey:v4];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_queue_performValidation
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = [(UNCKeyedDataStoreRepository *)self->_repository allKeys];
  objc_autoreleasePoolPop(v3);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138543362;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [(UNCKeyedDataStoreRepository *)self->_repository objectsForKey:v11, v20];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 bs_filter:UNSNotificationRecordDictionaryValidation];
          if (([v13 isEqualToArray:v14] & 1) == 0)
          {
            v15 = *MEMORY[0x1E6983380];
            if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = [v14 count];
              *buf = 138543618;
              v26 = v11;
              v27 = 2048;
              v28 = v17;
              _os_log_impl(&dword_1DA7A9000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Filtering notification repository (%ld)", buf, 0x16u);
            }

            [(UNCKeyedDataStoreRepository *)self->_repository setObjects:v14 forKey:v11];
          }
        }

        else
        {
          v18 = *MEMORY[0x1E6983380];
          if (os_log_type_enabled(*MEMORY[0x1E6983380], OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v26 = v11;
            _os_log_error_impl(&dword_1DA7A9000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] Error reading notification repository. Deleting file.", buf, 0xCu);
          }

          [(UNCKeyedDataStoreRepository *)self->_repository removeStoreForKey:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldPersistNotificationRecord:(id)a3 forBundleSettings:(id)a4 perTopicSettings:(id)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 authorizationStatus])
  {
    if ([v8 authorizationStatus] == 2 || objc_msgSend(v8, "authorizationStatus") == 3)
    {
      v10 = [v7 topicIdentifiers];
      v11 = [v10 allObjects];

      v41 = v11;
      if ([v11 count])
      {
        v12 = [v7 topicIdentifiers];
        v13 = [v12 allObjects];
        v14 = [MEMORY[0x1E69832B0] emptySettings];
        v15 = [v9 objectsForKeys:v13 notFoundMarker:v14];
      }

      else if (v8)
      {
        v54[0] = v8;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      }

      else
      {
        v15 = 0;
      }

      v42 = v9;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = v15;
      v25 = [v24 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v25)
      {
        v26 = v25;
        LOBYTE(v20) = 0;
        v27 = *v44;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v44 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v43 + 1) + 8 * i);
            v30 = [v29 authorizationStatus] == 2 || objc_msgSend(v8, "authorizationStatus") == 3;
            v31 = [v29 notificationCenterSetting];
            v32 = [v29 lockScreenSetting];
            LODWORD(v20) = (v20 & 1) != 0 || (v31 == 2 || v32 == 2) && v30;
          }

          v26 = [v24 countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v26);
      }

      else
      {
        LODWORD(v20) = 0;
      }

      v34 = *MEMORY[0x1E6983368];
      v9 = v42;
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = [v7 identifier];
        v37 = [v36 un_logDigest];
        v38 = [v24 count];
        *buf = 138543874;
        v48 = v37;
        v49 = 1024;
        v50 = v20;
        v51 = 2048;
        v52 = v38;
        _os_log_impl(&dword_1DA7A9000, v35, OS_LOG_TYPE_DEFAULT, "[Persisting notification %{public}@: %d [applicableSettings: %lu]", buf, 0x1Cu);
      }
    }

    else
    {
      v21 = *MEMORY[0x1E6983368];
      LOBYTE(v20) = 0;
      if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v20 = [v7 identifier];
        v23 = [v20 un_logDigest];
        *buf = 138543362;
        v48 = v23;
        _os_log_impl(&dword_1DA7A9000, v22, OS_LOG_TYPE_DEFAULT, "[Not persisting notification %{public}@ because bundle is not authorized", buf, 0xCu);

        LOBYTE(v20) = 0;
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x1E6983368];
    if (os_log_type_enabled(*MEMORY[0x1E6983368], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v7 identifier];
      v19 = [v18 un_logDigest];
      *buf = 138543362;
      v48 = v19;
      _os_log_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_DEFAULT, "[Provisionally allowing persisting notification %{public}@ because bundle settings are not available", buf, 0xCu);
    }

    LOBYTE(v20) = 1;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v20;
}

- (UNCNotificationRepositoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UNCNotificationRepositorySettingsProvider)settingsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsProvider);

  return WeakRetained;
}

- (void)saveNotificationRecord:(void *)a3 targetRevisionNumber:shouldRepost:forBundleIdentifier:withCompletionHandler:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 identifier];
  v7 = [v6 un_logDigest];
  v9 = 138543618;
  v10 = a1;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Not delivering user visible notification %{public}@ because date is nil", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRecord:(void *)a1 targetRevisionNumber:(void *)a2 shouldRepost:forBundleIdentifier:withCompletionHandler:.cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  v5 = [v4 un_logDigest];
  v7 = 138543362;
  v8 = v5;
  _os_log_error_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_ERROR, "Not delivering user visible notification %{public}@ because bundleID is nil", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end