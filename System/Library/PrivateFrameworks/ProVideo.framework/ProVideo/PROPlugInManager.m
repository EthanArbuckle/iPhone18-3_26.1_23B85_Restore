@interface PROPlugInManager
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedPlugInManager;
- (BOOL)bundleIsDeferred:(id)a3;
- (BOOL)checkIfShouldBlockPlugin:(id)a3 returnPluginDictionary:(id *)a4;
- (BOOL)checkPluginVersionAgainstBlockList:(id)a3 blockDict:(id)a4;
- (BOOL)requiresProtocolsToBePresentWhenLoading;
- (id)blockedDocumentPlugins;
- (id)blockedLibraryPlugins;
- (id)deferredPluginKitPlugs;
- (id)delegate;
- (id)loadBlockPluginList:(__CFString *)a3;
- (id)plugInGroupWithUUID:(__CFUUID *)a3;
- (id)plugInGroups;
- (id)plugInGroupsMutable;
- (id)plugInSearchDirectories;
- (id)plugInWithClassName:(id)a3;
- (id)plugInWithUUID:(__CFUUID *)a3;
- (id)plugIns;
- (id)plugInsForProtocol:(id)a3;
- (id)plugInsForProtocols:(id)a3;
- (void)addDeferredPluginBundle:(id)a3;
- (void)addDocumentBlockedPlugin:(id)a3;
- (void)addLibraryBlockedPlugin:(id)a3 bundleName:(id)a4 pluginName:(id)a5 version:(id)a6;
- (void)addPlugInSearchDirectory:(id)a3;
- (void)getNameOverrides:(id)a3 pluginName:(id *)a4 bundleName:(id *)a5;
- (void)loadDeferredPlugin:(id)a3;
- (void)loadDeferredPlugins;
- (void)registerAPIObject:(id)a3 forProtocol:(id)a4 version:(unsigned int)a5;
- (void)removeAllBlockedDocumentPlugins;
- (void)removeAllPlugIns;
- (void)removeDeferredPluginBundle:(id)a3;
- (void)removePlugin:(id)a3;
- (void)scanForPlugInsInBundle:(id)a3 deferralNotification:(id)a4;
- (void)scanForPlugInsInBundle:(id)a3 withPluginKitPlugIn:(id)a4 deferralNotification:(id)a5;
- (void)scanForPlugInsInDirectory:(id)a3 actuallyLoad:(BOOL)a4 deferralNotification:(id)a5;
- (void)scanForPlugInsInDirectory:(id)a3 deferralNotification:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setPlugInSearchDirectories:(id)a3;
- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)a3;
- (void)unregisterAPIForProtocol:(id)a3;
- (void)unregisterAPIForProtocol:(id)a3 version:(unsigned int)a4;
@end

@implementation PROPlugInManager

+ (id)sharedPlugInManager
{
  result = sharedPlugInManager_sharedInstance;
  if (!sharedPlugInManager_sharedInstance)
  {
    result = objc_alloc_init(a1);
    sharedPlugInManager_sharedInstance = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_class() == a1)
  {
    v4 = objc_opt_class();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (id)delegate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)setDelegate:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (BOOL)requiresProtocolsToBePresentWhenLoading
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)addPlugInSearchDirectory:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)setPlugInSearchDirectories:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (id)plugInSearchDirectories
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)scanForPlugInsInDirectory:(id)a3 deferralNotification:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)scanForPlugInsInDirectory:(id)a3 actuallyLoad:(BOOL)a4 deferralNotification:(id)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)scanForPlugInsInBundle:(id)a3 deferralNotification:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)scanForPlugInsInBundle:(id)a3 withPluginKitPlugIn:(id)a4 deferralNotification:(id)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)removeAllPlugIns
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
}

- (void)addDeferredPluginBundle:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)loadDeferredPlugins
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
}

- (void)loadDeferredPlugin:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (id)deferredPluginKitPlugs
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)removeDeferredPluginBundle:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)removePlugin:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (BOOL)bundleIsDeferred:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (void)addLibraryBlockedPlugin:(id)a3 bundleName:(id)a4 pluginName:(id)a5 version:(id)a6
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"*** Bad news! %@ send to abstract class %@!", v8, objc_opt_class()}];
}

- (void)addDocumentBlockedPlugin:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (id)loadBlockPluginList:(__CFString *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (BOOL)checkPluginVersionAgainstBlockList:(id)a3 blockDict:(id)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
  return 0;
}

- (BOOL)checkIfShouldBlockPlugin:(id)a3 returnPluginDictionary:(id *)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
  return 0;
}

- (void)getNameOverrides:(id)a3 pluginName:(id *)a4 bundleName:(id *)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)removeAllBlockedDocumentPlugins
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
}

- (id)plugInGroups
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)plugInGroupsMutable
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)plugIns
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)blockedLibraryPlugins
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)blockedDocumentPlugins
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)plugInsForProtocol:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInsForProtocols:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInWithUUID:(__CFUUID *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInWithClassName:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInGroupWithUUID:(__CFUUID *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (void)registerAPIObject:(id)a3 forProtocol:(id)a4 version:(unsigned int)a5
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)unregisterAPIForProtocol:(id)a3 version:(unsigned int)a4
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)unregisterAPIForProtocol:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

@end