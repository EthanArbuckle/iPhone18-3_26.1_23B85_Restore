@interface SUSUIRollbackSuggestedAlertItem
- (SUSUIRollbackSuggestedAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 info:(id)a5;
- (id)_notificationMessage;
- (id)_notificationTitle;
- (id)buttons;
@end

@implementation SUSUIRollbackSuggestedAlertItem

- (SUSUIRollbackSuggestedAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4 info:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSUIRollbackSuggestedAlertItem;
  v10 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v11 initWithDescriptor:location[0] softwareUpdateController:v13];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong((&v15->super._controller + 1), v12);
  }

  v7 = v15;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)buttons
{
  v23[2] = self;
  v23[1] = a2;
  v23[0] = 0;
  v22 = 0;
  v21 = self;
  v20 = +[NSMutableArray array];
  v7 = [SUSUIAlertButtonDefinition alloc];
  v9 = sub_42C48();
  v8 = [v9 localizedStringForKey:@"ROLLBACK_SUGGESTED_ALERT_SETTINGS_BUTTON" value:? table:?];
  v14[1] = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_42950;
  v18 = &unk_5CCB0;
  v19 = v21;
  v2 = [(SUSUIAlertButtonDefinition *)v7 initWithLabel:v8 presentationStyle:0 isPreferredButton:1 handler:?];
  v3 = v23[0];
  v23[0] = v2;

  [v20 addObject:v23[0]];
  v10 = [SUSUIAlertButtonDefinition alloc];
  v12 = sub_42C48();
  v11 = [v12 localizedStringForKey:@"ROLLBACK_SUGGESTED_ALERT_NOT_NOW_BUTTON" value:&stru_62DF0 table:@"ui_alerts"];
  v14[0] = v21;
  v4 = [(SUSUIAlertButtonDefinition *)v10 initWithLabel:v11 presentationStyle:2 isPreferredButton:0 handler:?];
  v5 = v22;
  v22 = v4;

  [v20 addObject:v22];
  v13 = [v20 copy];
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);

  return v13;
}

- (id)_notificationTitle
{
  v4 = sub_42C48();
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ROLLBACK_SUGGESTED_ALERT_TITLE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];

  return v5;
}

- (id)_notificationMessage
{
  v4 = sub_42C48();
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ROLLBACK_SUGGESTED_ALERT_MESSAGE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];

  return v5;
}

@end