@interface UAUserActivityAdvertisableItem
- (BOOL)alwaysEligible;
- (BOOL)alwaysPick;
- (BOOL)eligibleInBackground;
- (BOOL)eligibleToAdvertise;
- (BOOL)eligibleToAlwaysAdvertise;
- (BOOL)isDirty;
- (BOOL)update:(id)a3;
- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)a3;
- (NSString)proxiedBundleIdentifier;
- (UAUserActivityAdvertisableItem)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5 client:(id)a6;
- (UAUserActivityAdvertisableItem)initWithUserActivityInfo:(id)a3 client:(id)a4;
- (UAUserActivityClientProcess)client;
- (id)provenance;
- (id)webpageURL;
- (int64_t)alwaysPickValue;
- (void)setWebpageURL:(id)a3;
@end

@implementation UAUserActivityAdvertisableItem

- (id)webpageURL
{
  v4.receiver = self;
  v4.super_class = UAUserActivityAdvertisableItem;
  v2 = [(UAUserActivityAdvertisableItem *)&v4 webpageURL];

  return v2;
}

- (NSString)proxiedBundleIdentifier
{
  v3 = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [v3 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];

  if (v4)
  {
    v5 = [(UAUserActivityAdvertisableItem *)self options];
    v6 = [v5 objectForKeyedSubscript:@"UAProxiedBundleIdentifier"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)alwaysPick
{
  v3 = [(UAUserActivityAdvertisableItem *)self client];
  v4 = [v3 allowedToUseLSAlwaysPick];

  if (!v4)
  {
    return 0;
  }

  v5 = [(UAUserActivityAdvertisableItem *)self options];
  v6 = [v5 objectForKey:UAUserActivityAlwaysPickKey];

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
  v3 = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [v3 objectForKey:UAAlwaysAdvertise];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 integerValue])
  {
    v5 = [(UAUserActivityAdvertisableItem *)self client];
    v6 = [v5 allowedToUseUAAlwaysAdvertise];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)eligibleToAdvertise
{
  v3 = [(UAUserActivityAdvertisableItem *)self client];
  v4 = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [v3 isEligibleToAdvertiseWithUUID:v4];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(UAUserActivityAdvertisableItem *)self expirationDate];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = [(UAUserActivityAdvertisableItem *)self expirationDate];
  v9 = +[NSDate date];
  v10 = [v8 compare:v9];

  if ((v10 & 0x8000000000000000) != 0)
  {
    v13 = sub_100001A30(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(UAUserActivityAdvertisableItem *)self uuid];
      v15 = [v14 UUIDString];
      v16 = [(UAAdvertisableItem *)self statusString];
      v17 = [(UAUserActivityAdvertisableItem *)self expirationDate];
      v18 = 138543875;
      v19 = v15;
      v20 = 2113;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
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
  v3 = [(UAUserActivityAdvertisableItem *)self client];
  v4 = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [v3 isEligibleToAlwaysAdvertiseWithUUID:v4];

  return v5;
}

- (BOOL)eligibleInBackground
{
  v3 = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [v3 objectForKey:UAUserActivityEligibleEvenWhenInBackgroundKey];

  if ([v4 integerValue] >= 1 && (-[UAUserActivityAdvertisableItem client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "allowedToUseEligibleEvenWhenInBackground"), v5, v6))
  {
    v7 = [(UAUserActivityAdvertisableItem *)self client];
    v8 = [v7 allowedToUseEligibleEvenWhenInBackground];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UAUserActivityAdvertisableItem)initWithUserActivityInfo:(id)a3 client:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = UAUserActivityAdvertisableItem;
  v7 = [(UAUserActivityAdvertisableItem *)&v10 initWithUserActivityInfo:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_client, v6);
  }

  return v8;
}

- (UAUserActivityAdvertisableItem)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5 client:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = UAUserActivityAdvertisableItem;
  v11 = [(UAUserActivityAdvertisableItem *)&v15 initWithUUID:a3 type:a4 options:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_client, v10);
    v13 = [v10 teamID];
    [(UAUserActivityAdvertisableItem *)v12 setTeamIdentifier:v13];
  }

  return v12;
}

