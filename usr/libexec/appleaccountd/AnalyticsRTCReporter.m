@interface AnalyticsRTCReporter
- (_TtC13appleaccountd20AnalyticsRTCReporter)init;
- (void)sendEvent:(id)a3;
@end

@implementation AnalyticsRTCReporter

- (void)sendEvent:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
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