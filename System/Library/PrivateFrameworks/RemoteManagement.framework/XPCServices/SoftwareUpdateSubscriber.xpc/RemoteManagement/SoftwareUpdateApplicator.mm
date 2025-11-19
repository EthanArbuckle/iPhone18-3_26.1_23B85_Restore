@interface SoftwareUpdateApplicator
+ (id)supportedConfigurationTypes;
- (SoftwareUpdateApplicator)init;
@end

@implementation SoftwareUpdateApplicator

- (SoftwareUpdateApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(SoftwareUpdateApplicator *)self initWithAdapter:v3 inPlaceUpdates:0];

  [(SoftwareUpdateApplicator *)v4 setRemoveBeforeApply:1];
  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelSoftwareUpdateEnforcementSpecificDeclaration registeredIdentifier];
  v3 = [NSSet setWithObjects:v2, 0];

  return v3;
}

@end