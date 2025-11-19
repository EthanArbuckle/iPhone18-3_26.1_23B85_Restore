@interface UASharingAdvertiser
- (BOOL)_advertisePayload:(id)a3 force:(BOOL)a4 name:(id)a5 sfAdvertiser:(id)a6;
- (BOOL)_updateAdvertisement;
- (BOOL)active;
- (BOOL)addSFActivityAdvertiser:(id)a3;
- (BOOL)advertiseItem:(id)a3 force:(BOOL)a4;
- (BOOL)advertising;
- (BOOL)okToSuspendAdvertising;
- (BOOL)pasteboardAvailible;
- (BOOL)pasteboardBitValue;
- (BOOL)peerDeviceCanAcceptNewerPayload:(id)a3;
- (BOOL)removeSFActivityAdvertiser:(id)a3;
- (BOOL)resume;
- (BOOL)scheduleAdvertisementUpdate:(double)a3;
- (BOOL)shouldAdvertiseHandoff;
- (BOOL)shouldAdvertisePasteboard;
- (BOOL)suspend;
- (BOOL)userIsCurrent;
- (NSSet)pairedDevices;
- (NSSet)sfActivityAdvertisers;
- (UASharingAdvertiser)initWithManager:(id)a3 advertiser:(id)a4;
- (id)advertisableItems;
- (id)advertisingItems;
- (id)currentAdvertisedBytes;
- (id)dataForMoreAppSuggestions;
- (id)sfActivityAdvertiser;
- (id)statusString;
- (void)_periodicIdleUpdate;
- (void)_refreshPairedSFPeerDevices;
- (void)_updatePairedDeviceCapabilities;
- (void)activityAdvertiser:(id)a3 activityPayloadForAdvertisementPayload:(id)a4 command:(id)a5 requestedByDevice:(id)a6 withCompletionHandler:(id)a7;
- (void)activityAdvertiser:(id)a3 activityPayloadForAdvertisementPayload:(id)a4 handoffCommand:(id)a5 requestedByDevice:(id)a6 withCompletionHandler:(id)a7;
- (void)activityAdvertiser:(id)a3 didSendPayloadForActivityIdentifier:(id)a4 toDevice:(id)a5 error:(id)a6;
- (void)activityAdvertiser:(id)a3 pairedDevicesChangedNotification:(id)a4;
- (void)advertisePayload:(id)a3 force:(BOOL)a4;
- (void)moveAdvertisementToNonActive;
- (void)removeAdvertisement;
- (void)removeIOPowerManagerUserIdleNotifications;
- (void)scheduleIOPowerManagerUserIdleNotifications;
- (void)setAdvertisableItems:(id)a3;
- (void)setPairedDevices:(id)a3;
- (void)setUserIsCurrent:(BOOL)a3;
- (void)updateAdvertisingPowerAssertion:(double)a3;
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

  v4 = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(v4);

  dispatch_group_enter(*&self->_shouldAdvertiseHandoff);
  [(UASharingAdvertiser *)self setChangeAdvertisementThreadSpinCount:[(UASharingAdvertiser *)self changeAdvertisementThreadSpinCount]+ 1];
  v5 = [(UACornerActionManagerHandler *)self manager];
  if ([v5 isBluetoothEnabled])
  {
  }

  else
  {
    v6 = +[UAUserActivityDefaults sharedDefaults];
    v7 = [v6 shouldIgnoreBluetoothDisabled];

    if ((v7 & 1) == 0)
    {
      v15 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      v16 = v15 == 0;

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

  v8 = [(UACornerActionManagerHandler *)self manager];
  v9 = [v8 isBatterySaverModeEnabled];

  if (v9)
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
    v11 = [(UASharingAdvertiser *)self currentAdvertisedItem];
    v12 = v11 == 0;

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
      v14 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      *buf = 138543362;
      v89 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "ADVERTISING: Removing advertisement %{public}@ because advertising is suspended", buf, 0xCu);
    }

    goto LABEL_32;
  }

  v18 = [(UACornerActionManagerHandler *)self manager];
  v19 = [v18 activityAdvertisingAllowed];

  if (v19)
  {
    v20 = [(UACornerActionManagerHandler *)self manager];
    v21 = [v20 pinnedUserActivityInfoItem];

    v22 = +[UAUserActivityDefaults sharedDefaults];
    [v22 lastActiveItemRemovalDelay];
    v24 = v23;

    v25 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
    LOBYTE(v22) = v25 == 0;

    if ((v22 & 1) == 0)
    {
      v26 = +[NSDate date];
      v27 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      [v26 timeIntervalSinceDate:v27];
      v29 = v28;

      v30 = sub_100001A30(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
        v32 = [NSNumber numberWithDouble:v24 - v29];
        *buf = 138412546;
        v89 = v31;
        v90 = 2112;
        v91 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "We have a non-active advertisement, started at: %@, %@s till removal", buf, 0x16u);
      }

      if (v29 >= v24)
      {
        v43 = sub_100001A30(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [(UASharingAdvertiser *)self currentAdvertisedItem];
          *buf = 138543362;
          v89 = v44;
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
          v34 = [(UASharingAdvertiser *)self currentAdvertisedItem];
          *buf = 138543362;
          v89 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Rescheduling update to remove advertisment (%{public}@)", buf, 0xCu);
        }

        [(UASharingAdvertiser *)self scheduleAdvertisementUpdate:v24 - v29];
      }
    }

    if (!v21)
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
        v47 = [v46 clipboardSharingEnabled];
      }

      else
      {
        v47 = 0;
      }

      v48 = [(UASharingAdvertiser *)self shouldAdvertiseHandoff];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v49 = [(UASharingAdvertiser *)self advertisableItems];
      v21 = 0;
      v50 = [v49 countByEnumeratingWithState:&v83 objects:v87 count:16];
      if (v50)
      {
        v51 = *v84;
        while (2)
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v84 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v83 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v47)
              {
                v54 = v53;

                v21 = v54;
              }
            }

            else if (((v21 == 0) & v48) == 1)
            {
              v21 = v53;
              goto LABEL_61;
            }
          }

          v50 = [v49 countByEnumeratingWithState:&v83 objects:v87 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

LABEL_61:
    }

    v55 = [(UASharingAdvertiser *)self advertisableItems];
    v56 = v55 == 0;

    if (!v56)
    {
      v57 = sub_100001A30(0);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = [(UASharingAdvertiser *)self advertisableItems];
        *buf = 138412546;
        v89 = v58;
        v90 = 2112;
        v91 = v21;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "self.advertisableItems is %@, itemToAdvertise is %@", buf, 0x16u);
      }
    }

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v65 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      v66 = v65 == 0;

      if (!v66)
      {
        [(UASharingAdvertiser *)self setBeginTimeForNonActiveAdvertisement:0];
      }
    }

    else
    {
      v59 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
      v60 = v59 == 0;

      if (!v60)
      {
        v61 = [(UACornerActionManagerHandler *)self manager];
        v62 = [(UASharingAdvertiser *)self currentAdvertisedItem];
        v63 = [v61 shouldItemBeAdvertised:v62];

        if (v63)
        {
          v64 = [(UASharingAdvertiser *)self currentAdvertisedItem];

          v21 = v64;
        }

        else
        {
          v67 = sub_100001A30(0);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            v69 = [v68 uuid];
            v70 = [v69 UUIDString];
            v71 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            v72 = [v71 activityType];
            *buf = 138543619;
            v89 = v70;
            v90 = 2113;
            v91 = v72;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: Removing current advertisement item, %{public}@/%{private}@, because its process is gone", buf, 0x16u);
          }

          [(UASharingAdvertiser *)self removeAdvertisement];
        }
      }

      if (!v21)
      {
        v77 = [(UASharingAdvertiser *)self currentAdvertisedItem];
        v78 = v77 == 0;

        if (v78)
        {
          v21 = 0;
        }

        else
        {
          v79 = +[UAUserActivityDefaults sharedDefaults];
          v80 = [v79 multiHandoffEnabled];

          v81 = sub_100001A30(0);
          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
          if (v80)
          {
            if (v82)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: No item available to advertise, so switching to advertising existing advertisement nonactively.", buf, 2u);
            }

            v21 = 0;
            [(UASharingAdvertiser *)self moveAdvertisementToNonActive];
          }

          else
          {
            if (v82)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "UPDATEADVERTISEMENT: No item available to advertise, so", buf, 2u);
            }

            v21 = 0;
            [(UASharingAdvertiser *)self removeAdvertisement];
          }
        }

        goto LABEL_80;
      }
    }

    v73 = sub_100001A30(0);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = [v21 uuid];
      v75 = [v74 UUIDString];
      *buf = 138543362;
      v89 = v75;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "UPDATEADVERTISEMENT: choose to advertise (%{public}@)", buf, 0xCu);
    }

    [(UASharingAdvertiser *)self advertiseItem:v21 force:0];
