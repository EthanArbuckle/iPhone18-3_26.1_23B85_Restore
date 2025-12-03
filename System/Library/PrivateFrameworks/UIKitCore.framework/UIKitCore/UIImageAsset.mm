@interface UIImageAsset
+ (id)_dynamicAssetNamed:(id)named generator:(id)generator;
+ (id)_uncachedDynamicIconAssetNamed:(id)named generator:(id)generator;
- (BOOL)_canProvideCatalogData;
- (BOOL)_isIconAsset;
- (BOOL)isEqual:(id)equal;
- (CUINamedLayerStack)_layerStack;
- (UIImage)imageWithConfiguration:(UIImageConfiguration *)configuration;
- (UIImage)imageWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIImageAsset)init;
- (UIImageAsset)initWithCoder:(NSCoder *)coder;
- (_UIAssetManager)_assetManager;
- (id)_cachedRenditionForKey:(id)key;
- (id)_catalogData;
- (id)_initWithAssetName:(id)name forFilesInBundle:(id)bundle;
- (id)_initWithAssetName:(id)name forManager:(id)manager;
- (id)_nameForStoringRuntimeRegisteredImagesInMutableCatalog;
- (id)_performLookUpRegisteredObjectForTraitCollection:(id)collection withAccessorWithAppearanceName:(id)name;
- (id)_renditionCache:(BOOL)cache;
- (id)_unpinObserver;
- (id)_unsafe_mutableCatalog;
- (id)_withLock_catalogData;
- (id)_withLock_imageWithConfiguration:(id)configuration;
- (id)_withLock_lookUpRegisteredObjectForTraitCollection:(id)collection withAccessorWithAppearanceName:(id)name;
- (id)_withLock_mutableCatalog;
- (id)_withLock_registeredAppearanceNames;
- (id)_withLock_updateAssetFromBlockGenerationWithConfiguration:(id)configuration resolvedCatalogImage:(id)image;
- (void)_cacheRendition:(id)rendition forKey:(id)key;
- (void)_disconnectFromAssetManager;
- (void)_registerImage:(id)image withConfiguration:(id)configuration;
- (void)_setLayerStack:(id)stack;
- (void)_setStronglyRetainsAssetManager:(BOOL)manager;
- (void)_unregisterImageWithDescription:(id)description;
- (void)_unsafe_registerImage:(id)image withConfiguration:(id)configuration;
- (void)_withLock_registerImage:(id)image withConfiguration:(id)configuration;
- (void)_withLock_unregisterImageWithDescription:(id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)registerImage:(UIImage *)image withTraitCollection:(UITraitCollection *)traitCollection;
- (void)unregisterImageWithConfiguration:(UIImageConfiguration *)configuration;
- (void)unregisterImageWithTraitCollection:(UITraitCollection *)traitCollection;
@end

@implementation UIImageAsset

- (_UIAssetManager)_assetManager
{
  WeakRetained = objc_loadWeakRetained(&self->_assetManager);

  return WeakRetained;
}

- (void)dealloc
{
  if (*&self->_assetFlags)
  {
    _unsafe_mutableCatalog = [(UIImageAsset *)self _unsafe_mutableCatalog];
    _nameForStoringRuntimeRegisteredImagesInMutableCatalog = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    [_unsafe_mutableCatalog removeImagesNamed:_nameForStoringRuntimeRegisteredImagesInMutableCatalog];
  }

  WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

  if (WeakRetained)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = objc_loadWeakRetained(&self->_unpinObserver);
    [defaultCenter removeObserver:v7];
  }

  strongAssetManager = self->_strongAssetManager;
  if (strongAssetManager)
  {
    self->_strongAssetManager = 0;
  }

  v9.receiver = self;
  v9.super_class = UIImageAsset;
  [(UIImageAsset *)&v9 dealloc];
}

- (id)_unsafe_mutableCatalog
{
  _assetManager = [(UIImageAsset *)self _assetManager];
  v3 = _assetManager;
  if (_assetManager)
  {
    [_assetManager runtimeCatalog];
  }

  else
  {
    +[_UIAssetManager sharedRuntimeCatalog];
  }
  v4 = ;

  return v4;
}

