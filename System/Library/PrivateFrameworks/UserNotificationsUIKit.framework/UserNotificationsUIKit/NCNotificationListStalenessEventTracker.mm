@interface NCNotificationListStalenessEventTracker
+ (NCNotificationListStalenessEventTracker)eventTrackerWithAutomaticCollation;
+ (id)_allMetricsSafeBundleIdentifiers;
+ (id)_metricsSafeBundleIdentifierByBundleIdentifier;
+ (id)_metricsSafeBundleIdentifierForBundleIdentifier:(id)identifier;
- (NCNotificationListSection)notificationList;
- (NCNotificationListStalenessEventTracker)init;
- (NCNotificationStructuredSectionList)structuredSectionList;
- (void)_handleListPresentedEvent;
- (void)_queue_collateAndRecordMetrics;
- (void)_queue_processRequests:(id)requests timestamp:(id)timestamp;
- (void)_startAutocollation;
- (void)_stopAutocollation;
- (void)collateAndRecordMetrics;
- (void)dealloc;
- (void)handleEvent:(unint64_t)event;
@end

@implementation NCNotificationListStalenessEventTracker

- (void)_handleListPresentedEvent
{
  date = [MEMORY[0x277CBEAA8] date];
  structuredSectionList = [(NCNotificationListStalenessEventTracker *)self structuredSectionList];
  allNotificationRequests = [structuredSectionList allNotificationRequests];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NCNotificationListStalenessEventTracker__handleListPresentedEvent__block_invoke;
  block[3] = &unk_2783715C0;
  block[4] = self;
  v10 = allNotificationRequests;
  v11 = date;
  v7 = date;
  v8 = allNotificationRequests;
  dispatch_async(queue, block);
}

- (NCNotificationStructuredSectionList)structuredSectionList
{
  WeakRetained = objc_loadWeakRetained(&self->_structuredSectionList);

  return WeakRetained;
}

+ (NCNotificationListStalenessEventTracker)eventTrackerWithAutomaticCollation
{
  v2 = objc_alloc_init(self);
  [v2 _startAutocollation];

  return v2;
}

- (NCNotificationListStalenessEventTracker)init
{
  v23[10] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NCNotificationListStalenessEventTracker;
  v2 = [(NCNotificationListStalenessEventTracker *)&v20 init];
  if (v2)
  {
    v3 = NCGetEventTrackerQueue();
    v4 = dispatch_queue_create_with_target_V2("com.apple.UserNotificationsUIKit.NotificationListStalenessMetric", 0, v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastDisplayedDateByNotificationMetadata = v2->_lastDisplayedDateByNotificationMetadata;
    v2->_lastDisplayedDateByNotificationMetadata = v6;

    v8 = MEMORY[0x277D41DA0];
    _allMetricsSafeBundleIdentifiers = [objc_opt_class() _allMetricsSafeBundleIdentifiers];
    v10 = [v8 propertyWithName:@"bundleIdentifier" possibleValues:_allMetricsSafeBundleIdentifiers autoSanitizeValues:0];

    v11 = MEMORY[0x277D41DA0];
    v22[0] = &unk_283015470;
    v22[1] = &unk_283015488;
    v23[0] = @"InsideMinute";
    v23[1] = @"InsideFiveMinutes";
    v22[2] = &unk_2830154A0;
    v22[3] = &unk_2830154B8;
    v23[2] = @"InsideTwentyMinutes";
    v23[3] = @"InsideHour";
    v22[4] = &unk_2830154D0;
    v22[5] = &unk_2830154E8;
    v23[4] = @"InsideTwoHours";
    v23[5] = @"InsideSixHours";
    v22[6] = &unk_283015500;
    v22[7] = &unk_283015518;
    v23[6] = @"InsideDay";
    v23[7] = @"InsideTwoDays";
    v22[8] = &unk_283015530;
    v22[9] = &unk_283015548;
    v23[8] = @"InsideWeek";
    v23[9] = @"OutsideWeek";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:10];
    v13 = [v11 propertyWithName:@"timeInterval" enumMapping:v12];

    v14 = [MEMORY[0x277D41DA0] propertyWithName:@"pairedDeviceCount" rangeMin:0 rangeMax:99];
    v15 = objc_alloc(MEMORY[0x277D41DB8]);
    v21[0] = v10;
    v21[1] = v13;
    v21[2] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v17 = [v15 initWithFeatureId:@"NotificationsUI" event:@"lockscreenStaleness" registerProperties:v16];
    stalenessEventTracker = v2->_stalenessEventTracker;
    v2->_stalenessEventTracker = v17;
  }

  return v2;
}

- (void)dealloc
{
  [(NCNotificationListStalenessEventTracker *)self _stopAutocollation];
  v3.receiver = self;
  v3.super_class = NCNotificationListStalenessEventTracker;
  [(NCNotificationListStalenessEventTracker *)&v3 dealloc];
}

