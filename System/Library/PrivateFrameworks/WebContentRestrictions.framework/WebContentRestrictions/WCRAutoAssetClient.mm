@interface WCRAutoAssetClient
- (void)_createInterestInAsset;
- (void)_endLocalAssetLocks;
- (void)_handleAssetChangedNotification;
- (void)_lockLocalAsset:(id)asset;
- (void)_registerForNotificationsForAssetType:(id)type andAssetSpecifier:(id)specifier;
- (void)registerForAssetChangedNotificationsWithBlock:(id)block;
@end

@implementation WCRAutoAssetClient

- (void)_handleAssetChangedNotification
{
  assetDidChangeHandler = [(WCRAutoAssetClient *)self assetDidChangeHandler];

  if (assetDidChangeHandler)
  {
    assetDidChangeHandler2 = [(WCRAutoAssetClient *)self assetDidChangeHandler];
    assetDidChangeHandler2[2]();
  }
}

- (void)_registerForNotificationsForAssetType:(id)type andAssetSpecifier:(id)specifier
{
  specifierCopy = specifier;
  typeCopy = type;
  uTF8String = [@"com.apple.WebContentRestrictions.notifyQueue" UTF8String];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(uTF8String, v9);
  [(WCRAutoAssetClient *)self setNotifyQueue:v10];

  v11 = [MEMORY[0x277D289E8] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:typeCopy forAssetSpecifier:specifierCopy];

  out_token = -1;
  uTF8String2 = [v11 UTF8String];
  notifyQueue = [(WCRAutoAssetClient *)self notifyQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__WCRAutoAssetClient__registerForNotificationsForAssetType_andAssetSpecifier___block_invoke;
  v14[3] = &unk_279E7F440;
  v14[4] = self;
  notify_register_dispatch(uTF8String2, &out_token, notifyQueue, v14);
}

- (void)registerForAssetChangedNotificationsWithBlock:(id)block
{
  if (block)
  {
    [(WCRAutoAssetClient *)self setAssetDidChangeHandler:?];
  }

  [(WCRAutoAssetClient *)self _registerForNotificationsForAssetType:@"com.apple.MobileAsset.WebContentRestrictions" andAssetSpecifier:@"WebContentRestrictionsFilterAssets"];
}

- (void)_createInterestInAsset
{
  v2 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:@"com.apple.MobileAsset.WebContentRestrictions" withAssetSpecifier:@"WebContentRestrictionsFilterAssets"];
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"WebContentRestrictions.framework" selectingAsset:v2 error:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create auto-asset instance: %@", v4];
    [WCRLogging log:v5 withType:1];
  }

  else
  {
    [v3 interestInContent:@"Needed for web content restrictions" completion:&__block_literal_global_3];
  }
}

void __44__WCRAutoAssetClient__createInterestInAsset__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCACA8];
  if (a3)
  {
    v5 = [a3 description];
    v4 = [v3 stringWithFormat:@"Failed to set interest in content: %@", v5];
    [WCRLogging log:v4 withType:1];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully set interest in MobileAsset content"];
    [WCRLogging log:"log:withType:" withType:?];
  }
}

- (void)_lockLocalAsset:(id)asset
{
  assetCopy = asset;
  v5 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:@"com.apple.MobileAsset.WebContentRestrictions" withAssetSpecifier:@"WebContentRestrictionsFilterAssets"];
  v14 = 0;
  v6 = [objc_alloc(MEMORY[0x277D289E0]) initForClientName:@"WebContentRestrictions.framework" selectingAsset:v5 error:&v14];
  v7 = v14;
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 description];
    v11 = [v9 stringWithFormat:@"Unable to create auto-asset instance: %@", v10];
    [WCRLogging log:v11 withType:1];
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setUserInitiated:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__WCRAutoAssetClient__lockLocalAsset___block_invoke;
    v12[3] = &unk_279E7F488;
    v12[4] = self;
    v13 = assetCopy;
    [v6 lockContent:@"Needed for web content restrictions" withUsagePolicy:v10 withTimeout:0 completion:v12];
  }
}

void __38__WCRAutoAssetClient__lockLocalAsset___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v20 = a2;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v12 description];
    v16 = [v14 stringWithFormat:@"Unable to lock any version of auto-asset content: %@", v15];
    [WCRLogging log:v16 withType:1];
  }

  if (v10)
  {
    [*(a1 + 32) setCurrentAssetSelector:v20];
    v17 = *(a1 + 40);
    if (v17)
    {
      v18 = [v10 path];
      (*(v17 + 16))(v17, v18);
    }
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, 0);
  }
}

- (void)_endLocalAssetLocks
{
  currentAssetSelector = [(WCRAutoAssetClient *)self currentAssetSelector];
  if (currentAssetSelector)
  {
    currentAssetSelector2 = [(WCRAutoAssetClient *)self currentAssetSelector];
  }

  else
  {
    currentAssetSelector2 = [objc_alloc(MEMORY[0x277D289F8]) initForAssetType:@"com.apple.MobileAsset.WebContentRestrictions" withAssetSpecifier:@"WebContentRestrictionsFilterAssets"];
  }

  v9 = currentAssetSelector2;

  v5 = [MEMORY[0x277D289E0] endAllPreviousLocksOfSelectorSync:v9 forClientName:@"WebContentRestrictions.framework"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to end asset locks: %@", v5];
    v7 = v6;
    v8 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Ended local asset locks"];
    v7 = v6;
    v8 = 0;
  }

  [WCRLogging log:v7 withType:v8];
}

@end