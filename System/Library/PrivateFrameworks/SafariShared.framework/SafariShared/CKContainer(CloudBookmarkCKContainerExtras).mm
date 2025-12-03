@interface CKContainer(CloudBookmarkCKContainerExtras)
+ (id)_safari_containerWithIdentifier:()CloudBookmarkCKContainerExtras encryptionServiceName:environment:useApplicationBundleIdentifierOverride:;
+ (id)safari_cloudBookmarksContainer;
+ (id)safari_cloudExtensionsContainer;
+ (id)safari_cloudSettingsContainer;
+ (id)safari_cloudTabsContainer;
+ (id)safari_historyContainer;
+ (id)safari_historyManateeContainer;
+ (id)safari_scribbleFeedbackContainer;
+ (id)safari_webCompatibilityFeedbackContainer;
+ (uint64_t)_safari_containerEnvironment;
@end

@implementation CKContainer(CloudBookmarkCKContainerExtras)

+ (id)_safari_containerWithIdentifier:()CloudBookmarkCKContainerExtras encryptionServiceName:environment:useApplicationBundleIdentifierOverride:
{
  v9 = a3;
  v10 = a4;
  v11 = [objc_alloc(MEMORY[0x1E695B898]) initWithContainerIdentifier:v9 environment:a5];
  v12 = objc_alloc_init(MEMORY[0x1E695B8A8]);
  if ([v10 length])
  {
    [v12 setEncryptionServiceName:v10];
    [v12 setUseZoneWidePCS:1];
  }

  if (a6)
  {
    [v12 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v9];
    [v12 setApplicationBundleIdentifierOverrideForContainerAccess:v9];
    safari_safariApplicationPlatformBundleIdentifier = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
    [v12 setApplicationBundleIdentifierOverrideForTCC:safari_safariApplicationPlatformBundleIdentifier];
    [v12 setApplicationBundleIdentifierOverrideForNetworkAttribution:safari_safariApplicationPlatformBundleIdentifier];
    [v12 setPrefersHiddenAllowedSharingOptionsUI:1];
  }

  v14 = [objc_alloc(MEMORY[0x1E695B890]) initWithContainerID:v11 options:v12];

  return v14;
}

+ (id)safari_cloudBookmarksContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudBookmarksContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_cloudBookmarksContainer_onceToken != -1)
  {
    dispatch_once(&safari_cloudBookmarksContainer_onceToken, block);
  }

  v1 = safari_cloudBookmarksContainer_container;

  return v1;
}

+ (id)safari_historyContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CKContainer_CloudBookmarkCKContainerExtras__safari_historyContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_historyContainer_onceToken != -1)
  {
    dispatch_once(&safari_historyContainer_onceToken, block);
  }

  v1 = safari_historyContainer_container;

  return v1;
}

+ (id)safari_historyManateeContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CKContainer_CloudBookmarkCKContainerExtras__safari_historyManateeContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_historyManateeContainer_onceToken != -1)
  {
    dispatch_once(&safari_historyManateeContainer_onceToken, block);
  }

  v1 = safari_historyManateeContainer_container;

  return v1;
}

+ (id)safari_cloudTabsContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudTabsContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_cloudTabsContainer_onceToken != -1)
  {
    dispatch_once(&safari_cloudTabsContainer_onceToken, block);
  }

  v1 = safari_cloudTabsContainer_container;

  return v1;
}

+ (id)safari_cloudSettingsContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudSettingsContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_cloudSettingsContainer_onceToken != -1)
  {
    dispatch_once(&safari_cloudSettingsContainer_onceToken, block);
  }

  v1 = safari_cloudSettingsContainer_container;

  return v1;
}

+ (id)safari_scribbleFeedbackContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CKContainer_CloudBookmarkCKContainerExtras__safari_scribbleFeedbackContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_scribbleFeedbackContainer_onceToken != -1)
  {
    dispatch_once(&safari_scribbleFeedbackContainer_onceToken, block);
  }

  v1 = safari_scribbleFeedbackContainer_container;

  return v1;
}

+ (id)safari_webCompatibilityFeedbackContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__CKContainer_CloudBookmarkCKContainerExtras__safari_webCompatibilityFeedbackContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_webCompatibilityFeedbackContainer_onceToken != -1)
  {
    dispatch_once(&safari_webCompatibilityFeedbackContainer_onceToken, block);
  }

  v1 = safari_webCompatibilityFeedbackContainer_container;

  return v1;
}

+ (id)safari_cloudExtensionsContainer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudExtensionsContainer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (safari_cloudExtensionsContainer_onceToken != -1)
  {
    dispatch_once(&safari_cloudExtensionsContainer_onceToken, block);
  }

  v1 = safari_cloudExtensionsContainer_container;

  return v1;
}

+ (uint64_t)_safari_containerEnvironment
{
  if (_safari_containerEnvironment_onceToken != -1)
  {
    +[CKContainer(CloudBookmarkCKContainerExtras) _safari_containerEnvironment];
  }

  return _safari_containerEnvironment_environment;
}

@end