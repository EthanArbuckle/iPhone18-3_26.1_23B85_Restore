@interface PROPlugIn
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)is3rdParty;
- (BOOL)isBlocked;
- (BOOL)isEqualToPlugIn:(id)in;
- (Class)plugInClass;
- (PROPlugIn)initWithDictionary:(id)dictionary bundle:(id)bundle delegate:(id)delegate;
- (__CFUUID)uuid;
- (id)apiUsedByPlugInForProtocol:(id)protocol;
- (id)blockedLookupKey;
- (id)bundle;
- (id)className;
- (id)delegate;
- (id)displayName;
- (id)group;
- (id)helpURL;
- (id)implementedProtocols;
- (id)infoDictionary;
- (id)infoString;
- (id)plugInInstance;
- (id)pluginKitPlug;
- (id)sharedPlugInInstance;
- (id)version;
- (void)setBlockedLookupKey:(id)key pluginName:(id)name version:(id)version;
- (void)setDelegate:(id)delegate;
- (void)setIsBlocked:(BOOL)blocked;
@end

@implementation PROPlugIn

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    selfCopy = objc_opt_class();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (PROPlugIn)initWithDictionary:(id)dictionary bundle:(id)bundle delegate:(id)delegate
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
  return 0;
}

- (id)bundle
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)infoDictionary
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)delegate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)plugInInstance
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)sharedPlugInInstance
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (Class)plugInClass
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)className
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (__CFUUID)uuid
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)group
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)displayName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)helpURL
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)version
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)infoString
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)implementedProtocols
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)pluginKitPlug
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (BOOL)isBlocked
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)blockedLookupKey
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (id)apiUsedByPlugInForProtocol:(id)protocol
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (void)setDelegate:(id)delegate
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (BOOL)isEqualToPlugIn:(id)in
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

- (BOOL)is3rdParty
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"*** Bad news! %@ send to abstract class %@!", v4, objc_opt_class()}];
  return 0;
}

- (void)setIsBlocked:(BOOL)blocked
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)setBlockedLookupKey:(id)key pluginName:(id)name version:(id)version
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"*** Bad news! %@ send to abstract class %@!", v7, objc_opt_class()}];
}

@end