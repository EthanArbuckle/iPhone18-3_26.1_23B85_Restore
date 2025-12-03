@interface AccountResolutionResult
+ (id)confirmationRequiredWithAccountToConfirm:(id)confirm;
+ (id)disambiguationWithAccountsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedAccount:(id)account;
@end

@implementation AccountResolutionResult

+ (id)successWithResolvedAccount:(id)account
{
  swift_getObjCClassMetadata();
  accountCopy = account;
  v5 = static AccountResolutionResult.success(with:)(accountCopy);

  return v5;
}

+ (id)disambiguationWithAccountsToDisambiguate:(id)disambiguate
{
  type metadata accessor for Account();
  v3 = sub_266E9D0C4();
  swift_getObjCClassMetadata();
  v4 = static AccountResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithAccountToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static AccountResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_266E99920();
  sub_266E9D0C4();
  static AccountResolutionResult.disambiguation(with:)();
}

@end