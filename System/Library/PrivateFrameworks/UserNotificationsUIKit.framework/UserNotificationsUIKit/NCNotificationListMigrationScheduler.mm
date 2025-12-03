@interface NCNotificationListMigrationScheduler
- (NCNotificationListMigrationScheduler)initWithDelegate:(id)delegate;
- (NCNotificationListMigrationSchedulerDelegate)delegate;
- (NSDate)upcomingScheduledMigrationDate;
- (id)_nextScheduleDateForMigration;
- (id)_notificationRequestMatchingRequest:(id)request;
- (void)_handleTimeOrLocaleChange:(id)change;
- (void)_migrationTimerFiredForTimer:(id)timer;
- (void)_scheduleMigrationTimerForDate:(id)date;
- (void)_sendDigestMigrationSignalIfNecessary;
- (void)_sendNotificationRequestMigrationSignalIfNecessary;
- (void)_updateMigrationScheduleTimer;
- (void)addMigratedTimeSensitiveNotificationRequests:(id)requests;
- (void)addMigrationForNotificationRequests:(id)requests forDate:(id)date;
- (void)removeMigratedTimeSensitiveNotificationRequests:(id)requests;
- (void)removeMigrationForNotificationRequest:(id)request;
- (void)setMigrationDateForNotificationDigest:(id)digest;
@end

@implementation NCNotificationListMigrationScheduler

- (NSDate)upcomingScheduledMigrationDate
{
  v2 = [(NSDate *)self->_currentlyScheduledDate copy];

  return v2;
}

- (NCNotificationListMigrationScheduler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = NCNotificationListMigrationScheduler;
  v5 = [(NCNotificationListMigrationScheduler *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.usernotifications.NCNotificationListMigrationSchedulerTimerQueue", v7);
    scheduleTimerQueue = v6->_scheduleTimerQueue;
    v6->_scheduleTimerQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v6->_dateFormatter;
    v6->_dateFormatter = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    migratedTimeSensitiveNotificationRequests = v6->_migratedTimeSensitiveNotificationRequests;
    v6->_migratedTimeSensitiveNotificationRequests = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    migrationRequestCounterForNotificationRequests = v6->_migrationRequestCounterForNotificationRequests;
    v6->_migrationRequestCounterForNotificationRequests = v14;

    v16 = v6->_dateFormatter;
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [(NSDateFormatter *)v16 setLocale:currentLocale];

    [(NSDateFormatter *)v6->_dateFormatter setDateStyle:1];
    [(NSDateFormatter *)v6->_dateFormatter setTimeStyle:3];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x277D766F0] object:0];
    [defaultCenter addObserver:v6 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v6;
}

- (void)addMigrationForNotificationRequests:(id)requests forDate:(id)date
{
  dateCopy = date;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __84__NCNotificationListMigrationScheduler_addMigrationForNotificationRequests_forDate___block_invoke;
  v11 = &unk_2783705B0;
  selfCopy = self;
  v13 = dateCopy;
  v7 = dateCopy;
  [requests enumerateObjectsUsingBlock:&v8];
  [(NCNotificationListMigrationScheduler *)self _updateMigrationScheduleTimer:v8];
}

void __84__NCNotificationListMigrationScheduler_addMigrationForNotificationRequests_forDate___block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (!v4[2])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = *(*v5 + 16);
    *(*v5 + 16) = v6;

    v4 = *v5;
  }

  v8 = [v4 _notificationRequestMatchingRequest:v3];
  v9 = *(*v5 + 16);
  v10 = MEMORY[0x277D77DD0];
  if (v8)
  {
    v11 = [v9 objectForKey:v8];
    v12 = [*(*v5 + 48) objectForKey:v8];
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v3 notificationIdentifier];
      v65 = v11;
      v19 = v18 = v13;
      v20 = [v19 un_logDigest];
      *buf = 138543874;
      v70 = v17;
      v71 = 2114;
      v72 = v20;
      v73 = 1024;
      LODWORD(v74) = [v12 intValue];
      _os_log_impl(&dword_21E77E000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ migration count for request %{public}@; count %d", buf, 0x1Cu);

      v13 = v18;
      v11 = v65;

      v10 = MEMORY[0x277D77DD0];
    }

    [*(*v5 + 48) removeObjectForKey:v8];
    v21 = *(*v5 + 48);
    v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "intValue") + 1}];
    [v21 setObject:v22 forKey:v3];

    if ([v12 intValue] >= 1)
    {
      v23 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v3 notificationIdentifier];
        v28 = [v27 un_logDigest];
        [*(*v5 + 40) stringFromDate:v13];
        v66 = v3;
        v29 = v8;
        v30 = v12;
        v31 = v11;
        v33 = v32 = v13;
        *buf = 138543874;
        v70 = v26;
        v71 = 2114;
        v72 = v28;
        v73 = 2112;
        v74 = v33;
        _os_log_impl(&dword_21E77E000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ reach force migration count for request %{public}@; schedule migration for current date %@", buf, 0x20u);

        v13 = v32;
        v11 = v31;
        v12 = v30;
        v8 = v29;
        v3 = v66;
      }

      [*(*v5 + 16) removeObjectForKey:v8];
      [*(*v5 + 16) setObject:v13 forKey:v3];
      v34 = v13;
