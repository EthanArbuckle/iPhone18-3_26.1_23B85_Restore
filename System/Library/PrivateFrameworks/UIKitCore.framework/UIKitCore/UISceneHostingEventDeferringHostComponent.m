@interface UISceneHostingEventDeferringHostComponent
@end

@implementation UISceneHostingEventDeferringHostComponent

void __109___UISceneHostingEventDeferringHostComponent_appHasBadExpectationsAboutFirstResponderForRemoteViewController__block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    _MergedGlobals_7_7 = 0;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    _MergedGlobals_7_7 = [&unk_1EFE2D8E8 containsObject:v0];
  }
}

@end