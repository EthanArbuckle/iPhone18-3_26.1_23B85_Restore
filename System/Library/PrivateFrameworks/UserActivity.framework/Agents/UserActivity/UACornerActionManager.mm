@interface UACornerActionManager
+ (id)cornerActionManager;
+ (id)sharedActivityManagerServer;
- (BOOL)activityAdvertisingAllowed;
- (BOOL)activityReceivingAllowed;
- (BOOL)advertisingSuspended;
- (BOOL)fetchMoreAppSuggestions;
- (BOOL)haveBestAppChangeNotificationClients;
- (BOOL)isBluetoothEnabled;
- (BOOL)scheduleBestAppDetermination:(double)determination;
- (BOOL)shouldItemBeAdvertised:(id)advertised;
- (BOOL)suspended;
- (BOOL)systemHasSuspendedAdvertisements;
- (BOOL)systemHasSuspendedScanning;
- (BOOL)userActive;
- (BOOL)weAreAdvertisingAnItem;
- (BOOL)weAreAdvertisingAtLeastOneItem;
- (NSArray)itemsBeingAdvertised;
- (NSSet)advertisers;
- (NSSet)allHandlers;
- (NSSet)clients;
- (NSSet)handlers;
- (NSSet)notifiers;
- (NSSet)receivers;
- (UACornerActionManager)init;
- (id)activeAdvertiseableItemsUUIDs;
- (id)advertiseableItems;
- (id)bestCornerItem;
- (id)cornerActionItemForUUID:(id)d;
- (id)cornerActionItems;
- (id)debuggingInfo;
- (id)dynamicUserActivitiesString;
- (id)shortStatusString;
- (id)statusString;
- (id)uaAdvertisableItemsInOrder:(BOOL)order;
- (void)_checkIfBestApplicationChangedThread;
- (void)_determineItemToAdvertiseForHandoffThread;
- (void)_determineWhenSystemGoesIdleThread;
- (void)addActivityNotifier:(id)notifier;
- (void)addAdvertiser:(id)advertiser;
- (void)addClient:(id)client;
- (void)addHandler:(id)handler;
- (void)addReceiver:(id)receiver;
- (void)checkIfBestCornerItemChanged:(double)changed;
- (void)dealloc;
- (void)processWasRemoved;
- (void)removeActivityNotifier:(id)notifier;
- (void)removeAdvertiser:(id)advertiser;
- (void)removeClient:(id)client;
- (void)removeHandler:(id)handler;
- (void)removeReceiver:(id)receiver;
- (void)resume;
- (void)resumeListeningForBluetooth;
- (void)scheduleUpdatingAdvertisableItems:(double)items;
- (void)setDebugCornerItem:(id)item;
- (void)setSuspended:(BOOL)suspended;
- (void)setSystemHasSuspendedAdvertisements:(BOOL)advertisements;
- (void)setSystemHasSuspendedScanning:(BOOL)scanning;
- (void)setUserActive:(BOOL)active;
- (void)suspend;
- (void)suspendListeningForBluetooth;
- (void)triggerAll;
- (void)triggerUserIdleDetermination:(double)determination;
- (void)updateScreenDimStateState:(BOOL)state;
- (void)updateUIDeviceLockedState:(BOOL)state;
- (void)updateUserActiveState:(BOOL)state;
- (void)userActivityItemsChanged;
@end

@implementation UACornerActionManager

- (BOOL)isBluetoothEnabled
{
  bluetoothStatus = [(UACornerActionManager *)self bluetoothStatus];
  poweredOn = [bluetoothStatus poweredOn];

  return poweredOn;
}

- (BOOL)activityAdvertisingAllowed
{
  v2 = +[UAUserActivityDefaults sharedDefaults];
  activityAdvertisingAllowed = [v2 activityAdvertisingAllowed];

  if (activityAdvertisingAllowed)
  {
    v4 = +[MCProfileConnection sharedConnection];
    isActivityContinuationAllowed = [v4 isActivityContinuationAllowed];

    if (isActivityContinuationAllowed)
    {
      v6 = +[UMUserManager sharedManager];
      isSharedIPad = [v6 isSharedIPad];

      if (!isSharedIPad)
      {
        return 1;
      }

      v8 = sub_100001A30(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Disabling Handoff/UserActivity because the system is in multi-user mode", v10, 2u);
      }
    }
  }

  return 0;
}

- (void)_determineItemToAdvertiseForHandoffThread
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "DETERMINE: Determining list of items to be advertised thread starting up: ", buf, 2u);
  }

  dispatch_group_enter(self->_helpersDispatchGroup);
  v76 = +[NSMutableArray array];
  screenDimmed = [(UACornerActionManager *)self screenDimmed];
  if (![v76 count])
  {
    if (screenDimmed)
    {
      v5 = sub_100001A30(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "DETERMINE: Checking for recentlyEligible items because the screen is dimmed (includeRecentItems == YES).", buf, 2u);
      }
    }

    v6 = [(UACornerActionManager *)self uaAdvertisableItemsInOrder:screenDimmed];
    firstObject3 = v6;
    if (v6 && [v6 count])
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v7 = firstObject3;
      v8 = [v7 countByEnumeratingWithState:&v86 objects:v96 count:16];
      if (v8)
      {
        v9 = *v87;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v87 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v86 + 1) + 8 * i);
            if (v11 && [*(*(&v86 + 1) + 8 * i) eligibleForHandoff])
            {
              [v76 addObject:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v86 objects:v96 count:16];
        }

        while (v8);
      }
    }
  }

  if (!v76 || ![v76 count])
  {
    LODWORD(firstObject2) = 0;
    eligibleToAlwaysAdvertise = 0;
    goto LABEL_60;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v12 = [v76 copy];
  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (!v13)
  {
    LODWORD(firstObject2) = 0;
    eligibleToAlwaysAdvertise = 0;
    goto LABEL_59;
  }

  LODWORD(firstObject2) = 0;
  eligibleToAlwaysAdvertise = 0;
  firstObject3 = *v83;
  v71 = _UAUserActivityContainsCloudDocsKey;
  v70 = _LSUserActivityContainsUnsynchronizedCloudDocsKey;
  *&v14 = 138543619;
  v69 = v14;
  do
  {
    v15 = 0;
    do
    {
      if (*v83 != firstObject3)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v82 + 1) + 8 * v15);
      if (v16 && [*(*(&v82 + 1) + 8 * v15) eligibleForHandoff])
      {
        if (eligibleToAlwaysAdvertise)
        {
          eligibleToAlwaysAdvertise = 1;
        }

        else
        {
          eligibleToAlwaysAdvertise = [v16 eligibleToAlwaysAdvertise];
        }

        options = [v16 options];
        if (options)
        {
          options2 = [v16 options];
          v19 = [options2 objectForKeyedSubscript:v71];
          if ([v19 BOOLValue])
          {
            options3 = [v16 options];
            v21 = [options3 objectForKeyedSubscript:v70];
            bOOLValue = [v21 BOOLValue];

            if (bOOLValue)
            {
              [v76 removeObject:v16];
              v23 = sub_100001A30(0);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                uuid = [v16 uuid];
                uUIDString = [uuid UUIDString];
                activityType = [v16 activityType];
                *buf = v69;
                v92 = uUIDString;
                v93 = 2113;
                v94 = activityType;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "DETERMINE: Since this activityItem's .userInfo, %{public}@ type=%{private}@, has unsynchronized cloud documents, we can't actually advertise this item.", buf, 0x16u);
              }

              v27 = +[UAUserActivityDefaults sharedDefaults];
              [v27 intervalToAskClientWithUnsynchronizedDocumentsToUpdate];
              v29 = v28;

              lastTimePayloadWasRequestedForAdvertisedItem = [(UACornerActionManager *)self lastTimePayloadWasRequestedForAdvertisedItem];
              LOBYTE(v27) = lastTimePayloadWasRequestedForAdvertisedItem == 0;

              v31 = 3.40282347e38;
              if ((v27 & 1) == 0)
              {
                lastTimePayloadWasRequestedForAdvertisedItem2 = [(UACornerActionManager *)self lastTimePayloadWasRequestedForAdvertisedItem];
                [lastTimePayloadWasRequestedForAdvertisedItem2 timeIntervalSinceNow];
                v34 = v33;

                if (v34 > 0.0)
                {
                  [(UACornerActionManager *)self setLastTimePayloadWasRequestedForAdvertisedItem:0];
                  goto LABEL_54;
                }

                v31 = -v34;
              }

              if (v31 <= v29)
              {
                v29 = v29 - v31;
LABEL_54:
                [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems:v29];
              }

              else
              {
                v37 = +[NSDate date];
                [(UACornerActionManager *)self setLastTimePayloadWasRequestedForAdvertisedItem:v37];

                v38 = sub_100001A30(@"signposts");
                v39 = v38;
                if (v16 != -1 && os_signpost_enabled(v38))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_BEGIN, v16, "handoffFetchSpeculative enableTelemetry=YES ", "", buf, 2u);
                }

                v81[0] = _NSConcreteStackBlock;
                v81[1] = 3221225472;
                v81[2] = sub_1000202B0;
                v81[3] = &unk_1000C50A0;
                v81[4] = self;
                v81[5] = v16;
                *&v81[6] = v29;
                [v16 requestPayloadWithCompletionHandlerEvenIfClean:1 withCompletionHandler:v81];
              }

LABEL_44:
              activityType2 = [v16 activityType];
              v36 = [activityType2 isEqual:NSUserActivityTypeBrowsingWeb];

              LODWORD(firstObject2) = v36 | firstObject2;
              goto LABEL_45;
            }
          }

          else
          {
          }
        }

        [(UACornerActionManager *)self setLastTimePayloadWasRequestedForAdvertisedItem:0];
        goto LABEL_44;
      }

LABEL_45:
      v15 = v15 + 1;
    }

    while (v13 != v15);
    v12 = obj;
    v40 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    v13 = v40;
  }

  while (v40);
LABEL_59:

