@interface UIImageAsset
+ (id)_dynamicAssetNamed:(id)a3 generator:(id)a4;
+ (id)_uncachedDynamicIconAssetNamed:(id)a3 generator:(id)a4;
- (BOOL)_canProvideCatalogData;
- (BOOL)_isIconAsset;
- (BOOL)isEqual:(id)a3;
- (CUINamedLayerStack)_layerStack;
- (UIImage)imageWithConfiguration:(UIImageConfiguration *)configuration;
- (UIImage)imageWithTraitCollection:(UITraitCollection *)traitCollection;
- (UIImageAsset)init;
- (UIImageAsset)initWithCoder:(NSCoder *)coder;
- (_UIAssetManager)_assetManager;
- (id)_cachedRenditionForKey:(id)a3;
- (id)_catalogData;
- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4;
- (id)_initWithAssetName:(id)a3 forManager:(id)a4;
- (id)_nameForStoringRuntimeRegisteredImagesInMutableCatalog;
- (id)_performLookUpRegisteredObjectForTraitCollection:(id)a3 withAccessorWithAppearanceName:(id)a4;
- (id)_renditionCache:(BOOL)a3;
- (id)_unpinObserver;
- (id)_unsafe_mutableCatalog;
- (id)_withLock_catalogData;
- (id)_withLock_imageWithConfiguration:(id)a3;
- (id)_withLock_lookUpRegisteredObjectForTraitCollection:(id)a3 withAccessorWithAppearanceName:(id)a4;
- (id)_withLock_mutableCatalog;
- (id)_withLock_registeredAppearanceNames;
- (id)_withLock_updateAssetFromBlockGenerationWithConfiguration:(id)a3 resolvedCatalogImage:(id)a4;
- (void)_cacheRendition:(id)a3 forKey:(id)a4;
- (void)_disconnectFromAssetManager;
- (void)_registerImage:(id)a3 withConfiguration:(id)a4;
- (void)_setLayerStack:(id)a3;
- (void)_setStronglyRetainsAssetManager:(BOOL)a3;
- (void)_unregisterImageWithDescription:(id)a3;
- (void)_unsafe_registerImage:(id)a3 withConfiguration:(id)a4;
- (void)_withLock_registerImage:(id)a3 withConfiguration:(id)a4;
- (void)_withLock_unregisterImageWithDescription:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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
    v3 = [(UIImageAsset *)self _unsafe_mutableCatalog];
    v4 = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    [v3 removeImagesNamed:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

  if (WeakRetained)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = objc_loadWeakRetained(&self->_unpinObserver);
    [v6 removeObserver:v7];
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
  v2 = [(UIImageAsset *)self _assetManager];
  v3 = v2;
  if (v2)
  {
    [v2 runtimeCatalog];
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
  v3 = [(UIImageAsset *)self _assetManager];
  if (v3)
  {
    if (!dyld_program_sdk_at_least())
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      v12 = [v3 _managingUIKitAssets];
      if (has_internal_diagnostics)
      {
        if (v12)
        {
          v17 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *v20 = 0;
            _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Should never try to add variants to a UIKit asset", v20, 2u);
          }
        }
      }

      else if (v12)
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
      v6 = [v3 carFileName];
      v15 = [(NSBundle *)self->_containingBundle bundlePath];
      v10 = [v13 stringWithFormat:@"<image asset '%@' in catalog '%@' in bundle at path '%@'>", assetName, v6, v15];

      goto LABEL_10;
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = self->_assetName;
    v6 = [(NSBundle *)self->_containingBundle bundlePath];
    [v4 stringWithFormat:@"<image asset '%@' in bundle at path '%@'>", v5, v6];
    v10 = LABEL_6:;
LABEL_10:

    goto LABEL_11;
  }

  containingBundle = self->_containingBundle;
  v8 = MEMORY[0x1E696AEC0];
  v9 = self->_assetName;
  if (containingBundle)
  {
    v6 = [(NSBundle *)containingBundle bundlePath];
    [v8 stringWithFormat:@"<image asset '%@' in resources for bundle at path '%@'>", v9, v6];
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
  v3 = [(UIImageAsset *)self _withLock_mutableCatalog];
  v4 = [v3 appearanceNames];

  if (v4 && [v4 count])
  {
    v5 = v4;
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
  v3 = [(UIImageAsset *)self _assetManager];
  v4 = v3;
  layerStack = self->_layerStack;
  if (layerStack)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
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

- (void)_setStronglyRetainsAssetManager:(BOOL)a3
{
  if ([(UIImageAsset *)self _stronglyRetainsAssetManager]!= a3)
  {
    os_unfair_lock_lock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_assetManager);
    strongAssetManager = self->_strongAssetManager;
    self->_strongAssetManager = WeakRetained;

    os_unfair_lock_unlock(&self->_lock);
  }
}

+ (id)_dynamicAssetNamed:(id)a3 generator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UIImageAsset.m" lineNumber:121 description:@"assets initialized with _dynamicAssetNamed:generator must provide a block"];
  }

  v9 = [objc_alloc(objc_opt_class()) _initWithAssetName:v7 forManager:0];
  v10 = v9;
  if (v9)
  {
    [v9 setCreationBlock:v8];
    v10[32] |= 2u;
  }

  return v10;
}