LABEL_26:
      v64 = v34;

      goto LABEL_27;
    }

    v43 = [v11 earlierDate:*(a1 + 40)];
    v44 = v43;
    if (v43 == *(a1 + 40))
    {
    }

    else
    {
      v45 = [v11 earlierDate:v13];

      if (v45 != v11)
      {
        v46 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v47 = v46;
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = [v3 notificationIdentifier];
          v51 = [v50 un_logDigest];
          [*(*v5 + 40) stringFromDate:v11];
          v67 = v3;
          v52 = v8;
          v53 = v12;
          v54 = v11;
          v56 = v55 = v13;
          *buf = 138543874;
          v70 = v49;
          v71 = 2114;
          v72 = v51;
          v73 = 2112;
          v74 = v56;
          _os_log_impl(&dword_21E77E000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ has the earliest migration date for request %{public}@ for date %@", buf, 0x20u);

          v13 = v55;
          v11 = v54;
          v12 = v53;
          v8 = v52;
          v3 = v67;

          v10 = MEMORY[0x277D77DD0];
        }

        goto LABEL_11;
      }
    }

    v57 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v58 = v57;
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = [v3 notificationIdentifier];
      [v61 un_logDigest];
      v62 = v68 = v13;
      v63 = [*(*v5 + 40) stringFromDate:v11];
      *buf = 138543874;
      v70 = v60;
      v71 = 2114;
      v72 = v62;
      v73 = 2112;
      v74 = v63;
      _os_log_impl(&dword_21E77E000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ set for earlier migration date for request %{public}@ for date %@", buf, 0x20u);

      v13 = v68;
    }

    [*(*(a1 + 32) + 16) removeObjectForKey:v8];
    [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:v3];
    v34 = *(a1 + 40);
    goto LABEL_26;
  }

  [v9 setObject:*(a1 + 40) forKey:v3];
  [*(*(a1 + 32) + 48) setObject:&unk_283015560 forKey:v3];
  v11 = *(a1 + 40);
LABEL_11:
  v35 = *v10;
  v36 = *v10;
  if (v11)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v35;
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [v3 notificationIdentifier];
      v41 = [v40 un_logDigest];
      v42 = [*(*v5 + 40) stringFromDate:v11];
      *buf = 138543874;
      v70 = v39;
      v71 = 2114;
      v72 = v41;
      v73 = 2112;
      v74 = v42;
      _os_log_impl(&dword_21E77E000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ adding migration for request %{public}@ for date %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    __84__NCNotificationListMigrationScheduler_addMigrationForNotificationRequests_forDate___block_invoke_cold_1(v5, v35, v3);
  }

LABEL_27:
}

