@interface UNCLocalNotificationClient
- (UNCLocalNotificationClient)initWithNotificationRepository:(id)a3 pendingNotificationRepository:(id)a4 notificationScheduleRepository:(id)a5 locationMonitor:(id)a6 bundleIdentifier:(id)a7 queue:(id)a8;
- (id)_dateFormatter;
- (id)_lastLocalNotificationFireDate;
- (id)_sanitizeNotificationRecords:(id)a3;
- (id)pendingNotificationRecords;
- (id)undeliveredNotificationRecords;
- (void)_fireNotification:(id)a3;
- (void)_invalidateNotificationRecordTimersAndRegionMonitors;
- (void)_invalidatePendingNotificationRecordRegionMonitors;
- (void)_invalidatePendingNotificationRecordTimers;
- (void)_queue_triggerDidFireForDate:(id)a3;
- (void)_queue_triggerDidFireForRegion:(id)a3;
- (void)_queue_triggerDidFireForTimer:(id)a3;
- (void)_setLastLocalNotificationFireDate:(id)a3;
- (void)_setPendingNotificationRecords:(id)a3;
- (void)_setRequestDateForPendingNotificationRecords:(id)a3;
- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)a3;
- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)a3;
- (void)_updateTimersForPendingNotificationRecords:(id)a3;
- (void)addPendingNotificationRecords:(id)a3;
- (void)dealloc;
- (void)handleApplicationStateRestore;
- (void)handleLocaleChange;
- (void)handleSignificantTimeChange;
- (void)invalidate;
- (void)locationMonitor:(id)a3 triggerDidFireForRegion:(id)a4 forBundleIdentifier:(id)a5;
- (void)pendingNotificationRecords;
- (void)removeAllPendingNotificationRecords;
- (void)removePendingNotificationRecords:(id)a3;
- (void)removePendingNotificationRecordsWithIdentifiers:(id)a3;
- (void)setPendingNotificationRecords:(id)a3;
@end

@implementation UNCLocalNotificationClient

- (id)_lastLocalNotificationFireDate
{
  v3 = [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository scheduleForBundleIdentifier:self->_bundleIdentifier];
  v4 = [v3 previousTriggerDate];
  if (v4)
  {
    v5 = v4;
    [v4 timeIntervalSinceNow];
    if (v6 > 0.0)
    {
      v7 = [MEMORY[0x1E695DF00] date];

      [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v7];
      v5 = v7;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
  }

  return v5;
}

- (void)_invalidatePendingNotificationRecordTimers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138543362;
    v8 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidate persistent timer", &v7, 0xCu);
  }

  [(PCPersistentTimer *)self->_localNotificationTimer invalidate];
  localNotificationTimer = self->_localNotificationTimer;
  self->_localNotificationTimer = 0;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_dateFormatter
{
  if (_dateFormatter___once != -1)
  {
    [UNCLocalNotificationClient _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatter;

  return v3;
}

uint64_t __44__UNCLocalNotificationClient__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateFormatter___dateFormatter;
  _dateFormatter___dateFormatter = v0;

  v2 = _dateFormatter___dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss'.'SSS Z"];
}

- (UNCLocalNotificationClient)initWithNotificationRepository:(id)a3 pendingNotificationRepository:(id)a4 notificationScheduleRepository:(id)a5 locationMonitor:(id)a6 bundleIdentifier:(id)a7 queue:(id)a8
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  dispatch_assert_queue_V2(v17);
  v26.receiver = self;
  v26.super_class = UNCLocalNotificationClient;
  v18 = [(UNCLocalNotificationClient *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationRepository, a3);
    objc_storeStrong(&v19->_notificationScheduleRepository, a5);
    objc_storeStrong(&v19->_pendingNotificationRepository, a4);
    objc_storeStrong(&v19->_locationMonitor, a6);
    [(UNCLocationMonitor *)v19->_locationMonitor addObserver:v19 forBundleIdentifier:v16];
    objc_storeStrong(&v19->_bundleIdentifier, a7);
    objc_storeStrong(&v19->_queue, a8);
    v20 = [(UNCLocalNotificationClient *)v19 _pendingNotificationRecords];
    v21 = [(UNCLocalNotificationClient *)v19 _sanitizeNotificationRecords:v20];
    [(UNCLocalNotificationClient *)v19 _updateTimersAndRegionMonitorsForPendingNotificationRecords:v21];
  }

  return v19;
}

