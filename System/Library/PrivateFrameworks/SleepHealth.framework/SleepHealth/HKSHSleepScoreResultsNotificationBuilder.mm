@interface HKSHSleepScoreResultsNotificationBuilder
- (BOOL)hasSufficientSleepData;
- (HKSHSleepScoreResultsNotificationBuilder)init;
- (HKSHSleepScoreResultsNotificationBuilder)initWithDaySummaries:(id)a3 needsIntroduction:(BOOL)a4 userFirstName:(id)a5 algorithmVersion:(int64_t)a6;
- (id)buildNotification;
@end

@implementation HKSHSleepScoreResultsNotificationBuilder

- (HKSHSleepScoreResultsNotificationBuilder)initWithDaySummaries:(id)a3 needsIntroduction:(BOOL)a4 userFirstName:(id)a5 algorithmVersion:(int64_t)a6
{
  v9 = a3;
  if (a3)
  {
    sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
    v9 = sub_269BF8898();
  }

  if (a5)
  {
    v10 = sub_269BF87E8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(v9, a4, v10, v12, a6);
  return result;
}

- (BOOL)hasSufficientSleepData
{
  v2 = *(&self->super.isa + OBJC_IVAR___HKSHSleepScoreResultsNotificationBuilder_builder);
  result = 0;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary;
    if ((*(v2 + v3 + *(type metadata accessor for SleepScoreDaySummary() + 24) + 48) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (id)buildNotification
{
  if (*(&self->super.isa + OBJC_IVAR___HKSHSleepScoreResultsNotificationBuilder_builder))
  {
    v2 = self;
    SleepScoreResultsNotificationBuilder.buildNotification()();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HKSHSleepScoreResultsNotificationBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end