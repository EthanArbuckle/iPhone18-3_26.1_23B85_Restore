@interface UASimulatorReceiver
- (BOOL)active;
- (BOOL)doSetReceivedItems:(id)a3;
- (BOOL)fetchAdvertisedItems:(BOOL)a3;
- (BOOL)receiving;
- (UASimulatorReceiver)initWithSimulator:(id)a3;
- (id)statusString;
@end

@implementation UASimulatorReceiver

- (UASimulatorReceiver)initWithSimulator:(id)a3
{
  v5 = a3;
  v6 = [v5 controller];
  v7 = [v6 manager];
  v10.receiver = self;
  v10.super_class = UASimulatorReceiver;
  v8 = [(UAReceiver *)&v10 initWithManager:v7 name:@"SimReceiver"];

  if (v8)
  {
    objc_storeStrong(&v8->_simulator, a3);
  }

  return v8;
}

- (BOOL)receiving
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_receivedItems firstObject];
  v4 = v3 != 0;

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)doSetReceivedItems:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SIMULATOR: Setting receivedItems to %{private}@", buf, 0xCu);
  }

  if (!v4)
  {
    v4 = &__NSArray0__struct;
  }

  v8 = [(UASimulatorReceiver *)self receivedItems];
  v26 = v4;
  v27 = [v4 isEqual:v8];

  if ((v27 & 1) == 0)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(UASimulatorReceiver *)self receivedItems];
      v11 = [v10 description];
      v12 = sub_100009684(v11);
      *buf = 138477827;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "SIMULATOR: Items changed(from %{private}@), so updating and signalling.", buf, 0xCu);
    }

    v13 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
    v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [UASimulatorSuggestedItem alloc];
          v19 = [(UASimulatorReceiver *)self simulator];
          v20 = [v19 peeredDevice];
          v21 = [(UASimulatorReceiver *)self simulator];
          v22 = [(UASimulatorSuggestedItem *)v18 initWithUserActivityInfo:v17 peerDevice:v20 simulator:v21];

          [(UASimulatorSuggestedItem *)v22 setActive:1];
          [(NSArray *)v13 addObject:v22];
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v23 = self;
    objc_sync_enter(v23);
    receivedItems = v23->_receivedItems;
    v23->_receivedItems = v13;

    objc_sync_exit(v23);
  }

  return v27 ^ 1;
}

- (BOOL)fetchAdvertisedItems:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "NO";
    if (v3)
    {
      v6 = "YES";
    }

    *buf = 136446210;
    v81 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "includePayload=%{public}s", buf, 0xCu);
  }

  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0.0;
  v75 = 0;
  v74 = 0;
  v7 = [(UASimulatorReceiver *)self simulator];
  v8 = sub_10007A9B0([v7 pairedClientPort], 0, &v79, &v78, &v77, &v76, &v75, &v74) == 0;

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = sub_10000DA04(v10, v79, v78, 0);
    v12 = [(UASimulatorReceiver *)self receivedItems];
    v13 = [v12 firstObject];

    v14 = [(UASimulatorReceiver *)self simulator];
    v15 = [v14 activitiesShouldCrossover];

    if (v15)
    {
      v77 = 0.0;
    }

    if (v13 && !v78)
    {
      v16 = sub_100001A30(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v13 uuid];
        v18 = [v17 UUIDString];
        *buf = 138543619;
        v81 = v18;
        v82 = 2113;
        v83 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Clearing current item, because it has been removed(was %{public}@/%{private}@).", buf, 0x16u);
      }

      v19 = +[NSArray array];
