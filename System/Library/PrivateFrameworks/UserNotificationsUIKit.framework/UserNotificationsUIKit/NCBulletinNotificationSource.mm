@interface NCBulletinNotificationSource
- (BOOL)dispatcher:(id)dispatcher supportSectionPreloadForSectionIdentifier:(id)identifier;
- (NCBulletinNotificationSource)init;
- (NCBulletinNotificationSource)initWithDispatcher:(id)dispatcher;
- (NCBulletinNotificationSource)initWithDispatcher:(id)dispatcher observer:(id)observer queue:(id)queue;
- (id)_alertOptionsWithBehavior:(id)behavior;
- (id)_bulletinsPerSectionIdForNotificationRequests:(id)requests;
- (id)_bulletinsToClearPerSectionIdForNotificationRequests:(id)requests removingDestinations:(id)destinations;
- (id)_queue_sectionInfoForBulletin:(id)bulletin;
- (id)_removalRequestForBulletin:(id)bulletin observer:(id)observer feed:(unint64_t)feed;
- (id)_requestUUIDForBulletinPublisherMatchID:(id)d;
- (id)_updatedRequestWithAlertOptions:(id)options;
- (id)dispatcher:(id)dispatcher notificationRequestForUUID:(id)d;
- (unint64_t)_updateFeedForCoverSheetDestination:(unint64_t)destination storedFeed:(unint64_t)feed;
- (void)_applicationIconChanged:(id)changed;
- (void)_modifySectionIdentifier:(id)identifier handler:(id)handler;
- (void)_withdrawRequestFromUI:(id)i;
- (void)dealloc;
- (void)dispatcher:(id)dispatcher didExecuteAction:(id)action forNotificationRequest:(id)request;
- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequests:(id)requests;
- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations;
- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequestsInSections:(id)sections;
- (void)dispatcher:(id)dispatcher setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)dispatcher:(id)dispatcher setNotificationSystemSettings:(id)settings;
- (void)dispatcher:(id)dispatcher setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)dispatcher:(id)dispatcher setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply;
- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer noteBulletinsLoadedForSectionID:(id)d;
- (void)observer:(id)observer noteServerConnectionStateChanged:(BOOL)changed;
- (void)observer:(id)observer removeBulletin:(id)bulletin;
- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed;
- (void)observer:(id)observer removeSection:(id)section;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)observer:(id)observer updateSectionInfo:(id)info;
@end

@implementation NCBulletinNotificationSource

