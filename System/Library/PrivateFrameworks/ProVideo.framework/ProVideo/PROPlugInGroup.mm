@interface PROPlugInGroup
+ (id)allocWithZone:(_NSZone *)a3;
- (PROPlugInGroup)initWithUUID:(__CFUUID *)a3 name:(id)a4 bundle:(id)a5;
- (__CFUUID)uuid;
- (id)displayName;
- (id)name;
- (id)plugIns;
- (id)plugInsForProtocols:(id)a3;
- (void)addPlugIn:(id)a3;
- (void)removePlugIn:(id)a3;
@end

@implementation PROPlugInGroup

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_class() == a1)
  {
    v4 = objc_opt_class();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (PROPlugInGroup)initWithUUID:(__CFUUID *)a3 name:(id)a4 bundle:(id)a5
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE660];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"*** Bad news! %@ send to abstract class %@!", v8, objc_opt_class()}];
  v9 = self;
  return 0;
}

- (void)addPlugIn:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
}

- (void)removePlugIn:(id)a3
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

- (id)plugInsForProtocols:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"*** Bad news! %@ send to abstract class %@!", v5, objc_opt_class()}];
  return 0;
}

@end