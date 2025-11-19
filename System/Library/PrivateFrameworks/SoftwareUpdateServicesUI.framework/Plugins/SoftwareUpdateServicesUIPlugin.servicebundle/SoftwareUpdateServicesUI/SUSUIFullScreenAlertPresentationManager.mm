@interface SUSUIFullScreenAlertPresentationManager
- (NSMutableArray)activeFullScreenAlerts;
- (SUSUIFullScreenAlertPresentationManager)initWithQueue:(id)a3;
- (void)dismissAlert:(id)a3;
- (void)dismissAlertsOfClass:(Class)a3;
- (void)presentAlert:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SUSUIFullScreenAlertPresentationManager

- (SUSUIFullScreenAlertPresentationManager)initWithQueue:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = SUSUIFullScreenAlertPresentationManager;
  v10 = [(SUSUIFullScreenAlertPresentationManager *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    alertToHandleMapping = v13->_alertToHandleMapping;
    v13->_alertToHandleMapping = v4;

    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    alertActivationBlocks = v13->_alertActivationBlocks;
    v13->_alertActivationBlocks = v6;

    objc_storeStrong(&v13->_queue, location[0]);
  }

  v9 = v13;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (NSMutableArray)activeFullScreenAlerts
{
  v16 = self;
  v15[1] = a2;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v15[0] = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(NSMapTable *)v16->_alertToHandleMapping keyEnumerator];
  v12 = [(NSEnumerator *)obj countByEnumeratingWithState:__b objects:v17 count:16];
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
      if (!v15[0])
      {
        v3 = +[NSMutableArray array];
        v4 = v15[0];
        v15[0] = v3;
      }

      [v15[0] addObject:v14];
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [(NSEnumerator *)obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v6 = v15[0];
  objc_storeStrong(v15, 0);

  return v6;
}

- (void)presentAlert:(id)a3 completion:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  queue = v14->_queue;
  BSDispatchQueueAssert();
  v11 = [location[0] configurationContext];
  v7 = [location[0] remoteDefinition];
  v10 = [SBSRemoteAlertHandle newHandleWithDefinition:"newHandleWithDefinition:configurationContext:" configurationContext:?];

  [v10 addObserver:v14];
  [(NSMapTable *)v14->_alertToHandleMapping setObject:v10 forKey:location[0]];
  if (v12)
  {
    alertActivationBlocks = v14->_alertActivationBlocks;
    v6 = objc_retainBlock(v12);
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
  }

  v9 = SUSUILog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_195C(v15, location[0], v10);
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Activate full-screen alert (%@) with handle: %@", v15, 0x16u);
  }

  objc_storeStrong(&v9, 0);
  [v10 activateWithOptions:0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissAlert:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v7->_queue;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v8, location[0]);
    _os_log_debug_impl(&dword_0, oslog, OS_LOG_TYPE_DEBUG, "invalidating full-screen alert (%@)", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(NSMapTable *)v7->_alertToHandleMapping objectForKey:location[0]];
  [v4 invalidate];

  [(NSMapTable *)v7->_alertToHandleMapping removeObjectForKey:location[0]];
  objc_storeStrong(location, 0);
}

- (void)dismissAlertsOfClass:(Class)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  memset(__b, 0, sizeof(__b));
  v8 = [(NSMapTable *)v15->_alertToHandleMapping copy];
  obj = [v8 keyEnumerator];

  v10 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if (objc_opt_isKindOfClass())
      {
        [(SUSUIFullScreenAlertPresentationManager *)v15 dismissAlert:v12];
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = SUSUILog();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v15, location[0]);
    _os_log_debug_impl(&dword_0, v12, v11, "remoteAlertHandleDidActivate: %@", v15, 0xCu);
  }

  objc_storeStrong(&v12, 0);
  queue = v14->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_6498;
  v8 = &unk_5D008;
  v9 = v14;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = SUSUILog();
  v10 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1FCC(v14, location[0]);
    _os_log_debug_impl(&dword_0, v11, v10, "remoteAlertHandleDidActivate: %@", v14, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  queue = v13->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_66A8;
  v8 = &unk_5CCB0;
  v9 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = SUSUILog();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_195C(v18, location[0], v15);
    _os_log_debug_impl(&dword_0, v14, v13, "remoteAlertHandle: %@, error: %@", v18, 0x16u);
  }

  objc_storeStrong(&v14, 0);
  queue = v17->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_68E4;
  v10 = &unk_5D008;
  v11 = location[0];
  v12 = v17;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

@end