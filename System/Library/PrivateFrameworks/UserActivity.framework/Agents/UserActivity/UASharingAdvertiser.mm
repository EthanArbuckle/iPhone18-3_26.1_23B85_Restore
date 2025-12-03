@interface UASharingAdvertiser
- (BOOL)_advertisePayload:(id)payload force:(BOOL)force name:(id)name sfAdvertiser:(id)advertiser;
- (BOOL)_updateAdvertisement;
- (BOOL)active;
- (BOOL)addSFActivityAdvertiser:(id)advertiser;
- (BOOL)advertiseItem:(id)item force:(BOOL)force;
- (BOOL)advertising;
- (BOOL)okToSuspendAdvertising;
- (BOOL)pasteboardAvailible;
- (BOOL)pasteboardBitValue;
- (BOOL)peerDeviceCanAcceptNewerPayload:(id)payload;
- (BOOL)removeSFActivityAdvertiser:(id)advertiser;
- (BOOL)resume;
- (BOOL)scheduleAdvertisementUpdate:(double)update;
- (BOOL)shouldAdvertiseHandoff;
- (BOOL)shouldAdvertisePasteboard;
- (BOOL)suspend;
- (BOOL)userIsCurrent;
- (NSSet)pairedDevices;
- (NSSet)sfActivityAdvertisers;
- (UASharingAdvertiser)initWithManager:(id)manager advertiser:(id)advertiser;
- (id)advertisableItems;
- (id)advertisingItems;
- (id)currentAdvertisedBytes;
- (id)dataForMoreAppSuggestions;
- (id)sfActivityAdvertiser;
- (id)statusString;
- (void)_periodicIdleUpdate;
- (void)_refreshPairedSFPeerDevices;
- (void)_updatePairedDeviceCapabilities;
- (void)activityAdvertiser:(id)advertiser activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler;
- (void)activityAdvertiser:(id)advertiser activityPayloadForAdvertisementPayload:(id)payload handoffCommand:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler;
- (void)activityAdvertiser:(id)advertiser didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error;
- (void)activityAdvertiser:(id)advertiser pairedDevicesChangedNotification:(id)notification;
- (void)advertisePayload:(id)payload force:(BOOL)force;
- (void)moveAdvertisementToNonActive;
- (void)removeAdvertisement;
- (void)removeIOPowerManagerUserIdleNotifications;
- (void)scheduleIOPowerManagerUserIdleNotifications;
- (void)setAdvertisableItems:(id)items;
- (void)setPairedDevices:(id)devices;
- (void)setUserIsCurrent:(BOOL)current;
- (void)updateAdvertisingPowerAssertion:(double)assertion;
@end

@implementation UASharingAdvertiser

- (BOOL)_updateAdvertisement
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_updateAdvertisement, entering.", buf, 2u);
  }

  dispatchQ = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(dispatchQ);

  dispatch_group_enter(*&self->_shouldAdvertiseHandoff);
  [(UASharingAdvertiser *)self setChangeAdvertisementThreadSpinCount:[(UASharingAdvertiser *)self changeAdvertisementThreadSpinCount]+ 1];
  manager = [(UACornerActionManagerHandler *)self manager];
  if ([manager isBluetoothEnabled])
  {
  }

  else
  {
    v6 = +[UAUserActivityDefaults sharedDefaults];
    shouldIgnoreBluetoothDisabled = [v6 shouldIgnoreBluetoothDisabled];

    if ((shouldIgnoreBluetoothDisabled & 1) == 0)
    {
      currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];
      v16 = currentAdvertisedItem == 0;

      v10 = sub_100001A30(0);
      v17 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
      if (!v16)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Removing .currentAdvertisedItem because Bluetooth is not enabled.", buf, 2u);
        }

        goto LABEL_32;
      }

      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: called while bluetooth is disabled", buf, 2u);
      }

      goto LABEL_28;
    }
  }

  manager2 = [(UACornerActionManagerHandler *)self manager];
  isBatterySaverModeEnabled = [manager2 isBatterySaverModeEnabled];

  if (isBatterySaverModeEnabled)
  {
    v10 = sub_100001A30(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Not advertising because this device is in batterSaverModeEnabled == YES", buf, 2u);
    }

LABEL_32:

    [(UASharingAdvertiser *)self removeAdvertisement];
    goto LABEL_81;
  }

  if ([(UACornerActionManagerHandler *)self suspended])
  {
    currentAdvertisedItem2 = [(UASharingAdvertiser *)self currentAdvertisedItem];
    v12 = currentAdvertisedItem2 == 0;

    v10 = sub_100001A30(0);
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: called while we are suspended", buf, 2u);
      }
    }

    else if (v13)
    {
      currentAdvertisedItem3 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      *buf = 138543362;
      v89 = currentAdvertisedItem3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ADVERTISING: Removing advertisement %{public}@ because advertising is suspended", buf, 0xCu);
    }

    goto LABEL_32;
  }

  manager3 = [(UACornerActionManagerHandler *)self manager];
  activityAdvertisingAllowed = [manager3 activityAdvertisingAllowed];

  if (activityAdvertisingAllowed)
  {
    manager4 = [(UACornerActionManagerHandler *)self manager];
    pinnedUserActivityInfoItem = [manager4 pinnedUserActivityInfoItem];

    v22 = +[UAUserActivityDefaults sharedDefaults];
    [v22 lastActiveItemRemovalDelay];
    v24 = v23;

    beginTimeForNonActiveAdvertisement = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
    LOBYTE(v22) = beginTimeForNonActiveAdvertisement == 0;

    if ((v22 & 1) == 0)
    {
      v26 = +[NSDate date];
      beginTimeForNonActiveAdvertisement2 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      [v26 timeIntervalSinceDate:beginTimeForNonActiveAdvertisement2];
      v29 = v28;

      v30 = sub_100001A30(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        beginTimeForNonActiveAdvertisement3 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
        v32 = [NSNumber numberWithDouble:v24 - v29];
        *buf = 138412546;
        v89 = beginTimeForNonActiveAdvertisement3;
        v90 = 2112;
        v91 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "We have a non-active advertisement, started at: %@, %@s till removal", buf, 0x16u);
      }

      if (v29 >= v24)
      {
        v43 = sub_100001A30(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          currentAdvertisedItem4 = [(UASharingAdvertiser *)self currentAdvertisedItem];
          *buf = 138543362;
          v89 = currentAdvertisedItem4;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Removing non-active advertisment (%{public}@)", buf, 0xCu);
        }

        [(UASharingAdvertiser *)self setBeginTimeForNonActiveAdvertisement:0];
        [(UASharingAdvertiser *)self removeAdvertisement];
      }

      else
      {
        v33 = sub_100001A30(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          currentAdvertisedItem5 = [(UASharingAdvertiser *)self currentAdvertisedItem];
          *buf = 138543362;
          v89 = currentAdvertisedItem5;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Rescheduling update to remove advertisment (%{public}@)", buf, 0xCu);
        }

        [(UASharingAdvertiser *)self scheduleAdvertisementUpdate:v24 - v29];
      }
    }

    if (!pinnedUserActivityInfoItem)
    {
      v45 = sub_100001A30(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "UPDATEADVERTISEMENT: looking for a new activity to advertise", buf, 2u);
      }

      if ([(UASharingAdvertiser *)self shouldAdvertisePasteboard])
      {
        v46 = +[UAUserActivityDefaults sharedDefaults];
        clipboardSharingEnabled = [v46 clipboardSharingEnabled];
      }

      else
      {
        clipboardSharingEnabled = 0;
      }

      shouldAdvertiseHandoff = [(UASharingAdvertiser *)self shouldAdvertiseHandoff];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      advertisableItems = [(UASharingAdvertiser *)self advertisableItems];
      pinnedUserActivityInfoItem = 0;
      v50 = [advertisableItems countByEnumeratingWithState:&v83 objects:v87 count:16];
      if (v50)
      {
        v51 = *v84;
        while (2)
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v84 != v51)
            {
              objc_enumerationMutation(advertisableItems);
            }

            v53 = *(*(&v83 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (clipboardSharingEnabled)
              {
                v54 = v53;

                pinnedUserActivityInfoItem = v54;
              }
            }

            else if (((pinnedUserActivityInfoItem == 0) & shouldAdvertiseHandoff) == 1)
            {
              pinnedUserActivityInfoItem = v53;
              goto LABEL_61;
            }
          }

          v50 = [advertisableItems countByEnumeratingWithState:&v83 objects:v87 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

LABEL_61:
    }

    advertisableItems2 = [(UASharingAdvertiser *)self advertisableItems];
    v56 = advertisableItems2 == 0;

    if (!v56)
    {
      v57 = sub_100001A30(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        advertisableItems3 = [(UASharingAdvertiser *)self advertisableItems];
        *buf = 138412546;
        v89 = advertisableItems3;
        v90 = 2112;
        v91 = pinnedUserActivityInfoItem;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "self.advertisableItems is %@, itemToAdvertise is %@", buf, 0x16u);
      }
    }

    if (pinnedUserActivityInfoItem && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      beginTimeForNonActiveAdvertisement4 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      v66 = beginTimeForNonActiveAdvertisement4 == 0;

      if (!v66)
      {
        [(UASharingAdvertiser *)self setBeginTimeForNonActiveAdvertisement:0];
      }
    }

    else
    {
      beginTimeForNonActiveAdvertisement5 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      v60 = beginTimeForNonActiveAdvertisement5 == 0;

      if (!v60)
      {
        manager5 = [(UACornerActionManagerHandler *)self manager];
        currentAdvertisedItem6 = [(UASharingAdvertiser *)self currentAdvertisedItem];
        v63 = [manager5 shouldItemBeAdvertised:currentAdvertisedItem6];

        if (v63)
        {
          currentAdvertisedItem7 = [(UASharingAdvertiser *)self currentAdvertisedItem];

          pinnedUserActivityInfoItem = currentAdvertisedItem7;
        }

        else
        {
          v67 = sub_100001A30(0);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            currentAdvertisedItem8 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            uuid = [currentAdvertisedItem8 uuid];
            uUIDString = [uuid UUIDString];
            currentAdvertisedItem9 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            activityType = [currentAdvertisedItem9 activityType];
            *buf = 138543619;
            v89 = uUIDString;
            v90 = 2113;
            v91 = activityType;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: Removing current advertisement item, %{public}@/%{private}@, because its process is gone", buf, 0x16u);
          }

          [(UASharingAdvertiser *)self removeAdvertisement];
        }
      }

      if (!pinnedUserActivityInfoItem)
      {
        currentAdvertisedItem10 = [(UASharingAdvertiser *)self currentAdvertisedItem];
        v78 = currentAdvertisedItem10 == 0;

        if (v78)
        {
          pinnedUserActivityInfoItem = 0;
        }

        else
        {
          v79 = +[UAUserActivityDefaults sharedDefaults];
          multiHandoffEnabled = [v79 multiHandoffEnabled];

          v81 = sub_100001A30(0);
          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
          if (multiHandoffEnabled)
          {
            if (v82)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: No item available to advertise, so switching to advertising existing advertisement nonactively.", buf, 2u);
            }

            pinnedUserActivityInfoItem = 0;
            [(UASharingAdvertiser *)self moveAdvertisementToNonActive];
          }

          else
          {
            if (v82)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: No item available to advertise, so", buf, 2u);
            }

            pinnedUserActivityInfoItem = 0;
            [(UASharingAdvertiser *)self removeAdvertisement];
          }
        }

        goto LABEL_80;
      }
    }

    v73 = sub_100001A30(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [pinnedUserActivityInfoItem uuid];
      uUIDString2 = [uuid2 UUIDString];
      *buf = 138543362;
      v89 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: choose to advertise (%{public}@)", buf, 0xCu);
    }

    [(UASharingAdvertiser *)self advertiseItem:pinnedUserActivityInfoItem force:0];
LABEL_80:

    goto LABEL_81;
  }

  currentAdvertisedItem11 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  v36 = currentAdvertisedItem11 == 0;

  v10 = sub_100001A30(0);
  v37 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v36)
  {
    if (v37)
    {
      currentAdvertisedItem12 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      uuid3 = [currentAdvertisedItem12 uuid];
      uUIDString3 = [uuid3 UUIDString];
      currentAdvertisedItem13 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      activityType2 = [currentAdvertisedItem13 activityType];
      *buf = 138543619;
      v89 = uUIDString3;
      v90 = 2113;
      v91 = activityType2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: Removing current advertisement item, %{public}@/%{private}@, because self.activityAdvertisingAllowed == NO", buf, 0x16u);
    }

    goto LABEL_32;
  }

  if (v37)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: Reached default case, not performing any action", buf, 2u);
  }

