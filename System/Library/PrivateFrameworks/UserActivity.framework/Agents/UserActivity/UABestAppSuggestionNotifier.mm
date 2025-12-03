@interface UABestAppSuggestionNotifier
- (BOOL)active;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (UABestAppSuggestionNotifier)initWithManager:(id)manager connection:(id)connection;
- (id)bestCornerItemsFromItems:(id)items;
- (id)items;
- (id)statusString;
- (id)userActivityInfoForUUID:(id)d;
- (void)doConnected;
- (void)doDetermineBestAppSuggestionWithCompletionHandler:(id)handler;
- (void)doDetermineBestAppSuggestions:(int64_t)suggestions completionHandler:(id)handler;
- (void)doQueueFetchOfPayloadForBestAppSuggestion:(id)suggestion completionHandler:(id)handler;
- (void)doRegisterForBestAppChangeNotification;
- (void)doRemoveBestAppSuggestion:(id)suggestion options:(id)options;
- (void)doUnregisterForBestAppChangeNotification;
- (void)fetchAllNearbyAppSuggestions:(id)suggestions;
- (void)notifyBestAppsChanged:(id)changed atTime:(id)time;
- (void)setItems:(id)items;
- (void)setWantsBestAppChangedNotifications:(BOOL)notifications;
- (void)update;
@end

@implementation UABestAppSuggestionNotifier

- (BOOL)resume
{
  v7.receiver = self;
  v7.super_class = UABestAppSuggestionNotifier;
  resume = [(UACornerActionManagerHandler *)&v7 resume];
  if (resume)
  {
    scheduler = [(UABestAppSuggestionNotifier *)self scheduler];
    [scheduler resume];

    connection = [(UABestAppSuggestionNotifier *)self connection];
    [connection resume];
  }

  return resume;
}

- (void)doUnregisterForBestAppChangeNotification
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = [(UABestAppSuggestionNotifier *)self connection];
    v5 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(&v6, 0, sizeof(v6));
    }

    pidp = 0;
    atoken = v6;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    *buf = 134349056;
    v10 = pidp;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "doUnregisterForBestAppChangeNotification, clientPid=%{public}ld", buf, 0xCu);
  }

  [(UABestAppSuggestionNotifier *)self setWantsBestAppChangedNotifications:0];
  [(UABestAppSuggestionNotifier *)self setLastItemUUIDs:0];
  [(UABestAppSuggestionNotifier *)self setLastItemWhens:0];
}

- (void)doRegisterForBestAppChangeNotification
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = [(UABestAppSuggestionNotifier *)self connection];
    v5 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(&v6, 0, sizeof(v6));
    }

    pidp = 0;
    atoken = v6;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    *buf = 134349056;
    v10 = pidp;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "doRegisterForBestAppChangeNotification, clientPid=%{public}ld", buf, 0xCu);
  }

  [(UABestAppSuggestionNotifier *)self setWantsBestAppChangedNotifications:1];
}

- (BOOL)active
{
  connection = [(UABestAppSuggestionNotifier *)self connection];
  if (connection)
  {
    wantsBestAppChangedNotifications = [(UABestAppSuggestionNotifier *)self wantsBestAppChangedNotifications];
  }

  else
  {
    wantsBestAppChangedNotifications = 0;
  }

  return wantsBestAppChangedNotifications;
}

