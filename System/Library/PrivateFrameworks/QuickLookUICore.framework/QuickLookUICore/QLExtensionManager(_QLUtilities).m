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
  v5 = [v3 sharedManager];
  v6 = [v4 previewItemContentType];

  LOBYTE(v9) = 1;
  v7 = [v5 extensionForContentType:v6 allowExtensionsForParentTypes:0 applicationBundleIdentifier:0 extensionPath:0 extensionType:0 generationType:1 shouldUseRestrictedExtension:v9];

  return v7;
}

+ (uint64_t)ql_isPreviewExtensionThatHaveCustomPresentationViewForItem:()_QLUtilities
{
  v1 = [a1 extensionForItem:?];
  v2 = [v1 ql_isPreviewExtensionThatHaveCustomPresentationView];

  return v2;
}

+ (id)ql_previewExtensionCustomLoadingTimeForItem:()_QLUtilities
{
  v1 = [a1 extensionForItem:?];
  v2 = [v1 ql_previewExtensionCustomLoadingTime];

  return v2;
}

+ (id)ql_applicationBundleIdentifierOfExtensionForItem:()_QLUtilities
{
  v1 = [a1 extensionForItem:?];
  v2 = [v1 QL_parentBundleID];

  return v2;
}

@end