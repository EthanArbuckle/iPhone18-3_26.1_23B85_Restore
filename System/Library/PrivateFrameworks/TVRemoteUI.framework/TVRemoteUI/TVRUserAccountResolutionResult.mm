@interface TVRUserAccountResolutionResult
+ (id)confirmationRequiredWithUserAccountToConfirm:(id)confirm;
+ (id)disambiguationWithUserAccountsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedUserAccount:(id)account;
@end

@implementation TVRUserAccountResolutionResult

+ (id)successWithResolvedUserAccount:(id)account
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, account);

  return v3;
}

+ (id)disambiguationWithUserAccountsToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, disambiguate);

  return v3;
}

+ (id)confirmationRequiredWithUserAccountToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, confirm);

  return v3;
}

@end