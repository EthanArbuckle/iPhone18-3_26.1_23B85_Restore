@interface CSDAnalyticsReporter
+ (void)sendManualLaunchAttemptEventWithActivitySession:(id)session;
+ (void)sendManualLaunchNeededEventWithActivitySession:(id)session;
- (void)reportingController:(id)controller pickedRoute:(id)route updatedByAnyTriggerForCall:(id)call;
- (void)reportingController:(id)controller recordingEndedForSession:(id)session;
- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count;
@end

@implementation CSDAnalyticsReporter

- (void)reportingController:(id)controller statusChangedForCall:(id)call totalCallCount:(unint64_t)count
{
  controllerCopy = controller;
  callCopy = call;
  selfCopy = self;
  sub_1000366FC(controllerCopy, callCopy);
}

- (void)reportingController:(id)controller recordingEndedForSession:(id)session
{
  controllerCopy = controller;
  sessionCopy = session;
  selfCopy = self;
  sub_100455B60(selfCopy, sessionCopy);
}

+ (void)sendManualLaunchNeededEventWithActivitySession:(id)session
{
  swift_getObjCClassMetadata();
  sessionCopy = session;
  sub_100455E14(sessionCopy);
}

+ (void)sendManualLaunchAttemptEventWithActivitySession:(id)session
{
  swift_getObjCClassMetadata();
  sessionCopy = session;
  sub_100456204(sessionCopy);
}

- (void)reportingController:(id)controller pickedRoute:(id)route updatedByAnyTriggerForCall:(id)call
{
  controllerCopy = controller;
  routeCopy = route;
  callCopy = call;
  selfCopy = self;
  sub_100456CCC(selfCopy, routeCopy, callCopy);
}

@end