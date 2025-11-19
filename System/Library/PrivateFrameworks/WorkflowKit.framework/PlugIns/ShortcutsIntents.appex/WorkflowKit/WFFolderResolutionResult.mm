@interface WFFolderResolutionResult
+ (id)confirmationRequiredWithFolderToConfirm:(id)a3;
+ (id)disambiguationWithFoldersToDisambiguate:(id)a3;
+ (id)successWithResolvedFolder:(id)a3;
@end

@implementation WFFolderResolutionResult

+ (id)confirmationRequiredWithFolderToConfirm:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", a3);

  return v3;
}

+ (id)disambiguationWithFoldersToDisambiguate:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", a3);

  return v3;
}

+ (id)successWithResolvedFolder:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", a3);

  return v3;
}

@end