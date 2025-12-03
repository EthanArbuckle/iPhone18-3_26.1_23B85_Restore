@interface UNCLocalNotificationClient
- (UNCLocalNotificationClient)initWithNotificationRepository:(id)repository pendingNotificationRepository:(id)notificationRepository notificationScheduleRepository:(id)scheduleRepository locationMonitor:(id)monitor bundleIdentifier:(id)identifier queue:(id)queue;
- (id)_dateFormatter;
- (id)_lastLocalNotificationFireDate;
- (id)_sanitizeNotificationRecords:(id)records;
- (id)pendingNotificationRecords;
- (id)undeliveredNotificationRecords;
- (void)_fireNotification:(id)notification;
- (void)_invalidateNotificationRecordTimersAndRegionMonitors;
- (void)_invalidatePendingNotificationRecordRegionMonitors;
- (void)_invalidatePendingNotificationRecordTimers;
- (void)_queue_triggerDidFireForDate:(id)date;
- (void)_queue_triggerDidFireForRegion:(id)region;
- (void)_queue_triggerDidFireForTimer:(id)timer;
- (void)_setLastLocalNotificationFireDate:(id)date;
- (void)_setPendingNotificationRecords:(id)records;
- (void)_setRequestDateForPendingNotificationRecords:(id)records;
- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)records;
- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)records;
- (void)_updateTimersForPendingNotificationRecords:(id)records;
- (void)addPendingNotificationRecords:(id)records;
- (void)dealloc;
- (void)handleApplicationStateRestore;
- (void)handleLocaleChange;
- (void)handleSignificantTimeChange;
- (void)invalidate;
- (void)locationMonitor:(id)monitor triggerDidFireForRegion:(id)region forBundleIdentifier:(id)identifier;
- (void)pendingNotificationRecords;
- (void)removeAllPendingNotificationRecords;
- (void)removePendingNotificationRecords:(id)records;
- (void)removePendingNotificationRecordsWithIdentifiers:(id)identifiers;
- (void)setPendingNotificationRecords:(id)records;
@end

@implementation UNCLocalNotificationClient

- (id)_lastLocalNotificationFireDate
{
  v3 = [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository scheduleForBundleIdentifier:self->_bundleIdentifier];
  previousTriggerDate = [v3 previousTriggerDate];
  if (previousTriggerDate)
  {
    distantPast = previousTriggerDate;
    [previousTriggerDate timeIntervalSinceNow];
    if (v6 > 0.0)
    {
      date = [MEMORY[0x1E695DF00] date];

      [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:date];
      distantPast = date;
    }
  }

  else
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  return distantPast;
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

- (UNCLocalNotificationClient)initWithNotificationRepository:(id)repository pendingNotificationRepository:(id)notificationRepository notificationScheduleRepository:(id)scheduleRepository locationMonitor:(id)monitor bundleIdentifier:(id)identifier queue:(id)queue
{
  repositoryCopy = repository;
  notificationRepositoryCopy = notificationRepository;
  scheduleRepositoryCopy = scheduleRepository;
  monitorCopy = monitor;
  identifierCopy = identifier;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v26.receiver = self;
  v26.super_class = UNCLocalNotificationClient;
  v18 = [(UNCLocalNotificationClient *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationRepository, repository);
    objc_storeStrong(&v19->_notificationScheduleRepository, scheduleRepository);
    objc_storeStrong(&v19->_pendingNotificationRepository, notificationRepository);
    objc_storeStrong(&v19->_locationMonitor, monitor);
    [(UNCLocationMonitor *)v19->_locationMonitor addObserver:v19 forBundleIdentifier:identifierCopy];
    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    objc_storeStrong(&v19->_queue, queue);
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)v19 _pendingNotificationRecords];
    v21 = [(UNCLocalNotificationClient *)v19 _sanitizeNotificationRecords:_pendingNotificationRecords];
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

- (void)addPendingNotificationRecords:(id)records
{
  v37 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [recordsCopy count];
    v10 = [recordsCopy valueForKey:@"identifier"];
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
      [(UNCLocalNotificationClient *)self addPendingNotificationRecords:recordsCopy, v12];
    }
  }

  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([_pendingNotificationRecords count])
  {
    [v14 addObjectsFromArray:_pendingNotificationRecords];
  }

  v24 = _pendingNotificationRecords;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = recordsCopy;
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

