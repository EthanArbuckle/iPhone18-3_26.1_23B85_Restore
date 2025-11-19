@interface UASharingReceiver
- (BOOL)_addItem:(id)a3 scheduleUpdates:(BOOL)a4;
- (BOOL)active;
- (BOOL)addSFActivityScanner:(id)a3;
- (BOOL)fetchMoreAppSuggestions;
- (BOOL)receiving;
- (BOOL)removeItem:(id)a3;
- (BOOL)removeSFActivityScanner:(id)a3;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (NSSet)activeDevices;
- (NSSet)sfActivityScanners;
- (UASharingReceiver)initWithManager:(id)a3;
- (id)receivedItems;
- (id)sfActivityScanner;
- (id)sharingBTLESuggestedItemForAdvertisementPayload:(id)a3 forDevice:(id)a4;
- (id)statusString;
- (void)activityScanner:(id)a3 foundDeviceWithDevice:(id)a4;
- (void)activityScanner:(id)a3 lostDeviceWithDevice:(id)a4;
- (void)activityScanner:(id)a3 receivedAdvertisement:(id)a4;
- (void)addNewItemsFromPayloads:(id)a3 device:(id)a4 scanner:(id)a5 force:(BOOL)a6;
- (void)clearRemotePasteboardAvailable:(id)a3;
- (void)fetchMoreAppSuggestionsFromDevice:(id)a3;
- (void)foundDevice:(id)a3;
- (void)lostDevice:(id)a3;
- (void)lostDeviceWithUUID:(id)a3;
- (void)periodicCleanupFunc;
- (void)receiveAdvertisement:(id)a3 scanner:(id)a4;
- (void)removeAllFromDevice:(id)a3;
- (void)setScanningForTypes:(id)a3;
@end

@implementation UASharingReceiver

- (NSSet)sfActivityScanners
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_sfActivityScanners copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)active
{
  v5.receiver = self;
  v5.super_class = UASharingReceiver;
  if (![(UACornerActionManagerHandler *)&v5 active])
  {
    return 0;
  }

  v2 = +[UAUserActivityDefaults sharedDefaults];
  v3 = [v2 activityBTLESharingEnabled];

  return v3;
}

- (id)receivedItems
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_receivedItems allObjects];
  objc_sync_exit(v2);

  return v3;
}

- (UASharingReceiver)initWithManager:(id)a3
{
  v20.receiver = self;
  v20.super_class = UASharingReceiver;
  v3 = [(UAReceiver *)&v20 initWithManager:a3 name:@"SharingReceiver"];
  if (v3)
  {
    v4 = +[NSMutableSet set];
    sfActivityScanners = v3->_sfActivityScanners;
    v3->_sfActivityScanners = v4;

    v6 = +[NSMutableSet set];
    activeDevices = v3->_activeDevices;
    v3->_activeDevices = v6;

    v8 = +[NSMutableSet set];
    receivedItems = v3->_receivedItems;
    v3->_receivedItems = v8;

    v10 = +[NSMutableSet set];
    recentlyLostDeviceIDs = v3->_recentlyLostDeviceIDs;
    v3->_recentlyLostDeviceIDs = v10;

    v12 = [(UACornerActionManagerHandler *)v3 manager];
    v13 = [v12 mainDispatchQ];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000490FC;
    v18[3] = &unk_1000C4CC0;
    v14 = v3;
    v19 = v14;
    v15 = [UADispatchScheduler dispatchScheduler:@"SharingReceiverPeriodic" frequency:v13 queue:v18 block:0.0];
    periodicCleanup = v14->_periodicCleanup;
    v14->_periodicCleanup = v15;
  }

  return v3;
}

- (BOOL)receiving
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_receivedItems count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)setScanningForTypes:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 description];
    v7 = sub_100009684(v6);
    *buf = 138543362;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setScanningForTypes:%{public}@", buf, 0xCu);
  }

  if (v4 || ([(UAReceiver *)self scanningForTypes], v5 = objc_claimAutoreleasedReturnValue(), ![v5 count]))
  {
    v8 = [(UAReceiver *)self scanningForTypes];
    v9 = [v4 isEqual:v8];

    if (v4)
    {
      if (v9)
      {
        goto LABEL_37;
      }

      goto LABEL_12;
    }

    if (v9)
    {
      v4 = 0;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v10 = +[NSSet set];

  v4 = v10;
LABEL_12:
  v29.receiver = self;
  v29.super_class = UASharingReceiver;
  [(UAReceiver *)&v29 setScanningForTypes:v4];
  if ([v4 containsObject:off_1000E50F0])
  {
    v11 = "userActivity ";
  }

  else
  {
    v11 = "";
  }

  if ([v4 containsObject:off_1000E50F8])
  {
    v12 = "clipboard ";
  }

  else
  {
    v12 = "";
  }

  if ([v4 count])
  {
    v13 = "";
  }

  else
  {
    v13 = "-";
  }

  v14 = [(UACornerActionManagerHandler *)self suspended];
  v15 = " SUSPENDED";
  if (!v14)
  {
    v15 = "";
  }

  v16 = [NSString stringWithFormat:@"SCANNING:%s%s%s%s", v11, v12, v13, v15];
  [ActivityManagerDebuggingManager appendRecentAction:v16];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [(UASharingReceiver *)self sfActivityScanners];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if ([(UACornerActionManagerHandler *)self suspended])
        {
          sub_100008784(v22, 0);
        }

        else
        {
          v23 = [(UACornerActionManagerHandler *)self manager];
          if ([v23 activityReceivingAllowed])
          {
            v24 = v4;
          }

          else
          {
            v24 = 0;
          }

          sub_100008784(v22, v24);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

LABEL_37:
}

- (NSSet)activeDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_activeDevices copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)addSFActivityScanner:(id)a3
{
  v5 = a3;
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UASharingReceiver, adding activity scanner %{public}@.", &v14, 0xCu);
  }

  if (v5)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(NSMutableSet *)v7->_sfActivityScanners containsObject:v5];
    if ((v8 & 1) == 0)
    {
      [(NSMutableSet *)v7->_sfActivityScanners addObject:v5];
      v9 = [(UACornerActionManagerHandler *)v7 suspended];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
      }

      else
      {
        v3 = [(UACornerActionManagerHandler *)v7 manager];
        if ([v3 activityReceivingAllowed])
        {
          v11 = [(UAReceiver *)v7 scanningForTypes];
          v10 = 1;
        }

        else
        {
          v10 = 0;
          v11 = 0;
        }
      }

      sub_100008784(v5, v11);
      if (v10)
      {
      }

      if ((v9 & 1) == 0)
      {
      }
    }

    objc_sync_exit(v7);

    v12 = v8 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeSFActivityScanner:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "UASharingReceiver, removing activity scanner %{public}@.", &v9, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableSet *)v6->_sfActivityScanners containsObject:v4];
  if (v7)
  {
    sub_100008784(v4, 0);
    [(NSMutableSet *)v6->_sfActivityScanners removeObject:v4];
  }

  objc_sync_exit(v6);

  return v7;
}

- (id)sfActivityScanner
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UASharingReceiver *)self sfActivityScanners];
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

