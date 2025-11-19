@interface TVRUserAccountResolutionResult
+ (id)confirmationRequiredWithUserAccountToConfirm:(id)a3;
+ (id)disambiguationWithUserAccountsToDisambiguate:(id)a3;
+ (id)successWithResolvedUserAccount:(id)a3;
@end

@implementation TVRUserAccountResolutionResult

+ (id)successWithResolvedUserAccount:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a3);

  return v3;
}

+ (id)disambiguationWithUserAccountsToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, a3);

  return v3;
}

+ (id)confirmationRequiredWithUserAccountToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TVRUserAccountResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_confirmationRequiredWithObjectToConfirm_, a3);

  return v3;
}

@end