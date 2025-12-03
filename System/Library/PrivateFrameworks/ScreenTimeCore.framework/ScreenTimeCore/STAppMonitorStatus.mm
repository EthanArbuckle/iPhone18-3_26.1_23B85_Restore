@interface STAppMonitorStatus
- (STAppMonitorStatus)initWithCoder:(id)coder;
- (STAppMonitorStatus)initWithInstanceExists:(BOOL)exists instanceRunning:(BOOL)running cachedAppBundleIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAppMonitorStatus

- (STAppMonitorStatus)initWithInstanceExists:(BOOL)exists instanceRunning:(BOOL)running cachedAppBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = STAppMonitorStatus;
  v9 = [(STAppMonitorStatus *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_exists = exists;
    v9->_running = running;
    v11 = [identifiersCopy copy];
    cachedAppBundleIdentifiers = v10->_cachedAppBundleIdentifiers;
    v10->_cachedAppBundleIdentifiers = v11;
  }

  return v10;
}

- (STAppMonitorStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STAppMonitorStatus;
  v5 = [(STAppMonitorStatus *)&v11 init];
  if (v5)
  {
    v5->_exists = [coderCopy decodeBoolForKey:@"exists"];
    v5->_running = [coderCopy decodeBoolForKey:@"running"];
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"cachedAppBundleIdentifiers"];
    cachedAppBundleIdentifiers = v5->_cachedAppBundleIdentifiers;
    v5->_cachedAppBundleIdentifiers = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  exists = self->_exists;
  coderCopy = coder;
  [coderCopy encodeBool:exists forKey:@"exists"];
  [coderCopy encodeBool:self->_running forKey:@"running"];
  [coderCopy encodeObject:self->_cachedAppBundleIdentifiers forKey:@"cachedAppBundleIdentifiers"];
}

@end