- (BOOL)suspend
{
  v17.receiver = self;
  v17.super_class = UASharingReceiver;
  v3 = [(UACornerActionManagerHandler *)&v17 suspend];
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(UASharingReceiver *)self sfActivityScanners];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = sub_100001A30(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v19 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UASharingReceiver, suspending activity scanner %{public}@.", buf, 0xCu);
          }

          sub_100008784(v9, 0);
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v6);
    }

    v11 = [(UASharingReceiver *)self periodicCleanup];
    [v11 suspend];
  }

  return v3;
}

- (BOOL)resume
{
  v18.receiver = self;
  v18.super_class = UASharingReceiver;
  v3 = [(UACornerActionManagerHandler *)&v18 resume];
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(UASharingReceiver *)self sfActivityScanners];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
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
          v10 = sub_100001A30(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UASharingReceiver, resuming activity scanner %{public}@.", buf, 0xCu);
          }

          v11 = [(UAReceiver *)self scanningForTypes];
          sub_100008784(v9, v11);
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = [(UASharingReceiver *)self periodicCleanup];
    [v12 resume];
  }

  return v3;
}

- (void)activityScanner:(id)a3 foundDeviceWithDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 uniqueID];
    *buf = 138478083;
    v16 = v9;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "foundDevice, deviceIdentifier=%{private}@ scanner=%{public}@", buf, 0x16u);
  }

  v10 = [(UACornerActionManagerHandler *)self manager];
  v11 = [v10 mainDispatchQ];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049DFC;
  v13[3] = &unk_1000C5B80;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  dispatch_async(v11, v13);
}

- (void)foundDevice:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    *buf = 138477827;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "foundDevice, deviceIdentifier=%{private}@", buf, 0xCu);
  }

  if (v4)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(UASharingReceiver *)v7 activeDevices];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      recentlyLostDeviceIDs = v7->_recentlyLostDeviceIDs;
      v11 = [v4 uniqueID];
      LODWORD(recentlyLostDeviceIDs) = [(NSMutableSet *)recentlyLostDeviceIDs containsObject:v11];

      if (recentlyLostDeviceIDs)
      {
        v12 = v7->_recentlyLostDeviceIDs;
        v13 = [v4 uniqueID];
        [(NSMutableSet *)v12 removeObject:v13];
      }
    }

    else
    {
      v14 = [v4 uniqueID];
      v15 = [v4 name];
      v16 = [v4 isDefaultPairedDevice];
      v17 = "";
      if (v16)
      {
        v17 = " defaultPaired";
      }

      v18 = [NSString stringWithFormat:@"SCANNING:Found device %@ %@%s", v14, v15, v17];
      [ActivityManagerDebuggingManager appendRecentAction:v18];

      [(NSMutableSet *)v7->_activeDevices addObject:v4];
    }

    objc_sync_exit(v7);
  }
}

- (void)activityScanner:(id)a3 lostDeviceWithDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 uniqueID];
    *buf = 138478083;
    v18 = v9;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "lostDevice, deviceIdentifier=%{private}@ scanner=%{public}@", buf, 0x16u);
  }

  recentlyLostDeviceIDs = self->_recentlyLostDeviceIDs;
  v11 = [v7 uniqueID];
  [(NSMutableSet *)recentlyLostDeviceIDs addObject:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004A1D0;
  v14[3] = &unk_1000C5D20;
  v15 = v7;
  v16 = self;
  v12 = v7;
  v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v14 block:5.0];
}

- (void)lostDevice:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueID];
    *buf = 138477827;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lostDevice, deviceIdentifier=%{private}@", buf, 0xCu);
  }

  v7 = [v4 uniqueID];

  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [v4 uniqueID];
    v10 = [v4 name];
    v11 = [v4 isDefaultPairedDevice];
    v12 = "";
    if (v11)
    {
      v12 = " defaultPaired";
    }

    v13 = [NSString stringWithFormat:@"SCANNING:Lost device %@ %@%s", v9, v10, v12];
    [ActivityManagerDebuggingManager appendRecentAction:v13];

    [(NSMutableSet *)v8->_activeDevices removeObject:v4];
    v14 = [v4 uniqueID];
    [(UASharingReceiver *)v8 removeAllFromDevice:v14];

    v15 = +[UAUserActivityDefaults sharedDefaults];
    if ([v15 ignoreLostDevice])
    {
    }

    else
    {
      v16 = [v4 uniqueID];
      v17 = [(UASharingReceiver *)v8 lastSeenPasteboardDevice];
      v18 = [v17 uniqueID];
      v19 = [v16 isEqualToString:v18];

      if (v19)
      {
        [(UASharingReceiver *)v8 setLastSeenPasteboardDevice:0];
        v20 = [(UACornerActionManagerHandler *)v8 manager];
        v21 = [v20 pasteboardController];
        [v21 setRemotePasteboardAvalibility:0 withDataRequester:0];

        v22 = +[UADiagnosticManager sharedManager];
        [v22 submitRemotePasteboardBecameUnavailable:1];

        v23 = [(UASharingReceiver *)v8 remotePboardTimer];
        [v23 invalidate];

        [(UASharingReceiver *)v8 setRemotePboardTimer:0];
      }
    }

    objc_sync_exit(v8);
  }
}

- (void)lostDeviceWithUUID:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UASharingReceiver *)self activeDevices];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [(UASharingReceiver *)self lostDevice:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_addItem:(id)a3 scheduleUpdates:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v38 = v4;
  obj = self;
  objc_sync_enter(obj);
  v7 = [v6 bundleIdentifier];
  v8 = [v6 peerDevice];
  v9 = [v8 uniqueID];
  v41 = [v7 stringByAppendingString:v9];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = obj->_receivedItems;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (!v11)
  {

    v42 = 0;
LABEL_22:
    [(NSMutableSet *)obj->_receivedItems addObject:v6];
    v33 = 1;
    goto LABEL_23;
  }

  v42 = 0;
  v40 = 0;
  v12 = *v44;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v43 + 1) + 8 * i);
      v15 = [v14 uuid];
      v16 = [v6 uuid];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        v18 = [v6 removeAfter];
        [v14 setRemoveAfter:v18];

        v19 = [v6 when];
        [v14 setWhen:v19];

        v20 = [v6 currentUntilDate];
        [v14 setCurrentUntilDate:v20];

        [v14 setActive:{objc_msgSend(v6, "active")}];
        v40 = 1;
      }

      else
      {
        [v14 resignCurrent];
        v21 = [v14 bundleIdentifier];
        v22 = [v14 peerDevice];
        v23 = [v22 uniqueID];
        v24 = [v21 stringByAppendingString:v23];

        if ([v24 isEqualToString:v41])
        {
          v25 = v14;

          v42 = v25;
        }
      }
    }

    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v55 count:16];
  }

  while (v11);

  if (v42)
  {
    v26 = sub_100001A30(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v42 uuid];
      v28 = [v27 UUIDString];
      v29 = [v6 statusString];
      v30 = [v6 uuid];
      v31 = [v30 UUIDString];
      v32 = [v6 statusString];
      *buf = 138544131;
      v48 = v28;
      v49 = 2113;
      v50 = v29;
      v51 = 2114;
      v52 = v31;
      v53 = 2113;
      v54 = v32;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "removing item %{public}@/%{private}@ because another item (%{public}@/%{private}@) with the same bundleID and deviceID is being added", buf, 0x2Au);
    }

    [(NSMutableSet *)obj->_receivedItems removeObject:v42];
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

  v33 = 0;
