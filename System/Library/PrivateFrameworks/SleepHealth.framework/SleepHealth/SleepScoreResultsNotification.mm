@interface SleepScoreResultsNotification
- (BOOL)isEqual:(id)equal;
- (NSDictionary)userInfo;
- (NSString)identifier;
- (_TtC11SleepHealth29SleepScoreResultsNotification)init;
@end

@implementation SleepScoreResultsNotification

- (NSString)identifier
{
  v2 = HKSHSleepScoreResultsNotificationEventIdentifier();
  if (!v2)
  {
    sub_269BF87E8();
    v3 = sub_269BF87D8();

    v2 = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_269BF89C8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SleepScoreResultsNotification.isEqual(_:)(v8);

  sub_269BE5854(v8, &qword_28034A908, MEMORY[0x277D84F70] + 8);
  return v6 & 1;
}

- (NSDictionary)userInfo
{
  selfCopy = self;
  SleepScoreResultsNotification.userInfo.getter();

  sub_269BE5A00();
  v3 = sub_269BF8698();

  return v3;
}

- (_TtC11SleepHealth29SleepScoreResultsNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end