@interface SUSUISoftwareUpdateRecommendedAvailableAlertItem
- (SUSUISoftwareUpdateRecommendedAvailableAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4;
- (id)buttons;
- (id)learnMoreButton;
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateRecommendedAvailableAlertItem

- (SUSUISoftwareUpdateRecommendedAvailableAlertItem)initWithDescriptor:(id)a3 softwareUpdateController:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = SUSUISoftwareUpdateRecommendedAvailableAlertItem;
  v11 = [(SUSUIBaseSoftwareUpdateAlertItem *)&v8 initWithDescriptor:location[0] softwareUpdateController:v9];
  v7 = v11;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (id)title
{
  v8 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v7 = [(SUDescriptor *)v8 documentation];
  v9 = [v7 recommendedUpdateTitleString];

  if (v9)
  {
    v6 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    v5 = [(SUDescriptor *)v6 documentation];
    v11 = [v5 recommendedUpdateTitleString];
  }

  else
  {
    v4 = sub_3813C();
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_DEFAULT_TITLE"];
    v11 = [v4 localizedStringForKey:? value:? table:?];
  }

  return v11;
}

- (id)message
{
  v8 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  v7 = [(SUDescriptor *)v8 documentation];
  v9 = [v7 recommendedUpdateAlertBodyString];

  if (v9)
  {
    v6 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    v5 = [(SUDescriptor *)v6 documentation];
    v11 = [v5 recommendedUpdateAlertBodyString];
  }

  else
  {
    v4 = sub_3813C();
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_DEFAULT_MESSAGE"];
    v11 = [v4 localizedStringForKey:? value:? table:?];
  }

  return v11;
}

- (id)buttons
{
  v3 = [(SUSUISoftwareUpdateRecommendedAvailableAlertItem *)self learnMoreButton];
  v5 = v3;
  v4 = [NSArray arrayWithObjects:&v5 count:1];

  return v4;
}

- (id)learnMoreButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_3813C();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_ACTION_LEARN_MORE" value:&stru_62DF0 table:@"ui_alerts"];
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

@end