@interface UIRemoteViewControllerSceneShimEnabledForCurrentProcessIfViewService
@end

@implementation UIRemoteViewControllerSceneShimEnabledForCurrentProcessIfViewService

void ___UIRemoteViewControllerSceneShimEnabledForCurrentProcessIfViewService_block_invoke()
{
  v2 = [MEMORY[0x1E6963668] extensionPointRecordForCurrentProcess];
  v0 = [v2 identifier];
  v1 = _UIMainBundleIdentifier();
  _MergedGlobals_9_10 = _UIRemoteViewControllerSceneShimEnabledForBundleIdentifierAndExtensionPointIdentifier(v1, v0);
}

@end