+ (id)_uncachedDynamicIconAssetNamed:(id)a3 generator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"UIImageAsset.m" lineNumber:132 description:@"assets initialized with _uncachedDynamicAssetNamed:generator must provide a block"];
  }

  v9 = [objc_alloc(objc_opt_class()) _initWithAssetName:v7 forManager:0];
  v10 = v9;
  if (v9)
  {
    [v9 setCreationBlock:v8];
    v10[32] |= 0xEu;
  }

  return v10;
}

- (BOOL)_isIconAsset
{
  v2 = self;
  v3 = (*&v2->_assetFlags >> 3) & 1;

  return v3;
}

- (UIImageAsset)init
{
  v6.receiver = self;
  v6.super_class = UIImageAsset;
  v2 = [(UIImageAsset *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    CommonInit_1(v2, v4, 0, 0);
  }

  return v2;
}

- (id)_initWithAssetName:(id)a3 forManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIImageAsset;
  v8 = [(UIImageAsset *)&v11 init];
  if (v8)
  {
    v9 = [v7 bundle];
    CommonInit_1(v8, v6, v7, v9);
  }

  return v8;
}

- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UIImageAsset;
  v8 = [(UIImageAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    CommonInit_1(v8, v6, 0, v7);
  }

  return v9;
}

