@interface UIAssetManager
@end

@implementation UIAssetManager

uint64_t __37___UIAssetManager__assetManagerCache__block_invoke()
{
  v0 = objc_alloc_init(off_1E70ECC40);
  v1 = qword_1ED4A2628;
  qword_1ED4A2628 = v0;

  [qword_1ED4A2628 setClearsCacheOnApplicationBackground:0];
  v2 = qword_1ED4A2628;

  return [v2 setClearsCacheOnLowMemoryWarnings:0];
}

void __43___UIAssetManager_preferredTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  [v4 setDisplayScale:v3];
  [v4 setUserInterfaceIdiom:*(*(a1 + 32) + 32)];
  [v4 setLayoutDirection:*(*(a1 + 32) + 64)];
  [v4 setDisplayGamut:*(*(a1 + 32) + 56)];
}

void __42___UIAssetManager__defaultAppearanceNames__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"UIAppearanceAny";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = qword_1ED4A2698;
  qword_1ED4A2698 = v0;
}

void __40___UIAssetManager_sharedRuntimeAssetMap__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = qword_1ED4A2688;
  qword_1ED4A2688 = v0;
}

void __39___UIAssetManager_sharedRuntimeCatalog__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6999390]) initWithName:@"Shared Image Catalog"];
  v1 = qword_1ED4A2678;
  qword_1ED4A2678 = v0;
}

void __39___UIAssetManager__carPlayAssetManager__block_invoke(uint64_t a1)
{
  v2 = [_UIAssetManager alloc];
  v3 = MEMORY[0x1E696AAE8];
  v4 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v5 = [v3 bundleWithPath:v4];
  v6 = [(_UIAssetManager *)v2 _initWithName:@"UIKit_Stark_Artwork" inBundle:v5 idiom:3 type:3];
  v7 = qword_1ED4A2638;
  qword_1ED4A2638 = v6;

  v8 = qword_1ED4A2638;
  if (qword_1ED4A2638)
  {
    [*(a1 + 32) preferredScale];
    [v8 setPreferredScale:?];
    v9 = qword_1ED4A2638;
    v10 = [*(a1 + 32) preferredTraitCollection];
    [v9 setPreferredTraitCollection:v10];
  }
}

