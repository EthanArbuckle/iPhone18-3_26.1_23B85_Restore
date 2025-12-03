@interface WLDDeviceOfferManager
+ (BOOL)_hasProcessedDeviceOfferForCurrentUser:(id)user;
+ (id)amsDeviceOffertoDictionary:(id)dictionary;
- (WLDDeviceOfferManager)init;
- (void)_reportAMSDeviceOfferMetrics;
- (void)processDeviceOffers;
@end

@implementation WLDDeviceOfferManager

- (WLDDeviceOfferManager)init
{
  v9.receiver = self;
  v9.super_class = WLDDeviceOfferManager;
  v2 = [(WLDDeviceOfferManager *)&v9 init];
  if (v2)
  {
    v3 = [AMSMetrics alloc];
    v4 = WLKTVAppBundleID();
    v5 = +[AMSBag wlk_defaultBag];
    v6 = [v3 initWithContainerID:v4 bag:v5];
    metricsController = v2->_metricsController;
    v2->_metricsController = v6;
  }

  return v2;
}

- (void)processDeviceOffers
{
  v3 = +[AMSDevice deviceOffers];

  v4 = WLKSystemLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = +[AMSDevice deviceOffers];
      *buf = 134217984;
      v39 = [v6 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - Found %lu offer(s) in [AMSDevice deviceOffers]", buf, 0xCu);
    }
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - [AMSDevice deviceOffers] returns nil", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = +[AMSDevice deviceOffers];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v31 = v7;
    v32 = 0;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          offerIdentifier = [v12 offerIdentifier];
          if (offerIdentifier)
          {
            v14 = offerIdentifier;
            offerIdentifier2 = [v12 offerIdentifier];
            v16 = [offerIdentifier2 isEqualToString:@"com.apple.TV"];

            if (v16)
            {
              adamId = [v12 adamId];
              v18 = [NSString stringWithFormat:@"%@", adamId];
              if (([objc_opt_class() _hasProcessedDeviceOfferForCurrentUser:v18] & 1) == 0)
              {
                v19 = objc_alloc_init(NSMutableDictionary);
                [v19 setObject:@"AMSDeviceOfferTypeTV" forKey:@"offerSource"];
                selfCopy = self;
                v21 = [objc_opt_class() amsDeviceOffertoDictionary:v12];
                if (v21)
                {
                  [v19 addEntriesFromDictionary:v21];
                }

                ++v32;
                v22 = +[WLKOfferManager defaultOfferManager];
                [v22 saveOffer:v19 completionHandler:0];

                self = selfCopy;
                v7 = v31;
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    v32 = 0;
  }

  v23 = WLKSystemLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v32;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - Found %lu TV offer(s)", buf, 0xCu);
  }

  if (v32)
  {
    [(WLDDeviceOfferManager *)self _reportAMSDeviceOfferMetrics];
    if ([WLKBadgingUtilities addBadgeIdentifier:WLKNotificationsBadgingIdentifierDefaultValue])
    {
      v24 = WLKSystemLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - [processDeviceOffers] badging TV App", buf, 2u);
      }

      v25 = +[WLKBadgingUtilities currentBadgeNumber];
      v26 = +[WLKNotificationCenter defaultCenter];
      [v26 setBadgeNumber:v25 withCompletionHandler:0];
    }
  }

  v27 = +[TVAppAccountStoreObjC activeAccount];
  if (!v27)
  {
    v28 = WLKSystemLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - Inactive iTunes account", buf, 2u);
    }
  }

  v29 = AMSDeviceOfferIdentifierTV;
  v30 = +[AMSBag wlk_defaultBag];
  [AMSDevice removeDeviceOfferWithIdentifier:v29 account:v27 bag:v30 logKey:@"WLDDeviceOfferManager"];
}

+ (id)amsDeviceOffertoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  adamId = [dictionaryCopy adamId];
  v5 = [dictionaryCopy description];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dictionaryCopy isDowngrading]);
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [dictionaryCopy isSubscribed]);
  serialNumbers = [dictionaryCopy serialNumbers];
  allObjects = [serialNumbers allObjects];
  v10 = [NSArray arrayWithArray:allObjects];

  offerIdentifier = [dictionaryCopy offerIdentifier];
  offerType = [dictionaryCopy offerType];

  if ((offerType - 1) > 3)
  {
    v13 = @"AMSDeviceOfferTypeUnknown";
  }

  else
  {
    v13 = *(&off_100045A40 + (offerType - 1));
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:adamId forKey:@"adamId"];
  if (v5)
  {
    v15 = v5;
  }

  else
  {
    v15 = &stru_100047A18;
  }

  [v14 setObject:v15 forKey:@"description"];
  [v14 setObject:v6 forKey:@"downgrading"];
  [v14 setObject:v7 forKey:@"subscribed"];
  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  [v14 setObject:v16 forKey:@"serialNumbers"];
  if (offerIdentifier)
  {
    v17 = offerIdentifier;
  }

  else
  {
    v17 = &stru_100047A18;
  }

  [v14 setObject:v17 forKey:@"offerIdentifer"];
  [v14 setObject:v13 forKey:@"offerType"];
  v18 = [v14 copy];

  return v18;
}

- (void)_reportAMSDeviceOfferMetrics
{
  v8[0] = @"eventType";
  v8[1] = @"eventVersion";
  v9[0] = @"notificationRequest";
  v9[1] = &off_100049CE0;
  v8[2] = @"notificationType";
  v9[2] = @"AMSDeviceOffer";
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDDeviceOfferManager._reportAMSDeviceOfferMetrics"];
  v6 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_notifications"];
  [v6 addPropertiesWithDictionary:v3];
  [v4 addObject:v6];
  metricsController = [(WLDDeviceOfferManager *)self metricsController];
  [WLDMetricsUtilities sendMetricsEvents:v4 metricsController:metricsController];
}

+ (BOOL)_hasProcessedDeviceOfferForCurrentUser:(id)user
{
  userCopy = user;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = userCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - Received device offer [%@] to check", &v16, 0xCu);
  }

  if ([userCopy length])
  {
    v5 = [NSUserDefaults alloc];
    v6 = [v5 initWithSuiteName:WLKDefaultsDomain];
    v7 = [v6 objectForKey:@"PreviouslyBadgedTVOffers"];
    v8 = objc_opt_new();
    if (v7)
    {
      v9 = [v7 containsObject:userCopy];
      v10 = WLKSystemLogObject();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          v16 = 138412290;
          v17 = userCopy;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - Device TV offer [%@] has already been processed for current user", &v16, 0xCu);
        }

        v12 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v11)
      {
        v16 = 138412290;
        v17 = userCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - New device TV offer [%@] for current user", &v16, 0xCu);
      }

      [v8 addObjectsFromArray:v7];
    }

    else
    {
      v13 = WLKSystemLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDDeviceOfferManager - New device TV offer for current user", &v16, 2u);
      }
    }

    [v8 addObject:userCopy];
    if ([v8 count] >= 0x33)
    {
      [v8 removeObjectAtIndex:0];
    }

    if (v8)
    {
      [v6 setObject:v8 forKey:@"PreviouslyBadgedTVOffers"];
    }

    else
    {
      v14 = WLKSystemLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(WLDDeviceOfferManager *)userCopy _hasProcessedDeviceOfferForCurrentUser:v14];
      }
    }

    v12 = 0;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

+ (void)_hasProcessedDeviceOfferForCurrentUser:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "WLDDeviceOfferManager - Failed to save device TV offer [%@]", &v2, 0xCu);
}

@end