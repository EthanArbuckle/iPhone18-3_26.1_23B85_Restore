@interface SKBaseManager
+ (id)defaultVisibleRoles;
+ (id)sharedManager;
- (SKBaseManager)init;
- (id)allDisks;
- (id)formatableFileSystems;
- (id)knownDiskForDictionary:(id)dictionary;
- (id)wholeDiskForDisk:(id)disk;
@end

@implementation SKBaseManager

+ (id)sharedManager
{
  v2 = NSClassFromString(&cfstr_Skdaemonmanage.isa);
  if (!v2)
  {
    v2 = SKManager;
  }

  sharedManager = [(objc_class *)v2 sharedManager];

  return sharedManager;
}

- (SKBaseManager)init
{
  v5.receiver = self;
  v5.super_class = SKBaseManager;
  v2 = [(SKBaseManager *)&v5 init];
  v3 = objc_opt_new();
  [_TtC10StorageKit14SKAnalyticsHub addSink:v3];

  return v2;
}

- (id)allDisks
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v2 raise];

  return 0;
}

+ (id)defaultVisibleRoles
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v2 raise];

  return 0;
}

- (id)knownDiskForDictionary:(id)dictionary
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v3 raise];

  return 0;
}

- (id)wholeDiskForDisk:(id)disk
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v3 raise];

  return 0;
}

- (id)formatableFileSystems
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"com.apple.storagekit.notimplemented" reason:@"A required method is not implemented" userInfo:0];
  [v2 raise];

  return 0;
}

@end