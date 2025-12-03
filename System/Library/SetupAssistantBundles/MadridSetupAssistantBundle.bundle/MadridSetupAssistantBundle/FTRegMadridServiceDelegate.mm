@interface FTRegMadridServiceDelegate
- (BOOL)serviceIsAvailable;
@end

@implementation FTRegMadridServiceDelegate

- (BOOL)serviceIsAvailable
{
  v2 = +[FTDeviceSupport sharedInstance];
  iMessageAvailable = [v2 iMessageAvailable];

  return iMessageAvailable;
}

@end