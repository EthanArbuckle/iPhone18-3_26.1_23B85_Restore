@interface SUSUIRollbackCountdownAlertItem
- (id)_cancelButton;
- (id)_rebootNowButton;
- (id)buttons;
- (id)extensionDictionary;
- (id)title;
- (void)cancel;
- (void)reboot;
@end

@implementation SUSUIRollbackCountdownAlertItem

- (id)extensionDictionary
{
  v14[2] = self;
  v14[1] = a2;
  v15[0] = @"ExtensionAlertKeyHumanReadableUpdateName";
  updateName = [(SUSUIBaseRollbackAlertItem *)self updateName];
  v16[0] = updateName;
  v15[1] = @"ExtensionAlertKeySingularText";
  v10 = sub_422E4();
  v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ROLLBACK_ALERT_COUNTDOWN_ALERT_BODY_SINGULAR"];
  v8 = [v10 localizedStringForKey:? value:? table:?];
  v16[1] = v8;
  v15[2] = @"ExtensionAlertKeyPluralText";
  v7 = sub_422E4();
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ROLLBACK_ALERT_COUNTDOWN_ALERT_BODY_PLURAL"];
  v5 = [v7 localizedStringForKey:? value:? table:?];
  v16[2] = v5;
  v15[3] = @"ExtensionAlertKeyCompletionAction";
  v16[3] = @"ExtensionAlertKeyCompletionActionReboot";
  v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v14[0] = [NSMutableDictionary dictionaryWithDictionary:?];

  v12 = +[SUSUIPreferences sharedInstance];
  location = [(SUSUIPreferences *)v12 restartCountdownOverrideIntervalSeconds];

  if (location)
  {
    [v14[0] setSafeObject:location forKey:@"ExtensionAlertKeyCountdown"];
  }

  v3 = v14[0];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)title
{
  v3 = sub_422E4();
  v4 = [v3 localizedStringForKey:@"ROLLBACK_ALERT_COUNTDOWN_ALERT_TITLE" value:&stru_62DF0 table:@"ui_alerts"];

  return v4;
}

- (id)buttons
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = +[NSMutableArray array];
  v3 = v8[0];
  _rebootNowButton = [(SUSUIRollbackCountdownAlertItem *)selfCopy _rebootNowButton];
  [v3 addObject:?];

  v5 = v8[0];
  _cancelButton = [(SUSUIRollbackCountdownAlertItem *)selfCopy _cancelButton];
  [v5 addObject:?];

  v7 = [v8[0] copy];
  objc_storeStrong(v8, 0);

  return v7;
}

- (id)_rebootNowButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_422E4();
  v7 = [v8 localizedStringForKey:@"ROLLBACK_ALERT_COUNTDOWN_ALERT_BUTTON_REBOOT_NOW" value:&stru_62DF0 table:@"ui_alerts"];
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

- (id)_cancelButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_422E4();
  v7 = [v8 localizedStringForKey:@"CANCEL" value:&stru_62DF0 table:@"ui_alerts"];
  v10 = v12;
  v11 = selfCopy;
  v3 = [(SUSUIAlertButtonDefinition *)v6 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:?];
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

- (void)reboot
{
  softwareUpdateController = [(SUSUIBaseRollbackAlertItem *)self softwareUpdateController];
  rollbackDescriptor = [(SUSUIBaseRollbackAlertItem *)self rollbackDescriptor];
  [(SUSUISoftwareUpdateController *)softwareUpdateController rollbackCompleted:?];
}

- (void)cancel
{
  softwareUpdateController = [(SUSUIBaseRollbackAlertItem *)self softwareUpdateController];
  [(SUSUISoftwareUpdateController *)softwareUpdateController cancelRollback];
}

@end