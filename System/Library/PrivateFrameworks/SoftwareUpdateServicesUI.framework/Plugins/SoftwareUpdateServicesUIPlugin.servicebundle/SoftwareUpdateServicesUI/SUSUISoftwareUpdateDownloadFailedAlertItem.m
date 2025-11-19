@interface SUSUISoftwareUpdateDownloadFailedAlertItem
- (BOOL)_isSettingsLaunchable;
- (SUSUISoftwareUpdateDownloadFailedAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 fromSettings:(BOOL)a5;
- (id)_notificationMessage;
- (id)_notificationTitle;
- (id)buttons;
- (id)graphicIcon;
- (unint64_t)_failureTypeForErrorCode:(int64_t)a3;
@end

@implementation SUSUISoftwareUpdateDownloadFailedAlertItem

- (SUSUISoftwareUpdateDownloadFailedAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 fromSettings:(BOOL)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSUISoftwareUpdateDownloadFailedAlertItem;
  v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v11 initWithDescriptor:location[0] softwareUpdateController:v13];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    BYTE1(v15->_error) = v12;
  }

  v7 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)buttons
{
  v52 = self;
  v51[1] = a2;
  v51[0] = 0;
  v50 = 0;
  v49 = self;
  v48 = +[NSMutableArray array];
  if (-[SUSUISoftwareUpdateDownloadFailedAlertItem _failureTypeForErrorCode:](v52, "_failureTypeForErrorCode:", [*(&v52->super._controller + 1) code]) == &dword_0 + 1)
  {
    if ([(SUSUISoftwareUpdateDownloadFailedAlertItem *)v52 _isSettingsLaunchable])
    {
      v21 = [SUSUIAlertButtonDefinition alloc];
      v23 = sub_85C4();
      v22 = [v23 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_STORAGE_ALERT_ACTION" value:&stru_62DF0 table:@"ui_alerts"];
      v42 = _NSConcreteStackBlock;
      v43 = -1073741824;
      v44 = 0;
      v45 = sub_7924;
      v46 = &unk_5CCB0;
      v47 = v49;
      v2 = [(SUSUIAlertButtonDefinition *)v21 initWithLabel:v22 presentationStyle:0 isPreferredButton:1 handler:&v42];
      v3 = v51[0];
      v51[0] = v2;

      [v48 addObject:v51[0]];
      objc_storeStrong(&v47, 0);
    }

    v18 = [SUSUIAlertButtonDefinition alloc];
    v20 = sub_85C4();
    v19 = [v20 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_STORAGE_ALERT_CANCEL" value:&stru_62DF0 table:@"ui_alerts"];
    v36 = _NSConcreteStackBlock;
    v37 = -1073741824;
    v38 = 0;
    v39 = sub_79AC;
    v40 = &unk_5CCB0;
    v41 = v49;
    v4 = [(SUSUIAlertButtonDefinition *)v18 initWithLabel:v19 presentationStyle:2 isPreferredButton:0 handler:&v36];
    v5 = v50;
    v50 = v4;

    [v48 addObject:v50];
    objc_storeStrong(&v41, 0);
  }

  else
  {
    v15 = [SUSUIAlertButtonDefinition alloc];
    v17 = sub_85C4();
    v16 = [v17 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_ALERT_CANCEL" value:&stru_62DF0 table:@"ui_alerts"];
    v30 = _NSConcreteStackBlock;
    v31 = -1073741824;
    v32 = 0;
    v33 = sub_79E0;
    v34 = &unk_5CCB0;
    v35 = v49;
    v6 = [(SUSUIAlertButtonDefinition *)v15 initWithLabel:v16 presentationStyle:2 isPreferredButton:0 handler:&v30];
    v7 = v50;
    v50 = v6;

    [v48 addObject:v50];
    if ([(SUSUISoftwareUpdateDownloadFailedAlertItem *)v52 _isSettingsLaunchable]&& (BYTE1(v52->_error) & 1) == 0)
    {
      v12 = [SUSUIAlertButtonDefinition alloc];
      v14 = sub_85C4();
      v13 = [v14 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_ALERT_ACTION" value:&stru_62DF0 table:@"ui_alerts"];
      v24 = _NSConcreteStackBlock;
      v25 = -1073741824;
      v26 = 0;
      v27 = sub_7A14;
      v28 = &unk_5CCB0;
      v29 = v49;
      v8 = [(SUSUIAlertButtonDefinition *)v12 initWithLabel:v13 presentationStyle:0 isPreferredButton:1 handler:&v24];
      v9 = v51[0];
      v51[0] = v8;

      [v48 addObject:v51[0]];
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&v35, 0);
  }

  v11 = [v48 copy];
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(v51, 0);

  return v11;
}

- (id)graphicIcon
{
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  if (([(SUDescriptor *)v4 isSplatOnly]& 1) != 0)
  {
    v2 = @"com.apple.graphic-icon.background-security-improvements";
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;

  return v5;
}

- (id)_notificationTitle
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  v4 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v5 = [(SUDescriptor *)v4 isSplatOnly];

  if (-[SUSUISoftwareUpdateDownloadFailedAlertItem _failureTypeForErrorCode:](v23, "_failureTypeForErrorCode:", [*(&v23->super._controller + 1) code]) == &dword_0 + 1)
  {
    v20 = 0;
    v18 = 0;
    v16 = 0;
    v14 = 0;
    if (v5)
    {
      v21 = sub_85C4();
      v20 = 1;
      v19 = [v21 localizedStringForKey:@"RSR_DOWNLOAD_FAILURE_STORAGE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v18 = 1;
      objc_storeStrong(location, v19);
    }

    else
    {
      v17 = sub_85C4();
      v16 = 1;
      v15 = [v17 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_STORAGE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v14 = 1;
      objc_storeStrong(location, v15);
    }

    if (v14)
    {
    }

    if (v16)
    {
    }

    if (v18)
    {
    }

    if (v20)
    {
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (v5)
    {
      v13 = sub_85C4();
      v12 = 1;
      v11 = [v13 localizedStringForKey:@"RSR_DOWNLOAD_FAILURE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v10 = 1;
      objc_storeStrong(location, v11);
    }

    else
    {
      v9 = sub_85C4();
      v8 = 1;
      v7 = [v9 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
      v6 = 1;
      objc_storeStrong(location, v7);
    }

    if (v6)
    {
    }

    if (v8)
    {
    }

    if (v10)
    {
    }

    if (v12)
    {
    }
  }

  v3 = location[0];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_notificationMessage
{
  v28 = self;
  v27[1] = a2;
  v27[0] = 0;
  if (-[SUSUISoftwareUpdateDownloadFailedAlertItem _failureTypeForErrorCode:](self, "_failureTypeForErrorCode:", [*(&self->super._controller + 1) code]) == &dword_0 + 1)
  {
    if ([(SUSUISoftwareUpdateDownloadFailedAlertItem *)v28 _isSettingsLaunchable])
    {
      v24 = sub_85C4();
      v23 = [v24 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_STORAGE_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
      v22 = [(SUSUIBaseSoftwareUpdateAlertItem *)v28 updateName];
      v2 = [NSString stringWithFormat:v23, v22];
      v3 = v27[0];
      v27[0] = v2;
    }

    else
    {
      v21 = sub_85C4();
      v20 = [v21 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_STORAGE_ALERT_BODY_UNLAUNCHABLE" value:&stru_62DF0 table:@"ui_alerts"];
      v19 = [(SUSUIBaseSoftwareUpdateAlertItem *)v28 updateName];
      v4 = [NSString stringWithFormat:v20, v19];
      v5 = v27[0];
      v27[0] = v4;
    }
  }

  else
  {
    v18 = sub_85C4();
    v17 = [v18 localizedStringForKey:@"SOFTWARE_UPDATE_DOWNLOAD_FAILURE_ALERT_BODY_GENERIC" value:&stru_62DF0 table:@"ui_alerts"];
    v16 = [(SUSUIBaseSoftwareUpdateAlertItem *)v28 updateName];
    v6 = [NSString stringWithFormat:v17, v16];
    v7 = v27[0];
    v27[0] = v6;
  }

  v14 = +[BSPlatform sharedInstance];
  v15 = [(BSPlatform *)v14 isInternalInstall];

  if (v15)
  {
    v13 = [*(&v28->super._controller + 1) userInfo];
    v26 = [v13 objectForKey:NSLocalizedRecoverySuggestionErrorKey];

    if (v26)
    {
      v12 = v26;
    }

    else
    {
      v12 = *(&v28->super._controller + 1);
    }

    v25 = [NSString stringWithFormat:@"\n\n[Internal Only]\n%@", v12];
    v8 = [NSString stringWithFormat:@"%@%@", v27[0], v25];
    v9 = v27[0];
    v27[0] = v8;

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  v11 = v27[0];
  objc_storeStrong(v27, 0);

  return v11;
}

- (unint64_t)_failureTypeForErrorCode:(int64_t)a3
{
  if (a3 == 6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_isSettingsLaunchable
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(FBSSystemService);
  v3 = [v4[0] canOpenApplication:SUSUISettingsBundleIdentifier reason:?];
  objc_storeStrong(v4, 0);
  return v3;
}

@end