LABEL_23:
  if (v38)
  {
    v34 = [(UACornerActionManagerHandler *)obj manager];
    [v34 scheduleBestAppDetermination];

    v35 = [(UASharingReceiver *)obj periodicCleanup];
    v36 = [v6 removeAfter];
    [v35 scheduleAt:v36];
  }

  objc_sync_exit(obj);
LABEL_26:

  return v33;
}

- (BOOL)removeItem:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)v5->_receivedItems containsObject:v4];
  if (v6)
  {
    [(NSMutableSet *)v5->_receivedItems removeObject:v4];
    v7 = [(UACornerActionManagerHandler *)v5 manager];
    [v7 scheduleBestAppDetermination];
  }

  objc_sync_exit(v5);

  return v6;
}

- (void)removeAllFromDevice:(id)a3
{
  v47 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [(UASharingReceiver *)v4 receivedItems];
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
  p_isa = &v4->super.super.super.isa;
  if (!v6)
  {

    objc_sync_exit(v4);
    goto LABEL_28;
  }

  v9 = 0;
  v46 = *v49;
  *&v7 = 138543618;
  v44 = v7;
  obj = v5;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      v12 = [v11 peerDevice];
      v13 = [v12 uniqueID];
      v14 = [v13 isEqual:v47];

      if (v14)
      {
        v15 = +[NSDate date];
        if (([v11 isPayloadRequested] & 1) == 0 && !objc_msgSend(v11, "isPayloadAvailable"))
        {
          goto LABEL_11;
        }

        v16 = [v11 removeAfter];
        if (!v16)
        {
          goto LABEL_11;
        }

        [v15 timeIntervalSinceReferenceDate];
        v18 = v17;
        v19 = [v11 removeAfter];
        [v19 timeIntervalSinceReferenceDate];
        v21 = v18 > v20;

        if (!v21)
        {
          v25 = [v11 currentUntilDate];
          if (!v25)
          {
            goto LABEL_16;
          }

          [v15 timeIntervalSinceReferenceDate];
          v27 = v26;
          v28 = [v11 currentUntilDate];
          [v28 timeIntervalSinceReferenceDate];
          v30 = v27 > v29;

          if (!v30)
          {
LABEL_16:
            v31 = [NSDate dateWithTimeInterval:v15 sinceDate:-1.0];
            [v11 setCurrentUntilDate:v31];
          }

          v32 = +[UAUserActivityDefaults sharedDefaults];
          [v32 receivedBTLEItemTimeToLiveAfterDeviceLostIfPayloadIsQueued];
          v33 = [NSDate dateWithTimeIntervalSinceNow:?];

          [v33 timeIntervalSinceReferenceDate];
          v35 = v34;
          v36 = [v11 removeAfter];
          [v36 timeIntervalSinceReferenceDate];
          LOBYTE(v32) = v35 > v37;

          if ((v32 & 1) == 0)
          {
            [v11 setRemoveAfter:v33];
          }

          v38 = sub_100001A30(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = [v11 uuid];
            v40 = [v39 UUIDString];
            v41 = [v11 removeAfter];
            *buf = v44;
            v53 = v40;
            v54 = 2114;
            v55 = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Retaining %{public}@ in _receivedItems because it's .payloadRequested or .payloadAvailable, so that it remains available for a bit, until %{public}@.", buf, 0x16u);
          }

          v42 = [p_isa periodicCleanup];
          v43 = [v11 removeAfter];
          [v42 scheduleAt:v43];
        }

        else
        {
LABEL_11:
          v22 = sub_100001A30(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v11 uuid];
            v24 = [v23 UUIDString];
            *buf = 138543619;
            v53 = v24;
            v54 = 2113;
            v55 = v47;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "REMOVING: %{public}@ because it's on device %{private}@", buf, 0x16u);
          }

          [p_isa[8] removeObject:v11];
        }

        v9 = 1;
      }
    }

    v6 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v6);

  objc_sync_exit(p_isa);
  if (v9)
  {
    p_isa = [p_isa manager];
    [p_isa scheduleBestAppDetermination];
LABEL_28:
  }
}

- (void)periodicCleanupFunc
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SharingBTLEReceiver: Running periodicCleanupFunc to check for received items whose .removeAfter has passed.", buf, 2u);
  }

  v23 = +[NSDate date];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(UASharingReceiver *)v2 receivedItems];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138543618;
    v22 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 removeAfter];
        if (!v10)
        {
          goto LABEL_11;
        }

        v11 = [v9 removeAfter];
        [v11 timeIntervalSinceReferenceDate];
        v13 = v12;
        [v23 timeIntervalSinceReferenceDate];
        v15 = v13 > v14;

        if (v15)
        {
          v16 = [(UASharingReceiver *)v2 periodicCleanup];
          v17 = [v9 removeAfter];
          [v16 scheduleAt:v17];
        }

        else
        {
LABEL_11:
          v18 = sub_100001A30(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v9 uuid];
            v20 = [v19 UUIDString];
            v21 = [v9 removeAfter];
            *buf = v22;
            v29 = v20;
            v30 = 2114;
            v31 = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Removing %{public}@ from .receivedItems because .removeAfter, %{public}@ has expired.", buf, 0x16u);
          }

          [(UASharingReceiver *)v2 removeItem:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);
}

- (id)sharingBTLESuggestedItemForAdvertisementPayload:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(UASharingReceiver *)self receivedItems];
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (!v7)
        {
          goto LABEL_19;
        }

        v12 = [v7 uniqueID];
        v13 = [v11 peerDevice];
        v14 = [v13 uniqueID];
        v15 = [v12 isEqual:v14];

        if (v15)
        {
LABEL_19:
          if (!v6 || ([v11 advertisementPayload], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v6, "isEqualHashedPayloadBytes:", v16), v16, v17))
          {
            v8 = v11;
            goto LABEL_14;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (void)activityScanner:(id)a3 receivedAdvertisement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v17 = v7;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "activityScanner:receivedAdvertisement: %{private}@,%{public}@)", buf, 0x16u);
  }

  v9 = [(UACornerActionManagerHandler *)self manager];
  v10 = [v9 mainDispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BB94;
  block[3] = &unk_1000C4EE0;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_async(v10, block);
}

