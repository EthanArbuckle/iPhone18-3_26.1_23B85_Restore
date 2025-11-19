@interface SoftwareUpdateSettingsApplicator
+ (id)supportedConfigurationTypes;
- (SoftwareUpdateSettingsApplicator)init;
@end

@implementation SoftwareUpdateSettingsApplicator

- (SoftwareUpdateSettingsApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(SoftwareUpdateSettingsApplicator *)self initWithAdapter:v3];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelSoftwareUpdateSettingsDeclaration registeredIdentifier];
  v3 = [NSSet setWithObjects:v2, 0];

  return v3;
}

@end