@interface CrashReportListener.ObserverProxy
- (_TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy)init;
- (void)willWriteDiagnosticLog:(id)a3 logId:(id)a4 logInfo:(id)a5;
@end

@implementation CrashReportListener.ObserverProxy

- (void)willWriteDiagnosticLog:(id)a3 logId:(id)a4 logInfo:(id)a5
{
  v6 = sub_25F502788();
  v8 = v7;
  v9 = sub_25F502738();
  v11 = *(&self->super.isa + OBJC_IVAR____TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy_diagnosticsLogHandler);
  v10 = *&self->diagnosticsLogHandler[OBJC_IVAR____TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy_diagnosticsLogHandler];
  v12 = self;

  v11(v6, v8, v9);
}

- (_TtCC17PreviewsOSSupport19CrashReportListener13ObserverProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end