- (NCBulletinNotificationSource)init
{
  [(NCBulletinNotificationSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NCBulletinNotificationSource)initWithDispatcher:(id)dispatcher
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatcherCopy = dispatcher;
  v7 = dispatch_queue_create("com.apple.UserNotificationsUI.BulletinNotificationSource", v5);

  v8 = [objc_alloc(MEMORY[0x277CF3550]) initWithQueue:v7 calloutQueue:v7];
  v9 = [(NCBulletinNotificationSource *)self initWithDispatcher:dispatcherCopy observer:v8 queue:v7];

  return v9;
}

- (NCBulletinNotificationSource)initWithDispatcher:(id)dispatcher observer:(id)observer queue:(id)queue
{
  dispatcherCopy = dispatcher;
  observerCopy = observer;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = NCBulletinNotificationSource;
  v12 = [(NCBulletinNotificationSource *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    v14 = dispatch_queue_create("com.apple.UserNotificationsUI.BulletinNotificationSource.sectionInfo", MEMORY[0x277D85CD8]);
    queueForSectionInfoById = v13->_queueForSectionInfoById;
    v13->_queueForSectionInfoById = v14;

    objc_storeStrong(&v13->_observer, observer);
    [(BBObserver *)v13->_observer setObserverFeed:0xFFFFLL];
    [(BBObserver *)v13->_observer setDelegate:v13];
    objc_storeStrong(&v13->_dispatcher, dispatcher);
    [(NCNotificationDispatcher *)v13->_dispatcher addDispatcherSourceDelegate:v13];
    v16 = objc_opt_new();
    sectionInfoById = v13->_sectionInfoById;
    v13->_sectionInfoById = v16;

    v18 = objc_opt_new();
    bulletinFeeds = v13->_bulletinFeeds;
    v13->_bulletinFeeds = v18;

    v20 = objc_opt_new();
    bulletinsToUUIDs = v13->_bulletinsToUUIDs;
    v13->_bulletinsToUUIDs = v20;

    v22 = objc_opt_new();
    uuidsToRequests = v13->_uuidsToRequests;
    v13->_uuidsToRequests = v22;

    v24 = [MEMORY[0x277D05908] serviceForClientIdentifier:@"com.apple.springboard.NCBulletinNotificationSource"];
    eventBehaviorResolutionService = v13->_eventBehaviorResolutionService;
    v13->_eventBehaviorResolutionService = v24;

    mEMORY[0x277CE2188] = [MEMORY[0x277CE2188] sharedInstance];
    v27 = [objc_alloc(MEMORY[0x277CF3580]) initWithQueue:v13->_queue];
    settingsGateway = v13->_settingsGateway;
    v13->_settingsGateway = v27;

    queue = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NCBulletinNotificationSource_initWithDispatcher_observer_queue___block_invoke;
    block[3] = &unk_27836F6A8;
    v30 = v13;
    v34 = v30;
    dispatch_async(queue, block);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v30 selector:sel__applicationIconChanged_ name:@"com.apple.LaunchServices.applicationIconChanged" object:0];
  }

  return v13;
}

void __66__NCBulletinNotificationSource_initWithDispatcher_observer_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingsGateway];
  v3 = [v2 effectiveGlobalScheduledDeliverySetting] == 2;

  v4 = [*(a1 + 32) settingsGateway];
  v5 = [v4 effectiveGlobalScheduledDeliverySetting] == -1;

  v6 = [*(a1 + 32) settingsGateway];
  v7 = [v6 effectiveGlobalScheduledDeliveryShowNextSummarySetting] == 2;

  v8 = [*(a1 + 32) settingsGateway];
  v9 = [v8 effectiveGlobalScheduledDeliveryTimes];

  v10 = MEMORY[0x277D77E68];
  v11 = [*(a1 + 32) settingsGateway];
  v12 = [v10 listDisplayStyleSettingForBBNotificationListDisplayStyleSetting:{objc_msgSend(v11, "effectiveGlobalNotificationListDisplayStyleSetting")}];

  v13 = [*(a1 + 32) settingsGateway];
  v14 = [v13 effectiveGlobalHighlightsSetting] == 2;

  v15 = [MEMORY[0x277D77E68] notificationSystemSettingsForScheduledDeliveryEnabled:v3 scheduledDeliveryUninitialized:v5 scheduledDeliveryShowNextSummary:v7 scheduledDeliveryTimes:v9 listDisplayStyleSetting:v12 highlightsEnabled:v14];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__NCBulletinNotificationSource_initWithDispatcher_observer_queue___block_invoke_2;
  v17[3] = &unk_27836F560;
  v18 = *(a1 + 32);
  v19 = v15;
  v16 = v15;
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void __66__NCBulletinNotificationSource_initWithDispatcher_observer_queue___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatcher];
  [v2 updateNotificationSystemSettings:*(a1 + 40)];
}

