@interface SUSUISoftwareUpdateRollbackFailureAlertItem
- (SUSUISoftwareUpdateRollbackFailureAlertItem)initWithRollbackDescriptor:(id)descriptor softwareUpdateController:(id)controller error:(id)error;
- (id)_okButton;
- (id)_setupDefinition;
- (id)buttons;
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateRollbackFailureAlertItem

- (SUSUISoftwareUpdateRollbackFailureAlertItem)initWithRollbackDescriptor:(id)descriptor softwareUpdateController:(id)controller error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v15 = 0;
  objc_storeStrong(&v15, controller);
  v14 = 0;
  objc_storeStrong(&v14, error);
  v5 = selfCopy;
  selfCopy = 0;
  v13.receiver = v5;
  v13.super_class = SUSUISoftwareUpdateRollbackFailureAlertItem;
  v12 = [(SUSUIBaseRollbackAlertItem *)&v13 initWithRollbackDescriptor:location[0] softwareUpdateController:v15];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    _setupDefinition = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)selfCopy _setupDefinition];
    v7 = *(&selfCopy->super._controller + 1);
    *(&selfCopy->super._controller + 1) = _setupDefinition;

    objc_storeStrong((&selfCopy->_controller + 1), v14);
  }

  v9 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
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
    v4 = [v13[0] stringByAppendingFormat:@"\n\nInternal Only:\n%@", *(&selfCopy->_controller + 1)];
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
  selfCopy = self;
  v6[1] = a2;
  v6[0] = +[NSMutableArray array];
  v3 = v6[0];
  _okButton = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)selfCopy _okButton];
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
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_1E970();
  v7 = [v8 localizedStringForKey:@"OK" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:0 isPreferredButton:1 handler:?];
  v4 = v14[0];
  v14[0] = v3;

  v9 = v14[0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&selfCopy, 0);
  objc_storeStrong(v14, 0);

  return v9;
}

- (id)_setupDefinition
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = 0;
  v5 = [SUSUIAlertItemDefinition alloc];
  title = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)selfCopy title];
  message = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)selfCopy message];
  buttons = [(SUSUISoftwareUpdateRollbackFailureAlertItem *)selfCopy buttons];
  v2 = [(SUSUIAlertItemDefinition *)v5 initWithTitle:title message:message buttons:?];
  v3 = v10[0];
  v10[0] = v2;

  v9 = v10[0];
  objc_storeStrong(v10, 0);

  return v9;
}

@end