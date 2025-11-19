@interface ICSAnalyticsController
- (_TtC14iCloudSettings22ICSAnalyticsController)init;
- (_TtC14iCloudSettings22ICSAnalyticsController)initWithAccount:(id)a3;
- (void)sendBackupToggleEventWithActionType:(int64_t)a3;
- (void)sendDriveCellularToggleEventWithActionType:(int64_t)a3 enabled:(BOOL)a4;
- (void)sendDriveUnlimitedCellularToggleEventWithActionType:(int64_t)a3 enabled:(BOOL)a4;
- (void)sendToggleEventForDataclassID:(id)a3 actionType:(int64_t)a4 enabled:(BOOL)a5;
@end

@implementation ICSAnalyticsController

- (_TtC14iCloudSettings22ICSAnalyticsController)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = sub_275935F68(a3);

  return v5;
}

- (_TtC14iCloudSettings22ICSAnalyticsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendToggleEventForDataclassID:(id)a3 actionType:(int64_t)a4 enabled:(BOOL)a5
{
  v8 = sub_2759BA298();
  v10 = v9;
  v11 = self;
  ICSAnalyticsController.sendToggleEvent(for:actionType:enabled:)(v8, v10, a4, a5);
}

- (void)sendBackupToggleEventWithActionType:(int64_t)a3
{
  v4 = self;
  ICSAnalyticsController.sendBackupToggleEvent(actionType:)(a3);
}

- (void)sendDriveCellularToggleEventWithActionType:(int64_t)a3 enabled:(BOOL)a4
{
  v6 = self;
  ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(a3, a4);
}

- (void)sendDriveUnlimitedCellularToggleEventWithActionType:(int64_t)a3 enabled:(BOOL)a4
{
  v6 = self;
  ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(a3, a4);
}

@end