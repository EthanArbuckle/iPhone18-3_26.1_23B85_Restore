@interface WatchEnrollmentApplicator
+ (id)supportedConfigurationTypes;
- (WatchEnrollmentApplicator)init;
@end

@implementation WatchEnrollmentApplicator

- (WatchEnrollmentApplicator)init
{
  v3 = objc_opt_new();
  v4 = [(WatchEnrollmentApplicator *)self initWithAdapter:v3];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = +[RMModelWatchEnrollmentDeclaration registeredIdentifier];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

@end