LABEL_80:

    goto LABEL_81;
  }

  v35 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  v36 = v35 == 0;

  v10 = sub_100001A30(0);
  v37 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v36)
  {
    if (v37)
    {
      v38 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      v39 = [v38 uuid];
      v40 = [v39 UUIDString];
      v41 = [(UASharingAdvertiser *)self currentAdvertisedItem];
      v42 = [v41 activityType];
      *buf = 138543619;
      v89 = v40;
      v90 = 2113;
      v91 = v42;
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
  v2 = self;
  objc_sync_enter(v2);
  if (BYTE1(v2->_sfAdvertisers) == 1)
  {
    BYTE1(v2->_sfAdvertisers) = 0;
    v3 = [(UASharingAdvertiser *)v2 dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B2A0;
    block[3] = &unk_1000C4D10;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  v4 = BYTE3(v2->_sfAdvertisers);
  objc_sync_exit(v2);

  return v4;
}

- (BOOL)shouldAdvertiseHandoff
{
  v2 = self;
  objc_sync_enter(v2);
  if (BYTE1(v2->_sfAdvertisers) == 1)
  {
    BYTE1(v2->_sfAdvertisers) = 0;
    v3 = [(UASharingAdvertiser *)v2 dispatchQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B298;
    block[3] = &unk_1000C4D10;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  v4 = BYTE2(v2->_sfAdvertisers);
  objc_sync_exit(v2);

  return v4;
}

- (id)advertisableItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [*(&v2->super._shouldAdvertiseAutoPullActivityList + 1) copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)removeAdvertisement
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UASharingAdvertiser *)self currentAdvertisementPayload];
    *buf = 138477827;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "removeAdvertisement, currentAdvertisementPayload=%{private}@", buf, 0xCu);
  }

  v5 = [(UASharingAdvertiser *)self currentAdvertisementPayload];
  v6 = [v5 advertisementPayload];
  v7 = sub_100006EF4(v6);
  v8 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  v9 = [v8 uuid];
  v10 = [v9 UUIDString];
  v11 = [(UACornerActionManagerHandler *)self suspended];
  v12 = "";
  if (v11)
  {
    v12 = " SUSPENDED";
  }

  v13 = [NSString stringWithFormat:@"ADVERTISING:- (was %@/%@)%s", v7, v10, v12];
  [ActivityManagerDebuggingManager appendRecentAction:v13];

  v14 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  [(UASharingAdvertiser *)self advertisePayload:0 force:v14 != 0];

  [(UASharingAdvertiser *)self setCurrentAdvertisedItem:0];
  [(UASharingAdvertiser *)self setCurrentAdvertisementPayload:0];
  [(UASharingAdvertiser *)self setLastAdvertismentTime:0];
  [(UASharingAdvertiser *)self setCurrentAdvertisedItemOtherAdvertisedItems:0];
  [(UASharingAdvertiser *)self removeIOPowerManagerUserIdleNotifications];
  v15 = [(UASharingAdvertiser *)self preventIdleSleepAssertion];
  LOBYTE(v14) = v15 == 0;

  if ((v14 & 1) == 0)
  {
    v16 = [(UASharingAdvertiser *)self preventIdleSleepAssertion];
    [v16 releaseAssertion];

    [(UASharingAdvertiser *)self setPreventIdleSleepAssertion:0];
  }
}

- (void)removeIOPowerManagerUserIdleNotifications
{
  v2 = [(UASharingAdvertiser *)self userIsCurrentIdleTracker];
  [v2 setEnabled:0];
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
  v3 = [v2 activityBTLESharingEnabled];

  return v3;
}

- (BOOL)advertising
{
  v2 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  v3 = v2 != 0;

  return v3;
}

- (void)_periodicIdleUpdate
{
  v3 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
  if (v3)
  {
    v4 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
    v5 = [v4 count];

    if (v5)
    {
      v6 = +[NSDate date];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
      v8 = [v7 allKeys];

      v9 = v8;
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
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
            v15 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
            v16 = [v15 objectForKey:v14];

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

              v21 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
              [v21 removeObjectForKey:v14];
            }

            else
            {
              v21 = [(UASharingAdvertiser *)self periodicUpdate];
              [v21 scheduleAt:v16];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v24 objects:v34 count:16];
        }

        while (v10);
      }
    }
  }
}

- (UASharingAdvertiser)initWithManager:(id)a3 advertiser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38.receiver = self;
  v38.super_class = UASharingAdvertiser;
  v8 = [(UAAdvertiser *)&v38 initWithManager:v6 name:@"SharingAdvertiser"];
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

    [v8 addSFActivityAdvertiser:v7];
    v15 = +[NSArray array];
    v16 = *(v8 + 49);
    *(v8 + 49) = v15;

    v17 = objc_alloc_init(NSMutableArray);
    [v8 setAdvertisementTimes:v17];

    v18 = [v8 dispatchQ];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100067FA8;
    v36[3] = &unk_1000C4D10;
    v19 = v8;
    v37 = v19;
    v20 = [UADispatchScheduler dispatchScheduler:@"sharingUpdate" frequency:v18 queue:v36 block:1.84467441e19];
    v21 = *(v19 + 105);
    *(v19 + 105) = v20;

    v22 = [v19 dispatchQ];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100067FB0;
    v34[3] = &unk_1000C4D10;
    v23 = v19;
    v35 = v23;
    v24 = [UADispatchScheduler dispatchScheduler:@"advertisingPeriodic" frequency:v22 queue:v34 block:1.84467441e19];
    v25 = *(v23 + 113);
    *(v23 + 113) = v24;

    v23[65] = 1;
    v26 = [v23 manager];
    v27 = [v26 mainDispatchQ];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100067FB8;
    v32[3] = &unk_1000C5010;
    v28 = v23;
    v33 = v28;
    v29 = [PowerManagerIdleTracker idleTracker:@"AdvertiserCurrent" queue:v27 interval:v32 block:8.0];
    v30 = *(v28 + 185);
    *(v28 + 185) = v29;

    v28[66] = 1;
    v28[67] = 1;
  }

  return v8;
}

- (id)advertisingItems
{
  v3 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  if (v3)
  {
    v4 = [(UASharingAdvertiser *)self currentAdvertisedItem];
    v5 = [NSArray arrayWithObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAdvertisableItems:(id)a3
{
  v29 = a3;
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [v29 description];
    v5 = sub_100009684(v4);
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "setAdvertisableItems:(%{public}@)", buf, 0xCu);
  }

  if (v29)
  {
    v6 = [v29 firstObject];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = +[NSMutableArray array];
      if ([(UASharingAdvertiser *)self shouldAdvertisePasteboard])
      {
        v9 = +[UAUserActivityDefaults sharedDefaults];
        v10 = [v9 clipboardSharingEnabled];
      }

      else
      {
        v10 = 0;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v29;
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
              if (v10)
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
                v21 = [v20 activityType];
                v17 = [v21 isEqual:NSUserActivityTypeBrowsingWeb];

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

      v22 = [(UASharingAdvertiser *)self advertisableItems];
      v23 = [v8 isEqual:v22];

      if (v23)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_29:
      v24 = self;
      objc_sync_enter(v24);
      v25 = [v8 count];
      if (v25)
      {
        v26 = [v8 copy];
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong((&v24->super._shouldAdvertiseAutoPullActivityList + 1), v26);
      if (v25)
      {
      }

      objc_sync_exit(v24);

      v27 = sub_100001A30(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "ADVERTISING: Scheduling an update to check the advertisement, because we've changed the list of advertised items.", buf, 2u);
      }

      [(UASharingAdvertiser *)v24 scheduleAdvertisementUpdate];
      goto LABEL_37;
    }
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = *(&v11->super._shouldAdvertiseAutoPullActivityList + 1);
  *(&v11->super._shouldAdvertiseAutoPullActivityList + 1) = 0;

  objc_sync_exit(v11);
  v13 = sub_100001A30(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "--- Scheduling an update to check the advertisement, because we've cleared the list of advertisable items.", buf, 2u);
  }

  [(UASharingAdvertiser *)v11 scheduleAdvertisementUpdate];
LABEL_38:
}

- (id)currentAdvertisedBytes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UASharingAdvertiser *)v2 currentAdvertisementPayload];

  if (v3)
  {
    v4 = [(UASharingAdvertiser *)v2 currentAdvertisementPayload];
    v5 = [v4 advertisementPayload];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (void)updateAdvertisingPowerAssertion:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UASharingAdvertiser *)v4 preventIdleSleepAssertion];

  if (v5)
  {
    v6 = [(UASharingAdvertiser *)v4 preventIdleSleepAssertion];
    [v6 updateTimeUntilAssertionRelease:a3];
  }

  else
  {
    v7 = [UATimedPowerAssertions alloc];
    v6 = [(UASharingAdvertiser *)v4 currentAdvertisedItem];
    v8 = [v6 uuid];
    v9 = [(UACornerActionManagerHandler *)v4 manager];
    v10 = [v9 mainDispatchQ];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006882C;
    v12[3] = &unk_1000C5010;
    v12[4] = v4;
    v11 = [(UATimedPowerAssertions *)v7 initWithName:@"BTLEAdvertisement" delta:v8 activityUUID:v10 queue:v12 runAtCompletion:a3];
    [(UASharingAdvertiser *)v4 setPreventIdleSleepAssertion:v11];
  }

  objc_sync_exit(v4);
}