- (id)_nameForStoringRuntimeRegisteredImagesInMutableCatalog
{
  _assetManager = [(UIImageAsset *)self _assetManager];
  if (_assetManager)
  {
    if (!dyld_program_sdk_at_least())
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      _managingUIKitAssets = [_assetManager _managingUIKitAssets];
      if (has_internal_diagnostics)
      {
        if (_managingUIKitAssets)
        {
          v17 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *v20 = 0;
            _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Should never try to add variants to a UIKit asset", v20, 2u);
          }
        }
      }

      else if (_managingUIKitAssets)
      {
        v18 = *(__UILogGetCategoryCachedImpl("Assert", &_nameForStoringRuntimeRegisteredImagesInMutableCatalog___s_category) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Should never try to add variants to a UIKit asset", buf, 2u);
        }
      }

      v13 = MEMORY[0x1E696AEC0];
      assetName = self->_assetName;
      carFileName = [_assetManager carFileName];
      bundlePath = [(NSBundle *)self->_containingBundle bundlePath];
      v10 = [v13 stringWithFormat:@"<image asset '%@' in catalog '%@' in bundle at path '%@'>", assetName, carFileName, bundlePath];

      goto LABEL_10;
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = self->_assetName;
    carFileName = [(NSBundle *)self->_containingBundle bundlePath];
    [v4 stringWithFormat:@"<image asset '%@' in bundle at path '%@'>", v5, carFileName];
    v10 = LABEL_6:;
LABEL_10:

    goto LABEL_11;
  }

  containingBundle = self->_containingBundle;
  v8 = MEMORY[0x1E696AEC0];
  v9 = self->_assetName;
  if (containingBundle)
  {
    carFileName = [(NSBundle *)containingBundle bundlePath];
    [v8 stringWithFormat:@"<image asset '%@' in resources for bundle at path '%@'>", v9, carFileName];
    goto LABEL_6;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<runtime image asset '%@'>", v9];
LABEL_11:

  return v10;
}

- (id)_withLock_registeredAppearanceNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  _withLock_mutableCatalog = [(UIImageAsset *)self _withLock_mutableCatalog];
  appearanceNames = [_withLock_mutableCatalog appearanceNames];

  if (appearanceNames && [appearanceNames count])
  {
    v5 = appearanceNames;
  }

  else
  {
    v8[0] = @"UIAppearanceAny";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v6 = v5;

  return v6;
}

- (id)_withLock_mutableCatalog
{
  os_unfair_lock_assert_owner(&self->_lock);

  return [(UIImageAsset *)self _unsafe_mutableCatalog];
}

- (CUINamedLayerStack)_layerStack
{
  _assetManager = [(UIImageAsset *)self _assetManager];
  v4 = _assetManager;
  layerStack = self->_layerStack;
  if (layerStack)
  {
    v6 = 1;
  }

  else
  {
    v6 = _assetManager == 0;
  }

  if (!v6)
  {
    rebuildStackImage = self->_rebuildStackImage;
    if (rebuildStackImage)
    {
      rebuildStackImage[2](rebuildStackImage, self, v4);
      layerStack = self->_layerStack;
    }

    else
    {
      layerStack = 0;
    }
  }

  v8 = layerStack;

  return layerStack;
}

- (void)_setStronglyRetainsAssetManager:(BOOL)manager
{
  if ([(UIImageAsset *)self _stronglyRetainsAssetManager]!= manager)
  {
    os_unfair_lock_lock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_assetManager);
    strongAssetManager = self->_strongAssetManager;
    self->_strongAssetManager = WeakRetained;

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)_dynamicAssetNamed:(id)named generator:(id)generator
{
  namedCopy = named;
  generatorCopy = generator;
  if (!generatorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageAsset.m" lineNumber:121 description:@"assets initialized with _dynamicAssetNamed:generator must provide a block"];
  }

  v9 = [objc_alloc(objc_opt_class()) _initWithAssetName:namedCopy forManager:0];
  v10 = v9;
  if (v9)
  {
    [v9 setCreationBlock:generatorCopy];
    v10[32] |= 2u;
  }

  return v10;
}

