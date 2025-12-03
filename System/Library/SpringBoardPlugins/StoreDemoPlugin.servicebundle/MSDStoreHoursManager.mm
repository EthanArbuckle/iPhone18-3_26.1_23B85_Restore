@interface MSDStoreHoursManager
+ (id)sharedInstance;
- (BOOL)evaluateStoreStatusAgainstCurrentTime;
- (BOOL)evaluateStoreStatusAgainstPointInTime:(id)time;
- (MSDStoreHoursManager)init;
- (id)parseRawStoreHours:(id)hours;
- (id)screenSaverShouldRunUntil;
- (void)populateStoreHourFromDefaultSettingsForDate:(id)date;
- (void)populateStoreHourFromHubSuppliedSettingsForDate:(id)date;
- (void)setupStoreCloseTimer:(id)timer;
- (void)setupStoreHourSettingsExpirationTimer:(id)timer;
- (void)setupStoreOpenCloseTimers;
- (void)setupStoreOpenTimer:(id)timer;
- (void)storeCloseHandler:(id)handler;
- (void)storeHourSettingsExpirationHandler:(id)handler;
- (void)storeOpenHandler:(id)handler;
- (void)updateStoreHours:(id)hours lastSettingsUpdatedDate:(id)date;
@end

@implementation MSDStoreHoursManager

+ (id)sharedInstance
{
  if (qword_1E048 != -1)
  {
    sub_C024();
  }

  v3 = qword_1E040;

  return v3;
}

- (MSDStoreHoursManager)init
{
  v13.receiver = self;
  v13.super_class = MSDStoreHoursManager;
  v2 = [(MSDStoreHoursManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    [(MSDStoreHoursManager *)v2 setStoreHourRecords:0];
    [(MSDStoreHoursManager *)v3 setExpirationTimer:0];
    [(MSDStoreHoursManager *)v3 setStoreOpenTimer:0];
    [(MSDStoreHoursManager *)v3 setStoreCloseTimer:0];
    [(MSDStoreHoursManager *)v3 setUseDefaultStoreHours:1];
    v4 = +[NSDate date];
    [(MSDStoreHoursManager *)v3 populateStoreHourFromDefaultSettingsForDate:v4];

    if (os_variant_has_internal_content())
    {
      objc_initWeak(&location, v3);
      v5 = +[NSDistributedNotificationCenter defaultCenter];
      v6 = +[NSOperationQueue mainQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_2BB8;
      v10[3] = &unk_18698;
      objc_copyWeak(&v11, &location);
      v7 = [v5 addObserverForName:@"com.apple.MobileStoreDemo.StoreHours.FireExpiration" object:0 queue:v6 usingBlock:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    v8 = v3;
  }

  return v3;
}

- (void)updateStoreHours:(id)hours lastSettingsUpdatedDate:(id)date
{
  hoursCopy = hours;
  dateCopy = date;
  if (!dateCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (+[NSDate distantPast](NSDate, "distantPast"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [dateCopy isEqualToDate:v8], v8, v9))
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_C17C();
    }

    newDateByAddingOneWeek = 0;
LABEL_7:

    [(MSDStoreHoursManager *)self setStoreHourRecords:0];
    [(MSDStoreHoursManager *)self setUseDefaultStoreHours:1];
    v12 = defaultLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_C1EC();
    }

    goto LABEL_17;
  }

  endOfDay = [dateCopy endOfDay];
  newDateByAddingOneWeek = [endOfDay newDateByAddingOneWeek];

  [newDateByAddingOneWeek timeIntervalSinceNow];
  if (v14 < 300.0)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_C0E8(newDateByAddingOneWeek, v10);
    }

    goto LABEL_7;
  }

  if (!hoursCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![hoursCopy count])
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_C078();
    }

    goto LABEL_7;
  }

  v15 = [(MSDStoreHoursManager *)self parseRawStoreHours:hoursCopy];
  if (!v15)
  {
    v10 = defaultLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_C038();
    }

    goto LABEL_7;
  }

  v12 = v15;
  [(MSDStoreHoursManager *)self setStoreHourRecords:v15];
  [(MSDStoreHoursManager *)self setUseDefaultStoreHours:0];
  [(MSDStoreHoursManager *)self setupStoreHourSettingsExpirationTimer:newDateByAddingOneWeek];
  v16 = defaultLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "New store hours successfully loaded!", v17, 2u);
  }

