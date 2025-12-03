@interface UASharingReceiver
- (BOOL)_addItem:(id)item scheduleUpdates:(BOOL)updates;
- (BOOL)active;
- (BOOL)addSFActivityScanner:(id)scanner;
- (BOOL)fetchMoreAppSuggestions;
- (BOOL)receiving;
- (BOOL)removeItem:(id)item;
- (BOOL)removeSFActivityScanner:(id)scanner;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (NSSet)activeDevices;
- (NSSet)sfActivityScanners;
- (UASharingReceiver)initWithManager:(id)manager;
- (id)receivedItems;
- (id)sfActivityScanner;
- (id)sharingBTLESuggestedItemForAdvertisementPayload:(id)payload forDevice:(id)device;
- (id)statusString;
- (void)activityScanner:(id)scanner foundDeviceWithDevice:(id)device;
- (void)activityScanner:(id)scanner lostDeviceWithDevice:(id)device;
- (void)activityScanner:(id)scanner receivedAdvertisement:(id)advertisement;
- (void)addNewItemsFromPayloads:(id)payloads device:(id)device scanner:(id)scanner force:(BOOL)force;
- (void)clearRemotePasteboardAvailable:(id)available;
- (void)fetchMoreAppSuggestionsFromDevice:(id)device;
- (void)foundDevice:(id)device;
- (void)lostDevice:(id)device;
- (void)lostDeviceWithUUID:(id)d;
- (void)periodicCleanupFunc;
- (void)receiveAdvertisement:(id)advertisement scanner:(id)scanner;
- (void)removeAllFromDevice:(id)device;
- (void)setScanningForTypes:(id)types;
@end

@implementation UASharingReceiver

- (NSSet)sfActivityScanners
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_sfActivityScanners copy];
  objc_sync_exit(selfCopy);

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
  activityBTLESharingEnabled = [v2 activityBTLESharingEnabled];

  return activityBTLESharingEnabled;
}

- (id)receivedItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSMutableSet *)selfCopy->_receivedItems allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (UASharingReceiver)initWithManager:(id)manager
{
  v20.receiver = self;
  v20.super_class = UASharingReceiver;
  v3 = [(UAReceiver *)&v20 initWithManager:manager name:@"SharingReceiver"];
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

    manager = [(UACornerActionManagerHandler *)v3 manager];
    mainDispatchQ = [manager mainDispatchQ];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000490FC;
    v18[3] = &unk_1000C4CC0;
    v14 = v3;
    v19 = v14;
    v15 = [UADispatchScheduler dispatchScheduler:@"SharingReceiverPeriodic" frequency:mainDispatchQ queue:v18 block:0.0];
    periodicCleanup = v14->_periodicCleanup;
    v14->_periodicCleanup = v15;
  }

  return v3;
}

- (BOOL)receiving
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_receivedItems count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setScanningForTypes:(id)types
{
  typesCopy = types;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [typesCopy description];
    v7 = sub_100009684(v6);
    *buf = 138543362;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setScanningForTypes:%{public}@", buf, 0xCu);
  }

  if (typesCopy || ([(UAReceiver *)self scanningForTypes], v5 = objc_claimAutoreleasedReturnValue(), ![v5 count]))
  {
    scanningForTypes = [(UAReceiver *)self scanningForTypes];
    v9 = [typesCopy isEqual:scanningForTypes];

    if (typesCopy)
    {
      if (v9)
      {
        goto LABEL_37;
      }

      goto LABEL_12;
    }

    if (v9)
    {
      typesCopy = 0;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v10 = +[NSSet set];

  typesCopy = v10;
LABEL_12:
  v29.receiver = self;
  v29.super_class = UASharingReceiver;
  [(UAReceiver *)&v29 setScanningForTypes:typesCopy];
  if ([typesCopy containsObject:off_1000E50F0])
  {
    v11 = "userActivity ";
  }

  else
  {
    v11 = "";
  }

  if ([typesCopy containsObject:off_1000E50F8])
  {
    v12 = "clipboard ";
  }

  else
  {
    v12 = "";
  }

  if ([typesCopy count])
  {
    v13 = "";
  }

  else
  {
    v13 = "-";
  }

  suspended = [(UACornerActionManagerHandler *)self suspended];
  v15 = " SUSPENDED";
  if (!suspended)
  {
    v15 = "";
  }

  v16 = [NSString stringWithFormat:@"SCANNING:%s%s%s%s", v11, v12, v13, v15];
  [ActivityManagerDebuggingManager appendRecentAction:v16];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  sfActivityScanners = [(UASharingReceiver *)self sfActivityScanners];
  v18 = [sfActivityScanners countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(sfActivityScanners);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if ([(UACornerActionManagerHandler *)self suspended])
        {
          sub_100008784(v22, 0);
        }

        else
        {
          manager = [(UACornerActionManagerHandler *)self manager];
          if ([manager activityReceivingAllowed])
          {
            v24 = typesCopy;
          }

          else
          {
            v24 = 0;
          }

          sub_100008784(v22, v24);
        }
      }

      v19 = [sfActivityScanners countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

LABEL_37:
}

- (NSSet)activeDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_activeDevices copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)addSFActivityScanner:(id)scanner
{
  scannerCopy = scanner;
  v6 = sub_100001A30(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = 138543362;
    v15 = scannerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UASharingReceiver, adding activity scanner %{public}@.", &v14, 0xCu);
  }

  if (scannerCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = [(NSMutableSet *)selfCopy->_sfActivityScanners containsObject:scannerCopy];
    if ((v8 & 1) == 0)
    {
      [(NSMutableSet *)selfCopy->_sfActivityScanners addObject:scannerCopy];
      suspended = [(UACornerActionManagerHandler *)selfCopy suspended];
      if (suspended)
      {
        v10 = 0;
        scanningForTypes = 0;
      }

      else
      {
        manager = [(UACornerActionManagerHandler *)selfCopy manager];
        if ([manager activityReceivingAllowed])
        {
          scanningForTypes = [(UAReceiver *)selfCopy scanningForTypes];
          v10 = 1;
        }

        else
        {
          v10 = 0;
          scanningForTypes = 0;
        }
      }

      sub_100008784(scannerCopy, scanningForTypes);
      if (v10)
      {
      }

      if ((suspended & 1) == 0)
      {
      }
    }

    objc_sync_exit(selfCopy);

    v12 = v8 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeSFActivityScanner:(id)scanner
{
  scannerCopy = scanner;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = scannerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "UASharingReceiver, removing activity scanner %{public}@.", &v9, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableSet *)selfCopy->_sfActivityScanners containsObject:scannerCopy];
  if (v7)
  {
    sub_100008784(scannerCopy, 0);
    [(NSMutableSet *)selfCopy->_sfActivityScanners removeObject:scannerCopy];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)sfActivityScanner
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  sfActivityScanners = [(UASharingReceiver *)self sfActivityScanners];
  v3 = [sfActivityScanners countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(sfActivityScanners);
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

      v3 = [sfActivityScanners countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  suspend = [(UACornerActionManagerHandler *)&v17 suspend];
  if (suspend)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    sfActivityScanners = [(UASharingReceiver *)self sfActivityScanners];
    v5 = [sfActivityScanners countByEnumeratingWithState:&v13 objects:v20 count:16];
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
            objc_enumerationMutation(sfActivityScanners);
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

        v6 = [sfActivityScanners countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v6);
    }

    periodicCleanup = [(UASharingReceiver *)self periodicCleanup];
    [periodicCleanup suspend];
  }

  return suspend;
}

- (BOOL)resume
{
  v18.receiver = self;
  v18.super_class = UASharingReceiver;
  resume = [(UACornerActionManagerHandler *)&v18 resume];
  if (resume)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sfActivityScanners = [(UASharingReceiver *)self sfActivityScanners];
    v5 = [sfActivityScanners countByEnumeratingWithState:&v14 objects:v21 count:16];
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
            objc_enumerationMutation(sfActivityScanners);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = sub_100001A30(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v20 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "UASharingReceiver, resuming activity scanner %{public}@.", buf, 0xCu);
          }

          scanningForTypes = [(UAReceiver *)self scanningForTypes];
          sub_100008784(v9, scanningForTypes);
        }

        v6 = [sfActivityScanners countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v6);
    }

    periodicCleanup = [(UASharingReceiver *)self periodicCleanup];
    [periodicCleanup resume];
  }

  return resume;
}

