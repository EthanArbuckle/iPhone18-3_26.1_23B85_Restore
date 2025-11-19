@interface UABestAppSuggestionNotifier
- (BOOL)active;
- (BOOL)resume;
- (BOOL)suspend;
- (BOOL)terminate;
- (UABestAppSuggestionNotifier)initWithManager:(id)a3 connection:(id)a4;
- (id)bestCornerItemsFromItems:(id)a3;
- (id)items;
- (id)statusString;
- (id)userActivityInfoForUUID:(id)a3;
- (void)doConnected;
- (void)doDetermineBestAppSuggestionWithCompletionHandler:(id)a3;
- (void)doDetermineBestAppSuggestions:(int64_t)a3 completionHandler:(id)a4;
- (void)doQueueFetchOfPayloadForBestAppSuggestion:(id)a3 completionHandler:(id)a4;
- (void)doRegisterForBestAppChangeNotification;
- (void)doRemoveBestAppSuggestion:(id)a3 options:(id)a4;
- (void)doUnregisterForBestAppChangeNotification;
- (void)fetchAllNearbyAppSuggestions:(id)a3;
- (void)notifyBestAppsChanged:(id)a3 atTime:(id)a4;
- (void)setItems:(id)a3;
- (void)setWantsBestAppChangedNotifications:(BOOL)a3;
- (void)update;
@end

@implementation UABestAppSuggestionNotifier

- (BOOL)resume
{
  v7.receiver = self;
  v7.super_class = UABestAppSuggestionNotifier;
  v3 = [(UACornerActionManagerHandler *)&v7 resume];
  if (v3)
  {
    v4 = [(UABestAppSuggestionNotifier *)self scheduler];
    [v4 resume];

    v5 = [(UABestAppSuggestionNotifier *)self connection];
    [v5 resume];
  }

  return v3;
}

- (void)doUnregisterForBestAppChangeNotification
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UABestAppSuggestionNotifier *)self connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
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
    v4 = [(UABestAppSuggestionNotifier *)self connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
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
  v3 = [(UABestAppSuggestionNotifier *)self connection];
  if (v3)
  {
    v4 = [(UABestAppSuggestionNotifier *)self wantsBestAppChangedNotifications];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UABestAppSuggestionNotifier)initWithManager:(id)a3 connection:(id)a4
{
  v4 = __chkstk_darwin(self, a2, a3, a4);
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
  v17 = [[NSString alloc] initWithBytes:&buffer[v15 + 2] length:v14 encoding:4];
  if (!v17)
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
    v17 = [NSString stringWithFormat:@"(PID:%ld)", pidp];
  }

  if (v17)
  {
    v18 = v17;
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
    v28 = [(UABestAppSuggestionNotifier *)v27 connection];
    [v28 setInvalidationHandler:v33];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000EC24;
    v31[3] = &unk_1000C4D10;
    v32 = v11;
    v29 = [(UABestAppSuggestionNotifier *)v27 connection];
    [v29 setInterruptionHandler:v31];
  }

  return v20;
}

- (void)setWantsBestAppChangedNotifications:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_wantsBestAppChangedNotifications != v3)
  {
    obj->_wantsBestAppChangedNotifications = v3;
    v5 = [(UACornerActionManagerHandler *)obj manager];
    [v5 triggerUserIdleDetermination];

    v4 = obj;
    if (v3)
    {
      v6 = [(UACornerActionManagerHandler *)obj manager];
      [v6 scheduleBestAppDetermination];

      v4 = obj;
    }
  }

  objc_sync_exit(v4);
}

- (id)items
{
  v2 = [(UABestAppSuggestionNotifier *)self possibleItems];
  v3 = [v2 allValues];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)setItems:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "setItems(%{private}@)", buf, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = +[NSMutableDictionary dictionary];
  [(UABestAppSuggestionNotifier *)v8 setPossibleItems:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
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
        v15 = [(UABestAppSuggestionNotifier *)v8 possibleItems];
        v16 = [v14 uuid];
        [v15 setObject:v14 forKeyedSubscript:v16];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [(UABestAppSuggestionNotifier *)v8 bestCornerItemsFromItems:v10];
  v18 = +[NSDate date];
  [(UABestAppSuggestionNotifier *)v8 notifyBestAppsChanged:v17 atTime:v18];

  objc_sync_exit(v8);
}

