@interface CSDAnalyticsReporter
+ (void)sendManualLaunchAttemptEventWithActivitySession:(id)a3;
+ (void)sendManualLaunchNeededEventWithActivitySession:(id)a3;
- (void)reportingController:(id)a3 pickedRoute:(id)a4 updatedByAnyTriggerForCall:(id)a5;
- (void)reportingController:(id)a3 recordingEndedForSession:(id)a4;
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
@end

@implementation CSDAnalyticsReporter

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1000366FC(v7, v8);
}

- (void)reportingController:(id)a3 recordingEndedForSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100455B60(v8, v7);
}

+ (void)sendManualLaunchNeededEventWithActivitySession:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_100455E14(v4);
}

+ (void)sendManualLaunchAttemptEventWithActivitySession:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_100456204(v4);
}

- (void)reportingController:(id)a3 pickedRoute:(id)a4 updatedByAnyTriggerForCall:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100456CCC(v11, v9, v10);
}

@end