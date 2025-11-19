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
    v3 = [(CAReporter *)&v14 initWithNewReporterID];
    v4 = v3;
    if (v3)
    {
      v13.receiver = v3;
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
    v4 = [(CAReporter *)&v12 initWithNewReporterID];
    if (v4)
    {
      v6 = *AA_ClientCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(CAReporter *)v4 reporterID];
        *buf = 136315650;
        v16 = "CAReportingClient.mm";
        v17 = 1024;
        v18 = 482;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CATestReporter initWithNewReporterID { careporter_id=%lli }", buf, 0x1Cu);
      }

      v8 = +[CAReportingClient sharedInstance];
      [v8 setServiceType:11 reporterID:{-[CAReporter reporterID](v4, "reporterID")}];
    }
  }

  v9 = v4;

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

@end