- (UABestAppSuggestionNotifier)initWithManager:(id)manager connection:(id)connection
{
  v4 = __chkstk_darwin(self, a2, manager, connection);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = v6;
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  pidp = 0;
  atoken = v38;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v12 = proc_pidpath(pidp, buffer, 0x1000u);
  if (v12 < 1 || !buffer[0])
  {
    goto LABEL_14;
  }

  while (!buffer[v12])
  {
    v13 = __OFSUB__(v12--, 1);
    if ((v12 < 0) ^ v13 | (v12 == 0))
    {
      v12 = 0;
      break;
    }
  }

  v14 = -1;
  do
  {
    v15 = v12 - 1;
    ++v14;
    if (!v12)
    {
      break;
    }

    v16 = buffer[v12--];
  }

  while (v16 != 47);
  pidp = [[NSString alloc] initWithBytes:&buffer[v15 + 2] length:v14 encoding:4];
  if (!pidp)
  {
LABEL_14:
    if (v11)
    {
      [v11 auditToken];
    }

    else
    {
      memset(&v38, 0, sizeof(v38));
    }

    pidp = 0;
    atoken = v38;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    pidp = [NSString stringWithFormat:@"(PID:%ld)", pidp];
  }

  if (pidp)
  {
    v18 = pidp;
  }

  else
  {
    v18 = @"BestApp";
  }

  v37.receiver = v7;
  v37.super_class = UABestAppSuggestionNotifier;
  v19 = [(UAActivityNotifier *)&v37 initWithManager:v9 name:v18];
  v20 = v19;
  if (v19)
  {
    [(UABestAppSuggestionNotifier *)v19 setConnection:v11];
    v21 = +[NSMutableDictionary dictionary];
    [(UABestAppSuggestionNotifier *)v20 setSupressedUntil:v21];

    v22 = dispatch_get_global_queue(0, 0);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000EAB4;
    v35[3] = &unk_1000C4D10;
    v23 = v20;
    v36 = v23;
    v24 = [UADispatchScheduler dispatchScheduler:@"bestApp" frequency:v22 queue:v35 block:0.0];
    [(UABestAppSuggestionNotifier *)v23 setScheduler:v24];

    v25 = sub_100007154();
    [v11 setExportedInterface:v25];

    v26 = sub_100007198();
    [v11 setRemoteObjectInterface:v26];

    [v11 setExportedObject:v23];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000EAF8;
    v33[3] = &unk_1000C4D10;
    v27 = v23;
    v34 = v27;
    connection = [(UABestAppSuggestionNotifier *)v27 connection];
    [connection setInvalidationHandler:v33];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000EC24;
    v31[3] = &unk_1000C4D10;
    v32 = v11;
    connection2 = [(UABestAppSuggestionNotifier *)v27 connection];
    [connection2 setInterruptionHandler:v31];
  }

  return v20;
}

- (void)setWantsBestAppChangedNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_wantsBestAppChangedNotifications != notificationsCopy)
  {
    obj->_wantsBestAppChangedNotifications = notificationsCopy;
    manager = [(UACornerActionManagerHandler *)obj manager];
    [manager triggerUserIdleDetermination];

    v4 = obj;
    if (notificationsCopy)
    {
      manager2 = [(UACornerActionManagerHandler *)obj manager];
      [manager2 scheduleBestAppDetermination];

      v4 = obj;
    }
  }

  objc_sync_exit(v4);
}