LABEL_60:
  advertiseableItems = [(UACornerActionManager *)self advertiseableItems];
  v42 = [advertiseableItems count];

  lastNumAdvertiseableProcesses = self->_lastNumAdvertiseableProcesses;
  itemsBeingAdvertised = [(UACornerActionManager *)self itemsBeingAdvertised];
  v45 = [v76 isEqual:itemsBeingAdvertised];

  if (firstObject2 & 1 | ((v45 & 1) == 0) | (lastNumAdvertiseableProcesses != v42))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![v76 count] && -[NSArray count](selfCopy->_itemsBeingAdvertised, "count"))
    {
      v48 = 1;
      goto LABEL_76;
    }

    firstObject = [v76 firstObject];
    if (firstObject)
    {
      firstObject2 = [v76 firstObject];
      firstObject3 = [(NSArray *)selfCopy->_itemsBeingAdvertised firstObject];
      if (![firstObject2 isEqual:firstObject3])
      {
        v48 = 1;
        goto LABEL_74;
      }
    }

    firstObject4 = [v76 firstObject];
    activityType3 = [firstObject4 activityType];
    if ([activityType3 isEqual:NSUserActivityTypeBrowsingWeb])
    {

      v48 = 1;
      if (!firstObject)
      {
        goto LABEL_75;
      }

LABEL_74:
    }

    else
    {
      firstObject5 = [(NSArray *)selfCopy->_itemsBeingAdvertised firstObject];
      if (firstObject5)
      {
        firstObject6 = [(NSArray *)selfCopy->_itemsBeingAdvertised firstObject];
        firstObject7 = [v76 firstObject];
        v54 = [firstObject6 isEqual:firstObject7];

        v48 = v54 ^ 1;
        if (!firstObject)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v48 = 0;
      if (firstObject)
      {
        goto LABEL_74;
      }
    }

LABEL_75:

LABEL_76:
    self->_lastNumAdvertiseableProcesses = v42;
    v55 = [v76 copy];
    itemsBeingAdvertised = selfCopy->_itemsBeingAdvertised;
    selfCopy->_itemsBeingAdvertised = v55;

    objc_sync_exit(selfCopy);
    if (v48)
    {
      firstObject8 = [v76 firstObject];
      if (firstObject8)
      {
        v58 = sub_100001A30(0);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          uuid2 = [firstObject8 uuid];
          uUIDString2 = [uuid2 UUIDString];
          logString = [firstObject8 logString];
          *buf = 138543619;
          v92 = uUIDString2;
          v93 = 2113;
          v94 = logString;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "DETERMINE: %{public}@/%{private}@ as the current item-to-advertise.", buf, 0x16u);
        }

        advertisingSuspended = [(UACornerActionManager *)selfCopy advertisingSuspended];
        v63 = 1.0;
        if (advertisingSuspended)
        {
          v63 = 0.0;
        }

        [(UACornerActionManager *)selfCopy triggerUserIdleDetermination:v63];
        eligibleToAlwaysAdvertise = 0;
      }

      else
      {
        v64 = sub_100001A30(0);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "DETERMINE: No item is being advertised, so removing any previously set of advertised items.", buf, 2u);
        }
      }
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    advertisers = [(UACornerActionManager *)selfCopy advertisers];
    v66 = [advertisers countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v66)
    {
      v67 = *v78;
      do
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (*v78 != v67)
          {
            objc_enumerationMutation(advertisers);
          }

          [*(*(&v77 + 1) + 8 * j) setAdvertisableItems:v76];
        }

        v66 = [advertisers countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v66);
    }
  }

  if (eligibleToAlwaysAdvertise)
  {
    [(UACornerActionManager *)self triggerUserIdleDetermination];
  }

  dispatch_group_leave(self->_helpersDispatchGroup);
}

- (NSSet)clients
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_clients copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)advertiseableItems
{
  clients = [(UACornerActionManager *)self clients];
  v3 = [clients copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        items = [v9 items];
        v11 = items;
        if (v9)
        {
          if (v5)
          {
            v12 = [v5 setByAddingObjectsFromSet:items];

            v5 = v12;
          }

          else
          {
            v5 = items;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v5;
}

- (NSArray)itemsBeingAdvertised
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_itemsBeingAdvertised copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)advertisingSuspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  advertisingSuspended = selfCopy->_advertisingSuspended;
  objc_sync_exit(selfCopy);

  return advertisingSuspended;
}

- (NSSet)advertisers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_advertisers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)suspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  suspended = selfCopy->_suspended;
  objc_sync_exit(selfCopy);

  return suspended;
}

- (BOOL)activityReceivingAllowed
{
  v2 = +[UAUserActivityDefaults sharedDefaults];
  activityReceivingAllowed = [v2 activityReceivingAllowed];

  if (activityReceivingAllowed)
  {
    v4 = +[MCProfileConnection sharedConnection];
    isActivityContinuationAllowed = [v4 isActivityContinuationAllowed];

    if (isActivityContinuationAllowed)
    {
      v6 = +[UMUserManager sharedManager];
      isSharedIPad = [v6 isSharedIPad];

      if (!isSharedIPad)
      {
        return 1;
      }

      v8 = sub_100001A30(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Disabling Handoff/UserActivity because the system is in multi-user mode", v10, 2u);
      }
    }
  }

  return 0;
}

- (void)_determineWhenSystemGoesIdleThread
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Determining idleDetermination, entering", buf, 2u);
  }

  dispatch_group_enter(self->_helpersDispatchGroup);
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ([(UACornerActionManager *)selfCopy screenDimmed])
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    deviceUILocked = [(UACornerActionManager *)selfCopy deviceUILocked];
    userActive = [(UACornerActionManager *)selfCopy userActive];
    if (deviceUILocked)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    *buf = 136315650;
    if (userActive)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    v69 = v6;
    v70 = 2080;
    v71 = v9;
    v72 = 2080;
    v73 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "IDLE: screen dimmed: %s, deviceUILocked: %s, useractive: %s", buf, 0x20u);
  }

  activityAdvertisingAllowed = [(UACornerActionManager *)selfCopy activityAdvertisingAllowed];
  activityReceivingAllowed = [(UACornerActionManager *)selfCopy activityReceivingAllowed];
  if (activityAdvertisingAllowed)
  {
    if ((byte_1000E5C20 & 1) != 0 || (v13 = MKBDeviceUnlockedSinceBoot(), byte_1000E5C20 = v13 != 0, v13))
    {
      v14 = 0;
      goto LABEL_22;
    }

    v15 = sub_100001A30(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IDLE: since the device hasn't been unlocked since boot, setting mustSuspendAdvertising = YES.", buf, 2u);
    }
  }

  v14 = 1;
LABEL_22:
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  itemsBeingAdvertised = [(UACornerActionManager *)selfCopy itemsBeingAdvertised];
  v17 = [itemsBeingAdvertised countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v17)
  {
    v18 = *v64;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(itemsBeingAdvertised);
        }

        v20 = *(*(&v63 + 1) + 8 * i);
        if ([v20 alwaysPick])
        {
          v22 = sub_100001A30(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            uuid = [v20 uuid];
            uUIDString = [uuid UUIDString];
            *buf = 138543362;
            v69 = uUIDString;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "IDLE: Setting preventAdvertisingSuspensionBecauseOfAlwaysPickItem = YES for item %{public}@", buf, 0xCu);
          }

          v21 = 1;
          goto LABEL_34;
        }
      }

      v17 = [itemsBeingAdvertised countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_34:

  v25 = activityAdvertisingAllowed ^ 1;
  if (![(UACornerActionManager *)selfCopy userActive]&& ![(UACornerActionManager *)selfCopy isMirroringActive])
  {
    if (![(UACornerActionManager *)selfCopy weAreAdvertisingAtLeastOneItem])
    {
      v26 = sub_100001A30(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "IDLE: Setting self.userIsInactivePowerAssertion == nil because there are no items being advertised and the user is not active", buf, 2u);
      }

      [(UACornerActionManager *)selfCopy setUserInactivePowerAssertion:0];
    }

    userInactivePowerAssertion = [(UACornerActionManager *)selfCopy userInactivePowerAssertion];
    v28 = userInactivePowerAssertion == 0;

    if (v28)
    {
      v29 = sub_100001A30(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "IDLE: Setting shouldSuspendAdvertising == YES because userInactivePowerAssertion == nil and the user is not active", buf, 2u);
      }

      v25 = 1;
    }
  }

  v30 = activityReceivingAllowed ^ 1;
  if ([(UACornerActionManager *)selfCopy screenDimmed]&& ![(UACornerActionManager *)selfCopy isMirroringActive])
  {
    if (![(UACornerActionManager *)selfCopy weAreAdvertisingAtLeastOneItem])
    {
      v40 = sub_100001A30(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "IDLE: Setting self.screenDimmedPowerAssertion == nil because there are no items being advertised and the screen is dimmed", buf, 2u);
      }

      [(UACornerActionManager *)selfCopy setScreenDimmedPowerAssertion:0];
    }

    screenDimmedPowerAssertion = [(UACornerActionManager *)selfCopy screenDimmedPowerAssertion];
    v31 = screenDimmedPowerAssertion == 0;

    if (v31)
    {
      v56 = sub_100001A30(0);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "IDLE: Setting shouldSuspendAdvertising == YES because self.screenDimmedPowerAssertion == nil and the screen is dimmed", buf, 2u);
      }

      v31 = 1;
      v32 = 1;
      v25 = 1;
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v31 = 1;
    v32 = activityReceivingAllowed ^ 1;
  }

  if ([(UACornerActionManager *)selfCopy deviceUILocked]&& ([(UACornerActionManager *)selfCopy deviceUILockedPowerAssertion], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v34))
  {
    v42 = sub_100001A30(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "IDLE: Setting shouldSuspendAdvertising == YES because the device is locked and our power assertion has expired.", buf, 2u);
    }

    v25 = 1;
    if (v14)
    {
      goto LABEL_50;
    }
  }

  else if (v14)
  {
    goto LABEL_50;
  }

  if ((v31 & v25) != 1)
  {
    if (!v25)
    {
      goto LABEL_97;
    }

    goto LABEL_87;
  }

  deviceUILockedPowerAssertion = [(UACornerActionManager *)selfCopy deviceUILockedPowerAssertion];
  if (deviceUILockedPowerAssertion)
  {
    v44 = 1;
  }

  else
  {
    v44 = v21;
  }

  if (v44)
  {
LABEL_87:
    v35 = sub_100001A30(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      deviceUILockedPowerAssertion2 = [(UACornerActionManager *)selfCopy deviceUILockedPowerAssertion];
      v51 = deviceUILockedPowerAssertion2;
      v52 = "dimmed ";
      if (v31)
      {
        v52 = "";
      }

      v53 = "uilock ";
      if (!deviceUILockedPowerAssertion2)
      {
        v53 = "";
      }

      *buf = 136315906;
      v69 = v52;
      v54 = "alwaysPick ";
      v70 = 2080;
      v71 = "";
      v72 = 2080;
      v73 = v53;
      if (!v21)
      {
        v54 = "";
      }

      v74 = 2080;
      v75 = v54;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "IDLE: Setting shouldSuspendAdvertising to NO because one or more of our assertions still exists. (%s%s%s%s)", buf, 0x2Au);
    }

    v25 = 0;
    goto LABEL_96;
  }

  if (![(UACornerActionManager *)selfCopy weAreAdvertisingAtLeastOneItem])
  {
    v25 = 1;
    goto LABEL_97;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  advertisers = [(UACornerActionManager *)selfCopy advertisers];
  v46 = [advertisers countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v46)
  {
    v47 = *v60;
    while (2)
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(advertisers);
        }

        v49 = *(*(&v59 + 1) + 8 * j);
        if ([v49 active] && objc_msgSend(v49, "advertising") && (objc_msgSend(v49, "okToSuspendAdvertising") & 1) == 0)
        {
          v57 = sub_100001A30(0);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v69 = v49;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "IDLE: Setting systemShouldNotBeAdvertising=NO because advertiser %{public}@ always wants to be advertised.", buf, 0xCu);
          }

          v25 = 0;
          goto LABEL_111;
        }
      }

      v46 = [advertisers countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v25 = 1;
LABEL_111:

LABEL_50:
  if (v14 && (v25 & 1) == 0)
  {
    v35 = sub_100001A30(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      if ([(UACornerActionManager *)selfCopy activityAdvertisingAllowed])
      {
        v36 = @"(activityAdvertisingAllowed = NO) ";
      }

      else
      {
        v36 = &stru_1000C67D0;
      }

      v37 = +[UAUserActivityDefaults sharedDefaults];
      activityAdvertisingAllowed2 = [v37 activityAdvertisingAllowed];
      v39 = @"(disabled in System Preferences) ";
      if (!activityAdvertisingAllowed2)
      {
        v39 = &stru_1000C67D0;
      }

      *buf = 138412546;
      v69 = v36;
      v70 = 2112;
      v71 = v39;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "IDLE: Setting shouldSuspendAdvertising = YES because mustSuspendAdvertising == YES %@%@", buf, 0x16u);
    }

    v25 = 1;
LABEL_96:
  }