- (void)activityScanner:(id)scanner foundDeviceWithDevice:(id)device
{
  scannerCopy = scanner;
  deviceCopy = device;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [deviceCopy uniqueID];
    *buf = 138478083;
    v16 = uniqueID;
    v17 = 2114;
    v18 = scannerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "foundDevice, deviceIdentifier=%{private}@ scanner=%{public}@", buf, 0x16u);
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  mainDispatchQ = [manager mainDispatchQ];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049DFC;
  v13[3] = &unk_1000C5B80;
  v13[4] = self;
  v14 = deviceCopy;
  v12 = deviceCopy;
  dispatch_async(mainDispatchQ, v13);
}

- (void)foundDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [deviceCopy uniqueID];
    *buf = 138477827;
    v20 = uniqueID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "foundDevice, deviceIdentifier=%{private}@", buf, 0xCu);
  }

  if (deviceCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeDevices = [(UASharingReceiver *)selfCopy activeDevices];
    v9 = [activeDevices containsObject:deviceCopy];

    if (v9)
    {
      recentlyLostDeviceIDs = selfCopy->_recentlyLostDeviceIDs;
      uniqueID2 = [deviceCopy uniqueID];
      LODWORD(recentlyLostDeviceIDs) = [(NSMutableSet *)recentlyLostDeviceIDs containsObject:uniqueID2];

      if (recentlyLostDeviceIDs)
      {
        v12 = selfCopy->_recentlyLostDeviceIDs;
        uniqueID3 = [deviceCopy uniqueID];
        [(NSMutableSet *)v12 removeObject:uniqueID3];
      }
    }

    else
    {
      uniqueID4 = [deviceCopy uniqueID];
      name = [deviceCopy name];
      isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
      v17 = "";
      if (isDefaultPairedDevice)
      {
        v17 = " defaultPaired";
      }

      v18 = [NSString stringWithFormat:@"SCANNING:Found device %@ %@%s", uniqueID4, name, v17];
      [ActivityManagerDebuggingManager appendRecentAction:v18];

      [(NSMutableSet *)selfCopy->_activeDevices addObject:deviceCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityScanner:(id)scanner lostDeviceWithDevice:(id)device
{
  scannerCopy = scanner;
  deviceCopy = device;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [deviceCopy uniqueID];
    *buf = 138478083;
    v18 = uniqueID;
    v19 = 2114;
    v20 = scannerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "lostDevice, deviceIdentifier=%{private}@ scanner=%{public}@", buf, 0x16u);
  }

  recentlyLostDeviceIDs = self->_recentlyLostDeviceIDs;
  uniqueID2 = [deviceCopy uniqueID];
  [(NSMutableSet *)recentlyLostDeviceIDs addObject:uniqueID2];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10004A1D0;
  v14[3] = &unk_1000C5D20;
  v15 = deviceCopy;
  selfCopy = self;
  v12 = deviceCopy;
  v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v14 block:5.0];
}

