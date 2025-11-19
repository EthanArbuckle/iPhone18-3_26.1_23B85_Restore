@interface PersonRoleResolutionResult
+ (id)confirmationRequiredWithPersonRoleToConfirm:(int64_t)a3;
+ (id)successWithResolvedPersonRole:(int64_t)a3;
@end

@implementation PersonRoleResolutionResult

+ (id)successWithResolvedPersonRole:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PersonRoleResolutionResult.success(with:)(a3);

  return v4;
}

+ (id)confirmationRequiredWithPersonRoleToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static PersonRoleResolutionResult.confirmationRequired(with:)(a3);

  return v4;
}

@end