LABEL_97:
  if (v25 != [(UACornerActionManager *)selfCopy systemHasSuspendedAdvertisements])
  {
    if (v25)
    {
      v55 = sub_100001A30(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v69 = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "IDLE: Determined that advertising should be suspended, removing any active advertisement and setting self.systemHasSuspendedAdvertisements = YES(idle=%.2f seconds)", buf, 0xCu);
      }

      [(UACornerActionManager *)selfCopy setSystemHasSuspendedAdvertisements:1];
    }

    else
    {
      [(UACornerActionManager *)selfCopy setSystemHasSuspendedAdvertisements:0];
      [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
    }
  }

  [(UACornerActionManager *)selfCopy setSystemHasSuspendedScanning:(v32 | v30) & 1];
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(context);
  dispatch_group_leave(self->_helpersDispatchGroup);
}

- (BOOL)userActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userActive = selfCopy->_userActive;
  objc_sync_exit(selfCopy);

  return userActive;
}

- (BOOL)systemHasSuspendedAdvertisements
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemHasSuspendedAdvertisements = selfCopy->_systemHasSuspendedAdvertisements;
  objc_sync_exit(selfCopy);

  return systemHasSuspendedAdvertisements;
}

- (BOOL)weAreAdvertisingAtLeastOneItem
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  advertisers = [(UACornerActionManager *)selfCopy advertisers];
  v4 = [advertisers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(advertisers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 active] && (objc_msgSend(v7, "advertising") & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [advertisers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  objc_sync_exit(selfCopy);
  return v4;
}

- (NSSet)notifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_notifiers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSSet)receivers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_receivers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)triggerAll
{
  [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems:0.01];
  [(UACornerActionManager *)self triggerUserIdleDetermination:0.03];

  [(UACornerActionManager *)self scheduleBestAppDetermination:0.04];
}

- (void)_checkIfBestApplicationChangedThread
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Creating loop to check-for-and-update BestApplication", buf, 2u);
  }

  dispatch_group_enter(self->_helpersDispatchGroup);
  cornerActionItems = [(UACornerActionManager *)self cornerActionItems];
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [cornerActionItems description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Candidate bestAppSuggestions: %{private}@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  notifiers = [(UACornerActionManager *)self notifiers];
  v9 = [notifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(notifiers);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 active])
        {
          [v12 setItems:cornerActionItems];
        }
      }

      v9 = [notifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = +[UAUserActivityDefaults sharedDefaults];
  [v13 cornerActionItemTimeout];
  [(UACornerActionManager *)self scheduleBestAppDetermination:?];

  dispatch_group_leave(self->_helpersDispatchGroup);
}

- (id)cornerActionItems
{
  v17 = +[NSMutableSet set];
  debugCornerItem = [(UACornerActionManager *)self debugCornerItem];

  if (debugCornerItem)
  {
    debugCornerItem2 = [(UACornerActionManager *)self debugCornerItem];
    [v17 addObject:debugCornerItem2];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(UACornerActionManager *)self receivers];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if ([v8 active])
        {
          receivedItems = [v8 receivedItems];
          if (receivedItems)
          {
            [v17 addObjectsFromArray:receivedItems];
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v10 = receivedItems;
            v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              v12 = *v20;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v20 != v12)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v14 = *(*(&v19 + 1) + 8 * j);
                  objc_opt_class();
                  objc_opt_isKindOfClass();
                }

                v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
              }

              while (v11);
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  if ([v17 count])
  {
    v15 = [v17 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)cornerActionManager
{
  v2 = objc_alloc_init(UACornerActionManager);

  return v2;
}

+ (id)sharedActivityManagerServer
{
  if (qword_1000E5C08 != -1)
  {
    sub_10007BD14();
  }

  v3 = qword_1000E5C10;

  return v3;
}

- (UACornerActionManager)init
{
  v60.receiver = self;
  v60.super_class = UACornerActionManager;
  v2 = [(UACornerActionManager *)&v60 init];
  if (v2)
  {
    v3 = dispatch_queue_create("cornerActionManagerQ", 0);
    [v2 setMainDispatchQ:v3];

    v4 = [[ActivityManagerDebuggingManager alloc] initWithManager:v2];
    v5 = *(v2 + 22);
    *(v2 + 22) = v4;

    debugManager = [v2 debugManager];
    [debugManager resume];

    v7 = +[NSUUID UUID];
    v8 = *(v2 + 19);
    *(v2 + 19) = v7;

    v2[8] = 1;
    v9 = +[NSDate date];
    v10 = *(v2 + 7);
    *(v2 + 7) = v9;

    v11 = *(v2 + 8);
    *(v2 + 8) = 0;

    v12 = dispatch_group_create();
    v13 = *(v2 + 10);
    *(v2 + 10) = v12;

    v14 = +[NSMutableSet set];
    v15 = *(v2 + 2);
    *(v2 + 2) = v14;

    v16 = +[NSMutableSet set];
    v17 = *(v2 + 3);
    *(v2 + 3) = v16;

    v18 = +[NSMutableSet set];
    v19 = *(v2 + 4);
    *(v2 + 4) = v18;

    v20 = +[NSMutableSet set];
    v21 = *(v2 + 5);
    *(v2 + 5) = v20;

    v22 = +[NSMutableSet set];
    v23 = *(v2 + 6);
    *(v2 + 6) = v22;

    *(v2 + 121) = 0;
    *(v2 + 25) = 0;
    mainDispatchQ = [v2 mainDispatchQ];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100007708;
    v58[3] = &unk_1000C4D10;
    v25 = v2;
    v59 = v25;
    v26 = [UADispatchScheduler dispatchScheduler:@"idleDetermination" frequency:mainDispatchQ queue:v58 block:0.0];
    v27 = *(v25 + 27);
    *(v25 + 27) = v26;

    mainDispatchQ2 = [v25 mainDispatchQ];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100005478;
    v56[3] = &unk_1000C4D10;
    v29 = v25;
    v57 = v29;
    v30 = [UADispatchScheduler dispatchScheduler:@"updateAdvertisedItems" frequency:mainDispatchQ2 queue:v56 block:0.0];
    v31 = *(v29 + 28);
    *(v29 + 28) = v30;

    mainDispatchQ3 = [v29 mainDispatchQ];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000089E0;
    v54[3] = &unk_1000C4D10;
    v33 = v29;
    v55 = v33;
    v34 = [UADispatchScheduler dispatchScheduler:@"bestApp" frequency:mainDispatchQ3 queue:v54 block:0.0];
    v35 = *(v33 + 29);
    *(v33 + 29) = v34;

    v36 = MKBGetDeviceLockState();
    v37 = v36;
    if ((v36 - 1) < 2)
    {
      v38 = sub_100001A30(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "-- Setting device lock to YES since MobileKeyBag() is locked or locking.", buf, 2u);
      }

      v40 = 1;
      goto LABEL_14;
    }

    if (v36)
    {
      if (v36 != 3)
      {
        v41 = sub_100001A30(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v62 = v37;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "*** Unexpected result from MKBGetDeviceLockState(), %d, so device is assumed to be locked.", buf, 8u);
        }

        goto LABEL_18;
      }

      v38 = sub_100001A30(0);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v39 = "-- Setting device lock to NO since MobileKeyBag() is disabled";
    }

    else
    {
      v38 = sub_100001A30(0);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
LABEL_13:
        v40 = 0;
LABEL_14:

        [v33 setDeviceUILocked:v40];
LABEL_18:
        v33[130] = 0;
        *(v33 + 38) = 0xC000000000000000;
        mainDispatchQ4 = [v33 mainDispatchQ];
        v43 = +[UAUserActivityDefaults sharedDefaults];
        [v43 userIdleInterval];
        v45 = v44;
        v49 = _NSConcreteStackBlock;
        v50 = 3221225472;
        v51 = sub_1000099B4;
        v52 = &unk_1000C5010;
        v46 = v33;
        v53 = v46;
        v47 = [PowerManagerIdleTracker idleTracker:@"SuspendAdvertisingIdleTracker" queue:mainDispatchQ4 interval:&v49 block:v45];
        [v46 setUserIdleTracker:{v47, v49, v50, v51, v52}];

        return v2;
      }

      *buf = 0;
      v39 = "-- Setting device lock to NO since MobileKeyBag() is unlocked";
    }

    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, v39, buf, 2u);
    goto LABEL_13;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UACornerActionManager;
  [(UACornerActionManager *)&v2 dealloc];
}