- (void)setWebpageURL:(id)a3
{
  v4 = a3;
  if (!v4 || (-[UAUserActivityAdvertisableItem webpageURL](self, "webpageURL"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqual:v5], v5, (v6 & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = UAUserActivityAdvertisableItem;
    [(UAUserActivityAdvertisableItem *)&v7 setWebpageURL:v4];
  }
}

- (int64_t)alwaysPickValue
{
  v3 = [(UAUserActivityAdvertisableItem *)self options];
  v4 = [v3 objectForKey:UAUserActivityAlwaysPickKey];

  if (v4 && (-[UAUserActivityAdvertisableItem client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 allowedToUseLSAlwaysPick], v5, v6))
  {
    v7 = [v4 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)provenance
{
  v3 = [(UAUserActivityAdvertisableItem *)self client];
  v4 = [(UAUserActivityAdvertisableItem *)self uuid];
  if (v3)
  {
    v5 = [(UAUserActivityAdvertisableItem *)self client];
    v6 = [v5 auditToken];
    v7 = [v6 pid];
    v8 = [(UAUserActivityAdvertisableItem *)self activityType];
    v9 = [(UAUserActivityAdvertisableItem *)self dynamicActivityType];
    v10 = v9;
    v11 = &stru_1000C67D0;
    if (v9)
    {
      v11 = v9;
    }

    v12 = [NSString stringWithFormat:@"UA:%@-%d/%@-%@", v4, v7, v8, v11];
  }

  else
  {
    v5 = [(UAUserActivityAdvertisableItem *)self activityType];
    v13 = [(UAUserActivityAdvertisableItem *)self dynamicActivityType];
    v6 = v13;
    v14 = &stru_1000C67D0;
    if (v13)
    {
      v14 = v13;
    }

    v12 = [NSString stringWithFormat:@"UA:%@/%@-%@", v4, v5, v14];
  }

  return v12;
}

- (BOOL)update:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  [(UAUserActivityAdvertisableItem *)self setTitle:v5];

  v6 = [v4 payloads];
  [(UAUserActivityAdvertisableItem *)self setPayloads:v6];

  v7 = [v4 expirationDate];
  [(UAUserActivityAdvertisableItem *)self setExpirationDate:v7];

  v8 = [v4 webpageURL];
  [(UAUserActivityAdvertisableItem *)self setWebpageURL:v8];

  v9 = [v4 referrerURL];
  [(UAUserActivityAdvertisableItem *)self setReferrerURL:v9];

  v10 = [v4 targetContentIdentifier];
  [(UAUserActivityAdvertisableItem *)self setTargetContentIdentifier:v10];

  v11 = [v4 persistentIdentifier];
  [(UAUserActivityAdvertisableItem *)self setPersistentIdentifier:v11];

  v12 = [v4 options];
  [(UAUserActivityAdvertisableItem *)self setOptions:v12];

  v13 = [v4 when];
  [(UAUserActivityAdvertisableItem *)self setWhen:v13];

  -[UAUserActivityAdvertisableItem setEligibleForHandoff:](self, "setEligibleForHandoff:", [v4 eligibleForHandoff]);
  -[UAUserActivityAdvertisableItem setEligibleForSearch:](self, "setEligibleForSearch:", [v4 eligibleForSearch]);
  v14 = [v4 eligibleForPublicIndexing];

  [(UAUserActivityAdvertisableItem *)self setEligibleForPublicIndexing:v14];
  return 1;
}

- (BOOL)isDirty
{
  v3 = [(UAUserActivityAdvertisableItem *)self client];
  v4 = [(UAUserActivityAdvertisableItem *)self uuid];
  v5 = [v3 isDirtyActivityWithUUID:v4];

  return v5;
}

- (BOOL)wasResumedOnAnotherDeviceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(UAUserActivityAdvertisableItem *)self uuid];
    v7 = [v6 UUIDString];
    v8 = [(UAUserActivityAdvertisableItem *)self client];
    v9 = [v8 auditToken];
    v15 = 138543618;
    v16 = v7;
    v17 = 2048;
    v18 = [v9 pid];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "wasResumedOnAnotherDevice, %{public}@ to client pid=%ld", &v15, 0x16u);
  }

  v10 = [(UAUserActivityAdvertisableItem *)self client];
  if (v10)
  {
    v11 = [(UAUserActivityAdvertisableItem *)self client];
    v12 = [(UAUserActivityAdvertisableItem *)self uuid];
    v13 = [v11 didResumeUserActivityWithUUID:v12 completionHandler:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end