@interface DeviceResolutionService
- (void)homeManagerDidUpdateDataSyncInProgress:(id)progress;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation DeviceResolutionService

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_2698F55EC();
}

- (void)homeManagerDidUpdateDataSyncInProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  sub_2698F57C0();
}

@end