- (BOOL)weAreAdvertisingAnItem
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  advertisers = [(UACornerActionManager *)self advertisers];
  v3 = [advertisers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(advertisers);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 active] && (objc_msgSend(v6, "advertising") & 1) != 0)
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [advertisers countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)shouldItemBeAdvertised:(id)advertised
{
  advertisedCopy = advertised;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(UACornerActionManager *)self clients];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v19 = *v26;
    do
    {
      v18 = v5;
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          userActivityClients = [v8 userActivityClients];
          v10 = [userActivityClients countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = *v22;
            while (2)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v22 != v11)
                {
                  objc_enumerationMutation(userActivityClients);
                }

                bundleIdentifier = [*(*(&v21 + 1) + 8 * j) bundleIdentifier];
                bundleIdentifier2 = [advertisedCopy bundleIdentifier];
                v15 = [bundleIdentifier isEqualToString:bundleIdentifier2];

                if (v15)
                {

                  v16 = 1;
                  goto LABEL_21;
                }
              }

              v10 = [userActivityClients countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      v16 = 0;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (void)scheduleUpdatingAdvertisableItems:(double)items
{
  nextUpdateAdvertisedItemsScheduler = [(UACornerActionManager *)self nextUpdateAdvertisedItemsScheduler];
  [nextUpdateAdvertisedItemsScheduler scheduleNext:items];
}

- (id)activeAdvertiseableItemsUUIDs
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  advertiseableItems = [(UACornerActionManager *)self advertiseableItems];
  v5 = [advertiseableItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(advertiseableItems);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 eligibleToAdvertise])
        {
          uuid = [v8 uuid];
          [v3 addObject:uuid];
        }
      }

      v5 = [advertiseableItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)uaAdvertisableItemsInOrder:(BOOL)order
{
  orderCopy = order;
  clients = [(UACornerActionManager *)self clients];
  allObjects = [clients allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&stru_1000C5050];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
    v17 = v7;
LABEL_30:

    goto LABEL_31;
  }

  v9 = 0;
  v10 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      eligibleAdvertiseableItemsInOrder = [v13 eligibleAdvertiseableItemsInOrder];
      v15 = eligibleAdvertiseableItemsInOrder;
      if (eligibleAdvertiseableItemsInOrder && [eligibleAdvertiseableItemsInOrder count])
      {
        if (!v10)
        {
          v10 = +[NSMutableArray array];
        }

        [v10 addObjectsFromArray:v15];
      }

      else if (orderCopy)
      {
        v16 = [v13 recentEligibleItemsInOrder:5.0];

        v15 = v16;
        if (v16)
        {
          if ([v16 count])
          {
            if (!v9)
            {
              v9 = +[NSMutableArray array];
            }

            [v9 addObjectsFromArray:v16];
          }
        }
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  }

  while (v8);

  if (v9 && [v9 count])
  {
    if (v10)
    {
      [v10 addObjectsFromArray:v9];
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_27;
  }

  if (v10)
  {
LABEL_27:
    if (![v10 count])
    {
      goto LABEL_31;
    }

    v17 = sub_100001A30(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v10 description];
      v19 = sub_100009684(v18);
      v20 = [v10 count];
      *buf = 138478083;
      v28 = v19;
      v29 = 2048;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "result=%{private}@/%ld items", buf, 0x16u);
    }

    goto LABEL_30;
  }

LABEL_31:
  if ([v10 count])
  {
    v21 = [v10 copy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)userActivityItemsChanged
{
  advertisers = [(UACornerActionManager *)self advertisers];

  if (advertisers)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "-- signalling thread to determine what activity to advertise because one of our userActivityItems changed.", v6, 2u);
    }

    [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
    objc_sync_exit(selfCopy);
  }
}

- (void)triggerUserIdleDetermination:(double)determination
{
  nextUserIdleDeterminationScheduler = [(UACornerActionManager *)self nextUserIdleDeterminationScheduler];
  [nextUserIdleDeterminationScheduler scheduleNext:determination];
}

