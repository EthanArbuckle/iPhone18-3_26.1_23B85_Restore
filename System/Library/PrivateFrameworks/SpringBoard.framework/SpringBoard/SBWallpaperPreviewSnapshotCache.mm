@interface SBWallpaperPreviewSnapshotCache
+ (SBWallpaperPreviewSnapshotCache)sharedInstance;
+ (id)cacheKeyForVariant:(int64_t)a3 options:(unint64_t)a4;
+ (id)cacheKeyForVariant:(int64_t)a3 options:(unint64_t)a4 scalingWidth:(double)a5;
- (SBWallpaperPreviewSnapshotCache)init;
- (SBWallpaperPreviewSnapshotCache)initWithImageCache:(id)a3 iconController:(id)a4 wallpaperController:(id)a5;
- (id)_homeScreenSnapshotProviderWithOptions:(unint64_t)a3 wallpaperImage:(id)a4;
- (id)_lockScreenSnapshotProviderWithOptions:(unint64_t)a3 wallpaperImage:(id)a4;
- (id)mappedWallpaperPreviewForScaledSnapshot:(id)a3 variant:(int64_t)a4 cacheKey:(id)a5;
- (id)snapshotProviderForVariant:(int64_t)a3 options:(unint64_t)a4 wallpaperImage:(id)a5;
- (int64_t)_orientationForOptions:(unint64_t)a3;
- (void)_backlightFadeFinished;
- (void)_iconControllerDidChangeIconModel:(id)a3;
- (void)_modelDidLayout;
- (void)_modelWillLayout;
- (void)_switchToIconModel:(id)a3;
- (void)dealloc;
- (void)invalidateSnapshotsForLocations:(int64_t)a3;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
@end

@implementation SBWallpaperPreviewSnapshotCache

+ (SBWallpaperPreviewSnapshotCache)sharedInstance
{
  if (sharedInstance_onceToken_39 != -1)
  {
    +[SBWallpaperPreviewSnapshotCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_8;

  return v3;
}

void __49__SBWallpaperPreviewSnapshotCache_sharedInstance__block_invoke()
{
  v0 = [SBWallpaperPreviewSnapshotCache alloc];
  v8 = [MEMORY[0x277D37C68] wallpaperCache];
  v1 = [v8 imageCache];
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];
  v4 = [v3 iconController];
  v5 = +[SBWallpaperController sharedInstance];
  v6 = [(SBWallpaperPreviewSnapshotCache *)v0 initWithImageCache:v1 iconController:v4 wallpaperController:v5];
  v7 = sharedInstance_sharedInstance_8;
  sharedInstance_sharedInstance_8 = v6;
}

- (SBWallpaperPreviewSnapshotCache)initWithImageCache:(id)a3 iconController:(id)a4 wallpaperController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SBWallpaperPreviewSnapshotCache;
  v12 = [(SBWallpaperPreviewSnapshotCache *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageCache, a3);
    objc_storeStrong(&v13->_iconController, a4);
    objc_storeStrong(&v13->_wallpaperController, a5);
    [v11 addObserver:v13 forVariant:0];
    [v11 addObserver:v13 forVariant:1];
    v14 = [(SBIconController *)v13->_iconController iconModel];
    [(SBWallpaperPreviewSnapshotCache *)v13 _switchToIconModel:v14];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v13 selector:sel__backlightFadeFinished name:*MEMORY[0x277D67A18] object:0];
    [v15 addObserver:v13 selector:sel__iconControllerDidChangeIconModel_ name:SBIconControllerIconModelDidChangeNotification object:v13->_iconController];
    v16 = v13;
  }

  return v13;
}

- (SBWallpaperPreviewSnapshotCache)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Use designated initializer" userInfo:0];
  objc_exception_throw(v2);
}

- (void)dealloc
{
  v3 = [(SBHIconModel *)self->_model rootFolder];
  [v3 removeFolderObserver:self];

  v4 = self->_wallpaperController;
  [(SBWallpaperController *)v4 removeObserver:self forVariant:0];
  [(SBWallpaperController *)v4 removeObserver:self forVariant:1];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SBWallpaperPreviewSnapshotCache;
  [(SBWallpaperPreviewSnapshotCache *)&v6 dealloc];
}

