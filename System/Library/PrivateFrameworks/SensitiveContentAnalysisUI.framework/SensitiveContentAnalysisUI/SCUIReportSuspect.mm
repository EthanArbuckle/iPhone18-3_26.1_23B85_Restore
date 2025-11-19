@interface SCUIReportSuspect
- (SCUIReportSuspect)initWithDisplayName:(id)a3 accountID:(id)a4 sensitiveMediaFiles:(id)a5;
@end

@implementation SCUIReportSuspect

- (SCUIReportSuspect)initWithDisplayName:(id)a3 accountID:(id)a4 sensitiveMediaFiles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SCUIReportSuspect;
  v11 = [(SCUIReportSuspect *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    v14 = [v9 copy];
    accountID = v11->_accountID;
    v11->_accountID = v14;

    v16 = [v10 copy];
    sensitiveMediaFiles = v11->_sensitiveMediaFiles;
    v11->_sensitiveMediaFiles = v16;
  }

  return v11;
}

@end