- (void)dealloc
{
  [(BBObserver *)self->_observer invalidate];
  v3.receiver = self;
  v3.super_class = NCBulletinNotificationSource;
  [(NCBulletinNotificationSource *)&v3 dealloc];
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply
{
  sirensCopy = sirens;
  v62 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  replyCopy = reply;
  queue = self->_queue;
  observerCopy = observer;
  dispatch_assert_queue_V2(queue);
  publisherMatchID = [bulletinCopy publisherMatchID];
  v16 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    un_logDigest = [publisherMatchID un_logDigest];
    sectionID = [bulletinCopy sectionID];
    *buf = 138544130;
    v55 = v19;
    v56 = 2114;
    v57 = un_logDigest;
    v58 = 2048;
    feedCopy = feed;
    v60 = 2114;
    v61 = sectionID;
    _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ adding bulletin %{public}@ for feed %lu in section %{public}@", buf, 0x2Au);
  }

  bulletinFeeds = [(NCBulletinNotificationSource *)self bulletinFeeds];
  v23 = [bulletinFeeds objectForKey:publisherMatchID];

  v48 = publisherMatchID;
  if (publisherMatchID)
  {
    bulletinFeeds2 = [(NCBulletinNotificationSource *)self bulletinFeeds];
    v25 = [bulletinFeeds2 objectForKey:publisherMatchID];

    feed = -[NCBulletinNotificationSource _updateFeedForCoverSheetDestination:storedFeed:](self, "_updateFeedForCoverSheetDestination:storedFeed:", feed, [v25 unsignedIntegerValue]);
    if (v25)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "unsignedIntegerValue") | feed}];
    }

    else
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:feed];
    }

    bulletinFeeds3 = [(NCBulletinNotificationSource *)self bulletinFeeds];
    publisherMatchID2 = [bulletinCopy publisherMatchID];
    [bulletinFeeds3 setObject:v26 forKey:publisherMatchID2];
  }

  v29 = [(NCBulletinNotificationSource *)self _queue_sectionInfoForBulletin:bulletinCopy];
  publisherMatchID3 = [bulletinCopy publisherMatchID];
  v31 = [(NCBulletinNotificationSource *)self _requestUUIDForBulletinPublisherMatchID:publisherMatchID3];

  v32 = sirensCopy;
  v33 = [MEMORY[0x277D77E48] notificationRequestForBulletin:bulletinCopy observer:observerCopy sectionInfo:v29 feed:feed playLightsAndSirens:sirensCopy uuid:v31];

  requestDestinations = [v33 requestDestinations];
  v35 = [requestDestinations count];

  if (v35)
  {
    [(NSMutableDictionary *)self->_uuidsToRequests setObject:v33 forKey:v31];
  }

  v36 = [(NCBulletinNotificationSource *)self _updatedRequestWithAlertOptions:v33];

  v37 = v32;
  if ((feed & 0x80B) != 0)
  {
    if (v23)
    {
      v38 = +[NCNotificationEventTracker sharedInstance];
      [v38 modifiedNotificationRequest:v36];
    }

    else
    {
      v39 = (feed & 0xA) != 0;
      v38 = [MEMORY[0x277D77E58] notificationSectionSettingsForBBSectionInfo:v29];
      v40 = +[NCNotificationEventTracker sharedInstance];
      v41 = v39;
      v37 = v32;
      [v40 receivedNotification:v36 withProminence:v41 sectionSettings:v38];
    }
  }

  dispatcher = [(NCBulletinNotificationSource *)self dispatcher];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NCBulletinNotificationSource_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke;
  block[3] = &unk_278372E58;
  v50 = dispatcher;
  v51 = v36;
  v52 = v47;
  v53 = v37;
  v43 = v47;
  v44 = v36;
  v45 = dispatcher;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__NCBulletinNotificationSource_observer_addBulletin_forFeed_playLightsAndSirens_withReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) postNotificationWithRequest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 56));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  queue = self->_queue;
  bulletinCopy = bulletin;
  observerCopy = observer;
  dispatch_assert_queue_V2(queue);
  [(NCBulletinNotificationSource *)self observer:observerCopy addBulletin:bulletinCopy forFeed:feed playLightsAndSirens:1 withReply:0];
}

- (void)observer:(id)observer modifyBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v43 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  publisherMatchID = [bulletinCopy publisherMatchID];
  v11 = MEMORY[0x277D77DB8];
  v12 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    un_logDigest = [publisherMatchID un_logDigest];
    *buf = 138543874;
    v38 = v15;
    v39 = 2114;
    v40 = un_logDigest;
    v41 = 2048;
    feedCopy = feed;
    _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ modifying bulletin %{public}@ for feed %lu", buf, 0x20u);
  }

  bulletinFeeds = [(NCBulletinNotificationSource *)self bulletinFeeds];
  v18 = [bulletinFeeds objectForKey:publisherMatchID];

  if (publisherMatchID && v18)
  {
    bulletinFeeds2 = [(NCBulletinNotificationSource *)self bulletinFeeds];
    publisherMatchID2 = [bulletinCopy publisherMatchID];
    v21 = [bulletinFeeds2 objectForKey:publisherMatchID2];

    if (v21)
    {
      feed &= [v21 unsignedIntegerValue];
    }

    v22 = -[NCBulletinNotificationSource _updateFeedForCoverSheetDestination:storedFeed:](self, "_updateFeedForCoverSheetDestination:storedFeed:", feed, [v21 unsignedIntegerValue]);
    v23 = [(NCBulletinNotificationSource *)self _queue_sectionInfoForBulletin:bulletinCopy];
    publisherMatchID3 = [bulletinCopy publisherMatchID];
    v25 = [(NCBulletinNotificationSource *)self _requestUUIDForBulletinPublisherMatchID:publisherMatchID3];

    v26 = [MEMORY[0x277D77E48] notificationRequestForBulletin:bulletinCopy observer:observerCopy sectionInfo:v23 feed:v22 uuid:v25];
    [(NSMutableDictionary *)self->_uuidsToRequests setObject:v26 forKey:v25];
    v27 = [(NCBulletinNotificationSource *)self _updatedRequestWithAlertOptions:v26];

    dispatcher = [(NCBulletinNotificationSource *)self dispatcher];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __64__NCBulletinNotificationSource_observer_modifyBulletin_forFeed___block_invoke;
    v34[3] = &unk_27836F560;
    v35 = dispatcher;
    v36 = v27;
    v29 = v27;
    v30 = dispatcher;
    dispatch_async(MEMORY[0x277D85CD0], v34);
  }

  else
  {
    v31 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      un_logDigest2 = [publisherMatchID un_logDigest];
      *buf = 138543362;
      v38 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v32, OS_LOG_TYPE_DEFAULT, "Bulletin %{public}@ was not found and can't be modified", buf, 0xCu);
    }
  }
}