- (id)userActivityInfoForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(UABestAppSuggestionNotifier *)self items];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = *v27;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v10 = [v9 uuid];
        v11 = [v4 isEqual:v10];

        if (v11)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  v13 = [(UACornerActionManagerHandler *)self manager];
  v14 = [v13 cornerActionItems];

  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [v18 uuid];
        v20 = [v4 isEqual:v19];

        if (v20)
        {
          v12 = v18;
          goto LABEL_22;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (id)bestCornerItemsFromItems:(id)a3
{
  v47 = a3;
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
  obj = v47;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (!v7)
  {
    goto LABEL_35;
  }

  v53 = *v56;
  v48 = self;
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
      v10 = [(UABestAppSuggestionNotifier *)self supressedUntil];
      v11 = [v9 uuid];
      v12 = [v10 objectForKey:v11];

      if (v12)
      {
        v13 = [v12 hardSupressUntil];
        if (v13)
        {
          v14 = [v12 hardSupressUntil];
          v15 = sub_10000A02C(v51, v14);

          if (v15)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = [v9 activityType];
              v18 = [v9 uuid];
              v19 = [v18 UUIDString];
              v20 = [v12 hardSupressUntil];
              v21 = sub_100009AC0(v20);
              *buf = 138478595;
              v60 = v17;
              v61 = 2114;
              v62 = v19;
              v63 = 2114;
              v64 = v21;
              v65 = 2114;
              v66 = v51;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring supressed item, %{private}@ %{public}@ (until %{public}@, now=%{public}@)", buf, 0x2Au);

              self = v48;
            }

LABEL_31:

            goto LABEL_33;
          }
        }

        v22 = [v12 supressUntil];
        if (v22)
        {
          v23 = [v12 supressUntil];
          v24 = sub_10000A02C(v51, v23);

          if (v24)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v9 activityType];
              v26 = [v9 uuid];
              v27 = [v26 UUIDString];
              v28 = [v12 supressUntil];
              v29 = sub_100009AC0(v28);
              v30 = [v9 when];
              v31 = sub_100009AC0(v30);
              *buf = 138478851;
              v60 = v25;
              v61 = 2114;
              v62 = v27;
              v63 = 2114;
              v64 = v29;
              v65 = 2114;
              v66 = v31;
              v67 = 2114;
              v68 = v51;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "BESTAPP: -- Ignoring supressed item, %{private}@ %{public}@ (until %{public}@, item.when=%{public}@, now=%{public}@)", buf, 0x34u);

              self = v48;
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
        v34 = [v9 when];
        if (v34)
        {
          v35 = [v9 when];
          v36 = sub_10000A02C(v35, v52);

          if (v36)
          {
            v16 = sub_100001A30(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v9 uuid];
              v38 = [v37 UUIDString];
              v39 = [v9 when];
              *buf = 138544131;
              v60 = v38;
              v61 = 2113;
              v62 = v9;
              v63 = 2114;
              v64 = v39;
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
            v42 = [v9 uuid];
            v43 = [v42 UUIDString];
            *buf = 138543619;
            v60 = v43;
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

- (void)notifyBestAppsChanged:(id)a3 atTime:(id)a4
{
  v59 = a3;
  v56 = a4;
  v58 = self;
  if (![(UABestAppSuggestionNotifier *)self wantsBestAppChangedNotifications])
  {
    goto LABEL_42;
  }

  v6 = [v59 count];
  if (!v59)
  {
    v7 = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
    if (!v7)
    {
      v8 = [(UABestAppSuggestionNotifier *)self lastItemWhens];
      v17 = v8 == 0;
LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v7 = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
  if (!v7)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_23;
  }

  v8 = [(UABestAppSuggestionNotifier *)self lastItemWhens];
  if (!v8)
  {
LABEL_15:
    v17 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v9 = [(UABestAppSuggestionNotifier *)self lastItemUUIDs];
  if ([v9 count] != v6)
  {
LABEL_20:

    v17 = 0;
    goto LABEL_21;
  }

  v10 = [(UABestAppSuggestionNotifier *)v58 lastItemWhens];
  v11 = [v10 count];

  if (v11 != v6)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    v12 = 0;
    while (1)
    {
      v7 = [v59 objectAtIndex:v12];
      v8 = [v7 when];
      v9 = [(UABestAppSuggestionNotifier *)v58 lastItemWhens];
      v13 = [v9 objectAtIndex:v12];
      if (([v8 isEqual:v13] & 1) == 0)
      {
        break;
      }

      v14 = [v7 uuid];
      v15 = [(UABestAppSuggestionNotifier *)v58 lastItemUUIDs];
      v16 = [v15 objectAtIndex:v12];
      v17 = [v14 isEqual:v16];

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
  v57 = [v59 firstObject];
  if (v17)
  {
    v19 = sub_100001A30(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v57 uuid];
      v21 = [v20 UUIDString];
      v22 = [v57 logString];
      v23 = [v57 when];
      *buf = 138544131;
      v61 = v21;
      v62 = 2113;
      v63 = v22;
      v64 = 2114;
      v65 = v23;
      v66 = 2048;
      v67 = [v59 count] - 1;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "BESTAPP: Not notifying clients about new best app %{public}@/%{private}@ .when=%{public}@ (and %lu more best app options) because it matches last item.", buf, 0x2Au);
    }
  }

  else
  {
    v24 = sub_100001A30(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v57 uuid];
      v26 = [v25 UUIDString];
      v27 = [v57 debugDescription];
      *buf = 138543875;
      v61 = v26;
      v62 = 2113;
      v63 = v27;
      v64 = 2048;
      v65 = [v59 count] - 1;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Notifying clients about new best app: %{public}@/%{private}@ (and %lu more best app options)", buf, 0x20u);
    }

    v28 = [(UABestAppSuggestionNotifier *)v58 connection];
    v55 = [v28 remoteObjectProxy];

    if (v59)
    {
      v29 = [NSMutableArray arrayWithCapacity:v6];
      v30 = [NSMutableArray arrayWithCapacity:v6];
      v31 = [NSMutableArray arrayWithCapacity:v6];
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v33 = [v59 objectAtIndex:i];
          v34 = [v33 uuid];
          [v29 setObject:v34 atIndexedSubscript:i];

          v35 = [v33 when];
          [v30 setObject:v35 atIndexedSubscript:i];

          v36 = [[UAUserActivityInfo alloc] initWithUserActivityInfo:v33];
          v37 = [v33 peerDevice];
          v38 = [v37 deviceType];
          [v36 setPeerDeviceType:v38];

          [v31 setObject:v36 atIndexedSubscript:i];
        }
      }

      [(UABestAppSuggestionNotifier *)v58 setLastItemUUIDs:v29];
      [(UABestAppSuggestionNotifier *)v58 setLastItemWhens:v30];
      [v55 notifyBestAppsChanged:v31 when:v56 confidence:1.0];
      v39 = [v57 bundleIdentifier];
      v54 = [v57 activityType];
      v40 = [v57 uuid];
      v41 = [v40 UUIDString];
      v42 = [v57 peerDevice];
      v43 = [v42 name];
      v44 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%@ %@ %@ (and %lu more best app options)", v39, v54, v41, v43, [v59 count] - 1);
      [(UABestAppSuggestionNotifier *)v58 setLastItemStr:v44];

      v45 = +[UADiagnosticManager sharedManager];
      v46 = [v57 wasContinuedInfo];
      [v45 submitUserActivityWasSuggestedInfo:v46];
    }

    else
    {
      [v55 notifyBestAppsChanged:0 when:v56 confidence:0.0];
      [(UABestAppSuggestionNotifier *)v58 setLastItemUUIDs:0];
      [(UABestAppSuggestionNotifier *)v58 setLastItemWhens:0];
    }

    v47 = [v57 bundleIdentifier];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [v57 bundleIdentifier];
      v50 = BRHandoffDidReceiveApplicationContinuity();
      v51 = 0;

      if ((v50 & 1) == 0)
      {
        v52 = sub_100001A30(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v57 bundleIdentifier];
          *buf = 138478083;
          v61 = v53;
          v62 = 2114;
          v63 = v51;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Error when nudging cloud docs for bundleIdentifier=%{private}@, err=%{public}@", buf, 0x16u);
        }
      }
    }

    v19 = v55;
  }

