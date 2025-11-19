@interface SUSUIBaseRollbackAlertItem
+ (void)activateAlertItem:(id)a3;
- (SUSUIBaseRollbackAlertItem)initWithRollbackDescriptor:(id)a3 softwareUpdateController:(id)a4;
- (id)updateName;
- (void)dismissAlert;
@end

@implementation SUSUIBaseRollbackAlertItem

- (SUSUIBaseRollbackAlertItem)initWithRollbackDescriptor:(id)a3 softwareUpdateController:(id)a4
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
  v9.super_class = SUSUIBaseRollbackAlertItem;
  v8 = [(SUSUIBaseAlertItem *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong((&v12->super._isUILocked + 1), location[0]);
    objc_storeStrong((&v12->_rollbackDescriptor + 1), v10);
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