@interface NCDigestScheduleManager
- (NCDigestScheduleManager)init;
- (id)_currentScheduleTimes;
- (id)_scheduleDateFromScheduleTime:(id)a3;
- (void)_handleTimeOrLocaleChange:(id)a3;
- (void)_publishDigestInfo:(id)a3 withUpcomingDigestInfo:(id)a4;
- (void)_publishRevokeUpcomingDigest:(id)a3;
- (void)_publishToAllObservers:(id)a3;
- (void)_publishUpcomingDigestInfo:(id)a3;
- (void)_registerPrototypeRecipeToDeliveryDigestImmediately;
- (void)_scheduleTimerFiredForTimer:(id)a3;
- (void)_scheduleTimerForDigestInfo:(id)a3;
- (void)_updateDigestInfosForScheduleTimes:(id)a3;
- (void)_updateUpcomingScheduledDigestInfo;
- (void)addObserver:(id)a3;
- (void)invalidateScheduledTimerSendCancel:(BOOL)a3;
- (void)removeObserver:(id)a3;
- (void)setDigestScheduleTimes:(id)a3;
@end

@implementation NCDigestScheduleManager

- (NCDigestScheduleManager)init
{
  v8.receiver = self;
  v8.super_class = NCDigestScheduleManager;
  v2 = [(NCDigestScheduleManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.usernotifications.ScheduledDeliveryTimerQueue", v3);
    digestScheduleTimerQueue = v2->_digestScheduleTimerQueue;
    v2->_digestScheduleTimerQueue = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x277D766F0] object:0];
    [v6 addObserver:v2 selector:sel__handleTimeOrLocaleChange_ name:*MEMORY[0x277CBE620] object:0];
    [(NCDigestScheduleManager *)v2 _registerPrototypeRecipeToDeliveryDigestImmediately];
  }

  return v2;
}

- (void)setDigestScheduleTimes:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_digestScheduleTimes isEqualToArray:v5])
  {
    v6 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Updating notification digest schedule times", v7, 2u);
    }

    objc_storeStrong(&self->_digestScheduleTimes, a3);
    -[NCDigestScheduleManager invalidateScheduledTimerSendCancel:](self, "invalidateScheduledTimerSendCancel:", [v5 count] == 0);
    [(NCDigestScheduleManager *)self _updateDigestInfosForScheduleTimes:v5];
  }
}

- (void)invalidateScheduledTimerSendCancel:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    digestScheduleTimer = self->_digestScheduleTimer;
    v10 = 138543362;
    v11 = digestScheduleTimer;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating scheduled notification digest timer %{public}@", &v10, 0xCu);
  }

  v7 = [(NCDigestScheduleManager *)self upcomingScheduledDigestInfo];
  digestInfos = self->_digestInfos;
  self->_digestInfos = 0;

  [(PCPersistentTimer *)self->_digestScheduleTimer invalidate];
  v9 = self->_digestScheduleTimer;
  self->_digestScheduleTimer = 0;

  if (v3)
  {
    [(NCDigestScheduleManager *)self _publishRevokeUpcomingDigest:v7];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)_publishToAllObservers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_publishDigestInfo:(id)a3 withUpcomingDigestInfo:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Publishing scheduled notification digest [info=%{public}@] \t upcoming digest [date=%{public}@]", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__NCDigestScheduleManager__publishDigestInfo_withUpcomingDigestInfo___block_invoke;
  v11[3] = &unk_278372D60;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NCDigestScheduleManager *)self _publishToAllObservers:v11];
}

- (void)_publishUpcomingDigestInfo:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Publishing upcoming notification digest [info=%{public}@]", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__NCDigestScheduleManager__publishUpcomingDigestInfo___block_invoke;
    v6[3] = &unk_278372D88;
    v7 = v4;
    [(NCDigestScheduleManager *)self _publishToAllObservers:v6];
  }
}

- (void)_publishRevokeUpcomingDigest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NCDigestScheduleManager__publishRevokeUpcomingDigest___block_invoke;
  v6[3] = &unk_278372D88;
  v7 = v4;
  v5 = v4;
  [(NCDigestScheduleManager *)self _publishToAllObservers:v6];
}