LABEL_42:
}

- (void)update
{
  v2 = self;
  objc_sync_enter(v2);
  v60 = v2;
  v58 = +[NSDate date];
  v3 = [(UABestAppSuggestionNotifier *)v2 supressedUntil];
  v4 = [v3 count];

  if (v4)
  {
    v5 = sub_100001A30(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(UABestAppSuggestionNotifier *)v2 supressedUntil];
      v7 = [v6 description];
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
  v9 = [(UABestAppSuggestionNotifier *)v2 supressedUntil];
  obj = [v9 allValues];

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
        v14 = [(UABestAppSuggestionNotifier *)v60 possibleItems];
        v15 = [v13 itemUUID];
        v16 = [v14 objectForKeyedSubscript:v15];

        if (!v16)
        {
          goto LABEL_30;
        }

        v17 = [v13 hardSupressUntil];
        if (v17)
        {
          v18 = [v13 hardSupressUntil];
          v19 = sub_10000A02C(v18, v58);

          if (v19)
          {
            v20 = sub_100001A30(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = [v13 itemUUID];
              v22 = [v21 UUIDString];
              *buf = 138543362;
              v66 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .hardSupressedUntil for %{public}@ to nil, because that time has passed.", buf, 0xCu);
            }

            [v13 setHardSupressUntil:0];
          }
        }

        v23 = [v13 supressUntil];
        v24 = v23 == 0;

        if (!v24)
        {
          v25 = [v13 supressUntil];
          v26 = sub_10000A02C(v25, v58);

          if (v26)
          {
            v27 = sub_100001A30(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              v28 = [v13 itemUUID];
              v29 = [v28 UUIDString];
              *buf = 138543362;
              v66 = v29;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .supressUntil for %{public}@ to nil, because that time has passed.", buf, 0xCu);
            }

LABEL_25:

            [v13 setSupressUntil:0];
            goto LABEL_26;
          }

          v30 = [v13 lastInterestingTime];
          if (v30)
          {
            v31 = [v13 lastInterestingTime];
            v32 = [v16 lastInterestingTime];
            v33 = sub_10000A02C(v31, v32);

            if (v33)
            {
              v27 = sub_100001A30(0);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v54 = [v16 uuid];
                v55 = [v54 UUIDString];
                v53 = [v13 lastInterestingTime];
                v56 = sub_100009AC0(v53);
                v52 = [v16 lastInterestingTime];
                v34 = sub_100009AC0(v52);
                v35 = [v13 lastInterestingTime];
                v36 = [v16 lastInterestingTime];
                v37 = [v16 when];
                v38 = sub_100009AC0(v37);
                *buf = v51;
                v66 = v55;
                v67 = 2114;
                v68 = v56;
                v69 = 2114;
                v70 = v34;
                v71 = 2114;
                v72 = v35;
                v73 = 2114;
                v74 = v36;
                v75 = 2114;
                v76 = v38;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting .supressedUntil for %{public}@ to nil, because the .lastInterestingTime is earlier the last update for this item (%{public}@ vs %{public}@ (%{public}@ vs %{public}@), when=%{public}@).", buf, 0x3Eu);
              }

              goto LABEL_25;
            }
          }
        }

LABEL_26:
        v39 = [v13 hardSupressUntil];
        v40 = v39 == 0;

        if (!v40)
        {
          v41 = [(UABestAppSuggestionNotifier *)v60 scheduler];
          v42 = [v13 hardSupressUntil];
          [v41 scheduleAt:v42];
          goto LABEL_31;
        }

        v43 = [v13 supressUntil];
        v44 = v43 == 0;

        if (!v44)
        {
          v41 = [(UABestAppSuggestionNotifier *)v60 scheduler];
          v42 = [v13 supressUntil];
          [v41 scheduleAt:v42];
          goto LABEL_31;
        }

LABEL_30:
        v41 = [(UABestAppSuggestionNotifier *)v60 supressedUntil];
        v42 = [v13 itemUUID];
        [v41 removeObjectForKey:v42];
LABEL_31:
      }

      v10 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v10);
  }

  v45 = [(UABestAppSuggestionNotifier *)v60 supressedUntil];
  v46 = [v45 count];
  v47 = [(UABestAppSuggestionNotifier *)v60 possibleItems];
  v48 = v46 < [v47 count];

  if (v48)
  {
    v49 = [(UABestAppSuggestionNotifier *)v60 items];
    v50 = [(UABestAppSuggestionNotifier *)v60 bestCornerItemsFromItems:v49];
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
  v3 = [(UACornerActionManagerHandler *)&v7 suspend];
  if (v3)
  {
    v4 = [(UABestAppSuggestionNotifier *)self scheduler];
    [v4 suspend];

    v5 = [(UABestAppSuggestionNotifier *)self connection];
    [v5 suspend];
  }

  return v3;
}

