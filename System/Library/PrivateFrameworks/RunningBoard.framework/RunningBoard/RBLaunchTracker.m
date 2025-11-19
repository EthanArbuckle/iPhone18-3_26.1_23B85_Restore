@interface RBLaunchTracker
- (RBLaunchTracker)initWithTimeProvider:(id)a3;
- (double)nextAllowedLaunchOfIdentity:(id)a3;
- (void)trackLaunchOfIdentity:(id)a3;
@end

@implementation RBLaunchTracker

- (RBLaunchTracker)initWithTimeProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = RBLaunchTracker;
  v6 = [(RBLaunchTracker *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    lastLaunch = v6->_lastLaunch;
    v6->_lastLaunch = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    launchBeforeLast = v6->_launchBeforeLast;
    v6->_launchBeforeLast = v9;

    objc_storeStrong(&v6->_timeProvider, a3);
    v11 = v6;
  }

  return v6;
}

- (void)trackLaunchOfIdentity:(id)a3
{
  v4 = a3;
  if ([v4 isMultiInstanceExtension])
  {
    goto LABEL_15;
  }

  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  v7 = [(NSMutableDictionary *)self->_lastLaunch objectForKey:v4];
  v8 = [(NSMutableDictionary *)self->_launchBeforeLast objectForKey:v4];
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
  [(NSMutableDictionary *)lastLaunch setObject:v15 forKey:v4];

  if (v11)
  {
    [(NSMutableDictionary *)self->_launchBeforeLast setObject:v7 forKey:v4];
  }

  else if (v9)
  {
    [(NSMutableDictionary *)self->_launchBeforeLast removeObjectForKey:v4];
  }

LABEL_15:
}

- (double)nextAllowedLaunchOfIdentity:(id)a3
{
  timeProvider = self->_timeProvider;
  v5 = a3;
  [(RBTimeProviding *)timeProvider currentTime];
  v7 = v6;
  v8 = [(NSMutableDictionary *)self->_launchBeforeLast objectForKey:v5];

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