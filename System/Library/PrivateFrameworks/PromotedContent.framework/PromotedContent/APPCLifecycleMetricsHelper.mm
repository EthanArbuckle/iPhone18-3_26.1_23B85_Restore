@interface APPCLifecycleMetricsHelper
- (APPCLifecycleMetricsHelper)init;
- (void)contentLoadFailure;
- (void)discarded;
- (void)manuallyDiscardWithReason:(int64_t)reason;
- (void)missedOpportunity;
- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation APPCLifecycleMetricsHelper

- (void)missedOpportunity
{
  selfCopy = self;
  sub_1C1B5D5E4();
}

- (void)discarded
{
  if (*(&self->super.isa + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) == 1)
  {
    [*(&self->super.isa + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) notConsumedWithCode:8001 placeholder:*(&self->super.isa + OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder)];
  }
}

- (void)manuallyDiscardWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_1C1B5D810(reason);
}

- (void)contentLoadFailure
{
  selfCopy = self;
  sub_1C1B5D960();
}

- (void)trackImpressionWithStartDate:(id)date endDate:(id)endDate
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1C1B94558();
  sub_1C1B94558();
  sub_1C1B95128();
  sub_1C1AC53E4();
  v12 = sub_1C1B95298();
  sub_1C1B94BA8();

  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
}

- (APPCLifecycleMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end