- (BOOL)terminate
{
  v6.receiver = self;
  v6.super_class = UABestAppSuggestionNotifier;
  v3 = [(UACornerActionManagerHandler *)&v6 terminate];
  if (v3)
  {
    v4 = [(UABestAppSuggestionNotifier *)self connection];
    [v4 invalidate];
  }

  return v3;
}

- (id)statusString
{
  v3 = [(UACornerActionManagerHandler *)self name];
  v4 = [(UABestAppSuggestionNotifier *)self connection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  pidp = 0;
  atoken = v14;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v6 = pidp;
  v7 = [(UABestAppSuggestionNotifier *)self lastItemStr];
  if (v7)
  {
    v8 = [(UABestAppSuggestionNotifier *)self lastItemStr];
  }

  else
  {
    v8 = @"-";
  }

  v9 = [(UABestAppSuggestionNotifier *)self scheduler];
  v10 = sub_1000097AC([v9 nextTime]);
  v11 = [(UABestAppSuggestionNotifier *)self scheduler];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/%ld:%@, next=%@/%lld", v3, v6, v8, v10, [v11 runCount]);

  if (v7)
  {
  }

  return v12;
}

- (void)doConnected
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UABestAppSuggestionNotifier *)self connection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
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

- (void)doDetermineBestAppSuggestionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(UACornerActionManagerHandler *)self manager];
  v6 = [v5 cornerActionItems];
  v7 = [(UABestAppSuggestionNotifier *)self bestCornerItemsFromItems:v6];

  if (v7)
  {
    v23 = [v7 firstObject];
    v8 = sub_100001A30(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v23 uuid];
      v10 = [v9 UUIDString];
      *buf = 138543875;
      v25 = v10;
      v26 = 2113;
      v27 = v23;
      v28 = 2048;
      v29 = [v7 count] - 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "doDetermineBestAppSuggestionWithCompletionHandler, bestApp=%{public}@/%{private}@ (and %lu more app suggestions)", buf, 0x20u);
    }

    if (v4)
    {
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
      for (i = 0; i < [v7 count]; ++i)
      {
        v13 = [v7 objectAtIndex:i];
        v14 = [[UAUserActivityInfo alloc] initWithUserActivityInfo:v13];
        v15 = [v13 peerDevice];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [v13 peerDevice];
          v18 = [v17 deviceType];
          [v14 setPeerDeviceType:v18];
        }

        [v11 setObject:v14 atIndexedSubscript:i];
      }

      v19 = +[NSDate date];
      v4[2](v4, v11, v19, 1.0);

      v20 = +[UADiagnosticManager sharedManager];
      v21 = [v23 wasContinuedInfo];
      [v20 submitUserActivityWasSuggestedInfo:v21];
    }
  }

  else if (v4)
  {
    v22 = sub_100001A30(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "doDetermineBestAppSuggestionWithCompletionHandler, bestItem = nil", buf, 2u);
    }

    v4[2](v4, 0, 0, 0.0);
  }
}

