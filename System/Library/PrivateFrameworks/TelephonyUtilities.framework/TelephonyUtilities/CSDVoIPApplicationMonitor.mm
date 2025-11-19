@interface CSDVoIPApplicationMonitor
- (BOOL)isRunningForegroundForVoIPApplication:(id)a3;
- (CSDVoIPApplicationMonitor)init;
- (id)applicationStateForBundleIdentifier:(id)a3;
- (id)fetchApplicationStateForBundleIdentifier:(id)a3;
- (void)addVoIPApplication:(id)a3;
- (void)dealloc;
- (void)removeVoIPApplication:(id)a3;
- (void)setApplicationState:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation CSDVoIPApplicationMonitor

- (CSDVoIPApplicationMonitor)init
{
  v12.receiver = self;
  v12.super_class = CSDVoIPApplicationMonitor;
  v2 = [(CSDVoIPApplicationMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    bundleIdentifierToApplicationState = v3->_bundleIdentifierToApplicationState;
    v3->_bundleIdentifierToApplicationState = v4;

    v6 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:&__NSArray0__struct states:0];
    applicationStateMonitor = v3->_applicationStateMonitor;
    v3->_applicationStateMonitor = v6;

    objc_initWeak(&location, v3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001DE4F0;
    v9[3] = &unk_10061C3F0;
    objc_copyWeak(&v10, &location);
    [(BKSApplicationStateMonitor *)v3->_applicationStateMonitor setHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = CSDVoIPApplicationMonitor;
  [(CSDVoIPApplicationMonitor *)&v3 dealloc];
}

- (BOOL)isRunningForegroundForVoIPApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if ([v5 length])
  {
    v6 = [(CSDVoIPApplicationMonitor *)self applicationStateForBundleIdentifier:v5];
    v7 = [v6 unsignedIntValue];

    v8 = v7 == 8;
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)addVoIPApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if ([v5 length])
  {
    os_unfair_lock_lock(&self->_accessorLock);
    v6 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      v8 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      v9 = [v8 allKeys];
      v10 = [v9 arrayByAddingObject:v5];

      v11 = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
      [v11 updateInterestedBundleIDs:v10 states:BKSApplicationStateAll];

      v12 = [(CSDVoIPApplicationMonitor *)self fetchApplicationStateForBundleIdentifier:v5];
      v13 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      [v13 setObject:v12 forKeyedSubscript:v5];
    }

    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v15, 0xCu);
    }
  }
}

- (void)removeVoIPApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if ([v5 length])
  {
    os_unfair_lock_lock(&self->_accessorLock);
    v6 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      [v8 setObject:0 forKeyedSubscript:v5];

      v9 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      v10 = [v9 allKeys];

      if ([v10 count])
      {
        v11 = BKSApplicationStateAll;
      }

      else
      {
        v11 = 0;
      }

      v12 = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
      [v12 updateInterestedBundleIDs:v10 states:v11];
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v14, 0xCu);
      }
    }

    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (id)applicationStateForBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v7;
}

- (void)setApplicationState:(id)a3 forBundleIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  v8 = [v7 objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ((TUNumbersAreEqualOrNil() & 1) == 0)
  {
    v10 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    [v10 setObject:v11 forKeyedSubscript:v6];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)fetchApplicationStateForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  v6 = [v5 allKeys];
  v7 = [v6 arrayByAddingObject:v4];

  v8 = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
  [v8 updateInterestedBundleIDs:v7 states:BKSApplicationStateAll];

  v9 = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
  v10 = [v9 applicationStateForApplication:v4];

  v11 = [NSNumber numberWithUnsignedInt:v10];

  return v11;
}

@end