LABEL_17:
}

- (BOOL)evaluateStoreStatusAgainstCurrentTime
{
  v3 = +[NSDate date];
  LOBYTE(self) = [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstPointInTime:v3];

  return self;
}

- (BOOL)evaluateStoreStatusAgainstPointInTime:(id)time
{
  timeCopy = time;
  isStoreOpenNow = [(MSDStoreHoursManager *)self isStoreOpenNow];
  nextStoreOpenDate = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  nextStoreClosedDate = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  nextContentRevertDate = [(MSDStoreHoursManager *)self nextContentRevertDate];
  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    toString = [timeCopy toString];
    v29 = 138543362;
    v30 = toString;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Evaluating store status against time: %{public}@", &v29, 0xCu);
  }

  if ([(MSDStoreHoursManager *)self useDefaultStoreHours])
  {
    [(MSDStoreHoursManager *)self populateStoreHourFromDefaultSettingsForDate:timeCopy];
  }

  else
  {
    [(MSDStoreHoursManager *)self populateStoreHourFromHubSuppliedSettingsForDate:timeCopy];
  }

  if (isStoreOpenNow != [(MSDStoreHoursManager *)self isStoreOpenNow])
  {
    goto LABEL_15;
  }

  nextStoreOpenDate2 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  if (![nextStoreOpenDate2 isEqualToDate:nextStoreOpenDate])
  {
    goto LABEL_14;
  }

  nextStoreClosedDate2 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  if (([nextStoreClosedDate2 isEqualToDate:nextStoreClosedDate] & 1) == 0)
  {

LABEL_14:
    goto LABEL_15;
  }

  nextContentRevertDate2 = [(MSDStoreHoursManager *)self nextContentRevertDate];
  v14 = [nextContentRevertDate2 isEqualToDate:nextContentRevertDate];

  if (v14)
  {
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "No change in store open-closed status.", &v29, 2u);
    }

    v16 = 0;
    goto LABEL_26;
  }

LABEL_15:
  v17 = defaultLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "New store open-closed status:", &v29, 2u);
  }

  v18 = defaultLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    isStoreOpenNow2 = [(MSDStoreHoursManager *)self isStoreOpenNow];
    v29 = 67109120;
    LODWORD(v30) = isStoreOpenNow2;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "    Is store open now: %{BOOL}d", &v29, 8u);
  }

  v20 = defaultLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    nextStoreOpenDate3 = [(MSDStoreHoursManager *)self nextStoreOpenDate];
    toString2 = [nextStoreOpenDate3 toString];
    v29 = 138543362;
    v30 = toString2;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "    Next store open date: %{public}@", &v29, 0xCu);
  }

  v23 = defaultLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    nextStoreClosedDate3 = [(MSDStoreHoursManager *)self nextStoreClosedDate];
    toString3 = [nextStoreClosedDate3 toString];
    v29 = 138543362;
    v30 = toString3;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "    Next store close date: %{public}@", &v29, 0xCu);
  }

  v15 = defaultLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    nextContentRevertDate3 = [(MSDStoreHoursManager *)self nextContentRevertDate];
    toString4 = [nextContentRevertDate3 toString];
    v29 = 138543362;
    v30 = toString4;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "    Next content revert date: %{public}@", &v29, 0xCu);
  }

  v16 = 1;
LABEL_26:

  return v16;
}

- (id)screenSaverShouldRunUntil
{
  nextStoreOpenDate = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  nextStoreClosedDate = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  if (!os_variant_has_internal_content())
  {
    screenSaverIdleDelay = 0;
LABEL_6:
    v7 = [NSNumber numberWithInteger:60];

    goto LABEL_7;
  }

  v5 = +[MSDTestPreferences sharedInstance];
  screenSaverIdleDelay = [v5 screenSaverIdleDelay];

  if (!screenSaverIdleDelay)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v7 = screenSaverIdleDelay;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Screen saver idle delay: %{public}@ (minutes)", &v19, 0xCu);
  }

  if ([(MSDStoreHoursManager *)self isStoreOpenNow])
  {
    v9 = nextStoreClosedDate;
    [v9 timeIntervalSinceNow];
    if (v10 >= (60 * [v7 integerValue]))
    {
      goto LABEL_21;
    }

    v11 = defaultLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Store will be closing soon!", &v19, 2u);
    }

    v12 = (60 * [v7 integerValue]);
  }

  else
  {
    v9 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", (60 * [v7 integerValue]));
    if ([v9 compare:nextStoreOpenDate] == &dword_0 + 1)
    {
      v13 = defaultLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Store will be opening soon!", &v19, 2u);
      }

      v14 = nextStoreClosedDate;
      goto LABEL_20;
    }

    v12 = 300.0;
  }

  v14 = [NSDate dateWithTimeIntervalSinceNow:v12];
