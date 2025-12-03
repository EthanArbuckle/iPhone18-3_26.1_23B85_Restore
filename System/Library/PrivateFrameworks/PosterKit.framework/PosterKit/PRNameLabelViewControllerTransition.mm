@interface PRNameLabelViewControllerTransition
- (PRNameLabelViewControllerTransition)initWithViewController:(id)controller fromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration;
@end

@implementation PRNameLabelViewControllerTransition

- (PRNameLabelViewControllerTransition)initWithViewController:(id)controller fromVibrancyConfiguration:(id)configuration toVibrancyConfiguration:(id)vibrancyConfiguration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  vibrancyConfigurationCopy = vibrancyConfiguration;
  v15.receiver = self;
  v15.super_class = PRNameLabelViewControllerTransition;
  v12 = [(PRNameLabelViewControllerTransition *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewController, controller);
    objc_storeStrong(&v13->_fromConfiguration, configuration);
    objc_storeStrong(&v13->_toConfiguration, vibrancyConfiguration);
  }

  return v13;
}

@end