- (void)setPendingNotificationRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dispatch_assert_queue_V2(self->_queue);
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    v9 = [recordsCopy count];
    v10 = [recordsCopy valueForKey:@"identifier"];
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
      [(UNCLocalNotificationClient *)self setPendingNotificationRecords:recordsCopy, v12];
    }
  }

  [(UNCLocalNotificationClient *)self _setRequestDateForPendingNotificationRecords:recordsCopy];
  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1.0];
  [(UNCLocalNotificationClient *)self _setLastLocalNotificationFireDate:v13];

  [(UNCLocalNotificationClient *)self _setPendingNotificationRecords:recordsCopy];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)removePendingNotificationRecordsWithIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_queue);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [identifiersCopy count];
    v9 = [identifiersCopy valueForKey:@"un_logDigest"];
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
  v15 = identifiersCopy;
  v11 = identifiersCopy;
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

- (void)removePendingNotificationRecords:(id)records
{
  v29 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
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
    v28 = [recordsCopy count];
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove %ld pending notifications by match", buf, 0x16u);
  }

  v9 = [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository pendingNotificationRecordsForBundleIdentifier:self->_bundleIdentifier];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __63__UNCLocalNotificationClient_removePendingNotificationRecords___block_invoke;
  v22 = &unk_1E85D71F8;
  v10 = recordsCopy;
  v23 = v10;
  selfCopy = self;
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
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = MEMORY[0x1E6983378];
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v11 = 138543618;
    v12 = bundleIdentifier;
    v13 = 2048;
    v14 = [_pendingNotificationRecords count];
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

  return _pendingNotificationRecords;
}

- (id)undeliveredNotificationRecords
{
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v4 = _pendingNotificationRecords;
  if (self->_lazy_pendingNotificationsAwaitingDelivery)
  {
    v5 = [_pendingNotificationRecords arrayByAddingObjectsFromArray:?];

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
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  [(UNCLocalNotificationClient *)self _updateTimersAndRegionMonitorsForPendingNotificationRecords:_pendingNotificationRecords];
}

- (void)handleLocaleChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:_pendingNotificationRecords];
  }
}

- (void)handleSignificantTimeChange
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_monitoringLocaleAndTimeChanges)
  {
    _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
    [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:_pendingNotificationRecords];
  }
}

