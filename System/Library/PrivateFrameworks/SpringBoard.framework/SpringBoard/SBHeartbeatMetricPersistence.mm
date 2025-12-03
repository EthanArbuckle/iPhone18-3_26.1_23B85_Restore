@interface SBHeartbeatMetricPersistence
+ (NSURL)defaultPersistenceURL;
- (SBHeartbeatMetricPersistence)init;
- (SBHeartbeatMetricPersistence)initWithPersistenceURL:(id)l;
- (void)cleanUpPersistedDataIfNeeded;
@end

@implementation SBHeartbeatMetricPersistence

+ (NSURL)defaultPersistenceURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = SBHomeDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"HeartbeatMetrics"];
  v5 = [v4 stringByAppendingPathExtension:@"plist"];
  v6 = [v2 fileURLWithPath:v5 isDirectory:0];

  return v6;
}

- (SBHeartbeatMetricPersistence)initWithPersistenceURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SBHeartbeatMetricPersistence;
  v5 = [(SBHeartbeatMetricPersistence *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    persistenceURL = v5->_persistenceURL;
    v5->_persistenceURL = v6;
  }

  return v5;
}

- (SBHeartbeatMetricPersistence)init
{
  defaultPersistenceURL = [objc_opt_class() defaultPersistenceURL];
  v4 = [(SBHeartbeatMetricPersistence *)self initWithPersistenceURL:defaultPersistenceURL];

  return v4;
}

- (void)cleanUpPersistedDataIfNeeded
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  persistenceURL = [(SBHeartbeatMetricPersistence *)self persistenceURL];
  [defaultManager removeItemAtURL:persistenceURL error:0];
}

@end