- (id)items
{
  possibleItems = [(UABestAppSuggestionNotifier *)self possibleItems];
  allValues = [possibleItems allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [itemsCopy description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setItems(%{private}@)", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = +[NSMutableDictionary dictionary];
  [(UABestAppSuggestionNotifier *)selfCopy setPossibleItems:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        possibleItems = [(UABestAppSuggestionNotifier *)selfCopy possibleItems];
        uuid = [v14 uuid];
        [possibleItems setObject:v14 forKeyedSubscript:uuid];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [(UABestAppSuggestionNotifier *)selfCopy bestCornerItemsFromItems:v10];
  v18 = +[NSDate date];
  [(UABestAppSuggestionNotifier *)selfCopy notifyBestAppsChanged:v17 atTime:v18];

  objc_sync_exit(selfCopy);
}

- (id)userActivityInfoForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    items = [(UABestAppSuggestionNotifier *)self items];
    v6 = [items countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = *v27;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        uuid = [v9 uuid];
        v11 = [dCopy isEqual:uuid];

        if (v11)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [items countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v9;

      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  manager = [(UACornerActionManagerHandler *)self manager];
  cornerActionItems = [manager cornerActionItems];

  v15 = [cornerActionItems countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(cornerActionItems);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        uuid2 = [v18 uuid];
        v20 = [dCopy isEqual:uuid2];

        if (v20)
        {
          v12 = v18;
          goto LABEL_22;
        }
      }

      v15 = [cornerActionItems countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_22:

LABEL_23:

  return v12;
}

- (id)bestCornerItemsFromItems:(id)items
{
  itemsCopy = items;
  v4 = +[UAUserActivityDefaults sharedDefaults];
  [v4 cornerActionItemTimeout];
  v6 = v5;

  v51 = +[NSDate date];
  if (v6 <= 0.0)
  {
    v52 = 0;
  }

  else
  {
    v52 = [NSDate dateWithTimeIntervalSinceNow:-v6];
  }

  v49 = +[NSMutableArray array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = itemsCopy;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (!v7)
  {
    goto LABEL_35;
  }

  v53 = *v56;
  selfCopy = self;
  do
  {
    v54 = v7;
    for (i = 0; i != v54; i = i + 1)
    {
      if (*v56 != v53)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v55 + 1) + 8 * i);
      supressedUntil = [(UABestAppSuggestionNotifier *)self supressedUntil];
      uuid = [v9 uuid];
      v12 = [supressedUntil objectForKey:uuid];

      if (v12)
      {
        hardSupressUntil = [v12 hardSupressUntil];
        if (hardSupressUntil)
        {
          hardSupressUntil2 = [v12 hardSupressUntil];
          v15 = sub_10000A02C(v51, hardSupressUntil2);

          if (v15)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              activityType = [v9 activityType];
              uuid2 = [v9 uuid];
              uUIDString = [uuid2 UUIDString];
              hardSupressUntil3 = [v12 hardSupressUntil];
              v21 = sub_100009AC0(hardSupressUntil3);
              *buf = 138478595;
              v60 = activityType;
              v61 = 2114;
              v62 = uUIDString;
              v63 = 2114;
              v64 = v21;
              v65 = 2114;
              v66 = v51;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring supressed item, %{private}@ %{public}@ (until %{public}@, now=%{public}@)", buf, 0x2Au);

              self = selfCopy;
            }

LABEL_31:

            goto LABEL_33;
          }
        }

        supressUntil = [v12 supressUntil];
        if (supressUntil)
        {
          supressUntil2 = [v12 supressUntil];
          v24 = sub_10000A02C(v51, supressUntil2);

          if (v24)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              activityType2 = [v9 activityType];
              uuid3 = [v9 uuid];
              uUIDString2 = [uuid3 UUIDString];
              supressUntil3 = [v12 supressUntil];
              v29 = sub_100009AC0(supressUntil3);
              when = [v9 when];
              v31 = sub_100009AC0(when);
              *buf = 138478851;
              v60 = activityType2;
              v61 = 2114;
              v62 = uUIDString2;
              v63 = 2114;
              v64 = v29;
              v65 = 2114;
              v66 = v31;
              v67 = 2114;
              v68 = v51;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring supressed item, %{private}@ %{public}@ (until %{public}@, item.when=%{public}@, now=%{public}@)", buf, 0x34u);

              self = selfCopy;
            }

            goto LABEL_31;
          }
        }
      }

      v32 = sub_1000023A0([v9 type]);
      if (v52)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        when2 = [v9 when];
        if (when2)
        {
          when3 = [v9 when];
          v36 = sub_10000A02C(when3, v52);

          if (v36)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              uuid4 = [v9 uuid];
              uUIDString3 = [uuid4 UUIDString];
              when4 = [v9 when];
              *buf = 138544131;
              v60 = uUIDString3;
              v61 = 2113;
              v62 = v9;
              v63 = 2114;
              v64 = when4;
              v65 = 2114;
              v66 = v52;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: Ignoring item %{public}@/%{private}@ %{public}@, because it is earlier than %{public}@", buf, 0x2Au);
            }

            goto LABEL_31;
          }
        }
      }

      v40 = +[UAUserActivityDefaults sharedDefaults];
      if ([v40 activityReceivingAllowed])
      {
      }

      else
      {
        v41 = sub_1000023A0([v9 type]);

        if (v41)
        {
          v16 = sub_100001A30(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            uuid5 = [v9 uuid];
            uUIDString4 = [uuid5 UUIDString];
            *buf = 138543619;
            v60 = uUIDString4;
            v61 = 2113;
            v62 = v9;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring item %{public}@/%{private}@, because it is not a local action", buf, 0x16u);
          }

          goto LABEL_31;
        }
      }

      [v49 addObject:v9];
