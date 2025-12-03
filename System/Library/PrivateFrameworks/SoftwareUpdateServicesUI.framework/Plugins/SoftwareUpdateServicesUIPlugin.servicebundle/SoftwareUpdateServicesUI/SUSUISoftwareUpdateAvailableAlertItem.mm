@interface SUSUISoftwareUpdateAvailableAlertItem
- (id)buttons;
- (id)message;
- (id)title;
- (void)_activateInstallLaterAlert:(id)alert;
- (void)downloadAndInstall;
- (void)downloadAndInstallLater;
@end

@implementation SUSUISoftwareUpdateAvailableAlertItem

- (id)title
{
  location[2] = self;
  location[1] = a2;
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  documentation = [(SUDescriptor *)descriptor documentation];
  location[0] = [documentation notificationTitleString];

  if (location[0])
  {
    v8 = location[0];
  }

  else
  {
    v4 = sub_58F8();
    v8 = [v4 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)message
{
  selfCopy = self;
  v13[1] = a2;
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  documentation = [(SUDescriptor *)descriptor documentation];
  v13[0] = [documentation notificationBodyString];

  if (v13[0])
  {
    v15 = v13[0];
    v12 = 1;
  }

  else
  {
    v8 = sub_58F8();
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_BODY"];
    v11 = [v8 localizedStringForKey:? value:? table:?];

    if (!v11)
    {
      v6 = sub_58F8();
      v11 = [v6 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_BODY" value:&stru_62DF0 table:@"ui_alerts"];
    }

    v4 = v11;
    updateName = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
    v15 = [NSString stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:updateName];

    v12 = 1;
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v13, 0);
  v2 = v15;

  return v2;
}

- (id)buttons
{
  v32[2] = self;
  v32[1] = a2;
  v32[0] = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  selfCopy = self;
  v11 = [SUSUIAlertButtonDefinition alloc];
  v13 = sub_58F8();
  v12 = [v13 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_ACTION_DOWNLOAD_AND_INSTALL" value:? table:?];
  v22[1] = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_4304;
  v26 = &unk_5CCB0;
  v27 = selfCopy;
  v2 = [SUSUIAlertButtonDefinition initWithLabel:v11 presentationStyle:"initWithLabel:presentationStyle:isPreferredButton:handler:" isPreferredButton:v12 handler:?];
  v3 = v31;
  v31 = v2;

  v14 = [SUSUIAlertButtonDefinition alloc];
  v16 = sub_58F8();
  v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_ACTION_LATER" value:&stru_62DF0 table:@"ui_alerts"];
  v21[1] = _NSConcreteStackBlock;
  v21[2] = 3221225472;
  v21[3] = sub_43D4;
  v21[4] = &unk_5CCB0;
  v22[0] = selfCopy;
  v4 = [(SUSUIAlertButtonDefinition *)v14 initWithLabel:v15 presentationStyle:0 isPreferredButton:0 handler:?];
  v5 = v30;
  v30 = v4;

  v17 = [SUSUIAlertButtonDefinition alloc];
  v19 = sub_58F8();
  v18 = [v19 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_ACTION_DETAILS" value:&stru_62DF0 table:@"ui_alerts"];
  v21[0] = selfCopy;
  v6 = [(SUSUIAlertButtonDefinition *)v17 initWithLabel:v18 presentationStyle:2 isPreferredButton:0 handler:?];
  v7 = v29;
  v29 = v6;

  v33[0] = v31;
  v33[1] = v30;
  v33[2] = v29;
  v8 = [NSArray arrayWithObjects:v33 count:3];
  v9 = v32[0];
  v32[0] = v8;

  v20 = v32[0];
  objc_storeStrong(v21, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&selfCopy, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(v32, 0);

  return v20;
}

- (void)downloadAndInstall
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = self;
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_48C4;
  v15 = &unk_5D008;
  v16 = v19[0];
  v17 = selfCopy;
  v18 = objc_retainBlock(&v11);
  v2 = [SUSUIFullScreenAuthenticationAlert alloc];
  descriptor = [v19[0] descriptor];
  softwareUpdateController = [v19[0] softwareUpdateController];
  clientQueue = [softwareUpdateController clientQueue];
  v8[1] = _NSConcreteStackBlock;
  v8[2] = 3221225472;
  v8[3] = sub_4E58;
  v8[4] = &unk_5D030;
  v9 = v18;
  v10 = [SUSUIFullScreenAuthenticationAlert initWithDescriptor:v2 autoInstallForecast:"initWithDescriptor:autoInstallForecast:forInstallTonight:canDeferInstallation:completionQueue:completionBlock:" forInstallTonight:descriptor canDeferInstallation:? completionQueue:? completionBlock:?];

  softwareUpdateController2 = [v19[0] softwareUpdateController];
  v6 = v10;
  v8[0] = v19[0];
  [softwareUpdateController2 presentFullScreenAlert:v6 completion:?];

  objc_storeStrong(v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v19, 0);
}

- (void)downloadAndInstallLater
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = self;
  v2 = [SUDownloadOptions alloc];
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy descriptor];
  v12 = [v2 initWithDescriptor:?];

  [v12 setDownloadOnly:1];
  [v12 setUserUpdateTonight:1];
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy softwareUpdateController];
  v4 = v12;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_50B0;
  v9 = &unk_5D080;
  v10 = v13[0];
  v11 = selfCopy;
  [(SUSUISoftwareUpdateController *)softwareUpdateController startDownloadWithOptions:v4 withResult:?];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
}

- (void)_activateInstallLaterAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v25 = SUSUILog();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    log = v25;
    type = v24;
    v3 = objc_opt_class();
    v14 = NSStringFromClass(v3);
    v23 = v14;
    sub_4B94(v28, v23);
    _os_log_impl(&dword_0, log, type, "[%{public}@] Showing install tonight alert.", v28, 0xCu);

    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&v25, 0);
  v22 = selfCopy;
  v10 = +[SUKeybagInterface sharedInstance];
  hasPasscodeSet = [(SUKeybagInterface *)v10 hasPasscodeSet];

  if (hasPasscodeSet)
  {
    softwareUpdateController = [v22 softwareUpdateController];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_58AC;
    v20 = &unk_5D0A8;
    v21 = v22;
    [softwareUpdateController _presentAuthenticationUIForInstallation:&v16 withInstallType:1 withInstallOperationForecast:location[0]];

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v4 = [SUSUISoftwareUpdateInstallLaterAlertItem alloc];
    descriptor = [v22 descriptor];
    softwareUpdateController2 = [v22 softwareUpdateController];
    v15 = [SUSUISoftwareUpdateInstallLaterAlertItem initWithDescriptor:v4 softwareUpdateController:"initWithDescriptor:softwareUpdateController:tryTonightOperationForecast:" tryTonightOperationForecast:descriptor];

    softwareUpdateController3 = [v22 softwareUpdateController];
    alertPresentationManager = [softwareUpdateController3 alertPresentationManager];
    [alertPresentationManager presentAlert:v15 animated:1];

    [v22 dismissAlert];
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

@end