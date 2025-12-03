@interface WLKBadgingUtilities
+ (BOOL)addBadgeIdentifier:(id)identifier;
+ (BOOL)hasMigrated;
+ (BOOL)removeBadgeIdentifier:(id)identifier;
+ (id)_createRequestContainer:(id)container;
+ (id)_returnListofBadgingActionMetrics;
+ (id)badgeIdentifiers;
+ (id)currentBadgeNumber;
+ (id)sharedUtilities;
+ (void)clearSavedBadgeIdentifiers;
+ (void)processStoredODJBadgingRequestActions;
+ (void)removeBadgeRequest:(id)request;
+ (void)storeBadgeRequest:(id)request;
- (id)_notificationCenter;
- (void)migrateToNewBadgingSystemIfNeeded;
@end

@implementation WLKBadgingUtilities

+ (id)sharedUtilities
{
  if (sharedUtilities___once != -1)
  {
    +[WLKBadgingUtilities sharedUtilities];
  }

  v3 = sharedUtilities___singleInstance;

  return v3;
}

uint64_t __38__WLKBadgingUtilities_sharedUtilities__block_invoke()
{
  sharedUtilities___singleInstance = objc_alloc_init(WLKBadgingUtilities);

  return MEMORY[0x2821F96F8]();
}

- (id)_notificationCenter
{
  if (_notificationCenter_onceToken != -1)
  {
    [WLKBadgingUtilities _notificationCenter];
  }

  v3 = _notificationCenter__center;

  return v3;
}

void __42__WLKBadgingUtilities__notificationCenter__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CE2028]);
  v3 = WLKTVAppBundleID();
  v1 = [v0 initWithBundleIdentifier:v3];
  v2 = _notificationCenter__center;
  _notificationCenter__center = v1;
}

+ (id)currentBadgeNumber
{
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [wlk_userDefaults arrayForKey:@"badgeIdentifiers"];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "count")}];
  }

  else
  {
    v5 = &unk_288222BD8;
  }

  return v5;
}

+ (id)badgeIdentifiers
{
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [wlk_userDefaults arrayForKey:@"badgeIdentifiers"];

  return v3;
}

+ (BOOL)hasMigrated
{
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [wlk_userDefaults BOOLForKey:@"hasMigratedToNewBadgingSystem"];

  return v3;
}

- (void)migrateToNewBadgingSystemIfNeeded
{
  if (([objc_opt_class() hasMigrated] & 1) == 0)
  {
    _notificationCenter = [(WLKBadgingUtilities *)self _notificationCenter];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__WLKBadgingUtilities_migrateToNewBadgingSystemIfNeeded__block_invoke;
    v5[3] = &unk_279E5F1B0;
    v5[4] = self;
    [_notificationCenter getBadgeNumberWithCompletionHandler:v5];

    wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
    [wlk_userDefaults setBool:1 forKey:@"hasMigratedToNewBadgingSystem"];
  }
}

void __56__WLKBadgingUtilities_migrateToNewBadgingSystemIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() currentBadgeNumber];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  }

  v10 = v7;

  v8 = [v4 integerValue];
  if (v8 == 1 && ![v10 integerValue])
  {
    v9 = *(a1 + 32);
    [objc_opt_class() addBadgeIdentifier:@"defaultTVAppBadgeId"];
  }
}

+ (BOOL)addBadgeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v5 = [wlk_userDefaults arrayForKey:@"badgeIdentifiers"];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
LABEL_7:
    v9 = v8;
    [v8 addObject:identifierCopy];
    v10 = [v9 copy];
    [wlk_userDefaults setValue:v10 forKey:@"badgeIdentifiers"];

    v7 = 1;
    goto LABEL_8;
  }

  if (([v6 containsObject:identifierCopy] & 1) == 0)
  {
    v8 = [v6 mutableCopy];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (BOOL)removeBadgeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v5 = [wlk_userDefaults objectForKey:@"badgeIdentifiers"];
  v6 = v5;
  if (v5 && [v5 count] && objc_msgSend(v6, "containsObject:", identifierCopy))
  {
    v7 = [v6 mutableCopy];
    [v7 removeObject:identifierCopy];
    if ([v7 count])
    {
      v8 = [v7 copy];
      [wlk_userDefaults setValue:v8 forKey:@"badgeIdentifiers"];
    }

    else
    {
      [wlk_userDefaults removeObjectForKey:@"badgeIdentifiers"];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)clearSavedBadgeIdentifiers
{
  wlk_userDefaults = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  [wlk_userDefaults removeObjectForKey:@"badgeIdentifiers"];
}

+ (void)storeBadgeRequest:(id)request
{
  requestCopy = request;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v5 = [v4 objectForKey:@"listOfODJBadges"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v7 = [self _createRequestContainer:requestCopy];
  if (v6 && [v6 count])
  {
    if ([v6 containsObject:v7])
    {
      goto LABEL_7;
    }

    [v6 addObject:v7];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);

    [v8 addObject:v7];
    v6 = v8;
  }

  badgeIdentifier = [requestCopy badgeIdentifier];
  NSLog(&cfstr_Wlkbadgingutil.isa, badgeIdentifier);

LABEL_7:
  [v4 setObject:v6 forKey:@"listOfODJBadges"];
}

+ (void)removeBadgeRequest:(id)request
{
  requestCopy = request;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v5 = [v4 objectForKey:@"listOfODJBadges"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v7 = [self _createRequestContainer:requestCopy];
  if (v6 && [v6 count] && objc_msgSend(v6, "containsObject:", v7))
  {
    [v6 removeObject:v7];
    if ([v6 count])
    {
      [v4 setObject:v6 forKey:@"listOfODJBadges"];
    }

    else
    {
      [v4 removeObjectForKey:@"listOfODJBadges"];
    }

    badgeIdentifier = [requestCopy badgeIdentifier];
    NSLog(&cfstr_Wlkbadgingutil_0.isa, badgeIdentifier);
  }
}

+ (id)_createRequestContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  actionMetricsEvent = [containerCopy actionMetricsEvent];

  if (actionMetricsEvent)
  {
    actionMetricsEvent2 = [containerCopy actionMetricsEvent];
    [v4 setObject:actionMetricsEvent2 forKeyedSubscript:@"actionMetrics"];
  }

  badgeIdentifier = [containerCopy badgeIdentifier];

  if (badgeIdentifier)
  {
    badgeIdentifier2 = [containerCopy badgeIdentifier];
    [v4 setObject:badgeIdentifier2 forKeyedSubscript:@"badgeIdentifier"];
  }

  return v4;
}

+ (void)processStoredODJBadgingRequestActions
{
  v26 = *MEMORY[0x277D85DE8];
  [objc_opt_class() _returnListofBadgingActionMetrics];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"actionMetrics"];
        v8 = [v6 objectForKeyedSubscript:@"badgeIdentifier"];
        v9 = v8;
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = objc_alloc(MEMORY[0x277CEE598]);
          v12 = WLKTVAppBundleID();
          wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
          v14 = [v11 initWithContainerID:v12 bag:wlk_defaultBag];

          v15 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithUnderlyingDictionary:v7];
          NSLog(&cfstr_Wlkbadgingutil_1.isa, v9);
          [v14 enqueueEvent:v15];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  [v16 removeObjectForKey:@"listOfODJBadges"];
  v17 = +[WLKNotificationCenter defaultCenter];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v17 setBadgeNumber:v18 withCompletionHandler:0];

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)_returnListofBadgingActionMetrics
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v3 = [v2 objectForKey:@"listOfODJBadges"];

  return v3;
}

@end