- (void)lostDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [deviceCopy uniqueID];
    *buf = 138477827;
    v25 = uniqueID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "lostDevice, deviceIdentifier=%{private}@", buf, 0xCu);
  }

  uniqueID2 = [deviceCopy uniqueID];

  if (uniqueID2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    uniqueID3 = [deviceCopy uniqueID];
    name = [deviceCopy name];
    isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
    v12 = "";
    if (isDefaultPairedDevice)
    {
      v12 = " defaultPaired";
    }

    v13 = [NSString stringWithFormat:@"SCANNING:Lost device %@ %@%s", uniqueID3, name, v12];
    [ActivityManagerDebuggingManager appendRecentAction:v13];

    [(NSMutableSet *)selfCopy->_activeDevices removeObject:deviceCopy];
    uniqueID4 = [deviceCopy uniqueID];
    [(UASharingReceiver *)selfCopy removeAllFromDevice:uniqueID4];

    v15 = +[UAUserActivityDefaults sharedDefaults];
    if ([v15 ignoreLostDevice])
    {
    }

    else
    {
      uniqueID5 = [deviceCopy uniqueID];
      lastSeenPasteboardDevice = [(UASharingReceiver *)selfCopy lastSeenPasteboardDevice];
      uniqueID6 = [lastSeenPasteboardDevice uniqueID];
      v19 = [uniqueID5 isEqualToString:uniqueID6];

      if (v19)
      {
        [(UASharingReceiver *)selfCopy setLastSeenPasteboardDevice:0];
        manager = [(UACornerActionManagerHandler *)selfCopy manager];
        pasteboardController = [manager pasteboardController];
        [pasteboardController setRemotePasteboardAvalibility:0 withDataRequester:0];

        v22 = +[UADiagnosticManager sharedManager];
        [v22 submitRemotePasteboardBecameUnavailable:1];

        remotePboardTimer = [(UASharingReceiver *)selfCopy remotePboardTimer];
        [remotePboardTimer invalidate];

        [(UASharingReceiver *)selfCopy setRemotePboardTimer:0];
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)lostDeviceWithUUID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeDevices = [(UASharingReceiver *)self activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(activeDevices);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        uniqueID = [v10 uniqueID];
        v12 = [uniqueID isEqual:dCopy];

        if (v12)
        {
          [(UASharingReceiver *)self lostDevice:v10];
        }
      }

      v7 = [activeDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (BOOL)_addItem:(id)item scheduleUpdates:(BOOL)updates
{
  updatesCopy = updates;
  itemCopy = item;
  if (!itemCopy)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v38 = updatesCopy;
  obj = self;
  objc_sync_enter(obj);
  bundleIdentifier = [itemCopy bundleIdentifier];
  peerDevice = [itemCopy peerDevice];
  uniqueID = [peerDevice uniqueID];
  v41 = [bundleIdentifier stringByAppendingString:uniqueID];

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
    [(NSMutableSet *)obj->_receivedItems addObject:itemCopy];
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
      uuid = [v14 uuid];
      uuid2 = [itemCopy uuid];
      v17 = [uuid isEqual:uuid2];

      if (v17)
      {
        removeAfter = [itemCopy removeAfter];
        [v14 setRemoveAfter:removeAfter];

        when = [itemCopy when];
        [v14 setWhen:when];

        currentUntilDate = [itemCopy currentUntilDate];
        [v14 setCurrentUntilDate:currentUntilDate];

        [v14 setActive:{objc_msgSend(itemCopy, "active")}];
        v40 = 1;
      }

      else
      {
        [v14 resignCurrent];
        bundleIdentifier2 = [v14 bundleIdentifier];
        peerDevice2 = [v14 peerDevice];
        uniqueID2 = [peerDevice2 uniqueID];
        v24 = [bundleIdentifier2 stringByAppendingString:uniqueID2];

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
      uuid3 = [v42 uuid];
      uUIDString = [uuid3 UUIDString];
      statusString = [itemCopy statusString];
      uuid4 = [itemCopy uuid];
      uUIDString2 = [uuid4 UUIDString];
      statusString2 = [itemCopy statusString];
      *buf = 138544131;
      v48 = uUIDString;
      v49 = 2113;
      v50 = statusString;
      v51 = 2114;
      v52 = uUIDString2;
      v53 = 2113;
      v54 = statusString2;
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
    manager = [(UACornerActionManagerHandler *)obj manager];
    [manager scheduleBestAppDetermination];

    periodicCleanup = [(UASharingReceiver *)obj periodicCleanup];
    removeAfter2 = [itemCopy removeAfter];
    [periodicCleanup scheduleAt:removeAfter2];
  }

  objc_sync_exit(obj);
LABEL_26:

  return v33;
}

- (BOOL)removeItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_receivedItems containsObject:itemCopy];
  if (v6)
  {
    [(NSMutableSet *)selfCopy->_receivedItems removeObject:itemCopy];
    manager = [(UACornerActionManagerHandler *)selfCopy manager];
    [manager scheduleBestAppDetermination];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)removeAllFromDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  receivedItems = [(UASharingReceiver *)selfCopy receivedItems];
  v6 = [receivedItems countByEnumeratingWithState:&v48 objects:v56 count:16];
  p_isa = &selfCopy->super.super.super.isa;
  if (!v6)
  {

    objc_sync_exit(selfCopy);
    goto LABEL_28;
  }

  v9 = 0;
  v46 = *v49;
  *&v7 = 138543618;
  v44 = v7;
  obj = receivedItems;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v48 + 1) + 8 * i);
      peerDevice = [v11 peerDevice];
      uniqueID = [peerDevice uniqueID];
      v14 = [uniqueID isEqual:deviceCopy];

      if (v14)
      {
        v15 = +[NSDate date];
        if (([v11 isPayloadRequested] & 1) == 0 && !objc_msgSend(v11, "isPayloadAvailable"))
        {
          goto LABEL_11;
        }

        removeAfter = [v11 removeAfter];
        if (!removeAfter)
        {
          goto LABEL_11;
        }

        [v15 timeIntervalSinceReferenceDate];
        v18 = v17;
        removeAfter2 = [v11 removeAfter];
        [removeAfter2 timeIntervalSinceReferenceDate];
        v21 = v18 > v20;

        if (!v21)
        {
          currentUntilDate = [v11 currentUntilDate];
          if (!currentUntilDate)
          {
            goto LABEL_16;
          }

          [v15 timeIntervalSinceReferenceDate];
          v27 = v26;
          currentUntilDate2 = [v11 currentUntilDate];
          [currentUntilDate2 timeIntervalSinceReferenceDate];
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
          removeAfter3 = [v11 removeAfter];
          [removeAfter3 timeIntervalSinceReferenceDate];
          LOBYTE(v32) = v35 > v37;

          if ((v32 & 1) == 0)
          {
            [v11 setRemoveAfter:v33];
          }

          v38 = sub_100001A30(0);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            uuid = [v11 uuid];
            uUIDString = [uuid UUIDString];
            removeAfter4 = [v11 removeAfter];
            *buf = v44;
            v53 = uUIDString;
            v54 = 2114;
            v55 = removeAfter4;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Retaining %{public}@ in _receivedItems because it's .payloadRequested or .payloadAvailable, so that it remains available for a bit, until %{public}@.", buf, 0x16u);
          }

          periodicCleanup = [p_isa periodicCleanup];
          removeAfter5 = [v11 removeAfter];
          [periodicCleanup scheduleAt:removeAfter5];
        }

        else
        {
LABEL_11:
          v22 = sub_100001A30(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            uuid2 = [v11 uuid];
            uUIDString2 = [uuid2 UUIDString];
            *buf = 138543619;
            v53 = uUIDString2;
            v54 = 2113;
            v55 = deviceCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
  receivedItems = [(UASharingReceiver *)selfCopy receivedItems];
  v5 = [receivedItems countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(receivedItems);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        removeAfter = [v9 removeAfter];
        if (!removeAfter)
        {
          goto LABEL_11;
        }

        removeAfter2 = [v9 removeAfter];
        [removeAfter2 timeIntervalSinceReferenceDate];
        v13 = v12;
        [v23 timeIntervalSinceReferenceDate];
        v15 = v13 > v14;

        if (v15)
        {
          periodicCleanup = [(UASharingReceiver *)selfCopy periodicCleanup];
          removeAfter3 = [v9 removeAfter];
          [periodicCleanup scheduleAt:removeAfter3];
        }

        else
        {
LABEL_11:
          v18 = sub_100001A30(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            uuid = [v9 uuid];
            uUIDString = [uuid UUIDString];
            removeAfter4 = [v9 removeAfter];
            *buf = v22;
            v29 = uUIDString;
            v30 = 2114;
            v31 = removeAfter4;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Removing %{public}@ from .receivedItems because .removeAfter, %{public}@ has expired.", buf, 0x16u);
          }

          [(UASharingReceiver *)selfCopy removeItem:v9];
        }
      }

      v5 = [receivedItems countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);
}

- (id)sharingBTLESuggestedItemForAdvertisementPayload:(id)payload forDevice:(id)device
{
  payloadCopy = payload;
  deviceCopy = device;
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
        if (!deviceCopy)
        {
          goto LABEL_19;
        }

        uniqueID = [deviceCopy uniqueID];
        peerDevice = [v11 peerDevice];
        uniqueID2 = [peerDevice uniqueID];
        v15 = [uniqueID isEqual:uniqueID2];

        if (v15)
        {
LABEL_19:
          if (!payloadCopy || ([v11 advertisementPayload], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(payloadCopy, "isEqualHashedPayloadBytes:", v16), v16, v17))
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

- (void)activityScanner:(id)scanner receivedAdvertisement:(id)advertisement
{
  scannerCopy = scanner;
  advertisementCopy = advertisement;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v17 = advertisementCopy;
    v18 = 2114;
    v19 = scannerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "activityScanner:receivedAdvertisement: %{private}@,%{public}@)", buf, 0x16u);
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  mainDispatchQ = [manager mainDispatchQ];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BB94;
  block[3] = &unk_1000C4EE0;
  block[4] = self;
  v14 = advertisementCopy;
  v15 = scannerCopy;
  v11 = scannerCopy;
  v12 = advertisementCopy;
  dispatch_async(mainDispatchQ, block);
}

- (void)receiveAdvertisement:(id)advertisement scanner:(id)scanner
{
  advertisementCopy = advertisement;
  scannerCopy = scanner;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    advertisementPayload = [advertisementCopy advertisementPayload];
    v7 = sub_100006EF4(advertisementPayload);
    options = [advertisementCopy options];
    v9 = [options description];
    v10 = sub_100009684(v9);
    device = [advertisementCopy device];
    name = [device name];
    device2 = [advertisementCopy device];
    uniqueID = [device2 uniqueID];
    *buf = 138544131;
    *v283 = v7;
    *&v283[8] = 2114;
    *&v283[10] = v10;
    *&v283[18] = 2113;
    *v284 = name;
    *&v284[8] = 2113;
    *v285 = uniqueID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Received Ad: %{public}@ opts=%{public}@ from %{private}@/%{private}@", buf, 0x2Au);
  }

  if (!advertisementCopy)
  {
    sub_10007BEBC();
  }

  device3 = [advertisementCopy device];
  if (!device3)
  {
    sub_10007BE90();
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  activityReceivingAllowed = [manager activityReceivingAllowed];

  if (activityReceivingAllowed)
  {
    manager2 = [(UACornerActionManagerHandler *)self manager];
    isSharingModeBlockingReceiving = [manager2 isSharingModeBlockingReceiving];

    if (isSharingModeBlockingReceiving)
    {
      oslog = sub_100001A30(0);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        advertisementPayload2 = [advertisementCopy advertisementPayload];
        v21 = sub_100006EF4(advertisementPayload2);
        device4 = [advertisementCopy device];
        uniqueID2 = [device4 uniqueID];
        *buf = 138543619;
        *v283 = v21;
        *&v283[8] = 2113;
        *&v283[10] = uniqueID2;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Ignoring received advertisement because we are currently in a sharing mode that disallows it, %{public}@ from %{private}@", buf, 0x16u);
      }

      goto LABEL_47;
    }

    activeDevices = [(UASharingReceiver *)self activeDevices];
    device5 = [advertisementCopy device];
    v30 = [activeDevices containsObject:device5];

    if ((v30 & 1) == 0)
    {
      v31 = sub_100001A30(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        device6 = [advertisementCopy device];
        *buf = 138477827;
        *v283 = device6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "SIMULATING foundDeviceForIdentifier: %{private}@", buf, 0xCu);
      }

      device7 = [advertisementCopy device];
      [(UASharingReceiver *)self foundDevice:device7];
    }

    device8 = [advertisementCopy device];
    productBuildVersion = [device8 productBuildVersion];
    v36 = [productBuildVersion substringToIndex:3];
    integerValue = [v36 integerValue];

    device9 = [advertisementCopy device];
    oslog = [device9 modelIdentifier];

    v39 = +[UAUserActivityDefaults sharedDefaults];
    if ([v39 multiHandoffEnabled])
    {
      v40 = [oslog containsString:@"Mac"];
      if (integerValue > 17)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      if (v41 & 1) != 0 || ((v42 = [oslog containsString:@"iPhone"], integerValue > 15) ? (v43 = v42) : (v43 = 0), (v43))
      {
        v44 = 1;
      }

      else
      {
        v44 = [oslog containsString:@"iPad"]& (integerValue > 15);
      }
    }

    else
    {
      v44 = 0;
    }

    advertisementPayload3 = [advertisementCopy advertisementPayload];
    if (!advertisementPayload3 || ([advertisementCopy advertisementPayload], v46 = objc_claimAutoreleasedReturnValue(), v47 = sub_100064E08(v46), v46, advertisementPayload3, v47))
    {
      v48 = sub_100001A30(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Received advertisement.advertisementPayload == nil", buf, 2u);
      }

      device10 = [advertisementCopy device];
      uniqueID3 = [device10 uniqueID];

      if (v44 && (+[UAUserActivityDefaults sharedDefaults](UAUserActivityDefaults, "sharedDefaults"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 multiHandoffEnabled], v50, v51))
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v277 = 0u;
        v278 = 0u;
        v279 = 0u;
        v280 = 0u;
        v53 = selfCopy->_receivedItems;
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
              peerDevice = [v57 peerDevice];
              uniqueID4 = [peerDevice uniqueID];
              v60 = [uniqueID4 isEqualToString:uniqueID3];

              if (v60)
              {
                [v57 setActive:0];
              }
            }

            v54 = [(NSMutableSet *)v53 countByEnumeratingWithState:&v277 objects:v291 count:16];
          }

          while (v54);
        }

        objc_sync_exit(selfCopy);
      }

      else
      {
        [(UASharingReceiver *)self removeAllFromDevice:uniqueID3];
      }

      lastSeenPasteboardDevice = [(UASharingReceiver *)self lastSeenPasteboardDevice];
      uniqueID5 = [lastSeenPasteboardDevice uniqueID];
      device11 = [advertisementCopy device];
      uniqueID6 = [device11 uniqueID];
      v65 = [uniqueID5 isEqualToString:uniqueID6];

      if (v65)
      {
        [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
        manager3 = [(UACornerActionManagerHandler *)self manager];
        pasteboardController = [manager3 pasteboardController];
        [pasteboardController setRemotePasteboardAvalibility:0 withDataRequester:0];

        v68 = +[UADiagnosticManager sharedManager];
        [v68 submitRemotePasteboardBecameUnavailable:3];

        remotePboardTimer = [(UASharingReceiver *)self remotePboardTimer];
        [remotePboardTimer invalidate];

        [(UASharingReceiver *)self setRemotePboardTimer:0];
      }

      manager4 = [(UACornerActionManagerHandler *)self manager];
      [manager4 scheduleBestAppDetermination];
      advertisementCopy = 0;
LABEL_46:

      goto LABEL_47;
    }

    uniqueID3 = [[SharingBTLEAdvertisementPayload alloc] initWithSFActivityAdvertisement:advertisementCopy];
    options2 = [(SharingBTLEAdvertisementPayload *)uniqueID3 options];
    v71 = [options2 objectForKeyedSubscript:@"UAPasteboardAvailable"];
    if ([v71 BOOLValue])
    {
      v72 = +[UAUserActivityDefaults sharedDefaults];
      clipboardSharingEnabled = [v72 clipboardSharingEnabled];

      if (clipboardSharingEnabled)
      {
        v74 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "[PBOARD] Received pboard available advertisement", buf, 2u);
        }

        options3 = [(SharingBTLEAdvertisementPayload *)uniqueID3 options];
        v76 = [options3 objectForKeyedSubscript:@"UAPasteboardVersionBit"];
        bOOLValue = [v76 BOOLValue];

        lastSeenPasteboardDevice2 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
        device12 = [advertisementCopy device];
        LODWORD(options3) = [lastSeenPasteboardDevice2 isEqual:device12];

        v80 = sub_100001A30(@"pasteboard-server");
        v81 = bOOLValue;
        v82 = os_log_type_enabled(v80, OS_LOG_TYPE_INFO);
        if (!options3)
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

          device13 = [advertisementCopy device];
          [(UASharingReceiver *)self setLastSeenPasteboardDevice:device13];

          [(UASharingReceiver *)self setLastSeenPasteboardVersionBit:v81];
          v97 = objc_alloc_init(UASharedPasteboardDataRequester);
          device14 = [advertisementCopy device];
          [(UASharedPasteboardDataRequester *)v97 setPeer:device14];

          [(UASharedPasteboardDataRequester *)v97 setScanner:scannerCopy];
          manager5 = [(UACornerActionManagerHandler *)self manager];
          pasteboardController2 = [manager5 pasteboardController];
          [pasteboardController2 setRemotePasteboardAvalibility:1 withDataRequester:v97];

          v101 = +[UADiagnosticManager sharedManager];
          [v101 submitRemotePasteboardBecameAvailable];

          v102 = +[UAUserActivityDefaults sharedDefaults];
          [v102 remotePasteboardAvailableTimeout];
          v104 = v103;

          remotePboardTimer2 = [(UASharingReceiver *)self remotePboardTimer];
          [remotePboardTimer2 invalidate];

          v106 = [NSTimer timerWithTimeInterval:self target:"clearRemotePasteboardAvailable:" selector:0 userInfo:0 repeats:v104];
          [(UASharingReceiver *)self setRemotePboardTimer:v106];

          v107 = +[NSRunLoop mainRunLoop];
          remotePboardTimer3 = [(UASharingReceiver *)self remotePboardTimer];
          [v107 addTimer:remotePboardTimer3 forMode:NSRunLoopCommonModes];

          goto LABEL_71;
        }

        if (v82)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[PBOARD] Ad is from last seen device", buf, 2u);
        }

        if ([(UASharingReceiver *)self lastSeenPasteboardVersionBit]!= bOOLValue)
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
          device15 = [advertisementCopy device];
          name2 = [device15 name];
          device16 = [advertisementCopy device];
          uniqueID7 = [device16 uniqueID];
          *buf = 138543875;
          *v283 = uniqueID3;
          *&v283[8] = 2113;
          *&v283[10] = name2;
          *&v283[18] = 2113;
          *v284 = uniqueID7;
          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, " -- Looking for activity matching advertisingPayload %{public}@, from %{private}@/%{private}@", buf, 0x20u);
        }

        device17 = [advertisementCopy device];
        v115 = [(UASharingReceiver *)self sharingBTLESuggestedItemForAdvertisementPayload:uniqueID3 forDevice:device17];

        if (v115)
        {
          bundleIdentifier = [v115 bundleIdentifier];
          v117 = bundleIdentifier == 0;

          if (!v117)
          {
LABEL_75:
            manager4 = v115;
LABEL_76:
            v118 = [(SharingBTLEAdvertisementPayload *)uniqueID3 description];
            activityType = [manager4 activityType];
            dynamicActivityType = [manager4 dynamicActivityType];
            device18 = [advertisementCopy device];
            name3 = [device18 name];
            device19 = [advertisementCopy device];
            uniqueID8 = [device19 uniqueID];
            v124 = [NSString stringWithFormat:@"SCANNING:Received %@ %@ %@ from %@/%@", v118, activityType, dynamicActivityType, name3, uniqueID8];
            [ActivityManagerDebuggingManager appendRecentAction:v124];

            LODWORD(v124) = -[SharingBTLEAdvertisementPayload compareOptionBits:](uniqueID3, "compareOptionBits:", [manager4 optionBits]);
            v126 = sub_100001A30(0);
            v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG);
            if (v124)
            {
              if (v127)
              {
                advertisementPayload4 = [advertisementCopy advertisementPayload];
                v129 = sub_100006EF4(advertisementPayload4);
                device20 = [advertisementCopy device];
                uniqueID9 = [device20 uniqueID];
                uuid = [manager4 uuid];
                uUIDString = [uuid UUIDString];
                *buf = 138544131;
                *v283 = v129;
                *&v283[8] = 2113;
                *&v283[10] = uniqueID9;
                *&v283[18] = 2114;
                *v284 = uUIDString;
                *&v284[8] = 2113;
                *v285 = manager4;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, " -- Found matching advertisingPayload to item already received from this device, %{public}@/%{private}@, so using it. %{public}@/%{private}@", buf, 0x2Au);
              }

              if ([manager4 isPayloadAvailable])
              {
                advertisementPayload5 = [manager4 advertisementPayload];
                time = [advertisementPayload5 time];
                time2 = [(SharingBTLEAdvertisementPayload *)uniqueID3 time];
                v137 = [time isEqual:time2];

                if ((v137 & 1) == 0)
                {
                  v138 = sub_100001A30(0);
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid2 = [manager4 uuid];
                    uUIDString2 = [uuid2 UUIDString];
                    *buf = 138543619;
                    *v283 = uUIDString2;
                    *&v283[8] = 2113;
                    *&v283[10] = manager4;
                    _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, " -- Clearing payload of item %{public}@/%{private}@ because the last active time from that device has changed.", buf, 0x16u);
                  }

                  v141 = [NSDate dateWithTimeIntervalSinceNow:8.0];
                  [manager4 setDontPrefetchBefore:v141];

                  [manager4 clearPayload];
                }
              }

              selfCopy2 = self;
              objc_sync_enter(selfCopy2);
              v273 = 0u;
              v274 = 0u;
              v275 = 0u;
              v276 = 0u;
              v143 = selfCopy2->_receivedItems;
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

              objc_sync_exit(selfCopy2);
              [manager4 updateFromSFAdvertisement:advertisementCopy];
              manager6 = [(UACornerActionManagerHandler *)selfCopy2 manager];
              [manager6 scheduleBestAppDetermination];
              goto LABEL_108;
            }

            if (v127)
            {
              obja = [manager4 optionBits];
              options4 = [manager4 options];
              v149 = [options4 description];
              v150 = sub_100009684(v149);
              optionBits = [(SharingBTLEAdvertisementPayload *)uniqueID3 optionBits];
              options5 = [(SharingBTLEAdvertisementPayload *)uniqueID3 options];
              v152 = [options5 description];
              v153 = sub_100009684(v152);
              advertisementPayload6 = [advertisementCopy advertisementPayload];
              v155 = sub_100006EF4(advertisementPayload6);
              *buf = 67110403;
              *v283 = obja;
              *&v283[4] = 2114;
              *&v283[6] = v150;
              *&v283[14] = 1024;
              *&v283[16] = optionBits;
              *v284 = 2114;
              *&v284[2] = v153;
              *v285 = 2114;
              *&v285[2] = v155;
              *v286 = 2113;
              *&v286[2] = manager4;
              _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEBUG, " -- Because the optionBits in the packet changed, from %x%{public}@ to %x%{public}@, discarding current item and starting fresh, %{public}@ / %{private}@", buf, 0x36u);
            }

            [(UASharingReceiver *)self removeItem:manager4];
            manager6 = manager4;
            goto LABEL_107;
          }

          advertisementPayload7 = [advertisementCopy advertisementPayload];
          v157 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:advertisementCopy optionBits:sub_100064DA0(advertisementPayload7) scanner:scannerCopy receiver:self];

          bundleIdentifier2 = [v157 bundleIdentifier];

          if (!bundleIdentifier2)
          {

            goto LABEL_75;
          }

          v159 = sub_100001A30(0);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            bundleIdentifier3 = [v157 bundleIdentifier];
            *buf = 138543619;
            *v283 = uniqueID3;
            *&v283[8] = 2113;
            *&v283[10] = bundleIdentifier3;
            _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, "SFRECEIVER: Replacing received advertisement %{public}@ because it matches a new bundleIdentifier %{private}@", buf, 0x16u);
          }

          manager4 = v157;
          if (manager4)
          {
            goto LABEL_76;
          }
        }

        if ([(SharingBTLEAdvertisementPayload *)uniqueID3 advertisementKind]== 2)
        {
          device21 = [advertisementCopy device];
          manager6 = [(UASharingReceiver *)self sharingBTLESuggestedItemForAdvertisementPayload:0 forDevice:device21];

          if (manager6)
          {
            advertisementPayload8 = [manager6 advertisementPayload];
            v163 = [advertisementPayload8 advertisementKind] == 2;

            if (v163)
            {
              advertisementPayload9 = [advertisementCopy advertisementPayload];
              v165 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:advertisementCopy optionBits:sub_100064DA0(advertisementPayload9) scanner:scannerCopy receiver:self];

              bundleIdentifier4 = [v165 bundleIdentifier];
              bundleIdentifier5 = [manager6 bundleIdentifier];
              LODWORD(advertisementPayload9) = [bundleIdentifier4 isEqual:bundleIdentifier5];

              v168 = sub_100001A30(0);
              v169 = os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG);
              if (advertisementPayload9)
              {
                if (v169)
                {
                  bundleIdentifier6 = [0 bundleIdentifier];
                  advertisementPayload10 = [advertisementCopy advertisementPayload];
                  v172 = sub_100006EF4(advertisementPayload10);
                  device22 = [advertisementCopy device];
                  uniqueID10 = [device22 uniqueID];
                  *buf = 138478595;
                  *v283 = bundleIdentifier6;
                  *&v283[8] = 2114;
                  *&v283[10] = v172;
                  *&v283[18] = 2113;
                  *v284 = uniqueID10;
                  *&v284[8] = 2113;
                  *v285 = 0;
                  _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEBUG, " -- Matching dns- item to previously received one, mapping to %{private}@, for item already received from this device, %{public}@/%{private}@, so using it. %{private}@", buf, 0x2Au);
                }

                manager4 = manager6;
                [manager4 updateFromSFAdvertisement:advertisementCopy];
                manager7 = [(UACornerActionManagerHandler *)self manager];
                [manager7 scheduleBestAppDetermination];
              }

              else
              {
                if (v169)
                {
                  advertisementPayload11 = [manager6 advertisementPayload];
                  *buf = 138543875;
                  *v283 = advertisementPayload11;
                  *&v283[8] = 2114;
                  *&v283[10] = uniqueID3;
                  *&v283[18] = 2113;
                  *v284 = manager6;
                  _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEBUG, " -- New advertisement of DNS type didn't seem to match to same app as  previous one, %{public}@ vs %{public}@, so can't use it. %{private}@", buf, 0x20u);
                }

                [(UASharingReceiver *)self removeItem:manager6];
                manager4 = 0;
              }