- (void)_updateDigestInfosForScheduleTimes:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    if (!self->_digestInfos)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      digestInfos = self->_digestInfos;
      self->_digestInfos = v5;
    }

    upcomingScheduledDigestInfo = self->_upcomingScheduledDigestInfo;
    self->_upcomingScheduledDigestInfo = 0;

    previouslyScheduledDigestInfo = self->_previouslyScheduledDigestInfo;
    self->_previouslyScheduledDigestInfo = 0;

    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v4 sortedArrayUsingComparator:&__block_literal_global_40];
    v11 = [v10 count];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__NCDigestScheduleManager__updateDigestInfosForScheduleTimes___block_invoke_2;
    v23[3] = &unk_278372DB0;
    v23[4] = self;
    v25 = v11;
    v12 = v9;
    v24 = v12;
    [v10 enumerateObjectsUsingBlock:v23];
    v13 = [(NCDigestInfo *)self->_previouslyScheduledDigestInfo mutableCopy];
    v14 = [v13 scheduleDate];
    v15 = [v14 dateByAddingTimeInterval:-86400.0];
    [v13 setScheduleDate:v15];

    v16 = [v13 copy];
    v17 = self->_previouslyScheduledDigestInfo;
    self->_previouslyScheduledDigestInfo = v16;

    v18 = MEMORY[0x277D77DD0];
    v19 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_upcomingScheduledDigestInfo;
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_21E77E000, v19, OS_LOG_TYPE_DEFAULT, "Updated upcoming digest info: %{public}@", buf, 0xCu);
    }

    v21 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_previouslyScheduledDigestInfo;
      *buf = 138543362;
      v27 = v22;
      _os_log_impl(&dword_21E77E000, v21, OS_LOG_TYPE_DEFAULT, "Updated previously scheduled digest info: %{public}@", buf, 0xCu);
    }

    [(NCDigestScheduleManager *)self _publishUpcomingDigestInfo:self->_upcomingScheduledDigestInfo];
    [(NCDigestScheduleManager *)self _scheduleTimerForDigestInfo:self->_upcomingScheduledDigestInfo];
  }
}

uint64_t __62__NCDigestScheduleManager__updateDigestInfosForScheduleTimes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hour];
  if (v6 <= [v5 hour])
  {
    v8 = [v4 hour];
    v7 = -1;
    if (v8 == [v5 hour])
    {
      v9 = [v4 minute];
      if (v9 >= [v5 minute])
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __62__NCDigestScheduleManager__updateDigestInfosForScheduleTimes___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 _scheduleDateFromScheduleTime:v6];
  v8 = objc_alloc_init(NCMutableDigestInfo);
  [(NCMutableDigestInfo *)v8 setScheduleTime:v6];

  [(NCMutableDigestInfo *)v8 setScheduleDate:v7];
  v9 = v7;
  if ([v9 nc_isMorning])
  {
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = v10;
    v12 = @"NOTIFICATION_SUMMARY_SECTION_TITLE_MORNING";
  }

  else if ([v9 nc_isAfternoon])
  {
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = v10;
    v12 = @"NOTIFICATION_SUMMARY_SECTION_TITLE_AFTERNOON";
  }

  else if ([v9 nc_isEvening])
  {
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = v10;
    v12 = @"NOTIFICATION_SUMMARY_SECTION_TITLE_EVENING";
  }

  else
  {
    v37 = [v9 nc_isNight];
    v10 = NCUserNotificationsUIKitFrameworkBundle();
    v11 = v10;
    if (v37)
    {
      v12 = @"NOTIFICATION_SUMMARY_SECTION_TITLE_NIGHT";
    }

    else
    {
      v12 = @"NOTIFICATION_SUMMARY_SECTION_TITLE_OVERNIGHT";
    }
  }

  v13 = [v10 localizedStringForKey:v12 value:&stru_282FE84F8 table:0];

  [(NCMutableDigestInfo *)v8 setTitleString:v13];
  v14 = v9;
  if ([v14 nc_isMorning])
  {
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = v15;
    v17 = @"NOTIFICATION_SUMMARY_HEADER_MORNING";
  }

  else if ([v14 nc_isAfternoon])
  {
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = v15;
    v17 = @"NOTIFICATION_SUMMARY_HEADER_AFTERNOON";
  }

  else if ([v14 nc_isEvening])
  {
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = v15;
    v17 = @"NOTIFICATION_SUMMARY_HEADER_EVENING";
  }

  else
  {
    v38 = [v14 nc_isNight];
    v15 = NCUserNotificationsUIKitFrameworkBundle();
    v16 = v15;
    if (v38)
    {
      v17 = @"NOTIFICATION_SUMMARY_HEADER_NIGHT";
    }

    else
    {
      v17 = @"NOTIFICATION_SUMMARY_HEADER_OVERNIGHT";
    }
  }

  v18 = [v15 localizedStringForKey:v17 value:&stru_282FE84F8 table:0];

  [(NCMutableDigestInfo *)v8 setHeaderString:v18];
  v19 = a1[6];
  if (a3 || v19 <= 1)
  {
    v21 = v19 > 1;
    v22 = v19 - 1;
    v23 = v21;
    v24 = 2 * v23;
    if (v22 == a3)
    {
      v20 = v24;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  [(NCMutableDigestInfo *)v8 setDeliveryOrder:v20];
  [*(a1[4] + 48) addObject:v8];
  v25 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138543362;
    v40 = v8;
    _os_log_impl(&dword_21E77E000, v25, OS_LOG_TYPE_DEFAULT, "Added notification digest [info=%{public}@]", &v39, 0xCu);
  }

  [v14 timeIntervalSinceDate:a1[5]];
  v27 = v26;
  v28 = a1[4];
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = [v29 scheduleDate];
    [v30 timeIntervalSinceDate:a1[5]];
    v32 = v31;

    v28 = a1[4];
  }

  else
  {
    v32 = 2147483650.0;
  }

  if (v27 < v32)
  {
    objc_storeStrong((v28 + 16), v8);
    v28 = a1[4];
  }

  v33 = *(v28 + 24);
  if (v33)
  {
    v34 = [v33 scheduleDate];
    [v34 timeIntervalSinceDate:a1[5]];
    v36 = v35;
  }

  else
  {
    v36 = -2147483650.0;
  }

  if (v27 > v36)
  {
    objc_storeStrong((a1[4] + 24), v8);
  }
}