- (void)advertisePayload:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  v7 = [(UASharingAdvertiser *)self dispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100068974;
  block[3] = &unk_1000C6048;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (BOOL)_advertisePayload:(id)a3 force:(BOOL)a4 name:(id)a5 sfAdvertiser:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(v12);

  v24[0] = SFActivityAdvertiserOptionVersionKey;
  v24[1] = SFActivityAdvertiserOptionMinorVersionKey;
  v25[0] = &off_1000CC9E8;
  v25[1] = &off_1000CC9E8;
  v24[2] = SFActivityAdvertiserOptionFlagCopyPasteKey;
  v13 = &__kCFBooleanFalse;
  if (v9 && [v9 containsPasteboard])
  {
    v13 = &__kCFBooleanTrue;
  }

  v24[3] = @"name";
  v14 = @"-";
  if (v10)
  {
    v14 = v10;
  }

  v25[2] = v13;
  v25[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
  if (v11)
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 time];
      v20 = 138412546;
      v21 = v9;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "advertising %@, when = %@", &v20, 0x16u);
    }

    if (v9)
    {
      v18 = [v9 advertisementPayload];
    }

    else
    {
      v18 = 0;
    }

    [v11 advertiseAdvertisementPayload:v18 options:v15];
    if (v9)
    {
    }
  }

  return v11 != 0;
}

