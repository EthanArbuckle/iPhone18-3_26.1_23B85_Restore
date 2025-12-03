@interface NSXPCConnection(PGMenuItemWSupport)
- (uint64_t)PG_hasMenuItemProviderEntitlement;
@end

@implementation NSXPCConnection(PGMenuItemWSupport)

- (uint64_t)PG_hasMenuItemProviderEntitlement
{
  v1 = [self valueForEntitlement:@"com.apple.pegasus.menuitemprovider"];
  v2 = [v1 isEqualToNumber:MEMORY[0x1E695E118]];

  return v2;
}

@end