@interface _UIAssetManager
+ (double)_watchScreenScale;
+ (id)_assetManagerCache;
+ (id)_sharedRuntimeAssetMapKeyForAssetName:(id)name fromFilesInBundle:(id)bundle;
+ (id)_sharedRuntimeAssetMapKeyForAssetName:(id)name inAssetManager:(id)manager;
+ (id)assetManagerForBundle:(id)bundle;
+ (id)newAssetNamed:(id)named fromBundle:(id)bundle;
+ (id)sharedRuntimeAssetMap;
+ (id)sharedRuntimeCatalog;
+ (int64_t)_userInterfaceIdiomForDeviceClass:(unint64_t)class;
+ (void)_clearAllCachedImagesAndAssets;
+ (void)_convertTraitCollection:(double *)collection toCUIScale:(void *)scale CUIIdiom:(unint64_t *)idiom UIKitIdiom:(uint64_t *)kitIdiom UIKitUserInterfaceStyle:(uint64_t *)style subtype:(uint64_t *)subtype CUIDisplayGamut:(uint64_t *)gamut UIKitLayoutDirection:(uint64_t *)self0 CUILayoutDirection:;
+ (void)_executeUnitTestWithAssetManagerCache:(id)cache;
+ (void)_saveAssetManager:(id)manager forBundle:(id)bundle lock:(BOOL)lock;
+ (void)clearSharedRuntimeAssetMapForUnitTests;
- (BOOL)_hasMultipleAppearances;
- (BOOL)_imageBelongsToCoreGlyphs:(id)glyphs;
- (BOOL)_imageBelongsToUIKit:(id)kit;
- (BOOL)_imageIsSystemImage:(id)image;
- (CUIMutableCatalog)runtimeCatalog;
- (UITraitCollection)preferredTraitCollection;
- (_UIAssetManager)initWithData:(id)data idiom:(int64_t)idiom error:(id *)error;
- (_UIAssetManager)initWithURL:(id)l idiom:(int64_t)idiom error:(id *)error;
- (id)_appearanceNames;
- (id)_assetForName:(id)name;
- (id)_assetFromMapForName:(id)name lock:(BOOL)lock;
- (id)_carPlayAssetManager;
- (id)_catalogDataForSymbolImageNamed:(id)named;
- (id)_defaultAppearanceNames;
- (id)_initWithCatalog:(id)catalog idiom:(int64_t)idiom;
- (id)_initWithName:(id)name inBundle:(id)bundle idiom:(int64_t)idiom lock:(BOOL)lock allowMissingCatalog:(BOOL)catalog type:(unint64_t)type;
- (id)_insertAssetIntoMap:(id)map forName:(id)name lock:(BOOL)lock;
- (id)_lookUpObjectForTraitCollection:(id)collection objectAccessor:(id)accessor;
- (id)_performLookUpObjectForTraitCollection:(id)collection outNamedLookup:(id *)lookup objectAccessor:(id)accessor;
- (id)colorNamed:(id)named withTraitCollection:(id)collection;
- (id)description;
- (id)imageNamed:(id)named configuration:(id)configuration;
- (id)imageNamed:(id)named configuration:(id)configuration cachingOptions:(unint64_t)options attachCatalogImage:(BOOL)image;
- (id)imageNamed:(id)named scale:(double)scale idiom:(int64_t)idiom subtype:(unint64_t)subtype;
- (id)imageNamed:(id)named withTrait:(id)trait;
- (id)resolvedColorNamed:(id)named withTraitCollection:(id)collection;
- (void)_clearCachedResources;
- (void)_clearCachedResources:(id)resources;
- (void)_disconnectImageAssets;
- (void)_performBlockWithAssetLock:(id)lock;
- (void)dealloc;
- (void)disableCacheFlushing;
@end

@implementation _UIAssetManager

+ (id)_assetManagerCache
{
  if (qword_1ED4A2630 != -1)
  {
    dispatch_once(&qword_1ED4A2630, &__block_literal_global_652);
  }

  v3 = qword_1ED4A2628;

  return v3;
}

- (id)_appearanceNames
{
  appearanceNames = [(CUICatalog *)self->_catalog appearanceNames];
  v4 = appearanceNames;
  if (appearanceNames && [appearanceNames count])
  {
    _defaultAppearanceNames = v4;
  }

  else
  {
    _defaultAppearanceNames = [(_UIAssetManager *)self _defaultAppearanceNames];
  }

  v6 = _defaultAppearanceNames;

  return v6;
}

- (UITraitCollection)preferredTraitCollection
{
  preferredTraitCollection = self->_preferredTraitCollection;
  if (!preferredTraitCollection)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43___UIAssetManager_preferredTraitCollection__block_invoke;
    v7[3] = &unk_1E710C0C8;
    v7[4] = self;
    v4 = [UITraitCollection traitCollectionWithTraits:v7];
    v5 = self->_preferredTraitCollection;
    self->_preferredTraitCollection = v4;

    preferredTraitCollection = self->_preferredTraitCollection;
  }

  return preferredTraitCollection;
}

