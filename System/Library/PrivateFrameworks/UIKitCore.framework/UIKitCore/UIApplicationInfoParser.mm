@interface UIApplicationInfoParser
@end

@implementation UIApplicationInfoParser

void __48___UIApplicationInfoParser_mainBundleInfoParser__block_invoke()
{
  v0 = [_UIApplicationInfoParser alloc];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [(_UIApplicationInfoParser *)v0 _initWithBundle:v3];
  v2 = _MergedGlobals_1108;
  _MergedGlobals_1108 = v1;
}

void __53___UIApplicationInfoParser_initWithApplicationProxy___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"UIBackgroundStyle", @"UIApplicationIsOpaque", @"UIStatusBarHidden", @"UIStatusBarStyle", @"UIStatusBarHiddenWhenVerticallyCompact", @"UILaunchImageFile", @"NSAccentColorName", @"UIStatusBarStyleIgnoredOverrides", @"UIViewControllerBasedStatusBarAppearance", @"UIApplicationSystemWindowsSecureKey", @"UIWhitePointAdaptivityStyleKey", @"_UIWhitePointAdaptivityStyle", @"Capabilities", @"UIOptOutOfRTL", @"NSDisableKeyboardLayoutAdjustedShortcuts", @"UISupportedInterfaceOrientations", @"UIInterfaceOrientation", @"UIApplicationExitsOnSuspend", @"UIApplicationInterfaceManifest", @"UIUserInterfaceStyle", @"UIDeviceFamily", @"com.apple.uikit.feature-a", @"UIApplicationSupportsIndirectInputEvents", @"_UIRequiresGameControllerBasedFocus", @"_UIFocusLimitedControlsEnabled", @"_UIFocusDefaultAppearanceEnabled", @"UIFocusSystemEnabled", @"UIApplicationSupportsPrintCommand", 0x1EFB8E070, @"CFBundleDocumentTypes", 0}];
  v1 = qword_1ED49E010;
  qword_1ED49E010 = v0;
}

@end