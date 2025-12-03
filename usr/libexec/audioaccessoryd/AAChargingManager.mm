@interface AAChargingManager
+ (id)calendar;
+ (id)deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)device;
+ (id)sharedAAChargingManager;
+ (id)wallet;
+ (void)fetchChargingStateForDevice:(id)device;
- (AAChargingManager)init;
- (id)_calendarTravelInterval;
- (id)_currentUserTempDisableDEOCIntervalForIdentifier:(id)identifier;
- (id)_deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)device;
- (id)_earliestDateConsideredForDEOCEvent;
- (id)_isFlightEventWithId:(id)id;
- (id)_latestDateConsideredForDEOCEvent;
- (id)_travelIntervalFromCalendarAndWallet;
- (id)_userTempDisableDEOCIntervalForIdentifier:(id)identifier;
- (id)_walletTravelInterval;
- (id)deocTempDisableIntervalAACPMessageWithInterval:(id)interval;
- (id)upcomingEventIDs;
- (id)userTempDisableDEOCIntervalMap;
- (void)_changeOptimizedBatteryChargingState:(char)state forDevice:(id)device;
- (void)_currentUserDidTempDisableDEOCForDevice:(id)device;
- (void)_fetchOptimizedBatteryChargingEnabledForDevice:(id)device;
- (void)_loadUserTempDisableDEOCIntervals;
- (void)_persistUserTempDisableDEOCIntervals;
- (void)_removeUserTempDisableDEOCIntervalforIdentifier:(id)identifier;
- (void)_setUserTempDisableDEOCInterval:(id)interval forIdentifier:(id)identifier;
- (void)setUserTempDisableDEOCIntervalMap:(id)map;
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

+ (id)deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)device
{
  deviceCopy = device;
  sharedAAChargingManager = [self sharedAAChargingManager];
  v6 = [sharedAAChargingManager _deocTempDisableIntervalAACPMessageIfNeededForDevice:deviceCopy];

  return v6;
}

+ (void)fetchChargingStateForDevice:(id)device
{
  deviceCopy = device;
  sharedAAChargingManager = [self sharedAAChargingManager];
  identifier = [deviceCopy identifier];
  v6 = [sharedAAChargingManager _userTempDisableDEOCIntervalForIdentifier:identifier];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [deviceCopy setDynamicEndOfChargeTempDisabled:v7];
  sharedAAChargingManager2 = [self sharedAAChargingManager];
  [sharedAAChargingManager2 _fetchOptimizedBatteryChargingEnabledForDevice:deviceCopy];
}

- (void)_currentUserDidTempDisableDEOCForDevice:(id)device
{
  deviceCopy = device;
  v8 = +[NSDate now];
  v5 = [NSDate tomorrowAtHour:6];
  v6 = [[NSDateInterval alloc] initWithStartDate:v8 endDate:v5];
  identifier = [deviceCopy identifier];

  [(AAChargingManager *)self _setUserTempDisableDEOCInterval:v6 forIdentifier:identifier];
}

- (id)_deocTempDisableIntervalAACPMessageIfNeededForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy dynamicEndOfChargeEnabled] == 1)
  {
    identifier = [deviceCopy identifier];
    v6 = [(AAChargingManager *)self _currentUserTempDisableDEOCIntervalForIdentifier:identifier];

    if (v6)
    {
      goto LABEL_3;
    }

    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
    {
      sub_1001ED72C();
    }

    _travelIntervalFromCalendarAndWallet = [(AAChargingManager *)self _travelIntervalFromCalendarAndWallet];
    if (_travelIntervalFromCalendarAndWallet)
    {
      v10 = _travelIntervalFromCalendarAndWallet;
      endDate = [_travelIntervalFromCalendarAndWallet endDate];
      v12 = [endDate dateByAddingTimeInterval:86400.0];

      v13 = [NSDateInterval alloc];
      startDate = [v10 startDate];
      v6 = [v13 initWithStartDate:startDate endDate:v12];

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

- (id)deocTempDisableIntervalAACPMessageWithInterval:(id)interval
{
  intervalCopy = interval;
  if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ED764();
  }

  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
  v7 = [NSNumber numberWithDouble:?];

  v10 = 1;
  unsignedLongLongValue = [v5 unsignedLongLongValue];
  unsignedLongLongValue2 = [v7 unsignedLongLongValue];
  v8 = [NSData dataWithBytes:&v10 length:17];

  return v8;
}

- (id)_travelIntervalFromCalendarAndWallet
{
  _walletTravelInterval = [(AAChargingManager *)self _walletTravelInterval];
  _calendarTravelInterval = [(AAChargingManager *)self _calendarTravelInterval];
  v5 = _calendarTravelInterval;
  if (!(_walletTravelInterval | _calendarTravelInterval))
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (!_walletTravelInterval && _calendarTravelInterval)
  {
    v6 = _calendarTravelInterval;
LABEL_9:
    v7 = v6;
    goto LABEL_11;
  }

  if (_walletTravelInterval && !_calendarTravelInterval)
  {
    v6 = _walletTravelInterval;
    goto LABEL_9;
  }

  startDate = [_walletTravelInterval startDate];
  startDate2 = [v5 startDate];
  v10 = [startDate earlierDate:startDate2];

  endDate = [_walletTravelInterval endDate];
  endDate2 = [v5 endDate];
  v13 = [endDate laterDate:endDate2];

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
  _earliestDateConsideredForDEOCEvent = [(AAChargingManager *)self _earliestDateConsideredForDEOCEvent];
  _latestDateConsideredForDEOCEvent = [(AAChargingManager *)self _latestDateConsideredForDEOCEvent];
  v5 = +[AAChargingManager calendar];
  v6 = [v5 predicateForEventsWithStartDate:_earliestDateConsideredForDEOCEvent endDate:_latestDateConsideredForDEOCEvent calendars:0 loadDefaultProperties:1];

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
  userTempDisableDEOCIntervalMap = [(AAChargingManager *)self userTempDisableDEOCIntervalMap];
  v6 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:userTempDisableDEOCIntervalMap requiringSecureCoding:1 error:&v6];
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

- (void)_removeUserTempDisableDEOCIntervalforIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_userTempDisableDEOCIntervalMap setObject:0 forKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  [(AAChargingManager *)selfCopy _persistUserTempDisableDEOCIntervals];
}