LABEL_33:
    }

    v7 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  }

  while (v7);
LABEL_35:

  [v49 sortUsingComparator:&stru_1000C4D50];
  if ([v49 count] < 0x10)
  {
    v44 = v49;
  }

  else
  {
    v44 = [v49 subarrayWithRange:{0, 15}];
  }

  v45 = v44;

  return v45;
}

- (void)notifyBestAppsChanged:(id)changed atTime:(id)time
{
  changedCopy = changed;
  timeCopy = time;
  selfCopy = self;
  if (![(UABestAppSuggestionNotifier *)self wantsBestAppChangedNotifications])
  {
    goto LABEL_42;
  }

  v6 = [changedCopy count];
  if (!changedCopy)
  {
    lastItemUUIDs = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
    if (!lastItemUUIDs)
    {
      lastItemWhens = [(UABestAppSuggestionNotifier *)self lastItemWhens];
      v17 = lastItemWhens == 0;
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_15;
  }

  lastItemUUIDs = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
  if (!lastItemUUIDs)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_23;
  }

  lastItemWhens = [(UABestAppSuggestionNotifier *)self lastItemWhens];
  if (!lastItemWhens)
  {
LABEL_15:
    v17 = 0;
LABEL_22:

    goto LABEL_23;
  }

  lastItemUUIDs2 = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
  if ([lastItemUUIDs2 count] != v6)
  {
LABEL_20:

    v17 = 0;
    goto LABEL_21;
  }

  lastItemWhens2 = [(UABestAppSuggestionNotifier *)selfCopy lastItemWhens];
  v11 = [lastItemWhens2 count];

  if (v11 != v6)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    v12 = 0;
    while (1)
    {
      lastItemUUIDs = [changedCopy objectAtIndex:v12];
      lastItemWhens = [lastItemUUIDs when];
      lastItemUUIDs2 = [(UABestAppSuggestionNotifier *)selfCopy lastItemWhens];
      v13 = [lastItemUUIDs2 objectAtIndex:v12];
      if (([lastItemWhens isEqual:v13] & 1) == 0)
      {
        break;
      }

      uuid = [lastItemUUIDs uuid];
      lastItemUUIDs3 = [(UABestAppSuggestionNotifier *)selfCopy lastItemUUIDs];
      v16 = [lastItemUUIDs3 objectAtIndex:v12];
      v17 = [uuid isEqual:v16];

      if ((v17 & 1) != 0 && v6 - 1 != v12++)
      {
        continue;
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v17 = 1;
LABEL_23:
  firstObject = [changedCopy firstObject];
  if (v17)
  {
    v19 = sub_100001A30(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      uuid2 = [firstObject uuid];
      uUIDString = [uuid2 UUIDString];
      logString = [firstObject logString];
      when = [firstObject when];
      *buf = 138544131;
      v61 = uUIDString;
      v62 = 2113;
      v63 = logString;
      v64 = 2114;
      v65 = when;
      v66 = 2048;
      v67 = [changedCopy count] - 1;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "BESTAPP: Not notifying clients about new best app %{public}@/%{private}@ .when=%{public}@ (and %lu more best app options) because it matches last item.", buf, 0x2Au);
    }
  }

  else
  {
    v24 = sub_100001A30(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      uuid3 = [firstObject uuid];
      uUIDString2 = [uuid3 UUIDString];
      v27 = [firstObject debugDescription];
      *buf = 138543875;
      v61 = uUIDString2;
      v62 = 2113;
      v63 = v27;
      v64 = 2048;
      v65 = [changedCopy count] - 1;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Notifying clients about new best app: %{public}@/%{private}@ (and %lu more best app options)", buf, 0x20u);
    }

    connection = [(UABestAppSuggestionNotifier *)selfCopy connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    if (changedCopy)
    {
      v29 = [NSMutableArray arrayWithCapacity:v6];
      v30 = [NSMutableArray arrayWithCapacity:v6];
      v31 = [NSMutableArray arrayWithCapacity:v6];
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v33 = [changedCopy objectAtIndex:i];
          uuid4 = [v33 uuid];
          [v29 setObject:uuid4 atIndexedSubscript:i];

          when2 = [v33 when];
          [v30 setObject:when2 atIndexedSubscript:i];

          v36 = [[UAUserActivityInfo alloc] initWithUserActivityInfo:v33];
          peerDevice = [v33 peerDevice];
          deviceType = [peerDevice deviceType];
          [v36 setPeerDeviceType:deviceType];

          [v31 setObject:v36 atIndexedSubscript:i];
        }
      }

      [(UABestAppSuggestionNotifier *)selfCopy setLastItemUUIDs:v29];
      [(UABestAppSuggestionNotifier *)selfCopy setLastItemWhens:v30];
      [remoteObjectProxy notifyBestAppsChanged:v31 when:timeCopy confidence:1.0];
      bundleIdentifier = [firstObject bundleIdentifier];
      activityType = [firstObject activityType];
      uuid5 = [firstObject uuid];
      uUIDString3 = [uuid5 UUIDString];
      peerDevice2 = [firstObject peerDevice];
      name = [peerDevice2 name];
      v44 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@ %@ %@ (and %lu more best app options)", bundleIdentifier, activityType, uUIDString3, name, [changedCopy count] - 1);
      [(UABestAppSuggestionNotifier *)selfCopy setLastItemStr:v44];

      v45 = +[UADiagnosticManager sharedManager];
      wasContinuedInfo = [firstObject wasContinuedInfo];
      [v45 submitUserActivityWasSuggestedInfo:wasContinuedInfo];
    }

    else
    {
      [remoteObjectProxy notifyBestAppsChanged:0 when:timeCopy confidence:0.0];
      [(UABestAppSuggestionNotifier *)selfCopy setLastItemUUIDs:0];
      [(UABestAppSuggestionNotifier *)selfCopy setLastItemWhens:0];
    }

    bundleIdentifier2 = [firstObject bundleIdentifier];
    v48 = bundleIdentifier2 == 0;

    if (!v48)
    {
      bundleIdentifier3 = [firstObject bundleIdentifier];
      v50 = BRHandoffDidReceiveApplicationContinuity();
      v51 = 0;

      if ((v50 & 1) == 0)
      {
        v52 = sub_100001A30(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier4 = [firstObject bundleIdentifier];
          *buf = 138478083;
          v61 = bundleIdentifier4;
          v62 = 2114;
          v63 = v51;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Error when nudging cloud docs for bundleIdentifier=%{private}@, err=%{public}@", buf, 0x16u);
        }
      }
    }

    v19 = remoteObjectProxy;
  }

LABEL_42:
}

