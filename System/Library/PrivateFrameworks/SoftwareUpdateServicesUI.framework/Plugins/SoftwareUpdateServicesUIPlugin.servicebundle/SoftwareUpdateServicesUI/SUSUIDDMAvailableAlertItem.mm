@interface SUSUIDDMAvailableAlertItem
- (SUSUIDDMAvailableAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller alertWindow:(unint64_t)window;
- (id)allowedApps;
- (id)buttons;
- (id)message;
- (id)title;
@end

@implementation SUSUIDDMAvailableAlertItem

- (SUSUIDDMAvailableAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller alertWindow:(unint64_t)window
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v13 = 0;
  objc_storeStrong(&v13, controller);
  windowCopy = window;
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = SUSUIDDMAvailableAlertItem;
  v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v11 initWithDescriptor:location[0] softwareUpdateController:v13];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    *(&selfCopy->super.super._controller + 1) = windowCopy;
  }

  else
  {
    *(&selfCopy->super.super._controller + 1) = 0;
  }

  v7 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)title
{
  v3 = sub_C5A4();
  v4 = [v3 localizedStringForKey:@"MANAGED_UPDATE" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

- (id)message
{
  selfCopy = self;
  v8[1] = a2;
  softwareUpdateController = [(SUSUIBaseSoftwareUpdateAlertItem *)self softwareUpdateController];
  v8[0] = [(SUSUISoftwareUpdateController *)softwareUpdateController ddmController];

  v4 = v8[0];
  updateName = [(SUSUIBaseSoftwareUpdateAlertItem *)selfCopy updateName];
  v7 = [v4 alertBodyLocallizedStrWithUpdateName:?];

  v6 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v6;
}

- (id)buttons
{
  v12[2] = self;
  v12[1] = a2;
  v12[0] = 0;
  selfCopy = self;
  v5 = [SUSUIAlertButtonDefinition alloc];
  v7 = sub_C5A4();
  v6 = [v7 localizedStringForKey:@"SOFTWARE_UPDATE_AVAILABLE_ALERT_ACTION_DETAILS" value:&stru_62DF0 table:@"ui_alerts"];
  v9 = selfCopy;
  v10 = [(SUSUIAlertButtonDefinition *)v5 initWithLabel:v6 presentationStyle:2 isPreferredButton:1 handler:?];

  v13 = v10;
  v2 = [NSArray arrayWithObjects:&v13 count:1];
  v3 = v12[0];
  v12[0] = v2;

  v8 = v12[0];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&selfCopy, 0);
  objc_storeStrong(v12, 0);

  return v8;
}

- (id)allowedApps
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = &off_65610;
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

@end