- (void)_setUserTempDisableDEOCInterval:(id)interval forIdentifier:(id)identifier
{
  intervalCopy = interval;
  identifierCopy = identifier;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_userTempDisableDEOCIntervalMap setObject:intervalCopy forKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  [(AAChargingManager *)selfCopy _persistUserTempDisableDEOCIntervals];
}

- (void)setUserTempDisableDEOCIntervalMap:(id)map
{
  mapCopy = map;
  obj = self;
  objc_sync_enter(obj);
  userTempDisableDEOCIntervalMap = obj->_userTempDisableDEOCIntervalMap;
  obj->_userTempDisableDEOCIntervalMap = mapCopy;

  objc_sync_exit(obj);
}

- (id)_userTempDisableDEOCIntervalForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AAChargingManager *)self _loadUserTempDisableDEOCIntervals];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_userTempDisableDEOCIntervalMap objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)userTempDisableDEOCIntervalMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userTempDisableDEOCIntervalMap;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_currentUserTempDisableDEOCIntervalForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AAChargingManager *)self _userTempDisableDEOCIntervalForIdentifier:identifierCopy];
  if (v5)
  {
    v6 = +[NSDate now];
    endDate = [v5 endDate];
    v8 = [endDate earlierDate:v6];
    endDate2 = [v5 endDate];

    if (v8 == endDate2)
    {
      [(AAChargingManager *)self _removeUserTempDisableDEOCIntervalforIdentifier:identifierCopy];
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
          startDate = [v10 startDate];
          v13 = [v3 earlierDate:startDate];

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

- (id)_isFlightEventWithId:(id)id
{
  idCopy = id;
  calendar = [sub_100076A0C() calendar];
  v6 = [calendar publicObjectWithObjectID:v3];

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
      categoryDescription = [v9 categoryDescription];
      v11 = [categoryDescription localizedCaseInsensitiveContainsString:@"flight"];

      if (v11)
      {
        if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
        {
          startDate = [v7 startDate];
          endDate = [v7 endDate];
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
    _latestDateConsideredForDEOCEvent = [sub_100076A0C() _latestDateConsideredForDEOCEvent];
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
          relevantDates = [v7 relevantDates];
          v9 = [relevantDates countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                  objc_enumerationMutation(relevantDates);
                }

                v13 = *(*(&v35 + 1) + 8 * i);
                latestDate = [v13 latestDate];
                v15 = [latestDate earlierDate:v3];
                latestDate2 = [v13 latestDate];

                if (v15 != latestDate2)
                {
                  earliestDate = [v13 earliestDate];
                  v18 = [earliestDate laterDate:_latestDateConsideredForDEOCEvent];
                  earliestDate2 = [v13 earliestDate];

                  if (v18 != earliestDate2)
                  {
                    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
                    {
                      earliestDate3 = [v13 earliestDate];
                      latestDate3 = [v13 latestDate];
                      LogPrintF();

                      [v34 addObject:{v13, earliestDate3, latestDate3}];
                    }

                    else
                    {
                      [v34 addObject:{v13, v26, v27}];
                    }
                  }
                }
              }

              v10 = [relevantDates countByEnumeratingWithState:&v35 objects:v43 count:16];
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

- (void)_fetchOptimizedBatteryChargingEnabledForDevice:(id)device
{
  deviceCopy = device;
  obcController = [(AAChargingManager *)self obcController];

  if (obcController)
  {
    [(AAChargingManager *)self obcController];
    objc_claimAutoreleasedReturnValue();
    bluetoothAddress = [sub_100076A0C() bluetoothAddress];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000767CC;
    v7[3] = &unk_1002B7910;
    v8 = deviceCopy;
    [(AAChargingManager *)self isSmartChargingCurrentlyEnabledForDevice:bluetoothAddress withHandler:v7];
  }
}

- (void)_changeOptimizedBatteryChargingState:(char)state forDevice:(id)device
{
  stateCopy = state;
  deviceCopy = device;
  obcController = [(AAChargingManager *)self obcController];

  if (obcController)
  {
    bluetoothAddress = [deviceCopy bluetoothAddress];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000768B8;
    v15[3] = &unk_1002B92D8;
    v17 = stateCopy;
    v9 = deviceCopy;
    v16 = v9;
    v10 = objc_retainBlock(v15);
    switch(stateCopy)
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
        bluetoothAddress2 = [v9 bluetoothAddress];
        LogPrintF();

        break;
    }

LABEL_12:
  }
}

@end