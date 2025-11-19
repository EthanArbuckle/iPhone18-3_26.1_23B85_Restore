@interface AAChargingManager
+ (id)calendar;
+ (id)deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)a3;
+ (id)sharedAAChargingManager;
+ (id)wallet;
+ (void)fetchChargingStateForDevice:(id)a3;
- (AAChargingManager)init;
- (id)_calendarTravelInterval;
- (id)_currentUserTempDisableDEOCIntervalForIdentifier:(id)a3;
- (id)_deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)a3;
- (id)_earliestDateConsideredForDEOCEvent;
- (id)_isFlightEventWithId:(id)a3;
- (id)_latestDateConsideredForDEOCEvent;
- (id)_travelIntervalFromCalendarAndWallet;
- (id)_userTempDisableDEOCIntervalForIdentifier:(id)a3;
- (id)_walletTravelInterval;
- (id)deocTempDisableIntervalAACPMessageWithInterval:(id)a3;
- (id)upcomingEventIDs;
- (id)userTempDisableDEOCIntervalMap;
- (void)_changeOptimizedBatteryChargingState:(char)a3 forDevice:(id)a4;
- (void)_currentUserDidTempDisableDEOCForDevice:(id)a3;
- (void)_fetchOptimizedBatteryChargingEnabledForDevice:(id)a3;
- (void)_loadUserTempDisableDEOCIntervals;
- (void)_persistUserTempDisableDEOCIntervals;
- (void)_removeUserTempDisableDEOCIntervalforIdentifier:(id)a3;
- (void)_setUserTempDisableDEOCInterval:(id)a3 forIdentifier:(id)a4;
- (void)setUserTempDisableDEOCIntervalMap:(id)a3;
@end

@implementation AAChargingManager

- (AAChargingManager)init
{
  v7.receiver = self;
  v7.super_class = AAChargingManager;
  v2 = [(AAChargingManager *)&v7 init];
  if (v2)
  {
    v3 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.audioaccessoryd"];
    obcController = v2->_obcController;
    v2->_obcController = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)sharedAAChargingManager
{
  if (qword_1002FA0E8 != -1)
  {
    sub_1001ED658();
  }

  v3 = qword_1002FA0E0;

  return v3;
}

+ (id)deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedAAChargingManager];
  v6 = [v5 _deocTempDisableIntervalAACPMessageIfNeededForDevice:v4];

  return v6;
}

+ (void)fetchChargingStateForDevice:(id)a3
{
  v9 = a3;
  v4 = [a1 sharedAAChargingManager];
  v5 = [v9 identifier];
  v6 = [v4 _userTempDisableDEOCIntervalForIdentifier:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v9 setDynamicEndOfChargeTempDisabled:v7];
  v8 = [a1 sharedAAChargingManager];
  [v8 _fetchOptimizedBatteryChargingEnabledForDevice:v9];
}

- (void)_currentUserDidTempDisableDEOCForDevice:(id)a3
{
  v4 = a3;
  v8 = +[NSDate now];
  v5 = [NSDate tomorrowAtHour:6];
  v6 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v5];
  v7 = [v4 identifier];

  [(AAChargingManager *)self _setUserTempDisableDEOCInterval:v6 forIdentifier:v7];
}

- (id)_deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)a3
{
  v4 = a3;
  if ([v4 dynamicEndOfChargeEnabled] == 1)
  {
    v5 = [v4 identifier];
    v6 = [(AAChargingManager *)self _currentUserTempDisableDEOCIntervalForIdentifier:v5];

    if (v6)
    {
      goto LABEL_3;
    }

    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
    {
      sub_1001ED72C();
    }

    v9 = [(AAChargingManager *)self _travelIntervalFromCalendarAndWallet];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 endDate];
      v12 = [v11 dateByAddingTimeInterval:86400.0];

      v13 = [NSDateInterval alloc];
      v14 = [v10 startDate];
      v6 = [v13 initWithStartDate:v14 endDate:v12];

      if (v6)
      {
LABEL_3:
        v7 = [(AAChargingManager *)self deocTempDisableIntervalAACPMessageWithInterval:v6];

        goto LABEL_8;
      }
    }

    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
    {
      sub_1001ED748();
    }
  }

  else if (dword_1002F6928 <= 10 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ED6EC();
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)deocTempDisableIntervalAACPMessageWithInterval:(id)a3
{
  v3 = a3;
  if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ED764();
  }

  v4 = [v3 startDate];
  [v4 timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];

  v6 = [v3 endDate];
  [v6 timeIntervalSince1970];
  v7 = [NSNumber numberWithDouble:?];

  v10 = 1;
  v11 = [v5 unsignedLongLongValue];
  v12 = [v7 unsignedLongLongValue];
  v8 = [NSData dataWithBytes:&v10 length:17];

  return v8;
}