- (UIImageAsset)initWithCoder:(NSCoder *)coder
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAssetName"];
  v6 = 0;
  v7 = 0;
  if ([(NSCoder *)v4 decodeBoolForKey:@"UIImageAssetHadAssetManager"]&& v5)
  {
    if ([v5 length])
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      if ([(NSCoder *)v4 containsValueForKey:@"UIImageAssetManagerBundlePath"])
      {
        v8 = MEMORY[0x1E696AAE8];
        v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIImageAssetManagerBundlePath"];
        v10 = [v8 bundleWithPath:v9];

        v6 = v10;
      }

      v7 = [_UIAssetManager assetManagerForBundle:v6];
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  v11 = [v7 _assetFromMapForName:v5];
  v12 = v11;
  if (v11)
  {
    v13 = v11;

LABEL_10:
    CommonInit_1(v13, v5, v7, v6);
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
            v22 = [v21 configuration];
            [(UIImageAsset *)v13 _unsafe_registerImage:v21 withConfiguration:v22];
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
    CommonInit_1(0, v5, v7, v6);
    goto LABEL_30;
  }

  if (!v5 || ![v5 length])
  {
    v23 = [MEMORY[0x1E696AFB0] UUID];
    v24 = [v23 UUIDString];

    v5 = v24;
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

  CommonInit_1(v13, v5, v7, v6);
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_30:
  v28 = v13;

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIImageAsset *)self assetName];
  [v4 encodeObject:v5 forKey:@"UIImageAssetName"];

  os_unfair_lock_lock(&self->_lock);
  v6 = [(UIImageAsset *)self _assetManager];
  v7 = v6;
  if (v6)
  {
    if (([v6 _managingUIKitAssets] & 1) == 0)
    {
      [v4 encodeBool:1 forKey:@"UIImageAssetHadAssetManager"];
      v8 = [v7 bundle];
      v9 = [MEMORY[0x1E696AAE8] mainBundle];

      if (v8 != v9)
      {
        v10 = [v7 bundle];
        v11 = [v10 bundlePath];
        [v4 encodeObject:v11 forKey:@"UIImageAssetManagerBundlePath"];
      }
    }
  }

  [v4 encodeBool:*&self->_assetFlags & 1 forKey:@"UIImageAssetHasRegisteredImages"];
  if (*&self->_assetFlags)
  {
    v12 = [(UIImageAsset *)self _withLock_mutableCatalog];
    v13 = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    v14 = [v12 imagesWithName:v13];

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
          v22 = [v21 configuration];
          v23 = [v21 UIImageWithAsset:self configuration:v22 flippedHorizontally:0 optionalVectorImage:0];

          [v15 addObject:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    [v4 encodeObject:v15 forKey:@"UIImageAssetRegisteredImages"];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (UIImage)imageWithTraitCollection:(UITraitCollection *)traitCollection
{
  if (traitCollection)
  {
    v4 = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
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

- (id)_withLock_imageWithConfiguration:(id)a3
{
  v69[2] = *MEMORY[0x1E69E9840];
  v4 = self;
  v5 = a3;
  v6 = [(UIImageAsset *)v4 _defaultTraitCollection];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 imageConfiguration];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [UIImageConfiguration _completeConfiguration:v5 fromConfiguration:v9];

  v11 = [v10 _effectiveTraitCollectionForImageLookup];
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
  v55 = [v11 layoutDirection];
  v12 = [v11 horizontalSizeClass];
  v13 = [v11 verticalSizeClass];
  [_UIAssetManager _convertTraitCollection:v11 toCUIScale:&v62 CUIIdiom:&v61 UIKitIdiom:&v58 UIKitUserInterfaceStyle:&v57 subtype:&v59 CUIDisplayGamut:&v60 UIKitLayoutDirection:&v55 CUILayoutDirection:&v56];
  v14 = [(UIImageAsset *)v4 _assetManager];
  v15 = v14;
  if (*&v4->_assetFlags)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke;
    aBlock[3] = &unk_1E710C218;
    aBlock[4] = v4;
    *&aBlock[5] = v62;
    aBlock[6] = v61;
    aBlock[7] = v59;
    aBlock[8] = v60;
    aBlock[9] = v56;
    aBlock[10] = v12;
    aBlock[11] = v13;
    v47 = _Block_copy(aBlock);
    v24 = [(UIImageAsset *)v4 _withLock_lookUpRegisteredObjectForTraitCollection:v11 withAccessorWithAppearanceName:v47];
    v25 = v24;
    if (!v24)
    {
      if (dyld_program_sdk_at_least())
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v49 = __49__UIImageAsset__withLock_imageWithConfiguration___block_invoke_2;
        v50 = &unk_1E70FEE78;
        v51 = v4;
        v52 = v10;
        v53 = &v63;
        v36 = v48;
        os_unfair_lock_lock(&__UIImageAssetRegisterLock);
        v49(v36);

        os_unfair_lock_unlock(&__UIImageAssetRegisterLock);
      }

      if (!v64[5] && (*&v4->_assetFlags & 2) != 0)
      {
        v37 = [(UIImageAsset *)v4 _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:0];
        v38 = v64[5];
        v64[5] = v37;
      }

      goto LABEL_28;
    }

    v26 = [v24 configuration];
    v27 = [v26 _effectiveTraitCollectionForImageLookup];
    v28 = [(UITraitCollection *)v11 _matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:v27];

    if (v28)
    {
      goto LABEL_27;
    }

    if (v15)
    {
      v29 = [(UIImageAsset *)v4 assetName];
      v30 = [v15 imageNamed:v29 configuration:v10 cachingOptions:0 attachCatalogImage:1];

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
        v42 = [v25 UIImageWithAsset:v4 configuration:v10 flippedHorizontally:0 optionalVectorImage:0];
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
      v33 = [v46 bestMatchUsingImages:v32 scaleFactor:v61 deviceIdiom:v59 deviceSubtype:v60 displayGamut:v56 layoutDirection:v12 sizeClassHorizontal:v62 sizeClassVertical:v13];

      if (v33 == v31)
      {
        objc_storeStrong(v64 + 5, v30);
      }

      objc_setAssociatedObject(v30, &CUINamedImageKey, 0, 1);
    }

    else
    {
      if ((*&v4->_assetFlags & 2) == 0)
      {
        goto LABEL_26;
      }

      v30 = [v25 UIImageWithAsset:v4 configuration:v10 flippedHorizontally:0 optionalVectorImage:0];
      v41 = [(UIImageAsset *)v4 _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:v30];
      v31 = v64[5];
      v64[5] = v41;
    }

    goto LABEL_25;
  }

  if (v14)
  {
    v16 = [(UIImageAsset *)v4 assetName];
    v17 = [v15 imageNamed:v16 configuration:v10 cachingOptions:0 attachCatalogImage:0];
    v18 = v64[5];
    v64[5] = v17;

    v19 = dyld_program_sdk_at_least();
    v20 = v64[5];
    if (v19)
    {
      v21 = [v64[5] configuration];
      v22 = [v20 _imageWithImageAsset:v4 configuration:v21];
      v23 = v64[5];
      v64[5] = v22;
    }

    else
    {
      v39 = [v64[5] _imageWithImageAsset:v4];
      v40 = v64[5];
      v64[5] = v39;
    }
  }

  else if ((*&v4->_assetFlags & 2) != 0)
  {
    v34 = [(UIImageAsset *)v4 _withLock_updateAssetFromBlockGenerationWithConfiguration:v10 resolvedCatalogImage:0];
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
    v7 = [(UITraitCollection *)traitCollection imageConfiguration];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(UIImageAsset *)self _registerImage:v6 withConfiguration:v8];
}

- (void)_unregisterImageWithDescription:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(UIImageAsset *)self _withLock_unregisterImageWithDescription:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLock_unregisterImageWithDescription:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = [(UIImageAsset *)self _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
  v5 = [(UIImageAsset *)self _withLock_mutableCatalog];
  [v5 removeImageNamed:v10 withDescription:v4];

  v6 = [(UIImageAsset *)self _withLock_mutableCatalog];
  v7 = [v6 imagesWithName:v10];

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
  v5 = [(UIImageConfiguration *)configuration _effectiveTraitCollectionForImageLookup];
  v4 = [v5 _namedImageDescription];
  [(UIImageAsset *)self _unregisterImageWithDescription:v4];
}

- (void)unregisterImageWithTraitCollection:(UITraitCollection *)traitCollection
{
  v4 = [(UITraitCollection *)traitCollection _namedImageDescription];
  [(UIImageAsset *)self _unregisterImageWithDescription:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
      v13 = [(UIImageAsset *)self _assetManager];
      v14 = [v5 _assetManager];
      v7 = v13;
      v15 = v14;
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

- (void)_setLayerStack:(id)a3
{
  v5 = a3;
  if (self->_layerStack != v5)
  {
    objc_storeStrong(&self->_layerStack, a3);
    v6 = [(UIImageAsset *)self _assetManager];
    if (!v5)
    {
      goto LABEL_7;
    }

    if ([(CUINamedLayerStack *)v5 representsOnDemandContent]&& v6 && (v7 = objc_loadWeakRetained(&self->_unpinObserver), v7, !v7))
    {
      objc_initWeak(&location, self);
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = [v6 bundle];
      v13 = [MEMORY[0x1E696ADC8] mainQueue];
      v14 = *MEMORY[0x1E696B138];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __31__UIImageAsset__setLayerStack___block_invoke;
      v16[3] = &unk_1E710C240;
      objc_copyWeak(&v17, &location);
      v16[4] = self;
      v15 = [v11 addObserverForName:v14 object:v12 queue:v13 usingBlock:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else if (([(CUINamedLayerStack *)v5 representsOnDemandContent]& 1) == 0)
    {
LABEL_7:
      WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

      if (WeakRetained)
      {
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        v10 = objc_loadWeakRetained(&self->_unpinObserver);
        [v9 removeObserver:v10];
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

- (void)_registerImage:(id)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(UIImageAsset *)self _withLock_registerImage:v7 withConfiguration:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLock_registerImage:(id)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  [(UIImageAsset *)self _unsafe_registerImage:v7 withConfiguration:v6];
}

- (void)_unsafe_registerImage:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(UIImageAsset *)self _assetManager];
    v9 = v8;
    if (v8 && ([v8 _managingUIKitAssets] & 1) != 0)
    {
      goto LABEL_24;
    }

    if (dyld_program_sdk_at_least() & 1) != 0 || ([v6 isSymbolImage])
    {
      v10 = [v6 content];
      v11 = [v10 isCGImageOnly];

      if (!v11)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __56__UIImageAsset__unsafe_registerImage_withConfiguration___block_invoke_2;
        v29[3] = &unk_1E70F6228;
        v29[4] = self;
        v30 = v6;
        v31 = v7;
        os_unfair_lock_lock(&__UIImageAssetRegisterLock);
        __56__UIImageAsset__unsafe_registerImage_withConfiguration___block_invoke_2(v29);
        os_unfair_lock_unlock(&__UIImageAssetRegisterLock);

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      v12 = [v6 content];
      v13 = [v12 isCGImage];

      if ((v13 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v14 = self;
    v15 = [v7 _effectiveTraitCollectionForImageLookup];
    v16 = [v15 _namedImageDescription];

    v17 = [v6 renderingMode];
    v18 = 1;
    if (v17 != 2)
    {
      v18 = 2;
    }

    if (v17 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    [v16 setTemplateRenderingMode:v19];
    [v6 alignmentRectInsets];
    [v16 setAlignmentEdgeInsets:?];
    [v16 setResizingMode:{objc_msgSend(v6, "resizingMode") != 0}];
    [v6 capInsets];
    if (v23 == 0.0 && v20 == 0.0 && v22 == 0.0 && v21 == 0.0)
    {
      [v16 setImageType:0];
    }

    else
    {
      [v16 setImageType:3];
      [v6 capInsets];
      [v16 setEdgeInsets:?];
    }

    v24 = [v6 imageOrientation];
    if (v24 >= 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = (0x75426831u >> (4 * v24)) & 0xF;
    }

    [v16 setExifOrientation:v25];
    v26 = [(UIImageAsset *)v14 _unsafe_mutableCatalog];
    v27 = [v6 CGImage];
    v28 = [(UIImageAsset *)v14 _nameForStoringRuntimeRegisteredImagesInMutableCatalog];
    [v26 insertCGImage:v27 withName:v28 andDescription:v16];

    *&v14->_assetFlags |= 1u;
    [v6 _setImageAsset:v14];

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

- (id)_withLock_updateAssetFromBlockGenerationWithConfiguration:(id)a3 resolvedCatalogImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(UIImageAsset *)self creationBlock];

  if (v8)
  {
    v9 = [(UIImageAsset *)self creationBlock];
    v10 = (v9)[2](v9, self, v6, v7);
    v11 = v10;
    v12 = v10 ? v10 : v7;
    v8 = v12;

    if (v8 != v7)
    {
      v13 = [v8 _primitiveImageAsset];

      if (!v13)
      {
        v14 = [v8 _imageWithImageAsset:self configuration:v6];

        v8 = v14;
      }

      if ((*&self->_assetFlags & 4) == 0)
      {
        [(UIImageAsset *)self _withLock_registerImage:v8 withConfiguration:v6];
      }
    }
  }

  return v8;
}

- (void)_disconnectFromAssetManager
{
  [(UIImageAsset *)self set_assetManager:0];
  strongAssetManager = self->_strongAssetManager;
  self->_strongAssetManager = 0;
}

- (id)_withLock_lookUpRegisteredObjectForTraitCollection:(id)a3 withAccessorWithAppearanceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v6)
  {
    [(UIImageAsset *)self _performLookUpRegisteredObjectForTraitCollection:v6 withAccessorWithAppearanceName:v7];
  }

  else
  {
    v7[2](v7, 0);
  }
  v8 = ;

  return v8;
}

- (id)_performLookUpRegisteredObjectForTraitCollection:(id)a3 withAccessorWithAppearanceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIImageAsset *)self _withLock_registeredAppearanceNames];
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
  v9 = v8;
  v14 = v9;
  v16 = &v17;
  v10 = v7;
  v15 = v10;
  [(UITraitCollection *)v6 _enumerateThemeAppearanceNamesForLookup:v13];
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
  v3 = [(UIImageAsset *)self _assetManager];
  if (v3)
  {
    v4 = [(UIImageAsset *)self assetName];
    v5 = [v4 length] != 0;
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
  v3 = [(UIImageAsset *)self _withLock_catalogData];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_withLock_catalogData
{
  v2 = self;
  v3 = [(UIImageAsset *)v2 _assetManager];
  if (v3)
  {
    v4 = [(UIImageAsset *)v2 assetName];
    v5 = [v3 _catalogDataForSymbolImageNamed:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_renditionCache:(BOOL)a3
{
  v3 = a3;
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
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = objc_opt_new();
    objc_setAssociatedObject(self, _renditionCache__key, v5, 1);
  }

  return v5;
}

- (void)_cacheRendition:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIImageAsset *)self _renditionCache:1];
  [v8 setObject:v7 forKey:v6];
}

- (id)_cachedRenditionForKey:(id)a3
{
  v4 = a3;
  v5 = [(UIImageAsset *)self _renditionCache:0];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_unpinObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_unpinObserver);

  return WeakRetained;
}

@end