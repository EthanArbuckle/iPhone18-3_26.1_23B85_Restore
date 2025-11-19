@interface TFInterprocessDiagnosticDumpNotifier
- (TFInterprocessDiagnosticDumpNotifier)initWithNotificationName:(id)a3 diagnosticTempDir:(id)a4 log:(id)a5;
- (void)triggerDiagnosticFileDump;
@end

@implementation TFInterprocessDiagnosticDumpNotifier

- (TFInterprocessDiagnosticDumpNotifier)initWithNotificationName:(id)a3 diagnosticTempDir:(id)a4 log:(id)a5
{
  v6 = sub_1BF17923C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17A0AC();
  v12 = v11;
  sub_1BF1791BC();
  return InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:log:)(v10, v12, v9, a5);
}

- (void)triggerDiagnosticFileDump
{
  v2 = self;
  InterprocessDiagnosticDumpNotifier.triggerDiagnosticFileDump()();
}

@end