- (void)update
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v60 = selfCopy;
  v58 = +[NSDate date];
  supressedUntil = [(UABestAppSuggestionNotifier *)selfCopy supressedUntil];
  v4 = [supressedUntil count];

  if (v4)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      supressedUntil2 = [(UABestAppSuggestionNotifier *)selfCopy supressedUntil];
      v7 = [supressedUntil2 description];
      v8 = sub_100009684(v7);
      *buf = 138477827;
      v66 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "BESTAPP: supressedUntil=%{private}@", buf, 0xCu);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  supressedUntil3 = [(UABestAppSuggestionNotifier *)selfCopy supressedUntil];
  obj = [supressedUntil3 allValues];

  v10 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v10)
  {
    v59 = *v62;
    *&v11 = 138544642;
    v51 = v11;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * i);
        possibleItems = [(UABestAppSuggestionNotifier *)v60 possibleItems];
        itemUUID = [v13 itemUUID];
        v16 = [possibleItems objectForKeyedSubscript:itemUUID];

        if (!v16)
        {
          goto LABEL_30;
        }

        hardSupressUntil = [v13 hardSupressUntil];
        if (hardSupressUntil)
        {
          hardSupressUntil2 = [v13 hardSupressUntil];
          v19 = sub_10000A02C(hardSupressUntil2, v58);

          if (v19)
          {
            v20 = sub_100001A30(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              itemUUID2 = [v13 itemUUID];
              uUIDString = [itemUUID2 UUIDString];
              *buf = 138543362;
              v66 = uUIDString;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .hardSupressedUntil for %{public}@ to nil, because that time has passed.", buf, 0xCu);
            }

            [v13 setHardSupressUntil:0];
          }
        }

        supressUntil = [v13 supressUntil];
        v24 = supressUntil == 0;

        if (!v24)
        {
          supressUntil2 = [v13 supressUntil];
          v26 = sub_10000A02C(supressUntil2, v58);

          if (v26)
          {
            v27 = sub_100001A30(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              itemUUID3 = [v13 itemUUID];
              uUIDString2 = [itemUUID3 UUIDString];
              *buf = 138543362;
              v66 = uUIDString2;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .supressUntil for %{public}@ to nil, because that time has passed.", buf, 0xCu);
            }

LABEL_25:

            [v13 setSupressUntil:0];
            goto LABEL_26;
          }

          lastInterestingTime = [v13 lastInterestingTime];
          if (lastInterestingTime)
          {
            lastInterestingTime2 = [v13 lastInterestingTime];
            lastInterestingTime3 = [v16 lastInterestingTime];
            v33 = sub_10000A02C(lastInterestingTime2, lastInterestingTime3);

            if (v33)
            {
              v27 = sub_100001A30(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                uuid = [v16 uuid];
                uUIDString3 = [uuid UUIDString];
                lastInterestingTime4 = [v13 lastInterestingTime];
                v56 = sub_100009AC0(lastInterestingTime4);
                lastInterestingTime5 = [v16 lastInterestingTime];
                v34 = sub_100009AC0(lastInterestingTime5);
                lastInterestingTime6 = [v13 lastInterestingTime];
                lastInterestingTime7 = [v16 lastInterestingTime];
                when = [v16 when];
                v38 = sub_100009AC0(when);
                *buf = v51;
                v66 = uUIDString3;
                v67 = 2114;
                v68 = v56;
                v69 = 2114;
                v70 = v34;
                v71 = 2114;
                v72 = lastInterestingTime6;
                v73 = 2114;
                v74 = lastInterestingTime7;
                v75 = 2114;
                v76 = v38;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .supressedUntil for %{public}@ to nil, because the .lastInterestingTime is earlier the last update for this item (%{public}@ vs %{public}@ (%{public}@ vs %{public}@), when=%{public}@).", buf, 0x3Eu);
              }

              goto LABEL_25;
            }
          }
        }

