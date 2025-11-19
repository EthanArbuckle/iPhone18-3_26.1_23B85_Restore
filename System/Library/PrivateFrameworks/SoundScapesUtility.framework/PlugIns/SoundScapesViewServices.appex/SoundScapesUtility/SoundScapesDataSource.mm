@interface SoundScapesDataSource
- (void)setupDataSourceWithTargetDeviceVersions:(id)a3 andFallbackResidentDeviceVersions:(id)a4;
@end

@implementation SoundScapesDataSource

- (void)setupDataSourceWithTargetDeviceVersions:(id)a3 andFallbackResidentDeviceVersions:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  v7 = sub_10002A570();
  v5 = sub_10002A570();
  sub_1000097C4(v7, v5);

  _objc_release(a4);

  _objc_release(a3);
  _objc_release(self);
}

@end