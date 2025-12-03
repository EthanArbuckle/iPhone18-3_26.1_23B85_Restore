@interface SDKeyValueStore
+ (NSDictionary)devicesDictionary;
+ (id)deviceDictionaryForDeviceIdentifier:(id)identifier;
+ (void)insertOrUpdateDevice:(id)device;
+ (void)synchronize;
@end

@implementation SDKeyValueStore

+ (NSDictionary)devicesDictionary
{
  if (_os_feature_enabled_impl())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    defaultStore = [MEMORY[0x277CCAD80] defaultStore];
    [defaultStore synchronize];
    v5 = [defaultStore dictionaryForKey:@"BetaDevices"];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

+ (id)deviceDictionaryForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_os_feature_enabled_impl())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    devicesDictionary = [selfCopy devicesDictionary];
    v7 = [devicesDictionary objectForKey:identifierCopy];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

+ (void)insertOrUpdateDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = MEMORY[0x277CBEB38];
    devicesDictionary = [selfCopy devicesDictionary];
    v7 = [v5 dictionaryWithDictionary:devicesDictionary];

    dictionaryRepresentation = [deviceCopy dictionaryRepresentation];
    identifier = [deviceCopy identifier];
    [v7 setObject:dictionaryRepresentation forKey:identifier];

    defaultStore = [MEMORY[0x277CCAD80] defaultStore];
    [defaultStore setDictionary:v7 forKey:@"BetaDevices"];

    defaultStore2 = [MEMORY[0x277CCAD80] defaultStore];
    [defaultStore2 synchronize];

    objc_sync_exit(selfCopy);
  }
}

+ (void)synchronize
{
  if (_os_feature_enabled_impl())
  {
    obj = self;
    objc_sync_enter(obj);
    defaultStore = [MEMORY[0x277CCAD80] defaultStore];
    [defaultStore synchronize];

    objc_sync_exit(obj);
  }
}

@end