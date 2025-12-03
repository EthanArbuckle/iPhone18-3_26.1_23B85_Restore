@interface IdentityResolutionResult
+ (id)confirmationRequiredWithIdentityToConfirm:(id)confirm;
+ (id)disambiguationWithIdentitysToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedIdentity:(id)identity;
@end

@implementation IdentityResolutionResult

+ (id)successWithResolvedIdentity:(id)identity
{
  swift_getObjCClassMetadata();
  identityCopy = identity;
  v5 = static IdentityResolutionResult.success(with:)(identityCopy);

  return v5;
}

+ (id)disambiguationWithIdentitysToDisambiguate:(id)disambiguate
{
  type metadata accessor for Identity();
  v3 = sub_266E9D0C4();
  swift_getObjCClassMetadata();
  v4 = static IdentityResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithIdentityToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static IdentityResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266E99920();
  sub_266E9D0C4();
  static IdentityResolutionResult.disambiguation(with:)();
}

@end