- (void)setSystemHasSuspendedAdvertisements:(BOOL)advertisements
{
  advertisementsCopy = advertisements;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_systemHasSuspendedAdvertisements != advertisementsCopy)
  {
    selfCopy->_systemHasSuspendedAdvertisements = advertisementsCopy;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    advertisers = [(UACornerActionManager *)selfCopy advertisers];
    obj = advertisers;
    v6 = [advertisers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          mainDispatchQ = [(UACornerActionManager *)selfCopy mainDispatchQ];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000209C8;
          block[3] = &unk_1000C50C8;
          v13 = advertisementsCopy;
          block[4] = v9;
          dispatch_async(mainDispatchQ, block);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        advertisers = obj;
        v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    if (!advertisementsCopy)
    {
      [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)systemHasSuspendedScanning
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  systemHasSuspendedScanning = selfCopy->_systemHasSuspendedScanning;
  objc_sync_exit(selfCopy);

  return systemHasSuspendedScanning;
}

- (void)setSystemHasSuspendedScanning:(BOOL)scanning
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_systemHasSuspendedScanning = scanning;
  if (scanning)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSMutableSet set];
    if (![(UACornerActionManager *)selfCopy deviceUILocked]&& ![(UACornerActionManager *)selfCopy screenDimmed])
    {
      [v5 addObject:off_1000E50F8];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    notifiers = [(UACornerActionManager *)selfCopy notifiers];
    v7 = [notifiers countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(notifiers);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if ([v10 active])
          {
            if (([v10 suspended] & 1) == 0)
            {
              [v5 addObject:off_1000E50F0];
              if ([v10 requiresBoosted])
              {
                [v5 addObject:off_1000E5100];
                goto LABEL_18;
              }
            }
          }
        }

        v7 = [notifiers countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  receivers = [(UACornerActionManager *)selfCopy receivers];
  v12 = [receivers countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(receivers);
        }

        [*(*(&v15 + 1) + 8 * j) setScanningForTypes:v5];
      }

      v12 = [receivers countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  objc_sync_exit(selfCopy);
}

- (id)cornerActionItemForUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cornerActionItems = [(UACornerActionManager *)self cornerActionItems];
  v6 = [cornerActionItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cornerActionItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uuid = [v9 uuid];
        v11 = [uuid isEqual:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [cornerActionItems countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)bestCornerItem
{
  cornerActionItems = [(UACornerActionManager *)self cornerActionItems];
  anyObject = [cornerActionItems anyObject];

  return anyObject;
}

- (void)setDebugCornerItem:(id)item
{
  itemCopy = item;
  if (self->_debugCornerItem != itemCopy)
  {
    objc_storeStrong(&self->_debugCornerItem, item);
    [(UACornerActionManager *)self scheduleBestAppDetermination];
  }
}

- (void)checkIfBestCornerItemChanged:(double)changed
{
  if ([(UACornerActionManager *)self haveBestAppChangeNotificationClients])
  {
    v4 = sub_100001A30(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, " -- there are listening clients, so firing the check-and-update-BestApplication thread.", v5, 2u);
    }

    [(UACornerActionManager *)self scheduleBestAppDetermination];
  }
}

- (BOOL)scheduleBestAppDetermination:(double)determination
{
  nextScheduleBestAppDeterminationScheduler = [(UACornerActionManager *)self nextScheduleBestAppDeterminationScheduler];
  v5 = [nextScheduleBestAppDeterminationScheduler scheduleNext:determination];

  return v5;
}

- (BOOL)haveBestAppChangeNotificationClients
{
  selfCopy = self;
  v3 = self->_notifiers;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = [(NSMutableSet *)selfCopy->_notifiers count]!= 0;
  objc_sync_exit(v3);

  return selfCopy;
}

- (BOOL)fetchMoreAppSuggestions
{
  v3 = +[UAUserActivityDefaults sharedDefaults];
  multiHandoffEnabled = [v3 multiHandoffEnabled];

  if (multiHandoffEnabled)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    receivers = [(UACornerActionManager *)self receivers];
    multiHandoffEnabled = 0;
    v6 = [receivers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(receivers);
          }

          multiHandoffEnabled |= [*(*(&v10 + 1) + 8 * v8) fetchMoreAppSuggestions];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [receivers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return multiHandoffEnabled & 1;
}

- (void)processWasRemoved
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  advertisers = [(UACornerActionManager *)self advertisers];
  v3 = [advertisers countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(advertisers);
        }

        [*(*(&v6 + 1) + 8 * v5) setShouldAdvertiseAutoPullActivityList:1];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [advertisers countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)suspendListeningForBluetooth
{
  bluetoothStatusCallbackIdentifier = [(UACornerActionManager *)self bluetoothStatusCallbackIdentifier];

  if (bluetoothStatusCallbackIdentifier)
  {
    bluetoothStatus = [(UACornerActionManager *)self bluetoothStatus];
    bluetoothStatusCallbackIdentifier2 = [(UACornerActionManager *)self bluetoothStatusCallbackIdentifier];
    [bluetoothStatus unregisterCallback:bluetoothStatusCallbackIdentifier2];

    [(UACornerActionManager *)self setBluetoothStatusCallbackIdentifier:0];
  }
}

- (void)resumeListeningForBluetooth
{
  bluetoothStatus = [(UACornerActionManager *)self bluetoothStatus];

  if (!bluetoothStatus)
  {
    v4 = +[UABluetoothStatus sharedInstance];
    [(UACornerActionManager *)self setBluetoothStatus:v4];
  }

  bluetoothStatusCallbackIdentifier = [(UACornerActionManager *)self bluetoothStatusCallbackIdentifier];

  if (!bluetoothStatusCallbackIdentifier)
  {
    mainDispatchQ = [(UACornerActionManager *)self mainDispatchQ];
    bluetoothStatus2 = [(UACornerActionManager *)self bluetoothStatus];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000215F8;
    v13 = &unk_1000C50F0;
    v8 = mainDispatchQ;
    v14 = v8;
    selfCopy = self;
    v9 = [bluetoothStatus2 registerCallback:&v10];
    [(UACornerActionManager *)self setBluetoothStatusCallbackIdentifier:v9, v10, v11, v12, v13];
  }
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_suspended != suspendedCopy)
  {
    obj->_suspended = suspendedCopy;
    if (suspendedCopy)
    {
      [(UACornerActionManager *)obj suspend];
    }

    else
    {
      [(UACornerActionManager *)obj resume];
    }
  }

  objc_sync_exit(obj);
}

- (void)suspend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (selfCopy->_suspended)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CornerActionManger:  suspend(was suspended = %{public}@)", &buf, 0xCu);
  }

  if (!selfCopy->_suspended)
  {
    getpid();
    selfCopy->_suspended = 1;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    advertisers = [(UACornerActionManager *)selfCopy advertisers];
    v6 = [advertisers countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v6)
    {
      v8 = *v46;
      *&v7 = 138543362;
      v31 = v7;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(advertisers);
          }

          v10 = *(*(&v45 + 1) + 8 * i);
          v11 = sub_100001A30(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = v31;
            *(&buf + 4) = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "*** Suspending advertiser %{public}@", &buf, 0xCu);
          }

          [v10 suspend];
        }

        v6 = [advertisers countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v6);
    }

    nextUpdateAdvertisedItemsScheduler = [(UACornerActionManager *)selfCopy nextUpdateAdvertisedItemsScheduler];
    [nextUpdateAdvertisedItemsScheduler suspend];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    clients = [(UACornerActionManager *)selfCopy clients];
    v14 = [clients countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v14)
    {
      v15 = *v42;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(clients);
          }

          [*(*(&v41 + 1) + 8 * j) suspend];
        }

        v14 = [clients countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v14);
    }

    nextUserIdleDeterminationScheduler = [(UACornerActionManager *)selfCopy nextUserIdleDeterminationScheduler];
    [nextUserIdleDeterminationScheduler suspend];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    notifiers = [(UACornerActionManager *)selfCopy notifiers];
    v19 = [notifiers countByEnumeratingWithState:&v37 objects:v53 count:16];
    if (v19)
    {
      v20 = *v38;
      do
      {
        for (k = 0; k != v19; k = k + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(notifiers);
          }

          [*(*(&v37 + 1) + 8 * k) suspend];
        }

        v19 = [notifiers countByEnumeratingWithState:&v37 objects:v53 count:16];
      }

      while (v19);
    }

    nextScheduleBestAppDeterminationScheduler = [(UACornerActionManager *)selfCopy nextScheduleBestAppDeterminationScheduler];
    [nextScheduleBestAppDeterminationScheduler suspend];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    handlers = [(UACornerActionManager *)selfCopy handlers];
    v24 = [handlers countByEnumeratingWithState:&v33 objects:v52 count:16];
    if (v24)
    {
      v25 = *v34;
      do
      {
        for (m = 0; m != v24; m = m + 1)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(handlers);
          }

          [*(*(&v33 + 1) + 8 * m) suspend];
        }

        v24 = [handlers countByEnumeratingWithState:&v33 objects:v52 count:16];
      }

      while (v24);
    }
  }

  if (selfCopy->_managedSettingsChangedNotificationToken)
  {
    v27 = sub_100001A30(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "--- Cancelling MCEffectiveSettingsChangedNotification notification.", &buf, 2u);
    }

    notify_cancel(selfCopy->_managedSettingsChangedNotificationToken);
    selfCopy->_managedSettingsChangedNotificationToken = 0;
  }

  if ([(UACornerActionManager *)selfCopy systemPreferenceChangedToken])
  {
    notify_suspend([(UACornerActionManager *)selfCopy systemPreferenceChangedToken]);
  }

  v28 = +[NSDistributedNotificationCenter defaultCenter];
  [v28 removeObserver:selfCopy name:@"com.apple.screensaver.didstart" object:0];
  [v28 removeObserver:selfCopy name:@"com.apple.screensaver.didstop" object:0];
  notify_cancel([(UACornerActionManager *)selfCopy uiLockStatusToken]);
  [(UACornerActionManager *)selfCopy setUiLockStatusToken:0];
  SBSEventObserverStopObservingAllEvents();
  if ((byte_1000E5C20 & 1) == 0)
  {
    v29 = MKBDeviceUnlockedSinceBoot();
    byte_1000E5C20 = v29 != 0;
    if (!v29)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51[0] = 0;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100021E54;
      handler[3] = &unk_1000C5118;
      handler[4] = selfCopy;
      handler[5] = &buf;
      notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, v51, &_dispatch_main_q, handler);
      _Block_object_dispose(&buf, 8);
    }
  }

  [(UACornerActionManager *)selfCopy suspendListeningForBluetooth];
  userIdleTracker = [(UACornerActionManager *)selfCopy userIdleTracker];
  [userIdleTracker setEnabled:0];

  objc_sync_exit(selfCopy);
  dispatch_group_wait(selfCopy->_helpersDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)resume
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "CornerActionManger:  resume", buf, 2u);
  }

  if (selfCopy->_suspended)
  {
    getpid();
    selfCopy->_suspended = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    handlers = [(UACornerActionManager *)selfCopy handlers];
    v5 = [handlers countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v5)
    {
      v6 = *v76;
      do
      {
        v7 = 0;
        do
        {
          if (*v76 != v6)
          {
            objc_enumerationMutation(handlers);
          }

          [*(*(&v75 + 1) + 8 * v7) resume];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [handlers countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v5);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    advertisers = [(UACornerActionManager *)selfCopy advertisers];
    v9 = [advertisers countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v9)
    {
      v11 = *v72;
      *&v10 = 138543362;
      v51 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v72 != v11)
          {
            objc_enumerationMutation(advertisers);
          }

          v13 = *(*(&v71 + 1) + 8 * v12);
          v14 = sub_100001A30(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v51;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "*** Resuming advertiser %{public}@", buf, 0xCu);
          }

          [v13 resume];
          v12 = v12 + 1;
        }

        while (v9 != v12);
        v9 = [advertisers countByEnumeratingWithState:&v71 objects:v83 count:16];
      }

      while (v9);
    }

    nextUpdateAdvertisedItemsScheduler = [(UACornerActionManager *)selfCopy nextUpdateAdvertisedItemsScheduler];
    [nextUpdateAdvertisedItemsScheduler resume];

    nextUpdateAdvertisedItemsScheduler2 = [(UACornerActionManager *)selfCopy nextUpdateAdvertisedItemsScheduler];
    [nextUpdateAdvertisedItemsScheduler2 scheduleNext:0.1];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    receivers = [(UACornerActionManager *)selfCopy receivers];
    v18 = [receivers countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v18)
    {
      v20 = *v68;
      *&v19 = 138543362;
      v51 = v19;
      do
      {
        v21 = 0;
        do
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(receivers);
          }

          v22 = *(*(&v67 + 1) + 8 * v21);
          v23 = sub_100001A30(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = v51;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "*** Resuming receiver %{public}@", buf, 0xCu);
          }

          [v22 resume];
          v21 = v21 + 1;
        }

        while (v18 != v21);
        v18 = [receivers countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v18);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    clients = [(UACornerActionManager *)selfCopy clients];
    v25 = [clients countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v25)
    {
      v26 = *v64;
      do
      {
        v27 = 0;
        do
        {
          if (*v64 != v26)
          {
            objc_enumerationMutation(clients);
          }

          [*(*(&v63 + 1) + 8 * v27) resume];
          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [clients countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v25);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    notifiers = [(UACornerActionManager *)selfCopy notifiers];
    v29 = [notifiers countByEnumeratingWithState:&v59 objects:v79 count:16];
    if (v29)
    {
      v30 = *v60;
      do
      {
        v31 = 0;
        do
        {
          if (*v60 != v30)
          {
            objc_enumerationMutation(notifiers);
          }

          [*(*(&v59 + 1) + 8 * v31) resume];
          v31 = v31 + 1;
        }

        while (v29 != v31);
        v29 = [notifiers countByEnumeratingWithState:&v59 objects:v79 count:16];
      }

      while (v29);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, sub_1000229B4, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (![(UACornerActionManager *)selfCopy systemPreferenceChangedToken])
    {
      mainDispatchQ = [(UACornerActionManager *)selfCopy mainDispatchQ];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100022A18;
      handler[3] = &unk_1000C5140;
      handler[4] = selfCopy;
      notify_register_dispatch(UAUserActivityManagerActivityContinuationIsEnabledChangedNotification, &selfCopy->_systemPreferenceChangedToken, mainDispatchQ, handler);
    }

    notify_resume([(UACornerActionManager *)selfCopy systemPreferenceChangedToken]);
    out_token = 0;
    mainDispatchQ2 = [(UACornerActionManager *)selfCopy mainDispatchQ];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000088F4;
    v56[3] = &unk_1000C5140;
    v56[4] = selfCopy;
    notify_register_dispatch(kSBSLockStateNotifyKey, &out_token, mainDispatchQ2, v56);

    [(UACornerActionManager *)selfCopy setUiLockStatusToken:out_token];
    if (![(UACornerActionManager *)selfCopy backlightLevelToken])
    {
      mainDispatchQ3 = [(UACornerActionManager *)selfCopy mainDispatchQ];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100022A90;
      v55[3] = &unk_1000C5140;
      v55[4] = selfCopy;
      notify_register_dispatch("com.apple.backboardd.backlight.changed", &selfCopy->_backlightLevelToken, mainDispatchQ3, v55);

      *buf = 0;
      notify_get_state([(UACornerActionManager *)selfCopy backlightLevelToken], buf);
      selfCopy->_backlightOn = *buf != 0;
    }

    v36 = +[FBSDisplayLayoutMonitorConfiguration configurationForContinuityDisplay];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100022BE0;
    v54[3] = &unk_1000C5168;
    v54[4] = selfCopy;
    [v36 setTransitionHandler:v54];
    v37 = sub_100001A30(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Installed Mirroring Monitor", buf, 2u);
    }

    v38 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v36];
    mirroringMonitor = selfCopy->_mirroringMonitor;
    selfCopy->_mirroringMonitor = v38;

    if (!selfCopy->_managedSettingsChangedNotificationToken)
    {
      v40 = [MCEffectiveSettingsChangedNotification cStringUsingEncoding:4];
      v41 = dispatch_get_global_queue(2, 0);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100022DB0;
      v53[3] = &unk_1000C5140;
      v53[4] = selfCopy;
      notify_register_dispatch(v40, &selfCopy->_managedSettingsChangedNotificationToken, v41, v53);
    }

    [(UACornerActionManager *)selfCopy resumeListeningForBluetooth];
    userIdleTracker = [(UACornerActionManager *)selfCopy userIdleTracker];
    [userIdleTracker setEnabled:1];

    nextScheduleBestAppDeterminationScheduler = [(UACornerActionManager *)selfCopy nextScheduleBestAppDeterminationScheduler];
    [nextScheduleBestAppDeterminationScheduler reset];

    nextScheduleBestAppDeterminationScheduler2 = [(UACornerActionManager *)selfCopy nextScheduleBestAppDeterminationScheduler];
    [nextScheduleBestAppDeterminationScheduler2 resume];

    nextScheduleBestAppDeterminationScheduler3 = [(UACornerActionManager *)selfCopy nextScheduleBestAppDeterminationScheduler];
    [nextScheduleBestAppDeterminationScheduler3 scheduleNext:0.1];

    [(UACornerActionManager *)selfCopy setSystemHasSuspendedAdvertisements:1];
    [(UACornerActionManager *)selfCopy setSystemHasSuspendedAdvertisements:0];
    nextUserIdleDeterminationScheduler = [(UACornerActionManager *)selfCopy nextUserIdleDeterminationScheduler];
    [nextUserIdleDeterminationScheduler reset];

    nextUserIdleDeterminationScheduler2 = [(UACornerActionManager *)selfCopy nextUserIdleDeterminationScheduler];
    [nextUserIdleDeterminationScheduler2 resume];

    nextUserIdleDeterminationScheduler3 = [(UACornerActionManager *)selfCopy nextUserIdleDeterminationScheduler];
    [nextUserIdleDeterminationScheduler3 scheduleNext:0.1];

    userIdleTracker2 = [(UACornerActionManager *)selfCopy userIdleTracker];
    [userIdleTracker2 setEnabled:1];
  }

  objc_sync_exit(selfCopy);

  mainDispatchQ4 = [(UACornerActionManager *)selfCopy mainDispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022F08;
  block[3] = &unk_1000C4D10;
  block[4] = selfCopy;
  dispatch_async(mainDispatchQ4, block);
}

- (void)setUserActive:(BOOL)active
{
  obj = self;
  objc_sync_enter(obj);
  obj->_userActive = active;
  objc_sync_exit(obj);
}

- (void)updateUserActiveState:(BOOL)state
{
  stateCopy = state;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (stateCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_userActive)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setUserIsActive: %{public}@ (was %{public}@)", buf, 0x16u);
  }

  if ([(UACornerActionManager *)self userActive]!= stateCopy)
  {
    self->_userActive = stateCopy;
    v8 = sub_100001A30(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (stateCopy)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "userInactivePowerAssertion, setting to NO, so removing power assertion & triggering idle determination.", buf, 2u);
      }

      [(UACornerActionManager *)self setUserInactivePowerAssertion:0];
      [(UACornerActionManager *)self triggerUserIdleDetermination];
      [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems];
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "setUserIsActive, setting to NO, so creating assertion if warranted.", buf, 2u);
      }

      advertisers = [(UACornerActionManager *)self advertisers];
      clients = [(UACornerActionManager *)self clients];
      v12 = +[UAUserActivityDefaults sharedDefaults];
      [v12 userIdleRemovalDelay];
      v14 = v13;
      v15 = +[UAUserActivityDefaults sharedDefaults];
      [v15 userIdleRemovalDelay];
      v17 = sub_10002331C(advertisers, clients, v14, v16);

      v18 = sub_100001A30(0);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
      if (v17 <= 0.0)
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "setUserIsActive, no need for assertion, triggering updateAdvertisableItems", buf, 2u);
        }

        [(UACornerActionManager *)self setUserInactivePowerAssertion:0];
        [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems];
      }

      else
      {
        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "setUserIsActive, creating assertion because we are advertising something", buf, 2u);
        }

        v20 = [UATimedPowerAssertions alloc];
        mainDispatchQ = [(UACornerActionManager *)self mainDispatchQ];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10002362C;
        v23[3] = &unk_1000C5010;
        v23[4] = self;
        v22 = [(UATimedPowerAssertions *)v20 initWithName:@"userInactivePowerAssertion" delta:0 activityUUID:mainDispatchQ queue:v23 runAtCompletion:v17];
        [(UACornerActionManager *)self setUserInactivePowerAssertion:v22];
      }
    }
  }
}

