@interface PKIconImageCache
+ (id)settingsIconCache;
- (PKIconImageCache)initWithPath:(id)a3 scale:(double)a4;
- (id)allImageIconKeys;
- (id)imageForKey:(id)a3;
@end

@implementation PKIconImageCache

+ (id)settingsIconCache
{
  if (settingsIconCache_onceToken != -1)
  {
    +[PKIconImageCache settingsIconCache];
  }

  v3 = settingsIconCache_settingsIconCache;

  return v3;
}

void __37__PKIconImageCache_settingsIconCache__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [PKIconImageCache settingsIconCacheWithScale:v2];
  v4 = settingsIconCache_settingsIconCache;
  settingsIconCache_settingsIconCache = v3;
}

- (PKIconImageCache)initWithPath:(id)a3 scale:(double)a4
{
  v7.receiver = self;
  v7.super_class = PKIconImageCache;
  v4 = [(PKIconImageCache *)&v7 init:a3];
  v5 = PKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PKIconImageCache initWithPath:v5 scale:?];
  }

  return v4;
}

- (id)imageForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _cacheKeysForApplicationIconsThatNeedJustInTimeEvaluation];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = MEMORY[0x1E69DCAB8];
    v8 = [objc_opt_class() _cacheKeysForApplicationIconsThatNeedJustInTimeEvaluation];
    v9 = [v8 objectForKey:v4];
    v10 = [v7 ps_synchronousIconWithApplicationBundleIdentifier:v9];
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = 0;
    objc_initWeak(&location, self);
    v11 = [(PKIconImageCache *)self cacheAccessQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__PKIconImageCache_imageForKey___block_invoke;
    v13[3] = &unk_1E71DCCF0;
    objc_copyWeak(&v16, &location);
    v15 = &v18;
    v14 = v4;
    dispatch_sync(v11, v13);

    v10 = v19[5];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v18, 8);
  }

  return v10;
}

void __32__PKIconImageCache_imageForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained iconCache];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)allImageIconKeys
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  objc_initWeak(&location, self);
  v3 = [(PKIconImageCache *)self cacheAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKIconImageCache_allImageIconKeys__block_invoke;
  block[3] = &unk_1E71DCD18;
  objc_copyWeak(&v7, &location);
  block[4] = &v9;
  dispatch_sync(v3, block);

  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __36__PKIconImageCache_allImageIconKeys__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = MEMORY[0x1E695DFD8];
  v3 = [WeakRetained iconCache];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __58__PKIconImageCache__cacheKeyToGraphicIconIdentifierLookup__block_invoke()
{
  if (_block_invoke_na_once_token_1 != -1)
  {
    __58__PKIconImageCache__cacheKeyToGraphicIconIdentifierLookup__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_1;

  return v1;
}

void __58__PKIconImageCache__cacheKeyToGraphicIconIdentifierLookup__block_invoke_2()
{
  v3[12] = *MEMORY[0x1E69E9840];
  v2[0] = @"AppClips";
  v2[1] = @"CellularData";
  v3[0] = @"com.apple.graphic-icon.app-clips";
  v3[1] = @"com.apple.graphic-icon.cellular-settings";
  v2[2] = @"ControlCenter";
  v2[3] = @"General";
  v3[2] = @"com.apple.graphic-icon.control-center";
  v3[3] = @"com.apple.graphic-icon.gear";
  v2[4] = @"HealthData";
  v2[5] = @"HomeScreen";
  v3[4] = @"com.apple.graphic-icon.health-data";
  v3[5] = @"com.apple.graphic-icon.home-screen";
  v2[6] = @"KeychainSync";
  v2[7] = @"Location";
  v3[6] = @"com.apple.graphic-icon.passwords";
  v3[7] = @"com.apple.graphic-icon.location";
  v2[8] = @"PersonalHotspot";
  v2[9] = @"VPN";
  v3[8] = @"com.apple.graphic-icon.personal-hotspot";
  v3[9] = @"com.apple.graphic-icon.vpn";
  v2[10] = @"iCloud";
  v2[11] = @"iCloudBackup";
  v3[10] = @"com.apple.application-icon.icloud";
  v3[11] = @"com.apple.graphic-icon.icloud-backup";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _block_invoke_na_once_object_1;
  _block_invoke_na_once_object_1 = v0;
}

id __64__PKIconImageCache__cacheKeyToApplicationBundleIdentifierLookup__block_invoke()
{
  if (_block_invoke_2_na_once_token_2 != -1)
  {
    __64__PKIconImageCache__cacheKeyToApplicationBundleIdentifierLookup__block_invoke_cold_1();
  }

  v1 = _block_invoke_2_na_once_object_2;

  return v1;
}

void __64__PKIconImageCache__cacheKeyToApplicationBundleIdentifierLookup__block_invoke_2()
{
  v6[17] = *MEMORY[0x1E69E9840];
  v5[0] = @"Calendar";
  v5[1] = @"Fitness";
  v6[0] = @"com.apple.mobilecal";
  v6[1] = @"com.apple.Fitness";
  v5[2] = @"HomeData";
  v5[3] = @"iTunes";
  v6[2] = @"com.apple.Home";
  v6[3] = @"com.apple.MobileStore";
  v5[4] = @"Wallet";
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];
  v2 = @"com.apple.PassbookStub";
  if (!v1)
  {
    v2 = @"com.apple.Passbook";
  }

  v6[4] = v2;
  v6[5] = @"com.apple.DocumentsApp";
  v5[5] = @"Files";
  v5[6] = @"Freeform";
  v6[6] = @"com.apple.freeform";
  v6[7] = @"com.apple.gamecenter.widgets";
  v5[7] = @"GameCenter";
  v5[8] = @"Health";
  v6[8] = @"com.apple.Health";
  v6[9] = @"com.apple.mobilemail";
  v5[9] = @"Mail";
  v5[10] = @"Messages";
  v6[10] = @"com.apple.MobileSMS";
  v6[11] = @"com.apple.news";
  v5[11] = @"News";
  v5[12] = @"Notes";
  v6[12] = @"com.apple.mobilenotes";
  v6[13] = @"com.apple.mobileslideshow";
  v5[13] = @"Photos";
  v5[14] = @"Siri";
  v6[14] = @"com.apple.siri";
  v6[15] = @"com.apple.mobilesafari";
  v5[15] = @"Safari";
  v5[16] = @"Stocks";
  v6[16] = @"com.apple.stocks";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:17];
  v4 = _block_invoke_2_na_once_object_2;
  _block_invoke_2_na_once_object_2 = v3;
}

id __77__PKIconImageCache__cacheKeysForApplicationIconsThatNeedJustInTimeEvaluation__block_invoke()
{
  if (_block_invoke_3_na_once_token_3 != -1)
  {
    __77__PKIconImageCache__cacheKeysForApplicationIconsThatNeedJustInTimeEvaluation__block_invoke_cold_1();
  }

  v1 = _block_invoke_3_na_once_object_3;

  return v1;
}

void __77__PKIconImageCache__cacheKeysForApplicationIconsThatNeedJustInTimeEvaluation__block_invoke_2()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"Contacts";
  v2[1] = @"Reminders";
  v3[0] = @"com.apple.MobileAddressBook";
  v3[1] = @"com.apple.reminders";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = _block_invoke_3_na_once_object_3;
  _block_invoke_3_na_once_object_3 = v0;
}

@end