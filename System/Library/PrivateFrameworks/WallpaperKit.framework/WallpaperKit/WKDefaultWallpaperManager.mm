@interface WKDefaultWallpaperManager
+ (WKDefaultWallpaperManager)defaultWallpaperManager;
+ (id)defaultWallpaperLookupURL;
- (WKDefaultWallpaperManager)initWithCollectionsManager:(id)manager;
- (id)_wallpaperRepresentingWithIdentifier:(id)identifier;
- (id)deviceColor;
- (id)deviceEnclosureColor;
- (id)deviceLogicalScreenClass;
- (id)deviceProductType;
- (void)_loadDefaultWallpaperFile;
- (void)_loadDefaultWallpaperInformation;
@end

@implementation WKDefaultWallpaperManager

- (WKDefaultWallpaperManager)initWithCollectionsManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = WKDefaultWallpaperManager;
  v6 = [(WKDefaultWallpaperManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__collectionsManager, manager);
    [(WKDefaultWallpaperManager *)v7 _loadDefaultWallpaperFile];
    [(WKDefaultWallpaperManager *)v7 _loadDefaultWallpaperInformation];
  }

  return v7;
}

+ (WKDefaultWallpaperManager)defaultWallpaperManager
{
  if (defaultWallpaperManager_onceToken != -1)
  {
    +[WKDefaultWallpaperManager defaultWallpaperManager];
  }

  v3 = defaultWallpaperManager__defaultManager;

  return v3;
}

void __52__WKDefaultWallpaperManager_defaultWallpaperManager__block_invoke()
{
  v2 = [[WKWallpaperRepresentingCollectionsManager alloc] initWithDownloadManager:0];
  v0 = [[WKDefaultWallpaperManager alloc] initWithCollectionsManager:v2];
  v1 = defaultWallpaperManager__defaultManager;
  defaultWallpaperManager__defaultManager = v0;
}

- (void)_loadDefaultWallpaperFile
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  path = [a2 path];
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = path;
  _os_log_error_impl(&dword_1E4A23000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Default wallpaper lookup file does not exist at path '%{public}@'", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_loadDefaultWallpaperInformation
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get default wallpaper!", buf, 0xCu);
}

void __61__WKDefaultWallpaperManager__loadDefaultWallpaperInformation__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(2uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[WKDefaultWallpaperManager _loadDefaultWallpaperInformation]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%s: Complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (id)defaultWallpaperLookupURL
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = WKWallpapersBaseURL();
  v4 = MGCopyAnswer();
  v5 = WKLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromClass(self);
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_1E4A23000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolving default wallpaper for device name '%{public}@'", buf, 0x16u);
  }

  v7 = MEMORY[0x1E696AEC0];
  lowercaseString = [v4 lowercaseString];
  v9 = [v7 stringWithFormat:@"DefaultWallpapers~%@.plist", lowercaseString];
  v10 = [v3 URLByAppendingPathComponent:v9];

  v11 = WKLogForCategory(2uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromClass(self);
    path = [v10 path];
    *buf = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = path;
    _os_log_impl(&dword_1E4A23000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolved to default wallpaper look up file at path '%{public}@'", buf, 0x16u);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)deviceProductType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceLogicalScreenClass
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = WKLogicalScreenClassString();
  v3 = WKLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v2;
    _os_log_impl(&dword_1E4A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolved to logical screen class '%{public}@'", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)deviceColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceEnclosureColor
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_wallpaperRepresentingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _collectionsManager = [(WKDefaultWallpaperManager *)self _collectionsManager];
  numberOfWallpaperCollections = [_collectionsManager numberOfWallpaperCollections];

  if (numberOfWallpaperCollections < 1)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      _collectionsManager2 = [(WKDefaultWallpaperManager *)self _collectionsManager];
      v9 = [_collectionsManager2 wallpaperCollectionAtIndex:v7];

      v10 = [v9 wallpaperRepresentingWithIdentifier:identifierCopy];

      if (v10)
      {
        break;
      }

      ++v7;
      _collectionsManager3 = [(WKDefaultWallpaperManager *)self _collectionsManager];
      numberOfWallpaperCollections2 = [_collectionsManager3 numberOfWallpaperCollections];

      if (v7 >= numberOfWallpaperCollections2)
      {
        goto LABEL_5;
      }
    }
  }

  return v10;
}

@end