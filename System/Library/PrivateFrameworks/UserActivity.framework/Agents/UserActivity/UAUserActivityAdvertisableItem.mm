@interface UAUserActivityAdvertisableItem
- (BOOL)alwaysEligible;
- (BOOL)alwaysPick;
- (BOOL)eligibleInBackground;
- (BOOL)eligibleToAdvertise;
- (BOOL)eligibleToAlwaysAdvertise;
- (BOOL)isDirty;
- (BOOL)update:(id)update;
- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler;
- (NSString)proxiedBundleIdentifier;
- (UAUserActivityAdvertisableItem)initWithUUID:(id)d type:(unint64_t)type options:(id)options client:(id)client;
- (UAUserActivityAdvertisableItem)initWithUserActivityInfo:(id)info client:(id)client;
- (UAUserActivityClientProcess)client;
- (id)provenance;
- (id)webpageURL;
- (int64_t)alwaysPickValue;
- (void)setWebpageURL:(id)l;
@end

@implementation UAUserActivityAdvertisableItem

- (id)webpageURL
{
  v4.receiver = self;
  v4.super_class = UAUserActivityAdvertisableItem;
  webpageURL = [(UAUserActivityAdvertisableItem *)&v4 webpageURL];

  return webpageURL;
}

- (NSString)proxiedBundleIdentifier
{
  options = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [options objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];

  if (v4)
  {
    options2 = [(UAUserActivityAdvertisableItem *)self options];
    v6 = [options2 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)alwaysPick
{
  client = [(UAUserActivityAdvertisableItem *)self client];
  allowedToUseLSAlwaysPick = [client allowedToUseLSAlwaysPick];

  if (!allowedToUseLSAlwaysPick)
  {
    return 0;
  }

  options = [(UAUserActivityAdvertisableItem *)self options];
  v6 = [options objectForKey:UAUserActivityAlwaysPickKey];

  if (v6)
  {
    v7 = [v6 integerValue] > 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UAUserActivityClientProcess)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (BOOL)alwaysEligible
{
  options = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [options objectForKey:UAAlwaysAdvertise];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 integerValue])
  {
    client = [(UAUserActivityAdvertisableItem *)self client];
    allowedToUseUAAlwaysAdvertise = [client allowedToUseUAAlwaysAdvertise];
  }

  else
  {
    allowedToUseUAAlwaysAdvertise = 0;
  }

  return allowedToUseUAAlwaysAdvertise;
}

- (BOOL)eligibleToAdvertise
{
  client = [(UAUserActivityAdvertisableItem *)self client];
  uuid = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [client isEligibleToAdvertiseWithUUID:uuid];

  if (!v5)
  {
    goto LABEL_4;
  }

  expirationDate = [(UAUserActivityAdvertisableItem *)self expirationDate];
  if (!expirationDate)
  {
    goto LABEL_4;
  }

  v7 = expirationDate;
  expirationDate2 = [(UAUserActivityAdvertisableItem *)self expirationDate];
  v9 = +[NSDate date];
  v10 = [expirationDate2 compare:v9];

  if ((v10 & 0x8000000000000000) != 0)
  {
    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      uuid2 = [(UAUserActivityAdvertisableItem *)self uuid];
      uUIDString = [uuid2 UUIDString];
      statusString = [(UAAdvertisableItem *)self statusString];
      expirationDate3 = [(UAUserActivityAdvertisableItem *)self expirationDate];
      v18 = 138543875;
      v19 = uUIDString;
      v20 = 2113;
      v21 = statusString;
      v22 = 2114;
      v23 = expirationDate3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "-- item %{public}@/%{private}@ not eligible, because it has expired (on %{public}@)", &v18, 0x20u);
    }

    v11 = 0;
  }

  else
  {
LABEL_4:
    v11 = [(UAUserActivityAdvertisableItem *)self eligibleToAlwaysAdvertise]| v5;
  }

  return v11 & 1;
}

- (BOOL)eligibleToAlwaysAdvertise
{
  client = [(UAUserActivityAdvertisableItem *)self client];
  uuid = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [client isEligibleToAlwaysAdvertiseWithUUID:uuid];

  return v5;
}

- (BOOL)eligibleInBackground
{
  options = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [options objectForKey:UAUserActivityEligibleEvenWhenInBackgroundKey];

  if ([v4 integerValue] >= 1 && (-[UAUserActivityAdvertisableItem client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "allowedToUseEligibleEvenWhenInBackground"), v5, v6))
  {
    client = [(UAUserActivityAdvertisableItem *)self client];
    allowedToUseEligibleEvenWhenInBackground = [client allowedToUseEligibleEvenWhenInBackground];
  }

  else
  {
    allowedToUseEligibleEvenWhenInBackground = 0;
  }

  return allowedToUseEligibleEvenWhenInBackground;
}

- (UAUserActivityAdvertisableItem)initWithUserActivityInfo:(id)info client:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = UAUserActivityAdvertisableItem;
  v7 = [(UAUserActivityAdvertisableItem *)&v10 initWithUserActivityInfo:info];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_client, clientCopy);
  }

  return v8;
}

