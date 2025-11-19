@interface SUSUIAlertPresentationManager
- (BOOL)presentAlert:(id)a3 animated:(BOOL)a4;
- (NSSet)presentedAlerts;
- (SUSUIAlertPresentationManager)initWithQueue:(id)a3;
- (id)_presenterForAlertItem:(id)a3;
- (id)presentedAlertsOfClass:(Class)a3;
- (void)_noteAlertDeactivated:(id)a3;
- (void)dismissAlert:(id)a3 animated:(BOOL)a4;
- (void)dismissAlertsOfClass:(Class)a3 animated:(BOOL)a4;
- (void)dismissAllAlertsAnimated:(BOOL)a3;
- (void)dismissAllAlertsExcludingClasses:(id)a3 animated:(BOOL)a4;
- (void)updateAlert:(id)a3 animated:(BOOL)a4;
- (void)updateAllAlertLockState:(BOOL)a3;
@end

@implementation SUSUIAlertPresentationManager

- (SUSUIAlertPresentationManager)initWithQueue:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = SUSUIAlertPresentationManager;
  v8 = [(SUSUIAlertPresentationManager *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    objc_storeStrong(&v11->_queue, location[0]);
    v4 = +[NSMutableArray array];
    presenters = v11->_presenters;
    v11->_presenters = v4;
  }

  v7 = v11;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (NSSet)presentedAlerts
{
  v15 = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(NSMutableSet);
  memset(__b, 0, sizeof(__b));
  obj = v15->_presenters;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v8);
      v4 = v14[0];
      v5 = [v13 alertItem];
      [v4 addObject:?];

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v3 = v14[0];
  objc_storeStrong(v14, 0);

  return v3;
}

- (BOOL)presentAlert:(id)a3 animated:(BOOL)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  queue = v14->_queue;
  BSDispatchQueueAssert();
  v11 = SUSUILog();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v17, location[0]);
    _os_log_impl(&dword_0, v11, v10, "[Alerts] Presenting alert: %@", v17, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  [location[0] _setPresentationManager:v14];
  v5 = [SUSUINotificationPresenter alloc];
  v9 = [(SUSUINotificationPresenter *)v5 initWithQueue:v14->_queue alert:location[0]];
  if (([(NSMutableArray *)v14->_presenters containsObject:v9]& 1) == 0)
  {
    [(NSMutableArray *)v14->_presenters addObject:v9];
  }

  if ([v9 presentAlert])
  {
    v15 = 1;
  }

  else
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v16, location[0]);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Alerts] Failed presenting alert: %@", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [location[0] _setPresentationManager:0];
    [(NSMutableArray *)v14->_presenters removeObject:v9];
    v15 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (void)dismissAlert:(id)a3 animated:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  queue = v9->_queue;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v10, location[0]);
    _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "[Alerts] Dismissing alert: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [location[0] dismissAlert];
  objc_storeStrong(location, 0);
}

- (void)dismissAlertsOfClass:(Class)a3 animated:(BOOL)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v23 = SUSUILog();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    log = v23;
    type = v22;
    v11 = v25;
    v16 = [(SUSUIAlertPresentationManager *)v27 presentedAlerts];
    v12 = v16;
    v21 = v12;
    v15 = [(SUSUIAlertPresentationManager *)v27 presentedAlertsOfClass:v25];
    v20 = v15;
    sub_2420(v29, v11, v12, v20);
    _os_log_impl(&dword_0, log, type, "[Alerts] Dismissing alerts of class: %@ (_presentedAlertItems: %@, ofClass: %@)", v29, 0x20u);

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v23, 0);
  v19 = [(SUSUIAlertPresentationManager *)v27 presentedAlertsOfClass:v25];
  memset(__b, 0, sizeof(__b));
  v9 = v19;
  v10 = [v9 countByEnumeratingWithState:__b objects:v28 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v9);
      }

      v18 = *(__b[1] + 8 * v7);
      [(SUSUIAlertPresentationManager *)v27 dismissAlert:v18 animated:v24];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [v9 countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(&v19, 0);
}

- (void)dismissAllAlertsAnimated:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = SUSUILog();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    log = location;
    type = v6;
    sub_2544(v5);
    _os_log_impl(&dword_0, log, type, "[Alerts] Dismissing all alerts", v5, 2u);
  }

  objc_storeStrong(&location, 0);
  [(SUSUIAlertPresentationManager *)v10 dismissAllAlertsExcludingClasses:0 animated:v8];
}

- (void)dismissAllAlertsExcludingClasses:(id)a3 animated:(BOOL)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v29, location[0]);
    _os_log_impl(&dword_0, v23, type, "[Alerts] Dismissing all alerts excluding classes: %@", v29, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)v26 presentedAlerts];
  v15 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v12);
      v19 = 0;
      memset(v17, 0, sizeof(v17));
      v8 = location[0];
      v9 = [v8 countByEnumeratingWithState:v17 objects:v27 count:16];
      if (v9)
      {
        v5 = *v17[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*v17[2] != v5)
          {
            objc_enumerationMutation(v8);
          }

          aClassName = *(v17[1] + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            NSClassFromString(aClassName);
            if (objc_opt_isKindOfClass())
            {
              break;
            }
          }

          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [v8 countByEnumeratingWithState:v17 objects:v27 count:16];
            if (!v7)
            {
              goto LABEL_16;
            }
          }
        }

        v19 = 1;
      }

LABEL_16:

      if ((v19 & 1) == 0)
      {
        [(SUSUIAlertPresentationManager *)v26 dismissAlert:v21 animated:v24];
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)updateAlert:(id)a3 animated:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  queue = v11->_queue;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v12, location[0]);
    _os_log_impl(&dword_0, oslog, type, "[Alerts] Updating alert: %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [(SUSUIAlertPresentationManager *)v11 _presenterForAlertItem:location[0]];
  if (v6)
  {
    [v6 updateAlert];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAllAlertLockState:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v15)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    sub_1FCC(v19, v4);
    _os_log_impl(&dword_0, oslog, type, "[Alerts] Updating alert lock state to isUILocked: %@", v19, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(SUSUIAlertPresentationManager *)v17 presentedAlerts];
  v10 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v7);
      [v12 setIsUILocked:v15];
      [(SUSUIAlertPresentationManager *)v17 updateAlert:v12 animated:1];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSSet *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }
}

- (id)presentedAlertsOfClass:(Class)a3
{
  v19 = self;
  v18[2] = a2;
  v18[1] = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v18[0] = +[NSMutableSet set];
  memset(__b, 0, sizeof(__b));
  obj = v19->_presenters;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v12);
      v8 = [v17 alertItem];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = v18[0];
        v7 = [v17 alertItem];
        [v6 addObject:?];
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  v5 = v18[0];
  objc_storeStrong(v18, 0);

  return v5;
}

- (void)_noteAlertDeactivated:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v7->_queue;
  BSDispatchQueueAssert();
  v5 = [(SUSUIAlertPresentationManager *)v7 _presenterForAlertItem:location[0]];
  if (v5)
  {
    v4 = [v5 alertItem];
    [v4 _setPresentationManager:0];

    [v5 dismissAlert];
    [(NSMutableArray *)v7->_presenters removeObject:v5];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_presenterForAlertItem:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v17->_presenters;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = [v14 alertItem];
      v6 = [v5 isEqual:location[0]];

      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    objc_storeStrong(&v15, v14);
  }

LABEL_9:

  v4 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end