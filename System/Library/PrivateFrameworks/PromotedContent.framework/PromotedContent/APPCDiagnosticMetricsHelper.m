@interface APPCDiagnosticMetricsHelper
- (APPCDiagnosticMetricsHelper)init;
- (APPCDiagnosticMetricsHelper)initWithContextIdentifier:(id)a3 promotedContentIdentifier:(id)a4 primitiveCreator:(id)a5 notificationOwner:(id)a6 metricEventsTracking:(id)a7;
- (unint64_t)networkType;
- (void)loadFailedWithReason:(id)a3 code:(int64_t)a4;
- (void)mediaPlaybackFailedWithReason:(id)a3;
- (void)registerHandlerForAllMetricsWithClosure:(id)a3;
- (void)removeHandler;
- (void)setNetworkType:(unint64_t)a3;
- (void)templateMetricWithName:(id)a3 argument:(id)a4;
@end

@implementation APPCDiagnosticMetricsHelper

- (void)setNetworkType:(unint64_t)a3
{
  v5 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)networkType
{
  v3 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (APPCDiagnosticMetricsHelper)initWithContextIdentifier:(id)a3 promotedContentIdentifier:(id)a4 primitiveCreator:(id)a5 notificationOwner:(id)a6 metricEventsTracking:(id)a7
{
  v11 = sub_1C1B94D88();
  v13 = v12;
  v14 = sub_1C1B94D88();
  v16 = v15;
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1C1B1D1D0(v11, v13, v14, v16, a5, a6, a7, self);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C1B1C048(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  v2 = self;
  sub_1C1B1C214();
}

- (void)loadFailedWithReason:(id)a3 code:(int64_t)a4
{
  v6 = sub_1C1B94D88();
  v8 = v7;
  v9 = self;
  sub_1C1B1C33C(v6, v8, a4);
}

- (void)templateMetricWithName:(id)a3 argument:(id)a4
{
  v5 = sub_1C1B94D88();
  v7 = v6;
  v8 = sub_1C1B94D88();
  v10 = v9;
  v11 = self;
  sub_1C1B1C6CC(v5, v7, v8, v10);
}

- (void)mediaPlaybackFailedWithReason:(id)a3
{
  sub_1C1B94D88();
  v4 = self;
  sub_1C1B1C9B8();
}

- (APPCDiagnosticMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end