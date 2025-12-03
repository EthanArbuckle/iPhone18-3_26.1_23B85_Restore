@interface SUSUIBaseSoftwareUpdateAlertItem
+ (void)activateAlertItem:(id)item;
- (SUSUIBaseSoftwareUpdateAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller;
- (void)activateDisplayWithURL:(id)l;
- (void)activateSoftwareUpdateSettingsDisplay;
- (void)dismissAlert;
@end

@implementation SUSUIBaseSoftwareUpdateAlertItem

- (SUSUIBaseSoftwareUpdateAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v10 = 0;
  objc_storeStrong(&v10, controller);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUSUIBaseSoftwareUpdateAlertItem;
  v8 = [(SUSUIBaseAlertItem *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong((&selfCopy->super._isUILocked + 1), location[0]);
    objc_storeStrong((&selfCopy->_descriptor + 1), v10);
  }

  v6 = selfCopy;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

+ (void)activateAlertItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_storeStrong(location, 0);
}

- (void)dismissAlert
{
  selfCopy = self;
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

- (void)activateDisplayWithURL:(id)l
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
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