- (void)receiveAdvertisement:(id)a3 scanner:(id)a4
{
  v261 = a3;
  v258 = a4;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v261 advertisementPayload];
    v7 = sub_100006EF4(v6);
    v8 = [v261 options];
    v9 = [v8 description];
    v10 = sub_100009684(v9);
    v11 = [v261 device];
    v12 = [v11 name];
    v13 = [v261 device];
    v14 = [v13 uniqueID];
    *buf = 138544131;
    *v283 = v7;
    *&v283[8] = 2114;
    *&v283[10] = v10;
    *&v283[18] = 2113;
    *v284 = v12;
    *&v284[8] = 2113;
    *v285 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Received Ad: %{public}@ opts=%{public}@ from %{private}@/%{private}@", buf, 0x2Au);
  }

  if (!v261)
  {
    sub_10007BEBC();
  }

  v15 = [v261 device];
  if (!v15)
  {
    sub_10007BE90();
  }

  v16 = [(UACornerActionManagerHandler *)self manager];
  v17 = [v16 activityReceivingAllowed];

  if (v17)
  {
    v18 = [(UACornerActionManagerHandler *)self manager];
    v19 = [v18 isSharingModeBlockingReceiving];

    if (v19)
    {
      oslog = sub_100001A30(0);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v20 = [v261 advertisementPayload];
        v21 = sub_100006EF4(v20);
        v22 = [v261 device];
        v23 = [v22 uniqueID];
        *buf = 138543619;
        *v283 = v21;
        *&v283[8] = 2113;
        *&v283[10] = v23;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Ignoring received advertisement because we are currently in a sharing mode that disallows it, %{public}@ from %{private}@", buf, 0x16u);
      }

      goto LABEL_47;
    }

    v28 = [(UASharingReceiver *)self activeDevices];
    v29 = [v261 device];
    v30 = [v28 containsObject:v29];

    if ((v30 & 1) == 0)
    {
      v31 = sub_100001A30(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v261 device];
        *buf = 138477827;
        *v283 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "SIMULATING foundDeviceForIdentifier: %{private}@", buf, 0xCu);
      }

      v33 = [v261 device];
      [(UASharingReceiver *)self foundDevice:v33];
    }

    v34 = [v261 device];
    v35 = [v34 productBuildVersion];
    v36 = [v35 substringToIndex:3];
    v37 = [v36 integerValue];

    v38 = [v261 device];
    oslog = [v38 modelIdentifier];

    v39 = +[UAUserActivityDefaults sharedDefaults];
    if ([v39 multiHandoffEnabled])
    {
      v40 = [oslog containsString:@"Mac"];
      if (v37 > 17)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      if (v41 & 1) != 0 || ((v42 = [oslog containsString:@"iPhone"], v37 > 15) ? (v43 = v42) : (v43 = 0), (v43))
      {
        v44 = 1;
      }

      else
      {
        v44 = [oslog containsString:@"iPad"]& (v37 > 15);
      }
    }

    else
    {
      v44 = 0;
    }

    v45 = [v261 advertisementPayload];
    if (!v45 || ([v261 advertisementPayload], v46 = objc_claimAutoreleasedReturnValue(), v47 = sub_100064E08(v46), v46, v45, v47))
    {
      v48 = sub_100001A30(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Received advertisement.advertisementPayload == nil", buf, 2u);
      }

      v49 = [v261 device];
      v262 = [v49 uniqueID];

      if (v44 && (+[UAUserActivityDefaults sharedDefaults](UAUserActivityDefaults, "sharedDefaults"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 multiHandoffEnabled], v50, v51))
      {
        v52 = self;
        objc_sync_enter(v52);
        v277 = 0u;
        v278 = 0u;
        v279 = 0u;
        v280 = 0u;
        v53 = v52->_receivedItems;
        v54 = [(NSMutableSet *)v53 countByEnumeratingWithState:&v277 objects:v291 count:16];
        if (v54)
        {
          v55 = *v278;
          do
          {
            for (i = 0; i != v54; i = i + 1)
            {
              if (*v278 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v277 + 1) + 8 * i);
              v58 = [v57 peerDevice];
              v59 = [v58 uniqueID];
              v60 = [v59 isEqualToString:v262];

              if (v60)
              {
                [v57 setActive:0];
              }
            }

            v54 = [(NSMutableSet *)v53 countByEnumeratingWithState:&v277 objects:v291 count:16];
          }

          while (v54);
        }

        objc_sync_exit(v52);
      }

      else
      {
        [(UASharingReceiver *)self removeAllFromDevice:v262];
      }

      v61 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
      v62 = [v61 uniqueID];
      v63 = [v261 device];
      v64 = [v63 uniqueID];
      v65 = [v62 isEqualToString:v64];

      if (v65)
      {
        [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
        v66 = [(UACornerActionManagerHandler *)self manager];
        v67 = [v66 pasteboardController];
        [v67 setRemotePasteboardAvalibility:0 withDataRequester:0];

        v68 = +[UADiagnosticManager sharedManager];
        [v68 submitRemotePasteboardBecameUnavailable:3];

        v69 = [(UASharingReceiver *)self remotePboardTimer];
        [v69 invalidate];

        [(UASharingReceiver *)self setRemotePboardTimer:0];
      }

      v263 = [(UACornerActionManagerHandler *)self manager];
      [v263 scheduleBestAppDetermination];
      v261 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v262 = [[SharingBTLEAdvertisementPayload alloc] initWithSFActivityAdvertisement:v261];
    v70 = [(SharingBTLEAdvertisementPayload *)v262 options];
    v71 = [v70 objectForKeyedSubscript:@"UAPasteboardAvailable"];
    if ([v71 BOOLValue])
    {
      v72 = +[UAUserActivityDefaults sharedDefaults];
      v73 = [v72 clipboardSharingEnabled];

      if (v73)
      {
        v74 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[PBOARD] Received pboard available advertisement", buf, 2u);
        }

        v75 = [(SharingBTLEAdvertisementPayload *)v262 options];
        v76 = [v75 objectForKeyedSubscript:@"UAPasteboardVersionBit"];
        v77 = [v76 BOOLValue];

        v78 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
        v79 = [v261 device];
        LODWORD(v75) = [v78 isEqual:v79];

        v80 = sub_100001A30(@"pasteboard-server");
        v81 = v77;
        v82 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);
        if (!v75)
        {
          if (v82)
          {
            *buf = 0;
            v83 = "[PBOARD] Ad is from new device, notify client";
            goto LABEL_67;
          }

LABEL_68:

          v95 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "[PBOARD] Notify client of new remote pboard and reset timmer", buf, 2u);
          }

          v96 = [v261 device];
          [(UASharingReceiver *)self setLastSeenPasteboardDevice:v96];

          [(UASharingReceiver *)self setLastSeenPasteboardVersionBit:v81];
          v97 = objc_alloc_init(UASharedPasteboardDataRequester);
          v98 = [v261 device];
          [(UASharedPasteboardDataRequester *)v97 setPeer:v98];

          [(UASharedPasteboardDataRequester *)v97 setScanner:v258];
          v99 = [(UACornerActionManagerHandler *)self manager];
          v100 = [v99 pasteboardController];
          [v100 setRemotePasteboardAvalibility:1 withDataRequester:v97];

          v101 = +[UADiagnosticManager sharedManager];
          [v101 submitRemotePasteboardBecameAvailable];

          v102 = +[UAUserActivityDefaults sharedDefaults];
          [v102 remotePasteboardAvailableTimeout];
          v104 = v103;

          v105 = [(UASharingReceiver *)self remotePboardTimer];
          [v105 invalidate];

          v106 = [NSTimer timerWithTimeInterval:self target:"clearRemotePasteboardAvailable:" selector:0 userInfo:0 repeats:v104];
          [(UASharingReceiver *)self setRemotePboardTimer:v106];

          v107 = +[NSRunLoop mainRunLoop];
          v108 = [(UASharingReceiver *)self remotePboardTimer];
          [v107 addTimer:v108 forMode:NSRunLoopCommonModes];

          goto LABEL_71;
        }

        if (v82)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[PBOARD] Ad is from last seen device", buf, 2u);
        }

        if ([(UASharingReceiver *)self lastSeenPasteboardVersionBit]!= v77)
        {
          v80 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v83 = "[PBOARD] Pboard version bit flipped, notify client";
LABEL_67:
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, v83, buf, 2u);
            goto LABEL_68;
          }

          goto LABEL_68;
        }