- (void)_updateUpcomingScheduledDigestInfo
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0x41DFFFFFFFC00000;
  v3 = [MEMORY[0x277CBEAA8] date];
  digestInfos = self->_digestInfos;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NCDigestScheduleManager__updateUpcomingScheduledDigestInfo__block_invoke;
  v6[3] = &unk_278372DD8;
  v6[4] = self;
  v5 = v3;
  v7 = v5;
  v8 = v10;
  v9 = &v11;
  [(NSMutableSet *)digestInfos enumerateObjectsUsingBlock:v6];
  objc_storeStrong(&self->_upcomingScheduledDigestInfo, v12[5]);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
}

void __61__NCDigestScheduleManager__updateUpcomingScheduledDigestInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v5 = [v3 scheduleTime];
  v6 = [v4 _scheduleDateFromScheduleTime:v5];

  [*(a1 + 40) timeIntervalSinceDate:v6];
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  if (v8 < *(*(*(a1 + 48) + 8) + 24) && ([*(a1 + 40) isEqualToDate:v6] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = v8;
    v9 = [v15 mutableCopy];
    v10 = [v9 scheduleDate];
    v11 = [v6 isEqualToDate:v10];

    if ((v11 & 1) == 0)
    {
      [v9 setScheduleDate:v6];
    }

    v12 = [v9 copy];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (void)_scheduleTimerFiredForTimer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification digest scheduled timer %{public}@ fired for digest info [%{public}@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NCDigestScheduleManager__scheduleTimerFiredForTimer___block_invoke;
  v8[3] = &unk_278370A90;
  objc_copyWeak(&v10, buf);
  v9 = v5;
  v7 = v5;
  dispatch_sync(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __55__NCDigestScheduleManager__scheduleTimerFiredForTimer___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) copy];
  [WeakRetained setPreviouslyScheduledDigestInfo:v3];

  [WeakRetained _updateUpcomingScheduledDigestInfo];
  v4 = MEMORY[0x277D77DD0];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [WeakRetained upcomingScheduledDigestInfo];
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Updated upcoming digest info: %{public}@", &v14, 0xCu);
  }

  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [WeakRetained previouslyScheduledDigestInfo];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Updated previously scheduled digest info: %{public}@", &v14, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [WeakRetained upcomingScheduledDigestInfo];
  [WeakRetained _publishDigestInfo:v11 withUpcomingDigestInfo:v12];

  v13 = [WeakRetained upcomingScheduledDigestInfo];
  [WeakRetained _scheduleTimerForDigestInfo:v13];
}

