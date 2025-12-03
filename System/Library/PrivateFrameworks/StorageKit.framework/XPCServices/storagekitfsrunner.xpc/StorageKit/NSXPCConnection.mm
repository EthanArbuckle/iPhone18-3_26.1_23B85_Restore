@interface NSXPCConnection
- (BOOL)BOOLValueForEntitlement:(id)entitlement;
@end

@implementation NSXPCConnection

- (BOOL)BOOLValueForEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self valueForEntitlement:entitlement];
  v4 = NSNumberToBool(v3);

  return v4;
}

@end