- (BOOL)_hasMultipleAppearances
{
  appearanceNames = [(CUICatalog *)self->_catalog appearanceNames];
  if ([appearanceNames count])
  {
    _defaultAppearanceNames = [(_UIAssetManager *)self _defaultAppearanceNames];
    v5 = [appearanceNames isEqualToArray:_defaultAppearanceNames] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_defaultAppearanceNames
{
  if (qword_1ED4A26A0 != -1)
  {
    dispatch_once(&qword_1ED4A26A0, &__block_literal_global_122_0);
  }

  v3 = qword_1ED4A2698;

  return v3;
}

- (void)disableCacheFlushing
{
  [(_UICache *)self->_imageCache setClearsCacheOnApplicationBackground:0];
  imageCache = self->_imageCache;

  [(_UICache *)imageCache setClearsCacheOnLowMemoryWarnings:0];
}

+ (id)sharedRuntimeAssetMap
{
  if (qword_1ED4A2690 != -1)
  {
    dispatch_once(&qword_1ED4A2690, &__block_literal_global_106_0);
  }

  v3 = qword_1ED4A2688;

  return v3;
}

+ (id)sharedRuntimeCatalog
{
  if (qword_1ED4A2680 != -1)
  {
    dispatch_once(&qword_1ED4A2680, &__block_literal_global_101_4);
  }

  v3 = qword_1ED4A2678;

  return v3;
}

- (void)_clearCachedResources
{
  v29 = *MEMORY[0x1E69E9840];
  [(CUICatalog *)self->_catalog clearCachedImageResources];
  os_unfair_lock_lock(&unk_1ED4A2620);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = +[_UIAssetManager sharedRuntimeAssetMap];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = +[_UIAssetManager sharedRuntimeAssetMap];
        v10 = [v9 objectForKey:v8];

        [v10 _clearResolvedImageResources];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&unk_1ED4A2620);
  os_unfair_lock_lock(&self->_assetMapLock);
  v11 = NSAllMapTableKeys(self->_assetMap);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = [(NSMapTable *)self->_assetMap objectForKey:v16];
        imageAsset = [v17 imageAsset];

        if (!imageAsset)
        {
          [(NSMapTable *)self->_assetMap removeObjectForKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_assetMapLock);
}

- (id)_initWithName:(id)name inBundle:(id)bundle idiom:(int64_t)idiom lock:(BOOL)lock allowMissingCatalog:(BOOL)catalog type:(unint64_t)type
{
  lockCopy = lock;
  v40 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  bundleCopy = bundle;
  v35.receiver = self;
  v35.super_class = _UIAssetManager;
  v16 = [(_UIAssetManager *)&v35 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    assetManagerName = v16->_assetManagerName;
    v16->_assetManagerName = v17;

    objc_storeStrong(&v16->_bundle, bundle);
    if (+[UIDevice _isWatchCompanion])
    {
      currentDevice = [getWKInterfaceDeviceClass() currentDevice];
      [currentDevice screenScale];
      v16->_preferredScale = v20;
      v16->_preferredGamut = 0;
      v16->_preferredIdiom = 4;
      mainScreen = [objc_opt_self() mainScreen];
      traitCollection = [mainScreen traitCollection];
      v16->_preferredLayoutDirectionTrait = [traitCollection layoutDirection];
    }

    else
    {
      currentDevice = [objc_opt_self() mainScreen];
      [currentDevice scale];
      v16->_preferredScale = v23;
      v16->_preferredGamut = [currentDevice gamut];
      v16->_preferredIdiom = idiom;
      v16->_preferredLayoutDirectionTrait = [UIApp userInterfaceLayoutDirection];
    }

    v16->_preferredIdiomSubtype = __preferredIdiomSubtypeForIdiom(v16->_preferredIdiom);
    v24 = objc_alloc_init(off_1E70ECC40);
    imageCache = v16->_imageCache;
    v16->_imageCache = v24;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    assetMap = v16->_assetMap;
    v16->_assetMap = strongToStrongObjectsMapTable;

    v16->_assetMapLock._os_unfair_lock_opaque = 0;
    v16->_runtimeCatalogCreationLock._os_unfair_lock_opaque = 0;
    v16->_type = type;
    v34 = 0;
    v28 = [objc_alloc(MEMORY[0x1E6999368]) initWithName:@"Assets" fromBundle:bundleCopy error:&v34];
    v29 = v34;
    catalog = v16->_catalog;
    v16->_catalog = v28;

    if (v16->_catalog || catalog)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v16 selector:sel__clearCachedResources_ name:@"UIApplicationDidReceiveMemoryWarningNotification" object:UIApp];
      [defaultCenter addObserver:v16 selector:sel__clearCachedResources_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
      [_UIAssetManager _saveAssetManager:v16 forBundle:bundleCopy lock:lockCopy];
    }

    else
    {

      v31 = *(__UILogGetCategoryCachedImpl("AssetManager", &_initWithName_inBundle_idiom_lock_allowMissingCatalog_type____s_category) + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = bundleCopy;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEFAULT, "Could not load asset catalog from bundle %@: %@", buf, 0x16u);
      }

      defaultCenter = [MEMORY[0x1E695DFB0] null];
      [_UIAssetManager _saveAssetManager:defaultCenter forBundle:bundleCopy lock:lockCopy];
      v16 = 0;
    }
  }

  return v16;
}

