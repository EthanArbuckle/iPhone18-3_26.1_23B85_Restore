@interface TNQuicklookAppDelegate
- (id)createBaseApplicationDelegate;
@end

@implementation TNQuicklookAppDelegate

- (id)createBaseApplicationDelegate
{
  v2 = objc_alloc_init(TNAppDelegateBase);

  return v2;
}

@end