LABEL_28:

LABEL_81:
  dispatch_group_leave(*&self->_shouldAdvertiseHandoff);
  return 0;
}

- (BOOL)shouldAdvertisePasteboard
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (BYTE1(selfCopy->_sfAdvertisers) == 1)
  {
    BYTE1(selfCopy->_sfAdvertisers) = 0;
    dispatchQ = [(UASharingAdvertiser *)selfCopy dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B2A0;
    block[3] = &unk_1000C4D10;
    block[4] = selfCopy;
    dispatch_async(dispatchQ, block);
  }

  v4 = BYTE3(selfCopy->_sfAdvertisers);
  objc_sync_exit(selfCopy);

  return v4;
}

- (BOOL)shouldAdvertiseHandoff
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (BYTE1(selfCopy->_sfAdvertisers) == 1)
  {
    BYTE1(selfCopy->_sfAdvertisers) = 0;
    dispatchQ = [(UASharingAdvertiser *)selfCopy dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B298;
    block[3] = &unk_1000C4D10;
    block[4] = selfCopy;
    dispatch_async(dispatchQ, block);
  }

  v4 = BYTE2(selfCopy->_sfAdvertisers);
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)advertisableItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [*(&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1) copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)removeAdvertisement
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    currentAdvertisementPayload = [(UASharingAdvertiser *)self currentAdvertisementPayload];
    *buf = 138477827;
    v18 = currentAdvertisementPayload;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "removeAdvertisement, currentAdvertisementPayload=%{private}@", buf, 0xCu);
  }

  currentAdvertisementPayload2 = [(UASharingAdvertiser *)self currentAdvertisementPayload];
  advertisementPayload = [currentAdvertisementPayload2 advertisementPayload];
  v7 = sub_100006EF4(advertisementPayload);
  currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];
  uuid = [currentAdvertisedItem uuid];
  uUIDString = [uuid UUIDString];
  suspended = [(UACornerActionManagerHandler *)self suspended];
  v12 = "";
  if (suspended)
  {
    v12 = " SUSPENDED";
  }

  v13 = [NSString stringWithFormat:@"ADVERTISING:- (was %@/%@)%s", v7, uUIDString, v12];
  [ActivityManagerDebuggingManager appendRecentAction:v13];

  currentAdvertisedItem2 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  [(UASharingAdvertiser *)self advertisePayload:0 force:currentAdvertisedItem2 != 0];

  [(UASharingAdvertiser *)self setCurrentAdvertisedItem:0];
  [(UASharingAdvertiser *)self setCurrentAdvertisementPayload:0];
  [(UASharingAdvertiser *)self setLastAdvertismentTime:0];
  [(UASharingAdvertiser *)self setCurrentAdvertisedItemOtherAdvertisedItems:0];
  [(UASharingAdvertiser *)self removeIOPowerManagerUserIdleNotifications];
  preventIdleSleepAssertion = [(UASharingAdvertiser *)self preventIdleSleepAssertion];
  LOBYTE(currentAdvertisedItem2) = preventIdleSleepAssertion == 0;

  if ((currentAdvertisedItem2 & 1) == 0)
  {
    preventIdleSleepAssertion2 = [(UASharingAdvertiser *)self preventIdleSleepAssertion];
    [preventIdleSleepAssertion2 releaseAssertion];

    [(UASharingAdvertiser *)self setPreventIdleSleepAssertion:0];
  }
}

- (void)removeIOPowerManagerUserIdleNotifications
{
  userIsCurrentIdleTracker = [(UASharingAdvertiser *)self userIsCurrentIdleTracker];
  [userIsCurrentIdleTracker setEnabled:0];
}

- (BOOL)active
{
  v5.receiver = self;
  v5.super_class = UASharingAdvertiser;
  if (![(UACornerActionManagerHandler *)&v5 active])
  {
    return 0;
  }

  v2 = +[UAUserActivityDefaults sharedDefaults];
  activityBTLESharingEnabled = [v2 activityBTLESharingEnabled];

  return activityBTLESharingEnabled;
}

- (BOOL)advertising
{
  currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];
  v3 = currentAdvertisedItem != 0;

  return v3;
}

- (void)_periodicIdleUpdate
{
  currentAdvertisedItemOtherAdvertisedItems = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
  if (currentAdvertisedItemOtherAdvertisedItems)
  {
    currentAdvertisedItemOtherAdvertisedItems2 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
    v5 = [currentAdvertisedItemOtherAdvertisedItems2 count];

    if (v5)
    {
      v6 = +[NSDate date];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      currentAdvertisedItemOtherAdvertisedItems3 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
      allKeys = [currentAdvertisedItemOtherAdvertisedItems3 allKeys];

      v9 = allKeys;
      v10 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v10)
      {
        v12 = *v25;
        *&v11 = 138478339;
        v23 = v11;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v24 + 1) + 8 * i);
            currentAdvertisedItemOtherAdvertisedItems4 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
            v16 = [currentAdvertisedItemOtherAdvertisedItems4 objectForKey:v14];

            v17 = sub_100001A30(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543875;
              v29 = v16;
              v30 = 2113;
              v31 = v14;
              v32 = 2114;
              v33 = v6;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "OLDWEB: Checking expiration of %{public}@ of %{private}@, expireBefore=%{public}@", buf, 0x20u);
            }

            [v16 timeIntervalSinceReferenceDate];
            v19 = v18;
            [v6 timeIntervalSinceReferenceDate];
            if (v19 <= v20)
            {
              v22 = sub_100001A30(0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = v23;
                v29 = v14;
                v30 = 2114;
                v31 = v6;
                v32 = 2114;
                v33 = v16;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "OLDWEB: Removing (old) NSUserActivityTypeBrowsingWeb item, %{private}@, because it is older than %{public}@ (expired at %{public}@", buf, 0x20u);
              }

              currentAdvertisedItemOtherAdvertisedItems5 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
              [currentAdvertisedItemOtherAdvertisedItems5 removeObjectForKey:v14];
            }

            else
            {
              currentAdvertisedItemOtherAdvertisedItems5 = [(UASharingAdvertiser *)self periodicUpdate];
              [currentAdvertisedItemOtherAdvertisedItems5 scheduleAt:v16];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v10);
      }
    }
  }
}

- (UASharingAdvertiser)initWithManager:(id)manager advertiser:(id)advertiser
{
  managerCopy = manager;
  advertiserCopy = advertiser;
  v38.receiver = self;
  v38.super_class = UASharingAdvertiser;
  v8 = [(UAAdvertiser *)&v38 initWithManager:managerCopy name:@"SharingAdvertiser"];
  if (v8)
  {
    v9 = dispatch_queue_create("UASharingAdvertiser", 0);
    v10 = *(v8 + 97);
    *(v8 + 97) = v9;

    v11 = dispatch_group_create();
    v12 = *(v8 + 73);
    *(v8 + 73) = v11;

    v13 = +[NSMutableSet set];
    v14 = *(v8 + 57);
    *(v8 + 57) = v13;

    [v8 addSFActivityAdvertiser:advertiserCopy];
    v15 = +[NSArray array];
    v16 = *(v8 + 49);
    *(v8 + 49) = v15;

    v17 = objc_alloc_init(NSMutableArray);
    [v8 setAdvertisementTimes:v17];

    dispatchQ = [v8 dispatchQ];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100067FA8;
    v36[3] = &unk_1000C4D10;
    v19 = v8;
    v37 = v19;
    v20 = [UADispatchScheduler dispatchScheduler:@"sharingUpdate" frequency:dispatchQ queue:v36 block:1.84467441e19];
    v21 = *(v19 + 105);
    *(v19 + 105) = v20;

    dispatchQ2 = [v19 dispatchQ];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100067FB0;
    v34[3] = &unk_1000C4D10;
    v23 = v19;
    v35 = v23;
    v24 = [UADispatchScheduler dispatchScheduler:@"advertisingPeriodic" frequency:dispatchQ2 queue:v34 block:1.84467441e19];
    v25 = *(v23 + 113);
    *(v23 + 113) = v24;

    v23[65] = 1;
    manager = [v23 manager];
    mainDispatchQ = [manager mainDispatchQ];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100067FB8;
    v32[3] = &unk_1000C5010;
    v28 = v23;
    v33 = v28;
    v29 = [PowerManagerIdleTracker idleTracker:@"AdvertiserCurrent" queue:mainDispatchQ interval:v32 block:8.0];
    v30 = *(v28 + 185);
    *(v28 + 185) = v29;

    v28[66] = 1;
    v28[67] = 1;
  }

  return v8;
}

- (id)advertisingItems
{
  currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];
  if (currentAdvertisedItem)
  {
    currentAdvertisedItem2 = [(UASharingAdvertiser *)self currentAdvertisedItem];
    v5 = [NSArray arrayWithObject:currentAdvertisedItem2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAdvertisableItems:(id)items
{
  itemsCopy = items;
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [itemsCopy description];
    v5 = sub_100009684(v4);
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "setAdvertisableItems:(%{public}@)", buf, 0xCu);
  }

  if (itemsCopy)
  {
    firstObject = [itemsCopy firstObject];
    v7 = firstObject == 0;

    if (!v7)
    {
      v8 = +[NSMutableArray array];
      if ([(UASharingAdvertiser *)self shouldAdvertisePasteboard])
      {
        v9 = +[UAUserActivityDefaults sharedDefaults];
        clipboardSharingEnabled = [v9 clipboardSharingEnabled];
      }

      else
      {
        clipboardSharingEnabled = 0;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = itemsCopy;
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v15)
      {
        v16 = 0;
        v17 = 0;
        v18 = *v31;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (clipboardSharingEnabled)
              {
                [v8 addObject:v20];
              }
            }

            else if (!(v16 & 1 | (([v20 eligibleForHandoff] & 1) == 0)))
            {
              [v8 insertObject:v20 atIndex:0];
              if (v17)
              {
                v16 = 1;
                v17 = 1;
              }

              else
              {
                activityType = [v20 activityType];
                v17 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

                v16 = 1;
              }
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v15);

        if (v17)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      advertisableItems = [(UASharingAdvertiser *)self advertisableItems];
      v23 = [v8 isEqual:advertisableItems];

      if (v23)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_29:
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v25 = [v8 count];
      if (v25)
      {
        v26 = [v8 copy];
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong((&selfCopy->super._shouldAdvertiseAutoPullActivityList + 1), v26);
      if (v25)
      {
      }

      objc_sync_exit(selfCopy);

      v27 = sub_100001A30(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "ADVERTISING: Scheduling an update to check the advertisement, because we've changed the list of advertised items.", buf, 2u);
      }

      [(UASharingAdvertiser *)selfCopy scheduleAdvertisementUpdate];
      goto LABEL_37;
    }
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v12 = *(&selfCopy2->super._shouldAdvertiseAutoPullActivityList + 1);
  *(&selfCopy2->super._shouldAdvertiseAutoPullActivityList + 1) = 0;

  objc_sync_exit(selfCopy2);
  v13 = sub_100001A30(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "--- Scheduling an update to check the advertisement, because we've cleared the list of advertisable items.", buf, 2u);
  }

  [(UASharingAdvertiser *)selfCopy2 scheduleAdvertisementUpdate];
LABEL_38:
}

- (id)currentAdvertisedBytes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAdvertisementPayload = [(UASharingAdvertiser *)selfCopy currentAdvertisementPayload];

  if (currentAdvertisementPayload)
  {
    currentAdvertisementPayload2 = [(UASharingAdvertiser *)selfCopy currentAdvertisementPayload];
    advertisementPayload = [currentAdvertisementPayload2 advertisementPayload];
    v6 = [advertisementPayload copy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)updateAdvertisingPowerAssertion:(double)assertion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  preventIdleSleepAssertion = [(UASharingAdvertiser *)selfCopy preventIdleSleepAssertion];

  if (preventIdleSleepAssertion)
  {
    preventIdleSleepAssertion2 = [(UASharingAdvertiser *)selfCopy preventIdleSleepAssertion];
    [preventIdleSleepAssertion2 updateTimeUntilAssertionRelease:assertion];
  }

  else
  {
    v7 = [UATimedPowerAssertions alloc];
    preventIdleSleepAssertion2 = [(UASharingAdvertiser *)selfCopy currentAdvertisedItem];
    uuid = [preventIdleSleepAssertion2 uuid];
    manager = [(UACornerActionManagerHandler *)selfCopy manager];
    mainDispatchQ = [manager mainDispatchQ];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006882C;
    v12[3] = &unk_1000C5010;
    v12[4] = selfCopy;
    v11 = [(UATimedPowerAssertions *)v7 initWithName:@"BTLEAdvertisement" delta:uuid activityUUID:mainDispatchQ queue:v12 runAtCompletion:assertion];
    [(UASharingAdvertiser *)selfCopy setPreventIdleSleepAssertion:v11];
  }

  objc_sync_exit(selfCopy);
}

