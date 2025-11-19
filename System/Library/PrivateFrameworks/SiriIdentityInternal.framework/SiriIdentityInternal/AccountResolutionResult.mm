@interface AccountResolutionResult
+ (id)confirmationRequiredWithAccountToConfirm:(id)a3;
+ (id)disambiguationWithAccountsToDisambiguate:(id)a3;
+ (id)disambiguationWithObjectsToDisambiguate:(id)a3;
+ (id)successWithResolvedAccount:(id)a3;
@end

@implementation AccountResolutionResult

+ (id)successWithResolvedAccount:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AccountResolutionResult.success(with:)(v4);

  return v5;
}

+ (id)disambiguationWithAccountsToDisambiguate:(id)a3
{
  type metadata accessor for Account();
  v3 = sub_266E9D0C4();
  swift_getObjCClassMetadata();
  v4 = static AccountResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithAccountToConfirm:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AccountResolutionResult.confirmationRequired(with:)(a3);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)a3
{
  sub_266E99920();
  sub_266E9D0C4();
  static AccountResolutionResult.disambiguation(with:)();
}

@end