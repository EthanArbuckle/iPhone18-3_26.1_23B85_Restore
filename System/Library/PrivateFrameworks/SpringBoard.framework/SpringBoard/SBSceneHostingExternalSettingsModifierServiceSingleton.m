@interface SBSceneHostingExternalSettingsModifierServiceSingleton
+ (void)startService;
@end

@implementation SBSceneHostingExternalSettingsModifierServiceSingleton

+ (void)startService
{
  if (startService_onceToken_1 != -1)
  {
    +[SBSceneHostingExternalSettingsModifierServiceSingleton startService];
  }
}

void __70__SBSceneHostingExternalSettingsModifierServiceSingleton_startService__block_invoke()
{
  v0 = objc_alloc_init(SBSceneHostingExternalSettingsModifierServiceDelegate);
  v1 = __delegate_1;
  __delegate_1 = v0;
}

@end