- (_UIAssetManager)initWithURL:(id)l idiom:(int64_t)idiom error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v28[0] = *MEMORY[0x1E695DB78];
  v9 = v28[0];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v25 = 0;
  v11 = [lCopy resourceValuesForKeys:v10 error:&v25];
  v12 = v25;
  v13 = [v11 objectForKey:v9];

  if (v13)
  {
    if ([v13 BOOLValue])
    {
      v14 = [lCopy URLByAppendingPathComponent:@"Assets.car"];

      lCopy = v14;
    }
  }

  else
  {
    v15 = *(__UILogGetCategoryCachedImpl("_UIAssetManager", &initWithURL_idiom_error____s_category) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      absoluteString = [lCopy absoluteString];
      uTF8String = [absoluteString UTF8String];
      *buf = 136315138;
      v27 = uTF8String;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Could not determine whether path is directory: %s", buf, 0xCu);
    }
  }

  v24 = v12;
  v19 = [objc_alloc(MEMORY[0x1E6999368]) initWithURL:lCopy error:&v24];
  v20 = v24;

  if (v19)
  {
    v21 = [(_UIAssetManager *)self _initWithCatalog:v19 idiom:idiom];
  }

  else
  {
    if (error)
    {
      v22 = v20;
      *error = v20;
    }

    v21 = 0;
  }

  return v21;
}

- (_UIAssetManager)initWithData:(id)data idiom:(int64_t)idiom error:(id *)error
{
  dataCopy = data;
  v16 = 0;
  v10 = [objc_alloc(MEMORY[0x1E6999368]) initWithBytes:objc_msgSend(dataCopy length:"bytes") error:{objc_msgSend(dataCopy, "length"), &v16}];
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    objc_storeStrong(&self->_assetData, data);
    v13 = [(_UIAssetManager *)self _initWithCatalog:v10 idiom:idiom];
  }

  else
  {
    if (error)
    {
      v14 = v11;
      *error = v12;
    }

    v13 = 0;
  }

  return v13;
}

- (id)_initWithCatalog:(id)catalog idiom:(int64_t)idiom
{
  catalogCopy = catalog;
  v14.receiver = self;
  v14.super_class = _UIAssetManager;
  v8 = [(_UIAssetManager *)&v14 init];
  if (v8)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v8->_preferredScale = v10;
    v8->_preferredIdiom = idiom;
    v8->_preferredIdiomSubtype = __preferredIdiomSubtypeForIdiom(idiom);
    v8->_preferredGamut = [mainScreen gamut];
    v8->_preferredLayoutDirectionTrait = [UIApp userInterfaceLayoutDirection];
    objc_storeStrong(&v8->_catalog, catalog);
    v8->_runtimeCatalogCreationLock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    assetMap = v8->_assetMap;
    v8->_assetMap = strongToStrongObjectsMapTable;

    v8->_assetMapLock._os_unfair_lock_opaque = 0;
    *&v8->_assetManagerFlags |= 1u;
  }

  return v8;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationDidReceiveMemoryWarningNotification";
  v6[1] = @"UIApplicationDidEnterBackgroundNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(_UIAssetManager *)self _disconnectImageAssets];
  v5.receiver = self;
  v5.super_class = _UIAssetManager;
  [(_UIAssetManager *)&v5 dealloc];
}

+ (void)_executeUnitTestWithAssetManagerCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&stru_1ED4A261C);
  _assetManagerCache = [self _assetManagerCache];
  cacheCopy[2](cacheCopy, _assetManagerCache);

  os_unfair_lock_unlock(&stru_1ED4A261C);
}

+ (void)_saveAssetManager:(id)manager forBundle:(id)bundle lock:(BOOL)lock
{
  lockCopy = lock;
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v11 = bundleCopy;
    managerCopy = manager;
    v9 = +[_UIAssetManager _assetManagerCache];
    if (lockCopy)
    {
      os_unfair_lock_lock(&stru_1ED4A261C);
    }

    bundlePath = [v11 bundlePath];
    [v9 setObject:managerCopy forKey:bundlePath];

    if (lockCopy)
    {
      os_unfair_lock_unlock(&stru_1ED4A261C);
    }

    bundleCopy = v11;
  }
}

+ (id)assetManagerForBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = +[_UIAssetManager _assetManagerCache];
  bundlePath = [bundleCopy bundlePath];
  mainScreen = [objc_opt_self() mainScreen];
  os_unfair_lock_lock(&stru_1ED4A261C);
  v8 = [v5 objectForKey:bundlePath];
  if (!v8)
  {
    v9 = [self alloc];
    v10 = +[UIDevice currentDevice];
    v8 = [v9 _initWithName:@"Assets" inBundle:bundleCopy idiom:objc_msgSend(v10 lock:"userInterfaceIdiom") allowMissingCatalog:0 type:{0, 0}];

    if (v8)
    {
      [v8 disableCacheFlushing];
    }
  }

  os_unfair_lock_unlock(&stru_1ED4A261C);
  null = [MEMORY[0x1E695DFB0] null];
  if ([v8 isEqual:null])
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  return v12;
}