- (id)_travelIntervalFromCalendarAndWallet
{
  v3 = [(AAChargingManager *)self _walletTravelInterval];
  v4 = [(AAChargingManager *)self _calendarTravelInterval];
  v5 = v4;
  if (!(v3 | v4))
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (!v3 && v4)
  {
    v6 = v4;
LABEL_9:
    v7 = v6;
    goto LABEL_11;
  }

  if (v3 && !v4)
  {
    v6 = v3;
    goto LABEL_9;
  }

  v8 = [v3 startDate];
  v9 = [v5 startDate];
  v10 = [v8 earlierDate:v9];

  v11 = [v3 endDate];
  v12 = [v5 endDate];
  v13 = [v11 laterDate:v12];

  v7 = [[NSDateInterval alloc] initWithStartDate:v10 endDate:v13];
LABEL_11:

  return v7;
}

+ (id)calendar
{
  v2 = qword_1002FA0F0;
  if (!qword_1002FA0F0)
  {
    v3 = [[EKEventStore alloc] initWithEKOptions:128];
    v4 = qword_1002FA0F0;
    qword_1002FA0F0 = v3;

    v2 = qword_1002FA0F0;
  }

  return v2;
}

- (id)upcomingEventIDs
{
  v3 = [(AAChargingManager *)self _earliestDateConsideredForDEOCEvent];
  v4 = [(AAChargingManager *)self _latestDateConsideredForDEOCEvent];
  v5 = +[AAChargingManager calendar];
  v6 = [v5 predicateForEventsWithStartDate:v3 endDate:v4 calendars:0 loadDefaultProperties:1];

  v7 = +[AAChargingManager calendar];
  v8 = [v7 eventObjectIDsMatchingPredicate:v6];

  return v8;
}

+ (id)wallet
{
  v2 = qword_1002FA0F8;
  if (!qword_1002FA0F8)
  {
    v3 = objc_alloc_init(PKPassLibrary);
    v4 = qword_1002FA0F8;
    qword_1002FA0F8 = v3;

    v2 = qword_1002FA0F8;
  }

  return v2;
}

- (id)_earliestDateConsideredForDEOCEvent
{
  v2 = +[NSDate date];
  v3 = [v2 dateByAddingTimeInterval:-10800.0];

  return v3;
}

- (id)_latestDateConsideredForDEOCEvent
{
  v2 = +[NSDate date];
  v3 = [v2 dateByAddingTimeInterval:604800.0];

  return v3;
}

- (void)_loadUserTempDisableDEOCIntervals
{
  if (![(AAChargingManager *)self userTempDisableDEOCIntervalsLoadedFromPrefs])
  {
    CFDataGetTypeID();
    v3 = CFPrefs_CopyTypedValue();
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v10 count:3];
    v5 = [NSSet setWithArray:v4];

    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v9];
    v7 = v9;
    if (v7)
    {
      if (dword_1002F6928 <= 90 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
      {
        sub_1001ED7A4(v7);
      }

      v8 = objc_alloc_init(NSMutableDictionary);
      [(AAChargingManager *)self setUserTempDisableDEOCIntervalMap:v8];
    }

    else
    {
      [(AAChargingManager *)self setUserTempDisableDEOCIntervalMap:v6];
    }

    [(AAChargingManager *)self setUserTempDisableDEOCIntervalsLoadedFromPrefs:1];
    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
    {
      sub_1001ED7FC(self);
    }
  }
}

- (void)_persistUserTempDisableDEOCIntervals
{
  v3 = [(AAChargingManager *)self userTempDisableDEOCIntervalMap];
  v6 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v6];
  v5 = v6;

  if (v5)
  {
    if (sub_1001ED87C())
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  CFPrefs_SetValue();
  if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ED93C(self, &v7);
LABEL_7:
  }

LABEL_5:
}

- (void)_removeUserTempDisableDEOCIntervalforIdentifier:(id)a3
{
  v5 = a3;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)v4->_userTempDisableDEOCIntervalMap setObject:0 forKeyedSubscript:v5];
  objc_sync_exit(v4);

  [(AAChargingManager *)v4 _persistUserTempDisableDEOCIntervals];
}

- (void)_setUserTempDisableDEOCInterval:(id)a3 forIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_userTempDisableDEOCIntervalMap setObject:v8 forKeyedSubscript:v6];
  objc_sync_exit(v7);

  [(AAChargingManager *)v7 _persistUserTempDisableDEOCIntervals];
}

- (void)setUserTempDisableDEOCIntervalMap:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  userTempDisableDEOCIntervalMap = obj->_userTempDisableDEOCIntervalMap;
  obj->_userTempDisableDEOCIntervalMap = v4;

  objc_sync_exit(obj);
}

- (id)_userTempDisableDEOCIntervalForIdentifier:(id)a3
{
  v4 = a3;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_userTempDisableDEOCIntervalMap objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (id)userTempDisableDEOCIntervalMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_userTempDisableDEOCIntervalMap;
  objc_sync_exit(v2);

  return v3;
}

