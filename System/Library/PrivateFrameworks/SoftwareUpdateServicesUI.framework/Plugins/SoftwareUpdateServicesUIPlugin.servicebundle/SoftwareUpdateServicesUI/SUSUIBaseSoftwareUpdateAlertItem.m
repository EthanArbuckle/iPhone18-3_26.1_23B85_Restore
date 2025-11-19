@interface SUSUIBaseSoftwareUpdateAlertItem
+ (void)activateAlertItem:(id)a3;
- (SUSUIBaseSoftwareUpdateAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4;
- (void)activateDisplayWithURL:(id)a3;
- (void)activateSoftwareUpdateSettingsDisplay;
- (void)dismissAlert;
@end

@implementation SUSUIBaseSoftwareUpdateAlertItem

- (SUSUIBaseSoftwareUpdateAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = SUSUIBaseSoftwareUpdateAlertItem;
  v8 = [(SUSUIBaseAlertItem *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong((&v12->super._isUILocked + 1), location[0]);
    objc_storeStrong((&v12->_descriptor + 1), v10);
  }

  v6 = v12;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

+ (void)activateAlertItem:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dismissAlert
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUIBaseSoftwareUpdateAlertItem;
  [(SUSUIBaseAlertItem *)&v2 dismissAlert];
}

- (void)activateSoftwareUpdateSettingsDisplay
{
  v3 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [(SUSUIBaseSoftwareUpdateAlertItem *)self activateDisplayWithURL:?];
}

- (void)activateDisplayWithURL:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = dispatch_get_global_queue(33, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_3670;
  v8 = &unk_5CCB0;
  v9 = location[0];
  dispatch_async(queue, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end