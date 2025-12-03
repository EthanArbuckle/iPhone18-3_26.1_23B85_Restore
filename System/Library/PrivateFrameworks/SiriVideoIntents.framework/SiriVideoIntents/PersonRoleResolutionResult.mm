@interface PersonRoleResolutionResult
+ (id)confirmationRequiredWithPersonRoleToConfirm:(int64_t)confirm;
+ (id)successWithResolvedPersonRole:(int64_t)role;
@end

@implementation PersonRoleResolutionResult

+ (id)successWithResolvedPersonRole:(int64_t)role
{
  swift_getObjCClassMetadata();
  v4 = static PersonRoleResolutionResult.success(with:)(role);

  return v4;
}

+ (id)confirmationRequiredWithPersonRoleToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = static PersonRoleResolutionResult.confirmationRequired(with:)(confirm);

  return v4;
}

@end