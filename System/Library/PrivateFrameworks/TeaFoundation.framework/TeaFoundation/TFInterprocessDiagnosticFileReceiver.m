@interface TFInterprocessDiagnosticFileReceiver
- (TFInterprocessDiagnosticFileReceiver)initWithNotificationName:(id)a3 diagnosticFileListURL:(id)a4 log:(id)a5;
- (id)diagnosticFileURLs;
@end

@implementation TFInterprocessDiagnosticFileReceiver

- (TFInterprocessDiagnosticFileReceiver)initWithNotificationName:(id)a3 diagnosticFileListURL:(id)a4 log:(id)a5
{
  v6 = sub_1BF17923C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17A0AC();
  v12 = v11;
  sub_1BF1791BC();
  return InterprocessDiagnosticFileReceiver.init(interprocessDiagnosticFilesNotificationName:diagnosticFileListURL:log:)(v10, v12, v9, a5);
}

- (id)diagnosticFileURLs
{
  InterprocessDiagnosticFileReceiver.diagnosticFileURLs()();
  sub_1BF17923C();
  v2 = sub_1BF17A4CC();

  return v2;
}

@end