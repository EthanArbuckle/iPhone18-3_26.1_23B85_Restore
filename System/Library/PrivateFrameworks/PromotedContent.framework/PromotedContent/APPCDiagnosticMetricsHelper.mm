@interface APPCDiagnosticMetricsHelper
- (APPCDiagnosticMetricsHelper)init;
- (APPCDiagnosticMetricsHelper)initWithContextIdentifier:(id)identifier promotedContentIdentifier:(id)contentIdentifier primitiveCreator:(id)creator notificationOwner:(id)owner metricEventsTracking:(id)tracking;
- (unint64_t)networkType;
- (void)loadFailedWithReason:(id)reason code:(int64_t)code;
- (void)mediaPlaybackFailedWithReason:(id)reason;
- (void)registerHandlerForAllMetricsWithClosure:(id)closure;
- (void)removeHandler;
- (void)setNetworkType:(unint64_t)type;
- (void)templateMetricWithName:(id)name argument:(id)argument;
@end

@implementation APPCDiagnosticMetricsHelper

- (void)setNetworkType:(unint64_t)type
{
  v5 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (unint64_t)networkType
{
  v3 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (APPCDiagnosticMetricsHelper)initWithContextIdentifier:(id)identifier promotedContentIdentifier:(id)contentIdentifier primitiveCreator:(id)creator notificationOwner:(id)owner metricEventsTracking:(id)tracking
{
  v11 = sub_1C1B94D88();
  v13 = v12;
  v14 = sub_1C1B94D88();
  v16 = v15;
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1C1B1D1D0(v11, v13, v14, v16, creator, owner, tracking, self);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C1B1C048(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  selfCopy = self;
  sub_1C1B1C214();
}

- (void)loadFailedWithReason:(id)reason code:(int64_t)code
{
  v6 = sub_1C1B94D88();
  v8 = v7;
  selfCopy = self;
  sub_1C1B1C33C(v6, v8, code);
}

- (void)templateMetricWithName:(id)name argument:(id)argument
{
  v5 = sub_1C1B94D88();
  v7 = v6;
  v8 = sub_1C1B94D88();
  v10 = v9;
  selfCopy = self;
  sub_1C1B1C6CC(v5, v7, v8, v10);
}

- (void)mediaPlaybackFailedWithReason:(id)reason
{
  sub_1C1B94D88();
  selfCopy = self;
  sub_1C1B1C9B8();
}

- (APPCDiagnosticMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end