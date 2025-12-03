@interface SUSUILayoutStateMonitor
- (BOOL)_queue_fetchUILockState;
- (BOOL)_queue_setForegroundBundleID:(id)d;
- (BOOL)_queue_setHomeScreenForeground:(BOOL)foreground;
- (BOOL)_queue_setScreenOn:(BOOL)on;
- (BOOL)fetchUILockedSync;
- (BOOL)isHomeScreenForeground;
- (BOOL)isScreenOn;
- (NSString)primaryForegroundBundleID;
- (SUSUILayoutStateMonitor)init;
- (void)_queue_UILockStateChanged:(BOOL)changed initially:(BOOL)initially;
- (void)_queue_handleNewLayout:(id)layout context:(id)context;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SUSUILayoutStateMonitor

- (SUSUILayoutStateMonitor)init
{
  v40 = a2;
  v41 = 0;
  v39.receiver = self;
  v39.super_class = SUSUILayoutStateMonitor;
  v16 = [(SUSUILayoutStateMonitor *)&v39 init];
  v41 = v16;
  objc_storeStrong(&v41, v16);
  if (v16)
  {
    v38 = dispatch_semaphore_create(0);
    v37 = 10000000000;
    v2 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.layoutMonitor", 0);
    v3 = v41->_queue;
    v41->_queue = v2;

    v4 = dispatch_queue_create("com.apple.softwareupdateservices.ui.ios.layoutMonitor.observerQueue", 0);
    observerCalloutQueue = v41->_observerCalloutQueue;
    v41->_observerCalloutQueue = v4;

    v6 = [NSHashTable hashTableWithOptions:517];
    queue_observers = v41->_queue_observers;
    v41->_queue_observers = v6;

    v36 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v14 = v36;
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_1790;
    v34 = &unk_5FF28;
    v35 = v41;
    [v14 setTransitionHandler:&v30];
    v8 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v36];
    layoutMonitor = v41->_layoutMonitor;
    v41->_layoutMonitor = v8;

    v24[0] = 0;
    v24[1] = v24;
    v25 = 838860800;
    v26 = 48;
    v27 = sub_1EE44;
    v28 = sub_1EE9C;
    v29 = v41;
    queue = v41->_queue;
    v17 = _NSConcreteStackBlock;
    v18 = -1073741824;
    v19 = 0;
    v20 = sub_1EECC;
    v21 = &unk_5FF78;
    v22 = v41;
    v23[1] = v24;
    v23[0] = v38;
    dispatch_async(queue, &v17);
    if (v38)
    {
      dsema = v38;
      v10 = dispatch_time(0, v37);
      dispatch_semaphore_wait(dsema, v10);
    }

    objc_storeStrong(v23, 0);
    objc_storeStrong(&v22, 0);
    _Block_object_dispose(v24, 8);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v38, 0);
  }

  v12 = v41;
  objc_storeStrong(&v41, 0);
  return v12;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  notify_cancel(self->_queue_uiLockStateToken);
  selfCopy->_queue_uiLockStateToken = -1;
  [(FBSDisplayLayoutMonitor *)selfCopy->_layoutMonitor invalidate];
  v2.receiver = selfCopy;
  v2.super_class = SUSUILayoutStateMonitor;
  [(SUSUILayoutStateMonitor *)&v2 dealloc];
}

- (NSString)primaryForegroundBundleID
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_1EE44;
  v16 = sub_1EE9C;
  v17[0] = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1F2C8;
  v9 = &unk_5FFA0;
  v10[1] = &v11;
  v10[0] = self;
  dispatch_sync(queue, &v5);
  v4 = v12[5];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v4;
}

- (BOOL)isHomeScreenForeground
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1F41C;
  v9 = &unk_5FFA0;
  v10[1] = &v11;
  v10[0] = self;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (BOOL)isScreenOn
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1F560;
  v9 = &unk_5FFA0;
  v10[1] = &v11;
  v10[0] = self;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1F6A8;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1F814;
  v8 = &unk_5D008;
  v9 = location[0];
  v10 = selfCopy;
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)fetchUILockedSync
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1F97C;
  v9 = &unk_5FFA0;
  v10[1] = &v11;
  v10[0] = self;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (BOOL)_queue_fetchUILockState
{
  state64[2] = self;
  state64[1] = a2;
  state64[0] = 0;
  notify_get_state(self->_queue_uiLockStateToken, state64);
  return state64[0] == 1;
}

- (void)_queue_UILockStateChanged:(BOOL)changed initially:(BOOL)initially
{
  selfCopy = self;
  v18 = a2;
  changedCopy = changed;
  initiallyCopy = initially;
  if (initially || selfCopy->_isUILocked != changedCopy)
  {
    selfCopy->_isUILocked = changedCopy;
    if (!initiallyCopy)
    {
      location = SUSUILog();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        if (changedCopy)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        sub_1FCC(v20, v4);
        _os_log_impl(&dword_0, location, v14, "UI lock state changed: isUILocked=%@", v20, 0xCu);
      }

      objc_storeStrong(&location, 0);
      allObjects = [(NSHashTable *)selfCopy->_queue_observers allObjects];
      queue = selfCopy->_observerCalloutQueue;
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_1FC48;
      v10 = &unk_5D008;
      v11 = allObjects;
      v12 = selfCopy;
      dispatch_async(queue, &v6);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&allObjects, 0);
    }
  }
}

