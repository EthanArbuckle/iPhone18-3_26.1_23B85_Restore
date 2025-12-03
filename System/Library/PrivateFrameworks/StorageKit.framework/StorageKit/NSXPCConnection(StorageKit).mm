@interface NSXPCConnection(StorageKit)
- (uint64_t)BOOLValueForEntitlement:()StorageKit;
@end

@implementation NSXPCConnection(StorageKit)

- (uint64_t)BOOLValueForEntitlement:()StorageKit
{
  v1 = [self valueForEntitlement:?];
  v2 = NSNumberToBool(v1);

  return v2;
}

@end