@interface PROPlugInManager
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedPlugInManager;
- (BOOL)bundleIsDeferred:(id)deferred;
- (BOOL)checkIfShouldBlockPlugin:(id)plugin returnPluginDictionary:(id *)dictionary;
- (BOOL)checkPluginVersionAgainstBlockList:(id)list blockDict:(id)dict;
- (BOOL)requiresProtocolsToBePresentWhenLoading;
- (id)blockedDocumentPlugins;
- (id)blockedLibraryPlugins;
- (id)deferredPluginKitPlugs;
- (id)delegate;
- (id)loadBlockPluginList:(__CFString *)list;
- (id)plugInGroupWithUUID:(__CFUUID *)d;
- (id)plugInGroups;
- (id)plugInGroupsMutable;
- (id)plugInSearchDirectories;
- (id)plugInWithClassName:(id)name;
- (id)plugInWithUUID:(__CFUUID *)d;
- (id)plugIns;
- (id)plugInsForProtocol:(id)protocol;
- (id)plugInsForProtocols:(id)protocols;
- (void)addDeferredPluginBundle:(id)bundle;
- (void)addDocumentBlockedPlugin:(id)plugin;
- (void)addLibraryBlockedPlugin:(id)plugin bundleName:(id)name pluginName:(id)pluginName version:(id)version;
- (void)addPlugInSearchDirectory:(id)directory;
- (void)getNameOverrides:(id)overrides pluginName:(id *)name bundleName:(id *)bundleName;
- (void)loadDeferredPlugin:(id)plugin;
- (void)loadDeferredPlugins;
- (void)registerAPIObject:(id)object forProtocol:(id)protocol version:(unsigned int)version;
- (void)removeAllBlockedDocumentPlugins;
- (void)removeAllPlugIns;
- (void)removeDeferredPluginBundle:(id)bundle;
- (void)removePlugin:(id)plugin;
- (void)scanForPlugInsInBundle:(id)bundle deferralNotification:(id)notification;
- (void)scanForPlugInsInBundle:(id)bundle withPluginKitPlugIn:(id)in deferralNotification:(id)notification;
- (void)scanForPlugInsInDirectory:(id)directory actuallyLoad:(BOOL)load deferralNotification:(id)notification;
- (void)scanForPlugInsInDirectory:(id)directory deferralNotification:(id)notification;
- (void)setDelegate:(id)delegate;
- (void)setPlugInSearchDirectories:(id)directories;
- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)loading;
- (void)unregisterAPIForProtocol:(id)protocol;
- (void)unregisterAPIForProtocol:(id)protocol version:(unsigned int)version;
@end

@implementation PROPlugInManager

+ (id)sharedPlugInManager
{
  result = sharedPlugInManager_sharedInstance;
  if (!sharedPlugInManager_sharedInstance)
  {
    result = objc_alloc_init(self);
    sharedPlugInManager_sharedInstance = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    selfCopy = objc_opt_class();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (id)delegate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)setDelegate:(id)delegate
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

- (void)setRequiresProtocolsToBePresentWhenLoading:(BOOL)loading
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)addPlugInSearchDirectory:(id)directory
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)setPlugInSearchDirectories:(id)directories
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

- (void)scanForPlugInsInDirectory:(id)directory deferralNotification:(id)notification
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)scanForPlugInsInDirectory:(id)directory actuallyLoad:(BOOL)load deferralNotification:(id)notification
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)scanForPlugInsInBundle:(id)bundle deferralNotification:(id)notification
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)scanForPlugInsInBundle:(id)bundle withPluginKitPlugIn:(id)in deferralNotification:(id)notification
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

- (void)addDeferredPluginBundle:(id)bundle
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

- (void)loadDeferredPlugin:(id)plugin
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

- (void)removeDeferredPluginBundle:(id)bundle
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)removePlugin:(id)plugin
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (BOOL)bundleIsDeferred:(id)deferred
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (void)addLibraryBlockedPlugin:(id)plugin bundleName:(id)name pluginName:(id)pluginName version:(id)version
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"*** Bad news! %@ send to abstract class %@!", v8, objc_opt_class()}];
}

- (void)addDocumentBlockedPlugin:(id)plugin
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (id)loadBlockPluginList:(__CFString *)list
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (BOOL)checkPluginVersionAgainstBlockList:(id)list blockDict:(id)dict
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
  return 0;
}

- (BOOL)checkIfShouldBlockPlugin:(id)plugin returnPluginDictionary:(id *)dictionary
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
  return 0;
}

- (void)getNameOverrides:(id)overrides pluginName:(id *)name bundleName:(id *)bundleName
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

- (id)plugInsForProtocol:(id)protocol
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInsForProtocols:(id)protocols
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInWithUUID:(__CFUUID *)d
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInWithClassName:(id)name
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (id)plugInGroupWithUUID:(__CFUUID *)d
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (void)registerAPIObject:(id)object forProtocol:(id)protocol version:(unsigned int)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

- (void)unregisterAPIForProtocol:(id)protocol version:(unsigned int)version
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"*** Bad news! %@ send to abstract class %@!", v6, objc_opt_class()}];
}

- (void)unregisterAPIForProtocol:(id)protocol
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

@end