@interface ASDTFBetaAppLaunchDataProvider
- (void)loadLaunchScreenForBundleWithURL:(id)l withCompletionHandler:(id)handler;
@end

@implementation ASDTFBetaAppLaunchDataProvider

- (void)loadLaunchScreenForBundleWithURL:(id)l withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277CC1E70];
  lCopy = l;
  v15 = 0;
  v8 = [[v6 alloc] initWithURL:lCopy allowPlaceholder:0 error:&v15];

  v9 = v15;
  bundleIdentifier = [v8 bundleIdentifier];
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__ASDTFBetaAppLaunchDataProvider_loadLaunchScreenForBundleWithURL_withCompletionHandler___block_invoke;
    v13[3] = &unk_279D984A0;
    v14 = handlerCopy;
    [mEMORY[0x277CEC4C0] getLaunchInfoForBundleID:bundleIdentifier withCompletionHandler:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

void __89__ASDTFBetaAppLaunchDataProvider_loadLaunchScreenForBundleWithURL_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ASDTFBetaAppLaunchDataProvider_loadLaunchScreenForBundleWithURL_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279D98478;
  v11 = v6;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__ASDTFBetaAppLaunchDataProvider_loadLaunchScreenForBundleWithURL_withCompletionHandler___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = *(a1[6] + 16);

    v2();
  }

  else
  {
    v3 = [TFLaunchScreenBuilder buildLaunchScreenFromBetaAppLaunchInfo:a1[5]];
    (*(a1[6] + 16))();
  }
}

@end