@interface SUSUISoftwareUpdateRecommendedAvailableAlertItem
- (SUSUISoftwareUpdateRecommendedAvailableAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller;
- (id)buttons;
- (id)learnMoreButton;
- (id)message;
- (id)title;
@end

@implementation SUSUISoftwareUpdateRecommendedAvailableAlertItem

- (SUSUISoftwareUpdateRecommendedAvailableAlertItem)initWithDescriptor:(id)descriptor softwareUpdateController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v9 = 0;
  objc_storeStrong(&v9, controller);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = SUSUISoftwareUpdateRecommendedAvailableAlertItem;
  selfCopy = [(SUSUIBaseSoftwareUpdateAlertItem *)&v8 initWithDescriptor:location[0] softwareUpdateController:v9];
  v7 = selfCopy;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)title
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  documentation = [(SUDescriptor *)descriptor documentation];
  recommendedUpdateTitleString = [documentation recommendedUpdateTitleString];

  if (recommendedUpdateTitleString)
  {
    descriptor2 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    documentation2 = [(SUDescriptor *)descriptor2 documentation];
    recommendedUpdateTitleString2 = [documentation2 recommendedUpdateTitleString];
  }

  else
  {
    v4 = sub_3813C();
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_DEFAULT_TITLE"];
    recommendedUpdateTitleString2 = [v4 localizedStringForKey:? value:? table:?];
  }

  return recommendedUpdateTitleString2;
}

- (id)message
{
  descriptor = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
  documentation = [(SUDescriptor *)descriptor documentation];
  recommendedUpdateAlertBodyString = [documentation recommendedUpdateAlertBodyString];

  if (recommendedUpdateAlertBodyString)
  {
    descriptor2 = [(SUSUIBaseSoftwareUpdateAlertItem *)self descriptor];
    documentation2 = [(SUDescriptor *)descriptor2 documentation];
    recommendedUpdateAlertBodyString2 = [documentation2 recommendedUpdateAlertBodyString];
  }

  else
  {
    v4 = sub_3813C();
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_DEFAULT_MESSAGE"];
    recommendedUpdateAlertBodyString2 = [v4 localizedStringForKey:? value:? table:?];
  }

  return recommendedUpdateAlertBodyString2;
}

- (id)buttons
{
  learnMoreButton = [(SUSUISoftwareUpdateRecommendedAvailableAlertItem *)self learnMoreButton];
  v5 = learnMoreButton;
  v4 = [NSArray arrayWithObjects:&v5 count:1];

  return v4;
}

- (id)learnMoreButton
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  selfCopy = self;
  v2 = objc_opt_class();
  v12 = NSStringFromClass(v2);
  v6 = [SUSUIAlertButtonDefinition alloc];
  v8 = sub_3813C();
  v7 = [v8 localizedStringForKey:@"SOFTWARE_UPDATE_RECOMMENDED_AVAILABLE_ACTION_LEARN_MORE" value:&stru_62DF0 table:@"ui_alerts"];
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

@end