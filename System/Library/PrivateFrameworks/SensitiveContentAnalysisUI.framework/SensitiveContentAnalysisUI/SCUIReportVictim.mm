@interface SCUIReportVictim
- (SCUIReportVictim)initWithDisplayName:(id)name accountID:(id)d mediaFiles:(id)files;
@end

@implementation SCUIReportVictim

- (SCUIReportVictim)initWithDisplayName:(id)name accountID:(id)d mediaFiles:(id)files
{
  nameCopy = name;
  dCopy = d;
  filesCopy = files;
  v31.receiver = self;
  v31.super_class = SCUIReportVictim;
  v11 = [(SCUIReportVictim *)&v31 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    v14 = [dCopy copy];
    accountID = v11->_accountID;
    v11->_accountID = v14;

    v16 = [filesCopy copy];
    mediaFiles = v11->_mediaFiles;
    v11->_mediaFiles = v16;

    v18 = [SCUIDeviceRegion alloc];
    v30 = filesCopy;
    v19 = dCopy;
    v20 = nameCopy;
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    regionCode = [currentLocale regionCode];
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    currentLocale3 = [MEMORY[0x1E695DF58] currentLocale];
    regionCode2 = [currentLocale3 regionCode];
    v26 = [currentLocale2 localizedStringForCountryCode:regionCode2];
    v27 = [(SCUIDeviceRegion *)v18 initWithIdentifier:regionCode displayName:v26];
    deviceRegion = v11->_deviceRegion;
    v11->_deviceRegion = v27;

    nameCopy = v20;
    dCopy = v19;
    filesCopy = v30;
  }

  return v11;
}

@end