LABEL_41:
      if (!v19)
      {
        v9 = 1;
        goto LABEL_45;
      }

      v61 = self;
      objc_sync_enter(v61);
      objc_storeStrong(&v61->_receivedItems, v19);
      objc_sync_exit(v61);

      v62 = [(UASimulatorReceiver *)v61 simulator];
      v63 = [v62 controller];
      v64 = [v63 manager];
      [v64 scheduleBestAppDetermination];

      v9 = 1;
      v32 = v19;
      goto LABEL_43;
    }

    if (v13)
    {
      v20 = [v13 uuid];
      v21 = [v11 uuid];
      v22 = [v20 isEqual:v21];

      if (v22)
      {
        v23 = sub_100001A30(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v13 uuid];
          v25 = [v24 UUIDString];
          v26 = [v11 payloadForIdentifier:UAUserActivityUserInfoPayload];
          v27 = sub_100006EF4(v26);
          v28 = [v11 webpageURL];
          *buf = 138543875;
          v81 = v25;
          v82 = 2113;
          v83 = v27;
          v84 = 2113;
          v85 = v28;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Updating existing item, %{public}@ %{private}@/%{private}@", buf, 0x20u);
        }

        v29 = [v11 webpageURL];
        [v13 setWebpageURL:v29];

        v30 = UAUserActivityUserInfoPayload;
        v31 = [v11 payloadForIdentifier:UAUserActivityUserInfoPayload];
        [v13 setPayload:v31 identifier:v30];

        v32 = [NSDate dateWithTimeIntervalSinceNow:-v77];
        [v13 setWhen:v32];
        v9 = 0;
LABEL_43:

        goto LABEL_45;
      }

      v33 = [v13 uuid];
      v34 = [v11 uuid];
      if ([v33 isEqual:v34])
      {
        v35 = [v13 webpageURL];
        v36 = [v11 webpageURL];
        if ([v35 isEqual:v36])
        {
          v37 = [v11 webpageURL];
          v38 = [v13 webpageURL];
          v39 = [v37 isEqual:v38];

          if (v39)
          {
            v9 = 0;
LABEL_45:

            return v9;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_25:
    v40 = objc_opt_class();
    v72 = sub_10000DA04(v40, v75, v74, 0);
    v41 = [UASimulatorSuggestedItem alloc];
    v42 = [(UASimulatorReceiver *)self simulator];
    v43 = [(UASimulatorSuggestedItem *)v41 initWithUserActivityInfo:v11 peerDevice:v72 simulator:v42];

    v44 = [NSDate dateWithTimeIntervalSinceNow:-v77];
    [(UASimulatorSuggestedItem *)v43 setWhen:v44];

    v45 = sub_100001A30(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(UASimulatorSuggestedItem *)v43 uuid];
      v47 = [v46 UUIDString];
      v48 = [v13 uuid];
      v49 = [v48 UUIDString];
      *buf = 138543618;
      v81 = v47;
      v82 = 2114;
      v83 = v49;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Item %{public}@ seems to be different from %{public}@, so changing received item & updating lists.", buf, 0x16u);
    }

    v50 = +[LSApplicationWorkspace defaultWorkspace];
    if (v50)
    {
      v51 = [v11 teamIdentifier];
      if (v51)
      {
        v52 = [v11 teamIdentifier];
      }

      else
      {
        v52 = &stru_1000C67D0;
      }

      v53 = [v11 activityType];
      v73 = [NSString stringWithFormat:@"%@:%@", v52, v53, v72];

      if (v51)
      {
      }

      v54 = sub_100001A30(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v81 = v73;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "SIMULATOR: Looking for %{private}@", buf, 0xCu);
      }

      v55 = [v50 applicationForUserActivityType:v73];
      if (v55 || ([v11 activityType], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "isEqual:", NSUserActivityTypeBrowsingWeb), v66, v67) && (sub_10006224C(), (v55 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v56 = sub_100001A30(0);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v57 = [v11 uuid];
          v58 = [v57 UUIDString];
          v59 = [v55 bundleIdentifier];
          *buf = 138543875;
          v81 = v58;
          v82 = 2113;
          v83 = v11;
          v84 = 2113;
          v85 = v59;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "SIMULATOR: Found bundle ID for item %{public}@/%{private}@, %{private}@", buf, 0x20u);
        }

        v60 = [v55 bundleIdentifier];
        [(UASimulatorSuggestedItem *)v43 setBundleIdentifier:v60];
      }

      else
      {
        v55 = sub_100001A30(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [v11 teamIdentifier];
          v69 = [v11 activityType];
          v70 = [(UASimulatorSuggestedItem *)v43 uuid];
          v71 = [v70 UUIDString];
          *buf = 138478339;
          v81 = v68;
          v82 = 2113;
          v83 = v69;
          v84 = 2114;
          v85 = v71;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Unable to find application to handle typeIdentifier %{private}@:%{private}@ for item %{public}@", buf, 0x20u);
        }
      }
    }

    v19 = [NSArray arrayWithObject:v43];

    goto LABEL_41;
  }

  return 0;
}

- (BOOL)active
{
  v2 = [(UASimulatorReceiver *)self simulator];
  v3 = [v2 active];

  return v3;
}

- (id)statusString
{
  v3 = self;
  v4 = [(UASimulatorReceiver *)self receivedItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[NSMutableString string];
    if ([v3 receiving])
    {
      v7 = @"ACTIVE";
    }

    else
    {
      v7 = &stru_1000C67D0;
    }

    v8 = [v3 receivedItems];
    v9 = [v8 count];
    v10 = [v3 receivedItems];
    v11 = [v10 firstObject];
    if (v11)
    {
      v3 = [v3 receivedItems];
      v2 = [v3 firstObject];
      v12 = [v2 logString];
    }

    else
    {
      v12 = &stru_1000C67D0;
    }

    [v6 appendFormat:@"UASimulatorReceiver: %@, %ld items %@", v7, v9, v12];
    if (v11)
    {
    }

    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v13 copy];

  return v14;
}

@end