LABEL_26:
        hardSupressUntil3 = [v13 hardSupressUntil];
        v40 = hardSupressUntil3 == 0;

        if (!v40)
        {
          scheduler = [(UABestAppSuggestionNotifier *)v60 scheduler];
          hardSupressUntil4 = [v13 hardSupressUntil];
          [scheduler scheduleAt:hardSupressUntil4];
          goto LABEL_31;
        }

        supressUntil3 = [v13 supressUntil];
        v44 = supressUntil3 == 0;

        if (!v44)
        {
          scheduler = [(UABestAppSuggestionNotifier *)v60 scheduler];
          hardSupressUntil4 = [v13 supressUntil];
          [scheduler scheduleAt:hardSupressUntil4];
          goto LABEL_31;
        }

LABEL_30:
        scheduler = [(UABestAppSuggestionNotifier *)v60 supressedUntil];
        hardSupressUntil4 = [v13 itemUUID];
        [scheduler removeObjectForKey:hardSupressUntil4];
LABEL_31:
      }

      v10 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v10);
  }

  supressedUntil4 = [(UABestAppSuggestionNotifier *)v60 supressedUntil];
  v46 = [supressedUntil4 count];
  possibleItems2 = [(UABestAppSuggestionNotifier *)v60 possibleItems];
  v48 = v46 < [possibleItems2 count];

  if (v48)
  {
    items = [(UABestAppSuggestionNotifier *)v60 items];
    v50 = [(UABestAppSuggestionNotifier *)v60 bestCornerItemsFromItems:items];
    [(UABestAppSuggestionNotifier *)v60 notifyBestAppsChanged:v50 atTime:v58];
  }

  else
  {
    [(UABestAppSuggestionNotifier *)v60 notifyBestAppsChanged:0 atTime:v58];
  }

  objc_sync_exit(v60);
}