+ (id)_uncachedDynamicIconAssetNamed:(id)named generator:(id)generator
{
  namedCopy = named;
  generatorCopy = generator;
  if (!generatorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImageAsset.m" lineNumber:132 description:@"assets initialized with _uncachedDynamicAssetNamed:generator must provide a block"];
  }

  v9 = [objc_alloc(objc_opt_class()) _initWithAssetName:namedCopy forManager:0];
  v10 = v9;
  if (v9)
  {
    [v9 setCreationBlock:generatorCopy];
    v10[32] |= 0xEu;
  }

  return v10;
}

- (BOOL)_isIconAsset
{
  selfCopy = self;
  v3 = (*&selfCopy->_assetFlags >> 3) & 1;

  return v3;
}

- (UIImageAsset)init
{
  v6.receiver = self;
  v6.super_class = UIImageAsset;
  v2 = [(UIImageAsset *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    CommonInit_1(v2, uUIDString, 0, 0);
  }

  return v2;
}

- (id)_initWithAssetName:(id)name forManager:(id)manager
{
  nameCopy = name;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = UIImageAsset;
  v8 = [(UIImageAsset *)&v11 init];
  if (v8)
  {
    bundle = [managerCopy bundle];
    CommonInit_1(v8, nameCopy, managerCopy, bundle);
  }

  return v8;
}

- (id)_initWithAssetName:(id)name forFilesInBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = UIImageAsset;
  v8 = [(UIImageAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    CommonInit_1(v8, nameCopy, 0, bundleCopy);
  }

  return v9;
}

- (UIImageAsset)initWithCoder:(NSCoder *)coder
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAssetName"];
  mainBundle = 0;
  v7 = 0;
  if ([(NSCoder *)v4 decodeBoolForKey:@"UIImageAssetHadAssetManager"]&& v5)
  {
    if ([v5 length])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      if ([(NSCoder *)v4 containsValueForKey:@"UIImageAssetManagerBundlePath"])
      {
        v8 = MEMORY[0x1E696AAE8];
        v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAssetManagerBundlePath"];
        v10 = [v8 bundleWithPath:v9];

        mainBundle = v10;
      }

      v7 = [_UIAssetManager assetManagerForBundle:mainBundle];
    }

    else
    {
      mainBundle = 0;
      v7 = 0;
    }
  }

  v11 = [v7 _assetFromMapForName:v5];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

LABEL_10:
    CommonInit_1(v13, v5, v7, mainBundle);
