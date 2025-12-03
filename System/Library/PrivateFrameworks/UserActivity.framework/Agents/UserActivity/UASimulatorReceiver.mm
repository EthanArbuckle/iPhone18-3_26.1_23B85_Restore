@interface UASimulatorReceiver
- (BOOL)active;
- (BOOL)doSetReceivedItems:(id)items;
- (BOOL)fetchAdvertisedItems:(BOOL)items;
- (BOOL)receiving;
- (UASimulatorReceiver)initWithSimulator:(id)simulator;
- (id)statusString;
@end

@implementation UASimulatorReceiver

- (UASimulatorReceiver)initWithSimulator:(id)simulator
{
  simulatorCopy = simulator;
  controller = [simulatorCopy controller];
  manager = [controller manager];
  v10.receiver = self;
  v10.super_class = UASimulatorReceiver;
  v8 = [(UAReceiver *)&v10 initWithManager:manager name:@"SimReceiver"];

  if (v8)
  {
    objc_storeStrong(&v8->_simulator, simulator);
  }

  return v8;
}

- (BOOL)receiving
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstObject = [(NSArray *)selfCopy->_receivedItems firstObject];
  v4 = firstObject != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (BOOL)doSetReceivedItems:(id)items
{
  itemsCopy = items;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [itemsCopy description];
    v7 = sub_100009684(v6);
    *buf = 138477827;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SIMULATOR: Setting receivedItems to %{private}@", buf, 0xCu);
  }

  if (!itemsCopy)
  {
    itemsCopy = &__NSArray0__struct;
  }

  receivedItems = [(UASimulatorReceiver *)self receivedItems];
  v26 = itemsCopy;
  v27 = [itemsCopy isEqual:receivedItems];

  if ((v27 & 1) == 0)
  {
    v9 = sub_100001A30(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      receivedItems2 = [(UASimulatorReceiver *)self receivedItems];
      v11 = [receivedItems2 description];
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
    obj = itemsCopy;
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
          simulator = [(UASimulatorReceiver *)self simulator];
          peeredDevice = [simulator peeredDevice];
          simulator2 = [(UASimulatorReceiver *)self simulator];
          v22 = [(UASimulatorSuggestedItem *)v18 initWithUserActivityInfo:v17 peerDevice:peeredDevice simulator:simulator2];

          [(UASimulatorSuggestedItem *)v22 setActive:1];
          [(NSArray *)v13 addObject:v22];
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    receivedItems = selfCopy->_receivedItems;
    selfCopy->_receivedItems = v13;

    objc_sync_exit(selfCopy);
  }

  return v27 ^ 1;
}