- (id)_carPlayAssetManager
{
  if (self->_type)
  {
    block[5] = v2;
    v7 = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___UIAssetManager__carPlayAssetManager__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (qword_1ED4A2640 != -1)
    {
      dispatch_once(&qword_1ED4A2640, block);
    }

    v4 = qword_1ED4A2638;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)imageNamed:(id)named configuration:(id)configuration cachingOptions:(unint64_t)options attachCatalogImage:(BOOL)image
{
  optionsCopy = options;
  namedCopy = named;
  configurationCopy = configuration;
  if ((self->_type & 4) != 0)
  {
    v12 = 3;
  }

  else
  {
    v12 = optionsCopy;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__228;
  v46 = __Block_byref_object_dispose__228;
  v47 = 0;
  v13 = [UIImageConfiguration _completeConfiguration:configurationCopy fromConfiguration:0];
  mainScreen = ((v12 & 2) >> 1);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke;
  aBlock[3] = &unk_1E71281F0;
  v39 = v12 & 1;
  v15 = v13;
  v35 = v15;
  selfCopy = self;
  imageCopy = image;
  v16 = namedCopy;
  v41 = mainScreen;
  v37 = v16;
  v38 = &v42;
  v17 = _Block_copy(aBlock);
  v18 = v16;
  if ([(_UIAssetManager *)self _isSystemAssetManager]|| dyld_program_sdk_at_least())
  {
    v19 = v17[2](v17, v18, 1);
    stringByDeletingPathExtension = v18;
    if (!v19)
    {
      stringByDeletingPathExtension = [v18 stringByDeletingPathExtension];

      v21 = v17[2](v17, stringByDeletingPathExtension, 0);
      goto LABEL_10;
    }
  }

  else
  {
    stringByDeletingPathExtension = [v18 stringByDeletingPathExtension];

    v19 = v17[2](v17, stringByDeletingPathExtension, 0);
    if (!v19)
    {
      v21 = v17[2](v17, v18, 0);
LABEL_10:
      v19 = v21;
      if (!v21)
      {
        goto LABEL_21;
      }
    }
  }

  if ((v12 & 2) != 0)
  {
    if ([v19 _isSymbolImage])
    {
      LODWORD(mainScreen) = 1;
    }

    else
    {
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen bounds];
      v23 = v22;
      v25 = v24;

      [v19 size];
      v27 = v26;
      [v19 size];
      LODWORD(mainScreen) = v27 * v28 <= v23 * v25 * 0.125;
    }
  }

  _UIImageDecorateFallbackImage(v19);
  if (mainScreen)
  {
    v29 = [_UIImageCacheKey keyWithName:stringByDeletingPathExtension configuration:v15];
    [(_UICache *)self->_imageCache setObject:v19 forKey:v29];
    v30 = v43[5];
    if (v30)
    {
      v31 = [_UIImageCacheKey keyWithName:stringByDeletingPathExtension configuration:v30];

      [(_UICache *)self->_imageCache setObject:v19 forKey:v31];
      v29 = v31;
    }

    if (stringByDeletingPathExtension != v18)
    {
      v32 = [_UIImageCacheKey keyWithName:v18 configuration:v15];

      [(_UICache *)self->_imageCache setObject:v19 forKey:v18];
      v29 = v32;
    }
  }

LABEL_21:

  _Block_object_dispose(&v42, 8);

  return v19;
}

+ (void)_convertTraitCollection:(double *)collection toCUIScale:(void *)scale CUIIdiom:(unint64_t *)idiom UIKitIdiom:(uint64_t *)kitIdiom UIKitUserInterfaceStyle:(uint64_t *)style subtype:(uint64_t *)subtype CUIDisplayGamut:(uint64_t *)gamut UIKitLayoutDirection:(uint64_t *)self0 CUILayoutDirection:
{
  v29 = a2;
  v16 = objc_opt_self();
  if (!collection)
  {
    v27 = v16;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__convertTraitCollection_toCUIScale_CUIIdiom_UIKitIdiom_UIKitUserInterfaceStyle_subtype_CUIDisplayGamut_UIKitLayoutDirection_CUILayoutDirection_ object:v27 file:@"_UIAssetManager.m" lineNumber:1239 description:{@"Invalid parameter not satisfying: %@", @"scale != NULL"}];
  }

  [v29 displayScale];
  if (v17 == 0.0)
  {
    v17 = *collection;
    if (*collection == 0.0)
    {
      v17 = 1.0;
    }
  }

  *collection = v17;
  userInterfaceIdiom = [v29 userInterfaceIdiom];
  v19 = userInterfaceIdiom;
  if (idiom)
  {
    *idiom = userInterfaceIdiom;
  }

  if (userInterfaceIdiom > 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = qword_18A682FA8[userInterfaceIdiom];
  }

  if (scale)
  {
    *scale = v20;
  }

  userInterfaceStyle = [v29 userInterfaceStyle];
  if (kitIdiom)
  {
    *kitIdiom = userInterfaceStyle;
  }

  artworkSubtype = [v29 artworkSubtype];
  if (!artworkSubtype)
  {
    artworkSubtype = __preferredIdiomSubtypeForIdiom(v19);
  }

  *style = artworkSubtype;
  displayGamut = [v29 displayGamut];
  if (displayGamut == -1)
  {
    v24 = 0;
  }

  else
  {
    v24 = displayGamut;
  }

  *subtype = v24;
  layoutDirection = [v29 layoutDirection];
  if (layoutDirection == -1)
  {
    layoutDirection = *gamut;
  }

  *gamut = layoutDirection;
  if (direction)
  {
    v26 = 5;
    if (layoutDirection)
    {
      v26 = 0;
    }

    if (layoutDirection == 1)
    {
      v26 = 4;
    }

    *direction = v26;
  }
}

