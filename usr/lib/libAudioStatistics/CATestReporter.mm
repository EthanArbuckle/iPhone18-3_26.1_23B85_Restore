@interface CATestReporter
- (CATestReporter)initWithNewReporterID;
@end

@implementation CATestReporter

- (CATestReporter)initWithNewReporterID
{
  v21 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v14.receiver = self;
    v14.super_class = CATestReporter;
    initWithNewReporterID = [(CAReporter *)&v14 initWithNewReporterID];
    initWithNewReporterID2 = initWithNewReporterID;
    if (initWithNewReporterID)
    {
      v13.receiver = initWithNewReporterID;
      v13.super_class = CATestReporter;
      [(CAReporter *)&v13 setServiceType:11];
    }
  }

  else
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 478;
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CATestReporter initWithNewReporterID called", buf, 0x12u);
    }

    v12.receiver = self;
    v12.super_class = CATestReporter;
    initWithNewReporterID2 = [(CAReporter *)&v12 initWithNewReporterID];
    if (initWithNewReporterID2)
    {
      v6 = *AA_ClientCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        reporterID = [(CAReporter *)initWithNewReporterID2 reporterID];
        *buf = 136315650;
        v16 = "CAReportingClient.mm";
        v17 = 1024;
        v18 = 482;
        v19 = 2048;
        v20 = reporterID;
        _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CATestReporter initWithNewReporterID { careporter_id=%lli }", buf, 0x1Cu);
      }

      v8 = +[CAReportingClient sharedInstance];
      [v8 setServiceType:11 reporterID:{-[CAReporter reporterID](initWithNewReporterID2, "reporterID")}];
    }
  }

  v9 = initWithNewReporterID2;

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

@end