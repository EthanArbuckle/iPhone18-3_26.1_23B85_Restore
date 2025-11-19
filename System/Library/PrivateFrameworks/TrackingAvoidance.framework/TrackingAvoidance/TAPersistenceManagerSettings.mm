@interface TAPersistenceManagerSettings
- (TAPersistenceManagerSettings)initWithDirectoryURLOrDefault:(id)a3 storeFileNameOrDefault:(id)a4;
@end

@implementation TAPersistenceManagerSettings

- (TAPersistenceManagerSettings)initWithDirectoryURLOrDefault:(id)a3 storeFileNameOrDefault:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TAPersistenceManagerSettings;
  v8 = [(TAPersistenceManagerSettings *)&v13 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/root/Library/Caches/locationd/TrackingAvoidance/" isDirectory:1];
    }

    persistenceDirectoryURL = v8->_persistenceDirectoryURL;
    v8->_persistenceDirectoryURL = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = @"trackingavoidance.bin";
    }

    objc_storeStrong(&v8->_persistenceStoreFileName, v11);
  }

  return v8;
}

@end