- (void)updateScreenDimStateState:(BOOL)state
{
  stateCopy = state;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (stateCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_screenDimmed)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v27 = v7;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateScreenDimState: %{public}@ (was %{public}@)", buf, 0x16u);
  }

  if ([(UACornerActionManager *)self screenDimmed]!= stateCopy)
  {
    self->_screenDimmed = stateCopy;
    v8 = "active";
    if (stateCopy)
    {
      v8 = "DIMMED";
    }

    v9 = [NSString stringWithFormat:@"SCREEN: %s", v8];
    [ActivityManagerDebuggingManager appendRecentAction:v9];

    v10 = sub_100001A30(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (stateCopy)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updateScreenDimmedState, setting to YES, so creating assertion if needed.", buf, 2u);
      }

      advertisers = [(UACornerActionManager *)self advertisers];
      clients = [(UACornerActionManager *)self clients];
      v14 = +[UAUserActivityDefaults sharedDefaults];
      [v14 screenDimDelayBeforeRemovingAdvertisements];
      v16 = v15;
      v17 = +[UAUserActivityDefaults sharedDefaults];
      [v17 screenDimDelayBeforeRemovingPasteboardAdvertisement];
      v19 = sub_10002331C(advertisers, clients, v16, v18);

      v20 = sub_100001A30(0);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (v19 <= 0.0)
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "updateScreenDimmedState, no need for assertion, triggering state updates", buf, 2u);
        }

        [(UACornerActionManager *)self triggerUserIdleDetermination];
        [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems];
      }

      else
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "updateScreenDimmedState, creating assertion", buf, 2u);
        }

        v22 = [UATimedPowerAssertions alloc];
        mainDispatchQ = [(UACornerActionManager *)self mainDispatchQ];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100023AF0;
        v25[3] = &unk_1000C5010;
        v25[4] = self;
        v24 = [(UATimedPowerAssertions *)v22 initWithName:@"screenDimmedPowerAssertion" delta:0 activityUUID:mainDispatchQ queue:v25 runAtCompletion:v19];
        [(UACornerActionManager *)self setScreenDimmedPowerAssertion:v24];
      }
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, setting to NO, so removing power assertion & triggering idle determination.", buf, 2u);
      }

      [(UACornerActionManager *)self setScreenDimmedPowerAssertion:0];
      [(UACornerActionManager *)self triggerUserIdleDetermination];
      [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems];
    }
  }
}

- (void)updateUIDeviceLockedState:(BOOL)state
{
  stateCopy = state;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (stateCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_deviceUILocked)
    {
      v6 = @"YES";
    }

    *buf = 138543618;
    v27 = *&v7;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState: %{public}@ (was %{public}@)", buf, 0x16u);
  }

  if ([(UACornerActionManager *)self deviceUILocked]!= stateCopy)
  {
    self->_deviceUILocked = stateCopy;
    v8 = "unlocked";
    if (stateCopy)
    {
      v8 = "LOCKED";
    }

    v9 = [NSString stringWithFormat:@"DEVICELOCK: %s", v8];
    [ActivityManagerDebuggingManager appendRecentAction:v9];

    v10 = sub_100001A30(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (stateCopy)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, setting to YES, so creating assertion if we have an advertisement.", buf, 2u);
      }

      advertisers = [(UACornerActionManager *)self advertisers];
      clients = [(UACornerActionManager *)self clients];
      v14 = +[UAUserActivityDefaults sharedDefaults];
      [v14 deviceLockDelayBeforeRemovingHandoffAdvertisement];
      v16 = v15;
      v17 = +[UAUserActivityDefaults sharedDefaults];
      [v17 deviceLockDelayBeforeRemovingPasteboardAdvertisement];
      v19 = sub_10002331C(advertisers, clients, v16, v18);

      v20 = sub_100001A30(0);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
      if (v19 <= 0.0)
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, no need for assertion, triggering state updates", buf, 2u);
        }

        [(UACornerActionManager *)self triggerUserIdleDetermination];
        [(UACornerActionManager *)self scheduleUpdatingAdvertisableItems];
      }

      else
      {
        if (v21)
        {
          *buf = 134217984;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Creating power assertion of %g seconds, to keep advertisement alive.", buf, 0xCu);
        }

        v22 = [UATimedPowerAssertions alloc];
        mainDispatchQ = [(UACornerActionManager *)self mainDispatchQ];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100023FB8;
        v25[3] = &unk_1000C5010;
        v25[4] = self;
        v24 = [(UATimedPowerAssertions *)v22 initWithName:@"deviceUILockAssertion" delta:0 activityUUID:mainDispatchQ queue:v25 runAtCompletion:v19];
        [(UACornerActionManager *)self setDeviceUILockedPowerAssertion:v24];
      }
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "updateUIDeviceLockedState, device is unlocked, so removing power assertion & triggering advertising & idle determination.", buf, 2u);
      }

      [(UACornerActionManager *)self setDeviceUILockedPowerAssertion:0];
      [(UACornerActionManager *)self triggerAll];
    }
  }
}

- (id)debuggingInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  weAreAdvertisingAnItem = [(UACornerActionManager *)self weAreAdvertisingAnItem];
  if (weAreAdvertisingAnItem)
  {
    uaAdvertisableItemsInOrder = [(UACornerActionManager *)self uaAdvertisableItemsInOrder];
    firstObject = [uaAdvertisableItemsInOrder firstObject];
    v7 = [(UACornerActionManager *)self dictionaryForAdvertisableItem:firstObject];
    [v3 setObject:v7 forKey:@"kLSUserActivityDebuggingInfoCurrentAdvertisedItem"];

    v8 = sub_100006EF4(0);
    [v3 setObject:v8 forKey:@"kLSUserActivityDebuggingInfoLastAdvertisedBytes"];
  }

  v9 = [NSNumber numberWithBool:weAreAdvertisingAnItem];
  [v3 setObject:v9 forKey:@"kLSUserActivityDebuggingInfoAdvertising"];

  v10 = [v3 copy];

  return v10;
}

- (id)dynamicUserActivitiesString
{
  v2 = [NSUserDefaults alloc];
  v3 = kUADynamicUserActivitesPreferences;
  v4 = [v2 initWithSuiteName:kUADynamicUserActivitesPreferences];
  v5 = [v4 objectForKey:kUADynamicUserActivitiesKey];
  v6 = [NSString stringWithFormat:@"Dynamic User Activities: (domain=%@) %@", v3, v5];

  return v6;
}