- (void)advertisePayload:(id)payload force:(BOOL)force
{
  payloadCopy = payload;
  dispatchQ = [(UASharingAdvertiser *)self dispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068974;
  block[3] = &unk_1000C6048;
  block[4] = self;
  v10 = payloadCopy;
  forceCopy = force;
  v8 = payloadCopy;
  dispatch_async(dispatchQ, block);
}

- (BOOL)_advertisePayload:(id)payload force:(BOOL)force name:(id)name sfAdvertiser:(id)advertiser
{
  payloadCopy = payload;
  nameCopy = name;
  advertiserCopy = advertiser;
  dispatchQ = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(dispatchQ);

  v24[0] = SFActivityAdvertiserOptionVersionKey;
  v24[1] = SFActivityAdvertiserOptionMinorVersionKey;
  v25[0] = &off_1000CC9E8;
  v25[1] = &off_1000CC9E8;
  v24[2] = SFActivityAdvertiserOptionFlagCopyPasteKey;
  v13 = &__kCFBooleanFalse;
  if (payloadCopy && [payloadCopy containsPasteboard])
  {
    v13 = &__kCFBooleanTrue;
  }

  v24[3] = @"name";
  v14 = @"-";
  if (nameCopy)
  {
    v14 = nameCopy;
  }

  v25[2] = v13;
  v25[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  if (advertiserCopy)
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      time = [payloadCopy time];
      v20 = 138412546;
      v21 = payloadCopy;
      v22 = 2112;
      v23 = time;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "advertising %@, when = %@", &v20, 0x16u);
    }

    if (payloadCopy)
    {
      advertisementPayload = [payloadCopy advertisementPayload];
    }

    else
    {
      advertisementPayload = 0;
    }

    [advertiserCopy advertiseAdvertisementPayload:advertisementPayload options:v15];
    if (payloadCopy)
    {
    }
  }

  return advertiserCopy != 0;
}

- (BOOL)advertiseItem:(id)item force:(BOOL)force
{
  itemCopy = item;
  selfCopy = self;
  dispatchQ = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(dispatchQ);

  v150 = +[NSDate date];
  v6 = +[UAUserActivityDefaults sharedDefaults];
  multiHandoffEnabled = [v6 multiHandoffEnabled];
  if (itemCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = multiHandoffEnabled;
  }

  v145 = v8;
  if (v8 == 1)
  {
    shouldAdvertiseAutoPullActivityList = [(UAAdvertiser *)selfCopy shouldAdvertiseAutoPullActivityList];

    if (!shouldAdvertiseAutoPullActivityList)
    {
      goto LABEL_123;
    }

    manager = [(UACornerActionManagerHandler *)selfCopy manager];
    advertiseableItems = [manager advertiseableItems];
    anyObject = [advertiseableItems anyObject];

    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v157 = *&anyObject;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "itemToAdvertise is nil but we need to advertise an auto pull request, so choosing item %@ out of corner manager's possible advertiseable items to advertise", buf, 0xCu);
    }

    if (anyObject)
    {
      itemCopy = [[UAUserActivityInfo alloc] initWithUserActivityInfo:anyObject];
    }

    else
    {
      itemCopy = 0;
    }
  }

  else
  {
  }

  if (itemCopy)
  {
    [(UASharingAdvertiser *)selfCopy scheduleIOPowerManagerUserIdleNotifications];
    userIsCurrent = [(UASharingAdvertiser *)selfCopy userIsCurrent];
    options = [itemCopy options];
    v141 = userIsCurrent;
    v149 = [options mutableCopy];

    if (!v149)
    {
      v149 = +[NSMutableDictionary dictionary];
    }

    if ([(UASharingAdvertiser *)selfCopy shouldAdvertisePasteboard])
    {
      if ([(UASharingAdvertiser *)selfCopy pasteboardAvailible])
      {
        [v149 setObject:&__kCFBooleanTrue forKey:@"UAPasteboardAvailable"];
        v16 = [NSNumber numberWithBool:[(UASharingAdvertiser *)selfCopy pasteboardBitValue]];
        [v149 setObject:v16 forKey:@"UAPasteboardVersionBit"];
      }

      else
      {
        [v149 removeObjectForKey:@"UAPasteboardAvailable"];
        [v149 removeObjectForKey:@"UAPasteboardVersionBit"];
      }
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    manager2 = [(UACornerActionManagerHandler *)selfCopy manager];
    advertiseableItems2 = [manager2 advertiseableItems];
    allObjects = [advertiseableItems2 allObjects];

    v20 = [allObjects countByEnumeratingWithState:&v152 objects:v168 count:16];
    if (v20)
    {
      v21 = *v153;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v153 != v21)
          {
            objc_enumerationMutation(allObjects);
          }

          v23 = *(*(&v152 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            uuid = [v23 uuid];
            uuid2 = [itemCopy uuid];
            if ([uuid isEqual:uuid2])
            {
            }

            else
            {
              when = [v23 when];
              [(__CFString *)v150 timeIntervalSinceDate:when];
              v28 = v27 < 600.0;

              if (v28)
              {
                [v149 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityAdvertiserHasMoreActivities"];
              }
            }
          }
        }

        v20 = [allObjects countByEnumeratingWithState:&v152 objects:v168 count:16];
      }

      while (v20);
    }

    beginTimeForNonActiveAdvertisement = [(UASharingAdvertiser *)selfCopy beginTimeForNonActiveAdvertisement];
    if (beginTimeForNonActiveAdvertisement)
    {
      v30 = 1;
    }

    else
    {
      v30 = v145;
    }

    if (v30)
    {
      v31 = sub_100001A30(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v157 = *&itemCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setting UAUserActivityItemIsNotActiveKey = 1 for item %@", buf, 0xCu);
      }

      v32 = &__kCFBooleanTrue;
    }

    else
    {
      v31 = sub_100001A30(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v157 = *&itemCopy;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setting UAUserActivityItemIsNotActiveKey = 0 for item %@", buf, 0xCu);
      }

      v32 = &__kCFBooleanFalse;
    }

    [v149 setObject:v32 forKey:@"UAUserActivityItemIsNotActiveKey"];
    v33 = v141;
    if ([(UAAdvertiser *)selfCopy shouldAdvertiseAutoPullActivityList])
    {
      v34 = sub_100001A30(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v157 = *&itemCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "setting UAUserActivityAutoPullActivitiesListKey = 1 for item %@", buf, 0xCu);
      }

      [v149 setObject:&__kCFBooleanTrue forKey:UAUserActivityAutoPullActivitiesListKey];
      v33 = v141;
    }

    [itemCopy setOptions:v149];
    v35 = [SharingBTLEAdvertisementPayload alloc];
    if (v33)
    {
      lastUserActiveTime = 0;
    }

    else
    {
      lastUserActiveTime = [(UASharingAdvertiser *)selfCopy lastUserActiveTime];
    }

    v146 = [(SharingBTLEAdvertisementPayload *)v35 initWithItem:itemCopy isCurrent:v33 when:lastUserActiveTime versionFlags:5];
    if ((v33 & 1) == 0)
    {
    }

    if (force)
    {
      goto LABEL_60;
    }

    currentAdvertisedItem = [(UASharingAdvertiser *)selfCopy currentAdvertisedItem];
    if (!currentAdvertisedItem)
    {
      goto LABEL_60;
    }

    currentAdvertisedItem2 = [(UASharingAdvertiser *)selfCopy currentAdvertisedItem];
    uuid3 = [currentAdvertisedItem2 uuid];
    uuid4 = [itemCopy uuid];
    if ([uuid3 isEqual:uuid4])
    {
      currentAdvertisementPayload = [(UASharingAdvertiser *)selfCopy currentAdvertisementPayload];
      if (currentAdvertisementPayload)
      {
        currentAdvertisementPayload2 = [(UASharingAdvertiser *)selfCopy currentAdvertisementPayload];
        if ([(SharingBTLEAdvertisementPayload *)v146 isEqual:currentAdvertisementPayload2])
        {
          isCurrent = [(SharingBTLEAdvertisementPayload *)v146 isCurrent];
          currentAdvertisementPayload3 = [(UASharingAdvertiser *)selfCopy currentAdvertisementPayload];
          isCurrent2 = [currentAdvertisementPayload3 isCurrent];

          if (((isCurrent ^ isCurrent2) & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_60:
          v46 = sub_100001A30(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            uuid5 = [itemCopy uuid];
            uUIDString = [uuid5 UUIDString];
            logString = [itemCopy logString];
            *buf = 138543619;
            v157 = *&uUIDString;
            v158 = 2113;
            v159 = logString;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Advertising new item or updating user-idle time in previous advertisement, %{public}@/%{private}@", buf, 0x16u);
          }

          advertisementPayload = [(SharingBTLEAdvertisementPayload *)v146 advertisementPayload];
          v143 = sub_100006EF4(advertisementPayload);
          activityType = [itemCopy activityType];
          dynamicActivityType = [itemCopy dynamicActivityType];
          if (dynamicActivityType)
          {
            dynamicActivityType2 = [itemCopy dynamicActivityType];
          }

          else
          {
            dynamicActivityType2 = &stru_1000C67D0;
          }

          uuid6 = [itemCopy uuid];
          uUIDString2 = [uuid6 UUIDString];
          v56 = [NSString stringWithFormat:@"ADVERTISING:%@ %@ %@/ %@", v143, activityType, dynamicActivityType2, uUIDString2];
          [ActivityManagerDebuggingManager appendRecentAction:v56];

          if (dynamicActivityType)
          {
          }

          lastAdvertismentTime = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
          if (lastAdvertismentTime)
          {
            lastAdvertismentTime2 = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
            [lastAdvertismentTime2 timeIntervalSinceNow];
            v60 = v59 > 0.0;

            if (v60)
            {
              [(UASharingAdvertiser *)selfCopy setLastAdvertismentTime:0];
              v61 = sub_100001A30(0);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "lastAdvertismentTime is in the future, this is wrong and is probably because the system clock has changed", buf, 2u);
              }
            }
          }

          lastAdvertismentTime3 = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
          if (lastAdvertismentTime3)
          {
            v63 = +[UAUserActivityDefaults sharedDefaults];
            [v63 minimumIntervalBetweenAdvertisements];
            v65 = v64 > 0.0;

            if (v65)
            {
              lastAdvertismentTime4 = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
              [(__CFString *)v150 timeIntervalSinceDate:lastAdvertismentTime4];
              v68 = v67;

              if (v68 < 0.0)
              {
                v69 = sub_100001A30(0);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  lastAdvertismentTime5 = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
                  *buf = 138543618;
                  v157 = *&v150;
                  v158 = 2114;
                  v159 = lastAdvertismentTime5;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Time since last advertisement seems to have gone backwards, now=%{public}@ last=%{public}@", buf, 0x16u);
                }

                v68 = 0.0;
              }

              v71 = +[UAUserActivityDefaults sharedDefaults];
              [v71 minimumIntervalBetweenAdvertisements];
              v73 = v68 < v72;

              if (v73)
              {
                if (![itemCopy eligibleToAlwaysAdvertise])
                {
                  v137 = sub_100001A30(0);
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                  {
                    lastAdvertismentTime6 = [(UASharingAdvertiser *)selfCopy lastAdvertismentTime];
                    *buf = 134218498;
                    v157 = v68;
                    v158 = 2114;
                    v159 = v150;
                    v160 = 2114;
                    v161 = lastAdvertismentTime6;
                    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Setting supressAdvertisementChange = YES because the client attempted to change advertisement too quickly, %f since lastAdvertisementTime (now=%{public}@ last=%{public}@)", buf, 0x20u);
                  }

                  v75 = +[UAUserActivityDefaults sharedDefaults];
                  [(__CFString *)v75 minimumIntervalBetweenAdvertisements];
                  [(UASharingAdvertiser *)selfCopy scheduleAdvertisementUpdate:v139 - v68];
                  goto LABEL_119;
                }

                v74 = sub_100001A30(0);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "ADVERTISING: Allowing application to change advertisement even though the interval is too short because .eligibleToAlwaysAdvertise = YES", buf, 2u);
                }
              }
            }
          }

          v75 = +[UAUserActivityDefaults sharedDefaults];
          [(__CFString *)v75 maximumAdvertisementsTimeInterval];
          if (v76 <= 0.0)
          {
            goto LABEL_95;
          }

          advertisementTimes = [(UASharingAdvertiser *)selfCopy advertisementTimes];
          v78 = [advertisementTimes count] == 0;

          if (v78)
          {
            goto LABEL_96;
          }

          v79 = +[UAUserActivityDefaults sharedDefaults];
          [v79 maximumAdvertisementsTimeInterval];
          v75 = [NSDate dateWithTimeInterval:v150 sinceDate:-v80];

          v81 = sub_100001A30(0);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            advertisementTimes2 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            v83 = [advertisementTimes2 count];
            advertisementTimes3 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            v85 = [advertisementTimes3 description];
            v86 = sub_100009684(v85);
            *buf = 134218242;
            v157 = *&v83;
            v158 = 2114;
            v159 = v86;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "ADVERTISING: self.advertisementTimes=%ld %{public}@", buf, 0x16u);
          }

          while (1)
          {
            advertisementTimes4 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            if (![advertisementTimes4 count])
            {
              break;
            }

            advertisementTimes5 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            firstObject = [advertisementTimes5 firstObject];
            v90 = [(__CFString *)v75 compare:firstObject]== -1;

            if (v90)
            {
              goto LABEL_94;
            }

            v91 = sub_100001A30(0);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              advertisementTimes6 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
              v93 = [advertisementTimes6 objectAtIndex:0];
              *buf = 138543618;
              v157 = *&v93;
              v158 = 2114;
              v159 = v75;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "ADVERTISING: Removing first item, %{public}@, becaues it is earlier than %{public}@", buf, 0x16u);
            }

            advertisementTimes7 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            [advertisementTimes7 removeObjectAtIndex:0];
          }