LABEL_71:
        v109 = sub_100001A30(0);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v110 = [v261 device];
          v111 = [v110 name];
          v112 = [v261 device];
          v113 = [v112 uniqueID];
          *buf = 138543875;
          *v283 = v262;
          *&v283[8] = 2113;
          *&v283[10] = v111;
          *&v283[18] = 2113;
          *v284 = v113;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, " -- Looking for activity matching advertisingPayload %{public}@, from %{private}@/%{private}@", buf, 0x20u);
        }

        v114 = [v261 device];
        v115 = [(UASharingReceiver *)self sharingBTLESuggestedItemForAdvertisementPayload:v262 forDevice:v114];

        if (v115)
        {
          v116 = [v115 bundleIdentifier];
          v117 = v116 == 0;

          if (!v117)
          {
LABEL_75:
            v263 = v115;
LABEL_76:
            v118 = [(SharingBTLEAdvertisementPayload *)v262 description];
            v119 = [v263 activityType];
            v120 = [v263 dynamicActivityType];
            v121 = [v261 device];
            v122 = [v121 name];
            v123 = [v261 device];
            v124 = [v123 uniqueID];
            v125 = [NSString stringWithFormat:@"SCANNING:Received %@ %@ %@ from %@/%@", v118, v119, v120, v122, v124];
            [ActivityManagerDebuggingManager appendRecentAction:v125];

            LODWORD(v125) = -[SharingBTLEAdvertisementPayload compareOptionBits:](v262, "compareOptionBits:", [v263 optionBits]);
            v126 = sub_100001A30(0);
            v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG);
            if (v125)
            {
              if (v127)
              {
                v128 = [v261 advertisementPayload];
                v129 = sub_100006EF4(v128);
                v130 = [v261 device];
                v131 = [v130 uniqueID];
                v132 = [v263 uuid];
                v133 = [v132 UUIDString];
                *buf = 138544131;
                *v283 = v129;
                *&v283[8] = 2113;
                *&v283[10] = v131;
                *&v283[18] = 2114;
                *v284 = v133;
                *&v284[8] = 2113;
                *v285 = v263;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, " -- Found matching advertisingPayload to item already received from this device, %{public}@/%{private}@, so using it. %{public}@/%{private}@", buf, 0x2Au);
              }

              if ([v263 isPayloadAvailable])
              {
                v134 = [v263 advertisementPayload];
                v135 = [v134 time];
                v136 = [(SharingBTLEAdvertisementPayload *)v262 time];
                v137 = [v135 isEqual:v136];

                if ((v137 & 1) == 0)
                {
                  v138 = sub_100001A30(0);
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    v139 = [v263 uuid];
                    v140 = [v139 UUIDString];
                    *buf = 138543619;
                    *v283 = v140;
                    *&v283[8] = 2113;
                    *&v283[10] = v263;
                    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, " -- Clearing payload of item %{public}@/%{private}@ because the last active time from that device has changed.", buf, 0x16u);
                  }

                  v141 = [NSDate dateWithTimeIntervalSinceNow:8.0];
                  [v263 setDontPrefetchBefore:v141];

                  [v263 clearPayload];
                }
              }

              v142 = self;
              objc_sync_enter(v142);
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v143 = v142->_receivedItems;
              v144 = [(NSMutableSet *)v143 countByEnumeratingWithState:&v273 objects:v290 count:16];
              if (v144)
              {
                v145 = *v274;
                do
                {
                  for (j = 0; j != v144; j = j + 1)
                  {
                    if (*v274 != v145)
                    {
                      objc_enumerationMutation(v143);
                    }

                    [*(*(&v273 + 1) + 8 * j) resignCurrent];
                  }

                  v144 = [(NSMutableSet *)v143 countByEnumeratingWithState:&v273 objects:v290 count:16];
                }

                while (v144);
              }

              objc_sync_exit(v142);
              [v263 updateFromSFAdvertisement:v261];
              v147 = [(UACornerActionManagerHandler *)v142 manager];
              [v147 scheduleBestAppDetermination];
              goto LABEL_108;
            }

            if (v127)
            {
              obja = [v263 optionBits];
              v148 = [v263 options];
              v149 = [v148 description];
              v150 = sub_100009684(v149);
              v253 = [(SharingBTLEAdvertisementPayload *)v262 optionBits];
              v151 = [(SharingBTLEAdvertisementPayload *)v262 options];
              v152 = [v151 description];
              v153 = sub_100009684(v152);
              v154 = [v261 advertisementPayload];
              v155 = sub_100006EF4(v154);
              *buf = 67110403;
              *v283 = obja;
              *&v283[4] = 2114;
              *&v283[6] = v150;
              *&v283[14] = 1024;
              *&v283[16] = v253;
              *v284 = 2114;
              *&v284[2] = v153;
              *v285 = 2114;
              *&v285[2] = v155;
              *v286 = 2113;
              *&v286[2] = v263;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, " -- Because the optionBits in the packet changed, from %x%{public}@ to %x%{public}@, discarding current item and starting fresh, %{public}@ / %{private}@", buf, 0x36u);
            }

            [(UASharingReceiver *)self removeItem:v263];
            v147 = v263;
            goto LABEL_107;
          }

          v156 = [v261 advertisementPayload];
          v157 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:v261 optionBits:sub_100064DA0(v156) scanner:v258 receiver:self];

          v158 = [v157 bundleIdentifier];

          if (!v158)
          {

            goto LABEL_75;
          }

          v159 = sub_100001A30(0);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            v160 = [v157 bundleIdentifier];
            *buf = 138543619;
            *v283 = v262;
            *&v283[8] = 2113;
            *&v283[10] = v160;
            _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, "SFRECEIVER: Replacing received advertisement %{public}@ because it matches a new bundleIdentifier %{private}@", buf, 0x16u);
          }

          v263 = v157;
          if (v263)
          {
            goto LABEL_76;
          }
        }

        if ([(SharingBTLEAdvertisementPayload *)v262 advertisementKind]== 2)
        {
          v161 = [v261 device];
          v147 = [(UASharingReceiver *)self sharingBTLESuggestedItemForAdvertisementPayload:0 forDevice:v161];

          if (v147)
          {
            v162 = [v147 advertisementPayload];
            v163 = [v162 advertisementKind] == 2;

            if (v163)
            {
              v164 = [v261 advertisementPayload];
              v165 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:v261 optionBits:sub_100064DA0(v164) scanner:v258 receiver:self];

              v166 = [v165 bundleIdentifier];
              v167 = [v147 bundleIdentifier];
              LODWORD(v164) = [v166 isEqual:v167];

              v168 = sub_100001A30(0);
              v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG);
              if (v164)
              {
                if (v169)
                {
                  v170 = [0 bundleIdentifier];
                  v171 = [v261 advertisementPayload];
                  v172 = sub_100006EF4(v171);
                  v173 = [v261 device];
                  v174 = [v173 uniqueID];
                  *buf = 138478595;
                  *v283 = v170;
                  *&v283[8] = 2114;
                  *&v283[10] = v172;
                  *&v283[18] = 2113;
                  *v284 = v174;
                  *&v284[8] = 2113;
                  *v285 = 0;
                  _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEBUG, " -- Matching dns- item to previously received one, mapping to %{private}@, for item already received from this device, %{public}@/%{private}@, so using it. %{private}@", buf, 0x2Au);
                }

                v263 = v147;
                [v263 updateFromSFAdvertisement:v261];
                v175 = [(UACornerActionManagerHandler *)self manager];
                [v175 scheduleBestAppDetermination];
              }

              else
              {
                if (v169)
                {
                  v249 = [v147 advertisementPayload];
                  *buf = 138543875;
                  *v283 = v249;
                  *&v283[8] = 2114;
                  *&v283[10] = v262;
                  *&v283[18] = 2113;
                  *v284 = v147;
                  _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEBUG, " -- New advertisement of DNS type didn't seem to match to same app as  previous one, %{public}@ vs %{public}@, so can't use it. %{private}@", buf, 0x20u);
                }

                [(UASharingReceiver *)self removeItem:v147];
                v263 = 0;
              }