LABEL_108:
              manager8 = [(UACornerActionManagerHandler *)self manager];
              pingController = [manager8 pingController];
              if (pingController)
              {
                v183 = [(SharingBTLEAdvertisementPayload *)uniqueID3 advertisementKind]== 5;

                if (!v183)
                {
                  goto LABEL_112;
                }

                advertisementPayload12 = [advertisementCopy advertisementPayload];
                v185 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:advertisementCopy optionBits:sub_100064DA0(advertisementPayload12) scanner:scannerCopy receiver:self];

                v270[0] = _NSConcreteStackBlock;
                v270[1] = 3221225472;
                v270[2] = sub_10004DCE8;
                v270[3] = &unk_1000C4C98;
                v271 = v185;
                selfCopy3 = self;
                manager4 = v271;
                [v271 requestPayloadWithCompletionHandler:v270];
                manager8 = v271;
              }

LABEL_112:
              if (!manager4)
              {
                advertisementPayload13 = [advertisementCopy advertisementPayload];
                v187 = sub_100064DA0(advertisementPayload13);

                activeDevices2 = [(UASharingReceiver *)self activeDevices];
                v189 = [activeDevices2 count] > 1;

                if (v189)
                {
                  v190 = v187 | 0x40;
                }

                else
                {
                  v190 = v187;
                }

                manager4 = [SharingBTLESuggestedItem cornerActionBTLEItemWithSFAdvertisement:advertisementCopy optionBits:v190 scanner:scannerCopy receiver:self];
                v191 = sub_100001A30(0);
                if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                {
                  advertisementPayload14 = [advertisementCopy advertisementPayload];
                  v193 = sub_100006EF4(advertisementPayload14);
                  activityType2 = [manager4 activityType];
                  bundleIdentifier7 = [manager4 bundleIdentifier];
                  objb = [manager4 uuid];
                  uUIDString3 = [objb UUIDString];
                  device23 = [advertisementCopy device];
                  name4 = [device23 name];
                  device24 = [advertisementCopy device];
                  uniqueID11 = [device24 uniqueID];
                  options6 = [advertisementCopy options];
                  v198 = [options6 description];
                  v199 = sub_100009684(v198);
                  *buf = 138544899;
                  *v283 = v193;
                  *&v283[8] = 2113;
                  *&v283[10] = activityType2;
                  *&v283[18] = 2113;
                  *v284 = bundleIdentifier7;
                  *&v284[8] = 2114;
                  *v285 = uUIDString3;
                  *&v285[8] = 2113;
                  *v286 = name4;
                  *&v286[8] = 2113;
                  v287 = uniqueID11;
                  v288 = 2114;
                  v289 = v199;
                  _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "# RECEIVED advertisement, %{public}@ type=%{private}@ -> %{private}@, %{public}@, from %{private}@/%{private}@ options=%{public}@", buf, 0x48u);
                }

                if ((v44 & 1) == 0)
                {
                  device25 = [advertisementCopy device];
                  uniqueID12 = [device25 uniqueID];
                  [(UASharingReceiver *)self removeAllFromDevice:uniqueID12];
                }

                [(UASharingReceiver *)self addItem:manager4 scheduleUpdates:1];
                v202 = +[UADiagnosticManager sharedManager];
                activityType3 = [manager4 activityType];
                [v202 submitUserActivityWasDiscovered:activityType3];
              }

              v204 = +[UAUserActivityDefaults sharedDefaults];
              if ([v204 multiHandoffEnabled])
              {
                options7 = [(SharingBTLEAdvertisementPayload *)uniqueID3 options];
                v206 = [options7 objectForKeyedSubscript:UAUserActivityAutoPullActivitiesListKey];
                bOOLValue2 = [v206 BOOLValue];

                if (bOOLValue2)
                {
                  device26 = [advertisementCopy device];
                  uniqueID13 = [device26 uniqueID];
                  v210 = [uniqueID13 isEqualToString:self->_lastAutoPullActivitiesRequesterId];

                  if ((v210 & 1) == 0)
                  {
                    v211 = sub_100001A30(0);
                    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "received UAUserActivityAutoPullActivitiesListKey bit on, fetching more app suggestions", buf, 2u);
                    }

                    device27 = [advertisementCopy device];
                    uniqueID14 = [device27 uniqueID];
                    lastAutoPullActivitiesRequesterId = self->_lastAutoPullActivitiesRequesterId;
                    self->_lastAutoPullActivitiesRequesterId = uniqueID14;

                    device28 = [advertisementCopy device];
                    [(UASharingReceiver *)self fetchMoreAppSuggestionsFromDevice:device28];
                    goto LABEL_130;
                  }

                  goto LABEL_131;
                }
              }

              else
              {
              }

              device29 = [advertisementCopy device];
              uniqueID15 = [device29 uniqueID];
              v218 = [uniqueID15 isEqualToString:self->_lastAutoPullActivitiesRequesterId];

              if (v218)
              {
                device28 = self->_lastAutoPullActivitiesRequesterId;
                self->_lastAutoPullActivitiesRequesterId = 0;
LABEL_130:
              }

