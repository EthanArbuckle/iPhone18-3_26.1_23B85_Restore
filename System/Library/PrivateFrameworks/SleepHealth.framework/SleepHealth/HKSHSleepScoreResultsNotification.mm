@interface HKSHSleepScoreResultsNotification
- (HKSHSleepScoreResultsNotification)init;
- (HKSHSleepScoreResultsNotification)initWithUserInfo:(id)info;
- (NSDictionary)notificationUserInfo;
@end

@implementation HKSHSleepScoreResultsNotification

- (NSDictionary)notificationUserInfo
{
  v2 = *(self + OBJC_IVAR___HKSHSleepScoreResultsNotification_notificationUserInfo);
  sub_269BE5A00();

  v3 = sub_269BF8698();

  return v3;
}

- (HKSHSleepScoreResultsNotification)initWithUserInfo:(id)info
{
  sub_269BE5A00();
  v3 = sub_269BF86A8();
  return sub_269BE4078(v3);
}

- (HKSHSleepScoreResultsNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end