- (void)fetchAllNearbyAppSuggestions:(id)a3
{
  v5 = a3;
  v4 = [(UACornerActionManagerHandler *)self manager];
  v5[2](v5, [v4 fetchMoreAppSuggestions]);
}

- (void)doDetermineBestAppSuggestions:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v4 = +[NSMutableArray array];
  if (v5)
  {
    v5[2](v5, v4, 0);
  }
}

- (void)doRemoveBestAppSuggestion:(id)a3 options:(id)a4
{
  v6 = a3;
  v34 = a4;
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 UUIDString];
    v9 = [v34 description];
    v10 = sub_100009684(v9);
    *buf = 138543618;
    v36 = v8;
    v37 = 2114;
    v38 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "uuid=%{public}@ options=%{public}@", buf, 0x16u);
  }

  if (v6)
  {
    v11 = self;
    objc_sync_enter(v11);
    v12 = [(UABestAppSuggestionNotifier *)v11 userActivityInfoForUUID:v6];
    if (v12)
    {
      v13 = [(UABestAppSuggestionNotifier *)v11 supressedUntil];
      v14 = [v13 objectForKey:v6];

      if (v14)
      {
        v15 = sub_100001A30(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v12 uuid];
          v17 = [v16 UUIDString];
          v18 = [(UABestAppUserActivityInfoSuppressionRecord *)v14 description];
          *buf = 138543875;
          v36 = v17;
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

      v19 = [v12 uuid];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setItemUUID:v19];

      v20 = +[UAUserActivityDefaults sharedDefaults];
      [v20 cornerActionItemSupressionInterval];
      v21 = [NSDate dateWithTimeIntervalSinceNow:?];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setHardSupressUntil:v21];

      v22 = +[UAUserActivityDefaults sharedDefaults];
      [v22 bestAppSuggestionSupressionIntervalForUnchangingItem];
      v23 = [NSDate dateWithTimeIntervalSinceNow:?];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setSupressUntil:v23];

      v24 = [v12 lastInterestingTime];
      [(UABestAppUserActivityInfoSuppressionRecord *)v14 setLastInterestingTime:v24];

      v25 = sub_100001A30(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v33 = [v12 uuid];
        v26 = [v33 UUIDString];
        v27 = [v12 when];
        v28 = [(UABestAppUserActivityInfoSuppressionRecord *)v14 hardSupressUntil];
        v29 = [(UABestAppUserActivityInfoSuppressionRecord *)v14 supressUntil];
        v30 = [v12 lastInterestingTime];
        *buf = 138544643;
        v36 = v26;
        v37 = 2113;
        v38 = v12;
        v39 = 2114;
        v40 = v27;
        v41 = 2114;
        v42 = v28;
        v43 = 2114;
        v44 = v29;
        v45 = 2114;
        v46 = v30;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "BESTAPP: Setting supressedUntil for item %{public}@/%{private}@ item.when=%{public}@ to %{public}@/%{public}@ lastInterestingTime=%{public}@", buf, 0x3Eu);
      }

      v31 = [(UABestAppSuggestionNotifier *)v11 supressedUntil];
      [v31 setObject:v14 forKey:v6];

      v32 = [(UABestAppSuggestionNotifier *)v11 scheduler];
      [v32 scheduleNext:0.0];
    }

    objc_sync_exit(v11);
  }
}

- (void)doQueueFetchOfPayloadForBestAppSuggestion:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001A30(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 UUIDString];
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Queuing fetch for bestAppUUID %{public}@", buf, 0xCu);
  }

  kdebug_trace();
  v10 = [(UABestAppSuggestionNotifier *)self userActivityInfoForUUID:v6];
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
    v15 = v7;
    [v14 requestPayloadWithCompletionHandler:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

@end