LABEL_11:
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIImageAssetHasRegisteredImages"])
    {
      v31 = v12;
      *&v13->_assetFlags |= 1u;
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v30 = v32 = v4;
      v16 = [NSCoder decodeObjectOfClasses:v4 forKey:"decodeObjectOfClasses:forKey:"];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v34;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            configuration = [v21 configuration];
            [(UIImageAsset *)v13 _unsafe_registerImage:v21 withConfiguration:configuration];
          }

          v18 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v18);
      }

      v12 = v31;
      v4 = v32;
    }

    goto LABEL_30;
  }

  v37.receiver = self;
  v37.super_class = UIImageAsset;
  v13 = [(UIImageAsset *)&v37 init];
  if (!v13)
  {
    CommonInit_1(0, v5, v7, mainBundle);
    goto LABEL_30;
  }

  if (!v5 || ![v5 length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v5 = uUIDString;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v25 = [v7 _insertAssetIntoMap:v13 forName:v13->_assetName];
  v26 = v25;
  if (v25 != v13)
  {
    v27 = v25;

    v13 = v27;
  }

  CommonInit_1(v13, v5, v7, mainBundle);
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_30:
  v28 = v13;

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  assetName = [(UIImageAsset *)self assetName];
  [coderCopy encodeObject:assetName forKey:@"UIImageAssetName"];

  os_unfair_lock_lock(&self->_lock);
  _assetManager = [(UIImageAsset *)self _assetManager];
  v7 = _assetManager;
  if (_assetManager)
  {
    if (([_assetManager _managingUIKitAssets] & 1) == 0)
    {
      [coderCopy encodeBool:1 forKey:@"UIImageAssetHadAssetManager"];
      bundle = [v7 bundle];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];

      if (bundle != mainBundle)
      {
        bundle2 = [v7 bundle];
        bundlePath = [bundle2 bundlePath];
        [coderCopy encodeObject:bundlePath forKey:@"UIImageAssetManagerBundlePath"];
      }
    }
  }

  [coderCopy encodeBool:*&self->_assetFlags & 1 forKey:@"UIImageAssetHasRegisteredImages"];
  if (*&self->_assetFlags)
  {
    _withLock_mutableCatalog = [(UIImageAsset *)self _withLock_mutableCatalog];
    _nameForStoringRuntimeRegisteredImagesInMutableCatalog = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    v14 = [_withLock_mutableCatalog imagesWithName:_nameForStoringRuntimeRegisteredImagesInMutableCatalog];

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          configuration = [v21 configuration];
          v23 = [v21 UIImageWithAsset:self configuration:configuration flippedHorizontally:0 optionalVectorImage:0];

          [v15 addObject:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    [coderCopy encodeObject:v15 forKey:@"UIImageAssetRegisteredImages"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (UIImage)imageWithTraitCollection:(UITraitCollection *)traitCollection
{
  if (traitCollection)
  {
    imageConfiguration = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v5 = imageConfiguration;
  v6 = [(UIImageAsset *)self imageWithConfiguration:v5];

  return v6;
}

- (UIImage)imageWithConfiguration:(UIImageConfiguration *)configuration
{
  v4 = configuration;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(UIImageAsset *)self _withLock_imageWithConfiguration:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_withLock_imageWithConfiguration:(id)configuration
{
  v69[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  configurationCopy = configuration;
  _defaultTraitCollection = [(UIImageAsset *)selfCopy _defaultTraitCollection];
  v7 = _defaultTraitCollection;
  if (_defaultTraitCollection)
  {
    imageConfiguration = [_defaultTraitCollection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v9 = imageConfiguration;
  v10 = [UIImageConfiguration _completeConfiguration:configurationCopy fromConfiguration:v9];

  _effectiveTraitCollectionForImageLookup = [v10 _effectiveTraitCollectionForImageLookup];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__111;
  v67 = __Block_byref_object_dispose__111;
  v68 = 0;
  v61 = 0;
  v62 = 0.0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  layoutDirection = [_effectiveTraitCollectionForImageLookup layoutDirection];
  horizontalSizeClass = [_effectiveTraitCollectionForImageLookup horizontalSizeClass];
  verticalSizeClass = [_effectiveTraitCollectionForImageLookup verticalSizeClass];
  [_UIAssetManager _convertTraitCollection:_effectiveTraitCollectionForImageLookup toCUIScale:&v62 CUIIdiom:&v61 UIKitIdiom:&v58 UIKitUserInterfaceStyle:&v57 subtype:&v59 CUIDisplayGamut:&v60 UIKitLayoutDirection:&layoutDirection CUILayoutDirection:&v56];
  _assetManager = [(UIImageAsset *)selfCopy _assetManager];
  v15 = _assetManager;
  if (*&selfCopy->_assetFlags)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke;
    aBlock[3] = &unk_1E710C218;
    aBlock[4] = selfCopy;
    *&aBlock[5] = v62;
    aBlock[6] = v61;
    aBlock[7] = v59;
    aBlock[8] = v60;
    aBlock[9] = v56;
    aBlock[10] = horizontalSizeClass;
    aBlock[11] = verticalSizeClass;
    v47 = _Block_copy(aBlock);
    v24 = [(UIImageAsset *)selfCopy _withLock_lookUpRegisteredObjectForTraitCollection:_effectiveTraitCollectionForImageLookup withAccessorWithAppearanceName:v47];
    v25 = v24;
    if (!v24)
    {
      if (dyld_program_sdk_at_least())
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v49 = __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke_2;
        v50 = &unk_1E70FEE78;
        v51 = selfCopy;
        v52 = v10;
        v53 = &v63;
        v36 = v48;
        os_unfair_lock_lock(&__UIImageAssetRegisterLock);
        v49(v36);

        os_unfair_lock_unlock(&__UIImageAssetRegisterLock);
      }

      if (!v64[5] && (*&selfCopy->_assetFlags & 2) != 0)
      {
        v37 = [(UIImageAsset *)selfCopy _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:0];
        v38 = v64[5];
        v64[5] = v37;
      }

      goto LABEL_28;
    }

    configuration = [v24 configuration];
    _effectiveTraitCollectionForImageLookup2 = [configuration _effectiveTraitCollectionForImageLookup];
    v28 = [(UITraitCollection *)_effectiveTraitCollectionForImageLookup _matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:_effectiveTraitCollectionForImageLookup2];

    if (v28)
    {
      goto LABEL_27;
    }

    if (v15)
    {
      assetName = [(UIImageAsset *)selfCopy assetName];
      v30 = [v15 imageNamed:assetName configuration:v10 cachingOptions:0 attachCatalogImage:1];

      if (!v30)
      {
LABEL_25:

LABEL_26:
        if (v64[5])
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        v42 = [v25 UIImageWithAsset:selfCopy configuration:v10 flippedHorizontally:0 optionalVectorImage:0];
        v43 = v64[5];
        v64[5] = v42;

        _UIImageDecorateFallbackImage(v64[5]);
        goto LABEL_28;
      }

      v31 = objc_getAssociatedObject(v30, &CUINamedImageKey);
      v46 = MEMORY[0x1E6999368];
      v69[0] = v25;
      v69[1] = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      v33 = [v46 bestMatchUsingImages:v32 scaleFactor:v61 deviceIdiom:v59 deviceSubtype:v60 displayGamut:v56 layoutDirection:horizontalSizeClass sizeClassHorizontal:v62 sizeClassVertical:verticalSizeClass];

      if (v33 == v31)
      {
        objc_storeStrong(v64 + 5, v30);
      }

      objc_setAssociatedObject(v30, &CUINamedImageKey, 0, 1);
    }

    else
    {
      if ((*&selfCopy->_assetFlags & 2) == 0)
      {
        goto LABEL_26;
      }

      v30 = [v25 UIImageWithAsset:selfCopy configuration:v10 flippedHorizontally:0 optionalVectorImage:0];
      v41 = [(UIImageAsset *)selfCopy _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:v30];
      v31 = v64[5];
      v64[5] = v41;
    }

    goto LABEL_25;
  }

  if (_assetManager)
  {
    assetName2 = [(UIImageAsset *)selfCopy assetName];
    v17 = [v15 imageNamed:assetName2 configuration:v10 cachingOptions:0 attachCatalogImage:0];
    v18 = v64[5];
    v64[5] = v17;

    v19 = dyld_program_sdk_at_least();
    v20 = v64[5];
    if (v19)
    {
      configuration2 = [v64[5] configuration];
      v22 = [v20 _imageWithImageAsset:selfCopy configuration:configuration2];
      v23 = v64[5];
      v64[5] = v22;
    }

    else
    {
      v39 = [v64[5] _imageWithImageAsset:selfCopy];
      v40 = v64[5];
      v64[5] = v39;
    }
  }

  else if ((*&selfCopy->_assetFlags & 2) != 0)
  {
    v34 = [(UIImageAsset *)selfCopy _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:0];
    v35 = v64[5];
    v64[5] = v34;
  }

LABEL_29:
  v44 = v64[5];

  _Block_object_dispose(&v63, 8);

  return v44;
}

id __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _withLock_mutableCatalog];
  v6 = [*(a1 + 32) _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
  v7 = [v5 imageWithName:v6 scaleFactor:*(a1 + 48) deviceIdiom:*(a1 + 56) deviceSubtype:*(a1 + 64) displayGamut:*(a1 + 72) layoutDirection:*(a1 + 80) sizeClassHorizontal:*(a1 + 40) sizeClassVertical:*(a1 + 88) appearanceName:v4];

  return v7;
}

void __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_getAssociatedObject(*(a1 + 32), &ImageRegisterKey);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 matchesConfiguration:{*(a1 + 40), v11}])
        {
          v8 = [v7 image];
          v9 = *(*(a1 + 48) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)registerImage:(UIImage *)image withTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = image;
  if (traitCollection)
  {
    imageConfiguration = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v8 = imageConfiguration;
  [(UIImageAsset *)self _registerImage:v6 withConfiguration:v8];
}

- (void)_unregisterImageWithDescription:(id)description
{
  descriptionCopy = description;
  os_unfair_lock_lock(&self->_lock);
  [(UIImageAsset *)self _withLock_unregisterImageWithDescription:descriptionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLock_unregisterImageWithDescription:(id)description
{
  descriptionCopy = description;
  os_unfair_lock_assert_owner(&self->_lock);
  _nameForStoringRuntimeRegisteredImagesInMutableCatalog = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
  _withLock_mutableCatalog = [(UIImageAsset *)self _withLock_mutableCatalog];
  [_withLock_mutableCatalog removeImageNamed:_nameForStoringRuntimeRegisteredImagesInMutableCatalog withDescription:descriptionCopy];

  _withLock_mutableCatalog2 = [(UIImageAsset *)self _withLock_mutableCatalog];
  v7 = [_withLock_mutableCatalog2 imagesWithName:_nameForStoringRuntimeRegisteredImagesInMutableCatalog];

  v8 = [v7 count];
  v9 = *&self->_assetFlags & 0xFE;
  if (v8)
  {
    ++v9;
  }

  *&self->_assetFlags = v9;
}

- (void)unregisterImageWithConfiguration:(UIImageConfiguration *)configuration
{
  _effectiveTraitCollectionForImageLookup = [(UIImageConfiguration *)configuration _effectiveTraitCollectionForImageLookup];
  _namedImageDescription = [_effectiveTraitCollectionForImageLookup _namedImageDescription];
  [(UIImageAsset *)self _unregisterImageWithDescription:_namedImageDescription];
}

- (void)unregisterImageWithTraitCollection:(UITraitCollection *)traitCollection
{
  _namedImageDescription = [(UITraitCollection *)traitCollection _namedImageDescription];
  [(UIImageAsset *)self _unregisterImageWithDescription:_namedImageDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[11];
    v7 = self->_assetName;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
        goto LABEL_21;
      }

      v10 = [(NSBundle *)v7 isEqual:v8];

      if (!v10)
      {
        goto LABEL_22;
      }
    }

    v11 = v5[2];
    v7 = self->_containingBundle;
    v12 = v11;
    v9 = v12;
    if (v7 == v12)
    {

LABEL_15:
      _assetManager = [(UIImageAsset *)self _assetManager];
      _assetManager2 = [v5 _assetManager];
      v7 = _assetManager;
      v15 = _assetManager2;
      v9 = v15;
      if (v7 == v15)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v7 && v15)
        {
          LOBYTE(v10) = [(NSBundle *)v7 isEqual:v15];
        }
      }

      goto LABEL_21;
    }

    LOBYTE(v10) = 0;
    if (v7 && v12)
    {
      v10 = [(NSBundle *)v7 isEqual:v12];

      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  LOBYTE(v10) = 0;
LABEL_23:

  return v10;
}

- (void)_setLayerStack:(id)stack
{
  stackCopy = stack;
  if (self->_layerStack != stackCopy)
  {
    objc_storeStrong(&self->_layerStack, stack);
    _assetManager = [(UIImageAsset *)self _assetManager];
    if (!stackCopy)
    {
      goto LABEL_7;
    }

    if ([(CUINamedLayerStack *)stackCopy representsOnDemandContent]&& _assetManager && (v7 = objc_loadWeakRetained(&self->_unpinObserver), v7, !v7))
    {
      objc_initWeak(&location, self);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      bundle = [_assetManager bundle];
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v14 = *MEMORY[0x1E696B138];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __31__UIImageAsset__setLayerStack___block_invoke;
      v16[3] = &unk_1E710C240;
      objc_copyWeak(&v17, &location);
      v16[4] = self;
      v15 = [defaultCenter addObserverForName:v14 object:bundle queue:mainQueue usingBlock:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else if (([(CUINamedLayerStack *)stackCopy representsOnDemandContent]& 1) == 0)
    {
LABEL_7:
      WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

      if (WeakRetained)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        v10 = objc_loadWeakRetained(&self->_unpinObserver);
        [defaultCenter2 removeObserver:v10];
      }
    }
  }
}

void __31__UIImageAsset__setLayerStack___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 7);
    *(WeakRetained + 7) = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = objc_loadWeakRetained((*(a1 + 32) + 64));
    [v3 removeObserver:v4];
  }
}

- (void)_registerImage:(id)image withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  os_unfair_lock_lock(&self->_lock);
  [(UIImageAsset *)self _withLock_registerImage:imageCopy withConfiguration:configurationCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLock_registerImage:(id)image withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  os_unfair_lock_assert_owner(&self->_lock);
  [(UIImageAsset *)self _unsafe_registerImage:imageCopy withConfiguration:configurationCopy];
}

- (void)_unsafe_registerImage:(id)image withConfiguration:(id)configuration
{
  imageCopy = image;
  configurationCopy = configuration;
  if (imageCopy)
  {
    _assetManager = [(UIImageAsset *)self _assetManager];
    v9 = _assetManager;
    if (_assetManager && ([_assetManager _managingUIKitAssets] & 1) != 0)
    {
      goto LABEL_24;
    }

    if (dyld_program_sdk_at_least() & 1) != 0 || ([imageCopy isSymbolImage])
    {
      content = [imageCopy content];
      isCGImageOnly = [content isCGImageOnly];

      if (!isCGImageOnly)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __56__UIImageAsset__unsafe_registerImage_withConfiguration___block_invoke_2;
        v29[3] = &unk_1E70F6228;
        v29[4] = self;
        v30 = imageCopy;
        v31 = configurationCopy;
        os_unfair_lock_lock(&__UIImageAssetRegisterLock);
        __56__UIImageAsset__unsafe_registerImage_withConfiguration___block_invoke_2(v29);
        os_unfair_lock_unlock(&__UIImageAssetRegisterLock);

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      content2 = [imageCopy content];
      isCGImage = [content2 isCGImage];

      if ((isCGImage & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    selfCopy = self;
    _effectiveTraitCollectionForImageLookup = [configurationCopy _effectiveTraitCollectionForImageLookup];
    _namedImageDescription = [_effectiveTraitCollectionForImageLookup _namedImageDescription];

    renderingMode = [imageCopy renderingMode];
    v18 = 1;
    if (renderingMode != 2)
    {
      v18 = 2;
    }

    if (renderingMode == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    [_namedImageDescription setTemplateRenderingMode:v19];
    [imageCopy alignmentRectInsets];
    [_namedImageDescription setAlignmentEdgeInsets:?];
    [_namedImageDescription setResizingMode:{objc_msgSend(imageCopy, "resizingMode") != 0}];
    [imageCopy capInsets];
    if (v23 == 0.0 && v20 == 0.0 && v22 == 0.0 && v21 == 0.0)
    {
      [_namedImageDescription setImageType:0];
    }

    else
    {
      [_namedImageDescription setImageType:3];
      [imageCopy capInsets];
      [_namedImageDescription setEdgeInsets:?];
    }

    imageOrientation = [imageCopy imageOrientation];
    if (imageOrientation >= 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = (0x75426831u >> (4 * imageOrientation)) & 0xF;
    }

    [_namedImageDescription setExifOrientation:v25];
    _unsafe_mutableCatalog = [(UIImageAsset *)selfCopy _unsafe_mutableCatalog];
    cGImage = [imageCopy CGImage];
    _nameForStoringRuntimeRegisteredImagesInMutableCatalog = [(UIImageAsset *)selfCopy _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    [_unsafe_mutableCatalog insertCGImage:cGImage withName:_nameForStoringRuntimeRegisteredImagesInMutableCatalog andDescription:_namedImageDescription];

    *&selfCopy->_assetFlags |= 1u;
    [imageCopy _setImageAsset:selfCopy];

    goto LABEL_24;
  }

LABEL_25:
}

void __56__UIImageAsset__unsafe_registerImage_withConfiguration___block_invoke_2(uint64_t a1)
{
  v3 = objc_getAssociatedObject(*(a1 + 32), &ImageRegisterKey);
  if (!v3)
  {
    v3 = objc_opt_new();
    objc_setAssociatedObject(*(a1 + 32), &ImageRegisterKey, v3, 1);
  }

  v2 = [_UIImageAssetLocalRegistration registrationWithImage:*(a1 + 40) configuration:*(a1 + 48)];
  [v3 insertObject:v2 atIndex:0];

  *(*(a1 + 32) + 32) |= 1u;
}

- (id)_withLock_updateAssetFromBlockGenerationWithConfiguration:(id)configuration resolvedCatalogImage:(id)image
{
  configurationCopy = configuration;
  imageCopy = image;
  os_unfair_lock_assert_owner(&self->_lock);
  creationBlock = [(UIImageAsset *)self creationBlock];

  if (creationBlock)
  {
    creationBlock2 = [(UIImageAsset *)self creationBlock];
    v10 = (creationBlock2)[2](creationBlock2, self, configurationCopy, imageCopy);
    v11 = v10;
    v12 = v10 ? v10 : imageCopy;
    creationBlock = v12;

    if (creationBlock != imageCopy)
    {
      _primitiveImageAsset = [creationBlock _primitiveImageAsset];

      if (!_primitiveImageAsset)
      {
        v14 = [creationBlock _imageWithImageAsset:self configuration:configurationCopy];

        creationBlock = v14;
      }

      if ((*&self->_assetFlags & 4) == 0)
      {
        [(UIImageAsset *)self _withLock_registerImage:creationBlock withConfiguration:configurationCopy];
      }
    }
  }

  return creationBlock;
}

- (void)_disconnectFromAssetManager
{
  [(UIImageAsset *)self set_assetManager:0];
  strongAssetManager = self->_strongAssetManager;
  self->_strongAssetManager = 0;
}

- (id)_withLock_lookUpRegisteredObjectForTraitCollection:(id)collection withAccessorWithAppearanceName:(id)name
{
  collectionCopy = collection;
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  if (collectionCopy)
  {
    [(UIImageAsset *)self _performLookUpRegisteredObjectForTraitCollection:collectionCopy withAccessorWithAppearanceName:nameCopy];
  }

  else
  {
    nameCopy[2](nameCopy, 0);
  }
  v8 = ;

  return v8;
}

- (id)_performLookUpRegisteredObjectForTraitCollection:(id)collection withAccessorWithAppearanceName:(id)name
{
  collectionCopy = collection;
  nameCopy = name;
  _withLock_registeredAppearanceNames = [(UIImageAsset *)self _withLock_registeredAppearanceNames];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__111;
  v21 = __Block_byref_object_dispose__111;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__UIImageAsset__performLookUpRegisteredObjectForTraitCollection_withAccessorWithAppearanceName___block_invoke;
  v13[3] = &unk_1E710C268;
  v9 = _withLock_registeredAppearanceNames;
  v14 = v9;
  v16 = &v17;
  v10 = nameCopy;
  v15 = v10;
  [(UITraitCollection *)collectionCopy _enumerateThemeAppearanceNamesForLookup:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __96__UIImageAsset__performLookUpRegisteredObjectForTraitCollection_withAccessorWithAppearanceName___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = (*(*(a1 + 40) + 16))();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (BOOL)_canProvideCatalogData
{
  _assetManager = [(UIImageAsset *)self _assetManager];
  if (_assetManager)
  {
    assetName = [(UIImageAsset *)self assetName];
    v5 = [assetName length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_catalogData
{
  os_unfair_lock_lock(&self->_lock);
  _withLock_catalogData = [(UIImageAsset *)self _withLock_catalogData];
  os_unfair_lock_unlock(&self->_lock);

  return _withLock_catalogData;
}

- (id)_withLock_catalogData
{
  selfCopy = self;
  _assetManager = [(UIImageAsset *)selfCopy _assetManager];
  if (_assetManager)
  {
    assetName = [(UIImageAsset *)selfCopy assetName];
    v5 = [_assetManager _catalogDataForSymbolImageNamed:assetName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_renditionCache:(BOOL)cache
{
  cacheCopy = cache;
  if (pthread_main_np() != 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Accessing rendition cache from non-main thread is not safe!", buf, 2u);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_renditionCache____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Accessing rendition cache from non-main thread is not safe!", v10, 2u);
      }
    }
  }

  v5 = objc_getAssociatedObject(self, _renditionCache__key);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !cacheCopy;
  }

  if (!v6)
  {
    v5 = objc_opt_new();
    objc_setAssociatedObject(self, _renditionCache__key, v5, 1);
  }

  return v5;
}

- (void)_cacheRendition:(id)rendition forKey:(id)key
{
  keyCopy = key;
  renditionCopy = rendition;
  v8 = [(UIImageAsset *)self _renditionCache:1];
  [v8 setObject:renditionCopy forKey:keyCopy];
}

- (id)_cachedRenditionForKey:(id)key
{
  keyCopy = key;
  v5 = [(UIImageAsset *)self _renditionCache:0];
  v6 = [v5 objectForKey:keyCopy];

  return v6;
}

- (id)_unpinObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

  return WeakRetained;
}

@end