LABEL_94:
          advertisementTimes8 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
          v96 = [advertisementTimes8 count];
          v97 = +[UAUserActivityDefaults sharedDefaults];
          v98 = v96 < [v97 maximumAdvertisementsPerTimeInterval];

          if (v98)
          {
LABEL_95:

LABEL_96:
            [(UASharingAdvertiser *)selfCopy setCurrentAdvertisedItem:itemCopy];
            [(UASharingAdvertiser *)selfCopy setLastAdvertismentTime:v150];
            provenance = [itemCopy provenance];
            [(UASharingAdvertiser *)selfCopy _advertisePayload:v146 force:0 name:provenance];

            advertisementTimes9 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            [advertisementTimes9 addObject:v150];

            activityType2 = [itemCopy activityType];
            v102 = [activityType2 isEqual:NSUserActivityTypeBrowsingWeb];

            if (v102)
            {
              v103 = +[UAUserActivityDefaults sharedDefaults];
              [v103 advertisedItemWhichIsWebBrowserIntervalToRememberEarlierActivities];
              v105 = v104;

              if (v105 > 0.0)
              {
                v106 = [NSDate dateWithTimeIntervalSinceNow:v105];
                v107 = sub_100001A30(0);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138478083;
                  v157 = *&v146;
                  v158 = 2114;
                  v159 = v106;
                  _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEBUG, "OLDWEB: Adding item %{private}@, date=%{public}@", buf, 0x16u);
                }

                currentAdvertisedItemOtherAdvertisedItems = [(UASharingAdvertiser *)selfCopy currentAdvertisedItemOtherAdvertisedItems];
                v109 = currentAdvertisedItemOtherAdvertisedItems == 0;

                if (v109)
                {
                  v110 = +[NSMutableDictionary dictionary];
                  [(UASharingAdvertiser *)selfCopy setCurrentAdvertisedItemOtherAdvertisedItems:v110];
                }

                currentAdvertisedItemOtherAdvertisedItems2 = [(UASharingAdvertiser *)selfCopy currentAdvertisedItemOtherAdvertisedItems];
                [currentAdvertisedItemOtherAdvertisedItems2 setObject:v106 forKey:v146];

                periodicUpdate = [(UASharingAdvertiser *)selfCopy periodicUpdate];
                [periodicUpdate scheduleAt:v106];
              }
            }

            nextScheduleUpdate = [(UASharingAdvertiser *)selfCopy nextScheduleUpdate];
            [nextScheduleUpdate scheduleNext:248.0];

            v114 = sub_100001A30(0);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              uuid7 = [itemCopy uuid];
              uUIDString3 = [uuid7 UUIDString];
              activityType3 = [itemCopy activityType];
              dynamicActivityType3 = [itemCopy dynamicActivityType];
              if (dynamicActivityType3)
              {
                activityType = [itemCopy dynamicActivityType];
                v117 = [NSString stringWithFormat:@":%@", activityType];
              }

              else
              {
                v117 = &stru_1000C67D0;
              }

              v118 = +[NSDate date];
              options2 = [itemCopy options];
              v120 = [options2 description];
              v121 = uuid7;
              v122 = sub_100009684(v120);
              *buf = 138544643;
              v157 = *&v146;
              v158 = 2114;
              v159 = uUIDString3;
              v160 = 2113;
              v161 = activityType3;
              v162 = 2113;
              v163 = v117;
              v164 = 2114;
              v165 = v118;
              v166 = 2114;
              v167 = v122;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "ADVERTISING:%{public}@ %{public}@ type=%{private}@%{private}@ at %{public}@ opts=%{public}@", buf, 0x3Eu);

              if (dynamicActivityType3)
              {
              }
            }

LABEL_121:

LABEL_122:
            goto LABEL_123;
          }

          v123 = sub_100001A30(0);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            v124 = +[UAUserActivityDefaults sharedDefaults];
            maximumAdvertisementsPerTimeInterval = [v124 maximumAdvertisementsPerTimeInterval];
            v126 = +[UAUserActivityDefaults sharedDefaults];
            [v126 maximumAdvertisementsTimeInterval];
            v128 = v127;
            advertisementTimes10 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
            firstObject2 = [advertisementTimes10 firstObject];
            *buf = 134218754;
            v157 = *&maximumAdvertisementsPerTimeInterval;
            v158 = 2048;
            v159 = v128;
            v160 = 2114;
            v161 = firstObject2;
            v162 = 2114;
            v163 = v150;
            _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEBUG, "ADVERTISING: Setting supressAdvertisementChange = YES because the advertisement too quickly, %ld in last %f seconds (earliest=%{public}@ now=%{public}@)", buf, 0x2Au);
          }

          advertisementTimes11 = [(UASharingAdvertiser *)selfCopy advertisementTimes];
          firstObject3 = [advertisementTimes11 firstObject];
          [(__CFString *)v150 timeIntervalSinceDate:firstObject3];
          v134 = v133;

          if (v134 < 0.0)
          {
            v135 = +[UAUserActivityDefaults sharedDefaults];
            [v135 minimumIntervalBetweenAdvertisements];
            if (v136 > -v134)
            {
              v136 = -v134;
            }

            [(UASharingAdvertiser *)selfCopy scheduleAdvertisementUpdate:v136];
          }

LABEL_119:

          v114 = sub_100001A30(0);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Since supressAdvertisementChange == YES, not actually changing the active advertisement and relying on it happening again in the near future.", buf, 2u);
          }

          goto LABEL_121;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_123:

  return 0;
}

- (void)moveAdvertisementToNonActive
{
  v3 = +[NSDate date];
  [(UASharingAdvertiser *)self setBeginTimeForNonActiveAdvertisement:?];

  v4 = +[UAUserActivityDefaults sharedDefaults];
  [v4 lastActiveItemRemovalDelay];
  [(UASharingAdvertiser *)self scheduleAdvertisementUpdate:?];
}

- (BOOL)peerDeviceCanAcceptNewerPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!payloadCopy)
  {
    goto LABEL_13;
  }

  productBuildVersion = [payloadCopy productBuildVersion];
  if (!productBuildVersion)
  {
    goto LABEL_13;
  }

  productBuildVersion2 = [v4 productBuildVersion];
  if (![productBuildVersion2 UTF8String])
  {

    goto LABEL_13;
  }

  productBuildVersion3 = [v4 productBuildVersion];
  v8 = sscanf([productBuildVersion3 UTF8String], "%ld%c%ld", &v27, &v25, &v26) == 3;

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    productName = [v4 productName];
    productVersion = [v4 productVersion];
    productBuildVersion4 = [v4 productBuildVersion];
    *buf = 138544642;
    v29 = productName;
    v30 = 2114;
    v31 = productVersion;
    v32 = 2114;
    v33 = productBuildVersion4;
    v34 = 2048;
    v35 = v27;
    v36 = 1024;
    v37 = v25;
    v38 = 2048;
    v39 = v26;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "-- CHECKING %{public}@ version %{public}@, %{public}@ = %ld.%c.%ld", buf, 0x3Au);
  }

  productName2 = [v4 productName];
  v14 = [productName2 isEqual:@"iPhone OS"];

  if (!v14)
  {
    productName3 = [v4 productName];
    if (([productName3 isEqual:@"macOS"] & 1) == 0)
    {
      productName4 = [v4 productName];
      if (![productName4 isEqual:@"Mac OS X"])
      {
        productName5 = [v4 productName];
        v24 = [productName5 isEqual:@"OS X"];

        if ((v24 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    if (v27 > 15)
    {
      goto LABEL_13;
    }

    if (v27 != 15)
    {
LABEL_29:
      v18 = 0;
      goto LABEL_14;
    }

    v15 = v25 == 65;
    if (v25 <= 65)
    {
      v16 = v26;
      v17 = 39;
      goto LABEL_23;
    }

LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

  if (v27 > 13)
  {
    goto LABEL_13;
  }

  if (v27 != 13)
  {
    goto LABEL_29;
  }

  v15 = v25 == 65;
  if (v25 > 65)
  {
    goto LABEL_13;
  }

  v16 = v26;
  v17 = 125;
LABEL_23:
  v18 = v15 && v16 > v17;
LABEL_14:

  return v18;
}

- (NSSet)sfActivityAdvertisers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [*(&selfCopy->_advertisableItems + 1) copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)addSFActivityAdvertiser:(id)advertiser
{
  advertiserCopy = advertiser;
  if (advertiserCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [*(&selfCopy->_advertisableItems + 1) containsObject:advertiserCopy];
    if ((v6 & 1) == 0)
    {
      [*(&selfCopy->_advertisableItems + 1) addObject:advertiserCopy];
      [advertiserCopy setDelegate:selfCopy];
    }

    v7 = v6 ^ 1;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeSFActivityAdvertiser:(id)advertiser
{
  advertiserCopy = advertiser;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [*(&selfCopy->_advertisableItems + 1) containsObject:advertiserCopy];
  if (v6)
  {
    [advertiserCopy setDelegate:0];
    [*(&selfCopy->_advertisableItems + 1) removeObject:advertiserCopy];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)sfActivityAdvertiser
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  sfActivityAdvertisers = [(UASharingAdvertiser *)self sfActivityAdvertisers];
  v3 = [sfActivityAdvertisers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(sfActivityAdvertisers);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_class())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v3 = v6;
            goto LABEL_12;
          }
        }
      }

      v3 = [sfActivityAdvertisers countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_refreshPairedSFPeerDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  BYTE1(selfCopy->_sfAdvertisers) = 0;
  objc_sync_exit(selfCopy);
  v10 = selfCopy;

  v11 = +[NSMutableSet set];
  v3 = dispatch_group_create();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  sfActivityAdvertisers = [(UASharingAdvertiser *)selfCopy sfActivityAdvertisers];
  v5 = [sfActivityAdvertisers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(sfActivityAdvertisers);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v3);
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_10006B524;
          v12[3] = &unk_1000C6070;
          v13 = v11;
          v14 = v3;
          [v8 fetchSFPeerDevicesWithCompletionHandler:v12];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [sfActivityAdvertisers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v10;
  objc_sync_enter(v9);
  [(UASharingAdvertiser *)v9 setPairedDevices:v11];
  objc_sync_exit(v9);
}

- (void)_updatePairedDeviceCapabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(&selfCopy->_helpersDispatchGroup + 1);
  v2 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_36;
  }

  v3 = 0;
  v4 = 0;
  v29 = *v31;
  do
  {
    v5 = 0;
    do
    {
      if (*v31 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v30 + 1) + 8 * v5);
      if (v4 || ([*(*(&v30 + 1) + 8 * v5) isDefaultPairedDevice] & 1) != 0 || sub_10006BA74(v6, @"macOS", 0x14u) || sub_10006BA74(v6, @"Mac OS X", 0xEu))
      {
        v7 = 1;
        if (v3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7 = sub_10006BA74(v6, @"iPhone OS", 0xCu);
        if (v3)
        {
          goto LABEL_13;
        }
      }

      if (sub_10006BA74(v6, @"macOS", 0x14u) || sub_10006BA74(v6, @"Mac OS X", 0x10u))
      {
LABEL_13:
        v8 = 1;
        goto LABEL_14;
      }

      v8 = sub_10006BA74(v6, @"iPhone OS", 0xEu);
LABEL_14:
      v9 = [NSString stringWithFormat:@"%c%c%c%c", 120, 114, 79, 83];
      v10 = sub_10006BA74(v6, @"visionOS", 0x14u) || sub_10006BA74(v6, v9, 0x14u);
      v11 = sub_100001A30(0);
      v4 = v7 || v10;
      v3 = v8 || v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v28 = v7;
        v12 = v3;
        v13 = [*(&selfCopy->_helpersDispatchGroup + 1) count];
        v14 = sub_10006BB44(*(&selfCopy->_helpersDispatchGroup + 1));
        v15 = v14;
        *buf = 134218754;
        v16 = "NO";
        if (v4)
        {
          v17 = "YES";
        }

        else
        {
          v17 = "NO";
        }

        v35 = v13;
        if (v12)
        {
          v16 = "YES";
        }

        v36 = 2114;
        v37 = v14;
        v38 = 2082;
        v39 = v17;
        v40 = 2082;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "PEERS: %ld/%{public}@, advertiseHandoff=%{public}s pastboard=%{public}s", buf, 0x2Au);

        v3 = v12;
        v7 = v28;
      }

      if (v7)
      {
        v18 = v3;
      }

      else
      {
        v18 = v10;
      }

      if (v18)
      {
        goto LABEL_36;
      }

      v5 = v5 + 1;
    }

    while (v2 != v5);
    v19 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    v2 = v19;
  }

  while (v19);
LABEL_36:

  v20 = v4;
  v21 = selfCopy;
  v22 = v20;
  if (BYTE2(selfCopy->_sfAdvertisers) != v22 || BYTE3(selfCopy->_sfAdvertisers) != v3)
  {
    v23 = sub_100001A30(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = "";
      v25 = "Handoff";
      if (!v22)
      {
        v25 = "";
      }

      if (v3)
      {
        v24 = "Pasteboard";
      }

      *buf = 136446466;
      v35 = v25;
      v36 = 2082;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "PEERS: Our peers ability to received handoff or pasteboard advertisements has changed; scheduling an check for our advertisement. %{public}s/%{public}s", buf, 0x16u);
    }

    v21 = selfCopy;
    BYTE2(selfCopy->_sfAdvertisers) = v22;
    BYTE3(selfCopy->_sfAdvertisers) = v3;
    [(UASharingAdvertiser *)selfCopy scheduleAdvertisementUpdate:0.1];
  }

  objc_sync_exit(v21);
}