- (void)_setRequestDateForPendingNotificationRecords:(id)records
{
  v16 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  date = [MEMORY[0x1E695DF00] date];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = recordsCopy;
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

        [*(*(&v11 + 1) + 8 * v9++) setRequestDate:{date, v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_setPendingNotificationRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = [(UNCLocalNotificationClient *)self _sanitizeNotificationRecords:recordsCopy];
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

- (id)_sanitizeNotificationRecords:(id)records
{
  v51 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  selfCopy = self;
  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = recordsCopy;
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
          badge = [v12 badge];
          integerValue = [badge integerValue];

          if (!integerValue)
          {
            v30 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            bundleIdentifier = selfCopy->_bundleIdentifier;
            v19 = v30;
            identifier = [v12 identifier];
            un_logDigest = [identifier un_logDigest];
            *buf = v36;
            v45 = bundleIdentifier;
            v46 = 2114;
            v47 = un_logDigest;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Filtering out notification %{public}@ as it will not notify user on delivery", buf, 0x16u);

            goto LABEL_18;
          }
        }

        if (([v12 triggerRepeats] & 1) == 0)
        {
          date = [v12 date];

          if (date)
          {
            v17 = *MEMORY[0x1E6983378];
            if (!os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            v18 = selfCopy->_bundleIdentifier;
            v19 = v17;
            identifier2 = [v12 identifier];
            un_logDigest2 = [identifier2 un_logDigest];
            date2 = [v12 date];
            *buf = 138543874;
            v45 = v18;
            v6 = v37;
            v46 = 2114;
            v47 = un_logDigest2;
            v48 = 2114;
            v49 = date2;
            _os_log_impl(&dword_1DA7A9000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Expiring out non-repeating notification %{public}@ because it triggered at %{public}@", buf, 0x20u);

LABEL_18:
            goto LABEL_19;
          }
        }

        requestDate = [v12 requestDate];
        v24 = [v13 willTriggerAfterDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];

        if (v24)
        {
          [v38 addObject:v12];
        }

        else
        {
          v25 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v26 = selfCopy->_bundleIdentifier;
            v27 = v25;
            identifier3 = [v12 identifier];
            un_logDigest3 = [identifier3 un_logDigest];
            *buf = 138543874;
            v45 = v26;
            v6 = v37;
            v46 = 2114;
            v47 = un_logDigest3;
            v48 = 2114;
            v49 = _lastLocalNotificationFireDate;
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

- (void)_fireNotification:(id)notification
{
  v28 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    identifier = [notificationCopy identifier];
    un_logDigest = [identifier un_logDigest];
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    date = [MEMORY[0x1E695DF00] date];
    v12 = [_dateFormatter stringFromDate:date];
    *buf = 138543874;
    v23 = bundleIdentifier;
    v24 = 2114;
    v25 = un_logDigest;
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

  [(NSMutableArray *)lazy_pendingNotificationsAwaitingDelivery addObject:notificationCopy];
  v17 = self->_bundleIdentifier;
  notificationRepository = self->_notificationRepository;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__UNCLocalNotificationClient__fireNotification___block_invoke;
  v20[3] = &unk_1E85D7248;
  v20[4] = self;
  v21 = notificationCopy;
  v18 = notificationCopy;
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

- (void)_updateTimersAndRegionMonitorsForPendingNotificationRecords:(id)records
{
  recordsCopy = records;
  [(UNCLocalNotificationClient *)self _updateTimersForPendingNotificationRecords:recordsCopy];
  [(UNCLocalNotificationClient *)self _updateRegionMonitorsForPendingNotificationRecords:recordsCopy];
}

- (void)_invalidateNotificationRecordTimersAndRegionMonitors
{
  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordTimers];

  [(UNCLocalNotificationClient *)self _invalidatePendingNotificationRecordRegionMonitors];
}

- (void)_queue_triggerDidFireForTimer:(id)timer
{
  v28[4] = *MEMORY[0x1E69E9840];
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 1u);
  date = [MEMORY[0x1E695DF00] date];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [_dateFormatter stringFromDate:date];
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

  [(UNCLocalNotificationClient *)self _queue_triggerDidFireForDate:date];
  if (AssertionID)
  {
    IOPMAssertionRelease(AssertionID);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_queue_triggerDidFireForDate:(id)date
{
  v87 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v5 = MEMORY[0x1E6983378];
  v6 = *MEMORY[0x1E6983378];
  v64 = _lastLocalNotificationFireDate;
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = v6;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v10 = [_dateFormatter stringFromDate:v64];
    _dateFormatter2 = [(UNCLocalNotificationClient *)self _dateFormatter];
    v12 = [_dateFormatter2 stringFromDate:dateCopy];
    *buf = 138543874;
    v79 = bundleIdentifier;
    v80 = 2114;
    v81 = v10;
    v82 = 2114;
    v83 = v12;
    _os_log_impl(&dword_1DA7A9000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Find notifications with current trigger date after last fire date %{public}@ and before %{public}@", buf, 0x20u);

    v5 = MEMORY[0x1E6983378];
    _lastLocalNotificationFireDate = v64;
  }

  selfCopy = self;
  _pendingNotificationRecords = [(UNCLocalNotificationClient *)self _pendingNotificationRecords];
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = _pendingNotificationRecords;
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
        requestDate = [v17 requestDate];
        v20 = [v18 nextTriggerDateAfterLastTriggerDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];

        if (!v20)
        {
          v31 = *v5;
          if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          loga = selfCopy->_bundleIdentifier;
          v30 = v31;
          identifier = [v17 identifier];
          un_logDigest = [identifier un_logDigest];
          _dateFormatter3 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate2 = [v17 requestDate];
          v36 = [_dateFormatter3 stringFromDate:requestDate2];
          *buf = v53;
          v79 = loga;
          v80 = 2114;
          v81 = un_logDigest;
          v82 = 2114;
          v83 = v36;
          _os_log_impl(&dword_1DA7A9000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has no trigger date", buf, 0x20u);

          v5 = MEMORY[0x1E6983378];
          _lastLocalNotificationFireDate = v64;

          v15 = v63;
          goto LABEL_14;
        }

        v21 = [v20 compare:dateCopy];
        v22 = *v5;
        v23 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
        if (v21 == 1)
        {
          if (!v23)
          {
            goto LABEL_18;
          }

          v57 = selfCopy->_bundleIdentifier;
          log = v22;
          identifier2 = [v17 identifier];
          un_logDigest2 = [identifier2 un_logDigest];
          _dateFormatter4 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate3 = [v17 requestDate];
          v27 = [_dateFormatter4 stringFromDate:requestDate3];
          _dateFormatter5 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          v29 = [_dateFormatter5 stringFromDate:v20];
          *buf = 138544130;
          v79 = v57;
          v80 = 2114;
          v81 = un_logDigest2;
          v82 = 2114;
          v83 = v27;
          v84 = 2114;
          v85 = v29;
          v30 = log;
          _os_log_impl(&dword_1DA7A9000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a late trigger date %{public}@", buf, 0x2Au);

          v15 = v63;
          _lastLocalNotificationFireDate = v64;

          v5 = MEMORY[0x1E6983378];
LABEL_14:

          goto LABEL_18;
        }

        if (v23)
        {
          v56 = selfCopy->_bundleIdentifier;
          v58 = v22;
          logb = [v17 identifier];
          un_logDigest3 = [logb un_logDigest];
          _dateFormatter6 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate4 = [v17 requestDate];
          v39 = [_dateFormatter6 stringFromDate:requestDate4];
          _dateFormatter7 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          v41 = [_dateFormatter7 stringFromDate:v20];
          *buf = 138544130;
          v79 = v56;
          v80 = 2114;
          v81 = un_logDigest3;
          v82 = 2114;
          v83 = v39;
          v84 = 2114;
          v85 = v41;
          _os_log_impl(&dword_1DA7A9000, v58, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification %{public}@ requested at %{public}@ has a current trigger date %{public}@", buf, 0x2Au);

          v15 = v63;
          v5 = MEMORY[0x1E6983378];

          _lastLocalNotificationFireDate = v64;
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

        [(UNCLocalNotificationClient *)selfCopy _fireNotification:*(*(&v69 + 1) + 8 * j), v53];
      }

      v45 = [v43 countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v45);
  }

  v48 = _lastLocalNotificationFireDate;
  lastObject = [v43 lastObject];
  date = [lastObject date];

  v51 = v48;
  if ([v48 compare:date] == -1)
  {
    v51 = date;
  }

  [(UNCLocalNotificationClient *)selfCopy _setLastLocalNotificationFireDate:v51, v53];
  [(UNCLocalNotificationClient *)selfCopy _setPendingNotificationRecords:obj];

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

- (void)_setLastLocalNotificationFireDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(UNCNotificationSchedule);
  [(UNCNotificationSchedule *)v5 setPreviousTriggerDate:dateCopy];

  [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository setSchedule:v5 forBundleIdentifier:self->_bundleIdentifier];
}

- (void)_updateTimersForPendingNotificationRecords:(id)records
{
  v84 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    v8 = [recordsCopy count];
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
  array = [MEMORY[0x1E695DF70] array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = recordsCopy;
  v11 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
  selfCopy = self;
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
          [array addObject:v15];
        }

        else
        {
          v18 = *MEMORY[0x1E6983378];
          if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
          {
            v19 = selfCopy->_bundleIdentifier;
            v20 = v18;
            identifier = [v15 identifier];
            un_logDigest = [identifier un_logDigest];
            *buf = 138543618;
            v75 = v19;
            self = selfCopy;
            v76 = 2114;
            v77 = un_logDigest;
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

  _lastLocalNotificationFireDate = [(UNCLocalNotificationClient *)self _lastLocalNotificationFireDate];
  v24 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    v25 = self->_bundleIdentifier;
    v26 = v24;
    _dateFormatter = [(UNCLocalNotificationClient *)self _dateFormatter];
    v28 = [_dateFormatter stringFromDate:_lastLocalNotificationFireDate];
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
  v29 = array;
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
        requestDate = [v33 requestDate];
        v36 = [v34 nextTriggerDateAfterLastTriggerDate:_lastLocalNotificationFireDate withRequestedDate:requestDate];
        v37 = *MEMORY[0x1E6983378];
        if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
        {
          v60 = selfCopy->_bundleIdentifier;
          log = v37;
          identifier2 = [v33 identifier];
          un_logDigest2 = [identifier2 un_logDigest];
          _dateFormatter2 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          requestDate2 = [v33 requestDate];
          v40 = [_dateFormatter2 stringFromDate:requestDate2];
          _dateFormatter3 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
          [_dateFormatter3 stringFromDate:v36];
          v42 = v63 = v30;
          *buf = 138544130;
          v75 = v60;
          v76 = 2114;
          v77 = un_logDigest2;
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

    self = selfCopy;
    if (v30)
    {
      v44 = *MEMORY[0x1E6983378];
      if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
      {
        v45 = selfCopy->_bundleIdentifier;
        v46 = v44;
        _dateFormatter4 = [(UNCLocalNotificationClient *)selfCopy _dateFormatter];
        v48 = [_dateFormatter4 stringFromDate:v30];
        *buf = 138543618;
        v75 = v45;
        v76 = 2114;
        v77 = v48;
        _os_log_impl(&dword_1DA7A9000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling persistent timer for next local notification at %{public}@", buf, 0x16u);
      }

      v49 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithFireDate:v30 serviceIdentifier:selfCopy->_bundleIdentifier target:selfCopy selector:sel__queue_triggerDidFireForTimer_ userInfo:0];
      localNotificationTimer = selfCopy->_localNotificationTimer;
      selfCopy->_localNotificationTimer = v49;

      [(PCPersistentTimer *)selfCopy->_localNotificationTimer setMinimumEarlyFireProportion:1.0];
      v51 = 1;
      [(PCPersistentTimer *)selfCopy->_localNotificationTimer setUserVisible:1];
      [(PCPersistentTimer *)selfCopy->_localNotificationTimer scheduleInQueue:selfCopy->_queue];
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

- (void)locationMonitor:(id)monitor triggerDidFireForRegion:(id)region forBundleIdentifier:(id)identifier
{
  regionCopy = region;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__UNCLocalNotificationClient_locationMonitor_triggerDidFireForRegion_forBundleIdentifier___block_invoke;
  v9[3] = &unk_1E85D6E70;
  v9[4] = self;
  v10 = regionCopy;
  v8 = regionCopy;
  dispatch_async(queue, v9);
}

- (void)_queue_triggerDidFireForRegion:(id)region
{
  v52 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  UNCPowerLogUserNotificationTriggerEvent(self->_bundleIdentifier, 2u);
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    identifier = [regionCopy identifier];
    un_logDigest = [identifier un_logDigest];
    *buf = 138543618;
    v49 = bundleIdentifier;
    v50 = 2114;
    v51 = un_logDigest;
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location region fired: region=%{public}@", buf, 0x16u);
  }

  v10 = [(UNCLocationMonitor *)self->_locationMonitor isBundleIdentifierAuthorizedForRegionMonitoring:self->_bundleIdentifier];
  v34 = regionCopy;
  identifier2 = [regionCopy identifier];
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  selfCopy = self;
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
        triggerType = [v15 triggerType];
        if ([triggerType isEqualToString:@"Location"])
        {
          triggerRegion = [v15 triggerRegion];
          identifier3 = [triggerRegion identifier];
          v19 = [identifier3 isEqual:identifier2];

          if (v19)
          {
            date = [MEMORY[0x1E695DF00] date];
            [v15 setDate:date];

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
    selfCopy2 = selfCopy;
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
            [(UNCLocalNotificationClient *)selfCopy _fireNotification:*(*(&v38 + 1) + 8 * j)];
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
    selfCopy2 = self;
    v27 = v34;
    if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      identifier4 = [v34 identifier];
      un_logDigest2 = [identifier4 un_logDigest];
      *buf = 138543362;
      v49 = un_logDigest2;
      _os_log_impl(&dword_1DA7A9000, v29, OS_LOG_TYPE_DEFAULT, "Region %{public}@ fired which isn't associated with a notification", buf, 0xCu);
    }
  }

  [(UNCLocalNotificationClient *)selfCopy2 _setPendingNotificationRecords:obj];

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

- (void)_updateRegionMonitorsForPendingNotificationRecords:(id)records
{
  v27 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v5 = *MEMORY[0x1E6983378];
  if (os_log_type_enabled(*MEMORY[0x1E6983378], OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = v5;
    *buf = 138543618;
    v24 = bundleIdentifier;
    v25 = 2048;
    v26 = [recordsCopy count];
    _os_log_impl(&dword_1DA7A9000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Update regions for %ld pending notifications", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = recordsCopy;
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
        triggerType = [v14 triggerType];
        if ([triggerType isEqualToString:@"Location"])
        {
          triggerRegion = [v14 triggerRegion];

          if (!triggerRegion)
          {
            continue;
          }

          triggerType = [v14 triggerRegion];
          [v8 addObject:triggerType];
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
  v4 = *(self + 8);
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