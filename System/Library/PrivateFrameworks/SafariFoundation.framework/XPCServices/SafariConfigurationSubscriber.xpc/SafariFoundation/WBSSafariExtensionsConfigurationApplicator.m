@interface WBSSafariExtensionsConfigurationApplicator
+ (id)supportedConfigurationClasses;
+ (id)supportedConfigurationClassesArray;
+ (id)supportedConfigurationTypes;
- (WBSSafariExtensionsConfigurationApplicator)init;
@end

@implementation WBSSafariExtensionsConfigurationApplicator

- (WBSSafariExtensionsConfigurationApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(WBSSafariExtensionsConfigurationApplicator *)self initWithAdapter:v3];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelSafariExtensionSettingsDeclaration registeredIdentifier];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

+ (id)supportedConfigurationClasses
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (id)supportedConfigurationClassesArray
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end