- (void)invalidateSnapshotsForLocations:(int64_t)a3
{
  v6 = [(BSUIMappedImageCache *)self->_imageCache allKeys];
  v5 = v6;
  PBUIWallpaperEnumerateVariantsForLocations();
  self->_invalidatedLocations |= a3;
}

void __67__SBWallpaperPreviewSnapshotCache_invalidateSnapshotsForLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 24);
  if ((PBUIWallpaperLocationForVariant() & v4) == 0)
  {
    v5 = [objc_opt_class() cacheKeyForVariant:a2 options:0];
    if (v5)
    {
      [*(*(a1 + 32) + 16) removeImageForKey:v5];
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = *(a1 + 40);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v12 + 1) + 8 * i);
            if ([v11 hasPrefix:{v5, v12}])
            {
              [*(*(a1 + 32) + 16) removeImageForKey:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

+ (id)cacheKeyForVariant:(int64_t)a3 options:(unint64_t)a4 scalingWidth:(double)a5
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = PBUIStringForWallpaperVariant();
    v5 = [v7 stringWithFormat:@"WallpaperPreview-%@-%f", v8, *&a5];
  }

  return v5;
}

+ (id)cacheKeyForVariant:(int64_t)a3 options:(unint64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = PBUIStringForWallpaperVariant();
    v4 = [v5 stringWithFormat:@"WallpaperPreview-%@", v6];
  }

  return v4;
}

- (id)mappedWallpaperPreviewForScaledSnapshot:(id)a3 variant:(int64_t)a4 cacheKey:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__SBWallpaperPreviewSnapshotCache_mappedWallpaperPreviewForScaledSnapshot_variant_cacheKey___block_invoke;
  v17[3] = &unk_2783BD6B8;
  v10 = v8;
  v19 = self;
  v20 = a4;
  v18 = v10;
  v11 = MEMORY[0x223D6F7F0](v17);
  v12 = v11;
  if (v9)
  {
    v13 = [(BSUIMappedImageCache *)self->_imageCache imageForKey:v9 generatingIfNecessaryWithBlock:v11];
  }

  else
  {
    v16 = 0;
    v13 = (*(v11 + 16))(v11, &v16);
  }

  v14 = v13;

  return v14;
}

id __92__SBWallpaperPreviewSnapshotCache_mappedWallpaperPreviewForScaledSnapshot_variant_cacheKey___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = MGGetBoolAnswer();
  v6 = 4;
  if (!v5)
  {
    v6 = 0;
  }

  *a2 |= v6;
  if (MGGetBoolAnswer())
  {
    *a2 |= 2uLL;
  }

  *(*(a1 + 40) + 24) &= ~PBUIWallpaperLocationForVariant();

  return v4;
}

void __67__SBWallpaperPreviewSnapshotCache_regenerateSnapshotsForLocations___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_class() cacheKeyForVariant:a2 options:*(a1 + 40)];
  if (v4)
  {
    v5 = [*(a1 + 32) snapshotProviderForVariant:a2 options:*(a1 + 40) wallpaperImage:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SBWallpaperPreviewSnapshotCache_regenerateSnapshotsForLocations___block_invoke_2;
    v7[3] = &unk_2783BD6E0;
    v6 = *(a1 + 32);
    v9 = a2;
    v7[4] = v6;
    v8 = v4;
    [v5 snapshotWithImageBlock:v7];
  }
}

void __67__SBWallpaperPreviewSnapshotCache_regenerateSnapshotsForLocations___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  *(*(a1 + 32) + 24) &= ~PBUIWallpaperLocationForVariant();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 16);
  if (MGGetBoolAnswer())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  [v5 setImage:v7 forKey:v4 withPersistenceOptions:v6];
}

