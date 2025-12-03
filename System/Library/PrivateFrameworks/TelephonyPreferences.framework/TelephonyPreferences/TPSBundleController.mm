@interface TPSBundleController
- (BOOL)isHidden;
- (BOOL)isSubscriptionListHidden;
- (NSOrderedSet)subscriptions;
- (PSListController)parentListController;
- (TPSBundleController)initWithParentListController:(id)controller;
- (id)specifiersWithSpecifier:(id)specifier;
- (id)subscriptionContextForSpecifier:(id)specifier;
- (void)telephonyController:(id)controller didChangeActiveSubscriptions:(id)subscriptions;
- (void)telephonyController:(id)controller didChangeSubscriptions:(id)subscriptions;
@end

@implementation TPSBundleController

- (TPSBundleController)initWithParentListController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = TPSBundleController;
  v5 = [(TPSBundleController *)&v12 initWithParentListController:controllerCopy];
  if (v5)
  {
    v6 = objc_alloc_init(TPSTelephonyController);
    telephonyController = v5->_telephonyController;
    v5->_telephonyController = v6;

    specifier = [controllerCopy specifier];
    if (specifier)
    {
      v9 = [(TPSBundleController *)v5 subscriptionContextForSpecifier:specifier];
      subscriptionContext = v5->_subscriptionContext;
      v5->_subscriptionContext = v9;
    }
  }

  return v5;
}

- (BOOL)isHidden
{
  supportedSubscriptions = [(TPSBundleController *)self supportedSubscriptions];
  v3 = [supportedSubscriptions count] == 0;

  return v3;
}

- (BOOL)isSubscriptionListHidden
{
  subscriptionContext = [(TPSBundleController *)self subscriptionContext];
  v3 = subscriptionContext != 0;

  return v3;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

- (NSOrderedSet)subscriptions
{
  supportsDisabledSubscriptions = [(TPSBundleController *)self supportsDisabledSubscriptions];
  telephonyController = [(TPSBundleController *)self telephonyController];
  v5 = telephonyController;
  if (supportsDisabledSubscriptions)
  {
    [telephonyController subscriptions];
  }

  else
  {
    [telephonyController activeSubscriptions];
  }
  v6 = ;

  subscriptionContext = [(TPSBundleController *)self subscriptionContext];
  v8 = subscriptionContext;
  if (subscriptionContext)
  {
    v9 = MEMORY[0x277CCAC30];
    uuid = [subscriptionContext uuid];
    v11 = [v9 predicateWithFormat:@"uuid == %@", uuid];

    v12 = [v6 filteredOrderedSetUsingPredicate:v11];

    v6 = v12;
  }

  return v6;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(TPSBundleController *)self isHidden])
  {
    v4 = 0;
  }

  else
  {
    specifiers = [(TPSBundleController *)self specifiers];
    if ([(TPSBundleController *)self isSubscriptionListHidden])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      array = specifiers;
      v7 = [array countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v30;
        v10 = *MEMORY[0x277D40128];
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(array);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            subscriptionContext = [(TPSBundleController *)self subscriptionContext];
            [v12 setProperty:subscriptionContext forKey:v10];

            supportedSubscriptions = [(TPSBundleController *)self supportedSubscriptions];
            [v12 setProperty:supportedSubscriptions forKey:@"TPSSpecifierSubscriptionsKey"];
          }

          v8 = [array countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v8);
      }

      v4 = array;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v4 = specifiers;
      v15 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
      obj = v4;
      if (v15)
      {
        v16 = v15;
        v28 = *v34;
        do
        {
          v17 = 0;
          v18 = v4;
          do
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v33 + 1) + 8 * v17);
            v20 = MEMORY[0x277D3FAD8];
            name = [v19 name];
            v22 = [v20 preferenceSpecifierNamed:name target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v22 setProperty:objc_msgSend(v19 forKey:{"detailControllerClass"), @"TPSSpecifierSubscriptionDetailControllerKey"}];
            supportedSubscriptions2 = [(TPSBundleController *)self supportedSubscriptions];
            [v22 setProperty:supportedSubscriptions2 forKey:@"TPSSpecifierSubscriptionsKey"];

            identifier = [v19 identifier];
            [v22 setIdentifier:identifier];

            [array addObject:v22];
            v4 = [array copy];

            ++v17;
            v18 = v4;
          }

          while (v16 != v17);
          v16 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v16);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)subscriptionContextForSpecifier:(id)specifier
{
  tps_subscriptionContext = [specifier tps_subscriptionContext];
  if (!tps_subscriptionContext)
  {
    v5 = +[TPSPreferences sharedInstance];
    showSubscriptionList = [v5 showSubscriptionList];

    if (showSubscriptionList)
    {
      tps_subscriptionContext = 0;
    }

    else
    {
      supportedSubscriptions = [(TPSBundleController *)self supportedSubscriptions];
      if ([supportedSubscriptions count] == 1 && (v8 = objc_msgSend(supportedSubscriptions, "count"), -[TPSBundleController subscriptions](self, "subscriptions"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 == v10))
      {
        firstObject = [supportedSubscriptions firstObject];
        tps_subscriptionContext = [firstObject context];
      }

      else
      {
        tps_subscriptionContext = 0;
      }
    }
  }

  return tps_subscriptionContext;
}

- (void)telephonyController:(id)controller didChangeActiveSubscriptions:(id)subscriptions
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Active subscriptions have changed.", v5, 2u);
  }
}

- (void)telephonyController:(id)controller didChangeSubscriptions:(id)subscriptions
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Subscriptions have changed.", v5, 2u);
  }
}

@end