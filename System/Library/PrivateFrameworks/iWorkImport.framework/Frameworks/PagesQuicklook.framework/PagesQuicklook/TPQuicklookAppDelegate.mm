@interface TPQuicklookAppDelegate
- (id)createBaseApplicationDelegate;
@end

@implementation TPQuicklookAppDelegate

- (id)createBaseApplicationDelegate
{
  v2 = objc_alloc_init(TPAppDelegate);

  return v2;
}

@end