- (void)_switchToIconModel:(id)a3
{
  v5 = a3;
  p_model = &self->_model;
  if (self->_model != v5)
  {
    v12 = v5;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = MEMORY[0x277D66700];
    v9 = MEMORY[0x277D666F0];
    if (*p_model)
    {
      v10 = [(SBHIconModel *)*p_model rootFolder];
      [v10 removeFolderObserver:self];

      [v7 removeObserver:self name:*v8 object:self->_model];
      [v7 removeObserver:self name:*v9 object:self->_model];
    }

    objc_storeStrong(&self->_model, a3);
    if (*p_model)
    {
      v11 = [(SBHIconModel *)*p_model rootFolder];
      [v11 addFolderObserver:self];

      [v7 addObserver:self selector:sel__modelWillLayout name:*v8 object:self->_model];
      [v7 addObserver:self selector:sel__modelDidLayout name:*v9 object:self->_model];
    }

    v5 = v12;
  }
}

- (void)_iconControllerDidChangeIconModel:(id)a3
{
  v4 = [(SBIconController *)self->_iconController iconModel];
  [(SBWallpaperPreviewSnapshotCache *)self _switchToIconModel:v4];
}

- (void)_modelWillLayout
{
  v3 = [(SBHIconModel *)self->_model rootFolder];
  [v3 removeFolderObserver:self];
}

- (void)_modelDidLayout
{
  v3 = [(SBHIconModel *)self->_model rootFolder];
  [v3 addFolderObserver:self];

  [(SBWallpaperPreviewSnapshotCache *)self invalidateSnapshotsForLocations:2];
}

- (void)_backlightFadeFinished
{
  v3 = +[SBBacklightController sharedInstance];
  v4 = [v3 screenIsOn];

  if ((v4 & 1) == 0)
  {
    [(SBWallpaperPreviewSnapshotCache *)self invalidateSnapshotsForLocations:3];
    self->_invalidatedLocations = 0;
  }
}

- (id)_homeScreenSnapshotProviderWithOptions:(unint64_t)a3 wallpaperImage:(id)a4
{
  v6 = a4;
  v7 = [(SBWallpaperPreviewSnapshotCache *)self _orientationForOptions:a3];
  SBScreenBoundsRotatedRoundCenter(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [SBHomeScreenPreviewView alloc];
  v17 = [(SBIconController *)self->_iconController iconManager];
  v18 = [(SBHomeScreenPreviewView *)v16 initWithFrame:v17 iconManager:self->_wallpaperController wallpaperController:a3 options:v6 wallpaperImage:0 listView:v9, v11, v13, v15];

  v19 = [(SBWallpaperController *)self->_wallpaperController windowScene];
  v20 = [[SBViewSnapshotProvider alloc] initWithWindowScene:v19 view:v18 orientation:v7];
  [(SBViewSnapshotProvider *)v20 setIncludeWindowSceneWallpaper:(a3 & 0x40) == 0];

  return v20;
}

- (id)_lockScreenSnapshotProviderWithOptions:(unint64_t)a3 wallpaperImage:(id)a4
{
  v6 = a4;
  v7 = [(SBWallpaperPreviewSnapshotCache *)self _orientationForOptions:a3];
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  SBScreenBounds(v7);
  v12 = [[SBLockScreenPreviewView alloc] initWithFrame:self->_wallpaperController wallpaperController:a3 options:v6 wallpaperImage:v8, v9, v10, v11];

  v13 = [(SBWallpaperController *)self->_wallpaperController windowScene];
  v14 = [[SBViewSnapshotProvider alloc] initWithWindowScene:v13 view:v12 orientation:v7];

  return v14;
}

- (id)snapshotProviderForVariant:(int64_t)a3 options:(unint64_t)a4 wallpaperImage:(id)a5
{
  v8 = a5;
  if (!a3)
  {
    v9 = [(SBWallpaperPreviewSnapshotCache *)self _lockScreenSnapshotProviderWithOptions:a4 wallpaperImage:v8];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v9 = [(SBWallpaperPreviewSnapshotCache *)self _homeScreenSnapshotProviderWithOptions:a4 wallpaperImage:v8];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)_orientationForOptions:(unint64_t)a3
{
  if ((a3 & 0x180) == 0x100)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  v4 = PBUIWallpaperLocationForVariant();

  [(SBWallpaperPreviewSnapshotCache *)self invalidateSnapshotsForLocations:v4];
}

@end