id __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (*(a1 + 64) == 1)
  {
    v6 = [_UIImageCacheKey keyWithName:v5 configuration:*(a1 + 32)];
    v7 = [*(*(a1 + 40) + 8) objectForKey:v6];
    v8 = v7;
    if ((a3 & 1) != 0 || ![v7 isSymbolImage])
    {

      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  v9 = *(a1 + 40);
  if (*(v9 + 136) & 1) == 0 && (*(v9 + 128))
  {
    v10 = [*(a1 + 32) _effectiveTraitCollectionForImageLookup];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 3)
    {
      v12 = [*(a1 + 40) _carPlayAssetManager];
      v13 = v12;
      if (*(a1 + 40) == v12)
      {
      }

      else
      {
        v8 = [v12 imageNamed:v5 configuration:*(a1 + 32) cachingOptions:0 attachCatalogImage:*(a1 + 65)];

        if (v8)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v14 = [*(a1 + 32) _effectiveTraitCollectionForImageLookup];
  v15 = *(*(a1 + 40) + 64);
  v60 = -1;
  v61 = v15;
  v16 = _UICurrentImageTraitCollectionDisplayScale();
  if (v16 == 0.0)
  {
    v16 = 1.0;
  }

  v59 = v16;
  v57 = 0;
  v58 = 0;
  v17 = [v14 horizontalSizeClass];
  v39 = [v14 verticalSizeClass];
  [_UIAssetManager _convertTraitCollection:v14 toCUIScale:&v59 CUIIdiom:0 UIKitIdiom:&v60 UIKitUserInterfaceStyle:0 subtype:&v58 CUIDisplayGamut:&v57 UIKitLayoutDirection:&v61 CUILayoutDirection:0];
  v18 = 0;
  if (v60 <= 5)
  {
    v18 = qword_18A682FA8[v60];
  }

  v19 = 5;
  if (v61)
  {
    v19 = 0;
  }

  if (v61 == 1)
  {
    v20 = 4;
  }

  else
  {
    v20 = v19;
  }

  v21 = [*(a1 + 32) locale];
  v22 = v5;
  v23 = *(*(a1 + 40) + 128);
  v24 = v22;
  if ((v23 & 4) != 0)
  {
    v38 = v17;
    v25 = a3;
    v26 = [MEMORY[0x1E69C8710] infoForName:*(a1 + 48) allowsPrivate:(v23 >> 3) & 1 locale:v21];
    if (!v26)
    {

      v8 = 0;
      goto LABEL_26;
    }

    v27 = v26;
    v24 = [v26 name];

    a3 = v25;
    v17 = v38;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke_2;
  aBlock[3] = &unk_1E71281C8;
  v54 = a3;
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v41 = v28;
  v42 = v29;
  v47 = v59;
  v48 = v18;
  v49 = v20;
  v43 = v24;
  v44 = v21;
  v30 = v22;
  v55 = *(a1 + 66);
  v31 = *(a1 + 56);
  v45 = v30;
  v46 = v31;
  v50 = v58;
  v51 = v57;
  v52 = v17;
  v53 = v39;
  v56 = *(a1 + 65);
  v32 = v21;
  v33 = v24;
  v34 = _Block_copy(aBlock);
  v35 = *(a1 + 40);
  v36 = [*(a1 + 32) _effectiveTraitCollectionForImageLookup];
  v8 = [v35 _lookUpObjectForTraitCollection:v36 objectAccessor:v34];

LABEL_26:
LABEL_27:

  return v8;
}

id __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (*(a1 + 136) != 1)
  {
LABEL_17:
    v20 = *(a1 + 40);
    if ((*(v20 + 128) & 4) != 0)
    {
      v17 = 0;
    }

    else
    {
      v21 = [*(v20 + 16) namedLookupWithName:*(a1 + 64) scaleFactor:*(a1 + 88) deviceIdiom:*(a1 + 104) deviceSubtype:*(a1 + 112) displayGamut:*(a1 + 96) layoutDirection:*(a1 + 120) sizeClassHorizontal:*(a1 + 80) sizeClassVertical:*(a1 + 128) appearanceName:v5 locale:*(a1 + 56)];
      if (v21)
      {
        if (!_isKindOfCUINamedLayerStack___CUINamedLayerStackClass)
        {
          _isKindOfCUINamedLayerStack___CUINamedLayerStackClass = objc_opt_class();
        }

        if (objc_opt_isKindOfClass())
        {
          v22 = *(a1 + 40);
          v23 = *(a1 + 64);
          v24 = v21;
          v25 = [v22 _assetForName:v23];
          v17 = [v24 flattenedUIImageWithAsset:v25 configuration:*(a1 + 32)];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke_3;
          v35[3] = &unk_1E71281A0;
          v36 = *(a1 + 64);
          v39 = *(a1 + 80);
          v26 = *(a1 + 96);
          v40 = *(a1 + 88);
          v41 = *(a1 + 104);
          v42 = v26;
          v43 = *(a1 + 120);
          v37 = v5;
          v38 = *(a1 + 56);
          [v25 _setRebuildStackImage:v35];

          v27 = v36;
        }

        else
        {
          v25 = v21;
          v24 = *(a1 + 32);
          if (a3)
          {
            v28 = v25;
            *a3 = v25;
          }

          v29 = [v25 layoutDirection];
          if (v29 && v29 != *(a1 + 96))
          {
            if ([v25 isFlippable])
            {
              v30 = 1;
            }

            else
            {
              v34 = _UIImageConfigurationWithFlippedLayoutDirection(v24);

              v30 = 0;
              v24 = v34;
            }
          }

          else
          {
            v30 = 0;
          }

          v27 = [*(*(a1 + 40) + 16) namedVectorImageWithName:*(a1 + 64) scaleFactor:*(a1 + 88) deviceIdiom:*(a1 + 104) deviceSubtype:*(a1 + 112) displayGamut:*(a1 + 96) layoutDirection:*(a1 + 120) sizeClassHorizontal:*(a1 + 80) sizeClassVertical:*(a1 + 128) appearanceName:v5 locale:*(a1 + 56)];
          v31 = [*(a1 + 40) _assetForName:*(a1 + 64)];
          v17 = [v25 UIImageWithAsset:v31 configuration:v24 flippedHorizontally:v30 optionalVectorImage:v27];

          if (*(a1 + 138) == 1)
          {
            objc_setAssociatedObject(v17, &CUINamedImageKey, v25, 1);
          }
        }
      }

      else
      {
        v17 = 0;
      }
    }

    goto LABEL_34;
  }

  v45 = 0;
  v46 = 0;
  v44 = 0.0;
  v6 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
  v7 = [v6 configurationByApplyingConfiguration:*(a1 + 32)];

  [v7 _deriveGlyphSize:&v46 weight:&v45 pointSize:&v44];
  v8 = [*(*(a1 + 40) + 16) namedVectorGlyphWithName:*(a1 + 48) scaleFactor:*(a1 + 88) deviceIdiom:*(a1 + 96) layoutDirection:v46 glyphSize:v45 glyphWeight:v5 glyphPointSize:*(a1 + 80) appearanceName:v44 locale:*(a1 + 56)];
  if (!v8)
  {

    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v7 variableValueMode];
  if (v10 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 == 2);
  }

  [v9 setVariableMode:v11];
  v12 = [v7 colorRenderingMode];
  if (v12 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 == 2);
  }

  [v9 setFillStyle:v13];
  v14 = [v9 layoutDirection];
  if (v14 && v14 != *(a1 + 96))
  {
    if ([v9 isFlippable])
    {
      v15 = 1;
    }

    else
    {
      v33 = _UIImageConfigurationWithFlippedLayoutDirection(v7);

      v15 = 0;
      v7 = v33;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(a1 + 40) _assetForName:*(a1 + 64)];
  v17 = [v9 UIImageWithAsset:v16 configuration:v7 flippedHorizontally:v15];

  if (*(a1 + 137) == 1 && v17)
  {
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v7;

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_34:

  return v17;
}

void __78___UIAssetManager_imageNamed_configuration_cachingOptions_attachCatalogImage___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && a3)
  {
    v7 = v5;
    v6 = [*(a3 + 16) namedLookupWithName:*(a1 + 32) scaleFactor:*(a1 + 64) deviceIdiom:*(a1 + 72) deviceSubtype:*(a1 + 80) displayGamut:*(a1 + 88) layoutDirection:*(a1 + 96) sizeClassHorizontal:*(a1 + 56) sizeClassVertical:*(a1 + 104) appearanceName:*(a1 + 40) locale:*(a1 + 48)];
    if (v6)
    {
      if (!_isKindOfCUINamedLayerStack___CUINamedLayerStackClass)
      {
        _isKindOfCUINamedLayerStack___CUINamedLayerStackClass = objc_opt_class();
      }

      if (objc_opt_isKindOfClass())
      {
        [v7 _setLayerStack:v6];
      }
    }

    v5 = v7;
  }
}

void __50___UIAssetManager_imageNamed_scale_idiom_subtype___block_invoke(double *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 setDisplayScale:v3];
  [v4 setUserInterfaceIdiom:*(a1 + 6)];
  [v4 _setNSIntegerValue:*(a1 + 7) forTraitToken:0x1EFE32530];
  [v4 setDisplayGamut:*(*(a1 + 4) + 56)];
  [v4 setLayoutDirection:*(*(a1 + 4) + 64)];
}