- (void)_queue_handleNewLayout:(id)layout context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, layout);
  v47 = 0;
  objc_storeStrong(&v47, context);
  v4 = selfCopy->_queue;
  BSDispatchQueueAssert();
  oslog = SUSUILog();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_195C(v53, location[0], v47);
    _os_log_debug_impl(&dword_0, oslog, type, "new layout: >>>\n%@\ncontext: >>>\n%@", v53, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0])
  {
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    memset(__b, 0, sizeof(__b));
    elements = [location[0] elements];
    v24 = [elements countByEnumeratingWithState:__b objects:v52 count:16];
    if (v24)
    {
      v20 = *__b[2];
      v21 = 0;
      v22 = v24;
      while (1)
      {
        v19 = v21;
        if (*__b[2] != v20)
        {
          objc_enumerationMutation(elements);
        }

        v39 = *(__b[1] + 8 * v21);
        if ([v39 isSpringBoardElement])
        {
          layoutRole = [v39 layoutRole];
          if (layoutRole == (&dword_0 + 1))
          {
            identifier = [v39 identifier];
            v17 = [identifier isEqualToString:SBSDisplayLayoutElementHomeScreenIdentifier];

            if (v17)
            {
              v43 = 1;
            }

            else if ([v39 isUIApplicationElement])
            {
              bundleIdentifier = [v39 bundleIdentifier];
              v6 = v40;
              v40 = bundleIdentifier;
            }

            else
            {
              v51[0] = SBSDisplayLayoutElementAppSwitcherIdentifier;
              v51[1] = SBSDisplayLayoutElementSpotlightFullscreenOverlayIdentifier;
              v14 = [NSArray arrayWithObjects:v51 count:2];
              identifier2 = [v39 identifier];
              v15 = [(NSArray *)v14 containsObject:?];

              if (v15)
              {
                v41 = 1;
              }
            }
          }

          else if (layoutRole == (&dword_0 + 3))
          {
            v42 = 1;
          }

          else if (layoutRole == &dword_4 || layoutRole == (&dword_4 + 2))
          {
            v50[0] = SBSDisplayLayoutElementTodayViewIdentifier;
            v50[1] = FBSDisplayLayoutElementControlCenterIdentifier;
            v50[2] = SBSDisplayLayoutElementSpotlightIdentifier;
            v50[3] = SBSDisplayLayoutElementSpotlightFullscreenOverlayIdentifier;
            v11 = [NSArray arrayWithObjects:v50 count:4];
            identifier3 = [v39 identifier];
            v12 = [(NSArray *)v11 containsObject:?];

            if (v12)
            {
              v41 = 1;
            }
          }
        }

        ++v21;
        if (v19 + 1 >= v22)
        {
          v21 = 0;
          v22 = [elements countByEnumeratingWithState:__b objects:v52 count:16];
          if (!v22)
          {
            break;
          }
        }
      }
    }

    v9 = 0;
    if (v43)
    {
      v9 = 0;
      if ((v42 & 1) == 0)
      {
        v9 = v41 ^ 1;
      }
    }

    v37 = [(SUSUILayoutStateMonitor *)selfCopy _queue_setHomeScreenForeground:v9 & 1];
    v36 = [(SUSUILayoutStateMonitor *)selfCopy _queue_setForegroundBundleID:v40];
    v35 = -[SUSUILayoutStateMonitor _queue_setScreenOn:](selfCopy, "_queue_setScreenOn:", [location[0] displayBacklightLevel] > 0);
    v8 = 1;
    if ((v37 & 1) == 0)
    {
      v8 = 1;
      if ((v36 & 1) == 0)
      {
        v8 = v35;
      }
    }

    v34 = v8 & 1;
    if ((v8 & 1) != 0 && [(NSHashTable *)selfCopy->_queue_observers count])
    {
      allObjects = [(NSHashTable *)selfCopy->_queue_observers allObjects];
      queue = selfCopy->_observerCalloutQueue;
      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = sub_20518;
      v30 = &unk_5D008;
      v31 = allObjects;
      v32 = selfCopy;
      dispatch_async(queue, &v26);
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&allObjects, 0);
    }

    objc_storeStrong(&v40, 0);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_queue_setScreenOn:(BOOL)on
{
  v4 = 0;
  if (self->_queue_isScreenOn != on)
  {
    self->_queue_isScreenOn = on;
    return 1;
  }

  return v4;
}

- (BOOL)_queue_setHomeScreenForeground:(BOOL)foreground
{
  selfCopy = self;
  v7 = a2;
  foregroundCopy = foreground;
  v5 = 0;
  if (self->_queue_isHomeScreenForeground != foreground)
  {
    oslog = SUSUILog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_19AC(v9, selfCopy->_queue_isHomeScreenForeground, foregroundCopy);
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "homescreen changed: %d -> %d", v9, 0xEu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_queue_isHomeScreenForeground = foregroundCopy;
    return 1;
  }

  return v5;
}

- (BOOL)_queue_setForegroundBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = 0;
  if (![(NSString *)selfCopy->_queue_primaryForegroundBundleID isEqualToString:location[0]])
  {
    objc_storeStrong(&selfCopy->_queue_primaryForegroundBundleID, location[0]);
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end