- (id)shortStatusString
{
  v3 = +[NSMutableString string];
  v4 = getpid();
  v5 = geteuid();
  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:self->_creationTime];
  v8 = sub_100009870(v7);
  v9 = objc_alloc_init(NSDate);
  if (qword_1000E5C68 != -1)
  {
    sub_10007BD28();
  }

  [v3 appendFormat:@"Manager status: pid=%lld, uid=%lld, uptime=%@ %@ (Version %s, built %s %s %s)\n", v4, v5, v8, v9, &unk_1000E5C21, "Oct 11 2025", "00:26:56", ""];

  advertisers = [(UACornerActionManager *)self advertisers];
  if ([advertisers count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    advertisers2 = [(UACornerActionManager *)self advertisers];
    allObjects = [advertisers2 allObjects];
    v12 = [allObjects sortedArrayUsingComparator:&stru_1000C51A8];

    v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v13)
    {
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if ([v16 advertising])
          {
            statusString = [v16 statusString];
            sub_1000247F4(v3, statusString, @"ADVERTISING:", @"  ");
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [v3 appendString:{@"*** No UAAdvertisers defined at present, so no advertising is taking place.\n\n"}];
  }

  receivers = [(UACornerActionManager *)self receivers];
  if ([receivers count] < 2)
  {
    [v3 appendString:{@"No UAReceivers defined at present, so no activities will be received.\n"}];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = receivers;
    allObjects2 = [receivers allObjects];
    v20 = [allObjects2 sortedArrayUsingComparator:&stru_1000C51C8];

    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          receivedItems = [v24 receivedItems];
          v26 = [receivedItems count] == 0;

          if (!v26)
          {
            statusString2 = [v24 statusString];
            sub_1000247F4(v3, statusString2, @"RECEIVING:", @"  ");
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }

    receivers = v30;
  }

  v28 = [v3 copy];

  return v28;
}

- (id)statusString
{
  debugManager = [(UACornerActionManager *)self debugManager];
  [debugManager currentPerfTime];
  v4 = v3;

  v150 = +[NSMutableString string];
  v5 = getpid();
  v6 = geteuid();
  v7 = +[NSDate date];
  selfCopy4 = self;
  [v7 timeIntervalSinceDate:self->_creationTime];
  v10 = sub_100009870(v9);
  v11 = objc_alloc_init(NSDate);
  v12 = sub_100009870(v4 - *&qword_1000E5C18);
  if (qword_1000E5C68 != -1)
  {
    sub_10007BD28();
    selfCopy4 = self;
  }

  [v150 appendFormat:@"Manager status: pid=%lld, uid=%lld, uptime=%@ %@ runtime=%@ (Version %s, built %s %s %s)\n", v5, v6, v10, v11, v12, &unk_1000E5C21, "Oct 11 2025", "00:26:56", ""];

  advertisers = [(UACornerActionManager *)selfCopy4 advertisers];
  if ([advertisers count])
  {
    advertisers2 = [(UACornerActionManager *)selfCopy4 advertisers];
    v14 = [advertisers2 count];
    if ([(UACornerActionManager *)selfCopy4 advertisingSuspended])
    {
      v15 = @"(SUSPENDED)";
    }

    else
    {
      v15 = &stru_1000C67D0;
    }

    nextUpdateAdvertisedItemsScheduler = [(UACornerActionManager *)selfCopy4 nextUpdateAdvertisedItemsScheduler];
    nextRunTimeString = [nextUpdateAdvertisedItemsScheduler nextRunTimeString];
    [v150 appendFormat:@"### ADVERTISERS (%ld total) %@ nextCheck=%@\n", v14, v15, nextRunTimeString];

    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    advertisers3 = [(UACornerActionManager *)selfCopy4 advertisers];
    allObjects = [advertisers3 allObjects];
    v20 = [allObjects sortedArrayUsingComparator:&stru_1000C51E8];

    v21 = [v20 countByEnumeratingWithState:&v187 objects:v200 count:16];
    if (v21)
    {
      v22 = *v188;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v188 != v22)
          {
            objc_enumerationMutation(v20);
          }

          statusString = [*(*(&v187 + 1) + 8 * i) statusString];
          sub_1000247F4(v150, statusString, @" +", @"  ");
        }

        v21 = [v20 countByEnumeratingWithState:&v187 objects:v200 count:16];
      }

      while (v21);
    }

    v25 = @"\n";
    selfCopy4 = self;
  }

  else
  {
    v25 = @"*** No UAAdvertisers defined at present, so no advertising is taking place.\n\n";
  }

  [v150 appendString:v25];
  receivers = [(UACornerActionManager *)selfCopy4 receivers];
  if ([receivers count] >= 2)
  {
    receivers2 = [(UACornerActionManager *)selfCopy4 receivers];
    [v150 appendFormat:@"### RECEIVERS (%ld total)\n", objc_msgSend(receivers2, "count")];

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    allObjects2 = [receivers allObjects];
    receivers3 = [allObjects2 sortedArrayUsingComparator:&stru_1000C5208];

    v29 = [receivers3 countByEnumeratingWithState:&v183 objects:v199 count:16];
    if (v29)
    {
      v30 = *v184;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v184 != v30)
          {
            objc_enumerationMutation(receivers3);
          }

          statusString2 = [*(*(&v183 + 1) + 8 * j) statusString];
          sub_1000247F4(v150, statusString2, @" +", @"  ");
        }

        v29 = [receivers3 countByEnumeratingWithState:&v183 objects:v199 count:16];
      }

      while (v29);
    }

    goto LABEL_27;
  }

  if ([receivers count] == 1)
  {
    receivers3 = [(UACornerActionManager *)selfCopy4 receivers];
    anyObject = [receivers3 anyObject];
    statusString3 = [anyObject statusString];
    sub_1000247F4(v150, statusString3, @" +", @"  ");

LABEL_27:
    selfCopy4 = self;
    goto LABEL_29;
  }

  [v150 appendString:{@"No UAReceivers defined at present, so no activities will be received.\n"}];
