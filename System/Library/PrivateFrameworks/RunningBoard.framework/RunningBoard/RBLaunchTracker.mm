@interface RBLaunchTracker
- (RBLaunchTracker)initWithTimeProvider:(id)provider;
- (double)nextAllowedLaunchOfIdentity:(id)identity;
- (void)trackLaunchOfIdentity:(id)identity;
@end

@implementation RBLaunchTracker

- (RBLaunchTracker)initWithTimeProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = RBLaunchTracker;
  v6 = [(RBLaunchTracker *)&v13 init];
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    lastLaunch = v6->_lastLaunch;
    v6->_lastLaunch = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    launchBeforeLast = v6->_launchBeforeLast;
    v6->_launchBeforeLast = dictionary2;

    objc_storeStrong(&v6->_timeProvider, provider);
    v11 = v6;
  }

  return v6;
}

- (void)trackLaunchOfIdentity:(id)identity
{
  identityCopy = identity;
  if ([identityCopy isMultiInstanceExtension])
  {
    goto LABEL_15;
  }

  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  v7 = [(NSMutableDictionary *)self->_lastLaunch objectForKey:identityCopy];
  v8 = [(NSMutableDictionary *)self->_launchBeforeLast objectForKey:identityCopy];
  v9 = v8;
  if (v7)
  {
    [v7 doubleValue];
    v11 = v6 - v10 < 10.0;
    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_6:
    [v9 doubleValue];
    if (v6 - v12 < 10.0)
    {
      v13 = rbs_general_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchTracker trackLaunchOfIdentity:v13];
      }
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_10:
  lastLaunch = self->_lastLaunch;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  [(NSMutableDictionary *)lastLaunch setObject:v15 forKey:identityCopy];

  if (v11)
  {
    [(NSMutableDictionary *)self->_launchBeforeLast setObject:v7 forKey:identityCopy];
  }

  else if (v9)
  {
    [(NSMutableDictionary *)self->_launchBeforeLast removeObjectForKey:identityCopy];
  }

LABEL_15:
}

- (double)nextAllowedLaunchOfIdentity:(id)identity
{
  timeProvider = self->_timeProvider;
  identityCopy = identity;
  [(RBTimeProviding *)timeProvider currentTime];
  v7 = v6;
  v8 = [(NSMutableDictionary *)self->_launchBeforeLast objectForKey:identityCopy];

  v9 = 0.0;
  if (v8)
  {
    [v8 doubleValue];
    if (v7 - v10 < 10.0)
    {
      [v8 doubleValue];
      v9 = v11 + 10.0;
    }
  }

  return v9;
}

@end