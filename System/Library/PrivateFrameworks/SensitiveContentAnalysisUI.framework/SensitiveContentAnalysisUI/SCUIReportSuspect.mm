@interface SCUIReportSuspect
- (SCUIReportSuspect)initWithDisplayName:(id)name accountID:(id)d sensitiveMediaFiles:(id)files;
@end

@implementation SCUIReportSuspect

- (SCUIReportSuspect)initWithDisplayName:(id)name accountID:(id)d sensitiveMediaFiles:(id)files
{
  nameCopy = name;
  dCopy = d;
  filesCopy = files;
  v19.receiver = self;
  v19.super_class = SCUIReportSuspect;
  v11 = [(SCUIReportSuspect *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    v14 = [dCopy copy];
    accountID = v11->_accountID;
    v11->_accountID = v14;

    v16 = [filesCopy copy];
    sensitiveMediaFiles = v11->_sensitiveMediaFiles;
    v11->_sensitiveMediaFiles = v16;
  }

  return v11;
}

@end