void __44___UIAssetManager_imageNamed_configuration___block_invoke()
{
  v2 = _UIMainBundleIdentifier();
  v1 = [v2 isEqualToString:@"com.tophatch.Concepts"];
  if ((v1 & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    if (([v0 isEqualToString:@"com.dji.go"] & 1) == 0)
    {
      _MergedGlobals_1354 = 0;
      goto LABEL_6;
    }
  }

  _MergedGlobals_1354 = dyld_program_sdk_at_least() ^ 1;
  if ((v1 & 1) == 0)
  {
LABEL_6:
  }
}

void __58___UIAssetManager_resolvedColorNamed_withTraitCollection___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDisplayGamut:v3];
  [v4 setUserInterfaceIdiom:a1[5]];
  [v4 setUserInterfaceStyle:a1[6]];
  [v4 setAccessibilityContrast:a1[7]];
}

id __58___UIAssetManager_resolvedColorNamed_withTraitCollection___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = [*(a1[4] + 16) colorWithName:a1[5] displayGamut:a1[6] deviceIdiom:a1[7] appearanceName:a2];
  if (a3 && v4)
  {
    v4 = v4;
    *a3 = v4;
  }

  return v4;
}

void __45___UIAssetManager__assetFromMapForName_lock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 imageAsset];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
    if (!*(*(a1[6] + 8) + 40))
    {
      [*(a1[4] + 80) removeObjectForKey:a1[5]];
      v2 = v6;
    }
  }
}

void __52___UIAssetManager__insertAssetIntoMap_forName_lock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetFromMapForName:*(a1 + 40) lock:0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 56) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, *(a1 + 48));
    v8 = [_UIImageAssetMapEnvelope wrapAsset:*(a1 + 48)];
    [*(*(a1 + 32) + 80) setObject:v8 forKey:*(a1 + 40)];
  }
}

void __33___UIAssetManager__assetForName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetFromMapForName:*(a1 + 40) lock:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (!v5)
  {
    v6 = [[UIImageAsset alloc] _initWithAssetName:*(a1 + 40) forManager:*(a1 + 32)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  v9 = [*(a1 + 32) _insertAssetIntoMap:v5 forName:*(a1 + 40) lock:0];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void __88___UIAssetManager__performLookUpObjectForTraitCollection_outNamedLookup_objectAccessor___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = [*(a1 + 32) _translateAppearanceNameToNative:a2];
  if ([*(a1 + 40) containsObject:?])
  {
    v5 = (*(*(a1 + 48) + 16))();
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

@end