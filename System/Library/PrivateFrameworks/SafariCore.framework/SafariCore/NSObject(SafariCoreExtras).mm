@interface NSObject(SafariCoreExtras)
- (void)safari_postKVONotificationsForKey:()SafariCoreExtras aroundBlock:;
@end

@implementation NSObject(SafariCoreExtras)

- (void)safari_postKVONotificationsForKey:()SafariCoreExtras aroundBlock:
{
  v6 = a4;
  v7 = a3;
  [self willChangeValueForKey:v7];
  v6[2](v6);

  [self didChangeValueForKey:v7];
}

@end