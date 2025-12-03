@interface PALAppUninstallObserver
- (PALAppUninstallDelegateProtocol)delegate;
- (PALAppUninstallObserver)init;
- (void)_didReceiveApplicationUnregisteredNotification:(id)notification;
- (void)_handleNewUninstalledAppsWithBundleIDs:(id)ds;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation PALAppUninstallObserver

- (PALAppUninstallObserver)init
{
  v6.receiver = self;
  v6.super_class = PALAppUninstallObserver;
  v2 = [(PALAppUninstallObserver *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.PrivacyAccounting", "PALAppUninstallObserver");
    logger = v2->_logger;
    v2->_logger = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)startObserving
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_didReceiveApplicationUnregisteredNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 addObserver:self];
}

- (void)stopObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 removeObserver:self];
}

- (void)dealloc
{
  [(PALAppUninstallObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = PALAppUninstallObserver;
  [(PALAppUninstallObserver *)&v3 dealloc];
}

- (void)_handleNewUninstalledAppsWithBundleIDs:(id)ds
{
  dsCopy = ds;
  delegate = [(PALAppUninstallObserver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
    os_unfair_lock_lock(&self->_lock);
    v7 = [dsCopy count];
    v27 = 0u;
    v28 = 0u;
    if (v7 <= 0xA)
    {
      v8 = 10;
    }

    else
    {
      v8 = v7;
    }

    v25 = 0uLL;
    v26 = 0uLL;
    v9 = dsCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([(NSMutableOrderedSet *)self->_lastUninstalledBundleIDs containsObject:v13])
          {
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v30 = v13;
              _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Deduplicated app uninstalled notification for bundleID: %{public}@", buf, 0xCu);
            }

            [(NSMutableOrderedSet *)self->_lastUninstalledBundleIDs removeObject:v13];
          }

          else
          {
            if ([(NSMutableOrderedSet *)self->_lastUninstalledBundleIDs count]>= v8)
            {
              [(NSMutableOrderedSet *)self->_lastUninstalledBundleIDs removeObjectAtIndex:0];
            }

            lastUninstalledBundleIDs = self->_lastUninstalledBundleIDs;
            v16 = [v13 copy];
            [(NSMutableOrderedSet *)lastUninstalledBundleIDs addObject:v16];

            v17 = [PAApplication applicationWithBundleID:v13];
            [v6 addObject:v17];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_lock);
    delegate2 = [(PALAppUninstallObserver *)self delegate];
    queue = [delegate2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005DF0;
    block[3] = &unk_100018708;
    v23 = v6;
    selfCopy = self;
    v20 = v6;
    dispatch_async(queue, block);
  }
}

- (void)_didReceiveApplicationUnregisteredNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  if (([name isEqualToString:@"com.apple.LaunchServices.applicationUnregistered"] & 1) == 0)
  {
    sub_100006190();
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"bundleIDs"];
  logger = self->_logger;
  if (v7)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_INFO))
    {
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "Received applicationUnregisteredNotification for bundleIDs: %{public}@", &v9, 0xCu);
    }

    [(PALAppUninstallObserver *)self _handleNewUninstalledAppsWithBundleIDs:v7];
  }

  else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_1000061BC(userInfo, logger);
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v4 = [uninstall valueForKey:@"bundleIdentifier"];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "Received applicationsDidUninstall notification for bundleIDs: %{public}@", &v6, 0xCu);
  }

  [(PALAppUninstallObserver *)self _handleNewUninstalledAppsWithBundleIDs:v4];
}

- (PALAppUninstallDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end