- (BOOL)advertiseItem:(id)a3 force:(BOOL)a4
{
  v151 = a3;
  v147 = self;
  v5 = [(UASharingAdvertiser *)self dispatchQ];
  dispatch_assert_queue_V2(v5);

  v150 = +[NSDate date];
  v6 = +[UAUserActivityDefaults sharedDefaults];
  v7 = [v6 multiHandoffEnabled];
  if (v151)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v145 = v8;
  if (v8 == 1)
  {
    v9 = [(UAAdvertiser *)v147 shouldAdvertiseAutoPullActivityList];

    if (!v9)
    {
      goto LABEL_123;
    }

    v10 = [(UACornerActionManagerHandler *)v147 manager];
    v11 = [v10 advertiseableItems];
    v12 = [v11 anyObject];

    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v157 = *&v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "itemToAdvertise is nil but we need to advertise an auto pull request, so choosing item %@ out of corner manager's possible advertiseable items to advertise", buf, 0xCu);
    }

    if (v12)
    {
      v151 = [[UAUserActivityInfo alloc] initWithUserActivityInfo:v12];
    }

    else
    {
      v151 = 0;
    }
  }

  else
  {
  }

  if (v151)
  {
    [(UASharingAdvertiser *)v147 scheduleIOPowerManagerUserIdleNotifications];
    v14 = [(UASharingAdvertiser *)v147 userIsCurrent];
    v15 = [v151 options];
    v141 = v14;
    v149 = [v15 mutableCopy];

    if (!v149)
    {
      v149 = +[NSMutableDictionary dictionary];
    }

    if ([(UASharingAdvertiser *)v147 shouldAdvertisePasteboard])
    {
      if ([(UASharingAdvertiser *)v147 pasteboardAvailible])
      {
        [v149 setObject:&__kCFBooleanTrue forKey:@"UAPasteboardAvailable"];
        v16 = [NSNumber numberWithBool:[(UASharingAdvertiser *)v147 pasteboardBitValue]];
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
    v17 = [(UACornerActionManagerHandler *)v147 manager];
    v18 = [v17 advertiseableItems];
    v19 = [v18 allObjects];

    v20 = [v19 countByEnumeratingWithState:&v152 objects:v168 count:16];
    if (v20)
    {
      v21 = *v153;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v153 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v152 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v23 uuid];
            v25 = [v151 uuid];
            if ([v24 isEqual:v25])
            {
            }

            else
            {
              v26 = [v23 when];
              [(__CFString *)v150 timeIntervalSinceDate:v26];
              v28 = v27 < 600.0;

              if (v28)
              {
                [v149 setObject:&__kCFBooleanTrue forKey:@"UAUserActivityAdvertiserHasMoreActivities"];
              }
            }
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v152 objects:v168 count:16];
      }

      while (v20);
    }

    v29 = [(UASharingAdvertiser *)v147 beginTimeForNonActiveAdvertisement];
    if (v29)
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
        v157 = *&v151;
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
        v157 = *&v151;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setting UAUserActivityItemIsNotActiveKey = 0 for item %@", buf, 0xCu);
      }

      v32 = &__kCFBooleanFalse;
    }

    [v149 setObject:v32 forKey:@"UAUserActivityItemIsNotActiveKey"];
    v33 = v141;
    if ([(UAAdvertiser *)v147 shouldAdvertiseAutoPullActivityList])
    {
      v34 = sub_100001A30(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v157 = *&v151;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "setting UAUserActivityAutoPullActivitiesListKey = 1 for item %@", buf, 0xCu);
      }

      [v149 setObject:&__kCFBooleanTrue forKey:UAUserActivityAutoPullActivitiesListKey];
      v33 = v141;
    }

    [v151 setOptions:v149];
    v35 = [SharingBTLEAdvertisementPayload alloc];
    if (v33)
    {
      v36 = 0;
    }

    else
    {
      v36 = [(UASharingAdvertiser *)v147 lastUserActiveTime];
    }

    v146 = [(SharingBTLEAdvertisementPayload *)v35 initWithItem:v151 isCurrent:v33 when:v36 versionFlags:5];
    if ((v33 & 1) == 0)
    {
    }

    if (a4)
    {
      goto LABEL_60;
    }

    v37 = [(UASharingAdvertiser *)v147 currentAdvertisedItem];
    if (!v37)
    {
      goto LABEL_60;
    }

    v38 = [(UASharingAdvertiser *)v147 currentAdvertisedItem];
    v39 = [v38 uuid];
    v40 = [v151 uuid];
    if ([v39 isEqual:v40])
    {
      v41 = [(UASharingAdvertiser *)v147 currentAdvertisementPayload];
      if (v41)
      {
        v42 = [(UASharingAdvertiser *)v147 currentAdvertisementPayload];
        if ([(SharingBTLEAdvertisementPayload *)v146 isEqual:v42])
        {
          v43 = [(SharingBTLEAdvertisementPayload *)v146 isCurrent];
          v44 = [(UASharingAdvertiser *)v147 currentAdvertisementPayload];
          v45 = [v44 isCurrent];

          if (((v43 ^ v45) & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_60:
          v46 = sub_100001A30(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = [v151 uuid];
            v48 = [v47 UUIDString];
            v49 = [v151 logString];
            *buf = 138543619;
            v157 = *&v48;
            v158 = 2113;
            v159 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Advertising new item or updating user-idle time in previous advertisement, %{public}@/%{private}@", buf, 0x16u);
          }

          v50 = [(SharingBTLEAdvertisementPayload *)v146 advertisementPayload];
          v143 = sub_100006EF4(v50);
          v51 = [v151 activityType];
          v52 = [v151 dynamicActivityType];
          if (v52)
          {
            v53 = [v151 dynamicActivityType];
          }

          else
          {
            v53 = &stru_1000C67D0;
          }

          v54 = [v151 uuid];
          v55 = [v54 UUIDString];
          v56 = [NSString stringWithFormat:@"ADVERTISING:%@ %@ %@/ %@", v143, v51, v53, v55];
          [ActivityManagerDebuggingManager appendRecentAction:v56];

          if (v52)
          {
          }

          v57 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
          if (v57)
          {
            v58 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
            [v58 timeIntervalSinceNow];
            v60 = v59 > 0.0;

            if (v60)
            {
              [(UASharingAdvertiser *)v147 setLastAdvertismentTime:0];
              v61 = sub_100001A30(0);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "lastAdvertismentTime is in the future, this is wrong and is probably because the system clock has changed", buf, 2u);
              }
            }
          }

          v62 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
          if (v62)
          {
            v63 = +[UAUserActivityDefaults sharedDefaults];
            [v63 minimumIntervalBetweenAdvertisements];
            v65 = v64 > 0.0;

            if (v65)
            {
              v66 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
              [(__CFString *)v150 timeIntervalSinceDate:v66];
              v68 = v67;

              if (v68 < 0.0)
              {
                v69 = sub_100001A30(0);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
                  *buf = 138543618;
                  v157 = *&v150;
                  v158 = 2114;
                  v159 = v70;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Time since last advertisement seems to have gone backwards, now=%{public}@ last=%{public}@", buf, 0x16u);
                }

                v68 = 0.0;
              }

              v71 = +[UAUserActivityDefaults sharedDefaults];
              [v71 minimumIntervalBetweenAdvertisements];
              v73 = v68 < v72;

              if (v73)
              {
                if (![v151 eligibleToAlwaysAdvertise])
                {
                  v137 = sub_100001A30(0);
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                  {
                    v138 = [(UASharingAdvertiser *)v147 lastAdvertismentTime];
                    *buf = 134218498;
                    v157 = v68;
                    v158 = 2114;
                    v159 = v150;
                    v160 = 2114;
                    v161 = v138;
                    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "ADVERTISING: Setting supressAdvertisementChange = YES because the client attempted to change advertisement too quickly, %f since lastAdvertisementTime (now=%{public}@ last=%{public}@)", buf, 0x20u);
                  }

                  v75 = +[UAUserActivityDefaults sharedDefaults];
                  [(__CFString *)v75 minimumIntervalBetweenAdvertisements];
                  [(UASharingAdvertiser *)v147 scheduleAdvertisementUpdate:v139 - v68];
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

          v77 = [(UASharingAdvertiser *)v147 advertisementTimes];
          v78 = [v77 count] == 0;

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
            v82 = [(UASharingAdvertiser *)v147 advertisementTimes];
            v83 = [v82 count];
            v84 = [(UASharingAdvertiser *)v147 advertisementTimes];
            v85 = [v84 description];
            v86 = sub_100009684(v85);
            *buf = 134218242;
            v157 = *&v83;
            v158 = 2114;
            v159 = v86;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "ADVERTISING: self.advertisementTimes=%ld %{public}@", buf, 0x16u);
          }

          while (1)
          {
            v87 = [(UASharingAdvertiser *)v147 advertisementTimes];
            if (![v87 count])
            {
              break;
            }

            v88 = [(UASharingAdvertiser *)v147 advertisementTimes];
            v89 = [v88 firstObject];
            v90 = [(__CFString *)v75 compare:v89]== -1;

            if (v90)
            {
              goto LABEL_94;
            }

            v91 = sub_100001A30(0);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = [(UASharingAdvertiser *)v147 advertisementTimes];
              v93 = [v92 objectAtIndex:0];
              *buf = 138543618;
              v157 = *&v93;
              v158 = 2114;
              v159 = v75;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "ADVERTISING: Removing first item, %{public}@, becaues it is earlier than %{public}@", buf, 0x16u);
            }

            v94 = [(UASharingAdvertiser *)v147 advertisementTimes];
            [v94 removeObjectAtIndex:0];
          }

LABEL_94:
          v95 = [(UASharingAdvertiser *)v147 advertisementTimes];
          v96 = [v95 count];
          v97 = +[UAUserActivityDefaults sharedDefaults];
          v98 = v96 < [v97 maximumAdvertisementsPerTimeInterval];

          if (v98)
          {
LABEL_95:

LABEL_96:
            [(UASharingAdvertiser *)v147 setCurrentAdvertisedItem:v151];
            [(UASharingAdvertiser *)v147 setLastAdvertismentTime:v150];
            v99 = [v151 provenance];
            [(UASharingAdvertiser *)v147 _advertisePayload:v146 force:0 name:v99];

            v100 = [(UASharingAdvertiser *)v147 advertisementTimes];
            [v100 addObject:v150];

            v101 = [v151 activityType];
            v102 = [v101 isEqual:NSUserActivityTypeBrowsingWeb];

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

                v108 = [(UASharingAdvertiser *)v147 currentAdvertisedItemOtherAdvertisedItems];
                v109 = v108 == 0;

                if (v109)
                {
                  v110 = +[NSMutableDictionary dictionary];
                  [(UASharingAdvertiser *)v147 setCurrentAdvertisedItemOtherAdvertisedItems:v110];
                }

                v111 = [(UASharingAdvertiser *)v147 currentAdvertisedItemOtherAdvertisedItems];
                [v111 setObject:v106 forKey:v146];

                v112 = [(UASharingAdvertiser *)v147 periodicUpdate];
                [v112 scheduleAt:v106];
              }
            }

            v113 = [(UASharingAdvertiser *)v147 nextScheduleUpdate];
            [v113 scheduleNext:248.0];

            v114 = sub_100001A30(0);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              v115 = [v151 uuid];
              v148 = [v115 UUIDString];
              v144 = [v151 activityType];
              v116 = [v151 dynamicActivityType];
              if (v116)
              {
                v51 = [v151 dynamicActivityType];
                v117 = [NSString stringWithFormat:@":%@", v51];
              }

              else
              {
                v117 = &stru_1000C67D0;
              }

              v118 = +[NSDate date];
              v119 = [v151 options];
              v120 = [v119 description];
              v121 = v115;
              v122 = sub_100009684(v120);
              *buf = 138544643;
              v157 = *&v146;
              v158 = 2114;
              v159 = v148;
              v160 = 2113;
              v161 = v144;
              v162 = 2113;
              v163 = v117;
              v164 = 2114;
              v165 = v118;
              v166 = 2114;
              v167 = v122;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "ADVERTISING:%{public}@ %{public}@ type=%{private}@%{private}@ at %{public}@ opts=%{public}@", buf, 0x3Eu);

              if (v116)
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
            v125 = [v124 maximumAdvertisementsPerTimeInterval];
            v126 = +[UAUserActivityDefaults sharedDefaults];
            [v126 maximumAdvertisementsTimeInterval];
            v128 = v127;
            v129 = [(UASharingAdvertiser *)v147 advertisementTimes];
            v130 = [v129 firstObject];
            *buf = 134218754;
            v157 = *&v125;
            v158 = 2048;
            v159 = v128;
            v160 = 2114;
            v161 = v130;
            v162 = 2114;
            v163 = v150;
            _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEBUG, "ADVERTISING: Setting supressAdvertisementChange = YES because the advertisement too quickly, %ld in last %f seconds (earliest=%{public}@ now=%{public}@)", buf, 0x2Au);
          }

          v131 = [(UASharingAdvertiser *)v147 advertisementTimes];
          v132 = [v131 firstObject];
          [(__CFString *)v150 timeIntervalSinceDate:v132];
          v134 = v133;

          if (v134 < 0.0)
          {
            v135 = +[UAUserActivityDefaults sharedDefaults];
            [v135 minimumIntervalBetweenAdvertisements];
            if (v136 > -v134)
            {
              v136 = -v134;
            }

            [(UASharingAdvertiser *)v147 scheduleAdvertisementUpdate:v136];
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

- (BOOL)peerDeviceCanAcceptNewerPayload:(id)a3
{
  v3 = a3;
  v4 = v3;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = [v3 productBuildVersion];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [v4 productBuildVersion];
  if (![v6 UTF8String])
  {

    goto LABEL_13;
  }

  v7 = [v4 productBuildVersion];
  v8 = sscanf([v7 UTF8String], "%ld%c%ld", &v27, &v25, &v26) == 3;

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = sub_100001A30(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v4 productName];
    v11 = [v4 productVersion];
    v12 = [v4 productBuildVersion];
    *buf = 138544642;
    v29 = v10;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    v34 = 2048;
    v35 = v27;
    v36 = 1024;
    v37 = v25;
    v38 = 2048;
    v39 = v26;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "-- CHECKING %{public}@ version %{public}@, %{public}@ = %ld.%c.%ld", buf, 0x3Au);
  }

  v13 = [v4 productName];
  v14 = [v13 isEqual:@"iPhone OS"];

  if (!v14)
  {
    v20 = [v4 productName];
    if (([v20 isEqual:@"macOS"] & 1) == 0)
    {
      v21 = [v4 productName];
      if (![v21 isEqual:@"Mac OS X"])
      {
        v23 = [v4 productName];
        v24 = [v23 isEqual:@"OS X"];

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [*(&v2->_advertisableItems + 1) copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)addSFActivityAdvertiser:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [*(&v5->_advertisableItems + 1) containsObject:v4];
    if ((v6 & 1) == 0)
    {
      [*(&v5->_advertisableItems + 1) addObject:v4];
      [v4 setDelegate:v5];
    }

    v7 = v6 ^ 1;
    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)removeSFActivityAdvertiser:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [*(&v5->_advertisableItems + 1) containsObject:v4];
  if (v6)
  {
    [v4 setDelegate:0];
    [*(&v5->_advertisableItems + 1) removeObject:v4];
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)sfActivityAdvertiser
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UASharingAdvertiser *)self sfActivityAdvertisers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
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

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = self;
  objc_sync_enter(v2);
  BYTE1(v2->_sfAdvertisers) = 0;
  objc_sync_exit(v2);
  v10 = v2;

  v11 = +[NSMutableSet set];
  v3 = dispatch_group_create();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(UASharingAdvertiser *)v2 sfActivityAdvertisers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
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
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v27 = self;
  objc_sync_enter(v27);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(&v27->_helpersDispatchGroup + 1);
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
        v13 = [*(&v27->_helpersDispatchGroup + 1) count];
        v14 = sub_10006BB44(*(&v27->_helpersDispatchGroup + 1));
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
  v21 = v27;
  v22 = v20;
  if (BYTE2(v27->_sfAdvertisers) != v22 || BYTE3(v27->_sfAdvertisers) != v3)
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

    v21 = v27;
    BYTE2(v27->_sfAdvertisers) = v22;
    BYTE3(v27->_sfAdvertisers) = v3;
    [(UASharingAdvertiser *)v27 scheduleAdvertisementUpdate:0.1];
  }

  objc_sync_exit(v21);
}