- (void)observer:(id)observer removeBulletin:(id)bulletin forFeed:(unint64_t)feed
{
  v43 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  publisherMatchID = [bulletinCopy publisherMatchID];
  v11 = MEMORY[0x277D77DB8];
  v12 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    un_logDigest = [publisherMatchID un_logDigest];
    v37 = 138543874;
    v38 = v15;
    v39 = 2114;
    v40 = un_logDigest;
    v41 = 2048;
    feedCopy = feed;
    _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing bulletin %{public}@ for feed %lu", &v37, 0x20u);
  }

  bulletinFeeds = [(NCBulletinNotificationSource *)self bulletinFeeds];
  v18 = [bulletinFeeds objectForKey:publisherMatchID];

  if (publisherMatchID && v18)
  {
    bulletinFeeds2 = [(NCBulletinNotificationSource *)self bulletinFeeds];
    publisherMatchID2 = [bulletinCopy publisherMatchID];
    v21 = [bulletinFeeds2 objectForKey:publisherMatchID2];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    v23 = unsignedIntegerValue & ~feed;
    bulletinFeeds3 = [(NCBulletinNotificationSource *)self bulletinFeeds];
    v25 = bulletinFeeds3;
    if (v23)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue & ~feed];
      publisherMatchID3 = [bulletinCopy publisherMatchID];
      [v25 setObject:v26 forKey:publisherMatchID3];
    }

    else
    {
      [bulletinFeeds3 removeObjectForKey:publisherMatchID];
    }

    publisherMatchID4 = [bulletinCopy publisherMatchID];
    v31 = [(NCBulletinNotificationSource *)self _requestUUIDForBulletinPublisherMatchID:publisherMatchID4];

    v33 = [(NCBulletinNotificationSource *)self _removalRequestForBulletin:bulletinCopy observer:observerCopy feed:feed];
    [(NCBulletinNotificationSource *)self _withdrawRequestFromUI:v33];
    if (!v23)
    {
      bulletinsToUUIDs = self->_bulletinsToUUIDs;
      publisherMatchID5 = [bulletinCopy publisherMatchID];
      [(NSMutableDictionary *)bulletinsToUUIDs removeObjectForKey:publisherMatchID5];

      if (v31)
      {
        [(NSMutableDictionary *)self->_uuidsToRequests removeObjectForKey:v31];
      }

      v36 = +[NCNotificationEventTracker sharedInstance];
      [v36 removedNotificationRequest:v33];
    }
  }

  else
  {
    v28 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      un_logDigest2 = [publisherMatchID un_logDigest];
      v37 = 138543362;
      v38 = un_logDigest2;
      _os_log_impl(&dword_21E77E000, v29, OS_LOG_TYPE_DEFAULT, "Bulletin %{public}@ was already removed!", &v37, 0xCu);
    }

    v31 = [(NCBulletinNotificationSource *)self _removalRequestForBulletin:bulletinCopy observer:observerCopy feed:65023];
    [(NCBulletinNotificationSource *)self _withdrawRequestFromUI:v31];
  }
}

- (id)_removalRequestForBulletin:(id)bulletin observer:(id)observer feed:(unint64_t)feed
{
  observerCopy = observer;
  bulletinCopy = bulletin;
  v10 = [(NCBulletinNotificationSource *)self _queue_sectionInfoForBulletin:bulletinCopy];
  publisherMatchID = [bulletinCopy publisherMatchID];
  v12 = [(NCBulletinNotificationSource *)self _requestUUIDForBulletinPublisherMatchID:publisherMatchID];

  v13 = [MEMORY[0x277D77E48] notificationRequestForBulletin:bulletinCopy observer:observerCopy sectionInfo:v10 feed:feed uuid:v12];

  v14 = [(NCBulletinNotificationSource *)self _updatedRequestWithAlertOptions:v13];

  return v14;
}