- (id)imageNamed:(id)named scale:(double)scale idiom:(int64_t)idiom subtype:(unint64_t)subtype
{
  namedCopy = named;
  v11 = dyld_program_sdk_at_least();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50___UIAssetManager_imageNamed_scale_idiom_subtype___block_invoke;
  v18[3] = &unk_1E7128218;
  *&v18[5] = scale;
  v18[6] = idiom;
  v18[7] = subtype;
  v18[4] = self;
  imageConfiguration = [UITraitCollection traitCollectionWithTraits:v18];
  v13 = imageConfiguration;
  if (imageConfiguration)
  {
    imageConfiguration = [imageConfiguration imageConfiguration];
  }

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  v15 = imageConfiguration;
  v16 = [(_UIAssetManager *)self imageNamed:namedCopy configuration:v15 cachingOptions:v14 attachCatalogImage:0];

  return v16;
}

- (id)imageNamed:(id)named withTrait:(id)trait
{
  namedCopy = named;
  if (trait)
  {
    imageConfiguration = [trait imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v8 = imageConfiguration;
  v9 = [(_UIAssetManager *)self imageNamed:namedCopy configuration:v8];

  return v9;
}

- (id)imageNamed:(id)named configuration:(id)configuration
{
  namedCopy = named;
  configurationCopy = configuration;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _effectiveTraitCollectionForImageLookup = [configurationCopy _effectiveTraitCollectionForImageLookup];
    v11 = _effectiveTraitCollectionForImageLookup;
    if (!_effectiveTraitCollectionForImageLookup || [_effectiveTraitCollectionForImageLookup userInterfaceIdiom] == -1)
    {
      preferredIdiom = self->_preferredIdiom;
    }

    else
    {
      preferredIdiom = [v11 userInterfaceIdiom];
    }

    v13 = [(_UIAssetManager *)self imageNamed:namedCopy idiom:preferredIdiom];
    goto LABEL_29;
  }

  v8 = [(_UIAssetManager *)self _assetFromMapForName:namedCopy];
  v9 = v8;
  if (v8)
  {
    [v8 imageWithConfiguration:configurationCopy];
  }

  else
  {
    [(_UIAssetManager *)self imageNamed:namedCopy configuration:configurationCopy cachingOptions:0 attachCatalogImage:0];
  }
  v13 = ;
  if (v13)
  {
    stringByDeletingPathExtension = namedCopy;
  }

  else
  {
    stringByDeletingPathExtension = [namedCopy stringByDeletingPathExtension];

    v11 = [(_UIAssetManager *)self _assetFromMapForName:stringByDeletingPathExtension];

    if (v11)
    {
      [v11 imageWithConfiguration:configurationCopy];
    }

    else
    {
      [(_UIAssetManager *)self imageNamed:stringByDeletingPathExtension configuration:configurationCopy cachingOptions:0 attachCatalogImage:0];
    }
    v13 = ;
    if ([v13 _isSymbolImage])
    {
    }

    else if (v13)
    {
      goto LABEL_23;
    }

    if ([(_UIAssetManager *)self _isSystemAssetManager]|| (*&self->_assetManagerFlags & 1) != 0)
    {
      v13 = 0;
      goto LABEL_23;
    }

    os_unfair_lock_lock(&unk_1ED4A2620);
    v15 = +[_UIAssetManager sharedRuntimeAssetMap];
    v16 = [_UIAssetManager _sharedRuntimeAssetMapKeyForAssetName:stringByDeletingPathExtension inAssetManager:self];
    v9 = [v15 objectForKey:v16];

    os_unfair_lock_unlock(&unk_1ED4A2620);
    v13 = [v9 imageWithConfiguration:configurationCopy];
  }

  v11 = v9;
LABEL_23:
  if (qword_1ED4A2668 != -1)
  {
    dispatch_once(&qword_1ED4A2668, &__block_literal_global_74_5);
  }

  if (_MergedGlobals_1354 == 1 && v13)
  {
    CFRetain(v13);
  }

  namedCopy = stringByDeletingPathExtension;
LABEL_29:

  return v13;
}

+ (id)newAssetNamed:(id)named fromBundle:(id)bundle
{
  v48 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  bundleCopy = bundle;
  if (os_variant_has_internal_diagnostics())
  {
    if (!bundleCopy)
    {
      v36 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "Callers must provide a bundle", buf, 2u);
      }
    }
  }

  else if (!bundleCopy)
  {
    v37 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A2670) + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "Callers must provide a bundle", buf, 2u);
    }
  }

  if (namedCopy && [namedCopy length])
  {
    v7 = [namedCopy hasPrefix:@"/"];
    if (v7)
    {
      lastPathComponent = [namedCopy lastPathComponent];
    }

    else
    {
      lastPathComponent = namedCopy;
    }

    v10 = lastPathComponent;
    v11 = [_UIAssetManager _sharedRuntimeAssetMapKeyForAssetName:namedCopy fromFilesInBundle:bundleCopy];
    os_unfair_lock_lock(&unk_1ED4A2620);
    v12 = +[_UIAssetManager sharedRuntimeAssetMap];
    v13 = [v12 objectForKey:v11];

    if (v13)
    {
      os_unfair_lock_unlock(&unk_1ED4A2620);
      v9 = v13;
LABEL_38:

      goto LABEL_39;
    }

    if (+[UIDevice _isWatch])
    {
      v14 = 1;
    }

    else
    {
      v14 = +[UIDevice _isWatchCompanion];
    }

    if (v7)
    {
      v15 = 0;
    }

    else
    {
      v15 = bundleCopy;
    }

    v16 = _UIImageCollectImagePathsForPath(namedCopy, v15, 0, v14);
    if (![v16 count])
    {
      v18 = 0;
LABEL_37:
      os_unfair_lock_unlock(&unk_1ED4A2620);
      v9 = v18;

      goto LABEL_38;
    }

    if (v7)
    {
      [namedCopy stringByDeletingLastPathComponent];
    }

    else
    {
      [bundleCopy bundlePath];
    }
    v17 = ;
    v19 = MEMORY[0x1E696AC08];
    v20 = v17;
    v21 = objc_alloc_init(v19);
    v22 = [v21 isWritableFileAtPath:v20];

    if (v22)
    {
      IsCarousel = _UIApplicationProcessIsCarousel();

      if ((IsCarousel & 1) == 0)
      {
        v39 = v11;
        v40 = v10;
        v41 = bundleCopy;
        v18 = [[UIImageAsset alloc] _initWithAssetName:v10 forFilesInBundle:bundleCopy];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v38 = v16;
        v24 = v16;
        v25 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v43;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v43 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v42 + 1) + 8 * i);
              imageConfiguration = _UserInterfaceTraitFromPath(v29);
              v31 = imageConfiguration;
              if (imageConfiguration)
              {
                imageConfiguration = [imageConfiguration imageConfiguration];
              }

              v32 = imageConfiguration;

              ImageAtPath = GetImageAtPath(v29, v7 ^ 1u, 0.0);
              [v18 _registerImage:ImageAtPath withConfiguration:v32];
            }

            v26 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v26);
        }

        v10 = v40;
        bundleCopy = v41;
        v16 = v38;
        v11 = v39;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v18 = [[_UIPathLazyImageAsset alloc] _initWithAssetName:v10 forFilesInBundle:bundleCopy imagePaths:v16 haveCGCacheImages:v7 ^ 1u];