- (void)dealloc
{
  [(UNCLocalNotificationClient *)self _invalidateNotificationRecordTimersAndRegionMonitors];
  [(UNCLocationMonitor *)self->_locationMonitor removeObserver:self forBundleIdentifier:self->_bundleIdentifier];
  v3.receiver = self;
  v3.super_class = UNCLocalNotificationClient;
  [(UNCLocalNotificationClient *)&v3 dealloc];
}

- (void)addPendingNotificationRecords:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [v4 count];
    v10 = [v4 valueForKey:@"identifier"];
    v11 = [v10 valueForKey:@"un_logDigest"];
    *buf = 138543874;
    v32 = bundleIdentifier;
    v33 = 2048;
    v34 = v9;
    v35 = 2114;
    v36 = v11;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Add %ld pending notifications: %{public}@", buf, 0x20u);
  }

  if (UNIsInternalInstall())
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self addPendingNotificationRecords:v4, v12];
    }
  }

  v13 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v13 count])
  {
    [v14 addObjectsFromArray:v13];
  }

  v24 = v13;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __60__UNCLocalNotificationClient_addPendingNotificationRecords___block_invoke;
        v25[3] = &unk_1E85D71A8;
        v25[4] = v20;
        v21 = [v14 indexesOfObjectsPassingTest:v25];
        if ([v21 count])
        {
          [v14 removeObjectsAtIndexes:v21];
        }

        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
  [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v22];

  [(UNCLocalNotificationClient *)self _setRequestDateForPendingNotificationRecords:v15];
  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v14];

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __60__UNCLocalNotificationClient_addPendingNotificationRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)setPendingNotificationRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [v4 count];
    v10 = [v4 valueForKey:@"identifier"];
    v11 = [v10 valueForKey:@"un_logDigest"];
    v15 = 138543874;
    v16 = bundleIdentifier;
    v17 = 2048;
    v18 = v9;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld pending notifications: %{public}@", &v15, 0x20u);
  }

  if (UNIsInternalInstall())
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self setPendingNotificationRecords:v4, v12];
    }
  }

  [(UNCLocalNotificationClient *)self _setRequestDateForPendingNotificationRecords:v4];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
  [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v13];

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v4];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)removePendingNotificationRecordsWithIdentifiers:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [v4 count];
    v9 = [v4 valueForKey:@"un_logDigest"];
    *buf = 138543874;
    v17 = bundleIdentifier;
    v18 = 2048;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove %ld pending notifications by identifier: %{public}@", buf, 0x20u);
  }

  v10 = [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository pendingNotificationRecordsForBundleIdentifier:self->_bundleIdentifier];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__UNCLocalNotificationClient_removePendingNotificationRecordsWithIdentifiers___block_invoke;
  v14[3] = &unk_1E85D71D0;
  v15 = v4;
  v11 = v4;
  v12 = [v10 bs_filter:v14];
  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v12];

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __78__UNCLocalNotificationClient_removePendingNotificationRecordsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)removePendingNotificationRecords:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    *buf = 138543618;
    v26 = bundleIdentifier;
    v27 = 2048;
    v28 = [v4 count];
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove %ld pending notifications by match", buf, 0x16u);
  }

  v9 = [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository pendingNotificationRecordsForBundleIdentifier:self->_bundleIdentifier];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __63__UNCLocalNotificationClient_removePendingNotificationRecords___block_invoke;
  v22 = &unk_1E85D71F8;
  v10 = v4;
  v23 = v10;
  v24 = self;
  v11 = [v9 bs_filter:&v19];
  v12 = [v11 count];
  v13 = [v9 count];
  v14 = v13 - [v10 count];
  v15 = *v5;
  v16 = *v5;
  if (v12 <= v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_bundleIdentifier;
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_1DA7A9000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove pending notifications succeeded", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(UNCLocalNotificationClient *)&self->_bundleIdentifier removePendingNotificationRecords:v15];
  }

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:v11];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __63__UNCLocalNotificationClient_removePendingNotificationRecords___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) uns_containsSimilarRecord:v3];
  if (v4)
  {
    v5 = *MEMORY[0x1E6983378];
    if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 40) + 8);
      v7 = v5;
      v8 = [v3 identifier];
      v9 = [v8 un_logDigest];
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will remove notification %{public}@ by match", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4 ^ 1u;
}

