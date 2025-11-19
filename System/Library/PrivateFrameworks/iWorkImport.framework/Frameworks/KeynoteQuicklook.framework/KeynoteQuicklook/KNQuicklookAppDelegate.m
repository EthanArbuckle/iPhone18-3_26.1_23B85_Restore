@interface KNQuicklookAppDelegate
- (id)createBaseApplicationDelegate;
@end

@implementation KNQuicklookAppDelegate

- (id)createBaseApplicationDelegate
{
  v2 = objc_alloc_init(KNAppDelegateBase);

  return v2;
}

@end