@interface HKSHSleepScoreResultsNotificationBuilder
- (BOOL)hasSufficientSleepData;
- (HKSHSleepScoreResultsNotificationBuilder)init;
- (HKSHSleepScoreResultsNotificationBuilder)initWithDaySummaries:(id)summaries needsIntroduction:(BOOL)introduction userFirstName:(id)name algorithmVersion:(int64_t)version;
- (id)buildNotification;
@end

@implementation HKSHSleepScoreResultsNotificationBuilder

- (HKSHSleepScoreResultsNotificationBuilder)initWithDaySummaries:(id)summaries needsIntroduction:(BOOL)introduction userFirstName:(id)name algorithmVersion:(int64_t)version
{
  summariesCopy = summaries;
  if (summaries)
  {
    sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
    summariesCopy = sub_269BF8898();
  }

  if (name)
  {
    v10 = sub_269BF87E8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(summariesCopy, introduction, v10, v12, version);
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
    selfCopy = self;
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