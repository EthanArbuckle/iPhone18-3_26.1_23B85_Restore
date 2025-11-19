@interface IdentityResolutionResult
+ (id)confirmationRequiredWithIdentityToConfirm:(id)a3;
+ (id)disambiguationWithIdentitysToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedIdentity:(id)a3;
@end

@implementation IdentityResolutionResult

+ (id)successWithResolvedIdentity:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static IdentityResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithIdentitysToDisambiguate:(id)a3
{
  type metadata accessor for Identity();
  v3 = sub_266E9D0C4();
  swift_getObjCClassMetadata();
  v4 = static IdentityResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithIdentityToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static IdentityResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266E99920();
  sub_266E9D0C4();
  static IdentityResolutionResult.disambiguation(with:)();
}

@end