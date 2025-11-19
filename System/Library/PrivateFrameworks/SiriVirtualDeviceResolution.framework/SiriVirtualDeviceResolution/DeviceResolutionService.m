@interface DeviceResolutionService
- (void)homeManagerDidUpdateDataSyncInProgress:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation DeviceResolutionService

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698F55EC();
}

- (void)homeManagerDidUpdateDataSyncInProgress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698F57C0();
}

@end