LABEL_20:
  v15 = v14;

  v9 = v15;
LABEL_21:
  v16 = defaultLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    toString = [v9 toString];
    v19 = 138543362;
    v20 = toString;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Screen saver should run until: %{public}@", &v19, 0xCu);
  }

  return v9;
}

- (void)setupStoreOpenCloseTimers
{
  nextStoreOpenDate = [(MSDStoreHoursManager *)self nextStoreOpenDate];
  [(MSDStoreHoursManager *)self setupStoreOpenTimer:nextStoreOpenDate];

  nextStoreClosedDate = [(MSDStoreHoursManager *)self nextStoreClosedDate];
  [(MSDStoreHoursManager *)self setupStoreCloseTimer:nextStoreClosedDate];
}

- (id)parseRawStoreHours:(id)hours
{
  hoursCopy = hours;
  v4 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = hoursCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    obj = v5;
    v25 = *v27;
    while (2)
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v11 count] != &dword_0 + 3)
        {
          v14 = defaultLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_C22C();
          }

          goto LABEL_18;
        }

        v12 = v4;
        v13 = [v11 objectAtIndex:0];
        v14 = [NSDate dateFromString:v13];

        v15 = [v11 objectAtIndex:1];
        v16 = [NSDate dateFromString:v15];

        v17 = [v11 objectAtIndex:2];
        v18 = [NSDate dateFromString:v17];

        if (!v14 || !v16 || !v18)
        {
          sub_C29C(v11, v18, v16);
          v4 = v12;
LABEL_18:
          v5 = obj;

          v22 = 0;
          goto LABEL_19;
        }

        v8 = objc_alloc_init(MSDStoreHourRecord);

        [(MSDStoreHourRecord *)v8 setClosedDate:v14];
        [(MSDStoreHourRecord *)v8 setRevertDate:v16];
        [(MSDStoreHourRecord *)v8 setOpenDate:v18];
        v4 = v12;
        [v12 addObject:v8];

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v7 != v9);
      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = objc_alloc_init(MSDStoreHourRecord);
  v19 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setClosedDate:v19];

  v20 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setRevertDate:v20];

  v21 = +[NSDate distantFuture];
  [(MSDStoreHourRecord *)v10 setOpenDate:v21];

  [v4 addObject:v10];
  v22 = v4;
LABEL_19:

  return v22;
}

- (void)populateStoreHourFromDefaultSettingsForDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = objc_alloc_init(NSDateComponents);
  v6 = [v4 startOfDayForDate:dateCopy];
  [v5 setHour:8];
  [v5 setMinute:0];
  v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  [v5 setHour:8];
  [v5 setMinute:30];
  v8 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  [v5 setHour:23];
  [v5 setMinute:0];
  v9 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  if ([dateCopy isEarlierDateThan:v7])
  {
    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v8];
    [(MSDStoreHoursManager *)self setNextStoreClosedDate:v9];
    [(MSDStoreHoursManager *)self setNextContentRevertDate:v7];
    goto LABEL_10;
  }

  if ([dateCopy isEarlierDateThan:v8])
  {
    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:v8];
  }

  else
  {
    if (![dateCopy isEarlierDateThan:v9])
    {
      [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
      newDateByAddingOneDay = [v8 newDateByAddingOneDay];
      [(MSDStoreHoursManager *)self setNextStoreOpenDate:newDateByAddingOneDay];

      newDateByAddingOneDay2 = [v9 newDateByAddingOneDay];
      [(MSDStoreHoursManager *)self setNextStoreClosedDate:newDateByAddingOneDay2];

      goto LABEL_9;
    }

    [(MSDStoreHoursManager *)self setIsStoreOpenNow:1];
    newDateByAddingOneDay3 = [v8 newDateByAddingOneDay];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:newDateByAddingOneDay3];
  }

  [(MSDStoreHoursManager *)self setNextStoreClosedDate:v9];
