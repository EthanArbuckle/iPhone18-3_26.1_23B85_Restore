@interface TPSBundleController
- (BOOL)isHidden;
- (BOOL)isSubscriptionListHidden;
- (NSOrderedSet)subscriptions;
- (PSListController)parentListController;
- (TPSBundleController)initWithParentListController:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (id)subscriptionContextForSpecifier:(id)a3;
- (void)telephonyController:(id)a3 didChangeActiveSubscriptions:(id)a4;
- (void)telephonyController:(id)a3 didChangeSubscriptions:(id)a4;
@end

@implementation TPSBundleController

- (TPSBundleController)initWithParentListController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSBundleController;
  v5 = [(TPSBundleController *)&v12 initWithParentListController:v4];
  if (v5)
  {
    v6 = objc_alloc_init(TPSTelephonyController);
    telephonyController = v5->_telephonyController;
    v5->_telephonyController = v6;

    v8 = [v4 specifier];
    if (v8)
    {
      v9 = [(TPSBundleController *)v5 subscriptionContextForSpecifier:v8];
      subscriptionContext = v5->_subscriptionContext;
      v5->_subscriptionContext = v9;
    }
  }

  return v5;
}

- (BOOL)isHidden
{
  v2 = [(TPSBundleController *)self supportedSubscriptions];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)isSubscriptionListHidden
{
  v2 = [(TPSBundleController *)self subscriptionContext];
  v3 = v2 != 0;

  return v3;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

- (NSOrderedSet)subscriptions
{
  v3 = [(TPSBundleController *)self supportsDisabledSubscriptions];
  v4 = [(TPSBundleController *)self telephonyController];
  v5 = v4;
  if (v3)
  {
    [v4 subscriptions];
  }

  else
  {
    [v4 activeSubscriptions];
  }
  v6 = ;

  v7 = [(TPSBundleController *)self subscriptionContext];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CCAC30];
    v10 = [v7 uuid];
    v11 = [v9 predicateWithFormat:@"uuid == %@", v10];

    v12 = [v6 filteredOrderedSetUsingPredicate:v11];

    v6 = v12;
  }

  return v6;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(TPSBundleController *)self isHidden])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TPSBundleController *)self specifiers];
    if ([(TPSBundleController *)self isSubscriptionListHidden])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            v13 = [(TPSBundleController *)self subscriptionContext];
            [v12 setProperty:v13 forKey:v10];

            v14 = [(TPSBundleController *)self supportedSubscriptions];
            [v12 setProperty:v14 forKey:@"TPSSpecifierSubscriptionsKey"];
          }

          v8 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v8);
      }

      v4 = v6;
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v4 = v5;
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
            v21 = [v19 name];
            v22 = [v20 preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v22 setProperty:objc_msgSend(v19 forKey:{"detailControllerClass"), @"TPSSpecifierSubscriptionDetailControllerKey"}];
            v23 = [(TPSBundleController *)self supportedSubscriptions];
            [v22 setProperty:v23 forKey:@"TPSSpecifierSubscriptionsKey"];

            v24 = [v19 identifier];
            [v22 setIdentifier:v24];

            [v6 addObject:v22];
            v4 = [v6 copy];

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

- (id)subscriptionContextForSpecifier:(id)a3
{
  v4 = [a3 tps_subscriptionContext];
  if (!v4)
  {
    v5 = +[TPSPreferences sharedInstance];
    v6 = [v5 showSubscriptionList];

    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v7 = [(TPSBundleController *)self supportedSubscriptions];
      if ([v7 count] == 1 && (v8 = objc_msgSend(v7, "count"), -[TPSBundleController subscriptions](self, "subscriptions"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 == v10))
      {
        v11 = [v7 firstObject];
        v4 = [v11 context];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)telephonyController:(id)a3 didChangeActiveSubscriptions:(id)a4
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Active subscriptions have changed.", v5, 2u);
  }
}

- (void)telephonyController:(id)a3 didChangeSubscriptions:(id)a4
{
  v4 = TPSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Subscriptions have changed.", v5, 2u);
  }
}

@end