LABEL_108:
              v181 = [(UACornerActionManagerHandler *)self manager];
              v182 = [v181 pingController];
              if (v182)
              {
                v183 = [(SharingBTLEAdvertisementPayload *)v262 advertisementKind]== 5;

                if (!v183)
                {
                  goto LABEL_112;
                }

                v184 = [v261 advertisementPayload];
                v185 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:v261 optionBits:sub_100064DA0(v184) scanner:v258 receiver:self];

                v270[0] = _NSConcreteStackBlock;
                v270[1] = 3221225472;
                v270[2] = sub_10004DCE8;
                v270[3] = &unk_1000C4C98;
                v271 = v185;
                v272 = self;
                v263 = v271;
                [v271 requestPayloadWithCompletionHandler:v270];
                v181 = v271;
              }

LABEL_112:
              if (!v263)
              {
                v186 = [v261 advertisementPayload];
                v187 = sub_100064DA0(v186);

                v188 = [(UASharingReceiver *)self activeDevices];
                v189 = [v188 count] > 1;

                if (v189)
                {
                  v190 = v187 | 0x40;
                }

                else
                {
                  v190 = v187;
                }

                v263 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:v261 optionBits:v190 scanner:v258 receiver:self];
                v191 = sub_100001A30(0);
                if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                {
                  v192 = [v261 advertisementPayload];
                  v193 = sub_100006EF4(v192);
                  v194 = [v263 activityType];
                  v251 = [v263 bundleIdentifier];
                  objb = [v263 uuid];
                  v195 = [objb UUIDString];
                  v254 = [v261 device];
                  v250 = [v254 name];
                  v252 = [v261 device];
                  v196 = [v252 uniqueID];
                  v197 = [v261 options];
                  v198 = [v197 description];
                  v199 = sub_100009684(v198);
                  *buf = 138544899;
                  *v283 = v193;
                  *&v283[8] = 2113;
                  *&v283[10] = v194;
                  *&v283[18] = 2113;
                  *v284 = v251;
                  *&v284[8] = 2114;
                  *v285 = v195;
                  *&v285[8] = 2113;
                  *v286 = v250;
                  *&v286[8] = 2113;
                  v287 = v196;
                  v288 = 2114;
                  v289 = v199;
                  _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "# RECEIVED advertisement, %{public}@ type=%{private}@ -> %{private}@, %{public}@, from %{private}@/%{private}@ options=%{public}@", buf, 0x48u);
                }

                if ((v44 & 1) == 0)
                {
                  v200 = [v261 device];
                  v201 = [v200 uniqueID];
                  [(UASharingReceiver *)self removeAllFromDevice:v201];
                }

                [(UASharingReceiver *)self addItem:v263 scheduleUpdates:1];
                v202 = +[UADiagnosticManager sharedManager];
                v203 = [v263 activityType];
                [v202 submitUserActivityWasDiscovered:v203];
              }

              v204 = +[UAUserActivityDefaults sharedDefaults];
              if ([v204 multiHandoffEnabled])
              {
                v205 = [(SharingBTLEAdvertisementPayload *)v262 options];
                v206 = [v205 objectForKeyedSubscript:UAUserActivityAutoPullActivitiesListKey];
                v207 = [v206 BOOLValue];

                if (v207)
                {
                  v208 = [v261 device];
                  v209 = [v208 uniqueID];
                  v210 = [v209 isEqualToString:self->_lastAutoPullActivitiesRequesterId];

                  if ((v210 & 1) == 0)
                  {
                    v211 = sub_100001A30(0);
                    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "received UAUserActivityAutoPullActivitiesListKey bit on, fetching more app suggestions", buf, 2u);
                    }

                    v212 = [v261 device];
                    v213 = [v212 uniqueID];
                    lastAutoPullActivitiesRequesterId = self->_lastAutoPullActivitiesRequesterId;
                    self->_lastAutoPullActivitiesRequesterId = v213;

                    v215 = [v261 device];
                    [(UASharingReceiver *)self fetchMoreAppSuggestionsFromDevice:v215];
                    goto LABEL_130;
                  }

                  goto LABEL_131;
                }
              }

              else
              {
              }

              v216 = [v261 device];
              v217 = [v216 uniqueID];
              v218 = [v217 isEqualToString:self->_lastAutoPullActivitiesRequesterId];

              if (v218)
              {
                v215 = self->_lastAutoPullActivitiesRequesterId;
                self->_lastAutoPullActivitiesRequesterId = 0;
LABEL_130:
              }