LABEL_9:
  newDateByAddingOneDay4 = [v7 newDateByAddingOneDay];
  [(MSDStoreHoursManager *)self setNextContentRevertDate:newDateByAddingOneDay4];

LABEL_10:
}

- (void)populateStoreHourFromHubSuppliedSettingsForDate:(id)date
{
  dateCopy = date;
  storeHourRecords = [(MSDStoreHoursManager *)self storeHourRecords];
  v5 = [storeHourRecords count];

  if (v5)
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v6;
      storeHourRecords2 = [(MSDStoreHoursManager *)self storeHourRecords];
      v6 = [storeHourRecords2 objectAtIndex:v7 - 1];

      closedDate = [v6 closedDate];
      LODWORD(v8) = [dateCopy isLaterDateThan:closedDate];

      if (!v8)
      {
        [(MSDStoreHoursManager *)self setIsStoreOpenNow:1];
        closedDate2 = [v6 closedDate];
        [(MSDStoreHoursManager *)self setNextStoreClosedDate:closedDate2];

        revertDate = [v6 revertDate];
        [(MSDStoreHoursManager *)self setNextContentRevertDate:revertDate];

        openDate = [v6 openDate];
        [(MSDStoreHoursManager *)self setNextStoreOpenDate:openDate];
        goto LABEL_13;
      }

      openDate2 = [v6 openDate];
      v12 = [dateCopy isEarlierDateThan:openDate2];

      if (v12)
      {
        break;
      }

      storeHourRecords3 = [(MSDStoreHoursManager *)self storeHourRecords];
      v14 = [storeHourRecords3 count];

      if (v7++ >= v14)
      {
        goto LABEL_14;
      }
    }

    storeHourRecords4 = [(MSDStoreHoursManager *)self storeHourRecords];
    openDate = [storeHourRecords4 objectAtIndex:v7];

    [(MSDStoreHoursManager *)self setIsStoreOpenNow:0];
    closedDate3 = [openDate closedDate];
    [(MSDStoreHoursManager *)self setNextStoreClosedDate:closedDate3];

    openDate3 = [v6 openDate];
    [(MSDStoreHoursManager *)self setNextStoreOpenDate:openDate3];

    revertDate2 = [v6 revertDate];
    v23 = [dateCopy isLaterDateThan:revertDate2];

    if (v23)
    {
      v24 = openDate;
    }

    else
    {
      v24 = v6;
    }

    revertDate3 = [v24 revertDate];
    [(MSDStoreHoursManager *)self setNextContentRevertDate:revertDate3];

LABEL_13:
LABEL_14:
  }
}

- (void)setupStoreHourSettingsExpirationTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3F28;
  block[3] = &unk_186C0;
  objc_copyWeak(&v8, &location);
  v7 = timerCopy;
  v5 = timerCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeHourSettingsExpirationHandler:(id)handler
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Store hour settings are now expired!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self setStoreHourRecords:0];
  [(MSDStoreHoursManager *)self setUseDefaultStoreHours:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.Expired" object:0 userInfo:0];
}

- (void)setupStoreOpenTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_427C;
  block[3] = &unk_186C0;
  objc_copyWeak(&v8, &location);
  v7 = timerCopy;
  v5 = timerCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeOpenHandler:(id)handler
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Store is open!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstCurrentTime];
  [(MSDStoreHoursManager *)self setupStoreOpenCloseTimers];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.StoreOpen" object:0 userInfo:0];
}

- (void)setupStoreCloseTimer:(id)timer
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4548;
  block[3] = &unk_186C0;
  objc_copyWeak(&v8, &location);
  v7 = timerCopy;
  v5 = timerCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)storeCloseHandler:(id)handler
{
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Store is closed!", v6, 2u);
  }

  [(MSDStoreHoursManager *)self evaluateStoreStatusAgainstCurrentTime];
  [(MSDStoreHoursManager *)self setupStoreOpenCloseTimers];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"com.apple.MobileStoreDemo.StoreHours.StoreClosed" object:0 userInfo:0];
}

@end