@interface SAPersistenceManagerSettings
- (SAPersistenceManagerSettings)initWithDirectoryURLOrDefault:(id)default storeFileNameOrDefault:(id)orDefault;
@end

@implementation SAPersistenceManagerSettings

- (SAPersistenceManagerSettings)initWithDirectoryURLOrDefault:(id)default storeFileNameOrDefault:(id)orDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  v13.receiver = self;
  v13.super_class = SAPersistenceManagerSettings;
  v8 = [(SAPersistenceManagerSettings *)&v13 init];
  if (v8)
  {
    if (defaultCopy)
    {
      v9 = defaultCopy;
    }

    else
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/root/Library/Caches/locationd/TrackingAvoidance/" isDirectory:1];
    }

    persistenceDirectoryURL = v8->_persistenceDirectoryURL;
    v8->_persistenceDirectoryURL = v9;

    if (orDefaultCopy)
    {
      v11 = orDefaultCopy;
    }

    else
    {
      v11 = @"separationalerts.bin";
    }

    objc_storeStrong(&v8->_persistenceStoreFileName, v11);
  }

  return v8;
}

@end