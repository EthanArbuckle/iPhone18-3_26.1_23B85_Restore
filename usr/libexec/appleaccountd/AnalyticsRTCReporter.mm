@interface AnalyticsRTCReporter
- (_TtC13appleaccountd20AnalyticsRTCReporter)init;
- (void)sendEvent:(id)event;
@end

@implementation AnalyticsRTCReporter

- (void)sendEvent:(id)event
{
  v4 = objc_opt_self();
  eventCopy = event;
  [objc_msgSend(v4 "reporter")];
  swift_unknownObjectRelease();
}

- (_TtC13appleaccountd20AnalyticsRTCReporter)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AnalyticsRTCReporter *)&v3 init];
}

@end