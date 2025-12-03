@interface ICSAnalyticsController
- (_TtC14iCloudSettings22ICSAnalyticsController)init;
- (_TtC14iCloudSettings22ICSAnalyticsController)initWithAccount:(id)account;
- (void)sendBackupToggleEventWithActionType:(int64_t)type;
- (void)sendDriveCellularToggleEventWithActionType:(int64_t)type enabled:(BOOL)enabled;
- (void)sendDriveUnlimitedCellularToggleEventWithActionType:(int64_t)type enabled:(BOOL)enabled;
- (void)sendToggleEventForDataclassID:(id)d actionType:(int64_t)type enabled:(BOOL)enabled;
@end

@implementation ICSAnalyticsController

- (_TtC14iCloudSettings22ICSAnalyticsController)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = sub_275935F68(account);

  return v5;
}

- (_TtC14iCloudSettings22ICSAnalyticsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendToggleEventForDataclassID:(id)d actionType:(int64_t)type enabled:(BOOL)enabled
{
  v8 = sub_2759BA298();
  v10 = v9;
  selfCopy = self;
  ICSAnalyticsController.sendToggleEvent(for:actionType:enabled:)(v8, v10, type, enabled);
}

- (void)sendBackupToggleEventWithActionType:(int64_t)type
{
  selfCopy = self;
  ICSAnalyticsController.sendBackupToggleEvent(actionType:)(type);
}

- (void)sendDriveCellularToggleEventWithActionType:(int64_t)type enabled:(BOOL)enabled
{
  selfCopy = self;
  ICSAnalyticsController.sendDriveCellularToggleEvent(actionType:enabled:)(type, enabled);
}

- (void)sendDriveUnlimitedCellularToggleEventWithActionType:(int64_t)type enabled:(BOOL)enabled
{
  selfCopy = self;
  ICSAnalyticsController.sendDriveUnlimitedCellularToggleEvent(actionType:enabled:)(type, enabled);
}

@end