LABEL_131:
              if ([manager4 active])
              {
                selfCopy4 = self;
                objc_sync_enter(selfCopy4);
                v266 = 0u;
                v267 = 0u;
                v268 = 0u;
                v269 = 0u;
                obj = selfCopy4;
                v220 = selfCopy4->_receivedItems;
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
                      if (([v224 isEqual:manager4] & 1) == 0)
                      {
                        peerDevice2 = [v224 peerDevice];
                        uniqueID16 = [peerDevice2 uniqueID];
                        peerDevice3 = [manager4 peerDevice];
                        uniqueID17 = [peerDevice3 uniqueID];
                        v229 = [uniqueID16 isEqualToString:uniqueID17];

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

              if (manager4)
              {
                v230 = +[UAUserActivityDefaults sharedDefaults];
                debugEnablePrefetch = [v230 debugEnablePrefetch];

                if (debugEnablePrefetch)
                {
                  [(SharingBTLEAdvertisementPayload *)uniqueID3 isCurrent];
                  v232 = sub_100001A30(0);
                  if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid3 = [manager4 uuid];
                    uUIDString4 = [uuid3 UUIDString];
                    statusString = [manager4 statusString];
                    *buf = 138543619;
                    *v283 = uUIDString4;
                    *&v283[8] = 2113;
                    *&v283[10] = statusString;
                    _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, "*** Checking whether to do a pre-emptive fetch of the payload for item %{public}@/%{private}@", buf, 0x16u);
                  }

                  dontPrefetchBefore = [manager4 dontPrefetchBefore];
                  if (dontPrefetchBefore)
                  {
                    dontPrefetchBefore2 = [manager4 dontPrefetchBefore];
                    v238 = sub_100061A60(dontPrefetchBefore2);

                    if (v238)
                    {
                      [manager4 setDontPrefetchBefore:0];
                    }
                  }

                  dontPrefetchBefore3 = [manager4 dontPrefetchBefore];

                  if (dontPrefetchBefore3)
                  {
                    v240 = sub_100001A30(0);
                    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                    {
                      uuid4 = [manager4 uuid];
                      uUIDString5 = [uuid4 UUIDString];
                      statusString2 = [manager4 statusString];
                      dontPrefetchBefore4 = [manager4 dontPrefetchBefore];
                      *buf = 138543875;
                      *v283 = uUIDString5;
                      *&v283[8] = 2113;
                      *&v283[10] = statusString2;
                      *&v283[18] = 2114;
                      *v284 = dontPrefetchBefore4;
                      _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "*** Ignoring prefetch for item %{public}@/%{private}@ because dontPrefetchBefore=%{public}@", buf, 0x20u);
                    }
                  }

                  if (([manager4 isPayloadRequested] & 1) == 0 && (objc_msgSend(manager4, "isPayloadAvailable") & 1) == 0)
                  {
                    v245 = sub_100001A30(0);
                    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
                    {
                      uuid5 = [manager4 uuid];
                      uUIDString6 = [uuid5 UUIDString];
                      statusString3 = [manager4 statusString];
                      *buf = 138543619;
                      *v283 = uUIDString6;
                      *&v283[8] = 2113;
                      *&v283[10] = statusString3;
                      _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, "*** Scheduling a pre-emptive fetch of the payload for item %{public}@/%{private}@", buf, 0x16u);
                    }

                    v264[0] = _NSConcreteStackBlock;
                    v264[1] = 3221225472;
                    v264[2] = sub_10004DF3C;
                    v264[3] = &unk_1000C5DC0;
                    v265 = manager4;
                    manager4 = v265;
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
          manager6 = [(SharingBTLEAdvertisementPayload *)uniqueID3 description];
          device30 = [advertisementCopy device];
          name5 = [device30 name];
          device31 = [advertisementCopy device];
          uniqueID18 = [device31 uniqueID];
          v179 = [NSString stringWithFormat:@"SCANNING:Received %@ (no match) from %@/%@", manager6, name5, uniqueID18];
          [ActivityManagerDebuggingManager appendRecentAction:v179];
        }