- (void)_startAutocollation
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleSignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopAutocollation
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
}

- (void)handleEvent:(unint64_t)event
{
  if (!event)
  {
    [(NCNotificationListStalenessEventTracker *)self _handleListPresentedEvent];
  }
}

- (void)_queue_processRequests:(id)requests timestamp:(id)timestamp
{
  v19 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  timestampCopy = timestamp;
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [NCEventTrackerNotificationMetadata metadataForNotificationRequest:*(*(&v14 + 1) + 8 * v12), v14];
        [(NSMutableDictionary *)self->_lastDisplayedDateByNotificationMetadata setObject:timestampCopy forKey:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)collateAndRecordMetrics
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NCNotificationListStalenessEventTracker_collateAndRecordMetrics__block_invoke;
  block[3] = &unk_27836F6A8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_collateAndRecordMetrics
{
  v57 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableDictionary *)self->_lastDisplayedDateByNotificationMetadata count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = self->_lastDisplayedDateByNotificationMetadata;
    v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v4)
    {
      v5 = v4;
      v39 = *v50;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v50 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v49 + 1) + 8 * i);
          v8 = [(NSMutableDictionary *)self->_lastDisplayedDateByNotificationMetadata objectForKey:v7];
          date = [v7 date];
          [v8 timeIntervalSinceDate:date];
          v11 = v10;

          v12 = NCTimeIntervalBinForTimeInterval(v11);
          v13 = objc_opt_class();
          bundleIdentifier = [v7 bundleIdentifier];
          v15 = [v13 _metricsSafeBundleIdentifierForBundleIdentifier:bundleIdentifier];

          v16 = [v3 objectForKey:v15];
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v3 setObject:v16 forKey:v15];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
          v18 = [v16 objectForKey:v17];
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "unsignedIntegerValue") + 1}];

          [v16 setObject:v19 forKey:v17];
        }

        v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v5);
    }

    selfCopy = self;

    v21 = BBEventTrackingSyncDeviceCount();
    if (v21 >= 0x63)
    {
      v22 = 99;
    }

    else
    {
      v22 = v21;
    }

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obja = v3;
    v36 = [obja countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v36)
    {
      v35 = *v46;
      do
      {
        v24 = 0;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v40 = v24;
          v25 = *(*(&v45 + 1) + 8 * v24);
          v26 = [obja objectForKey:{v25, v35}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v42;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v42 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v41 + 1) + 8 * j);
                v32 = [v26 objectForKey:v31];
                stalenessEventTracker = selfCopy->_stalenessEventTracker;
                v53[0] = v25;
                v53[1] = v31;
                v53[2] = v23;
                v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
                -[PETScalarEventTracker trackEventWithPropertyValues:value:](stalenessEventTracker, "trackEventWithPropertyValues:value:", v34, [v32 unsignedIntegerValue]);
              }

              v28 = [v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
            }

            while (v28);
          }

          v24 = v40 + 1;
        }

        while (v40 + 1 != v36);
        v36 = [obja countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v36);
    }

    [(NSMutableDictionary *)selfCopy->_lastDisplayedDateByNotificationMetadata removeAllObjects];
  }
}

+ (id)_metricsSafeBundleIdentifierByBundleIdentifier
{
  if (_metricsSafeBundleIdentifierByBundleIdentifier_onceToken != -1)
  {
    +[NCNotificationListStalenessEventTracker _metricsSafeBundleIdentifierByBundleIdentifier];
  }

  v3 = _metricsSafeBundleIdentifierByBundleIdentifier_allowedList;

  return v3;
}

void __89__NCNotificationListStalenessEventTracker__metricsSafeBundleIdentifierByBundleIdentifier__block_invoke()
{
  v0 = _metricsSafeBundleIdentifierByBundleIdentifier_allowedList;
  _metricsSafeBundleIdentifierByBundleIdentifier_allowedList = &unk_283015878;
}

+ (id)_allMetricsSafeBundleIdentifiers
{
  v7[2] = *MEMORY[0x277D85DE8];
  _metricsSafeBundleIdentifierByBundleIdentifier = [self _metricsSafeBundleIdentifierByBundleIdentifier];
  allValues = [_metricsSafeBundleIdentifierByBundleIdentifier allValues];

  v7[0] = @"1stParty";
  v7[1] = @"3rdParty";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [allValues arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (id)_metricsSafeBundleIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy un_isFirstPartyIdentifier])
  {
    _metricsSafeBundleIdentifierByBundleIdentifier = [self _metricsSafeBundleIdentifierByBundleIdentifier];
    v6 = [_metricsSafeBundleIdentifierByBundleIdentifier objectForKey:identifierCopy];
    v7 = v6;
    v8 = @"1stParty";
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = @"3rdParty";
  }

  return v9;
}

- (NCNotificationListSection)notificationList
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationList);

  return WeakRetained;
}

@end