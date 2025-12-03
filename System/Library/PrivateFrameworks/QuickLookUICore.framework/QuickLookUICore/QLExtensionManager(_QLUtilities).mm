@interface QLExtensionManager(_QLUtilities)
+ (id)extensionForItem:()_QLUtilities;
+ (id)ql_applicationBundleIdentifierOfExtensionForItem:()_QLUtilities;
+ (id)ql_previewExtensionCustomLoadingTimeForItem:()_QLUtilities;
+ (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationViewForItem:()_QLUtilities;
@end

@implementation QLExtensionManager(_QLUtilities)

+ (id)extensionForItem:()_QLUtilities
{
  v3 = MEMORY[0x277D43E98];
  v4 = a3;
  sharedManager = [v3 sharedManager];
  previewItemContentType = [v4 previewItemContentType];

  LOBYTE(v9) = 1;
  v7 = [sharedManager extensionForContentType:previewItemContentType allowExtensionsForParentTypes:0 applicationBundleIdentifier:0 extensionPath:0 extensionType:0 generationType:1 shouldUseRestrictedExtension:v9];

  return v7;
}

+ (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationViewForItem:()_QLUtilities
{
  v1 = [self extensionForItem:?];
  ql_isPreviewExtensionThatHaveCustomPresentationView = [v1 ql_isPreviewExtensionThatHaveCustomPresentationView];

  return ql_isPreviewExtensionThatHaveCustomPresentationView;
}

+ (id)ql_previewExtensionCustomLoadingTimeForItem:()_QLUtilities
{
  v1 = [self extensionForItem:?];
  ql_previewExtensionCustomLoadingTime = [v1 ql_previewExtensionCustomLoadingTime];

  return ql_previewExtensionCustomLoadingTime;
}

+ (id)ql_applicationBundleIdentifierOfExtensionForItem:()_QLUtilities
{
  v1 = [self extensionForItem:?];
  qL_parentBundleID = [v1 QL_parentBundleID];

  return qL_parentBundleID;
}

@end