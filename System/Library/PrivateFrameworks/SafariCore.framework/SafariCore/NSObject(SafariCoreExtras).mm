@interface NSObject(SafariCoreExtras)
- (void)safari_postKVONotificationsForKey:()SafariCoreExtras aroundBlock:;
@end

@implementation NSObject(SafariCoreExtras)

- (void)safari_postKVONotificationsForKey:()SafariCoreExtras aroundBlock:
{
  v6 = a4;
  v7 = a3;
  [a1 willChangeValueForKey:v7];
  v6[2](v6);

  [a1 didChangeValueForKey:v7];
}

@end