LABEL_29:
  v35 = +[SharingBTLESuggestedItem statusString];
  v139 = v35;
  if (v35)
  {
    [v150 appendString:v35];
  }

  advertiseableItems = [(UACornerActionManager *)selfCopy4 advertiseableItems];
  allObjects3 = [advertiseableItems allObjects];
  v143 = [allObjects3 sortedArrayUsingComparator:&stru_1000C5228];

  selfCopy7 = self;
  if ([v143 count])
  {
    [v150 appendString:@"\n### AdvertiseableItems(that might be broadcast to other machines/remind me later)\n"];
    v145 = +[NSMutableArray array];
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    obj = v143;
    v39 = [obj countByEnumeratingWithState:&v179 objects:v198 count:16];
    if (v39)
    {
      v40 = *v180;
      do
      {
        for (k = 0; k != v39; k = k + 1)
        {
          if (*v180 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v179 + 1) + 8 * k);
          if (sub_1000023A0([v42 type]))
          {
            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            advertisers4 = [(UACornerActionManager *)self advertisers];
            v44 = [advertisers4 countByEnumeratingWithState:&v175 objects:v197 count:16];
            if (v44)
            {
              v45 = *v176;
              while (2)
              {
                for (m = 0; m != v44; m = m + 1)
                {
                  if (*v176 != v45)
                  {
                    objc_enumerationMutation(advertisers4);
                  }

                  v47 = *(*(&v175 + 1) + 8 * m);
                  if ([v47 active])
                  {
                    advertisingItems = [v47 advertisingItems];
                    v49 = [advertisingItems containsObject:v42];

                    if (v49)
                    {
                      v50 = 1;
                      goto LABEL_49;
                    }
                  }
                }

                v44 = [advertisers4 countByEnumeratingWithState:&v175 objects:v197 count:16];
                if (v44)
                {
                  continue;
                }

                break;
              }
            }

            v50 = 0;
LABEL_49:

            options = [v42 options];
            v52 = [options objectForKeyedSubscript:@"UAUserActivityAdvertiserHasMoreActivities"];
            bOOLValue = [v52 BOOLValue];

            statusString4 = [v42 statusString];
            v55 = statusString4;
            v56 = &stru_1000C67D0;
            v57 = @"(more items available) ";
            if (!bOOLValue)
            {
              v57 = &stru_1000C67D0;
            }

            if (v50)
            {
              v56 = @"(advertised) ";
            }

            v58 = [NSString stringWithFormat:@"- %@%@%@\n", v56, v57, statusString4];

            if (v50)
            {
              v59 = 0;
            }

            else
            {
              v59 = [v145 count];
            }

            [v145 insertObject:v58 atIndex:v59];
          }
        }

        v39 = [obj countByEnumeratingWithState:&v179 objects:v198 count:16];
      }

      while (v39);
    }

    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    obja = v145;
    v60 = [obja countByEnumeratingWithState:&v171 objects:v196 count:16];
    if (v60)
    {
      v61 = *v172;
      do
      {
        for (n = 0; n != v60; n = n + 1)
        {
          if (*v172 != v61)
          {
            objc_enumerationMutation(obja);
          }

          [v150 appendString:*(*(&v171 + 1) + 8 * n)];
        }

        v60 = [obja countByEnumeratingWithState:&v171 objects:v196 count:16];
      }

      while (v60);
    }

    selfCopy7 = self;
  }

  cornerActionItems = [(UACornerActionManager *)selfCopy7 cornerActionItems];
  if ([cornerActionItems count])
  {
    [v150 appendString:@"\nCornerActionItems (potential items to appear on this device as resumable from other devices)\n"];
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    allObjects4 = [cornerActionItems allObjects];
    v64 = [allObjects4 sortedArrayUsingComparator:&stru_1000C5248];

    v65 = [v64 countByEnumeratingWithState:&v167 objects:v195 count:16];
    if (v65)
    {
      v66 = *v168;
      do
      {
        for (ii = 0; ii != v65; ii = ii + 1)
        {
          if (*v168 != v66)
          {
            objc_enumerationMutation(v64);
          }

          statusString5 = [*(*(&v167 + 1) + 8 * ii) statusString];
          v69 = [NSString stringWithFormat:@"- %@\n", statusString5];
          [v150 appendString:v69];
        }

        v65 = [v64 countByEnumeratingWithState:&v167 objects:v195 count:16];
      }

      while (v65);
    }

    selfCopy7 = self;
  }

  pinnedUserActivityInfoItem = [(UACornerActionManager *)selfCopy7 pinnedUserActivityInfoItem];
  v71 = pinnedUserActivityInfoItem == 0;

  if (!v71)
  {
    [v150 appendString:@"\nPinned Activity Info\n"];
    pinnedUserActivityInfoItem2 = [(UACornerActionManager *)self pinnedUserActivityInfoItem];
    v73 = [pinnedUserActivityInfoItem2 description];
    v74 = [NSString stringWithFormat:@"- %@\n", v73];
    [v150 appendString:v74];
  }

  notifiers = [(UACornerActionManager *)self notifiers];
  v76 = [notifiers count] == 0;

  selfCopy9 = self;
  if (!v76)
  {
    notifiers2 = [(UACornerActionManager *)self notifiers];
    v79 = [notifiers2 count];
    nextScheduleBestAppDeterminationScheduler = [(UACornerActionManager *)self nextScheduleBestAppDeterminationScheduler];
    nextRunTimeString2 = [nextScheduleBestAppDeterminationScheduler nextRunTimeString];
    [v150 appendFormat:@"\n### NOTIFIERS (%ld total) nextCheck=%@\n", v79, nextRunTimeString2];

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    notifiers3 = [(UACornerActionManager *)self notifiers];
    allObjects5 = [notifiers3 allObjects];
    v84 = [allObjects5 sortedArrayUsingComparator:&stru_1000C5268];

    v85 = [v84 countByEnumeratingWithState:&v163 objects:v194 count:16];
    if (v85)
    {
      v86 = *v164;
      do
      {
        for (jj = 0; jj != v85; jj = jj + 1)
        {
          if (*v164 != v86)
          {
            objc_enumerationMutation(v84);
          }

          statusString6 = [*(*(&v163 + 1) + 8 * jj) statusString];
          sub_1000247F4(v150, statusString6, @" + ", @"   ");
        }

        v85 = [v84 countByEnumeratingWithState:&v163 objects:v194 count:16];
      }

      while (v85);
    }

    [v150 appendString:@"\n"];
    selfCopy9 = self;
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  clients = [(UACornerActionManager *)selfCopy9 clients];
  allObjects6 = [clients allObjects];
  v91 = [allObjects6 sortedArrayUsingComparator:&stru_1000C5288];

  v92 = [v91 countByEnumeratingWithState:&v159 objects:v193 count:16];
  if (v92)
  {
    v93 = *v160;
    do
    {
      for (kk = 0; kk != v92; kk = kk + 1)
      {
        if (*v160 != v93)
        {
          objc_enumerationMutation(v91);
        }

        statusString7 = [*(*(&v159 + 1) + 8 * kk) statusString];
        if (statusString7)
        {
          [v150 appendString:statusString7];
        }
      }

      v92 = [v91 countByEnumeratingWithState:&v159 objects:v193 count:16];
    }

    while (v92);
  }

  selfCopy11 = self;
  objb = [(UACornerActionManager *)self handlers];
  if ([objb count])
  {
    [v150 appendFormat:@"\n### HANDLERS: (%ld total)\n", objc_msgSend(objb, "count")];
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v97 = objb;
    v98 = [v97 countByEnumeratingWithState:&v155 objects:v192 count:16];
    if (v98)
    {
      v99 = *v156;
      do
      {
        for (mm = 0; mm != v98; mm = mm + 1)
        {
          if (*v156 != v99)
          {
            objc_enumerationMutation(v97);
          }

          statusString8 = [*(*(&v155 + 1) + 8 * mm) statusString];
          if (statusString8)
          {
            sub_1000247F4(v150, statusString8, @"-", 0);
          }
        }

        v98 = [v97 countByEnumeratingWithState:&v155 objects:v192 count:16];
      }

      while (v98);
    }

    selfCopy11 = self;
  }

  userIdleTracker = [(UACornerActionManager *)selfCopy11 userIdleTracker];
  if ([userIdleTracker active])
  {
    v102 = "";
  }

  else
  {
    v102 = " userIdle";
  }

  systemHasSuspendedAdvertisements = [(UACornerActionManager *)selfCopy11 systemHasSuspendedAdvertisements];
  v104 = "NO";
  if (systemHasSuspendedAdvertisements)
  {
    v104 = "YES";
  }

  v138 = v104;
  screenDimmed = [(UACornerActionManager *)selfCopy11 screenDimmed];
  v106 = " dimmed:YES";
  if (!screenDimmed)
  {
    v106 = "";
  }

  v137 = v106;
  if ([(UACornerActionManager *)selfCopy11 deviceUILocked])
  {
    v107 = " locked:YES";
  }

  else
  {
    v107 = "";
  }

  nextUpdateAdvertisedItemsScheduler2 = [(UACornerActionManager *)selfCopy11 nextUpdateAdvertisedItemsScheduler];
  runCount = [nextUpdateAdvertisedItemsScheduler2 runCount];
  nextUpdateAdvertisedItemsScheduler3 = [(UACornerActionManager *)selfCopy11 nextUpdateAdvertisedItemsScheduler];
  v146 = sub_1000097AC([nextUpdateAdvertisedItemsScheduler3 nextTime]);
  nextUserIdleDeterminationScheduler = [(UACornerActionManager *)selfCopy11 nextUserIdleDeterminationScheduler];
  runCount2 = [nextUserIdleDeterminationScheduler runCount];
  nextUserIdleDeterminationScheduler2 = [(UACornerActionManager *)selfCopy11 nextUserIdleDeterminationScheduler];
  v111 = sub_1000097AC([nextUserIdleDeterminationScheduler2 nextTime]);
  nextScheduleBestAppDeterminationScheduler2 = [(UACornerActionManager *)selfCopy11 nextScheduleBestAppDeterminationScheduler];
  v113 = v102;
  runCount3 = [nextScheduleBestAppDeterminationScheduler2 runCount];
  nextScheduleBestAppDeterminationScheduler3 = [(UACornerActionManager *)self nextScheduleBestAppDeterminationScheduler];
  v116 = sub_1000097AC([nextScheduleBestAppDeterminationScheduler3 nextTime]);
  [v150 appendFormat:@"\nIdle determination:%s suspended=%s%s%s%s pick=%ld/%@ idle=%ld/%@ bestApp=%ld/%@\n", v113, v138, v137, v107, "", runCount, v146, runCount2, v111, runCount3, v116];

  debugManager2 = [(UACornerActionManager *)self debugManager];
  perfSummaryString = [debugManager2 perfSummaryString];

  if (perfSummaryString)
  {
    [v150 appendFormat:@"PERF:%@\n", perfSummaryString];
  }

  v119 = +[UATimedPowerAssertions statusString];
  v120 = v119;
  if (v119)
  {
    [v150 appendFormat:@"%@\n", v119];
  }

  [v150 appendString:@"\n"];
  [ActivityManagerDebuggingManager actionStrs:5 maximumInternal:0 clear:30.0];
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v121 = v152 = 0u;
  v122 = [v121 countByEnumeratingWithState:&v151 objects:v191 count:16];
  if (v122)
  {
    v123 = *v152;
    do
    {
      for (nn = 0; nn != v122; nn = nn + 1)
      {
        if (*v152 != v123)
        {
          objc_enumerationMutation(v121);
        }

        [v150 appendFormat:@" - %@\n", *(*(&v151 + 1) + 8 * nn)];
      }

      v122 = [v121 countByEnumeratingWithState:&v151 objects:v191 count:16];
    }

    while (v122);
  }

  v125 = +[UAUserActivityDefaults sharedDefaults];
  statusString9 = [v125 statusString];
  [v150 appendString:statusString9];

  pasteboardController = [(UACornerActionManager *)self pasteboardController];
  localPBStatus = [pasteboardController localPBStatus];
  [v150 appendFormat:@"\n%@\n", localPBStatus];

  v129 = NSTemporaryDirectory();
  [v150 appendFormat:@"NSTemporaryDirectory=%@\n", v129];

  debugManager3 = [(UACornerActionManager *)self debugManager];
  [debugManager3 currentPerfTime];
  *&qword_1000E5C18 = v131 - v4 + *&qword_1000E5C18;

  return v150;
}

- (void)addAdvertiser:(id)advertiser
{
  advertiserCopy = advertiser;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_advertisers containsObject:advertiserCopy]& 1) == 0)
  {
    v6 = sub_100001A30(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = advertiserCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "addAdvertiser(%{public}@)", &v8, 0xCu);
    }

    [(NSMutableSet *)selfCopy->_advertisers addObject:advertiserCopy];
    advertisingSuspended = [(UACornerActionManager *)selfCopy suspended]|| [(UACornerActionManager *)selfCopy advertisingSuspended];
    [advertiserCopy setSuspended:advertisingSuspended];
    [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeAdvertiser:(id)advertiser
{
  advertiserCopy = advertiser;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (advertiserCopy && [(NSMutableSet *)selfCopy->_advertisers containsObject:advertiserCopy])
  {
    v6 = sub_100001A30(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138543362;
      v8 = advertiserCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "removeAdvertiser(%{public}@)", &v7, 0xCu);
    }

    [(NSMutableSet *)selfCopy->_advertisers removeObject:advertiserCopy];
    [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(selfCopy);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_receivers containsObject:receiverCopy]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_receivers addObject:receiverCopy];
    v5 = selfCopy->_suspended || [(UACornerActionManager *)selfCopy receivingSuspended];
    [receiverCopy setSuspended:v5];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  if (receiverCopy)
  {
    v6 = receiverCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)selfCopy->_receivers removeObject:v6];
    objc_sync_exit(selfCopy);

    receiverCopy = v6;
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableSet *)selfCopy->_clients containsObject:clientCopy]& 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_clients addObject:clientCopy];
    [clientCopy setSuspended:{-[UACornerActionManager suspended](selfCopy, "suspended")}];
    [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (clientCopy && [(NSMutableSet *)selfCopy->_clients containsObject:clientCopy])
  {
    [(NSMutableSet *)selfCopy->_clients removeObject:clientCopy];
    [(UACornerActionManager *)selfCopy scheduleUpdatingAdvertisableItems];
  }

  objc_sync_exit(selfCopy);
}

- (void)addActivityNotifier:(id)notifier
{
  notifierCopy = notifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_notifiers addObject:notifierCopy];
  [notifierCopy setSuspended:{-[UACornerActionManager suspended](selfCopy, "suspended")}];
  [(UACornerActionManager *)selfCopy triggerUserIdleDetermination];
  objc_sync_exit(selfCopy);
}

- (void)removeActivityNotifier:(id)notifier
{
  notifierCopy = notifier;
  if (notifierCopy)
  {
    v6 = notifierCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)selfCopy->_notifiers removeObject:v6];
    [(UACornerActionManager *)selfCopy triggerUserIdleDetermination];
    objc_sync_exit(selfCopy);

    notifierCopy = v6;
  }
}

- (NSSet)handlers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_handlers copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_handlers addObject:handlerCopy];
  [handlerCopy setSuspended:{-[UACornerActionManager suspended](selfCopy, "suspended")}];
  objc_sync_exit(selfCopy);
}

- (void)removeHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = handlerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)selfCopy->_handlers removeObject:v6];
    objc_sync_exit(selfCopy);

    handlerCopy = v6;
  }
}

- (NSSet)allHandlers
{
  v3 = +[NSMutableSet set];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v3 unionSet:selfCopy->_advertisers];
  [v3 unionSet:selfCopy->_receivers];
  [v3 unionSet:selfCopy->_clients];
  [v3 unionSet:selfCopy->_notifiers];
  [v3 unionSet:selfCopy->_handlers];
  objc_sync_exit(selfCopy);

  v5 = [v3 copy];

  return v5;
}

@end