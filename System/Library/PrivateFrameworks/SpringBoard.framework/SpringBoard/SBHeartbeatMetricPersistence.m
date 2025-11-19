@interface SBHeartbeatMetricPersistence
+ (NSURL)defaultPersistenceURL;
- (SBHeartbeatMetricPersistence)init;
- (SBHeartbeatMetricPersistence)initWithPersistenceURL:(id)a3;
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

- (SBHeartbeatMetricPersistence)initWithPersistenceURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHeartbeatMetricPersistence;
  v5 = [(SBHeartbeatMetricPersistence *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    persistenceURL = v5->_persistenceURL;
    v5->_persistenceURL = v6;
  }

  return v5;
}

- (SBHeartbeatMetricPersistence)init
{
  v3 = [objc_opt_class() defaultPersistenceURL];
  v4 = [(SBHeartbeatMetricPersistence *)self initWithPersistenceURL:v3];

  return v4;
}

- (void)cleanUpPersistedDataIfNeeded
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(SBHeartbeatMetricPersistence *)self persistenceURL];
  [v4 removeItemAtURL:v3 error:0];
}

@end