- (NSSet)pairedDevices
{
  v2 = self;
  objc_sync_enter(v2);
  if (BYTE1(v2->_sfAdvertisers) == 1)
  {
    [(UASharingAdvertiser *)v2 _refreshPairedSFPeerDevices];
  }

  v3 = [*(&v2->_helpersDispatchGroup + 1) copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setPairedDevices:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 count];
    v7 = sub_10006BB44(v4);
    *buf = 134218243;
    v13 = v6;
    v14 = 2113;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Setting pairedDevices=%ld/%{private}@", buf, 0x16u);
  }

  v8 = self;
  objc_sync_enter(v8);
  BYTE1(v8->_sfAdvertisers) = 0;
  if (!v4 || ([v4 isEqual:*(&v8->_helpersDispatchGroup + 1)] & 1) == 0)
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PAIRED_DEVICES:Changed, now have %ld devices paired.", [v4 count]);
    [ActivityManagerDebuggingManager appendRecentAction:v9];

    if (v4)
    {
      v10 = [v4 copy];
    }

    else
    {
      v10 = +[NSSet set];
    }

    v11 = v10;
    objc_storeStrong((&v8->_helpersDispatchGroup + 1), v10);

    [(UASharingAdvertiser *)v8 _updatePairedDeviceCapabilities];
  }

  objc_sync_exit(v8);
}

- (id)dataForMoreAppSuggestions
{
  v3 = [(UACornerActionManagerHandler *)self manager];
  v4 = [v3 advertiseableItems];
  v5 = [v4 allObjects];

  v6 = +[NSMutableData data];
  if ([(UASharingAdvertiser *)self userIsCurrent])
  {
    v7 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
    if (v7)
    {
    }

    else
    {
      v33 = [(UASharingAdvertiser *)self currentAdvertisedItem];

      if (v33)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v34 = v5;
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
              v39 = [(UASharingAdvertiser *)self currentAdvertisedItem];
              v40 = [v39 isEqual:v38];

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
  v42 = [v5 sortedArrayUsingComparator:&stru_1000C6090];

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
          v14 = [(UASharingAdvertiser *)self beginTimeForNonActiveAdvertisement];
          if (v14)
          {
          }

          else
          {
            v15 = [(UASharingAdvertiser *)self currentAdvertisedItem];
            v16 = [v15 isEqual:v13];

            if (v16)
            {
              v17 = 1;
              goto LABEL_20;
            }
          }
        }

        v18 = [v13 when];
        [v8 timeIntervalSinceDate:v18];
        v20 = v19 > 600.0;

        if (v20)
        {
          v21 = sub_100001A30(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v13 bundleIdentifier];
            v23 = [v13 when];
            *buf = 138412802;
            v53 = v22;
            v54 = 2112;
            v55 = v23;
            v56 = 2048;
            v57 = 10;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "skipping %@ because its .when (%@) is older than %lum:", buf, 0x20u);
          }

          goto LABEL_25;
        }

        v17 = 0;
LABEL_20:
        v24 = [SharingBTLEAdvertisementPayload alloc];
        v25 = [v13 when];
        v21 = [(SharingBTLEAdvertisementPayload *)v24 initWithItem:v13 isCurrent:v17 when:v25 versionFlags:5];

        v26 = sub_100001A30(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v13 bundleIdentifier];
          v28 = [v13 when];
          *buf = 138412546;
          v53 = v27;
          v54 = 2112;
          v55 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }

        if (![v6 length])
        {
          v29 = [v21 advertisementPayload];
          v30 = [v29 length];

          buf[0] = v30;
          [v6 appendBytes:buf length:1];
        }

        v31 = [v21 advertisementPayload];
        [v6 appendData:v31];

LABEL_25:
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)activityAdvertiser:(id)a3 activityPayloadForAdvertisementPayload:(id)a4 command:(id)a5 requestedByDevice:(id)a6 withCompletionHandler:(id)a7
{
  v67 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_100001A30(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v14 name];
    *buf = 138543875;
    v72 = v12;
    v73 = 2114;
    v74 = v13;
    v75 = 2113;
    v76 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[Sharing Advertiser] Payload request for ad: %{public}@, command: %{public}@, from: %{private}@", buf, 0x20u);
  }

  v66 = [NSData dataWithBytes:"pbpaste!" length:8];
  if (!v13)
  {
    if ([v66 isEqual:v12])
    {
      v13 = @"pbpaste";
    }

    else
    {
      v13 = 0;
    }
  }

  v18 = [NSData dataWithBytes:"pbtypes!" length:8];
  v19 = v18;
  if (!v13)
  {
    if ([v18 isEqual:v12])
    {
      v13 = @"pbtypes";
    }

    else
    {
      v13 = 0;
    }
  }

  v20 = sub_100006EF4(v12);
  v21 = [v14 uniqueID];
  v22 = v21;
  v23 = @"-";
  if (v13)
  {
    v23 = v13;
  }

  v24 = [NSString stringWithFormat:@"PAYLOAD_REQUESTED:%@, %@ from %@", v20, v23, v21];
  [ActivityManagerDebuggingManager appendRecentAction:v24];

  if (v13 && ![(__CFString *)v13 isEqual:@"HANDOFF"])
  {
    if ([(__CFString *)v13 isEqualToString:@"handoff-more_items"])
    {
      v25 = sub_100001A30(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "activityPayloadForAdvertisementPayload: got handoff-more_items command", buf, 2u);
      }

      v26 = [(UASharingAdvertiser *)self dataForMoreAppSuggestions];
      v27 = sub_100001A30(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 description];
        v29 = [v26 length];
        *buf = 138412546;
        v72 = v28;
        v73 = 2048;
        v74 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "payload: %@ (%lu bytes long)", buf, 0x16u);
      }

      (*(v15 + 2))(v15, 0, v26, 0);
      [(UASharingAdvertiser *)self setShouldAdvertiseAutoPullActivityList:0];
      goto LABEL_44;
    }

    if ([(__CFString *)v13 isEqualToString:@"pbpaste"])
    {
      v30 = +[UAUserActivityDefaults sharedDefaults];
      v31 = [v30 clipboardSharingEnabled];

      if (v31)
      {
        v32 = [(UACornerActionManagerHandler *)self manager];
        v33 = [v32 pasteboardController];
        v34 = v33 == 0;

        if (v34)
        {
          goto LABEL_45;
        }

        v35 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v14 uniqueID];
          v37 = [v14 name];
          *buf = 138543619;
          v72 = v36;
          v73 = 2113;
          v74 = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[PBOARD] Paste Requested from remote %{public}@/%{private}@", buf, 0x16u);
        }

        v38 = [(UACornerActionManagerHandler *)self manager];
        v39 = [v38 pasteboardController];
        v63 = [v39 uuid];

        v40 = [(UACornerActionManagerHandler *)self manager];
        v41 = [v40 pasteboardController];
        v42 = v70;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_10006D448;
        v70[3] = &unk_1000C60B8;
        v70[5] = v15;
        v26 = v63;
        v70[4] = v26;
        [v41 startServiceForPasteVersion:1 handler:v70];
        goto LABEL_40;
      }

