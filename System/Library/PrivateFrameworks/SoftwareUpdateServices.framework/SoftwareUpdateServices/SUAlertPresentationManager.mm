@interface SUAlertPresentationManager
+ (SUAlertPresentationManager)sharedInstance;
- (BOOL)_presentAlert:(id)a3 animated:(BOOL)a4;
- (BOOL)isPresentingAlertsOfClass:(Class)a3;
- (SUAlertPresentationManager)init;
- (id)_presentedAlerts;
- (id)_presentedAlertsOfClass:(Class)a3;
- (void)_dismissAlert:(id)a3 animated:(BOOL)a4;
- (void)_dismissAlertsOfClass:(Class)a3 animated:(BOOL)a4;
- (void)_dismissAllAlertsExcludingClasses:(id)a3 animated:(BOOL)a4;
- (void)_noteAlertDeactivated:(id)a3;
- (void)_updateAlert:(id)a3 animated:(BOOL)a4;
@end

@implementation SUAlertPresentationManager

+ (SUAlertPresentationManager)sharedInstance
{
  if (sharedInstance___once_1 != -1)
  {
    +[SUAlertPresentationManager sharedInstance];
  }

  v3 = sharedInstance___instance_3;

  return v3;
}

uint64_t __44__SUAlertPresentationManager_sharedInstance__block_invoke()
{
  sharedInstance___instance_3 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SUAlertPresentationManager)init
{
  v6.receiver = self;
  v6.super_class = SUAlertPresentationManager;
  v2 = [(SUAlertPresentationManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    alerts = v2->_alerts;
    v2->_alerts = v3;
  }

  return v2;
}

- (id)_presentedAlerts
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2->_alerts];
  objc_sync_exit(v2);

  return v3;
}

- (id)_presentedAlertsOfClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3->_alerts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v9, v12}];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v3);
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_presentAlert:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Presenting alert: %@", v7, v8, v9, v10, v11, v12, v5);

  v13 = self;
  objc_sync_enter(v13);
  v14 = [v5 present];
  if (v14)
  {
    if (([(NSMutableArray *)v13->_alerts containsObject:v5]& 1) == 0)
    {
      [(NSMutableArray *)v13->_alerts addObject:v5];
    }
  }

  else
  {
    v15 = SULogAlerts();
    SULogInfoForSubsystem(v15, @"[Alerts] Failed presenting alert: %@", v16, v17, v18, v19, v20, v21, v5);
  }

  objc_sync_exit(v13);

  return v14;
}

- (void)_dismissAlert:(id)a3 animated:(BOOL)a4
{
  v11 = a3;
  v4 = SULogAlerts();
  SULogInfoForSubsystem(v4, @"[Alerts] Dismissing alert: %@", v5, v6, v7, v8, v9, v10, v11);

  [v11 dismiss];
}

- (void)_dismissAlertsOfClass:(Class)a3 animated:(BOOL)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing alerts of class: %@", v7, v8, v9, v10, v11, v12, a3);

  v13 = self;
  objc_sync_enter(v13);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v13->_alerts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if (objc_opt_isKindOfClass())
        {
          [v18 dismiss];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  objc_sync_exit(v13);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_dismissAllAlertsExcludingClasses:(id)a3 animated:(BOOL)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing all alerts excluding classes: %@", v7, v8, v9, v10, v11, v12, v5);

  v13 = self;
  objc_sync_enter(v13);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v13;
  v14 = v13->_alerts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v15)
  {
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v19 = v5;
        v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v20)
        {
          v21 = *v27;
          while (2)
          {
            v22 = 0;
            do
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v26 + 1) + 8 * v22);
              if (objc_opt_isKindOfClass())
              {

                goto LABEL_16;
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        [v18 dismiss];
LABEL_16:
        ++v17;
      }

      while (v17 != v15);
      v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_updateAlert:(id)a3 animated:(BOOL)a4
{
  v11 = a3;
  v4 = SULogAlerts();
  SULogInfoForSubsystem(v4, @"[Alerts] Updating alert: %@", v5, v6, v7, v8, v9, v10, v11);

  [v11 update];
}

- (BOOL)isPresentingAlertsOfClass:(Class)a3
{
  v3 = [(SUAlertPresentationManager *)self presentedAlertsOfClass:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_noteAlertDeactivated:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_alerts removeObject:v5];
  objc_sync_exit(v4);
}

@end