- (void)removeAllPendingNotificationRecords
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v6 = 138543362;
    v7 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove all pending notifications", &v6, 0xCu);
  }

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:MEMORY[0x1E695E0F0]];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)pendingNotificationRecords
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = MEMORY[0x1E6983378];
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v11 = 138543618;
    v12 = bundleIdentifier;
    v13 = 2048;
    v14 = [v3 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Load pending %ld notifications", &v11, 0x16u);
  }

  if (UNIsInternalInstall())
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      [(UNCLocalNotificationClient *)self pendingNotificationRecords];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)undeliveredNotificationRecords
{
  v3 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = v3;
  if (self->_lazy_pendingNotificationsAwaitingDelivery)
  {
    v5 = [v3 arrayByAddingObjectsFromArray:?];

    v4 = v5;
  }

  return v4;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);

  [(UNCLocalNotificationClient *)self _invalidateNotificationRecordTimersAndRegionMonitors];
}

- (void)handleApplicationStateRestore
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  [(UNCLocalNotificationClient *)self _updateTimersAndRegionMonitorsForPendingNotificationRecords:v3];
}

- (void)handleLocaleChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    v3 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:v3];
  }
}

- (void)handleSignificantTimeChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    v3 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:v3];
  }
}

- (void)_setRequestDateForPendingNotificationRecords:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF00] date];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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

        [*(*(&v11 + 1) + 8 * v9++) setRequestDate:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setPendingNotificationRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UNCLocalNotificationClient *)self _sanitizeNotificationRecords:v4];
  v6 = [v5 mutableCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__UNCLocalNotificationClient__setPendingNotificationRecords___block_invoke;
  v12[3] = &unk_1E85D7220;
  v12[4] = &v13;
  [v6 enumerateObjectsUsingBlock:v12];
  v7 = v14[3];
  if (v7 >= 0x15)
  {
    [v6 removeObjectsInRange:{20, v7 - 20}];
  }

  if ([v6 count] >= 0x41)
  {
    [v6 removeObjectsInRange:{0, objc_msgSend(v6, "count") - 64}];
  }

  v8 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v10 = [v6 count];
    *buf = 138543618;
    v18 = bundleIdentifier;
    v19 = 2048;
    v20 = v10;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Save pending %ld notifications to pending notification repository", buf, 0x16u);
  }

  [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository setPendingNotificationRecords:v6 forBundleIdentifier:self->_bundleIdentifier];
  [(UNCLocalNotificationClient *)self _updateTimersAndRegionMonitorsForPendingNotificationRecords:v6];
  _Block_object_dispose(&v13, 8);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__UNCLocalNotificationClient__setPendingNotificationRecords___block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v6 = [a2 triggerType];
  v7 = [v6 isEqualToString:@"Location"];

  if (v7)
  {
    v8 = 0;
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v8 = 1;
  }

  *a4 = v8;
}