LABEL_43:
      v26 = [NSError errorWithDomain:UAContinuityErrorDomain code:-105 userInfo:0];
      (*(v15 + 2))(v15, 0, 0, v26);
      goto LABEL_44;
    }

    if ([(__CFString *)v13 isEqualToString:@"pbpaste2"])
    {
      v43 = +[UAUserActivityDefaults sharedDefaults];
      v44 = [v43 clipboardSharingEnabled];

      if (!v44)
      {
        goto LABEL_43;
      }

      v45 = [(UACornerActionManagerHandler *)self manager];
      v46 = [v45 pasteboardController];
      v47 = v46 == 0;

      if (v47)
      {
        goto LABEL_45;
      }

      v48 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [v14 uniqueID];
        v50 = [v14 name];
        *buf = 138543619;
        v72 = v49;
        v73 = 2113;
        v74 = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[PBOARD] Paste V2 Requested from remote %{public}@/%{private}@", buf, 0x16u);
      }

      v51 = [(UACornerActionManagerHandler *)self manager];
      v52 = [v51 pasteboardController];
      v64 = [v52 uuid];

      v40 = [(UACornerActionManagerHandler *)self manager];
      v41 = [v40 pasteboardController];
      v42 = v69;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10006D464;
      v69[3] = &unk_1000C60B8;
      v69[5] = v15;
      v26 = v64;
      v69[4] = v26;
      [v41 startServiceForPasteVersion:2 handler:v69];
    }

    else
    {
      if (![(__CFString *)v13 isEqualToString:@"pbtypes"])
      {
        v26 = [NSError errorWithDomain:UAContinuityErrorDomain code:-115 userInfo:0];
        (*(v15 + 2))(v15, 0, 0, v26);
        goto LABEL_44;
      }

      v53 = +[UAUserActivityDefaults sharedDefaults];
      v54 = [v53 clipboardSharingEnabled];

      if (!v54)
      {
        goto LABEL_43;
      }

      v55 = [(UACornerActionManagerHandler *)self manager];
      v56 = [v55 pasteboardController];
      v57 = v56 == 0;

      if (v57)
      {
        goto LABEL_45;
      }

      v58 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [v14 uniqueID];
        v60 = [v14 name];
        *buf = 138543619;
        v72 = v59;
        v73 = 2113;
        v74 = v60;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[PBOARD] Types Requested from remote %{public}@/%{private}@", buf, 0x16u);
      }

      v61 = [(UACornerActionManagerHandler *)self manager];
      v62 = [v61 pasteboardController];
      v65 = [v62 uuid];

      v40 = [(UACornerActionManagerHandler *)self manager];
      v41 = [v40 pasteboardController];
      v42 = v68;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10006D480;
      v68[3] = &unk_1000C60B8;
      v68[5] = v15;
      v26 = v65;
      v68[4] = v26;
      [v41 getLocalPasteboardInfoData:v68];
    }

LABEL_40:

LABEL_44:
    goto LABEL_45;
  }

  [(UASharingAdvertiser *)self activityAdvertiser:v67 activityPayloadForAdvertisementPayload:v12 handoffCommand:v13 requestedByDevice:v14 withCompletionHandler:v15];
LABEL_45:
}