- (void)removeMigrationForNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NCNotificationListMigrationScheduler *)self _notificationRequestMatchingRequest:requestCopy];
  if (v5)
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ removing scheduled migration for request %{public}@", &v14, 0x16u);
    }

    [(NSMutableDictionary *)self->_migrationRequestCounterForNotificationRequests removeObjectForKey:v5];
    v12 = [(NSMutableDictionary *)self->_migrationDatesForNotificationRequests objectForKey:v5];
    [(NSMutableDictionary *)self->_migrationDatesForNotificationRequests removeObjectForKey:v5];
    if (![(NSMutableDictionary *)self->_migrationDatesForNotificationRequests count])
    {
      migrationDatesForNotificationRequests = self->_migrationDatesForNotificationRequests;
      self->_migrationDatesForNotificationRequests = 0;
    }

    if ([v12 isEqualToDate:self->_currentlyScheduledDate])
    {
      [(NCNotificationListMigrationScheduler *)self _updateMigrationScheduleTimer];
    }
  }
}

- (void)setMigrationDateForNotificationDigest:(id)digest
{
  v17 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  migrationDateForNotificationDigest = [(NCNotificationListMigrationScheduler *)self migrationDateForNotificationDigest];
  if (([migrationDateForNotificationDigest isEqualToDate:digestCopy] & 1) == 0)
  {
    if (!digestCopy || ([digestCopy earlierDate:migrationDateForNotificationDigest], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == digestCopy))
    {
      v8 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:digestCopy];
        v13 = 138543618;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling migration for digest at %@", &v13, 0x16u);
      }

      objc_storeStrong(&self->_migrationDateForNotificationDigest, digest);
      [(NCNotificationListMigrationScheduler *)self _updateMigrationScheduleTimer];
    }
  }
}

- (void)addMigratedTimeSensitiveNotificationRequests:(id)requests
{
  v15 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  if ([requestsCopy interruptionLevel] == 2)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      notificationIdentifier = [requestsCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ add MigratedTimeSensitiveNotificationRequests %{public}@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_migratedTimeSensitiveNotificationRequests addObject:requestsCopy];
  }
}

- (void)removeMigratedTimeSensitiveNotificationRequests:(id)requests
{
  v15 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  if ([requestsCopy interruptionLevel] == 2)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      notificationIdentifier = [requestsCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ remove MigratedTimeSensitiveNotificationRequests %{public}@", &v11, 0x16u);
    }

    [(NSMutableSet *)self->_migratedTimeSensitiveNotificationRequests removeObject:requestsCopy];
  }
}

- (id)_notificationRequestMatchingRequest:(id)request
{
  requestCopy = request;
  allKeys = [(NSMutableDictionary *)self->_migrationDatesForNotificationRequests allKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__NCNotificationListMigrationScheduler__notificationRequestMatchingRequest___block_invoke;
  v10[3] = &unk_278370180;
  v6 = requestCopy;
  v11 = v6;
  v7 = [allKeys indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [allKeys objectAtIndex:v7];
  }

  return v8;
}

uint64_t __76__NCNotificationListMigrationScheduler__notificationRequestMatchingRequest___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  else
  {
    return [a2 matchesRequest:?];
  }
}

- (void)_updateMigrationScheduleTimer
{
  v24 = *MEMORY[0x277D85DE8];
  _nextScheduleDateForMigration = [(NCNotificationListMigrationScheduler *)self _nextScheduleDateForMigration];
  if ([(NSDate *)self->_currentlyScheduledDate isEqualToDate:_nextScheduleDateForMigration])
  {
    v4 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_currentlyScheduledDate];
      v20 = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ already scheduled migration schedule timer for date %@", &v20, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentlyScheduledDate, _nextScheduleDateForMigration);
    currentlyScheduledDate = self->_currentlyScheduledDate;
    v10 = *MEMORY[0x277D77DD0];
    v11 = os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT);
    if (currentlyScheduledDate)
    {
      if (v11)
      {
        v12 = v10;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:_nextScheduleDateForMigration];
        v20 = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ updating scheduled migration timer to fire at date %@", &v20, 0x16u);
      }

      [(NCNotificationListMigrationScheduler *)self _scheduleMigrationTimerForDate:self->_currentlyScheduledDate];
    }

    else
    {
      if (v11)
      {
        v16 = v10;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing scheduled migration timer since there are no more migrations left", &v20, 0xCu);
      }

      [(PCPersistentTimer *)self->_scheduleTimer invalidate];
      scheduleTimer = self->_scheduleTimer;
      self->_scheduleTimer = 0;

      [(NCNotificationListMigrationScheduler *)self _sendDigestMigrationSignalIfNecessary];
      [(NCNotificationListMigrationScheduler *)self _sendNotificationRequestMigrationSignalIfNecessary];
    }
  }
}