- (id)_sanitizeNotificationRecords:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39 = self;
  v5 = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v41;
    *&v8 = 138543618;
    v36 = v8;
    v37 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v12);
        if (([v12 willNotifyUser] & 1) == 0)
        {
          v14 = [v12 badge];
          v15 = [v14 integerValue];

          if (!v15)
          {
            v30 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            bundleIdentifier = v39->_bundleIdentifier;
            v19 = v30;
            v32 = [v12 identifier];
            v33 = [v32 un_logDigest];
            *buf = v36;
            v45 = bundleIdentifier;
            v46 = 2114;
            v47 = v33;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Filtering out notification %{public}@ as it will not notify user on delivery", buf, 0x16u);

            goto LABEL_18;
          }
        }

        if (([v12 triggerRepeats] & 1) == 0)
        {
          v16 = [v12 date];

          if (v16)
          {
            v17 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            v18 = v39->_bundleIdentifier;
            v19 = v17;
            v20 = [v12 identifier];
            v21 = [v20 un_logDigest];
            v22 = [v12 date];
            *buf = 138543874;
            v45 = v18;
            v6 = v37;
            v46 = 2114;
            v47 = v21;
            v48 = 2114;
            v49 = v22;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Expiring out non-repeating notification %{public}@ because it triggered at %{public}@", buf, 0x20u);

LABEL_18:
            goto LABEL_19;
          }
        }

        v23 = [v12 requestDate];
        v24 = [v13 willTriggerAfterDate:v5 withRequestedDate:v23];

        if (v24)
        {
          [v38 addObject:v12];
        }

        else
        {
          v25 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v26 = v39->_bundleIdentifier;
            v27 = v25;
            v28 = [v12 identifier];
            v29 = [v28 un_logDigest];
            *buf = 138543874;
            v45 = v26;
            v6 = v37;
            v46 = 2114;
            v47 = v29;
            v48 = 2114;
            v49 = v5;
            _os_log_impl(&dword_1DA7A9000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Expiring out notification %{public}@ because it won't trigger after %{public}@", buf, 0x20u);
          }
        }

LABEL_19:
      }

      v9 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v9);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v38;
}

- (void)_fireNotification:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [v4 identifier];
    v9 = [v8 un_logDigest];
    v10 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v10 stringFromDate:v11];
    *buf = 138543874;
    v23 = bundleIdentifier;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deliver local notification %{public}@ at %{public}@", buf, 0x20u);
  }

  lazy_pendingNotificationsAwaitingDelivery = self->_lazy_pendingNotificationsAwaitingDelivery;
  if (!lazy_pendingNotificationsAwaitingDelivery)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = self->_lazy_pendingNotificationsAwaitingDelivery;
    self->_lazy_pendingNotificationsAwaitingDelivery = v14;

    lazy_pendingNotificationsAwaitingDelivery = self->_lazy_pendingNotificationsAwaitingDelivery;
  }

  [(NSMutableArray *)lazy_pendingNotificationsAwaitingDelivery addObject:v4];
  v17 = self->_bundleIdentifier;
  notificationRepository = self->_notificationRepository;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__UNCLocalNotificationClient__fireNotification___block_invoke;
  v20[3] = &unk_1E85D7248;
  v20[4] = self;
  v21 = v4;
  v18 = v4;
  [(UNCNotificationRepository *)notificationRepository saveNotificationRecord:v18 shouldRepost:1 forBundleIdentifier:v17 withCompletionHandler:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __48__UNCLocalNotificationClient__fireNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x1E6983390];
    if (os_log_type_enabled(*MEMORY[0x1E6983390], OS_LOG_TYPE_ERROR))
    {
      __48__UNCLocalNotificationClient__fireNotification___block_invoke_cold_1(a1, v5, v4);
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__UNCLocalNotificationClient__fireNotification___block_invoke_15;
  v9[3] = &unk_1E85D6E70;
  v9[4] = v7;
  v10 = v6;
  dispatch_async(v8, v9);
}

- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)a3
{
  v4 = a3;
  [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:v4];
  [(UNCLocalNotificationClient *)self _updateRegionMonitorsForPendingNotificationRecords:v4];
}