- (NSSet)pairedDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (BYTE1(selfCopy->_sfAdvertisers) == 1)
  {
    [(UASharingAdvertiser *)selfCopy _refreshPairedSFPeerDevices];
  }

  v3 = [*(&selfCopy->_helpersDispatchGroup + 1) copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setPairedDevices:(id)devices
{
  devicesCopy = devices;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [devicesCopy count];
    v7 = sub_10006BB44(devicesCopy);
    *buf = 134218243;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting pairedDevices=%ld/%{private}@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  BYTE1(selfCopy->_sfAdvertisers) = 0;
  if (!devicesCopy || ([devicesCopy isEqual:*(&selfCopy->_helpersDispatchGroup + 1)] & 1) == 0)
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PAIRED_DEVICES:Changed, now have %ld devices paired.", [devicesCopy count]);
    [ActivityManagerDebuggingManager appendRecentAction:v9];

    if (devicesCopy)
    {
      v10 = [devicesCopy copy];
    }

    else
    {
      v10 = +[NSSet set];
    }

    v11 = v10;
    objc_storeStrong((&selfCopy->_helpersDispatchGroup + 1), v10);

    [(UASharingAdvertiser *)selfCopy _updatePairedDeviceCapabilities];
  }

  objc_sync_exit(selfCopy);
}

- (id)dataForMoreAppSuggestions
{
  manager = [(UACornerActionManagerHandler *)self manager];
  advertiseableItems = [manager advertiseableItems];
  allObjects = [advertiseableItems allObjects];

  v6 = +[NSMutableData data];
  if ([(UASharingAdvertiser *)self userIsCurrent])
  {
    beginTimeForNonActiveAdvertisement = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
    if (beginTimeForNonActiveAdvertisement)
    {
    }

    else
    {
      currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];

      if (currentAdvertisedItem)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v34 = allObjects;
        v35 = [v34 countByEnumeratingWithState:&v48 objects:v59 count:16];
        if (v35)
        {
          v36 = *v49;
          while (2)
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v49 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v48 + 1) + 8 * i);
              currentAdvertisedItem2 = [(UASharingAdvertiser *)self currentAdvertisedItem];
              v40 = [currentAdvertisedItem2 isEqual:v38];

              if (v40)
              {
                v41 = +[NSDate date];
                [v38 setWhen:v41];

                goto LABEL_4;
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_4:
  v42 = [allObjects sortedArrayUsingComparator:&stru_1000C6090];

  v8 = +[NSDate date];
  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dataForMoreAppSuggestions:", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v42;
  v10 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v10)
  {
    v11 = *v45;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * j);
        if ([(UASharingAdvertiser *)self userIsCurrent])
        {
          beginTimeForNonActiveAdvertisement2 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
          if (beginTimeForNonActiveAdvertisement2)
          {
          }

          else
          {
            currentAdvertisedItem3 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            v16 = [currentAdvertisedItem3 isEqual:v13];

            if (v16)
            {
              v17 = 1;
              goto LABEL_20;
            }
          }
        }

        when = [v13 when];
        [v8 timeIntervalSinceDate:when];
        v20 = v19 > 600.0;

        if (v20)
        {
          v21 = sub_100001A30(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier = [v13 bundleIdentifier];
            when2 = [v13 when];
            *buf = 138412802;
            v53 = bundleIdentifier;
            v54 = 2112;
            v55 = when2;
            v56 = 2048;
            v57 = 10;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "skipping %@ because its .when (%@) is older than %lum:", buf, 0x20u);
          }

          goto LABEL_25;
        }

        v17 = 0;
LABEL_20:
        v24 = [SharingBTLEAdvertisementPayload alloc];
        when3 = [v13 when];
        v21 = [(SharingBTLEAdvertisementPayload *)v24 initWithItem:v13 isCurrent:v17 when:when3 versionFlags:5];

        v26 = sub_100001A30(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [v13 bundleIdentifier];
          when4 = [v13 when];
          *buf = 138412546;
          v53 = bundleIdentifier2;
          v54 = 2112;
          v55 = when4;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }

        if (![v6 length])
        {
          advertisementPayload = [v21 advertisementPayload];
          v30 = [advertisementPayload length];

          buf[0] = v30;
          [v6 appendBytes:buf length:1];
        }

        advertisementPayload2 = [v21 advertisementPayload];
        [v6 appendData:advertisementPayload2];

LABEL_25:
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)activityAdvertiser:(id)advertiser activityPayloadForAdvertisementPayload:(id)payload command:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler
{
  advertiserCopy = advertiser;
  payloadCopy = payload;
  commandCopy = command;
  deviceCopy = device;
  handlerCopy = handler;
  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    name = [deviceCopy name];
    *buf = 138543875;
    v72 = payloadCopy;
    v73 = 2114;
    v74 = commandCopy;
    v75 = 2113;
    v76 = name;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Sharing Advertiser] Payload request for ad: %{public}@, command: %{public}@, from: %{private}@", buf, 0x20u);
  }

  v66 = [NSData dataWithBytes:"pbpaste!" length:8];
  if (!commandCopy)
  {
    if ([v66 isEqual:payloadCopy])
    {
      commandCopy = @"pbpaste";
    }

    else
    {
      commandCopy = 0;
    }
  }

  v18 = [NSData dataWithBytes:"pbtypes!" length:8];
  v19 = v18;
  if (!commandCopy)
  {
    if ([v18 isEqual:payloadCopy])
    {
      commandCopy = @"pbtypes";
    }

    else
    {
      commandCopy = 0;
    }
  }

  v20 = sub_100006EF4(payloadCopy);
  uniqueID = [deviceCopy uniqueID];
  v22 = uniqueID;
  v23 = @"-";
  if (commandCopy)
  {
    v23 = commandCopy;
  }

  v24 = [NSString stringWithFormat:@"PAYLOAD_REQUESTED:%@, %@ from %@", v20, v23, uniqueID];
  [ActivityManagerDebuggingManager appendRecentAction:v24];

  if (commandCopy && ![(__CFString *)commandCopy isEqual:@"HANDOFF"])
  {
    if ([(__CFString *)commandCopy isEqualToString:@"handoff-more_items"])
    {
      v25 = sub_100001A30(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "activityPayloadForAdvertisementPayload: got handoff-more_items command", buf, 2u);
      }

      dataForMoreAppSuggestions = [(UASharingAdvertiser *)self dataForMoreAppSuggestions];
      v27 = sub_100001A30(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [dataForMoreAppSuggestions description];
        v29 = [dataForMoreAppSuggestions length];
        *buf = 138412546;
        v72 = v28;
        v73 = 2048;
        v74 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "payload: %@ (%lu bytes long)", buf, 0x16u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, dataForMoreAppSuggestions, 0);
      [(UASharingAdvertiser *)self setShouldAdvertiseAutoPullActivityList:0];
      goto LABEL_44;
    }

    if ([(__CFString *)commandCopy isEqualToString:@"pbpaste"])
    {
      v30 = +[UAUserActivityDefaults sharedDefaults];
      clipboardSharingEnabled = [v30 clipboardSharingEnabled];

      if (clipboardSharingEnabled)
      {
        manager = [(UACornerActionManagerHandler *)self manager];
        pasteboardController = [manager pasteboardController];
        v34 = pasteboardController == 0;

        if (v34)
        {
          goto LABEL_45;
        }

        v35 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID2 = [deviceCopy uniqueID];
          name2 = [deviceCopy name];
          *buf = 138543619;
          v72 = uniqueID2;
          v73 = 2113;
          v74 = name2;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[PBOARD] Paste Requested from remote %{public}@/%{private}@", buf, 0x16u);
        }

        manager2 = [(UACornerActionManagerHandler *)self manager];
        pasteboardController2 = [manager2 pasteboardController];
        uuid = [pasteboardController2 uuid];

        manager3 = [(UACornerActionManagerHandler *)self manager];
        pasteboardController3 = [manager3 pasteboardController];
        v42 = v70;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_10006D448;
        v70[3] = &unk_1000C60B8;
        v70[5] = handlerCopy;
        dataForMoreAppSuggestions = uuid;
        v70[4] = dataForMoreAppSuggestions;
        [pasteboardController3 startServiceForPasteVersion:1 handler:v70];
        goto LABEL_40;
      }