LABEL_36:
    v34 = +[_UIAssetManager sharedRuntimeAssetMap];
    [v34 setObject:v18 forKey:v11];

    goto LABEL_37;
  }

  v9 = 0;
LABEL_39:

  return v9;
}

- (id)colorNamed:(id)named withTraitCollection:(id)collection
{
  namedCopy = named;
  collectionCopy = collection;
  v8 = collectionCopy;
  if ((!collectionCopy || (v9 = [collectionCopy displayGamut], v9 == -1)) && (-[_UIAssetManager preferredTraitCollection](self, "preferredTraitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v10, "displayGamut"), v10, !v8) || (userInterfaceIdiom = objc_msgSend(v8, "userInterfaceIdiom"), userInterfaceIdiom == -1))
  {
    preferredTraitCollection = [(_UIAssetManager *)self preferredTraitCollection];
    userInterfaceIdiom = [preferredTraitCollection userInterfaceIdiom];
  }

  v13 = 0;
  if (v9 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  if (userInterfaceIdiom <= 5)
  {
    v13 = qword_18A682FA8[userInterfaceIdiom];
  }

  v15 = [(CUICatalog *)self->_catalog colorWithName:namedCopy displayGamut:v14 deviceIdiom:v13];
  v16 = _UIColorFromCUINamedColor(v15);
  if (v16 && [(_UIAssetManager *)self _hasMultipleAppearances])
  {
    v17 = [[UIDynamicCatalogColor alloc] initWithName:namedCopy assetManager:self genericColor:v16];
  }

  else
  {
    [v16 _setDebugName:namedCopy];
    bundleIdentifier = [(NSBundle *)self->_bundle bundleIdentifier];
    [v16 _setDebugCatalogBundleIdentifier:bundleIdentifier];

    v17 = v16;
  }

  v19 = v17;

  return v19;
}

- (id)resolvedColorNamed:(id)named withTraitCollection:(id)collection
{
  namedCopy = named;
  collectionCopy = collection;
  v8 = collectionCopy;
  if ((((!collectionCopy || (v9 = [collectionCopy displayGamut], v9 == -1)) && (-[_UIAssetManager preferredTraitCollection](self, "preferredTraitCollection"), v10 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v10, "displayGamut"), v10, !v8) || (v11 = objc_msgSend(v8, "userInterfaceIdiom"), v11 == -1)) && (-[_UIAssetManager preferredTraitCollection](self, "preferredTraitCollection"), v12 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v12, "userInterfaceIdiom"), v12, !v8) || (v13 = objc_msgSend(v8, "userInterfaceStyle")) == 0) && (-[_UIAssetManager preferredTraitCollection](self, "preferredTraitCollection"), v14 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v14, "userInterfaceStyle"), v14, !v8) || (accessibilityContrast = objc_msgSend(v8, "accessibilityContrast"), accessibilityContrast == -1))
  {
    preferredTraitCollection = [(_UIAssetManager *)self preferredTraitCollection];
    accessibilityContrast = [preferredTraitCollection accessibilityContrast];
  }

  if (v11 > 5)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_18A682FA8[v11];
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __58___UIAssetManager_resolvedColorNamed_withTraitCollection___block_invoke;
  v33[3] = &__block_descriptor_64_e27_v16__0___UIMutableTraits__8l;
  if (v9 == -1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v9;
  }

  v33[4] = v9;
  v33[5] = v11;
  v33[6] = v13;
  v33[7] = accessibilityContrast;
  v19 = [UITraitCollection traitCollectionWithTraits:v33];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __58___UIAssetManager_resolvedColorNamed_withTraitCollection___block_invoke_2;
  v28 = &unk_1E7128260;
  selfCopy = self;
  v30 = namedCopy;
  v31 = v18;
  v32 = v17;
  v20 = namedCopy;
  v21 = _Block_copy(&v25);
  selfCopy = [(_UIAssetManager *)self _lookUpObjectForTraitCollection:v19 objectAccessor:v21, v25, v26, v27, v28, selfCopy];
  v23 = _UIColorFromCUINamedColor(selfCopy);

  return v23;
}

+ (int64_t)_userInterfaceIdiomForDeviceClass:(unint64_t)class
{
  v7 = class - 1;
  if (class - 1 < 7 && ((0x5Fu >> v7) & 1) != 0)
  {
    return qword_18A682FD8[v7];
  }

  v9 = [UIDevice currentDevice:v4];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (void)_performBlockWithAssetLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_assetMapLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_assetMapLock);
}

