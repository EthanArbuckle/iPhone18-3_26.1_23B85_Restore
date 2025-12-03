@interface SoundScapesDataSource
- (void)setupDataSourceWithTargetDeviceVersions:(id)versions andFallbackResidentDeviceVersions:(id)deviceVersions;
@end

@implementation SoundScapesDataSource

- (void)setupDataSourceWithTargetDeviceVersions:(id)versions andFallbackResidentDeviceVersions:(id)deviceVersions
{
  _objc_retain(versions);
  _objc_retain(deviceVersions);
  _objc_retain(self);
  v7 = sub_10002A570();
  v5 = sub_10002A570();
  sub_1000097C4(v7, v5);

  _objc_release(deviceVersions);

  _objc_release(versions);
  _objc_release(self);
}

@end