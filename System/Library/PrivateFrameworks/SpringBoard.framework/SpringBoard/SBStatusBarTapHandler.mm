@interface SBStatusBarTapHandler
@end

@implementation SBStatusBarTapHandler

void __35___SBStatusBarTapHandler_handleTap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:22];
  v4 = [*(*(a1 + 32) + 24) windowScene];
  v5 = [v4 _sbDisplayConfiguration];
  [v3 setDisplayConfiguration:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35___SBStatusBarTapHandler_handleTap__block_invoke_2;
  v8[3] = &unk_2783A96A0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v3 modifyApplicationContext:v8];
}

void __35___SBStatusBarTapHandler_handleTap__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBDeviceApplicationSceneEntity alloc];
  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 24) sceneIdentifier];
  v7 = [(SBDeviceApplicationSceneEntity *)v4 initWithApplicationForMainDisplay:v5 uniqueIdentifier:v6];

  [v3 setEntity:v7 forLayoutRole:1];
}

@end