- (id)_assetFromMapForName:(id)name lock:(BOOL)lock
{
  lockCopy = lock;
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__228;
  v19 = __Block_byref_object_dispose__228;
  v20 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45___UIAssetManager__assetFromMapForName_lock___block_invoke;
  aBlock[3] = &unk_1E70FEE78;
  aBlock[4] = self;
  v7 = nameCopy;
  v13 = v7;
  v14 = &v15;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (lockCopy)
  {
    [(_UIAssetManager *)self _performBlockWithAssetLock:v8];
  }

  else
  {
    (*(v8 + 2))(v8);
  }

  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)_insertAssetIntoMap:(id)map forName:(id)name lock:(BOOL)lock
{
  lockCopy = lock;
  mapCopy = map;
  nameCopy = name;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__228;
  v28 = __Block_byref_object_dispose__228;
  v29 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __52___UIAssetManager__insertAssetIntoMap_forName_lock___block_invoke;
  v19 = &unk_1E7103C20;
  v23 = &v24;
  selfCopy = self;
  v10 = nameCopy;
  v21 = v10;
  v11 = mapCopy;
  v22 = v11;
  v12 = _Block_copy(&v16);
  v13 = v12;
  if (lockCopy)
  {
    [(_UIAssetManager *)self _performBlockWithAssetLock:v12, v16, v17, v18, v19, selfCopy, v21];
  }

  else
  {
    (*(v12 + 2))(v12);
  }

  v14 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)_assetForName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__228;
  v16 = __Block_byref_object_dispose__228;
  v17 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33___UIAssetManager__assetForName___block_invoke;
  aBlock[3] = &unk_1E70FB728;
  v11 = &v12;
  aBlock[4] = self;
  v5 = nameCopy;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  [(_UIAssetManager *)self _performBlockWithAssetLock:v6];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (CUIMutableCatalog)runtimeCatalog
{
  if ([(_UIAssetManager *)self _isSystemAssetManager])
  {
    v3 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_runtimeCatalogCreationLock);
    if (!self->_runtimeCatalog)
    {
      bundlePath = [(NSBundle *)self->_bundle bundlePath];
      v5 = [bundlePath stringByAppendingString:@" - runtime catalog"];

      v6 = [objc_alloc(MEMORY[0x1E6999390]) initWithName:v5];
      runtimeCatalog = self->_runtimeCatalog;
      self->_runtimeCatalog = v6;
    }

    os_unfair_lock_unlock(&self->_runtimeCatalogCreationLock);
    v3 = self->_runtimeCatalog;
  }

  return v3;
}

+ (id)_sharedRuntimeAssetMapKeyForAssetName:(id)name inAssetManager:(id)manager
{
  v5 = MEMORY[0x1E696AEC0];
  managerCopy = manager;
  nameCopy = name;
  carFileName = [managerCopy carFileName];
  bundle = [managerCopy bundle];
  bundleIdentifier = [bundle bundleIdentifier];
  bundle2 = [managerCopy bundle];

  bundlePath = [bundle2 bundlePath];
  v13 = [v5 stringWithFormat:@"<image asset named '%@' in asset catalog '%@' for bundle '%@' at path '%@'>", nameCopy, carFileName, bundleIdentifier, bundlePath];

  return v13;
}

+ (id)_sharedRuntimeAssetMapKeyForAssetName:(id)name fromFilesInBundle:(id)bundle
{
  v5 = MEMORY[0x1E696AEC0];
  bundleCopy = bundle;
  nameCopy = name;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  bundlePath = [bundleCopy bundlePath];

  v10 = [v5 stringWithFormat:@"<image asset named %@ from files in bundle '%@' at path '%@'>", nameCopy, bundleIdentifier, bundlePath];

  return v10;
}