LABEL_43:
      dataForMoreAppSuggestions = [NSError errorWithDomain:UAContinuityErrorDomain code:-105 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, dataForMoreAppSuggestions);
      goto LABEL_44;
    }

    if ([(__CFString *)commandCopy isEqualToString:@"pbpaste2"])
    {
      v43 = +[UAUserActivityDefaults sharedDefaults];
      clipboardSharingEnabled2 = [v43 clipboardSharingEnabled];

      if (!clipboardSharingEnabled2)
      {
        goto LABEL_43;
      }

      manager4 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController4 = [manager4 pasteboardController];
      v47 = pasteboardController4 == 0;

      if (v47)
      {
        goto LABEL_45;
      }

      v48 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [deviceCopy uniqueID];
        name3 = [deviceCopy name];
        *buf = 138543619;
        v72 = uniqueID3;
        v73 = 2113;
        v74 = name3;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[PBOARD] Paste V2 Requested from remote %{public}@/%{private}@", buf, 0x16u);
      }

      manager5 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController5 = [manager5 pasteboardController];
      uuid2 = [pasteboardController5 uuid];

      manager3 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController3 = [manager3 pasteboardController];
      v42 = v69;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10006D464;
      v69[3] = &unk_1000C60B8;
      v69[5] = handlerCopy;
      dataForMoreAppSuggestions = uuid2;
      v69[4] = dataForMoreAppSuggestions;
      [pasteboardController3 startServiceForPasteVersion:2 handler:v69];
    }

    else
    {
      if (![(__CFString *)commandCopy isEqualToString:@"pbtypes"])
      {
        dataForMoreAppSuggestions = [NSError errorWithDomain:UAContinuityErrorDomain code:-115 userInfo:0];
        (*(handlerCopy + 2))(handlerCopy, 0, 0, dataForMoreAppSuggestions);
        goto LABEL_44;
      }

      v53 = +[UAUserActivityDefaults sharedDefaults];
      clipboardSharingEnabled3 = [v53 clipboardSharingEnabled];

      if (!clipboardSharingEnabled3)
      {
        goto LABEL_43;
      }

      manager6 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController6 = [manager6 pasteboardController];
      v57 = pasteboardController6 == 0;

      if (v57)
      {
        goto LABEL_45;
      }

      v58 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID4 = [deviceCopy uniqueID];
        name4 = [deviceCopy name];
        *buf = 138543619;
        v72 = uniqueID4;
        v73 = 2113;
        v74 = name4;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[PBOARD] Types Requested from remote %{public}@/%{private}@", buf, 0x16u);
      }

      manager7 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController7 = [manager7 pasteboardController];
      uuid3 = [pasteboardController7 uuid];

      manager3 = [(UACornerActionManagerHandler *)self manager];
      pasteboardController3 = [manager3 pasteboardController];
      v42 = v68;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10006D480;
      v68[3] = &unk_1000C60B8;
      v68[5] = handlerCopy;
      dataForMoreAppSuggestions = uuid3;
      v68[4] = dataForMoreAppSuggestions;
      [pasteboardController3 getLocalPasteboardInfoData:v68];
    }

LABEL_40:

LABEL_44:
    goto LABEL_45;
  }

  [(UASharingAdvertiser *)self activityAdvertiser:advertiserCopy activityPayloadForAdvertisementPayload:payloadCopy handoffCommand:commandCopy requestedByDevice:deviceCopy withCompletionHandler:handlerCopy];
LABEL_45:
}

- (void)activityAdvertiser:(id)advertiser activityPayloadForAdvertisementPayload:(id)payload handoffCommand:(id)command requestedByDevice:(id)device withCompletionHandler:(id)handler
{
  advertiserCopy = advertiser;
  payloadCopy = payload;
  commandCopy = command;
  deviceCopy = device;
  handlerCopy = handler;
  v12 = sub_100001A30(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (commandCopy)
    {
      v13 = commandCopy;
    }

    else
    {
      v13 = @"-";
    }

    name = [deviceCopy name];
    [deviceCopy productVersion];
    v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    productBuildVersion = [deviceCopy productBuildVersion];
    *buf = 138544387;
    v194 = payloadCopy;
    v195 = 2114;
    v196 = v13;
    v197 = 2113;
    v198 = name;
    v199 = 2114;
    v200 = v15;
    v201 = 2114;
    v202 = productBuildVersion;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Advertising: advertiserData=%{public}@ command=%{public}@ peer=%{private}@ %{public}@/%{public}@", buf, 0x34u);
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  activityAdvertisingAllowed = [manager activityAdvertisingAllowed];

  if (activityAdvertisingAllowed)
  {
    v19 = sub_1000620EC();
    v20 = [[SharingBTLEAdvertisementPayload alloc] initWithAdvertisedBytes:payloadCopy];
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    manager2 = [(UACornerActionManagerHandler *)self manager];
    advertiseableItems = [manager2 advertiseableItems];
    allObjects = [advertiseableItems allObjects];

    v24 = [allObjects countByEnumeratingWithState:&v189 objects:v206 count:16];
    if (!v24)
    {
      v181 = 0;
      goto LABEL_27;
    }

    v181 = 0;
    v25 = *v190;
LABEL_9:
    v26 = 0;
    while (1)
    {
      if (*v190 != v25)
      {
        objc_enumerationMutation(allObjects);
      }

      v27 = *(*(&v189 + 1) + 8 * v26);
      if ([(SharingBTLEAdvertisementPayload *)v20 matchesItem:v27])
      {
        break;
      }

      activityType = [v27 activityType];
      v29 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

      if (v29)
      {
        v30 = v27;

        v181 = v30;
      }

      if (v24 == ++v26)
      {
        v24 = [allObjects countByEnumeratingWithState:&v189 objects:v206 count:16];
        if (v24)
        {
          goto LABEL_9;
        }

LABEL_27:

LABEL_28:
        v38 = sub_100001A30(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v194 = v20;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "-- the advertisingPayload requested %{public}@ does not match any advertiseable item", buf, 0xCu);
        }

        if (v181)
        {
          v39 = +[NSDate date];
          v40 = sub_100001A30(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            currentAdvertisedItemOtherAdvertisedItems = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
            allKeys = [currentAdvertisedItemOtherAdvertisedItems allKeys];
            *buf = 138477827;
            v194 = allKeys;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "OLDWEB: Checking against previous advertised NSUSerActivityTypeBrowsingWeb items, %{private}@", buf, 0xCu);
          }

          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          currentAdvertisedItemOtherAdvertisedItems2 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
          allKeys2 = [currentAdvertisedItemOtherAdvertisedItems2 allKeys];

          v45 = [allKeys2 countByEnumeratingWithState:&v185 objects:v205 count:16];
          if (v45)
          {
            v46 = *v186;
            while (2)
            {
              for (i = 0; i != v45; i = i + 1)
              {
                if (*v186 != v46)
                {
                  objc_enumerationMutation(allKeys2);
                }

                v48 = *(*(&v185 + 1) + 8 * i);
                currentAdvertisedItemOtherAdvertisedItems3 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
                v50 = [currentAdvertisedItemOtherAdvertisedItems3 objectForKey:v48];

                if (v50 && [v50 compare:v39] == -1 && objc_msgSend(v48, "isEqualHashedPayloadBytes:", v20))
                {
                  v54 = sub_100001A30(0);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    activityType2 = [0 activityType];
                    uuid = [0 uuid];
                    uUIDString = [uuid UUIDString];
                    v57 = sub_100006EF4(payloadCopy);
                    sub_100009AC0(v50);
                    v58 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138478595;
                    v194 = activityType2;
                    v195 = 2114;
                    v196 = uUIDString;
                    v197 = 2114;
                    v198 = v57;
                    v199 = 2114;
                    v200 = v58;
                    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "OLDWEB: the current advertised item, %{private}@/%{public}@, is a NSUserActivityTypeBrowsingWeb, and a previous advertisement %{public}@ from %{public}@ matches the requested payload.", buf, 0x2Au);
                  }

                  v33 = v181;
                  v181 = v33;
                  goto LABEL_51;
                }
              }

              v45 = [allKeys2 countByEnumeratingWithState:&v185 objects:v205 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }
        }

        v51 = _LSCreateHashedBytesForAdvertisingFromString();
        if (_LSCompareHashedBytesFromAdvertisingStrings())
        {

          v52 = sub_100001A30(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v194 = payloadCopy;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "RESPONDING: Unable to locate a userActivity for the payloadData %{public}@ so returning nil/nil and an error as the payload for the requesting device.", buf, 0xCu);
          }

          v53 = [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
          v32 = 0;
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v53);
          v51 = v181;
          v181 = v20;
        }

        else
        {
          v78 = +[UAUserActivityDefaults sharedDefaults];
          if ([v78 maximumActivityPayloadSizeInBytes] < 1)
          {
            dsema = +[NSMutableData data];
          }

          else
          {
            v79 = +[UAUserActivityDefaults sharedDefaults];
            dsema = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v79 maximumActivityPayloadSizeInBytes]);
          }

          v145 = +[UAUserActivityDefaults sharedDefaults];
          -[NSObject increaseLengthBy:](dsema, "increaseLengthBy:", [v145 debugValidateSampleResponseMinimumActivityPayloadSizeInBytes]);

          v146 = +[UAUserActivityDefaults sharedDefaults];
          debugValidateSampleResponseMaximumActivityPayloadSizeInBytes = [v146 debugValidateSampleResponseMaximumActivityPayloadSizeInBytes];
          v148 = +[UAUserActivityDefaults sharedDefaults];
          LODWORD(debugValidateSampleResponseMaximumActivityPayloadSizeInBytes) = debugValidateSampleResponseMaximumActivityPayloadSizeInBytes > [v148 debugValidateSampleResponseMinimumActivityPayloadSizeInBytes];

          if (debugValidateSampleResponseMaximumActivityPayloadSizeInBytes)
          {
            v149 = +[UAUserActivityDefaults sharedDefaults];
            debugValidateSampleResponseMaximumActivityPayloadSizeInBytes2 = [v149 debugValidateSampleResponseMaximumActivityPayloadSizeInBytes];
            v151 = +[UAUserActivityDefaults sharedDefaults];
            -[NSObject increaseLengthBy:](dsema, "increaseLengthBy:", arc4random_uniform(debugValidateSampleResponseMaximumActivityPayloadSizeInBytes2 - [v151 debugValidateSampleResponseMinimumActivityPayloadSizeInBytes]));
          }

          v152 = dsema;
          if ([dsema length])
          {
            v153 = dsema;
            v152 = dsema;
            arc4random_buf([dsema mutableBytes], [dsema length]);
          }

          v154 = [NSDictionary dictionaryWithObject:v152 forKey:@"randomdata"];
          v144 = [NSKeyedArchiver archivedDataWithRootObject:v154 requiringSecureCoding:1 error:0];

          v155 = [UserActivityToBTLEPayload alloc];
          v156 = +[NSUUID UUID];
          v157 = +[NSDate date];
          v158 = [(UserActivityToBTLEPayload *)v155 init:v156 title:@"Sample" date:v157 userInfoPayload:v144 teamID:@"NO-TEAM-ID" activityType:@"com.apple.fetchsamplepayloadactivity"];

          encodeAsData = [v158 encodeAsData];
          v160 = sub_100001A30(0);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            v161 = [encodeAsData length];
            uniqueID = [deviceCopy uniqueID];
            *buf = 134218243;
            v194 = v161;
            v195 = 2113;
            v196 = uniqueID;
            _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "SAMPLEPAYLOAD: Sending %ld bytes to device %{private}@", buf, 0x16u);
          }

          uniqueIdentifier = [v158 uniqueIdentifier];
          (*(handlerCopy + 2))(handlerCopy, uniqueIdentifier, encodeAsData, 0);

          v32 = v20;
LABEL_114:

          v53 = dsema;
        }

LABEL_116:
        goto LABEL_117;
      }
    }

    v33 = v27;
    v34 = sub_100001A30(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      activityType3 = [(SharingBTLEAdvertisementPayload *)v33 activityType];
      uuid2 = [(SharingBTLEAdvertisementPayload *)v33 uuid];
      uUIDString2 = [uuid2 UUIDString];
      *buf = 138478339;
      v194 = activityType3;
      v195 = 2114;
      v196 = uUIDString2;
      v197 = 2114;
      v198 = v20;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "-- advertiseable item %{private}@/%{public}@ matches the advertisingPayload requested %{public}@, so using it.", buf, 0x20u);
    }

    if (!v33)
    {
      goto LABEL_28;
    }

