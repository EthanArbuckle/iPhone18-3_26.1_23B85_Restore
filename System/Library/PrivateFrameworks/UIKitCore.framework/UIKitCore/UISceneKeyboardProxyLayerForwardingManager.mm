@interface UISceneKeyboardProxyLayerForwardingManager
@end

@implementation UISceneKeyboardProxyLayerForwardingManager

void __71___UISceneKeyboardProxyLayerForwardingManager_isRootSystemShellProcess__block_invoke()
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  _MergedGlobals_1020 = [v0 usesLocalInitializationContext];
}

void __61___UISceneKeyboardProxyLayerForwardingManager_sharedInstance__block_invoke()
{
  v0 = [objc_alloc(objc_opt_class()) _init];
  v1 = qword_1ED49CB80;
  qword_1ED49CB80 = v0;
}

@end