- (void)_handleTimeOrLocaleChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [a3 name];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Updating notification digest schedule infos on time or locale change for notification %{public}@", &v9, 0xCu);
  }

  v8 = [(NCDigestScheduleManager *)self _currentScheduleTimes];
  [(NCDigestScheduleManager *)self invalidateScheduledTimerSendCancel:v8 == 0];
  [(NCDigestScheduleManager *)self _updateDigestInfosForScheduleTimes:v8];
}

- (id)_scheduleDateFromScheduleTime:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 components:28 fromDate:v6];
  v8 = [v7 copy];
  [v8 setHour:{objc_msgSend(v4, "hour")}];
  v9 = [v4 minute];

  [v8 setMinute:v9];
  [v8 setSecond:0];
  [v8 setNanosecond:0];
  v10 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v8 setTimeZone:v10];

  v11 = [v5 dateFromComponents:v8];
  [v11 timeIntervalSinceDate:v6];
  if (v12 < 10.0)
  {
    v13 = [v11 dateByAddingTimeInterval:86400.0];

    v11 = v13;
  }

  return v11;
}

- (id)_currentScheduleTimes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  digestInfos = self->_digestInfos;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NCDigestScheduleManager__currentScheduleTimes__block_invoke;
  v7[3] = &unk_278372E00;
  v5 = v3;
  v8 = v5;
  [(NSMutableSet *)digestInfos enumerateObjectsUsingBlock:v7];

  return v5;
}

void __48__NCDigestScheduleManager__currentScheduleTimes__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 scheduleTime];
  v3 = [v4 copy];
  [v2 addObject:v3];
}

- (void)_scheduleTimerForDigestInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 scheduleDate];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 earlierDate:v7];

    v9 = MEMORY[0x277D77DD0];
    if (v8 == v6)
    {
      v10 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
      {
        [(NCDigestScheduleManager *)v6 _scheduleTimerForDigestInfo:v10];
      }

      v11 = [v6 dateByAddingTimeInterval:86400.0];

      v12 = [v5 copy];
      [v12 setScheduleDate:v11];
      v13 = [v12 copy];

      v6 = v11;
      v5 = v13;
    }

    v14 = [objc_alloc(MEMORY[0x277D3A180]) initWithFireDate:v6 serviceIdentifier:@"com.apple.usernotifications.scheduledDelivery" target:self selector:sel__scheduleTimerFiredForTimer_ userInfo:v5];
    digestScheduleTimer = self->_digestScheduleTimer;
    self->_digestScheduleTimer = v14;

    [(PCPersistentTimer *)self->_digestScheduleTimer setMinimumEarlyFireProportion:1.0];
    [(PCPersistentTimer *)self->_digestScheduleTimer setUserVisible:1];
    [(PCPersistentTimer *)self->_digestScheduleTimer scheduleInQueue:self->_digestScheduleTimerQueue];
    v16 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_digestScheduleTimer;
      v18 = 138543618;
      v19 = v17;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Scheduled persistent timer %{public}@ for notification digest [info=%{public}@]", &v18, 0x16u);
    }
  }
}

- (void)_registerPrototypeRecipeToDeliveryDigestImmediately
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D431D0];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __78__NCDigestScheduleManager__registerPrototypeRecipeToDeliveryDigestImmediately__block_invoke;
  v7 = &unk_27836F498;
  objc_copyWeak(&v8, &location);
  v3 = [v2 recipeWithTitle:@"Deliver Scheduled Summary (Digest) to Incoming" increaseAction:&v4 decreaseAction:&__block_literal_global_24_1];
  [(PTDomain *)NCUNUIKitPrototypeDomain registerTestRecipe:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __78__NCDigestScheduleManager__registerPrototypeRecipeToDeliveryDigestImmediately__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained upcomingScheduledDigestInfo];
    v3 = [v4 upcomingScheduledDigestInfo];
    [v4 _publishDigestInfo:v2 withUpcomingDigestInfo:v3];

    WeakRetained = v4;
  }
}

- (void)_scheduleTimerForDigestInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Schedule fire date for persistent timer is before current time! [fireDate=%{public}@]", &v2, 0xCu);
}

@end