LABEL_51:
    v171 = dispatch_semaphore_create(0);
    v59 = sub_100001A30(@"signposts");
    v60 = v59;
    if (v33 != -1 && os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, v33, "handoffFetch", "", buf, 2u);
    }

    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_10006F3A4;
    v182[3] = &unk_1000C60E0;
    v32 = v33;
    v183 = v32;
    dsema = v171;
    v184 = dsema;
    if ([(SharingBTLEAdvertisementPayload *)v32 requestPayloadWithCompletionHandler:v182])
    {
      v61 = +[UAUserActivityDefaults sharedDefaults];
      [v61 maximumTimeoutToWaitForClientProcessToUpdateActivityInformation];
      v63 = dispatch_time(0, (v62 * 1000000000.0));
      v64 = COERCE_DOUBLE(dispatch_semaphore_wait(dsema, v63));

      if (v64 != 0.0)
      {
        v65 = sub_100001A30(0);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = sub_100006EF4(payloadCopy);
          activityType4 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
          uuid3 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          uUIDString3 = [uuid3 UUIDString];
          *buf = 138544131;
          v194 = v66;
          v195 = 2113;
          v196 = activityType4;
          v197 = 2114;
          v198 = uUIDString3;
          v199 = 2048;
          v200 = v64;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failure updating userActivity information from client application for activity %{public}@/%{private}@  %{public}@, using (possibly stale) payload instead, status=%ld.", buf, 0x2Au);
        }

        v70 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityUserInfoPayload];
        if (v70 || ([(SharingBTLEAdvertisementPayload *)v32 webpageURL], (v70 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v164 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityStreamsPayload];
          v165 = v164 == 0;

          if (v165)
          {

            v166 = sub_100001A30(0);
            if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
            {
              v167 = sub_100006EF4(payloadCopy);
              activityType5 = [0 activityType];
              uuid4 = [0 uuid];
              uUIDString4 = [uuid4 UUIDString];
              *buf = 138543875;
              v194 = v167;
              v195 = 2113;
              v196 = activityType5;
              v197 = 2114;
              v198 = uUIDString4;
              _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "Failure after updating userActivity information from client application for activity %{public}@/%{private}@ %{public}@; the activity disappeared/is no longer current and so cannot be handedOff.", buf, 0x20u);
            }

            [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
            v172 = v32 = 0;
            (*(handlerCopy + 2))(handlerCopy, 0, 0);
            goto LABEL_105;
          }
        }
      }
    }

    v172 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityUserInfoPayload];
    v71 = +[UAUserActivityDefaults sharedDefaults];
    debugForceNewPayloadEncoder = [v71 debugForceNewPayloadEncoder];

    if (debugForceNewPayloadEncoder)
    {
      v73 = sub_100001A30(0);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        name2 = [deviceCopy name];
        productVersion = [deviceCopy productVersion];
        productBuildVersion2 = [deviceCopy productBuildVersion];
        *buf = 138478339;
        v194 = name2;
        v195 = 2114;
        v196 = productVersion;
        v197 = 2114;
        v198 = productBuildVersion2;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "-- Forcing new payload encoder to peer %{private}@/%{public}@ %{public}@ because debugForceNewPayloadEncoder == YES", buf, 0x20u);
      }
    }

    else
    {
      v77 = +[UAUserActivityDefaults sharedDefaults];
      if ([v77 debugForceOldPayloadEncoder])
      {
      }

      else
      {
        v80 = [(UASharingAdvertiser *)self peerDeviceCanAcceptNewerPayload:deviceCopy];

        if (v80)
        {
          goto LABEL_73;
        }
      }

      v81 = [UAUserActivityInfo encodedInfoToOldEncodedInfo:v172];
      v82 = sub_100001A30(0);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        name3 = [deviceCopy name];
        productName = [deviceCopy productName];
        productBuildVersion3 = [deviceCopy productBuildVersion];
        v86 = COERCE_DOUBLE([v81 length]);
        v87 = [v172 length];
        *buf = 138478851;
        v194 = name3;
        v195 = 2114;
        v196 = productName;
        v197 = 2114;
        v198 = productBuildVersion3;
        v199 = 2048;
        v200 = v86;
        v201 = 2048;
        v202 = v87;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "-- Falling back to 'old' format of payload to support pre Blacktail era device, %{private}@/%{public}@ %{public}@ (size=%ld vs %ld)", buf, 0x34u);
      }

      v73 = v172;
      v172 = v81;
    }

LABEL_73:
    encodedUserInfoError = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
    v89 = encodedUserInfoError == 0;

    if (v89)
    {
      v96 = [UserActivityToBTLEPayload alloc];
      uuid5 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
      v98 = +[UAUserActivityDefaults sharedDefaults];
      dontSendActivityTitle = [v98 dontSendActivityTitle];
      if (dontSendActivityTitle)
      {
        title = &stru_1000C67D0;
      }

      else
      {
        title = [(SharingBTLEAdvertisementPayload *)v32 title];
      }

      teamIdentifier = [(SharingBTLEAdvertisementPayload *)v32 teamIdentifier];
      activityType6 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
      v176 = [(UserActivityToBTLEPayload *)v96 init:uuid5 title:title date:0 userInfoPayload:v172 teamID:teamIdentifier activityType:activityType6];

      if ((dontSendActivityTitle & 1) == 0)
      {
      }

      webpageURL = [(SharingBTLEAdvertisementPayload *)v32 webpageURL];
      [(UserActivityToBTLEPayload *)v176 setWebpageURL:webpageURL];

      persistentIdentifier = [(SharingBTLEAdvertisementPayload *)v32 persistentIdentifier];
      LOBYTE(webpageURL) = persistentIdentifier == 0;

      if ((webpageURL & 1) == 0)
      {
        persistentIdentifier2 = [(SharingBTLEAdvertisementPayload *)v32 persistentIdentifier];
        [(UserActivityToBTLEPayload *)v176 addAdditionalItem:persistentIdentifier2 forKey:@"persistentID"];
      }

      targetContentIdentifier = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
      v107 = targetContentIdentifier == 0;

      if (!v107)
      {
        v108 = sub_100001A30(0);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
        {
          targetContentIdentifier2 = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
          *buf = 138739971;
          v194 = targetContentIdentifier2;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "- Adding targetContentIdentifie=%{sensitive}@ to additionalItems payload", buf, 0xCu);
        }

        targetContentIdentifier3 = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
        [(UserActivityToBTLEPayload *)v176 addAdditionalItem:targetContentIdentifier3 forKey:@"targetContentID"];
      }

      encodedUserInfoError3 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityStreamsPayload];
      [(UserActivityToBTLEPayload *)v176 setStreamsData:encodedUserInfoError3];
    }

    else
    {
      v90 = sub_100001A30(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        uUIDString5 = [uuid6 UUIDString];
        encodedUserInfoError2 = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
        *buf = 138543618;
        v194 = uUIDString5;
        v195 = 2114;
        v196 = encodedUserInfoError2;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "-- ENCODING error from client instead of payload, %{public}@ / %{public}@", buf, 0x16u);
      }

      v94 = [UserActivityToBTLEPayload alloc];
      encodedUserInfoError3 = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
      v176 = [(UserActivityToBTLEPayload *)v94 initWithNSError:encodedUserInfoError3];
    }

    encodeAsData2 = [(UserActivityToBTLEPayload *)v176 encodeAsData];
    if (!encodeAsData2)
    {
      goto LABEL_102;
    }

    v112 = +[UAUserActivityDefaults sharedDefaults];
    if ([v112 maximumActivityPayloadSizeInBytes] <= 0)
    {
    }

    else
    {
      v113 = [encodeAsData2 length];
      v114 = +[UAUserActivityDefaults sharedDefaults];
      LODWORD(v113) = v113 > [v114 maximumActivityPayloadSizeInBytes];

      if (v113)
      {
        v115 = sub_100001A30(0);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          uuid7 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          uUIDString6 = [uuid7 UUIDString];
          logString = [(SharingBTLEAdvertisementPayload *)v32 logString];
          v119 = [encodeAsData2 length];
          v120 = +[UAUserActivityDefaults sharedDefaults];
          v121 = COERCE_DOUBLE([v120 maximumActivityPayloadSizeInBytes]);
          *buf = 138544131;
          v194 = uUIDString6;
          v195 = 2113;
          v196 = logString;
          v197 = 2048;
          v198 = v119;
          v199 = 2048;
          v200 = v121;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "** The payload for user activity item %{public}@/%{private}@ was %ld bytes, larger than the maximum %ld, and so this user activity cannot be sent to the requesting device.", buf, 0x2Au);
        }

        v122 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [encodeAsData2 length]);
        v123 = [NSDictionary dictionaryWithObjectsAndKeys:v122, @"EncodedPayloadSize", 0];
        v124 = [NSError errorWithDomain:UAContinuityErrorDomain code:-110 userInfo:v123];

        v125 = [[UserActivityToBTLEPayload alloc] initWithNSError:v124];
        encodeAsData3 = [(UserActivityToBTLEPayload *)v125 encodeAsData];

        encodeAsData2 = encodeAsData3;
        goto LABEL_101;
      }
    }

    v124 = +[UAUserActivityDefaults sharedDefaults];
    if ([v124 activityPayloadWarningSizeInBytes])
    {
      v127 = +[UAUserActivityDefaults sharedDefaults];
      activityPayloadWarningSizeInBytes = [v127 activityPayloadWarningSizeInBytes];
      LODWORD(activityPayloadWarningSizeInBytes) = activityPayloadWarningSizeInBytes < [encodeAsData2 length];

      if (!activityPayloadWarningSizeInBytes)
      {
LABEL_102:
        v135 = sub_100001A30(0);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v136 = sub_100006EF4(payloadCopy);
          uuid8 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          uUIDString7 = [uuid8 UUIDString];
          activityType7 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
          v140 = sub_1000620EC();
          v141 = [encodeAsData2 length];
          v142 = sub_1000021AC(encodeAsData2, 0x28uLL);
          *buf = 138544643;
          v194 = v136;
          v195 = 2114;
          v196 = uUIDString7;
          v197 = 2114;
          v198 = activityType7;
          v199 = 2048;
          v200 = v140 - v19;
          v201 = 2048;
          v202 = v141;
          v203 = 2113;
          v204 = v142;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "PAYLOAD:Responding to SFAdvertiser with data for advertisement %{public}@ activity %{public}@ type=%{public}@, fetchTime=%g data=%ld/%{private}@", buf, 0x3Eu);
        }

        uuid9 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        (*(handlerCopy + 2))(handlerCopy, uuid9, encodeAsData2, 0);

LABEL_105:
        v144 = v183;
        v51 = v181;
        v181 = v20;
        goto LABEL_114;
      }

      v124 = sub_100001A30(0);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        uuid10 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        uUIDString8 = [uuid10 UUIDString];
        logString2 = [(SharingBTLEAdvertisementPayload *)v32 logString];
        v132 = [encodeAsData2 length];
        v133 = +[UAUserActivityDefaults sharedDefaults];
        v134 = COERCE_DOUBLE([v133 activityPayloadWarningSizeInBytes]);
        *buf = 138544131;
        v194 = uUIDString8;
        v195 = 2113;
        v196 = logString2;
        v197 = 2048;
        v198 = v132;
        v199 = 2048;
        v200 = v134;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "*** The payload for the user activity item %{public}@/%{private}@ is %ld bytes, larger than the recommended maximum %ld, which may cause slow transfers.", buf, 0x2Au);
      }
    }

    v125 = v176;
LABEL_101:

    v176 = v125;
    goto LABEL_102;
  }

  v31 = sub_100001A30(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failing request because self.activityAdvertisingAllowed == NO", buf, 2u);
  }

  if (handlerCopy)
  {
    v32 = [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v32);
    goto LABEL_116;
  }

LABEL_117:
}

