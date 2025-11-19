@interface UIViewServiceSceneDelegate
@end

@implementation UIViewServiceSceneDelegate

void __108___UIViewServiceSceneDelegate_badlyBehavedAppWantsUnnecessaryDelayForMaterializedViewControllerInstallation__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    _MergedGlobals_1257 = 0;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_1257 = [v0 isEqualToString:@"com.google.Dynamite.ShareExtension"];
  }
}

@end