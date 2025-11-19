@interface NSXPCConnection(StorageKit)
- (uint64_t)BOOLValueForEntitlement:()StorageKit;
@end

@implementation NSXPCConnection(StorageKit)

- (uint64_t)BOOLValueForEntitlement:()StorageKit
{
  v1 = [a1 valueForEntitlement:?];
  v2 = NSNumberToBool(v1);

  return v2;
}

@end