- (void)activityAdvertiser:(id)advertiser didSendPayloadForActivityIdentifier:(id)identifier toDevice:(id)device error:(id)error
{
  identifierCopy = identifier;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [identifierCopy UUIDString];
    *buf = 138543362;
    v25 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User activity %{public}@ was resumed on another device, so inform (if desired) the author of the activity on this device", buf, 0xCu);
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  activityAdvertisingAllowed = [manager activityAdvertisingAllowed];

  if ((activityAdvertisingAllowed & 1) == 0)
  {
    advertisingItems = sub_100001A30(0);
    if (os_log_type_enabled(advertisingItems, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, advertisingItems, OS_LOG_TYPE_DEFAULT, "Failing because self.activityAdvertisingAllowed == NO, ignoring notification.", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (identifierCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    advertisingItems = [(UASharingAdvertiser *)self advertisingItems];
    v13 = [advertisingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(advertisingItems);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          uuid = [v16 uuid];
          v18 = [uuid isEqual:identifierCopy];

          if (v18)
          {
            [v16 wasResumedOnAnotherDeviceWithCompletionHandler:&stru_1000C6100];
            goto LABEL_17;
          }
        }

        v13 = [advertisingItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)activityAdvertiser:(id)advertiser pairedDevicesChangedNotification:(id)notification
{
  notificationCopy = notification;
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [notificationCopy count];
    v8 = sub_10006BB44(notificationCopy);
    *buf = 134218243;
    v14 = v7;
    v15 = 2113;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PAIRED DEVICES CHANGED: Now is %ld/%{private}@", buf, 0x16u);
  }

  dispatchQ = [(UASharingAdvertiser *)self dispatchQ];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006F9DC;
  v11[3] = &unk_1000C4DA0;
  v11[4] = self;
  v12 = notificationCopy;
  v10 = notificationCopy;
  dispatch_async(dispatchQ, v11);
}

- (BOOL)scheduleAdvertisementUpdate:(double)update
{
  nextScheduleUpdate = [(UASharingAdvertiser *)self nextScheduleUpdate];
  v5 = [nextScheduleUpdate scheduleNext:update];

  return v5;
}

- (BOOL)okToSuspendAdvertising
{
  v8.receiver = self;
  v8.super_class = UASharingAdvertiser;
  okToSuspendAdvertising = [(UAAdvertiser *)&v8 okToSuspendAdvertising];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAdvertisedItem = [(UASharingAdvertiser *)selfCopy currentAdvertisedItem];
  eligibleToAlwaysAdvertise = [currentAdvertisedItem eligibleToAlwaysAdvertise];

  objc_sync_exit(selfCopy);
  return (eligibleToAlwaysAdvertise ^ 1) & okToSuspendAdvertising;
}

- (BOOL)suspend
{
  v7.receiver = self;
  v7.super_class = UASharingAdvertiser;
  suspend = [(UACornerActionManagerHandler *)&v7 suspend];
  if (suspend)
  {
    [(UASharingAdvertiser *)self setUserIsCurrent:0];
    [(UASharingAdvertiser *)self removeAdvertisement];
    nextScheduleUpdate = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [nextScheduleUpdate suspend];

    periodicUpdate = [(UASharingAdvertiser *)self periodicUpdate];
    [periodicUpdate suspend];
  }

  return suspend;
}

- (BOOL)resume
{
  v10.receiver = self;
  v10.super_class = UASharingAdvertiser;
  resume = [(UACornerActionManagerHandler *)&v10 resume];
  if (resume)
  {
    [(UASharingAdvertiser *)self advertisePayload:0 force:0];
    BYTE1(self->_sfAdvertisers) = 1;
    nextScheduleUpdate = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [nextScheduleUpdate reset];

    nextScheduleUpdate2 = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [nextScheduleUpdate2 resume];

    [(UASharingAdvertiser *)self scheduleAdvertisementUpdate];
    periodicUpdate = [(UASharingAdvertiser *)self periodicUpdate];
    [periodicUpdate resume];

    periodicUpdate2 = [(UASharingAdvertiser *)self periodicUpdate];
    [periodicUpdate2 reset];

    periodicUpdate3 = [(UASharingAdvertiser *)self periodicUpdate];
    [periodicUpdate3 scheduleNext:0.1];
  }

  return resume;
}

- (BOOL)userIsCurrent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = BYTE4(selfCopy->_sfAdvertisers);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setUserIsCurrent:(BOOL)current
{
  currentCopy = current;
  obj = self;
  objc_sync_enter(obj);
  if (BYTE4(obj->_sfAdvertisers) != currentCopy)
  {
    BYTE4(obj->_sfAdvertisers) = currentCopy;
    currentAdvertisementPayload = [(UASharingAdvertiser *)obj currentAdvertisementPayload];

    if (currentAdvertisementPayload || currentCopy)
    {
      [(UASharingAdvertiser *)obj scheduleAdvertisementUpdate];
    }
  }

  objc_sync_exit(obj);
}

- (void)scheduleIOPowerManagerUserIdleNotifications
{
  userIsCurrentIdleTracker = [(UASharingAdvertiser *)self userIsCurrentIdleTracker];
  [userIsCurrentIdleTracker setEnabled:1];
}

- (BOOL)pasteboardAvailible
{
  v3 = +[UAUserActivityDefaults sharedDefaults];
  LODWORD(v4) = [v3 clipboardSharingEnabled];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    advertisableItems = [(UASharingAdvertiser *)self advertisableItems];
    v4 = [advertisableItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(advertisableItems);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            pasteboardTypes = [v8 pasteboardTypes];
            LOBYTE(v4) = [pasteboardTypes count] != 0;

            goto LABEL_12;
          }
        }

        v4 = [advertisableItems countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v4;
}

- (BOOL)pasteboardBitValue
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  advertisableItems = [(UASharingAdvertiser *)self advertisableItems];
  v4 = [advertisableItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(advertisableItems);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          generation = [v7 generation];
          if (generation != [(UASharingAdvertiser *)self lastAdvertisedGeneration])
          {
            [(UASharingAdvertiser *)self setLastAdvertisedGeneration:generation];
            [(UASharingAdvertiser *)self setPboardBitToAdvertise:[(UASharingAdvertiser *)self pboardBitToAdvertise]^ 1];
          }

          goto LABEL_12;
        }
      }

      v4 = [advertisableItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return [(UASharingAdvertiser *)self pboardBitToAdvertise];
}

- (id)statusString
{
  v59 = [NSMutableString stringWithFormat:@"Sharing.framework Advertiser:"];
  sfActivityAdvertiser = [(UASharingAdvertiser *)self sfActivityAdvertiser];

  if (!sfActivityAdvertiser)
  {
    [v59 appendString:@"(No SFActivityAdvertiser) "];
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  isBluetoothEnabled = [manager isBluetoothEnabled];

  if ((isBluetoothEnabled & 1) == 0)
  {
    v9 = +[UAUserActivityDefaults sharedDefaults];
    shouldIgnoreBluetoothDisabled = [v9 shouldIgnoreBluetoothDisabled];

    if (shouldIgnoreBluetoothDisabled)
    {
      v8 = @" ** Bluetooth is disabled but IgnoreBluetoothDisabled is set, so the activity will be advertised. **";
    }

    else
    {
      v8 = @" ** Bluetooth is disabled so no activity will be advertised. **";
    }

    goto LABEL_9;
  }

  manager2 = [(UACornerActionManagerHandler *)self manager];
  isBatterySaverModeEnabled = [manager2 isBatterySaverModeEnabled];

  if (isBatterySaverModeEnabled)
  {
    v8 = @" ** LowPowerMode is enabled so no activity will be advertised. **";
LABEL_9:
    [v59 appendString:v8];
    goto LABEL_10;
  }

  manager3 = [(UACornerActionManagerHandler *)self manager];
  activityAdvertisingAllowed = [manager3 activityAdvertisingAllowed];

  if ((activityAdvertisingAllowed & 1) == 0)
  {
    v8 = @" ** Activity advertising is disabled on this device. **";
    goto LABEL_9;
  }

  if ([(UACornerActionManagerHandler *)self suspended])
  {
    v8 = @"** SUSPENDED:";
    goto LABEL_9;
  }

LABEL_10:
  sfActivityAdvertisers = [(UASharingAdvertiser *)self sfActivityAdvertisers];
  v12 = [sfActivityAdvertisers count];

  if (v12 != 1)
  {
    sfActivityAdvertisers2 = [(UASharingAdvertiser *)self sfActivityAdvertisers];
    [v59 appendFormat:@"%ld sfActivityAdvertisers", objc_msgSend(sfActivityAdvertisers2, "count")];
  }

  nextScheduleUpdate = [(UASharingAdvertiser *)self nextScheduleUpdate];
  runCount = [nextScheduleUpdate runCount];
  nextScheduleUpdate2 = [(UASharingAdvertiser *)self nextScheduleUpdate];
  v57 = sub_100061EA4([nextScheduleUpdate2 nextTime]);
  periodicUpdate = [(UASharingAdvertiser *)self periodicUpdate];
  runCount2 = [periodicUpdate runCount];
  periodicUpdate2 = [(UASharingAdvertiser *)self periodicUpdate];
  v17 = sub_100061EA4([periodicUpdate2 nextTime]);
  if ([(UASharingAdvertiser *)self userIsCurrent])
  {
    v18 = @"(current) ";
  }

  else
  {
    v18 = &stru_1000C67D0;
  }

  userIsCurrent = [(UASharingAdvertiser *)self userIsCurrent];
  v20 = &stru_1000C67D0;
  if (userIsCurrent)
  {
    v21 = 0;
  }

  else
  {
    lastUserActiveTime = [(UASharingAdvertiser *)self lastUserActiveTime];
    if (lastUserActiveTime)
    {
      lastUserActiveTime2 = [(UASharingAdvertiser *)self lastUserActiveTime];
      v20 = sub_100009AC0(lastUserActiveTime2);
      v21 = 1;
    }

    else
    {
      v21 = 0;
      lastUserActiveTime = 0;
    }
  }

  v24 = +[UAUserActivityDefaults sharedDefaults];
  if ([v24 clipboardSharingEnabled])
  {
    pasteboardAvailible = [(UASharingAdvertiser *)self pasteboardAvailible];
    v26 = @"+ Advertising Local Pasteboard.";
    if (!pasteboardAvailible)
    {
      v26 = &stru_1000C67D0;
    }
  }

  else
  {
    v26 = @"ClipboardSharingDisabled";
  }

  [v59 appendFormat:@", run=%ld times/%@ periodic=%ld/%@ %@%@%@\n", runCount, v57, runCount2, v17, v18, v20, v26];

  if (v21)
  {
  }

  if ((userIsCurrent & 1) == 0)
  {
  }

  currentAdvertisedItem = [(UASharingAdvertiser *)self currentAdvertisedItem];
  if (currentAdvertisedItem && ([(UASharingAdvertiser *)self currentAdvertisementPayload], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    activityType = [currentAdvertisedItem activityType];
    dynamicActivityType = [currentAdvertisedItem dynamicActivityType];
    if (dynamicActivityType)
    {
      runCount = [currentAdvertisedItem dynamicActivityType];
      v58 = [NSString stringWithFormat:@":%@", runCount];
    }

    else
    {
      v58 = &stru_1000C67D0;
    }

    uuid = [currentAdvertisedItem uuid];
    uUIDString = [uuid UUIDString];
    currentAdvertisementPayload = [(UASharingAdvertiser *)self currentAdvertisementPayload];
    lastAdvertismentTime = [(UASharingAdvertiser *)self lastAdvertismentTime];
    v36 = sub_100009AC0(lastAdvertismentTime);
    [v59 appendFormat:@" ADVERTISING: %@%@ %@ /, data=%@, at %@\n", activityType, v58, uUIDString, currentAdvertisementPayload, v36];

    if (!dynamicActivityType)
    {
      goto LABEL_43;
    }
  }

  else
  {
    lastAdvertisementPayload = [(UASharingAdvertiser *)self lastAdvertisementPayload];

    if (!lastAdvertisementPayload)
    {
      [v59 appendString:@" LAST: nil\n"];
      goto LABEL_44;
    }

    activityType = [(UASharingAdvertiser *)self lastAdvertisementPayload];
    dynamicActivityType = [(UASharingAdvertiser *)self lastAdvertismentTime];
    runCount = sub_100009AC0(dynamicActivityType);
    [v59 appendFormat:@" LAST:%@, at %@\n", activityType, runCount];
  }

LABEL_43:
LABEL_44:
  sfActivityAdvertiser2 = [(UASharingAdvertiser *)self sfActivityAdvertiser];

  if (sfActivityAdvertiser2)
  {
    v38 = dispatch_group_create();
    dispatch_group_enter(v38);
    sfActivityAdvertiser3 = [(UASharingAdvertiser *)self sfActivityAdvertiser];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100070BB4;
    v64[3] = &unk_1000C6128;
    v40 = v59;
    v65 = v40;
    selfCopy = self;
    v41 = v38;
    v67 = v41;
    [sfActivityAdvertiser3 fetchLoginIDWithCompletionHandler:v64];

    dispatch_group_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
    v42 = +[NSMutableString string];
    v43 = +[NSMutableString string];
    dispatch_group_enter(v41);
    sfActivityAdvertiser4 = [(UASharingAdvertiser *)self sfActivityAdvertiser];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100070CB0;
    v60[3] = &unk_1000C6150;
    v45 = v42;
    v61 = v45;
    v46 = v43;
    v62 = v46;
    v47 = v41;
    v63 = v47;
    [sfActivityAdvertiser4 fetchSFPeerDevicesWithCompletionHandler:v60];

    dispatch_group_wait(v47, 0xFFFFFFFFFFFFFFFFLL);
    v48 = &stru_1000C67D0;
    if (v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = &stru_1000C67D0;
    }

    if (v46)
    {
      v48 = v46;
    }

    [v40 appendFormat:@"%@%@\n", v49, v48];
  }

  v50 = [v59 copy];

  return v50;
}

@end