- (void)activityAdvertiser:(id)a3 activityPayloadForAdvertisementPayload:(id)a4 handoffCommand:(id)a5 requestedByDevice:(id)a6 withCompletionHandler:(id)a7
{
  v174 = a3;
  v180 = a4;
  v177 = a5;
  v178 = a6;
  v179 = a7;
  v12 = sub_100001A30(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v177)
    {
      v13 = v177;
    }

    else
    {
      v13 = @"-";
    }

    v14 = [v178 name];
    [v178 productVersion];
    v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v16 = [v178 productBuildVersion];
    *buf = 138544387;
    v194 = v180;
    v195 = 2114;
    v196 = v13;
    v197 = 2113;
    v198 = v14;
    v199 = 2114;
    v200 = v15;
    v201 = 2114;
    v202 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Advertising: advertiserData=%{public}@ command=%{public}@ peer=%{private}@ %{public}@/%{public}@", buf, 0x34u);
  }

  v17 = [(UACornerActionManagerHandler *)self manager];
  v18 = [v17 activityAdvertisingAllowed];

  if (v18)
  {
    v19 = sub_1000620EC();
    v20 = [[SharingBTLEAdvertisementPayload alloc] initWithAdvertisedBytes:v180];
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    v21 = [(UACornerActionManagerHandler *)self manager];
    v22 = [v21 advertiseableItems];
    v23 = [v22 allObjects];

    v24 = [v23 countByEnumeratingWithState:&v189 objects:v206 count:16];
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
        objc_enumerationMutation(v23);
      }

      v27 = *(*(&v189 + 1) + 8 * v26);
      if ([(SharingBTLEAdvertisementPayload *)v20 matchesItem:v27])
      {
        break;
      }

      v28 = [v27 activityType];
      v29 = [v28 isEqual:NSUserActivityTypeBrowsingWeb];

      if (v29)
      {
        v30 = v27;

        v181 = v30;
      }

      if (v24 == ++v26)
      {
        v24 = [v23 countByEnumeratingWithState:&v189 objects:v206 count:16];
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
            v41 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
            v42 = [v41 allKeys];
            *buf = 138477827;
            v194 = v42;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "OLDWEB: Checking against previous advertised NSUSerActivityTypeBrowsingWeb items, %{private}@", buf, 0xCu);
          }

          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v43 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
          v44 = [v43 allKeys];

          v45 = [v44 countByEnumeratingWithState:&v185 objects:v205 count:16];
          if (v45)
          {
            v46 = *v186;
            while (2)
            {
              for (i = 0; i != v45; i = i + 1)
              {
                if (*v186 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v48 = *(*(&v185 + 1) + 8 * i);
                v49 = [(UASharingAdvertiser *)self currentAdvertisedItemOtherAdvertisedItems];
                v50 = [v49 objectForKey:v48];

                if (v50 && [v50 compare:v39] == -1 && objc_msgSend(v48, "isEqualHashedPayloadBytes:", v20))
                {
                  v54 = sub_100001A30(0);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    v175 = [0 activityType];
                    v55 = [0 uuid];
                    v56 = [v55 UUIDString];
                    v57 = sub_100006EF4(v180);
                    sub_100009AC0(v50);
                    v58 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138478595;
                    v194 = v175;
                    v195 = 2114;
                    v196 = v56;
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

              v45 = [v44 countByEnumeratingWithState:&v185 objects:v205 count:16];
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
            v194 = v180;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "RESPONDING: Unable to locate a userActivity for the payloadData %{public}@ so returning nil/nil and an error as the payload for the requesting device.", buf, 0xCu);
          }

          v53 = [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
          v32 = 0;
          (*(v179 + 2))(v179, 0, 0, v53);
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
          v147 = [v146 debugValidateSampleResponseMaximumActivityPayloadSizeInBytes];
          v148 = +[UAUserActivityDefaults sharedDefaults];
          LODWORD(v147) = v147 > [v148 debugValidateSampleResponseMinimumActivityPayloadSizeInBytes];

          if (v147)
          {
            v149 = +[UAUserActivityDefaults sharedDefaults];
            v150 = [v149 debugValidateSampleResponseMaximumActivityPayloadSizeInBytes];
            v151 = +[UAUserActivityDefaults sharedDefaults];
            -[NSObject increaseLengthBy:](dsema, "increaseLengthBy:", arc4random_uniform(v150 - [v151 debugValidateSampleResponseMinimumActivityPayloadSizeInBytes]));
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

          v159 = [v158 encodeAsData];
          v160 = sub_100001A30(0);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            v161 = [v159 length];
            v162 = [v178 uniqueID];
            *buf = 134218243;
            v194 = v161;
            v195 = 2113;
            v196 = v162;
            _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "SAMPLEPAYLOAD: Sending %ld bytes to device %{private}@", buf, 0x16u);
          }

          v163 = [v158 uniqueIdentifier];
          (*(v179 + 2))(v179, v163, v159, 0);

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
      v35 = [(SharingBTLEAdvertisementPayload *)v33 activityType];
      v36 = [(SharingBTLEAdvertisementPayload *)v33 uuid];
      v37 = [v36 UUIDString];
      *buf = 138478339;
      v194 = v35;
      v195 = 2114;
      v196 = v37;
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
          v66 = sub_100006EF4(v180);
          v67 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
          v68 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          v69 = [v68 UUIDString];
          *buf = 138544131;
          v194 = v66;
          v195 = 2113;
          v196 = v67;
          v197 = 2114;
          v198 = v69;
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
              v167 = sub_100006EF4(v180);
              v168 = [0 activityType];
              v169 = [0 uuid];
              v170 = [v169 UUIDString];
              *buf = 138543875;
              v194 = v167;
              v195 = 2113;
              v196 = v168;
              v197 = 2114;
              v198 = v170;
              _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_ERROR, "Failure after updating userActivity information from client application for activity %{public}@/%{private}@ %{public}@; the activity disappeared/is no longer current and so cannot be handedOff.", buf, 0x20u);
            }

            [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
            v172 = v32 = 0;
            (*(v179 + 2))(v179, 0, 0);
            goto LABEL_105;
          }
        }
      }
    }

    v172 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityUserInfoPayload];
    v71 = +[UAUserActivityDefaults sharedDefaults];
    v72 = [v71 debugForceNewPayloadEncoder];

    if (v72)
    {
      v73 = sub_100001A30(0);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = [v178 name];
        v75 = [v178 productVersion];
        v76 = [v178 productBuildVersion];
        *buf = 138478339;
        v194 = v74;
        v195 = 2114;
        v196 = v75;
        v197 = 2114;
        v198 = v76;
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
        v80 = [(UASharingAdvertiser *)self peerDeviceCanAcceptNewerPayload:v178];

        if (v80)
        {
          goto LABEL_73;
        }
      }

      v81 = [UAUserActivityInfo encodedInfoToOldEncodedInfo:v172];
      v82 = sub_100001A30(0);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = [v178 name];
        v84 = [v178 productName];
        v85 = [v178 productBuildVersion];
        v86 = COERCE_DOUBLE([v81 length]);
        v87 = [v172 length];
        *buf = 138478851;
        v194 = v83;
        v195 = 2114;
        v196 = v84;
        v197 = 2114;
        v198 = v85;
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
    v88 = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
    v89 = v88 == 0;

    if (v89)
    {
      v96 = [UserActivityToBTLEPayload alloc];
      v97 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
      v98 = +[UAUserActivityDefaults sharedDefaults];
      v99 = [v98 dontSendActivityTitle];
      if (v99)
      {
        v100 = &stru_1000C67D0;
      }

      else
      {
        v100 = [(SharingBTLEAdvertisementPayload *)v32 title];
      }

      v101 = [(SharingBTLEAdvertisementPayload *)v32 teamIdentifier];
      v102 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
      v176 = [(UserActivityToBTLEPayload *)v96 init:v97 title:v100 date:0 userInfoPayload:v172 teamID:v101 activityType:v102];

      if ((v99 & 1) == 0)
      {
      }

      v103 = [(SharingBTLEAdvertisementPayload *)v32 webpageURL];
      [(UserActivityToBTLEPayload *)v176 setWebpageURL:v103];

      v104 = [(SharingBTLEAdvertisementPayload *)v32 persistentIdentifier];
      LOBYTE(v103) = v104 == 0;

      if ((v103 & 1) == 0)
      {
        v105 = [(SharingBTLEAdvertisementPayload *)v32 persistentIdentifier];
        [(UserActivityToBTLEPayload *)v176 addAdditionalItem:v105 forKey:@"persistentID"];
      }

      v106 = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
      v107 = v106 == 0;

      if (!v107)
      {
        v108 = sub_100001A30(0);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
        {
          v109 = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
          *buf = 138739971;
          v194 = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "- Adding targetContentIdentifie=%{sensitive}@ to additionalItems payload", buf, 0xCu);
        }

        v110 = [(SharingBTLEAdvertisementPayload *)v32 targetContentIdentifier];
        [(UserActivityToBTLEPayload *)v176 addAdditionalItem:v110 forKey:@"targetContentID"];
      }

      v95 = [(SharingBTLEAdvertisementPayload *)v32 payloadForIdentifier:UAUserActivityStreamsPayload];
      [(UserActivityToBTLEPayload *)v176 setStreamsData:v95];
    }

    else
    {
      v90 = sub_100001A30(0);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        v92 = [v91 UUIDString];
        v93 = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
        *buf = 138543618;
        v194 = v92;
        v195 = 2114;
        v196 = v93;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "-- ENCODING error from client instead of payload, %{public}@ / %{public}@", buf, 0x16u);
      }

      v94 = [UserActivityToBTLEPayload alloc];
      v95 = [(SharingBTLEAdvertisementPayload *)v32 encodedUserInfoError];
      v176 = [(UserActivityToBTLEPayload *)v94 initWithNSError:v95];
    }

    v111 = [(UserActivityToBTLEPayload *)v176 encodeAsData];
    if (!v111)
    {
      goto LABEL_102;
    }

    v112 = +[UAUserActivityDefaults sharedDefaults];
    if ([v112 maximumActivityPayloadSizeInBytes] <= 0)
    {
    }

    else
    {
      v113 = [v111 length];
      v114 = +[UAUserActivityDefaults sharedDefaults];
      LODWORD(v113) = v113 > [v114 maximumActivityPayloadSizeInBytes];

      if (v113)
      {
        v115 = sub_100001A30(0);
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
        {
          v116 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          v117 = [v116 UUIDString];
          v118 = [(SharingBTLEAdvertisementPayload *)v32 logString];
          v119 = [v111 length];
          v120 = +[UAUserActivityDefaults sharedDefaults];
          v121 = COERCE_DOUBLE([v120 maximumActivityPayloadSizeInBytes]);
          *buf = 138544131;
          v194 = v117;
          v195 = 2113;
          v196 = v118;
          v197 = 2048;
          v198 = v119;
          v199 = 2048;
          v200 = v121;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "** The payload for user activity item %{public}@/%{private}@ was %ld bytes, larger than the maximum %ld, and so this user activity cannot be sent to the requesting device.", buf, 0x2Au);
        }

        v122 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v111 length]);
        v123 = [NSDictionary dictionaryWithObjectsAndKeys:v122, @"EncodedPayloadSize", 0];
        v124 = [NSError errorWithDomain:UAContinuityErrorDomain code:-110 userInfo:v123];

        v125 = [[UserActivityToBTLEPayload alloc] initWithNSError:v124];
        v126 = [(UserActivityToBTLEPayload *)v125 encodeAsData];

        v111 = v126;
        goto LABEL_101;
      }
    }

    v124 = +[UAUserActivityDefaults sharedDefaults];
    if ([v124 activityPayloadWarningSizeInBytes])
    {
      v127 = +[UAUserActivityDefaults sharedDefaults];
      v128 = [v127 activityPayloadWarningSizeInBytes];
      LODWORD(v128) = v128 < [v111 length];

      if (!v128)
      {
LABEL_102:
        v135 = sub_100001A30(0);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
        {
          v136 = sub_100006EF4(v180);
          v137 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
          v138 = [v137 UUIDString];
          v139 = [(SharingBTLEAdvertisementPayload *)v32 activityType];
          v140 = sub_1000620EC();
          v141 = [v111 length];
          v142 = sub_1000021AC(v111, 0x28uLL);
          *buf = 138544643;
          v194 = v136;
          v195 = 2114;
          v196 = v138;
          v197 = 2114;
          v198 = v139;
          v199 = 2048;
          v200 = v140 - v19;
          v201 = 2048;
          v202 = v141;
          v203 = 2113;
          v204 = v142;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "PAYLOAD:Responding to SFAdvertiser with data for advertisement %{public}@ activity %{public}@ type=%{public}@, fetchTime=%g data=%ld/%{private}@", buf, 0x3Eu);
        }

        v143 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        (*(v179 + 2))(v179, v143, v111, 0);

LABEL_105:
        v144 = v183;
        v51 = v181;
        v181 = v20;
        goto LABEL_114;
      }

      v124 = sub_100001A30(0);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v129 = [(SharingBTLEAdvertisementPayload *)v32 uuid];
        v130 = [v129 UUIDString];
        v131 = [(SharingBTLEAdvertisementPayload *)v32 logString];
        v132 = [v111 length];
        v133 = +[UAUserActivityDefaults sharedDefaults];
        v134 = COERCE_DOUBLE([v133 activityPayloadWarningSizeInBytes]);
        *buf = 138544131;
        v194 = v130;
        v195 = 2113;
        v196 = v131;
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

  if (v179)
  {
    v32 = [NSError errorWithDomain:UAContinuityErrorDomain code:-107 userInfo:0];
    (*(v179 + 2))(v179, 0, 0, v32);
    goto LABEL_116;
  }

LABEL_117:
}

- (void)activityAdvertiser:(id)a3 didSendPayloadForActivityIdentifier:(id)a4 toDevice:(id)a5 error:(id)a6
{
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 UUIDString];
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User activity %{public}@ was resumed on another device, so inform (if desired) the author of the activity on this device", buf, 0xCu);
  }

  v10 = [(UACornerActionManagerHandler *)self manager];
  v11 = [v10 activityAdvertisingAllowed];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100001A30(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failing because self.activityAdvertisingAllowed == NO, ignoring notification.", buf, 2u);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(UASharingAdvertiser *)self advertisingItems];
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          v17 = [v16 uuid];
          v18 = [v17 isEqual:v7];

          if (v18)
          {
            [v16 wasResumedOnAnotherDeviceWithCompletionHandler:&stru_1000C6100];
            goto LABEL_17;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)activityAdvertiser:(id)a3 pairedDevicesChangedNotification:(id)a4
{
  v5 = a4;
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 count];
    v8 = sub_10006BB44(v5);
    *buf = 134218243;
    v14 = v7;
    v15 = 2113;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PAIRED DEVICES CHANGED: Now is %ld/%{private}@", buf, 0x16u);
  }

  v9 = [(UASharingAdvertiser *)self dispatchQ];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006F9DC;
  v11[3] = &unk_1000C4DA0;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, v11);
}

- (BOOL)scheduleAdvertisementUpdate:(double)a3
{
  v4 = [(UASharingAdvertiser *)self nextScheduleUpdate];
  v5 = [v4 scheduleNext:a3];

  return v5;
}