- (UAUserActivityAdvertisableItem)initWithUUID:(id)d type:(unint64_t)type options:(id)options client:(id)client
{
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = UAUserActivityAdvertisableItem;
  v11 = [(UAUserActivityAdvertisableItem *)&v15 initWithUUID:d type:type options:options];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_client, clientCopy);
    teamID = [clientCopy teamID];
    [(UAUserActivityAdvertisableItem *)v12 setTeamIdentifier:teamID];
  }

  return v12;
}

- (void)setWebpageURL:(id)l
{
  lCopy = l;
  if (!lCopy || (-[UAUserActivityAdvertisableItem webpageURL](self, "webpageURL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [lCopy isEqual:v5], v5, (v6 & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = UAUserActivityAdvertisableItem;
    [(UAUserActivityAdvertisableItem *)&v7 setWebpageURL:lCopy];
  }
}

- (int64_t)alwaysPickValue
{
  options = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [options objectForKey:UAUserActivityAlwaysPickKey];

  if (v4 && (-[UAUserActivityAdvertisableItem client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 allowedToUseLSAlwaysPick], v5, v6))
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)provenance
{
  client = [(UAUserActivityAdvertisableItem *)self client];
  uuid = [(UAUserActivityAdvertisableItem *)self uuid];
  if (client)
  {
    client2 = [(UAUserActivityAdvertisableItem *)self client];
    auditToken = [client2 auditToken];
    v7 = [auditToken pid];
    activityType = [(UAUserActivityAdvertisableItem *)self activityType];
    dynamicActivityType = [(UAUserActivityAdvertisableItem *)self dynamicActivityType];
    v10 = dynamicActivityType;
    v11 = &stru_1000C67D0;
    if (dynamicActivityType)
    {
      v11 = dynamicActivityType;
    }

    v12 = [NSString stringWithFormat:@"UA:%@-%d/%@-%@", uuid, v7, activityType, v11];
  }

  else
  {
    client2 = [(UAUserActivityAdvertisableItem *)self activityType];
    dynamicActivityType2 = [(UAUserActivityAdvertisableItem *)self dynamicActivityType];
    auditToken = dynamicActivityType2;
    v14 = &stru_1000C67D0;
    if (dynamicActivityType2)
    {
      v14 = dynamicActivityType2;
    }

    v12 = [NSString stringWithFormat:@"UA:%@/%@-%@", uuid, client2, v14];
  }

  return v12;
}

- (BOOL)update:(id)update
{
  updateCopy = update;
  title = [updateCopy title];
  [(UAUserActivityAdvertisableItem *)self setTitle:title];

  payloads = [updateCopy payloads];
  [(UAUserActivityAdvertisableItem *)self setPayloads:payloads];

  expirationDate = [updateCopy expirationDate];
  [(UAUserActivityAdvertisableItem *)self setExpirationDate:expirationDate];

  webpageURL = [updateCopy webpageURL];
  [(UAUserActivityAdvertisableItem *)self setWebpageURL:webpageURL];

  referrerURL = [updateCopy referrerURL];
  [(UAUserActivityAdvertisableItem *)self setReferrerURL:referrerURL];

  targetContentIdentifier = [updateCopy targetContentIdentifier];
  [(UAUserActivityAdvertisableItem *)self setTargetContentIdentifier:targetContentIdentifier];

  persistentIdentifier = [updateCopy persistentIdentifier];
  [(UAUserActivityAdvertisableItem *)self setPersistentIdentifier:persistentIdentifier];

  options = [updateCopy options];
  [(UAUserActivityAdvertisableItem *)self setOptions:options];

  when = [updateCopy when];
  [(UAUserActivityAdvertisableItem *)self setWhen:when];

  -[UAUserActivityAdvertisableItem setEligibleForHandoff:](self, "setEligibleForHandoff:", [updateCopy eligibleForHandoff]);
  -[UAUserActivityAdvertisableItem setEligibleForSearch:](self, "setEligibleForSearch:", [updateCopy eligibleForSearch]);
  eligibleForPublicIndexing = [updateCopy eligibleForPublicIndexing];

  [(UAUserActivityAdvertisableItem *)self setEligibleForPublicIndexing:eligibleForPublicIndexing];
  return 1;
}

- (BOOL)isDirty
{
  client = [(UAUserActivityAdvertisableItem *)self client];
  uuid = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [client isDirtyActivityWithUUID:uuid];

  return v5;
}

- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uuid = [(UAUserActivityAdvertisableItem *)self uuid];
    uUIDString = [uuid UUIDString];
    client = [(UAUserActivityAdvertisableItem *)self client];
    auditToken = [client auditToken];
    v15 = 138543618;
    v16 = uUIDString;
    v17 = 2048;
    v18 = [auditToken pid];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "wasResumedOnAnotherDevice, %{public}@ to client pid=%ld", &v15, 0x16u);
  }

  client2 = [(UAUserActivityAdvertisableItem *)self client];
  if (client2)
  {
    client3 = [(UAUserActivityAdvertisableItem *)self client];
    uuid2 = [(UAUserActivityAdvertisableItem *)self uuid];
    v13 = [client3 didResumeUserActivityWithUUID:uuid2 completionHandler:handlerCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end