- (void)_withdrawRequestFromUI:(id)i
{
  iCopy = i;
  dispatcher = [(NCBulletinNotificationSource *)self dispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NCBulletinNotificationSource__withdrawRequestFromUI___block_invoke;
  v8[3] = &unk_27836F560;
  v9 = dispatcher;
  v10 = iCopy;
  v6 = iCopy;
  v7 = dispatcher;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)observer:(id)observer removeBulletin:(id)bulletin
{
  queue = self->_queue;
  bulletinCopy = bulletin;
  observerCopy = observer;
  dispatch_assert_queue_V2(queue);
  [(NCBulletinNotificationSource *)self observer:observerCopy removeBulletin:bulletinCopy forFeed:65023];
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  sectionID = [infoCopy sectionID];
  queueForSectionInfoById = self->_queueForSectionInfoById;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__NCBulletinNotificationSource_observer_updateSectionInfo___block_invoke;
  block[3] = &unk_2783715C0;
  block[4] = self;
  v18 = infoCopy;
  v19 = sectionID;
  v8 = sectionID;
  v9 = infoCopy;
  dispatch_barrier_async(queueForSectionInfoById, block);
  v10 = [MEMORY[0x277D77E58] notificationSectionSettingsForBBSectionInfo:v9];
  dispatcher = [(NCBulletinNotificationSource *)self dispatcher];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__NCBulletinNotificationSource_observer_updateSectionInfo___block_invoke_2;
  v14[3] = &unk_27836F560;
  v15 = dispatcher;
  v16 = v10;
  v12 = v10;
  v13 = dispatcher;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __59__NCBulletinNotificationSource_observer_updateSectionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionInfoById];
  if ([*(a1 + 40) hasEnabledSettings])
  {
    [v2 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    [v2 removeObjectForKey:*(a1 + 48)];
  }
}

- (void)observer:(id)observer removeSection:(id)section
{
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  dispatcher = [(NCBulletinNotificationSource *)self dispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__NCBulletinNotificationSource_observer_removeSection___block_invoke;
  v9[3] = &unk_27836F560;
  v10 = dispatcher;
  v11 = sectionCopy;
  v7 = sectionCopy;
  v8 = dispatcher;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)observer:(id)observer noteServerConnectionStateChanged:(BOOL)changed
{
  changedCopy = changed;
  observerCopy = observer;
  dispatch_assert_queue_V2(self->_queue);
  if (changedCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__NCBulletinNotificationSource_observer_noteServerConnectionStateChanged___block_invoke;
    v7[3] = &unk_278372E80;
    v7[4] = self;
    v8 = observerCopy;
    [v8 getSectionInfoWithCompletion:v7];
  }
}

void __74__NCBulletinNotificationSource_observer_noteServerConnectionStateChanged___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) observer:*(a1 + 40) updateSectionInfo:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) requestNoticesBulletinsForAllSections];
}

- (void)observer:(id)observer noteBulletinsLoadedForSectionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NCBulletinNotificationSource_observer_noteBulletinsLoadedForSectionID___block_invoke;
  v7[3] = &unk_27836F560;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __73__NCBulletinNotificationSource_observer_noteBulletinsLoadedForSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatcher];
  [v2 notificationsLoadedForSectionIdentifier:*(a1 + 40)];
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  queue = self->_queue;
  settingsCopy = settings;
  dispatch_assert_queue_V2(queue);
  v7 = [MEMORY[0x277D77E68] notificationSystemSettingsForBBGlobalSettings:settingsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NCBulletinNotificationSource_observer_updateGlobalSettings___block_invoke;
  v9[3] = &unk_27836F560;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __62__NCBulletinNotificationSource_observer_updateGlobalSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatcher];
  [v2 updateNotificationSystemSettings:*(a1 + 40)];
}

- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequests:(id)requests
{
  v5 = [(NCBulletinNotificationSource *)self _bulletinsPerSectionIdForNotificationRequests:requests];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequests___block_invoke;
  block[3] = &unk_278370A90;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __80__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequests___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained observer];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKey:v9];
        [v3 clearBulletins:v10 inSection:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequests:(id)requests fromDestinations:(id)destinations
{
  destinationsCopy = destinations;
  requestsCopy = requests;
  v9 = [(NCBulletinNotificationSource *)self _bulletinsPerSectionIdForNotificationRequests:requestsCopy];
  v10 = [(NCBulletinNotificationSource *)self _bulletinsToClearPerSectionIdForNotificationRequests:requestsCopy removingDestinations:destinationsCopy];

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequests_fromDestinations___block_invoke;
  block[3] = &unk_278372EA8;
  objc_copyWeak(&v19, &location);
  v16 = destinationsCopy;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = destinationsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __97__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequests_fromDestinations___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained observer];

  if (([a1[4] containsObject:@"BulletinDestinationLockScreen"] & 1) != 0 || objc_msgSend(a1[4], "containsObject:", @"BulletinDestinationCoverSheet"))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [a1[5] allKeys];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [a1[5] objectForKey:v9];
          [v3 removeBulletins:v10 inSection:v9 fromFeed:8];
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [a1[6] allKeys];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * j);
          v17 = [a1[6] objectForKey:v16];
          [v3 clearBulletins:v17 inSection:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequestsInSections:(id)sections
{
  sectionsCopy = sections;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequestsInSections___block_invoke;
  block[3] = &unk_27836F9D0;
  v9 = sectionsCopy;
  v7 = sectionsCopy;
  objc_copyWeak(&v10, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __90__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequestsInSections___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
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

        v7 = *(*(&v10 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v9 = [WeakRetained observer];

        [v9 clearSection:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)dispatcher:(id)dispatcher requestsClearingNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequestsFromDate_toDate_inSections___block_invoke;
  block[3] = &unk_278372EA8;
  objc_copyWeak(&v20, &location);
  v17 = dateCopy;
  v18 = toDateCopy;
  v19 = sectionsCopy;
  v13 = sectionsCopy;
  v14 = toDateCopy;
  v15 = dateCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __106__NCBulletinNotificationSource_dispatcher_requestsClearingNotificationRequestsFromDate_toDate_inSections___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained observer];

  [v3 clearBulletinsFromDate:*(a1 + 32) toDate:*(a1 + 40) inSections:*(a1 + 48)];
}

- (void)dispatcher:(id)dispatcher setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__NCBulletinNotificationSource_dispatcher_setAllowsNotifications_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  notificationsCopy = notifications;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

uint64_t __87__NCBulletinNotificationSource_dispatcher_setAllowsNotifications_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setAuthorizationStatus:v2];
}

- (void)dispatcher:(id)dispatcher setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__NCBulletinNotificationSource_dispatcher_setDeliverQuietly_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  quietlyCopy = quietly;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

- (void)dispatcher:(id)dispatcher setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  dateCopy = date;
  threadIdentifierCopy = threadIdentifier;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__NCBulletinNotificationSource_dispatcher_setMuted_untilDate_forSectionIdentifier_threadIdentifier___block_invoke;
  v15[3] = &unk_278372EF0;
  mutedCopy = muted;
  v16 = threadIdentifierCopy;
  v17 = dateCopy;
  v13 = dateCopy;
  v14 = threadIdentifierCopy;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v15];
}

void __100__NCBulletinNotificationSource_dispatcher_setMuted_untilDate_forSectionIdentifier_threadIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (*(a1 + 48) == 1)
  {
    if (v4)
    {
      [v3 muteThreadIdentifier:v4 untilDate:*(a1 + 40)];
    }

    else
    {
      [v3 muteSectionUntilDate:*(a1 + 40)];
    }
  }

  else if (v4)
  {
    [v3 unmuteThreadIdentifier:?];
  }

  else
  {
    [v3 unmuteSection];
  }
}

- (void)dispatcher:(id)dispatcher setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__NCBulletinNotificationSource_dispatcher_setAllowsCriticalAlerts_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  alertsCopy = alerts;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

uint64_t __88__NCBulletinNotificationSource_dispatcher_setAllowsCriticalAlerts_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setCriticalAlertSetting:v2];
}

- (void)dispatcher:(id)dispatcher setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__NCBulletinNotificationSource_dispatcher_setAllowsTimeSensitive_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  sensitiveCopy = sensitive;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

void __87__NCBulletinNotificationSource_dispatcher_setAllowsTimeSensitive_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a2;
  [v3 setTimeSensitiveSetting:v2];
  [v3 setUserConfiguredTimeSensitiveSetting:1];
}

- (void)dispatcher:(id)dispatcher setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__NCBulletinNotificationSource_dispatcher_setAllowsDirectMessages_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  messagesCopy = messages;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

void __88__NCBulletinNotificationSource_dispatcher_setAllowsDirectMessages_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a2;
  [v3 setDirectMessagesSetting:v2];
  [v3 setUserConfiguredDirectMessagesSetting:1];
}

- (void)dispatcher:(id)dispatcher setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__NCBulletinNotificationSource_dispatcher_setScheduledDelivery_forSectionIdentifier___block_invoke;
  v5[3] = &__block_descriptor_33_e23_v16__0__BBSectionInfo_8l;
  deliveryCopy = delivery;
  [(NCBulletinNotificationSource *)self _modifySectionIdentifier:identifier handler:v5];
}

void __85__NCBulletinNotificationSource_dispatcher_setScheduledDelivery_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a2;
  [v3 setScheduledDeliverySetting:v2];
  [v3 makeAuthorizationPermanent];
}