LABEL_131:
              if ([v263 active])
              {
                v219 = self;
                objc_sync_enter(v219);
                v266 = 0u;
                v267 = 0u;
                v268 = 0u;
                v269 = 0u;
                obj = v219;
                v220 = v219->_receivedItems;
                v221 = [(NSMutableSet *)v220 countByEnumeratingWithState:&v266 objects:v281 count:16];
                if (v221)
                {
                  v222 = *v267;
                  do
                  {
                    for (k = 0; k != v221; k = k + 1)
                    {
                      if (*v267 != v222)
                      {
                        objc_enumerationMutation(v220);
                      }

                      v224 = *(*(&v266 + 1) + 8 * k);
                      if (([v224 isEqual:v263] & 1) == 0)
                      {
                        v225 = [v224 peerDevice];
                        v226 = [v225 uniqueID];
                        v227 = [v263 peerDevice];
                        v228 = [v227 uniqueID];
                        v229 = [v226 isEqualToString:v228];

                        if (v229)
                        {
                          [v224 setActive:0];
                        }
                      }
                    }

                    v221 = [(NSMutableSet *)v220 countByEnumeratingWithState:&v266 objects:v281 count:16];
                  }

                  while (v221);
                }

                objc_sync_exit(obj);
              }

              if (v263)
              {
                v230 = +[UAUserActivityDefaults sharedDefaults];
                v231 = [v230 debugEnablePrefetch];

                if (v231)
                {
                  [(SharingBTLEAdvertisementPayload *)v262 isCurrent];
                  v232 = sub_100001A30(0);
                  if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                  {
                    v233 = [v263 uuid];
                    v234 = [v233 UUIDString];
                    v235 = [v263 statusString];
                    *buf = 138543619;
                    *v283 = v234;
                    *&v283[8] = 2113;
                    *&v283[10] = v235;
                    _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "*** Checking whether to do a pre-emptive fetch of the payload for item %{public}@/%{private}@", buf, 0x16u);
                  }

                  v236 = [v263 dontPrefetchBefore];
                  if (v236)
                  {
                    v237 = [v263 dontPrefetchBefore];
                    v238 = sub_100061A60(v237);

                    if (v238)
                    {
                      [v263 setDontPrefetchBefore:0];
                    }
                  }

                  v239 = [v263 dontPrefetchBefore];

                  if (v239)
                  {
                    v240 = sub_100001A30(0);
                    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                    {
                      v241 = [v263 uuid];
                      v242 = [v241 UUIDString];
                      v243 = [v263 statusString];
                      v244 = [v263 dontPrefetchBefore];
                      *buf = 138543875;
                      *v283 = v242;
                      *&v283[8] = 2113;
                      *&v283[10] = v243;
                      *&v283[18] = 2114;
                      *v284 = v244;
                      _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "*** Ignoring prefetch for item %{public}@/%{private}@ because dontPrefetchBefore=%{public}@", buf, 0x20u);
                    }
                  }

                  if (([v263 isPayloadRequested] & 1) == 0 && (objc_msgSend(v263, "isPayloadAvailable") & 1) == 0)
                  {
                    v245 = sub_100001A30(0);
                    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
                    {
                      v246 = [v263 uuid];
                      v247 = [v246 UUIDString];
                      v248 = [v263 statusString];
                      *buf = 138543619;
                      *v283 = v247;
                      *&v283[8] = 2113;
                      *&v283[10] = v248;
                      _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, "*** Scheduling a pre-emptive fetch of the payload for item %{public}@/%{private}@", buf, 0x16u);
                    }

                    v264[0] = _NSConcreteStackBlock;
                    v264[1] = 3221225472;
                    v264[2] = sub_10004DF3C;
                    v264[3] = &unk_1000C5DC0;
                    v265 = v263;
                    v263 = v265;
                    [v265 requestPayloadWithCompletionHandler:v264];
                  }
                }
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v147 = [(SharingBTLEAdvertisementPayload *)v262 description];
          v176 = [v261 device];
          v177 = [v176 name];
          v178 = [v261 device];
          v179 = [v178 uniqueID];
          v180 = [NSString stringWithFormat:@"SCANNING:Received %@ (no match) from %@/%@", v147, v177, v179];
          [ActivityManagerDebuggingManager appendRecentAction:v180];
        }

LABEL_107:
        v263 = 0;
        goto LABEL_108;
      }
    }

    else
    {
    }

    v84 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
    if (v84)
    {
      v85 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
      v86 = [v85 uniqueID];
      v87 = [v261 device];
      v88 = [v87 uniqueID];
      v89 = [v86 isEqualToString:v88];

      if (v89)
      {
        v90 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "[PBOARD] Recived add w/o remote pboard for last seen device, notify client and clear timmer", buf, 2u);
        }

        [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
        v91 = [(UACornerActionManagerHandler *)self manager];
        v92 = [v91 pasteboardController];
        [v92 setRemotePasteboardAvalibility:0 withDataRequester:0];

        v93 = +[UADiagnosticManager sharedManager];
        [v93 submitRemotePasteboardBecameUnavailable:3];

        v94 = [(UASharingReceiver *)self remotePboardTimer];
        [v94 invalidate];

        [(UASharingReceiver *)self setRemotePboardTimer:0];
      }
    }

    goto LABEL_71;
  }

  oslog = sub_100001A30(0);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v24 = [v261 advertisementPayload];
    v25 = sub_100006EF4(v24);
    v26 = [v261 device];
    v27 = [v26 uniqueID];
    *buf = 138543619;
    *v283 = v25;
    *&v283[8] = 2113;
    *&v283[10] = v27;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Ignoring received ActivityContinuation because the current profile disallows it, %{public}@ from %{private}@", buf, 0x16u);
  }

LABEL_47:
}

- (BOOL)fetchMoreAppSuggestions
{
  v20 = [(UASharingReceiver *)self sfActivityScanner];
  v35 = 0;
  v34 = 0;
  v19 = [NSData dataWithBytes:&v34 length:8];
  v2 = +[UAUserActivityDefaults sharedDefaults];
  [v2 handoffPayloadRequestTimout];
  v4 = v3;

  objc_initWeak(&location, self);
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(UASharingReceiver *)self activeDevices];
    v7 = [v6 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "issuing handoff-more_items command for %lu devices", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x2020000000;
  v8 = [(UASharingReceiver *)self activeDevices];
  v9 = [v8 count];

  v33 = v9;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(UASharingReceiver *)self activeDevices];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10004E36C;
        v21[3] = &unk_1000C5DE8;
        p_buf = &buf;
        objc_copyWeak(&v24, &location);
        v21[4] = v14;
        v22 = v20;
        [v22 activityPayloadFromDevice:v14 forAdvertisementPayload:v19 command:@"handoff-more_items" timeout:v4 withCompletionHandler:v21];

        objc_destroyWeak(&v24);
      }

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v15 = [(UASharingReceiver *)self activeDevices];
  v16 = [v15 count] != 0;

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&location);

  return v16;
}

- (void)fetchMoreAppSuggestionsFromDevice:(id)a3
{
  v4 = a3;
  v5 = [(UASharingReceiver *)self sfActivityScanner];
  v21 = 0;
  v20 = 0;
  v6 = [NSData dataWithBytes:&v20 length:8];
  v7 = +[UAUserActivityDefaults sharedDefaults];
  [v7 handoffPayloadRequestTimout];
  v9 = v8;

  objc_initWeak(&location, self);
  v10 = sub_100001A30(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "issuing handoff-more_items command for device %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004E5FC;
  v13[3] = &unk_1000C5E10;
  objc_copyWeak(&v16, &location);
  v11 = v4;
  v14 = v11;
  v12 = v5;
  v15 = v12;
  [v12 activityPayloadFromDevice:v11 forAdvertisementPayload:v6 command:@"handoff-more_items" timeout:v9 withCompletionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)addNewItemsFromPayloads:(id)a3 device:(id)a4 scanner:(id)a5 force:(BOOL)a6
{
  v6 = a6;
  v40 = a3;
  v10 = a4;
  v44 = a5;
  v39 = +[NSMutableArray array];
  v54 = 0;
  [v40 getBytes:&v54 length:1];
  if ([v40 length] >= 2)
  {
    v11 = 1;
    do
    {
      v12 = [v40 subdataWithRange:{v11, v54}];
      [v39 addObject:v12];

      v11 += v54;
    }

    while (v11 < [v40 length]);
  }

  v13 = sub_100001A30(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v39 count];
    v15 = [v10 description];
    *buf = 134218242;
    v58 = v14;
    v59 = 2112;
    v60 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got back %lu items for handoff-more_items command from device %@", buf, 0x16u);
  }

  if ([v39 count] || v6)
  {
    v45 = +[NSMutableSet set];
    v41 = +[NSMutableSet set];
    v16 = self;
    objc_sync_enter(v16);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v16->_receivedItems;
    v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v17)
    {
      v18 = *v51;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v50 + 1) + 8 * i);
          v21 = [v20 peerDevice];
          v22 = [v21 uniqueID];
          v23 = [v10 uniqueID];
          v24 = [v22 isEqualToString:v23];

          if (v24)
          {
            if ([v20 active])
            {
              v25 = [v20 bundleIdentifier];
              v26 = v25 == 0;

              if (!v26)
              {
                v27 = [v20 bundleIdentifier];
                [v45 addObject:v27];
              }
            }
          }

          else
          {
            [v41 addObject:v20];
          }
        }

        v17 = [(NSMutableSet *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v17);
    }

    objc_storeStrong(&v16->_receivedItems, v41);
    objc_sync_exit(v16);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obja = v39;
    v28 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v28)
    {
      v29 = 0;
      v30 = *v47;
      do
      {
        v31 = 0;
        v32 = v29;
        do
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v33 = [SharingBTLESuggestedItem cornerActionBTLEItemWithPayload:*(*(&v46 + 1) + 8 * v31) device:v10 options:&__NSDictionary0__struct optionBits:sub_100064DA0(*(*(&v46 + 1) + 8 * v31)) scanner:v44 receiver:v16];
          v34 = [v33 bundleIdentifier];
          [v33 setActive:{objc_msgSend(v45, "containsObject:", v34)}];

          v35 = [v33 when];
          v36 = [v32 compare:v35] == 1;

          if (v36)
          {
            v37 = [v32 dateByAddingTimeInterval:1.0];
            [v33 setWhen:v37];
          }

          v29 = [v33 when];

          [(UASharingReceiver *)v16 addItem:v33 scheduleUpdates:0];
          v31 = v31 + 1;
          v32 = v29;
        }

        while (v28 != v31);
        v28 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v28);
    }

    v38 = [(UACornerActionManagerHandler *)v16 manager];
    [v38 scheduleBestAppDetermination];
  }
}

