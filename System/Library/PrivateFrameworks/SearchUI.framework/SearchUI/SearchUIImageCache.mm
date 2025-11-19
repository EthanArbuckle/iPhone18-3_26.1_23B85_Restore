@interface SearchUIImageCache
+ (id)cachedTlkImageForSFImage:(id)a3;
+ (id)sharedCache;
+ (void)cacheTLKImage:(id)a3 forSFImage:(id)a4;
- (SearchUIImageCache)init;
- (void)appIconImageDidChange:(id)a3;
- (void)clearCacheAndPostNotificationForChangedIconForBundleIdentifier:(id)a3;
- (void)clearImagesWithNotification:(id)a3;
- (void)dateDidChange;
- (void)dealloc;
@end

@implementation SearchUIImageCache

- (SearchUIImageCache)init
{
  v14.receiver = self;
  v14.super_class = SearchUIImageCache;
  v2 = [(SearchUIImageCache *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SearchUIImageCache *)v2 setImageCache:v3];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, appDatabaseChanged, @"com.apple.LaunchServices.DatabaseChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_clearImagesWithNotification_ name:@"SearchUIClearImageCacheNotification" object:0];

    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    v7 = [v6 traitCollection];
    -[SearchUIImageCache setCachedUserInterfaceStyle:](v2, "setCachedUserInterfaceStyle:", [v7 userInterfaceStyle]);

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v2 selector:sel_dateDidChange name:*MEMORY[0x1E69DDB88] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_appIconImageDidChange_ name:*MEMORY[0x1E69DEA38] object:0];

    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v10 addObserver:v2 selector:sel_appIconImageDidChange_ name:@"com.apple.LaunchServices.applicationIconChanged" object:0];

    v11 = +[SearchUIAppIconImage homeScreenService];
    v12 = [v11 addHomeScreenIconStyleObserver:v2];
    [(SearchUIImageCache *)v2 setHomeScreenIconStyleObserver:v12];
  }

  return v2;
}

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[SearchUIImageCache sharedCache];
  }

  v3 = sharedCache_imageCache;

  return v3;
}

uint64_t __33__SearchUIImageCache_sharedCache__block_invoke()
{
  sharedCache_imageCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v3 = [(SearchUIImageCache *)self homeScreenIconStyleObserver];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SearchUIImageCache;
  [(SearchUIImageCache *)&v4 dealloc];
}

- (void)clearImagesWithNotification:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SearchUIImageCache *)self imageCache];
  [v5 removeAllObjects];

  objc_autoreleasePoolPop(v4);
}

- (void)clearCacheAndPostNotificationForChangedIconForBundleIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__SearchUIImageCache_clearCacheAndPostNotificationForChangedIconForBundleIdentifier___block_invoke;
  v6[3] = &unk_1E85B2540;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __85__SearchUIImageCache_clearCacheAndPostNotificationForChangedIconForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageCache];
  [v2 removeAllObjects];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SearchUIAppIconImageDidChangeNotification" object:*(a1 + 40)];
}

- (void)appIconImageDidChange:(id)a3
{
  v12 = a3;
  v4 = [v12 name];
  if (![v4 isEqualToString:*MEMORY[0x1E69DEA38]])
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v12 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v12 object];
    v7 = [(SearchUIImageCache *)self cachedUserInterfaceStyle];
    v8 = [v4 traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v7 == v9)
    {
      goto LABEL_7;
    }

    v10 = [v4 traitCollection];
    -[SearchUIImageCache setCachedUserInterfaceStyle:](self, "setCachedUserInterfaceStyle:", [v10 userInterfaceStyle]);

    goto LABEL_5;
  }

LABEL_6:
  v4 = [v12 userInfo];
  v11 = [v4 objectForKeyedSubscript:@"CFBundleIdentifier"];
  [(SearchUIImageCache *)self clearCacheAndPostNotificationForChangedIconForBundleIdentifier:v11];

LABEL_7:
}

- (void)dateDidChange
{
  v3 = [SearchUIUtilities bundleIdentifierForApp:4];
  [(SearchUIImageCache *)self clearCacheAndPostNotificationForChangedIconForBundleIdentifier:v3];
}

+ (id)cachedTlkImageForSFImage:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedCache];
  v6 = [v5 imageCache];
  v7 = [v6 objectForKey:v4];

  return v7;
}

+ (void)cacheTLKImage:(id)a3 forSFImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [a1 sharedCache];
  v8 = [v9 imageCache];
  [v8 setObject:v7 forKey:v6];
}

@end