@interface CSDVoIPApplicationMonitor
- (BOOL)isRunningForegroundForVoIPApplication:(id)application;
- (CSDVoIPApplicationMonitor)init;
- (id)applicationStateForBundleIdentifier:(id)identifier;
- (id)fetchApplicationStateForBundleIdentifier:(id)identifier;
- (void)addVoIPApplication:(id)application;
- (void)dealloc;
- (void)removeVoIPApplication:(id)application;
- (void)setApplicationState:(id)state forBundleIdentifier:(id)identifier;
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

- (BOOL)isRunningForegroundForVoIPApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    v6 = [(CSDVoIPApplicationMonitor *)self applicationStateForBundleIdentifier:bundleIdentifier];
    unsignedIntValue = [v6 unsignedIntValue];

    v8 = unsignedIntValue == 8;
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (void)addVoIPApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    os_unfair_lock_lock(&self->_accessorLock);
    bundleIdentifierToApplicationState = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    v7 = [bundleIdentifierToApplicationState objectForKeyedSubscript:bundleIdentifier];

    if (!v7)
    {
      bundleIdentifierToApplicationState2 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      allKeys = [bundleIdentifierToApplicationState2 allKeys];
      v10 = [allKeys arrayByAddingObject:bundleIdentifier];

      applicationStateMonitor = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
      [applicationStateMonitor updateInterestedBundleIDs:v10 states:BKSApplicationStateAll];

      v12 = [(CSDVoIPApplicationMonitor *)self fetchApplicationStateForBundleIdentifier:bundleIdentifier];
      bundleIdentifierToApplicationState3 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      [bundleIdentifierToApplicationState3 setObject:v12 forKeyedSubscript:bundleIdentifier];
    }

    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v15, 0xCu);
    }
  }
}

- (void)removeVoIPApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    os_unfair_lock_lock(&self->_accessorLock);
    bundleIdentifierToApplicationState = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    v7 = [bundleIdentifierToApplicationState objectForKeyedSubscript:bundleIdentifier];

    if (v7)
    {
      bundleIdentifierToApplicationState2 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      [bundleIdentifierToApplicationState2 setObject:0 forKeyedSubscript:bundleIdentifier];

      bundleIdentifierToApplicationState3 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
      allKeys = [bundleIdentifierToApplicationState3 allKeys];

      if ([allKeys count])
      {
        v11 = BKSApplicationStateAll;
      }

      else
      {
        v11 = 0;
      }

      applicationStateMonitor = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
      [applicationStateMonitor updateInterestedBundleIDs:allKeys states:v11];
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = applicationCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not obtain bundle identifier from VoIP application %@", &v14, 0xCu);
      }
    }

    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (id)applicationStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  bundleIdentifierToApplicationState = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  v6 = [bundleIdentifierToApplicationState objectForKeyedSubscript:identifierCopy];

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

- (void)setApplicationState:(id)state forBundleIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  bundleIdentifierToApplicationState = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  v8 = [bundleIdentifierToApplicationState objectForKeyedSubscript:identifierCopy];

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
    bundleIdentifierToApplicationState2 = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
    [bundleIdentifierToApplicationState2 setObject:stateCopy forKeyedSubscript:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)fetchApplicationStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bundleIdentifierToApplicationState = [(CSDVoIPApplicationMonitor *)self bundleIdentifierToApplicationState];
  allKeys = [bundleIdentifierToApplicationState allKeys];
  v7 = [allKeys arrayByAddingObject:identifierCopy];

  applicationStateMonitor = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
  [applicationStateMonitor updateInterestedBundleIDs:v7 states:BKSApplicationStateAll];

  applicationStateMonitor2 = [(CSDVoIPApplicationMonitor *)self applicationStateMonitor];
  v10 = [applicationStateMonitor2 applicationStateForApplication:identifierCopy];

  v11 = [NSNumber numberWithUnsignedInt:v10];

  return v11;
}

@end