- (id)statusString
{
  v71 = +[NSMutableString string];
  v3 = [(UACornerActionManagerHandler *)self suspended];
  v4 = "SUSPENDED";
  if (!v3)
  {
    v4 = "";
  }

  v72 = v4;
  if ([(UASharingReceiver *)self active])
  {
    v5 = "";
  }

  else
  {
    v5 = "DISABLED";
  }

  v6 = [(UAReceiver *)self scanningForTypes];
  if ([v6 containsObject:off_1000E50F0])
  {
    v7 = @" UA";
  }

  else
  {
    v7 = &stru_1000C67D0;
  }

  v8 = [(UAReceiver *)self scanningForTypes];
  if ([v8 containsObject:off_1000E50F8])
  {
    v9 = @" Clip";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  v10 = [(UASharingReceiver *)self sfActivityScanner];
  if (v10)
  {
    v11 = &stru_1000C67D0;
  }

  else
  {
    v11 = @"(NO SFActivityScanner) ";
  }

  v12 = [(UACornerActionManagerHandler *)self manager];
  v13 = [v12 isBluetoothEnabled];
  v14 = @" (Bluetooth disabled)";
  if (v13)
  {
    v14 = &stru_1000C67D0;
  }

  v54 = v7;
  v15 = v71;
  [v71 appendFormat:@"SharingBTLE receiver %s%s%@%@ %@%@", v72, v5, v54, v9, v11, v14];

  v16 = [(UASharingReceiver *)self sfActivityScanners];
  v17 = [v16 count];

  if (v17 != 1)
  {
    v18 = [(UASharingReceiver *)self sfActivityScanners];
    [v71 appendFormat:@"%ld scanners", objc_msgSend(v18, "count")];
  }

  [v71 appendString:@"\n"];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v58 = self;
  obj = [(UASharingReceiver *)self receivedItems];
  v59 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v59)
  {
    v57 = *v80;
    do
    {
      v19 = 0;
      do
      {
        if (*v80 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v19;
        v20 = *(*(&v79 + 1) + 8 * v19);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_29;
        }

        v22 = [v20 scanner];

        if (!v22)
        {
          goto LABEL_29;
        }

        v23 = [v21 scanner];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_29;
        }

        v25 = [v21 scanner];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if (v26)
        {
          v27 = [v21 scanner];
          v28 = [v27 controller];
          v70 = [objc_opt_class() description];
        }

        else
        {
LABEL_29:
          v70 = &stru_1000C67D0;
        }

        v69 = [v21 activityType];
        v68 = [v21 dynamicActivityType];
        if (v68)
        {
          v62 = [v21 dynamicActivityType];
          v60 = [NSString stringWithFormat:@":%@", v62];
          v64 = v60;
        }

        else
        {
          v64 = &stru_1000C67D0;
        }

        v29 = [v21 bundleIdentifier];
        v66 = [v21 uuid];
        v73 = [v66 UUIDString];
        v65 = [v21 advertisementPayload];
        v30 = [v65 description];
        v31 = [v21 peerDevice];
        v32 = [v31 name];
        v33 = [v21 when];
        v34 = [v21 removeAfter];
        if (v34)
        {
          v63 = [v21 removeAfter];
          v35 = sub_100009AC0(v63);
          v61 = v35;
        }

        else
        {
          v35 = @"-";
        }

        if ([v21 isPayloadRequested])
        {
          v36 = " (PayloadReq)";
        }

        else
        {
          v36 = "";
        }

        v37 = [v21 isPayloadAvailable];
        v38 = " (PayloadAv)";
        if (!v37)
        {
          v38 = "";
        }

        v55 = v36;
        v15 = v71;
        [v71 appendFormat:@" - %@%@%@ app:%@ %@ data=%@, from %@ at %@ remove at %@%s%s\n", v70, v69, v64, v29, v73, v30, v32, v33, v35, v55, v38];
        if (v34)
        {
        }

        if (v68)
        {
        }

        v19 = v67 + 1;
      }

      while (v59 != (v67 + 1));
      v59 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v59);
  }

  [v15 appendFormat:@" ActiveDevices:"];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = [(UASharingReceiver *)v58 activeDevices];
  v39 = [v74 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v76;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v76 != v41)
        {
          objc_enumerationMutation(v74);
        }

        v43 = *(*(&v75 + 1) + 8 * i);
        v44 = [v43 uniqueID];
        v45 = [(UASharingReceiver *)v58 lastSeenPasteboardDevice];
        v46 = [v45 uniqueID];
        v47 = [v44 isEqualToString:v46];
        v48 = &stru_1000C67D0;
        if (v47)
        {
          v48 = @", pb";
        }

        v49 = v48;

        v50 = [v43 name];
        v51 = [v43 modelIdentifier];
        v15 = v71;
        [v71 appendFormat:@"(%@, %@%@)", v50, v51, v49];
      }

      v40 = [v74 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v40);
  }

  [v15 appendString:@"\n"];
  v52 = [v15 copy];

  return v52;
}

- (BOOL)terminate
{
  v3 = [(UASharingReceiver *)self periodicCleanup];
  [v3 reset];

  v4 = [(UASharingReceiver *)self periodicCleanup];
  [v4 waitUntilComplete];

  return 1;
}

- (void)clearRemotePasteboardAvailable:(id)a3
{
  [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
  v4 = [(UACornerActionManagerHandler *)self manager];
  v5 = [v4 pasteboardController];
  [v5 setRemotePasteboardAvalibility:0 withDataRequester:0];

  v6 = +[UADiagnosticManager sharedManager];
  [v6 submitRemotePasteboardBecameUnavailable:2];

  v7 = [(UASharingReceiver *)self remotePboardTimer];
  [v7 invalidate];

  [(UASharingReceiver *)self setRemotePboardTimer:0];
}

@end