- (void)_invalidateNotificationRecordTimersAndRegionMonitors
{
  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordTimers];

  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordRegionMonitors];
}

- (void)_queue_triggerDidFireForTimer:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 1u);
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [v9 stringFromDate:v4];
    *buf = 138543618;
    v22 = bundleIdentifier;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persistent timer fired at %{public}@", buf, 0x16u);
  }

  AssertionID = 0;
  v11 = self->_bundleIdentifier;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.usernotifications.time.%@-%ld", v11, ++_queue_triggerDidFireForTimer__count];
  v27[0] = @"AssertType";
  v27[1] = @"AssertLevel";
  v28[0] = @"NoIdleSleepAssertion";
  v28[1] = &unk_1F5663590;
  v27[2] = @"AssertName";
  v27[3] = @"AssertionOnBehalfOfBundleID";
  v13 = self->_bundleIdentifier;
  v28[2] = v12;
  v28[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v15 = IOPMAssertionCreateWithProperties(v14, &AssertionID);
  if (v15)
  {
    v16 = v15;
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v19 = self->_bundleIdentifier;
      *buf = 138543874;
      v22 = v19;
      v23 = 2114;
      v24 = v12;
      v25 = 1024;
      v26 = v16;
      _os_log_error_impl(&dword_1DA7A9000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to take power assertion %{public}@: %#x", buf, 0x1Cu);
    }
  }

  [(UNCLocalNotificationClient *)self _queue_triggerDidFireForDate:v4];
  if (AssertionID)
  {
    IOPMAssertionRelease(AssertionID);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_queue_triggerDidFireForDate:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v67 = a3;
  v4 = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  v64 = v4;
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [v9 stringFromDate:v64];
    v11 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v12 = [v11 stringFromDate:v67];
    *buf = 138543874;
    v79 = bundleIdentifier;
    v80 = 2114;
    v81 = v10;
    v82 = 2114;
    v83 = v12;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Find notifications with current trigger date after last fire date %{public}@ and before %{public}@", buf, 0x20u);

    v5 = MEMORY[0x1E6983378];
    v4 = v64;
  }

  v65 = self;
  v13 = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v13;
  v68 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
  if (v68)
  {
    v15 = *v74;
    *&v14 = 138543874;
    v53 = v14;
    v63 = *v74;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v73 + 1) + 8 * i);
        v18 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v17);
        v19 = [v17 requestDate];
        v20 = [v18 nextTriggerDateAfterLastTriggerDate:v4 withRequestedDate:v19];

        if (!v20)
        {
          v31 = *v5;
          if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          loga = v65->_bundleIdentifier;
          v30 = v31;
          v32 = [v17 identifier];
          v33 = [v32 un_logDigest];
          v34 = [(UNCLocalNotificationClient *)v65 _dateFormatter];
          v35 = [v17 requestDate];
          v36 = [v34 stringFromDate:v35];
          *buf = v53;
          v79 = loga;
          v80 = 2114;
          v81 = v33;
          v82 = 2114;
          v83 = v36;
          _os_log_impl(&dword_1DA7A9000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has no trigger date", buf, 0x20u);

          v5 = MEMORY[0x1E6983378];
          v4 = v64;

          v15 = v63;
          goto LABEL_14;
        }

        v21 = [v20 compare:v67];
        v22 = *v5;
        v23 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
        if (v21 == 1)
        {
          if (!v23)
          {
            goto LABEL_18;
          }

          v57 = v65->_bundleIdentifier;
          log = v22;
          v24 = [v17 identifier];
          v55 = [v24 un_logDigest];
          v25 = [(UNCLocalNotificationClient *)v65 _dateFormatter];
          v26 = [v17 requestDate];
          v27 = [v25 stringFromDate:v26];
          v28 = [(UNCLocalNotificationClient *)v65 _dateFormatter];
          v29 = [v28 stringFromDate:v20];
          *buf = 138544130;
          v79 = v57;
          v80 = 2114;
          v81 = v55;
          v82 = 2114;
          v83 = v27;
          v84 = 2114;
          v85 = v29;
          v30 = log;
          _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a late trigger date %{public}@", buf, 0x2Au);

          v15 = v63;
          v4 = v64;

          v5 = MEMORY[0x1E6983378];
LABEL_14:

          goto LABEL_18;
        }

        if (v23)
        {
          v56 = v65->_bundleIdentifier;
          v58 = v22;
          logb = [v17 identifier];
          v54 = [logb un_logDigest];
          v37 = [(UNCLocalNotificationClient *)v65 _dateFormatter];
          v38 = [v17 requestDate];
          v39 = [v37 stringFromDate:v38];
          v40 = [(UNCLocalNotificationClient *)v65 _dateFormatter];
          v41 = [v40 stringFromDate:v20];
          *buf = 138544130;
          v79 = v56;
          v80 = 2114;
          v81 = v54;
          v82 = 2114;
          v83 = v39;
          v84 = 2114;
          v85 = v41;
          _os_log_impl(&dword_1DA7A9000, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a current trigger date %{public}@", buf, 0x2Au);

          v15 = v63;
          v5 = MEMORY[0x1E6983378];

          v4 = v64;
        }

        [v17 setDate:{v20, v53}];
        [v59 addObject:v17];
LABEL_18:
      }

      v68 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v68);
  }

  v42 = [v59 sortedArrayUsingComparator:&__block_literal_global_40];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v43 = v59;
  v44 = [v43 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v70;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v70 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(UNCLocalNotificationClient *)v65 _fireNotification:*(*(&v69 + 1) + 8 * j), v53];
      }

      v45 = [v43 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v45);
  }

  v48 = v4;
  v49 = [v43 lastObject];
  v50 = [v49 date];

  v51 = v48;
  if ([v48 compare:v50] == -1)
  {
    v51 = v50;
  }

  [(UNCLocalNotificationClient *)v65 _setLastLocalNotificationFireDate:v51, v53];
  [(UNCLocalNotificationClient *)v65 _setPendingNotificationRecords:obj];

  v52 = *MEMORY[0x1E69E9840];
}