- (BOOL)suspend
{
  v7.receiver = self;
  v7.super_class = UABestAppSuggestionNotifier;
  suspend = [(UACornerActionManagerHandler *)&v7 suspend];
  if (suspend)
  {
    scheduler = [(UABestAppSuggestionNotifier *)self scheduler];
    [scheduler suspend];

    connection = [(UABestAppSuggestionNotifier *)self connection];
    [connection suspend];
  }

  return suspend;
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UABestAppSuggestionNotifier;
  terminate = [(UACornerActionManagerHandler *)&v6 terminate];
  if (terminate)
  {
    connection = [(UABestAppSuggestionNotifier *)self connection];
    [connection invalidate];
  }

  return terminate;
}

- (id)statusString
{
  name = [(UACornerActionManagerHandler *)self name];
  connection = [(UABestAppSuggestionNotifier *)self connection];
  v5 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  pidp = 0;
  atoken = v14;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v6 = pidp;
  lastItemStr = [(UABestAppSuggestionNotifier *)self lastItemStr];
  if (lastItemStr)
  {
    lastItemStr2 = [(UABestAppSuggestionNotifier *)self lastItemStr];
  }

  else
  {
    lastItemStr2 = @"-";
  }

  scheduler = [(UABestAppSuggestionNotifier *)self scheduler];
  v10 = sub_1000097AC([scheduler nextTime]);
  scheduler2 = [(UABestAppSuggestionNotifier *)self scheduler];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld:%@, next=%@/%lld", name, v6, lastItemStr2, v10, [scheduler2 runCount]);

  if (lastItemStr)
  {
  }

  return v12;
}

- (void)doConnected
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    connection = [(UABestAppSuggestionNotifier *)self connection];
    v5 = connection;
    if (connection)
    {
      [connection auditToken];
    }

    else
    {
      memset(&v6, 0, sizeof(v6));
    }

    pidp = 0;
    atoken = v6;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    *buf = 67109120;
    v10 = pidp;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "doConnected, bestApp client connected. pid=%d", buf, 8u);
  }
}

- (void)doDetermineBestAppSuggestionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = [(UACornerActionManagerHandler *)self manager];
  cornerActionItems = [manager cornerActionItems];
  v7 = [(UABestAppSuggestionNotifier *)self bestCornerItemsFromItems:cornerActionItems];

  if (v7)
  {
    firstObject = [v7 firstObject];
    v8 = sub_100001A30(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uuid = [firstObject uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543875;
      v25 = uUIDString;
      v26 = 2113;
      v27 = firstObject;
      v28 = 2048;
      v29 = [v7 count] - 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doDetermineBestAppSuggestionWithCompletionHandler, bestApp=%{public}@/%{private}@ (and %lu more app suggestions)", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
      for (i = 0; i < [v7 count]; ++i)
      {
        v13 = [v7 objectAtIndex:i];
        v14 = [[UAUserActivityInfo alloc] initWithUserActivityInfo:v13];
        peerDevice = [v13 peerDevice];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          peerDevice2 = [v13 peerDevice];
          deviceType = [peerDevice2 deviceType];
          [v14 setPeerDeviceType:deviceType];
        }

        [v11 setObject:v14 atIndexedSubscript:i];
      }

      v19 = +[NSDate date];
      handlerCopy[2](handlerCopy, v11, v19, 1.0);

      v20 = +[UADiagnosticManager sharedManager];
      wasContinuedInfo = [firstObject wasContinuedInfo];
      [v20 submitUserActivityWasSuggestedInfo:wasContinuedInfo];
    }
  }

  else if (handlerCopy)
  {
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "doDetermineBestAppSuggestionWithCompletionHandler, bestItem = nil", buf, 2u);
    }

    handlerCopy[2](handlerCopy, 0, 0, 0.0);
  }
}

- (void)fetchAllNearbyAppSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  manager = [(UACornerActionManagerHandler *)self manager];
  suggestionsCopy[2](suggestionsCopy, [manager fetchMoreAppSuggestions]);
}