- (void)_scheduleMigrationTimerForDate:(id)date
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  scheduleTimer = self->_scheduleTimer;
  if (scheduleTimer)
  {
    [(PCPersistentTimer *)scheduleTimer invalidate];
    v6 = self->_scheduleTimer;
    self->_scheduleTimer = 0;
  }

  [dateCopy timeIntervalSinceNow];
  if (v7 <= 0.0)
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationListMigrationScheduler *)v16 _scheduleMigrationTimerForDate:dateCopy];
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277D3A180]) initWithFireDate:dateCopy serviceIdentifier:@"com.apple.usernotifications.listMigrationSchedulerTimer" target:self selector:sel__migrationTimerFiredForTimer_ userInfo:0];
    v9 = self->_scheduleTimer;
    self->_scheduleTimer = v8;

    [(PCPersistentTimer *)self->_scheduleTimer setMinimumEarlyFireProportion:1.0];
    [(PCPersistentTimer *)self->_scheduleTimer setUserVisible:1];
    [(PCPersistentTimer *)self->_scheduleTimer scheduleInQueue:self->_scheduleTimerQueue];
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = self->_scheduleTimer;
      v15 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:dateCopy];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled migration timer %@ for date %@", &v17, 0x20u);
    }
  }
}

- (id)_nextScheduleDateForMigration
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  [(NSDate *)self->_migrationDateForNotificationDigest timeIntervalSinceNow];
  if (v3 <= 0.0)
  {
    migrationDateForNotificationDigest = 0;
  }

  else
  {
    migrationDateForNotificationDigest = self->_migrationDateForNotificationDigest;
  }

  v29 = migrationDateForNotificationDigest;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  migrationDatesForNotificationRequests = self->_migrationDatesForNotificationRequests;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__NCNotificationListMigrationScheduler__nextScheduleDateForMigration__block_invoke;
  v17[3] = &unk_278371830;
  v17[5] = &v24;
  v17[6] = &v18;
  v17[4] = self;
  [(NSMutableDictionary *)migrationDatesForNotificationRequests enumerateKeysAndObjectsUsingBlock:v17];
  if (v19[5])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      notificationIdentifier = [v19[5] notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v11 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v25[5]];
      *buf = 138543874;
      v31 = v8;
      v32 = 2114;
      v33 = un_logDigest;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ next scheduled migration timer for request %{public}@ for date %@", buf, 0x20u);
    }
  }

  else
  {
    if (!v25[5])
    {
      goto LABEL_11;
    }

    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v25[5]];
      *buf = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ next scheduled migration timer for digest for date %@", buf, 0x16u);
    }
  }

LABEL_11:
  v15 = [v25[5] dateByAddingTimeInterval:5.0];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __69__NCNotificationListMigrationScheduler__nextScheduleDateForMigration__block_invoke(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!*(*(a1[5] + 8) + 40) || ([v7 earlierDate:?], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v8))
  {
    [v8 timeIntervalSinceNow];
    if (v10 <= 0.0)
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      v12 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        log = v12;
        v13 = objc_opt_class();
        v21 = NSStringFromClass(v13);
        v14 = [v6 notificationIdentifier];
        v15 = [v14 un_logDigest];
        v16 = [*(a1[4] + 40) stringFromDate:v8];
        v17 = [*(a1[4] + 40) stringFromDate:v11];
        *buf = 138544130;
        v24 = v21;
        v25 = 2114;
        v26 = v15;
        v27 = 2114;
        v28 = v16;
        v29 = 2114;
        v30 = v17;
        _os_log_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ has earlier migration for request %{public}@ for date %{public}@; set to schedule to currentDate %{public}@", buf, 0x2Au);
      }

      v18 = *(a1[5] + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v11;
      v20 = v11;

      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    else
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a3);
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}

