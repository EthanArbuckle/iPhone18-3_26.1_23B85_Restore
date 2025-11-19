@interface ManagementTestApplicator
+ (id)supportedConfigurationTypes;
- (ManagementTestApplicator)init;
@end

@implementation ManagementTestApplicator

- (ManagementTestApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(ManagementTestApplicator *)self initWithAdapter:v3 inPlaceUpdates:1];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelManagementTestDeclaration registeredIdentifier];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

@end