- (void)dispatcher:(id)dispatcher setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __100__NCBulletinNotificationSource_dispatcher_setSystemScheduledDeliveryEnabled_scheduledDeliveryTimes___block_invoke;
  v10[3] = &unk_278372F18;
  objc_copyWeak(&v12, &location);
  enabledCopy = enabled;
  v11 = timesCopy;
  v9 = timesCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __100__NCBulletinNotificationSource_dispatcher_setSystemScheduledDeliveryEnabled_scheduledDeliveryTimes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained settingsGateway];

  if (*(a1 + 48))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v4 setEffectiveGlobalScheduledDeliverySetting:v3];
  [v4 setEffectiveGlobalScheduledDeliveryTimes:*(a1 + 32)];
}

- (void)dispatcher:(id)dispatcher setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NCBulletinNotificationSource_dispatcher_setNotificationSystemSettings___block_invoke;
  block[3] = &unk_278370A90;
  objc_copyWeak(&v10, &location);
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __73__NCBulletinNotificationSource_dispatcher_setNotificationSystemSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained settingsGateway];

  if ([*(a1 + 32) isScheduledDeliveryEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v5 setEffectiveGlobalScheduledDeliverySetting:v3];
  v4 = [*(a1 + 32) scheduledDeliveryTimes];
  [v5 setEffectiveGlobalScheduledDeliveryTimes:v4];
  [v5 setEffectiveGlobalNotificationListDisplayStyleSetting:{objc_msgSend(MEMORY[0x277D77E68], "bbListDisplayStyleSettingForNCNotificationListDisplayStyleSetting:", objc_msgSend(*(a1 + 32), "listDisplayStyleSetting"))}];
}

- (void)dispatcher:(id)dispatcher didExecuteAction:(id)action forNotificationRequest:(id)request
{
  requestCopy = request;
  actionCopy = action;
  v9 = +[NCNotificationEventTracker sharedInstance];
  identifier = [actionCopy identifier];

  [v9 executedActionWithIdentifier:identifier forNotificationRequest:requestCopy];
}

- (id)dispatcher:(id)dispatcher notificationRequestForUUID:(id)d
{
  if (d)
  {
    v5 = [(NSMutableDictionary *)self->_uuidsToRequests objectForKey:d];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)dispatcher:(id)dispatcher supportSectionPreloadForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queueForSectionInfoById = self->_queueForSectionInfoById;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NCBulletinNotificationSource_dispatcher_supportSectionPreloadForSectionIdentifier___block_invoke;
  block[3] = &unk_278372F40;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v7 = identifierCopy;
  dispatch_sync(queueForSectionInfoById, block);
  LOBYTE(queueForSectionInfoById) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return queueForSectionInfoById;
}

void __85__NCBulletinNotificationSource_dispatcher_supportSectionPreloadForSectionIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) sectionInfoById];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (id)_requestUUIDForBulletinPublisherMatchID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_bulletinsToUUIDs objectForKey:dCopy];
    if (!v5)
    {
      v5 = objc_opt_new();
      [(NSMutableDictionary *)self->_bulletinsToUUIDs setObject:v5 forKey:dCopy];
    }
  }

  else
  {
    v6 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      [NCBulletinNotificationSource _requestUUIDForBulletinPublisherMatchID:v6];
    }

    v5 = objc_opt_new();
  }

  return v5;
}

- (void)_modifySectionIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NCBulletinNotificationSource__modifySectionIdentifier_handler___block_invoke;
  v11[3] = &unk_278372598;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__NCBulletinNotificationSource__modifySectionIdentifier_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained settingsGateway];

  v3 = [v5 sectionInfoForSectionID:*(a1 + 32)];
  v4 = [v3 copy];

  (*(*(a1 + 40) + 16))();
  [v5 setSectionInfo:v4 forSectionID:*(a1 + 32)];
}

- (void)_applicationIconChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = userInfo;
  if (userInfo)
  {
    v6 = [userInfo objectForKey:@"CFBundleIdentifier"];
    if (v6)
    {
      v7 = *MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEBUG))
      {
        [(NCBulletinNotificationSource *)v6 _applicationIconChanged:v7];
      }

      objc_initWeak(&location, self);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__NCBulletinNotificationSource__applicationIconChanged___block_invoke;
      block[3] = &unk_278370A90;
      objc_copyWeak(&v11, &location);
      v10 = v6;
      dispatch_async(queue, block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __56__NCBulletinNotificationSource__applicationIconChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained observer];

  [v3 requestNoticesBulletinsForSectionID:*(a1 + 32)];
}

