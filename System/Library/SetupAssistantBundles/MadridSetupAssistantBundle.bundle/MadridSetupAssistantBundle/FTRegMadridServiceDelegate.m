@interface FTRegMadridServiceDelegate
- (BOOL)serviceIsAvailable;
@end

@implementation FTRegMadridServiceDelegate

- (BOOL)serviceIsAvailable
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 iMessageAvailable];

  return v3;
}

@end