- (BOOL)okToSuspendAdvertising
{
  v8.receiver = self;
  v8.super_class = UASharingAdvertiser;
  v3 = [(UAAdvertiser *)&v8 okToSuspendAdvertising];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UASharingAdvertiser *)v4 currentAdvertisedItem];
  v6 = [v5 eligibleToAlwaysAdvertise];

  objc_sync_exit(v4);
  return (v6 ^ 1) & v3;
}

- (BOOL)suspend
{
  v7.receiver = self;
  v7.super_class = UASharingAdvertiser;
  v3 = [(UACornerActionManagerHandler *)&v7 suspend];
  if (v3)
  {
    [(UASharingAdvertiser *)self setUserIsCurrent:0];
    [(UASharingAdvertiser *)self removeAdvertisement];
    v4 = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [v4 suspend];

    v5 = [(UASharingAdvertiser *)self periodicUpdate];
    [v5 suspend];
  }

  return v3;
}

- (BOOL)resume
{
  v10.receiver = self;
  v10.super_class = UASharingAdvertiser;
  v3 = [(UACornerActionManagerHandler *)&v10 resume];
  if (v3)
  {
    [(UASharingAdvertiser *)self advertisePayload:0 force:0];
    BYTE1(self->_sfAdvertisers) = 1;
    v4 = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [v4 reset];

    v5 = [(UASharingAdvertiser *)self nextScheduleUpdate];
    [v5 resume];

    [(UASharingAdvertiser *)self scheduleAdvertisementUpdate];
    v6 = [(UASharingAdvertiser *)self periodicUpdate];
    [v6 resume];

    v7 = [(UASharingAdvertiser *)self periodicUpdate];
    [v7 reset];

    v8 = [(UASharingAdvertiser *)self periodicUpdate];
    [v8 scheduleNext:0.1];
  }

  return v3;
}

- (BOOL)userIsCurrent
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = BYTE4(v2->_sfAdvertisers);
  objc_sync_exit(v2);

  return v3;
}

- (void)setUserIsCurrent:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (BYTE4(obj->_sfAdvertisers) != v3)
  {
    BYTE4(obj->_sfAdvertisers) = v3;
    v4 = [(UASharingAdvertiser *)obj currentAdvertisementPayload];

    if (v4 || v3)
    {
      [(UASharingAdvertiser *)obj scheduleAdvertisementUpdate];
    }
  }

  objc_sync_exit(obj);
}

- (void)scheduleIOPowerManagerUserIdleNotifications
{
  v2 = [(UASharingAdvertiser *)self userIsCurrentIdleTracker];
  [v2 setEnabled:1];
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
    v5 = [(UASharingAdvertiser *)self advertisableItems];
    v4 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 pasteboardTypes];
            LOBYTE(v4) = [v9 count] != 0;

            goto LABEL_12;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(UASharingAdvertiser *)self advertisableItems];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 generation];
          if (v8 != [(UASharingAdvertiser *)self lastAdvertisedGeneration])
          {
            [(UASharingAdvertiser *)self setLastAdvertisedGeneration:v8];
            [(UASharingAdvertiser *)self setPboardBitToAdvertise:[(UASharingAdvertiser *)self pboardBitToAdvertise]^ 1];
          }

          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(UASharingAdvertiser *)self sfActivityAdvertiser];

  if (!v3)
  {
    [v59 appendString:@"(No SFActivityAdvertiser) "];
  }

  v4 = [(UACornerActionManagerHandler *)self manager];
  v5 = [v4 isBluetoothEnabled];

  if ((v5 & 1) == 0)
  {
    v9 = +[UAUserActivityDefaults sharedDefaults];
    v10 = [v9 shouldIgnoreBluetoothDisabled];

    if (v10)
    {
      v8 = @" ** Bluetooth is disabled but IgnoreBluetoothDisabled is set, so the activity will be advertised. **";
    }

    else
    {
      v8 = @" ** Bluetooth is disabled so no activity will be advertised. **";
    }

    goto LABEL_9;
  }

  v6 = [(UACornerActionManagerHandler *)self manager];
  v7 = [v6 isBatterySaverModeEnabled];

  if (v7)
  {
    v8 = @" ** LowPowerMode is enabled so no activity will be advertised. **";
LABEL_9:
    [v59 appendString:v8];
    goto LABEL_10;
  }

  v22 = [(UACornerActionManagerHandler *)self manager];
  v23 = [v22 activityAdvertisingAllowed];

  if ((v23 & 1) == 0)
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
  v11 = [(UASharingAdvertiser *)self sfActivityAdvertisers];
  v12 = [v11 count];

  if (v12 != 1)
  {
    v13 = [(UASharingAdvertiser *)self sfActivityAdvertisers];
    [v59 appendFormat:@"%ld sfActivityAdvertisers", objc_msgSend(v13, "count")];
  }

  v56 = [(UASharingAdvertiser *)self nextScheduleUpdate];
  v14 = [v56 runCount];
  v55 = [(UASharingAdvertiser *)self nextScheduleUpdate];
  v57 = sub_100061EA4([v55 nextTime]);
  v54 = [(UASharingAdvertiser *)self periodicUpdate];
  v15 = [v54 runCount];
  v16 = [(UASharingAdvertiser *)self periodicUpdate];
  v17 = sub_100061EA4([v16 nextTime]);
  if ([(UASharingAdvertiser *)self userIsCurrent])
  {
    v18 = @"(current) ";
  }

  else
  {
    v18 = &stru_1000C67D0;
  }

  v19 = [(UASharingAdvertiser *)self userIsCurrent];
  v20 = &stru_1000C67D0;
  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v53 = [(UASharingAdvertiser *)self lastUserActiveTime];
    if (v53)
    {
      v52 = [(UASharingAdvertiser *)self lastUserActiveTime];
      v20 = sub_100009AC0(v52);
      v21 = 1;
    }

    else
    {
      v21 = 0;
      v53 = 0;
    }
  }

  v24 = +[UAUserActivityDefaults sharedDefaults];
  if ([v24 clipboardSharingEnabled])
  {
    v25 = [(UASharingAdvertiser *)self pasteboardAvailible];
    v26 = @"+ Advertising Local Pasteboard.";
    if (!v25)
    {
      v26 = &stru_1000C67D0;
    }
  }

  else
  {
    v26 = @"ClipboardSharingDisabled";
  }

  [v59 appendFormat:@", run=%ld times/%@ periodic=%ld/%@ %@%@%@\n", v14, v57, v15, v17, v18, v20, v26];

  if (v21)
  {
  }

  if ((v19 & 1) == 0)
  {
  }

  v27 = [(UASharingAdvertiser *)self currentAdvertisedItem];
  if (v27 && ([(UASharingAdvertiser *)self currentAdvertisementPayload], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
  {
    v29 = [v27 activityType];
    v30 = [v27 dynamicActivityType];
    if (v30)
    {
      v14 = [v27 dynamicActivityType];
      v58 = [NSString stringWithFormat:@":%@", v14];
    }

    else
    {
      v58 = &stru_1000C67D0;
    }

    v32 = [v27 uuid];
    v33 = [v32 UUIDString];
    v34 = [(UASharingAdvertiser *)self currentAdvertisementPayload];
    v35 = [(UASharingAdvertiser *)self lastAdvertismentTime];
    v36 = sub_100009AC0(v35);
    [v59 appendFormat:@" ADVERTISING: %@%@ %@ /, data=%@, at %@\n", v29, v58, v33, v34, v36];

    if (!v30)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v31 = [(UASharingAdvertiser *)self lastAdvertisementPayload];

    if (!v31)
    {
      [v59 appendString:@" LAST: nil\n"];
      goto LABEL_44;
    }

    v29 = [(UASharingAdvertiser *)self lastAdvertisementPayload];
    v30 = [(UASharingAdvertiser *)self lastAdvertismentTime];
    v14 = sub_100009AC0(v30);
    [v59 appendFormat:@" LAST:%@, at %@\n", v29, v14];
  }

LABEL_43:
LABEL_44:
  v37 = [(UASharingAdvertiser *)self sfActivityAdvertiser];

  if (v37)
  {
    v38 = dispatch_group_create();
    dispatch_group_enter(v38);
    v39 = [(UASharingAdvertiser *)self sfActivityAdvertiser];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100070BB4;
    v64[3] = &unk_1000C6128;
    v40 = v59;
    v65 = v40;
    v66 = self;
    v41 = v38;
    v67 = v41;
    [v39 fetchLoginIDWithCompletionHandler:v64];

    dispatch_group_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
    v42 = +[NSMutableString string];
    v43 = +[NSMutableString string];
    dispatch_group_enter(v41);
    v44 = [(UASharingAdvertiser *)self sfActivityAdvertiser];
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
    [v44 fetchSFPeerDevicesWithCompletionHandler:v60];

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