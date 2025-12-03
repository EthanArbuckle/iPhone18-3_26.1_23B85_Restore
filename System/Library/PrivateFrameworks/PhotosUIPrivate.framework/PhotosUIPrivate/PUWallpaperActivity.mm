@interface PUWallpaperActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (PUWallpaperActivity)init;
- (id)_systemImageName;
- (void)_restrictionsChanged:(id)changed;
- (void)_updateWallpaperModificationAllowedIfNeeded;
- (void)dealloc;
- (void)inlineEditingViewController:(id)controller didDismissWithResponse:(id)response;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation PUWallpaperActivity

- (void)inlineEditingViewController:(id)controller didDismissWithResponse:(id)response
{
  v5 = [response entryPointResult] == 1;

  [(UIActivity *)self activityDidFinish:v5];
}

- (void)_updateWallpaperModificationAllowedIfNeeded
{
  if ([(PUWallpaperActivity *)self _needsUpdateWallpaperModificationAllowed])
  {
    [(PUWallpaperActivity *)self _setNeedsUpdateWallpaperModificationAllowed:0];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getMCProfileConnectionClass_softClass_94677;
    v11 = getMCProfileConnectionClass_softClass_94677;
    if (!getMCProfileConnectionClass_softClass_94677)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getMCProfileConnectionClass_block_invoke_94678;
      v7[3] = &unk_1E7B800F0;
      v7[4] = &v8;
      __getMCProfileConnectionClass_block_invoke_94678(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    sharedConnection = [v3 sharedConnection];
    isWallpaperModificationAllowed = [sharedConnection isWallpaperModificationAllowed];

    [(PUWallpaperActivity *)self _setWallpaperModificationAllowed:isWallpaperModificationAllowed];
  }
}

- (void)_restrictionsChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PUWallpaperActivity__restrictionsChanged___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __44__PUWallpaperActivity__restrictionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isWallpaperModificationAllowed];
  [*(a1 + 32) _setNeedsUpdateWallpaperModificationAllowed:1];
  [*(a1 + 32) _updateWallpaperModificationAllowedIfNeeded];
  result = [*(a1 + 32) _isWallpaperModificationAllowed];
  if (v2 != result)
  {
    v4 = *(a1 + 32);

    return [v4 updateActivityViewControllerVisibleShareActions];
  }

  return result;
}

- (void)prepareWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  v6 = PXMap();
  v7 = [v6 count];
  v8 = PXCreateMutablePosterConfigurationForLockScreenRole();
  v9 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:v7 > 1];
  [v9 setAllowedLayoutStrategies:1];
  [v9 setOptions:1];
  [v9 setMedia:v6];
  if (v7 < 2)
  {
    v11 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_PHOTOS";
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69C0830]) initWithShuffleType:1];
    [v9 setShuffleConfiguration:v10];

    v11 = @"PHOTOS_WALLPAPER_SWITCHER_TITLE_SHUFFLE";
  }

  [v8 setDisplayNameLocalizationKey:v11];
  assetDirectory = [v8 assetDirectory];
  v17 = 0;
  [v9 saveToURL:assetDirectory error:&v17];
  v13 = v17;

  v14 = PXCreateWallpaperPosterEditingEntryPoint();
  v15 = PXCreateWallpaperPosterInlineEditingViewController();
  [(UIViewController *)v15 setDelegate:self];
  [(UIViewController *)v15 setModalPresentationStyle:0];
  wallpaperActivityViewController = self->_wallpaperActivityViewController;
  self->_wallpaperActivityViewController = v15;
}

id __48__PUWallpaperActivity_prepareWithActivityItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithAssetUUID:v5];

  return v6;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  if (PLIsEDUMode())
  {
    return 0;
  }

  itemSourceController = [(PXActivity *)self itemSourceController];
  if ([itemSourceController isPreparingIndividualItems])
  {
    if (itemSourceController)
    {
      [itemSourceController requestAssetsMediaTypeCount];
    }

    assets = [itemSourceController assets];
    v7 = [assets count];

    allowsMultipleAssetsInWallpaper = [(PUWallpaperActivity *)self allowsMultipleAssetsInWallpaper];
    if (allowsMultipleAssetsInWallpaper && v7 > 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v7 == 1) & ~allowsMultipleAssetsInWallpaper;
    }

    _isWallpaperModificationAllowed = 0;
    if (v9 && v7 == v11)
    {
      [(PUWallpaperActivity *)self _updateWallpaperModificationAllowedIfNeeded];
      _isWallpaperModificationAllowed = [(PUWallpaperActivity *)self _isWallpaperModificationAllowed];
    }
  }

  else
  {
    _isWallpaperModificationAllowed = 0;
  }

  return _isWallpaperModificationAllowed;
}

- (id)_systemImageName
{
  if (_ActivitySystemImageName_onceToken != -1)
  {
    dispatch_once(&_ActivitySystemImageName_onceToken, &__block_literal_global_138);
  }

  v3 = _ActivitySystemImageName_imageName;

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUWallpaperActivity;
  [(PUWallpaperActivity *)&v4 dealloc];
}

- (PUWallpaperActivity)init
{
  v10.receiver = self;
  v10.super_class = PUWallpaperActivity;
  v2 = [(UIActivity *)&v10 init];
  if (!v2)
  {
    return v2;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = getMCEffectiveSettingsChangedNotificationSymbolLoc_ptr;
  v19 = getMCEffectiveSettingsChangedNotificationSymbolLoc_ptr;
  if (!getMCEffectiveSettingsChangedNotificationSymbolLoc_ptr)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getMCEffectiveSettingsChangedNotificationSymbolLoc_block_invoke;
    v14 = &unk_1E7B800F0;
    v15 = &v16;
    v5 = ManagedConfigurationLibrary_94679();
    v6 = dlsym(v5, "MCEffectiveSettingsChangedNotification");
    *(v15[1] + 24) = v6;
    getMCEffectiveSettingsChangedNotificationSymbolLoc_ptr = *(v15[1] + 24);
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v4)
  {
    [defaultCenter addObserver:v2 selector:sel__restrictionsChanged_ name:*v4 object:0];

    [(PUWallpaperActivity *)v2 _setNeedsUpdateWallpaperModificationAllowed:1];
    return v2;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCEffectiveSettingsChangedNotification(void)"];
  [currentHandler handleFailureInFunction:v9 file:@"PUWallpaperActivity.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

@end