uint64_t __59__UNCLocalNotificationClient__queue_triggerDidFireForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_setLastLocalNotificationFireDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UNCNotificationSchedule);
  [(UNCNotificationSchedule *)v5 setPreviousTriggerDate:v4];

  [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository setSchedule:v5 forBundleIdentifier:self->_bundleIdentifier];
}

- (void)_updateTimersForPendingNotificationRecords:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [v4 count];
    monitoringLocaleAndTimeChanges = self->_monitoringLocaleAndTimeChanges;
    *buf = 138543874;
    v75 = bundleIdentifier;
    v76 = 2048;
    v77 = v8;
    v78 = 1024;
    LODWORD(v79) = monitoringLocaleAndTimeChanges;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update timers for %ld pending notifications (monitoring: %d)", buf, 0x1Cu);
  }

  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordTimers];
  v10 = [MEMORY[0x1E695DF70] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  v58 = self;
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    do
    {
      v14 = 0;
      do
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v70 + 1) + 8 * v14);
        if (([v15 willNotifyUser] & 1) != 0 || (objc_msgSend(v15, "badge"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "integerValue"), v16, v17 >= 1))
        {
          [v10 addObject:v15];
        }

        else
        {
          v18 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v58->_bundleIdentifier;
            v20 = v18;
            v21 = [v15 identifier];
            v22 = [v21 un_logDigest];
            *buf = 138543618;
            v75 = v19;
            self = v58;
            v76 = 2114;
            v77 = v22;
            _os_log_impl(&dword_1DA7A9000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not scheduling notification %{public}@ that does nothing when fired", buf, 0x16u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v23 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      v12 = v23;
    }

    while (v23);
  }

  v64 = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v24 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_bundleIdentifier;
    v26 = v24;
    v27 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v28 = [v27 stringFromDate:v64];
    *buf = 138543618;
    v75 = v25;
    v76 = 2114;
    v77 = v28;
    _os_log_impl(&dword_1DA7A9000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Find next notification with current trigger date after last fire date %{public}@", buf, 0x16u);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v29 = v10;
  v65 = [v29 countByEnumeratingWithState:&v66 objects:v82 count:16];
  if (v65)
  {
    v30 = 0;
    v31 = *v67;
    v55 = *v67;
    v56 = v29;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v67 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v66 + 1) + 8 * i);
        v34 = (*(UNSNotificationRecordToUNNotificationTrigger + 2))(UNSNotificationRecordToUNNotificationTrigger, v33);
        v35 = [v33 requestDate];
        v36 = [v34 nextTriggerDateAfterLastTriggerDate:v64 withRequestedDate:v35];
        v37 = *MEMORY[0x1E6983378];
        if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
        {
          v60 = v58->_bundleIdentifier;
          log = v37;
          v62 = [v33 identifier];
          v59 = [v62 un_logDigest];
          v38 = [(UNCLocalNotificationClient *)v58 _dateFormatter];
          v39 = [v33 requestDate];
          v40 = [v38 stringFromDate:v39];
          v41 = [(UNCLocalNotificationClient *)v58 _dateFormatter];
          [v41 stringFromDate:v36];
          v42 = v63 = v30;
          *buf = 138544130;
          v75 = v60;
          v76 = 2114;
          v77 = v59;
          v78 = 2114;
          v79 = v40;
          v80 = 2114;
          v81 = v42;
          _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a trigger date %{public}@", buf, 0x2Au);

          v29 = v56;
          v31 = v55;

          v30 = v63;
        }

        if (v36)
        {
          if (v30)
          {
            v43 = [v30 earlierDate:v36];

            v30 = v43;
          }

          else
          {
            v30 = v36;
          }
        }
      }

      v65 = [v29 countByEnumeratingWithState:&v66 objects:v82 count:16];
    }

    while (v65);

    self = v58;
    if (v30)
    {
      v44 = *MEMORY[0x1E6983378];
      if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
      {
        v45 = v58->_bundleIdentifier;
        v46 = v44;
        v47 = [(UNCLocalNotificationClient *)v58 _dateFormatter];
        v48 = [v47 stringFromDate:v30];
        *buf = 138543618;
        v75 = v45;
        v76 = 2114;
        v77 = v48;
        _os_log_impl(&dword_1DA7A9000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling persistent timer for next local notification at %{public}@", buf, 0x16u);
      }

      v49 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithFireDate:v30 serviceIdentifier:v58->_bundleIdentifier target:v58 selector:sel__queue_triggerDidFireForTimer_ userInfo:0];
      localNotificationTimer = v58->_localNotificationTimer;
      v58->_localNotificationTimer = v49;

      [(PCPersistentTimer *)v58->_localNotificationTimer setMinimumEarlyFireProportion:1.0];
      v51 = 1;
      [(PCPersistentTimer *)v58->_localNotificationTimer setUserVisible:1];
      [(PCPersistentTimer *)v58->_localNotificationTimer scheduleInQueue:v58->_queue];
      goto LABEL_39;
    }
  }

  else
  {
  }

  v52 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v53 = self->_bundleIdentifier;
    *buf = 138543362;
    v75 = v53;
    _os_log_impl(&dword_1DA7A9000, v52, OS_LOG_TYPE_DEFAULT, "[%{public}@] No upcoming local notifications", buf, 0xCu);
  }

  v51 = 0;
  v30 = 0;