- (void)doDetermineBestAppSuggestions:(int64_t)suggestions completionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSMutableArray array];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v4, 0);
  }
}

- (void)doRemoveBestAppSuggestion:(id)suggestion options:(id)options
{
  suggestionCopy = suggestion;
  optionsCopy = options;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [suggestionCopy UUIDString];
    v9 = [optionsCopy description];
    v10 = sub_100009684(v9);
    *buf = 138543618;
    v36 = uUIDString;
    v37 = 2114;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "uuid=%{public}@ options=%{public}@", buf, 0x16u);
  }

  if (suggestionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [(UABestAppSuggestionNotifier *)selfCopy userActivityInfoForUUID:suggestionCopy];
    if (v12)
    {
      supressedUntil = [(UABestAppSuggestionNotifier *)selfCopy supressedUntil];
      v14 = [supressedUntil objectForKey:suggestionCopy];

      if (v14)
      {
        v15 = sub_100001A30(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          uuid = [v12 uuid];
          uUIDString2 = [uuid UUIDString];
          v18 = [(UABestAppUserActivityInfoSuppressionRecord *)v14 description];
          *buf = 138543875;
          v36 = uUIDString2;
          v37 = 2113;
          v38 = v12;
          v39 = 2114;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "BESTAPP: Updating existing supression record for item %{public}@/%{private}@, %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v14 = objc_alloc_init(UABestAppUserActivityInfoSuppressionRecord);
      }

      uuid2 = [v12 uuid];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setItemUUID:uuid2];

      v20 = +[UAUserActivityDefaults sharedDefaults];
      [v20 cornerActionItemSupressionInterval];
      v21 = [NSDate dateWithTimeIntervalSinceNow:?];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setHardSupressUntil:v21];

      v22 = +[UAUserActivityDefaults sharedDefaults];
      [v22 bestAppSuggestionSupressionIntervalForUnchangingItem];
      v23 = [NSDate dateWithTimeIntervalSinceNow:?];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setSupressUntil:v23];

      lastInterestingTime = [v12 lastInterestingTime];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setLastInterestingTime:lastInterestingTime];

      v25 = sub_100001A30(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        uuid3 = [v12 uuid];
        uUIDString3 = [uuid3 UUIDString];
        when = [v12 when];
        hardSupressUntil = [(UABestAppUserActivityInfoSuppressionRecord *)v14 hardSupressUntil];
        supressUntil = [(UABestAppUserActivityInfoSuppressionRecord *)v14 supressUntil];
        lastInterestingTime2 = [v12 lastInterestingTime];
        *buf = 138544643;
        v36 = uUIDString3;
        v37 = 2113;
        v38 = v12;
        v39 = 2114;
        v40 = when;
        v41 = 2114;
        v42 = hardSupressUntil;
        v43 = 2114;
        v44 = supressUntil;
        v45 = 2114;
        v46 = lastInterestingTime2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting supressedUntil for item %{public}@/%{private}@ item.when=%{public}@ to %{public}@/%{public}@ lastInterestingTime=%{public}@", buf, 0x3Eu);
      }

      supressedUntil2 = [(UABestAppSuggestionNotifier *)selfCopy supressedUntil];
      [supressedUntil2 setObject:v14 forKey:suggestionCopy];

      scheduler = [(UABestAppSuggestionNotifier *)selfCopy scheduler];
      [scheduler scheduleNext:0.0];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)doQueueFetchOfPayloadForBestAppSuggestion:(id)suggestion completionHandler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uUIDString = [suggestionCopy UUIDString];
    *buf = 138543362;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Queuing fetch for bestAppUUID %{public}@", buf, 0xCu);
  }

  kdebug_trace();
  v10 = [(UABestAppSuggestionNotifier *)self userActivityInfoForUUID:suggestionCopy];
  if (v10)
  {
    v11 = sub_100001A30(@"signposts");
    v12 = v11;
    if (v10 != -1 && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "bestAppFetch", "", buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100012B74;
    v13[3] = &unk_1000C4D78;
    v14 = v10;
    v15 = handlerCopy;
    [v14 requestPayloadWithCompletionHandler:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end