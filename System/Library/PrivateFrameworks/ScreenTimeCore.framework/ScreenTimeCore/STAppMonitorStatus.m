@interface STAppMonitorStatus
- (STAppMonitorStatus)initWithCoder:(id)a3;
- (STAppMonitorStatus)initWithInstanceExists:(BOOL)a3 instanceRunning:(BOOL)a4 cachedAppBundleIdentifiers:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAppMonitorStatus

- (STAppMonitorStatus)initWithInstanceExists:(BOOL)a3 instanceRunning:(BOOL)a4 cachedAppBundleIdentifiers:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = STAppMonitorStatus;
  v9 = [(STAppMonitorStatus *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_exists = a3;
    v9->_running = a4;
    v11 = [v8 copy];
    cachedAppBundleIdentifiers = v10->_cachedAppBundleIdentifiers;
    v10->_cachedAppBundleIdentifiers = v11;
  }

  return v10;
}

- (STAppMonitorStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STAppMonitorStatus;
  v5 = [(STAppMonitorStatus *)&v11 init];
  if (v5)
  {
    v5->_exists = [v4 decodeBoolForKey:@"exists"];
    v5->_running = [v4 decodeBoolForKey:@"running"];
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"cachedAppBundleIdentifiers"];
    cachedAppBundleIdentifiers = v5->_cachedAppBundleIdentifiers;
    v5->_cachedAppBundleIdentifiers = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  exists = self->_exists;
  v5 = a3;
  [v5 encodeBool:exists forKey:@"exists"];
  [v5 encodeBool:self->_running forKey:@"running"];
  [v5 encodeObject:self->_cachedAppBundleIdentifiers forKey:@"cachedAppBundleIdentifiers"];
}

@end