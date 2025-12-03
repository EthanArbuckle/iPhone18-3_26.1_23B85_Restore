@interface WFFolderResolutionResult
+ (id)confirmationRequiredWithFolderToConfirm:(id)confirm;
+ (id)disambiguationWithFoldersToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedFolder:(id)folder;
@end

@implementation WFFolderResolutionResult

+ (id)confirmationRequiredWithFolderToConfirm:(id)confirm
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "confirmationRequiredWithObjectToConfirm:", confirm);

  return v3;
}

+ (id)disambiguationWithFoldersToDisambiguate:(id)disambiguate
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", disambiguate);

  return v3;
}

+ (id)successWithResolvedFolder:(id)folder
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFFolderResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "successWithResolvedObject:", folder);

  return v3;
}

@end