@interface SearchUIImageCache
+ (id)cachedTlkImageForSFImage:(id)image;
+ (id)sharedCache;
+ (void)cacheTLKImage:(id)image forSFImage:(id)fImage;
- (SearchUIImageCache)init;
- (void)appIconImageDidChange:(id)change;
- (void)clearCacheAndPostNotificationForChangedIconForBundleIdentifier:(id)identifier;
- (void)clearImagesWithNotification:(id)notification;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_clearImagesWithNotification_ name:@"SearchUIClearImageCacheNotification" object:0];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    -[SearchUIImageCache setCachedUserInterfaceStyle:](v2, "setCachedUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_dateDidChange name:*MEMORY[0x1E69DDB88] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_appIconImageDidChange_ name:*MEMORY[0x1E69DEA38] object:0];

    defaultCenter4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel_appIconImageDidChange_ name:@"com.apple.LaunchServices.applicationIconChanged" object:0];

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
  homeScreenIconStyleObserver = [(SearchUIImageCache *)self homeScreenIconStyleObserver];
  [homeScreenIconStyleObserver invalidate];

  v4.receiver = self;
  v4.super_class = SearchUIImageCache;
  [(SearchUIImageCache *)&v4 dealloc];
}

- (void)clearImagesWithNotification:(id)notification
{
  notificationCopy = notification;
  v4 = objc_autoreleasePoolPush();
  imageCache = [(SearchUIImageCache *)self imageCache];
  [imageCache removeAllObjects];

  objc_autoreleasePoolPop(v4);
}

- (void)clearCacheAndPostNotificationForChangedIconForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__SearchUIImageCache_clearCacheAndPostNotificationForChangedIconForBundleIdentifier___block_invoke;
  v6[3] = &unk_1E85B2540;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [SearchUIUtilities dispatchMainIfNecessary:v6];
}

void __85__SearchUIImageCache_clearCacheAndPostNotificationForChangedIconForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageCache];
  [v2 removeAllObjects];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SearchUIAppIconImageDidChangeNotification" object:*(a1 + 40)];
}

- (void)appIconImageDidChange:(id)change
{
  changeCopy = change;
  name = [changeCopy name];
  if (![name isEqualToString:*MEMORY[0x1E69DEA38]])
  {
LABEL_5:

    goto LABEL_6;
  }

  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    name = [changeCopy object];
    cachedUserInterfaceStyle = [(SearchUIImageCache *)self cachedUserInterfaceStyle];
    traitCollection = [name traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (cachedUserInterfaceStyle == userInterfaceStyle)
    {
      goto LABEL_7;
    }

    traitCollection2 = [name traitCollection];
    -[SearchUIImageCache setCachedUserInterfaceStyle:](self, "setCachedUserInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

    goto LABEL_5;
  }

LABEL_6:
  name = [changeCopy userInfo];
  v11 = [name objectForKeyedSubscript:@"CFBundleIdentifier"];
  [(SearchUIImageCache *)self clearCacheAndPostNotificationForChangedIconForBundleIdentifier:v11];

LABEL_7:
}

- (void)dateDidChange
{
  v3 = [SearchUIUtilities bundleIdentifierForApp:4];
  [(SearchUIImageCache *)self clearCacheAndPostNotificationForChangedIconForBundleIdentifier:v3];
}

+ (id)cachedTlkImageForSFImage:(id)image
{
  imageCopy = image;
  sharedCache = [self sharedCache];
  imageCache = [sharedCache imageCache];
  v7 = [imageCache objectForKey:imageCopy];

  return v7;
}

+ (void)cacheTLKImage:(id)image forSFImage:(id)fImage
{
  fImageCopy = fImage;
  imageCopy = image;
  sharedCache = [self sharedCache];
  imageCache = [sharedCache imageCache];
  [imageCache setObject:imageCopy forKey:fImageCopy];
}

@end