LABEL_107:
        manager4 = 0;
        goto LABEL_108;
      }
    }

    else
    {
    }

    lastSeenPasteboardDevice3 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
    if (lastSeenPasteboardDevice3)
    {
      lastSeenPasteboardDevice4 = [(UASharingReceiver *)self lastSeenPasteboardDevice];
      uniqueID19 = [lastSeenPasteboardDevice4 uniqueID];
      device32 = [advertisementCopy device];
      uniqueID20 = [device32 uniqueID];
      v89 = [uniqueID19 isEqualToString:uniqueID20];

      if (v89)
      {
        v90 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_INFO, "[PBOARD] Recived add w/o remote pboard for last seen device, notify client and clear timmer", buf, 2u);
        }

        [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
        manager9 = [(UACornerActionManagerHandler *)self manager];
        pasteboardController3 = [manager9 pasteboardController];
        [pasteboardController3 setRemotePasteboardAvalibility:0 withDataRequester:0];

        v93 = +[UADiagnosticManager sharedManager];
        [v93 submitRemotePasteboardBecameUnavailable:3];

        remotePboardTimer4 = [(UASharingReceiver *)self remotePboardTimer];
        [remotePboardTimer4 invalidate];

        [(UASharingReceiver *)self setRemotePboardTimer:0];
      }
    }

    goto LABEL_71;
  }

  oslog = sub_100001A30(0);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    advertisementPayload15 = [advertisementCopy advertisementPayload];
    v25 = sub_100006EF4(advertisementPayload15);
    device33 = [advertisementCopy device];
    uniqueID21 = [device33 uniqueID];
    *buf = 138543619;
    *v283 = v25;
    *&v283[8] = 2113;
    *&v283[10] = uniqueID21;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Ignoring received ActivityContinuation because the current profile disallows it, %{public}@ from %{private}@", buf, 0x16u);
  }

