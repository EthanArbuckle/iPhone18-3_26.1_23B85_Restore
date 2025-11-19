@interface CKContainer
@end

@implementation CKContainer

void __77__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudBookmarksContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.WBSCloudBookmarksStore" encryptionServiceName:0 environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 1}];
  v2 = safari_cloudBookmarksContainer_container;
  safari_cloudBookmarksContainer_container = v1;
}

void __70__CKContainer_CloudBookmarkCKContainerExtras__safari_historyContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.WBSCloudHistoryStore" encryptionServiceName:0 environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 0}];
  v2 = safari_historyContainer_container;
  safari_historyContainer_container = v1;
}

void __77__CKContainer_CloudBookmarkCKContainerExtras__safari_historyManateeContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.History" encryptionServiceName:@"com.apple.SafariShared.History" environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 0}];
  v2 = safari_historyManateeContainer_container;
  safari_historyManateeContainer_container = v1;
}

void __72__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudTabsContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.CloudTabs" encryptionServiceName:@"com.apple.SafariShared.CloudTabs" environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 1}];
  v2 = safari_cloudTabsContainer_container;
  safari_cloudTabsContainer_container = v1;
}

void __76__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudSettingsContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.Settings" encryptionServiceName:@"com.apple.SafariShared.History" environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 1}];
  v2 = safari_cloudSettingsContainer_container;
  safari_cloudSettingsContainer_container = v1;
}

void __79__CKContainer_CloudBookmarkCKContainerExtras__safari_scribbleFeedbackContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.WebElementVisibilityFeedback" encryptionServiceName:0 environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 0}];
  v2 = safari_scribbleFeedbackContainer_container;
  safari_scribbleFeedbackContainer_container = v1;
}

void __87__CKContainer_CloudBookmarkCKContainerExtras__safari_webCompatibilityFeedbackContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.WebCompatibilityFeedback" encryptionServiceName:0 environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 0}];
  v2 = safari_webCompatibilityFeedbackContainer_container;
  safari_webCompatibilityFeedbackContainer_container = v1;
}

void __78__CKContainer_CloudBookmarkCKContainerExtras__safari_cloudExtensionsContainer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _safari_containerWithIdentifier:@"com.apple.SafariShared.Settings" encryptionServiceName:@"com.apple.SafariShared.History" environment:objc_msgSend(*(a1 + 32) useApplicationBundleIdentifierOverride:{"_safari_containerEnvironment"), 1}];
  v2 = safari_cloudExtensionsContainer_container;
  safari_cloudExtensionsContainer_container = v1;
}

void __75__CKContainer_CloudBookmarkCKContainerExtras___safari_containerEnvironment__block_invoke()
{
  _safari_containerEnvironment_environment = 1;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v1 = [v0 BOOLForKey:@"WBSDebugUseCloudKitContainerSandboxEnvironment"];

    if (v1)
    {
      _safari_containerEnvironment_environment = 2;
    }
  }
}

@end