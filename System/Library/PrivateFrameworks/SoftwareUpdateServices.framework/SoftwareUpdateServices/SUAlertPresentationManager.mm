@interface SUAlertPresentationManager
+ (SUAlertPresentationManager)sharedInstance;
- (BOOL)_presentAlert:(id)alert animated:(BOOL)animated;
- (BOOL)isPresentingAlertsOfClass:(Class)class;
- (SUAlertPresentationManager)init;
- (id)_presentedAlerts;
- (id)_presentedAlertsOfClass:(Class)class;
- (void)_dismissAlert:(id)alert animated:(BOOL)animated;
- (void)_dismissAlertsOfClass:(Class)class animated:(BOOL)animated;
- (void)_dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated;
- (void)_noteAlertDeactivated:(id)deactivated;
- (void)_updateAlert:(id)alert animated:(BOOL)animated;
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
    array = [MEMORY[0x277CBEB18] array];
    alerts = v2->_alerts;
    v2->_alerts = array;
  }

  return v2;
}

- (id)_presentedAlerts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEB98] setWithArray:selfCopy->_alerts];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_presentedAlertsOfClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = selfCopy->_alerts;
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

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_presentAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Presenting alert: %@", v7, v8, v9, v10, v11, v12, alertCopy);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  present = [alertCopy present];
  if (present)
  {
    if (([(NSMutableArray *)selfCopy->_alerts containsObject:alertCopy]& 1) == 0)
    {
      [(NSMutableArray *)selfCopy->_alerts addObject:alertCopy];
    }
  }

  else
  {
    v15 = SULogAlerts();
    SULogInfoForSubsystem(v15, @"[Alerts] Failed presenting alert: %@", v16, v17, v18, v19, v20, v21, alertCopy);
  }

  objc_sync_exit(selfCopy);

  return present;
}

- (void)_dismissAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v4 = SULogAlerts();
  SULogInfoForSubsystem(v4, @"[Alerts] Dismissing alert: %@", v5, v6, v7, v8, v9, v10, alertCopy);

  [alertCopy dismiss];
}

- (void)_dismissAlertsOfClass:(Class)class animated:(BOOL)animated
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing alerts of class: %@", v7, v8, v9, v10, v11, v12, class);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = selfCopy->_alerts;
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

  objc_sync_exit(selfCopy);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_dismissAllAlertsExcludingClasses:(id)classes animated:(BOOL)animated
{
  v36 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v6 = SULogAlerts();
  SULogInfoForSubsystem(v6, @"[Alerts] Dismissing all alerts excluding classes: %@", v7, v8, v9, v10, v11, v12, classesCopy);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = selfCopy;
  v14 = selfCopy->_alerts;
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
        v19 = classesCopy;
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

- (void)_updateAlert:(id)alert animated:(BOOL)animated
{
  alertCopy = alert;
  v4 = SULogAlerts();
  SULogInfoForSubsystem(v4, @"[Alerts] Updating alert: %@", v5, v6, v7, v8, v9, v10, alertCopy);

  [alertCopy update];
}

- (BOOL)isPresentingAlertsOfClass:(Class)class
{
  v3 = [(SUAlertPresentationManager *)self presentedAlertsOfClass:class];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_noteAlertDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_alerts removeObject:deactivatedCopy];
  objc_sync_exit(selfCopy);
}

@end