+ (void)clearSharedRuntimeAssetMapForUnitTests
{
  os_unfair_lock_lock(&unk_1ED4A2620);
  v2 = +[_UIAssetManager sharedRuntimeAssetMap];
  [v2 removeAllObjects];

  os_unfair_lock_unlock(&unk_1ED4A2620);
}

- (void)_clearCachedResources:(id)resources
{
  name = [resources name];
  v5 = [name isEqualToString:@"UIApplicationDidEnterBackgroundNotification"];

  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41___UIAssetManager__clearCachedResources___block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = 0;
    v6 = [UIApp _beginBackgroundTaskWithName:@"com.apple.asset_manager.cache_resource_cleanup" expirationHandler:v7];
    [(_UIAssetManager *)self _clearCachedResources];
    if (v6)
    {
      [UIApp _endBackgroundTask:v6];
    }
  }

  else
  {

    [(_UIAssetManager *)self _clearCachedResources];
  }
}

- (BOOL)_imageBelongsToUIKit:(id)kit
{
  if ((self->_type & 1) == 0)
  {
    return 0;
  }

  imageAsset = [kit imageAsset];
  _assetManager = [imageAsset _assetManager];

  v3 = _assetManager && (_assetManager == self || (self->_type & 2) != 0);
  return v3;
}

- (BOOL)_imageBelongsToCoreGlyphs:(id)glyphs
{
  imageAsset = [glyphs imageAsset];
  _assetManager = [imageAsset _assetManager];

  LOBYTE(imageAsset) = 0;
  if (_assetManager && _assetManager == self)
  {
    LODWORD(imageAsset) = (LOBYTE(self->_type) >> 2) & 1;
  }

  return imageAsset;
}

- (BOOL)_imageIsSystemImage:(id)image
{
  imageCopy = image;
  v5 = [(_UIAssetManager *)self _imageBelongsToUIKit:imageCopy]|| [(_UIAssetManager *)self _imageBelongsToCoreGlyphs:imageCopy];

  return v5;
}

+ (void)_clearAllCachedImagesAndAssets
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1ED4A2620);
  v2 = +[_UIAssetManager sharedRuntimeAssetMap];
  [v2 removeAllObjects];

  os_unfair_lock_unlock(&unk_1ED4A2620);
  os_unfair_lock_lock(&stru_1ED4A261C);
  v3 = objc_autoreleasePoolPush();
  v4 = +[_UIAssetManager _assetManagerCache];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  cacheKeys = [v4 cacheKeys];
  v6 = [cacheKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(cacheKeys);
        }

        v10 = [v4 objectForKey:*(*(&v12 + 1) + 8 * v9)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v10 _clearCachedResources];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [cacheKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = +[_UIAssetManager _assetManagerCache];
  [v11 removeAllObjects];

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_unlock(&stru_1ED4A261C);
}

- (void)_disconnectImageAssets
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_assetMapLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_assetMap;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_assetMap objectForKey:*(*(&v10 + 1) + 8 * v7), v10];
        imageAsset = [v8 imageAsset];
        [imageAsset _disconnectFromAssetManager];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_assetMapLock);
}

- (id)_catalogDataForSymbolImageNamed:(id)named
{
  catalog = self->_catalog;
  v4 = [MEMORY[0x1E695DFD8] setWithObject:named];
  v5 = [(CUICatalog *)catalog dataForVectorGlyphsWithNames:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p (%@)>: scale: %f, idiom: %ld, subtype: %lu", v5, self, self->_assetManagerName, *&self->_preferredScale, self->_preferredIdiom, self->_preferredIdiomSubtype];

  return v6;
}

+ (double)_watchScreenScale
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v4 = v3;

  if (+[UIDevice _isWatchCompanion])
  {
    currentDevice = [getWKInterfaceDeviceClass() currentDevice];
    [currentDevice screenScale];
    v4 = v6;
  }

  return v4;
}

- (id)_performLookUpObjectForTraitCollection:(id)collection outNamedLookup:(id *)lookup objectAccessor:(id)accessor
{
  collectionCopy = collection;
  accessorCopy = accessor;
  _appearanceNames = [(_UIAssetManager *)self _appearanceNames];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__228;
  v24 = __Block_byref_object_dispose__228;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88___UIAssetManager__performLookUpObjectForTraitCollection_outNamedLookup_objectAccessor___block_invoke;
  v15[3] = &unk_1E7128288;
  v15[4] = self;
  v11 = _appearanceNames;
  v16 = v11;
  v18 = &v20;
  v12 = accessorCopy;
  v17 = v12;
  lookupCopy = lookup;
  [(UITraitCollection *)collectionCopy _enumerateThemeAppearanceNamesForLookup:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)_lookUpObjectForTraitCollection:(id)collection objectAccessor:(id)accessor
{
  if (collection)
  {
    v6 = 0;
    v4 = [(_UIAssetManager *)self _performLookUpObjectForTraitCollection:collection outNamedLookup:&v6 objectAccessor:accessor];
  }

  else
  {
    v4 = (*(accessor + 2))(accessor, 0);
  }

  return v4;
}

@end