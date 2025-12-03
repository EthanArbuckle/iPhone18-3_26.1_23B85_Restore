@interface SUSUIBaseRollbackAlertItem
+ (void)activateAlertItem:(id)item;
- (SUSUIBaseRollbackAlertItem)initWithRollbackDescriptor:(id)descriptor softwareUpdateController:(id)controller;
- (id)updateName;
- (void)dismissAlert;
@end

@implementation SUSUIBaseRollbackAlertItem

- (SUSUIBaseRollbackAlertItem)initWithRollbackDescriptor:(id)descriptor softwareUpdateController:(id)controller
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
  v9.super_class = SUSUIBaseRollbackAlertItem;
  v8 = [(SUSUIBaseAlertItem *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong((&selfCopy->super._isUILocked + 1), location[0]);
    objc_storeStrong((&selfCopy->_rollbackDescriptor + 1), v10);
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
  v2.super_class = SUSUIBaseRollbackAlertItem;
  [(SUSUIBaseAlertItem *)&v2 dismissAlert];
}

- (id)updateName
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v2 = [location objectForKeyedSubscript:_kCFSystemVersionShortVersionStringKey];
    v3 = v7[0];
    v7[0] = v2;
  }

  v5 = v7[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

@end