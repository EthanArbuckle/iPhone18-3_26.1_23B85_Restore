@interface SCUIReportVictim
- (SCUIReportVictim)initWithDisplayName:(id)a3 accountID:(id)a4 mediaFiles:(id)a5;
@end

@implementation SCUIReportVictim

- (SCUIReportVictim)initWithDisplayName:(id)a3 accountID:(id)a4 mediaFiles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = SCUIReportVictim;
  v11 = [(SCUIReportVictim *)&v31 init];
  if (v11)
  {
    v12 = [v8 copy];
    displayName = v11->_displayName;
    v11->_displayName = v12;

    v14 = [v9 copy];
    accountID = v11->_accountID;
    v11->_accountID = v14;

    v16 = [v10 copy];
    mediaFiles = v11->_mediaFiles;
    v11->_mediaFiles = v16;

    v18 = [SCUIDeviceRegion alloc];
    v30 = v10;
    v19 = v9;
    v20 = v8;
    v21 = [MEMORY[0x1E695DF58] currentLocale];
    v22 = [v21 regionCode];
    v23 = [MEMORY[0x1E695DF58] currentLocale];
    v24 = [MEMORY[0x1E695DF58] currentLocale];
    v25 = [v24 regionCode];
    v26 = [v23 localizedStringForCountryCode:v25];
    v27 = [(SCUIDeviceRegion *)v18 initWithIdentifier:v22 displayName:v26];
    deviceRegion = v11->_deviceRegion;
    v11->_deviceRegion = v27;

    v8 = v20;
    v9 = v19;
    v10 = v30;
  }

  return v11;
}

@end