LABEL_39:
  self->_monitoringLocaleAndTimeChanges = v51;

  v54 = *MEMORY[0x1E69E9840];
}

- (void)locationMonitor:(id)a3 triggerDidFireForRegion:(id)a4 forBundleIdentifier:(id)a5
{
  v6 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__UNCLocalNotificationClient_locationMonitor_triggerDidFireForRegion_forBundleIdentifier___block_invoke;
  v9[3] = &unk_1E85D6E70;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)_queue_triggerDidFireForRegion:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 2u);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [v4 identifier];
    v9 = [v8 un_logDigest];
    *buf = 138543618;
    v49 = bundleIdentifier;
    v50 = 2114;
    v51 = v9;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location region fired: region=%{public}@", buf, 0x16u);
  }

  v10 = [(UNCLocationMonitor *)self->_locationMonitor isBundleIdentifierAuthorizedForRegionMonitoring:self->_bundleIdentifier];
  v34 = v4;
  v36 = [v4 identifier];
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = self;
  [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v45 = 0u;
  v11 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = [v15 triggerType];
        if ([v16 isEqualToString:@"Location"])
        {
          v17 = [v15 triggerRegion];
          v18 = [v17 identifier];
          v19 = [v18 isEqual:v36];

          if (v19)
          {
            v20 = [MEMORY[0x1E695DF00] date];
            [v15 setDate:v20];

            [v35 addObject:v15];
          }
        }

        else
        {
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v12);
  }

  if ([v35 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = v35;
    v22 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
    v23 = v33;
    if (v22)
    {
      v24 = v22;
      v25 = *v39;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v21);
          }

          if (v10)
          {
            [(UNCLocalNotificationClient *)v33 _fireNotification:*(*(&v38 + 1) + 8 * j)];
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v24);
    }

    v27 = v34;
  }

  else
  {
    v28 = *MEMORY[0x1E6983378];
    v23 = self;
    v27 = v34;
    if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = [v34 identifier];
      v31 = [v30 un_logDigest];
      *buf = 138543362;
      v49 = v31;
      _os_log_impl(&dword_1DA7A9000, v29, OS_LOG_TYPE_DEFAULT, "Region %{public}@ fired which isn't associated with a notification", buf, 0xCu);
    }
  }

  [(UNCLocalNotificationClient *)v23 _setPendingNotificationRecords:obj];

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_invalidatePendingNotificationRecordRegionMonitors
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v6 = 138543362;
    v7 = bundleIdentifier;
    _os_log_impl(&dword_1DA7A9000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidate region monitors", &v6, 0xCu);
  }

  [(UNCLocationMonitor *)self->_locationMonitor setMonitoredRegions:0 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:0];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    *buf = 138543618;
    v24 = bundleIdentifier;
    v25 = 2048;
    v26 = [v4 count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update regions for %ld pending notifications", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 triggerType];
        if ([v15 isEqualToString:@"Location"])
        {
          v16 = [v14 triggerRegion];

          if (!v16)
          {
            continue;
          }

          v15 = [v14 triggerRegion];
          [v8 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(UNCLocalNotificationClient *)self _setMonitoredRegions:v8];
  v17 = *MEMORY[0x1E69E9840];
}

- (void)addPendingNotificationRecords:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 8);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1DA7A9000, a2, a3, "[%{public}@] Add pending notifications: notifications=%{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setPendingNotificationRecords:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 8);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1DA7A9000, a2, a3, "[%{public}@] Set pending notifications: notifications=%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removePendingNotificationRecords:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Did not remove all expected pending notifications", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)pendingNotificationRecords
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = a2;
  v7 = 138543874;
  v8 = v4;
  v9 = 2048;
  v10 = [a3 count];
  v11 = 2114;
  v12 = a3;
  _os_log_debug_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Load pending %ld notifications: notifications=%{public}@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void __48__UNCLocalNotificationClient__fireNotification___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = a2;
  v7 = [v4 identifier];
  v8 = [v7 un_logDigest];
  v10 = 138543874;
  v11 = v5;
  v12 = 2114;
  v13 = v8;
  v14 = 2114;
  v15 = a3;
  _os_log_error_impl(&dword_1DA7A9000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Not delivering user visible local notification %{public}@ [ error=%{public}@ ]", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end