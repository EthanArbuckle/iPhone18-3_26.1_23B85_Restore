@interface PROPlugInGroup
+ (id)allocWithZone:(_NSZone *)zone;
- (PROPlugInGroup)initWithUUID:(__CFUUID *)d name:(id)name bundle:(id)bundle;
- (__CFUUID)uuid;
- (id)displayName;
- (id)name;
- (id)plugIns;
- (id)plugInsForProtocols:(id)protocols;
- (void)addPlugIn:(id)in;
- (void)removePlugIn:(id)in;
@end

@implementation PROPlugInGroup

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_class() == self)
  {
    selfCopy = objc_opt_class();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (PROPlugInGroup)initWithUUID:(__CFUUID *)d name:(id)name bundle:(id)bundle
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"*** Bad news! %@ send to abstract class %@!", v8, objc_opt_class()}];
  selfCopy = self;
  return 0;
}

- (void)addPlugIn:(id)in
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)removePlugIn:(id)in
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (id)name
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

- (id)plugIns
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

- (id)plugInsForProtocols:(id)protocols
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

@end