@interface SUSUISoftwareUpdateRollbackFailureAlertItem
- (SUSUISoftwareUpdateRollbackFailureAlertItem)initWithRollbackDescriptor:(id)a3 softwareUpdateController:(id)a4 error:(id)a5;
- (id)_okButton;
- (id)_setupDefinition;
- (id)buttons;
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateRollbackFailureAlertItem

- (SUSUISoftwareUpdateRollbackFailureAlertItem)initWithRollbackDescriptor:(id)a3 softwareUpdateController:(id)a4 error:(id)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v5 = v17;
  v17 = 0;
  v13.receiver = v5;
  v13.super_class = SUSUISoftwareUpdateRollbackFailureAlertItem;
  v12 = [(SUSUIBaseRollbackAlertItem *)&v13 initWithRollbackDescriptor:location[0] softwareUpdateController:v15];
  v17 = v12;
  objc_storeStrong(&v17, v12);
  if (v12)
  {
    v6 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v17 _setupDefinition];
    v7 = *(&v17->super._controller + 1);
    *(&v17->super._controller + 1) = v6;

    objc_storeStrong((&v17->_controller + 1), v14);
  }

  v9 = v17;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v9;
}

- (id)title
{
  v3 = sub_1E970();
  v4 = [v3 localizedStringForKey:@"SOFTWARE_UPDATE_ROLLBACK_FAILURE_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

- (id)message
{
  v14 = self;
  v13[1] = a2;
  v13[0] = 0;
  location = _CFCopySupplementalVersionDictionary();
  if (location)
  {
    v11 = sub_1E970();
    v10 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_ROLLBACK_FAILURE_ALERT_BODY"];
    v9 = [v11 localizedStringForKey:? value:? table:?];
    v8 = [location objectForKeyedSubscript:_kCFSystemVersionShortVersionStringKey];
    v2 = [NSString stringWithFormat:v9, v8];
    v3 = v13[0];
    v13[0] = v2;
  }

  if (_BSIsInternalInstall())
  {
    v4 = [v13[0] stringByAppendingFormat:@"\n\nInternal Only:\n%@", *(&v14->_controller + 1)];
    v5 = v13[0];
    v13[0] = v4;
  }

  v7 = v13[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);

  return v7;
}

- (id)buttons
{
  v7 = self;
  v6[1] = a2;
  v6[0] = +[NSMutableArray array];
  v3 = v6[0];
  v4 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v7 _okButton];
  [v3 addObject:?];

  v5 = [v6[0] copy];
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_okButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_1E970();
  v7 = [v8 localizedStringForKey:@"OK" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = v13;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:1 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (id)_setupDefinition
{
  v11 = self;
  v10[1] = a2;
  v10[0] = 0;
  v5 = [SUSUIAlertItemDefinition alloc];
  v8 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v11 title];
  v7 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v11 message];
  v6 = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)v11 buttons];
  v2 = [(SUSUIAlertItemDefinition *)v5 initWithTitle:v8 message:v7 buttons:?];
  v3 = v10[0];
  v10[0] = v2;

  v9 = v10[0];
  objc_storeStrong(v10, 0);

  return v9;
}

@end