- (void)_migrationTimerFiredForTimer:(id)timer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NCNotificationListMigrationScheduler__migrationTimerFiredForTimer___block_invoke;
  block[3] = &unk_27836F6A8;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __69__NCNotificationListMigrationScheduler__migrationTimerFiredForTimer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendDigestMigrationSignalIfNecessary];
  [*(a1 + 32) _sendNotificationRequestMigrationSignalIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _updateMigrationScheduleTimer];
}

- (void)_sendDigestMigrationSignalIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_migrationDateForNotificationDigest;
  v4 = v3;
  if (v3)
  {
    [(NSDate *)v3 timeIntervalSinceNow];
    if (v5 < 0.0)
    {
      v6 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v4];
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ sending signal for digest migration for scheduled date %@", &v12, 0x16u);
      }

      delegate = [(NCNotificationListMigrationScheduler *)self delegate];
      [delegate notificationListMigrationSchedulerRequestsMigratingNotificationDigest:self];
    }
  }
}

- (void)_sendNotificationRequestMigrationSignalIfNecessary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  migrationDatesForNotificationRequests = self->_migrationDatesForNotificationRequests;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__NCNotificationListMigrationScheduler__sendNotificationRequestMigrationSignalIfNecessary__block_invoke;
  v8[3] = &unk_278371858;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [(NSMutableDictionary *)migrationDatesForNotificationRequests enumerateKeysAndObjectsUsingBlock:v8];
  if ([v5 count])
  {
    delegate = [(NCNotificationListMigrationScheduler *)self delegate];
    [delegate notificationListMigrationScheduler:self requestsMigratingNotificationRequests:v5];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __90__NCNotificationListMigrationScheduler__sendNotificationRequestMigrationSignalIfNecessary__block_invoke_19;
    v7[3] = &unk_27836F610;
    v7[4] = self;
    [v5 enumerateObjectsUsingBlock:v7];
  }
}

void __90__NCNotificationListMigrationScheduler__sendNotificationRequestMigrationSignalIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v6 timeIntervalSinceNow];
  if (v7 < 0.0)
  {
    v8 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v5 notificationIdentifier];
      v13 = [v12 un_logDigest];
      v14 = [*(*(a1 + 32) + 40) stringFromDate:v6];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ sending signal for migration for request %{public}@ for scheduled date %@", &v15, 0x20u);
    }

    [*(a1 + 40) addObject:v5];
  }
}

- (void)_handleTimeOrLocaleChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    changeCopy = change;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    name = [changeCopy name];

    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ updating migration on time or locale change for notification %@", &v11, 0x16u);
  }

  [(NCNotificationListMigrationScheduler *)self _sendDigestMigrationSignalIfNecessary];
  [(NCNotificationListMigrationScheduler *)self _sendNotificationRequestMigrationSignalIfNecessary];
  [(NCNotificationListMigrationScheduler *)self _updateMigrationScheduleTimer];
}

- (NCNotificationListMigrationSchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __84__NCNotificationListMigrationScheduler_addMigrationForNotificationRequests_forDate___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 notificationIdentifier];
  v14 = [v7 un_logDigest];
  OUTLINED_FUNCTION_0_4(&dword_21E77E000, v8, v9, "%{public}@ no migration date found for request %{public}@", v10, v11, v12, v13, 2u);
}

- (void)_scheduleMigrationTimerForDate:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v14 = [*(a2 + 40) stringFromDate:a3];
  OUTLINED_FUNCTION_0_4(&dword_21E77E000, v8, v9, "%{public}@ attempting to schedule migration timer for a date in the past %@", v10, v11, v12, v13, 2u);
}

@end