LABEL_47:
}

- (BOOL)fetchMoreAppSuggestions
{
  sfActivityScanner = [(UASharingReceiver *)self sfActivityScanner];
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
    activeDevices = [(UASharingReceiver *)self activeDevices];
    v7 = [activeDevices count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "issuing handoff-more_items command for %lu devices", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x2020000000;
  activeDevices2 = [(UASharingReceiver *)self activeDevices];
  v9 = [activeDevices2 count];

  v33 = v9;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  activeDevices3 = [(UASharingReceiver *)self activeDevices];
  v11 = [activeDevices3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(activeDevices3);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10004E36C;
        v21[3] = &unk_1000C5DE8;
        p_buf = &buf;
        objc_copyWeak(&v24, &location);
        v21[4] = v14;
        v22 = sfActivityScanner;
        [v22 activityPayloadFromDevice:v14 forAdvertisementPayload:v19 command:@"handoff-more_items" timeout:v4 withCompletionHandler:v21];

        objc_destroyWeak(&v24);
      }

      v11 = [activeDevices3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  activeDevices4 = [(UASharingReceiver *)self activeDevices];
  v16 = [activeDevices4 count] != 0;

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(&location);

  return v16;
}

- (void)fetchMoreAppSuggestionsFromDevice:(id)device
{
  deviceCopy = device;
  sfActivityScanner = [(UASharingReceiver *)self sfActivityScanner];
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
    v19 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "issuing handoff-more_items command for device %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004E5FC;
  v13[3] = &unk_1000C5E10;
  objc_copyWeak(&v16, &location);
  v11 = deviceCopy;
  v14 = v11;
  v12 = sfActivityScanner;
  v15 = v12;
  [v12 activityPayloadFromDevice:v11 forAdvertisementPayload:v6 command:@"handoff-more_items" timeout:v9 withCompletionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)addNewItemsFromPayloads:(id)payloads device:(id)device scanner:(id)scanner force:(BOOL)force
{
  forceCopy = force;
  payloadsCopy = payloads;
  deviceCopy = device;
  scannerCopy = scanner;
  v39 = +[NSMutableArray array];
  v54 = 0;
  [payloadsCopy getBytes:&v54 length:1];
  if ([payloadsCopy length] >= 2)
  {
    v11 = 1;
    do
    {
      v12 = [payloadsCopy subdataWithRange:{v11, v54}];
      [v39 addObject:v12];

      v11 += v54;
    }

    while (v11 < [payloadsCopy length]);
  }

  v13 = sub_100001A30(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v39 count];
    v15 = [deviceCopy description];
    *buf = 134218242;
    v58 = v14;
    v59 = 2112;
    v60 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "got back %lu items for handoff-more_items command from device %@", buf, 0x16u);
  }

  if ([v39 count] || forceCopy)
  {
    v45 = +[NSMutableSet set];
    v41 = +[NSMutableSet set];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = selfCopy->_receivedItems;
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
          peerDevice = [v20 peerDevice];
          uniqueID = [peerDevice uniqueID];
          uniqueID2 = [deviceCopy uniqueID];
          v24 = [uniqueID isEqualToString:uniqueID2];

          if (v24)
          {
            if ([v20 active])
            {
              bundleIdentifier = [v20 bundleIdentifier];
              v26 = bundleIdentifier == 0;

              if (!v26)
              {
                bundleIdentifier2 = [v20 bundleIdentifier];
                [v45 addObject:bundleIdentifier2];
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

    objc_storeStrong(&selfCopy->_receivedItems, v41);
    objc_sync_exit(selfCopy);

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obja = v39;
    v28 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v28)
    {
      when2 = 0;
      v30 = *v47;
      do
      {
        v31 = 0;
        v32 = when2;
        do
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obja);
          }

          v33 = [SharingBTLESuggestedItem cornerActionBTLEItemWithPayload:*(*(&v46 + 1) + 8 * v31) device:deviceCopy options:&__NSDictionary0__struct optionBits:sub_100064DA0(*(*(&v46 + 1) + 8 * v31)) scanner:scannerCopy receiver:selfCopy];
          bundleIdentifier3 = [v33 bundleIdentifier];
          [v33 setActive:{objc_msgSend(v45, "containsObject:", bundleIdentifier3)}];

          when = [v33 when];
          v36 = [v32 compare:when] == 1;

          if (v36)
          {
            v37 = [v32 dateByAddingTimeInterval:1.0];
            [v33 setWhen:v37];
          }

          when2 = [v33 when];

          [(UASharingReceiver *)selfCopy addItem:v33 scheduleUpdates:0];
          v31 = v31 + 1;
          v32 = when2;
        }

        while (v28 != v31);
        v28 = [obja countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v28);
    }

    manager = [(UACornerActionManagerHandler *)selfCopy manager];
    [manager scheduleBestAppDetermination];
  }
}

- (id)statusString
{
  v71 = +[NSMutableString string];
  suspended = [(UACornerActionManagerHandler *)self suspended];
  v4 = "SUSPENDED";
  if (!suspended)
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

  scanningForTypes = [(UAReceiver *)self scanningForTypes];
  if ([scanningForTypes containsObject:off_1000E50F0])
  {
    v7 = @" UA";
  }

  else
  {
    v7 = &stru_1000C67D0;
  }

  scanningForTypes2 = [(UAReceiver *)self scanningForTypes];
  if ([scanningForTypes2 containsObject:off_1000E50F8])
  {
    v9 = @" Clip";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  sfActivityScanner = [(UASharingReceiver *)self sfActivityScanner];
  if (sfActivityScanner)
  {
    v11 = &stru_1000C67D0;
  }

  else
  {
    v11 = @"(NO SFActivityScanner) ";
  }

  manager = [(UACornerActionManagerHandler *)self manager];
  isBluetoothEnabled = [manager isBluetoothEnabled];
  v14 = @" (Bluetooth disabled)";
  if (isBluetoothEnabled)
  {
    v14 = &stru_1000C67D0;
  }

  v54 = v7;
  v15 = v71;
  [v71 appendFormat:@"SharingBTLE receiver %s%s%@%@ %@%@", v72, v5, v54, v9, v11, v14];

  sfActivityScanners = [(UASharingReceiver *)self sfActivityScanners];
  v17 = [sfActivityScanners count];

  if (v17 != 1)
  {
    sfActivityScanners2 = [(UASharingReceiver *)self sfActivityScanners];
    [v71 appendFormat:@"%ld scanners", objc_msgSend(sfActivityScanners2, "count")];
  }

  [v71 appendString:@"\n"];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  selfCopy = self;
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

        scanner = [v20 scanner];

        if (!scanner)
        {
          goto LABEL_29;
        }

        scanner2 = [v21 scanner];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_29;
        }

        scanner3 = [v21 scanner];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if (v26)
        {
          scanner4 = [v21 scanner];
          controller = [scanner4 controller];
          v70 = [objc_opt_class() description];
        }

        else
        {
LABEL_29:
          v70 = &stru_1000C67D0;
        }

        activityType = [v21 activityType];
        dynamicActivityType = [v21 dynamicActivityType];
        if (dynamicActivityType)
        {
          dynamicActivityType2 = [v21 dynamicActivityType];
          v60 = [NSString stringWithFormat:@":%@", dynamicActivityType2];
          v64 = v60;
        }

        else
        {
          v64 = &stru_1000C67D0;
        }

        bundleIdentifier = [v21 bundleIdentifier];
        uuid = [v21 uuid];
        uUIDString = [uuid UUIDString];
        advertisementPayload = [v21 advertisementPayload];
        v30 = [advertisementPayload description];
        peerDevice = [v21 peerDevice];
        name = [peerDevice name];
        when = [v21 when];
        removeAfter = [v21 removeAfter];
        if (removeAfter)
        {
          removeAfter2 = [v21 removeAfter];
          v35 = sub_100009AC0(removeAfter2);
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

        isPayloadAvailable = [v21 isPayloadAvailable];
        v38 = " (PayloadAv)";
        if (!isPayloadAvailable)
        {
          v38 = "";
        }

        v55 = v36;
        v15 = v71;
        [v71 appendFormat:@" - %@%@%@ app:%@ %@ data=%@, from %@ at %@ remove at %@%s%s\n", v70, activityType, v64, bundleIdentifier, uUIDString, v30, name, when, v35, v55, v38];
        if (removeAfter)
        {
        }

        if (dynamicActivityType)
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
  activeDevices = [(UASharingReceiver *)selfCopy activeDevices];
  v39 = [activeDevices countByEnumeratingWithState:&v75 objects:v83 count:16];
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
          objc_enumerationMutation(activeDevices);
        }

        v43 = *(*(&v75 + 1) + 8 * i);
        uniqueID = [v43 uniqueID];
        lastSeenPasteboardDevice = [(UASharingReceiver *)selfCopy lastSeenPasteboardDevice];
        uniqueID2 = [lastSeenPasteboardDevice uniqueID];
        v47 = [uniqueID isEqualToString:uniqueID2];
        v48 = &stru_1000C67D0;
        if (v47)
        {
          v48 = @", pb";
        }

        v49 = v48;

        name2 = [v43 name];
        modelIdentifier = [v43 modelIdentifier];
        v15 = v71;
        [v71 appendFormat:@"(%@, %@%@)", name2, modelIdentifier, v49];
      }

      v40 = [activeDevices countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v40);
  }

  [v15 appendString:@"\n"];
  v52 = [v15 copy];

  return v52;
}

- (BOOL)terminate
{
  periodicCleanup = [(UASharingReceiver *)self periodicCleanup];
  [periodicCleanup reset];

  periodicCleanup2 = [(UASharingReceiver *)self periodicCleanup];
  [periodicCleanup2 waitUntilComplete];

  return 1;
}

- (void)clearRemotePasteboardAvailable:(id)available
{
  [(UASharingReceiver *)self setLastSeenPasteboardDevice:0];
  manager = [(UACornerActionManagerHandler *)self manager];
  pasteboardController = [manager pasteboardController];
  [pasteboardController setRemotePasteboardAvalibility:0 withDataRequester:0];

  v6 = +[UADiagnosticManager sharedManager];
  [v6 submitRemotePasteboardBecameUnavailable:2];

  remotePboardTimer = [(UASharingReceiver *)self remotePboardTimer];
  [remotePboardTimer invalidate];

  [(UASharingReceiver *)self setRemotePboardTimer:0];
}

@end