- (BOOL)fetchAdvertisedItems:(BOOL)items
{
  itemsCopy = items;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = "NO";
    if (itemsCopy)
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
  simulator = [(UASimulatorReceiver *)self simulator];
  v8 = sub_10007A9B0([simulator pairedClientPort], 0, &v79, &v78, &v77, &v76, &v75, &v74) == 0;

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = sub_10000DA04(v10, v79, v78, 0);
    receivedItems = [(UASimulatorReceiver *)self receivedItems];
    firstObject = [receivedItems firstObject];

    simulator2 = [(UASimulatorReceiver *)self simulator];
    activitiesShouldCrossover = [simulator2 activitiesShouldCrossover];

    if (activitiesShouldCrossover)
    {
      v77 = 0.0;
    }

    if (firstObject && !v78)
    {
      v16 = sub_100001A30(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [firstObject uuid];
        uUIDString = [uuid UUIDString];
        *buf = 138543619;
        v81 = uUIDString;
        v82 = 2113;
        v83 = firstObject;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Clearing current item, because it has been removed(was %{public}@/%{private}@).", buf, 0x16u);
      }

      v19 = +[NSArray array];
LABEL_41:
      if (!v19)
      {
        v9 = 1;
        goto LABEL_45;
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_receivedItems, v19);
      objc_sync_exit(selfCopy);

      simulator3 = [(UASimulatorReceiver *)selfCopy simulator];
      controller = [simulator3 controller];
      manager = [controller manager];
      [manager scheduleBestAppDetermination];

      v9 = 1;
      v32 = v19;
      goto LABEL_43;
    }

    if (firstObject)
    {
      uuid2 = [firstObject uuid];
      uuid3 = [v11 uuid];
      v22 = [uuid2 isEqual:uuid3];

      if (v22)
      {
        v23 = sub_100001A30(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          uuid4 = [firstObject uuid];
          uUIDString2 = [uuid4 UUIDString];
          v26 = [v11 payloadForIdentifier:UAUserActivityUserInfoPayload];
          v27 = sub_100006EF4(v26);
          webpageURL = [v11 webpageURL];
          *buf = 138543875;
          v81 = uUIDString2;
          v82 = 2113;
          v83 = v27;
          v84 = 2113;
          v85 = webpageURL;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Updating existing item, %{public}@ %{private}@/%{private}@", buf, 0x20u);
        }

        webpageURL2 = [v11 webpageURL];
        [firstObject setWebpageURL:webpageURL2];

        v30 = UAUserActivityUserInfoPayload;
        v31 = [v11 payloadForIdentifier:UAUserActivityUserInfoPayload];
        [firstObject setPayload:v31 identifier:v30];

        v32 = [NSDate dateWithTimeIntervalSinceNow:-v77];
        [firstObject setWhen:v32];
        v9 = 0;
LABEL_43:

        goto LABEL_45;
      }

      uuid5 = [firstObject uuid];
      uuid6 = [v11 uuid];
      if ([uuid5 isEqual:uuid6])
      {
        webpageURL3 = [firstObject webpageURL];
        webpageURL4 = [v11 webpageURL];
        if ([webpageURL3 isEqual:webpageURL4])
        {
          webpageURL5 = [v11 webpageURL];
          webpageURL6 = [firstObject webpageURL];
          v39 = [webpageURL5 isEqual:webpageURL6];

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
    simulator4 = [(UASimulatorReceiver *)self simulator];
    v43 = [(UASimulatorSuggestedItem *)v41 initWithUserActivityInfo:v11 peerDevice:v72 simulator:simulator4];

    v44 = [NSDate dateWithTimeIntervalSinceNow:-v77];
    [(UASimulatorSuggestedItem *)v43 setWhen:v44];

    v45 = sub_100001A30(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      uuid7 = [(UASimulatorSuggestedItem *)v43 uuid];
      uUIDString3 = [uuid7 UUIDString];
      uuid8 = [firstObject uuid];
      uUIDString4 = [uuid8 UUIDString];
      *buf = 138543618;
      v81 = uUIDString3;
      v82 = 2114;
      v83 = uUIDString4;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "SIMULATOR: Item %{public}@ seems to be different from %{public}@, so changing received item & updating lists.", buf, 0x16u);
    }

    v50 = +[LSApplicationWorkspace defaultWorkspace];
    if (v50)
    {
      teamIdentifier = [v11 teamIdentifier];
      if (teamIdentifier)
      {
        teamIdentifier2 = [v11 teamIdentifier];
      }

      else
      {
        teamIdentifier2 = &stru_1000C67D0;
      }

      activityType = [v11 activityType];
      v73 = [NSString stringWithFormat:@"%@:%@", teamIdentifier2, activityType, v72];

      if (teamIdentifier)
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
          uuid9 = [v11 uuid];
          uUIDString5 = [uuid9 UUIDString];
          bundleIdentifier = [v55 bundleIdentifier];
          *buf = 138543875;
          v81 = uUIDString5;
          v82 = 2113;
          v83 = v11;
          v84 = 2113;
          v85 = bundleIdentifier;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "SIMULATOR: Found bundle ID for item %{public}@/%{private}@, %{private}@", buf, 0x20u);
        }

        bundleIdentifier2 = [v55 bundleIdentifier];
        [(UASimulatorSuggestedItem *)v43 setBundleIdentifier:bundleIdentifier2];
      }

      else
      {
        v55 = sub_100001A30(0);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          teamIdentifier3 = [v11 teamIdentifier];
          activityType2 = [v11 activityType];
          uuid10 = [(UASimulatorSuggestedItem *)v43 uuid];
          uUIDString6 = [uuid10 UUIDString];
          *buf = 138478339;
          v81 = teamIdentifier3;
          v82 = 2113;
          v83 = activityType2;
          v84 = 2114;
          v85 = uUIDString6;
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
  simulator = [(UASimulatorReceiver *)self simulator];
  active = [simulator active];

  return active;
}

- (id)statusString
{
  selfCopy = self;
  receivedItems = [(UASimulatorReceiver *)self receivedItems];
  v5 = [receivedItems count];

  if (v5)
  {
    v6 = +[NSMutableString string];
    if ([selfCopy receiving])
    {
      v7 = @"ACTIVE";
    }

    else
    {
      v7 = &stru_1000C67D0;
    }

    receivedItems2 = [selfCopy receivedItems];
    v9 = [receivedItems2 count];
    receivedItems3 = [selfCopy receivedItems];
    firstObject = [receivedItems3 firstObject];
    if (firstObject)
    {
      selfCopy = [selfCopy receivedItems];
      firstObject2 = [selfCopy firstObject];
      logString = [firstObject2 logString];
    }

    else
    {
      logString = &stru_1000C67D0;
    }

    [v6 appendFormat:@"UASimulatorReceiver: %@, %ld items %@", v7, v9, logString];
    if (firstObject)
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