- (id)_queue_sectionInfoForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  queueForSectionInfoById = self->_queueForSectionInfoById;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NCBulletinNotificationSource__queue_sectionInfoForBulletin___block_invoke;
  block[3] = &unk_278372F40;
  v10 = bulletinCopy;
  v11 = &v12;
  block[4] = self;
  v6 = bulletinCopy;
  dispatch_sync(queueForSectionInfoById, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__NCBulletinNotificationSource__queue_sectionInfoForBulletin___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) sectionInfoById];
  v2 = [*(a1 + 40) sectionID];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_bulletinsPerSectionIdForNotificationRequests:(id)requests
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = requestsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        sectionIdentifier = [v10 sectionIdentifier];
        v12 = [v4 objectForKey:sectionIdentifier];
        if (!v12)
        {
          v12 = objc_opt_new();
          [v4 setObject:v12 forKey:sectionIdentifier];
        }

        bulletin = [v10 bulletin];
        [v12 bs_safeAddObject:bulletin];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_bulletinsToClearPerSectionIdForNotificationRequests:(id)requests removingDestinations:(id)destinations
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  destinationsCopy = destinations;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = requestsCopy;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        sectionIdentifier = [v12 sectionIdentifier];
        v14 = [v7 objectForKey:sectionIdentifier];
        requestDestinations = [v12 requestDestinations];
        v16 = [requestDestinations mutableCopy];

        [v16 minusSet:destinationsCopy];
        if (([v16 containsObject:@"BulletinDestinationLockScreen"] & 1) == 0 && (objc_msgSend(v16, "containsObject:", @"BulletinDestinationNotificationCenter") & 1) == 0)
        {
          if (!v14)
          {
            v14 = objc_opt_new();
            [v7 setObject:v14 forKey:sectionIdentifier];
          }

          bulletin = [v12 bulletin];
          [v14 bs_safeAddObject:bulletin];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v7;
}

- (unint64_t)_updateFeedForCoverSheetDestination:(unint64_t)destination storedFeed:(unint64_t)feed
{
  v4 = (feed & 8) == 0 || (destination & 1) == 0;
  destinationCopy = destination | 8;
  if (v4)
  {
    destinationCopy = destination;
  }

  return destinationCopy | feed & ((destinationCopy & 8) != 0);
}

- (id)_updatedRequestWithAlertOptions:(id)options
{
  optionsCopy = options;
  eventBehavior = [optionsCopy eventBehavior];
  v6 = eventBehavior;
  if (eventBehavior)
  {
    v7 = eventBehavior;
  }

  else
  {
    v7 = [(DNDEventBehaviorResolutionService *)self->_eventBehaviorResolutionService nc_behaviorForNotificationRequest:optionsCopy];
  }

  v8 = v7;

  v9 = [(NCBulletinNotificationSource *)self _alertOptionsWithBehavior:v8];
  v10 = [optionsCopy mutableCopy];
  [v10 setAlertOptions:v9];
  v11 = [v10 copy];

  return v11;
}

- (id)_alertOptionsWithBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v4 = objc_alloc_init(MEMORY[0x277D77E00]);
  interruptionSuppression = [behaviorCopy interruptionSuppression];
  if ((interruptionSuppression - 1) >= 2)
  {
    [v4 setSuppression:0];
    intelligentBehavior = [behaviorCopy intelligentBehavior];
    if ((intelligentBehavior - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = intelligentBehavior;
    }

    [v4 setIntelligentBehavior:v10];
    v11 = [behaviorCopy resolutionReason] - 13;
    if (v11 > 6)
    {
      v8 = 1;
    }

    else
    {
      v8 = qword_21E946848[v11];
    }
  }

  else
  {
    [v4 setSuppression:interruptionSuppression];
    intelligentBehavior2 = [behaviorCopy intelligentBehavior];
    if ((intelligentBehavior2 - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = intelligentBehavior2;
    }

    [v4 setIntelligentBehavior:v7];
    v8 = 0;
  }

  [v4 setReason:v8];
  activeModeUUID = [behaviorCopy activeModeUUID];
  [v4 setActiveModeUUID:activeModeUUID];

  v13 = [v4 copy];

  return v13;
}

- (void)_requestUUIDForBulletinPublisherMatchID:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21E77E000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Requested uuid for bulletin without a publisherMatchID", &v4, 0xCu);
}

- (void)_applicationIconChanged:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21E77E000, a2, OS_LOG_TYPE_DEBUG, "App icon changed for section %{public}@. Requesting repost of notifications for this section.", &v2, 0xCu);
}

@end