- (id)_currentUserTempDisableDEOCIntervalForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AAChargingManager *)self _userTempDisableDEOCIntervalForIdentifier:v4];
  if (v5)
  {
    v6 = +[NSDate now];
    v7 = [v5 endDate];
    v8 = [v7 earlierDate:v6];
    v9 = [v5 endDate];

    if (v8 == v9)
    {
      [(AAChargingManager *)self _removeUserTempDisableDEOCIntervalforIdentifier:v4];
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_calendarTravelInterval
{
  v3 = +[NSDate distantFuture];
  v4 = +[NSDate distantPast];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(AAChargingManager *)self upcomingEventIDs];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(AAChargingManager *)self _isFlightEventWithId:*(*(&v18 + 1) + 8 * i)];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 startDate];
          v13 = [v3 earlierDate:v12];

          [v11 endDate];
          objc_claimAutoreleasedReturnValue();
          v14 = [sub_100076A0C() laterDate:v3];

          v7 = 1;
          v3 = v13;
          v4 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);

    if (v7)
    {
      v15 = [[NSDateInterval alloc] initWithStartDate:v3 endDate:v4];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)_isFlightEventWithId:(id)a3
{
  v4 = a3;
  v5 = [sub_100076A0C() calendar];
  v6 = [v5 publicObjectWithObjectID:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if (([v7 isAllDay] & 1) != 0 || (objc_msgSend(v7, "suggestionInfo"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
    {
      v13 = 0;
    }

    else
    {
      v9 = [SGEventMetadata eventMetadataFromEKEvent:v7];
      v10 = [v9 categoryDescription];
      v11 = [v10 localizedCaseInsensitiveContainsString:@"flight"];

      if (v11)
      {
        if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
        {
          v12 = [v7 startDate];
          v15 = [v7 endDate];
          LogPrintF();
        }

        v13 = v7;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_walletTravelInterval
{
  v3 = +[AAChargingManager wallet];
  v4 = [v3 passesOfStyles:16];

  if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
  {
    v25 = [v4 count];
    LogPrintF();
  }

  if ([v4 count])
  {
    [(AAChargingManager *)self _earliestDateConsideredForDEOCEvent];
    objc_claimAutoreleasedReturnValue();
    v5 = [sub_100076A0C() _latestDateConsideredForDEOCEvent];
    v34 = +[NSMutableArray array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v4;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v32)
    {
      v31 = *v40;
      do
      {
        v6 = 0;
        do
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v6;
          v7 = *(*(&v39 + 1) + 8 * v6);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v8 = [v7 relevantDates];
          v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v36;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v36 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v35 + 1) + 8 * i);
                v14 = [v13 latestDate];
                v15 = [v14 earlierDate:v3];
                v16 = [v13 latestDate];

                if (v15 != v16)
                {
                  v17 = [v13 earliestDate];
                  v18 = [v17 laterDate:v5];
                  v19 = [v13 earliestDate];

                  if (v18 != v19)
                  {
                    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
                    {
                      v20 = [v13 earliestDate];
                      v28 = [v13 latestDate];
                      LogPrintF();

                      [v34 addObject:{v13, v20, v28}];
                    }

                    else
                    {
                      [v34 addObject:{v13, v26, v27}];
                    }
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v10);
          }

          v6 = v33 + 1;
        }

        while ((v33 + 1) != v32);
        v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v32);
    }

    if ([v34 count])
    {
      v21 = [PKPassRelevantDate findDateFromDates:v34 option:0];
      v22 = [PKPassRelevantDate findDateFromDates:v34 option:3];
      v23 = [[NSDateInterval alloc] initWithStartDate:v21 endDate:v22];

      v4 = v29;
    }

    else
    {
      v4 = v29;
      if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_fetchOptimizedBatteryChargingEnabledForDevice:(id)a3
{
  v4 = a3;
  v5 = [(AAChargingManager *)self obcController];

  if (v5)
  {
    [(AAChargingManager *)self obcController];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100076A0C() bluetoothAddress];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000767CC;
    v7[3] = &unk_1002B7910;
    v8 = v4;
    [(AAChargingManager *)self isSmartChargingCurrentlyEnabledForDevice:v6 withHandler:v7];
  }
}

- (void)_changeOptimizedBatteryChargingState:(char)a3 forDevice:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(AAChargingManager *)self obcController];

  if (v7)
  {
    v8 = [v6 bluetoothAddress];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000768B8;
    v15[3] = &unk_1002B92D8;
    v17 = v4;
    v9 = v6;
    v16 = v9;
    v10 = objc_retainBlock(v15);
    switch(v4)
    {
      case 1:
        [(AAChargingManager *)self obcController];
        objc_claimAutoreleasedReturnValue();
        sub_1000769EC();
        [v13 enableSmartChargingForDevice:? withHandler:?];
        break;
      case 3:
        [(AAChargingManager *)self obcController];
        objc_claimAutoreleasedReturnValue();
        sub_1000769EC();
        [v12 temporarilyDisableSmartChargingForDevice:? withHandler:?];
        break;
      case 2:
        [(AAChargingManager *)self obcController];
        objc_claimAutoreleasedReturnValue();
        sub_1000769EC();
        [v11 disableSmartChargingForDevice:? withHandler:?];
        break;
      default:
        if (dword_1002F6928 > 90 || dword_1002F6928 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        self = [v9 identifier];
        v14 = [v9 bluetoothAddress];
        LogPrintF();

        break;
    }

LABEL_12:
  }
}

@end