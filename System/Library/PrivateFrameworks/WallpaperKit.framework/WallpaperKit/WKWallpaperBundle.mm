@interface WKWallpaperBundle
+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)l;
+ (id)_createWallpaperBundleInDirectory:(id)directory version:(int64_t)version identifier:(int64_t)identifier name:(id)name family:(id)family wantsDeviceMotion:(BOOL)motion isOffloaded:(BOOL)offloaded logicalScreenClass:(id)self0 thumbnailImageURL:(id)self1 adjustmentTraits:(id)self2 preferredProminentColors:(id)self3 preferredTitleColors:(id)self4 assetMapping:(id)self5;
- (BOOL)isEqual:(id)equal;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (NSString)identifierString;
- (UIImage)thumbnailImage;
- (WKWallpaperBundle)initWithURL:(id)l;
- (id)_bokehWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredStillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance;
- (id)_liveWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_processCommonWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_stillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_thumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance;
- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)l error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)fileBasedWallpaperForLocation:(id)location andAppearance:(id)appearance;
- (id)thumbnailRepresentableForLocation:(id)location andAppearance:(id)appearance;
- (id)valueBasedWallpaperForLocation:(id)location andAppearance:(id)appearance;
- (unint64_t)hash;
- (unint64_t)wallpaperBackingTypeForLocation:(id)location;
- (void)_loadBundle;
- (void)_processAssetDictionary:(id)dictionary forLocation:(id)location;
- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)keypath;
@end

@implementation WKWallpaperBundle

- (WKWallpaperBundle)initWithURL:(id)l
{
  lCopy = l;
  v18 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v18];
  v8 = v18;

  if (v7 && (v8 & 1) != 0)
  {
    v17.receiver = self;
    v17.super_class = WKWallpaperBundle;
    v9 = [(WKWallpaperBundle *)&v17 init];
    if (v9)
    {
      v10 = [lCopy copy];
      bundleURL = v9->_bundleURL;
      v9->_bundleURL = v10;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      wallpaperAssetLookup = v9->__wallpaperAssetLookup;
      v9->__wallpaperAssetLookup = dictionary;

      [(WKWallpaperBundle *)v9 _loadBundle];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WKWallpaperBundle initWithURL:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v6 = [v4 initWithURL:bundleURL];

  return v6;
}

- (void)_loadBundle
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E4A23000, v2, v3, "%{public}@: Wallpaper bundle thumbnail does not exist at URL '%{public}@'", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_processAssetDictionary:(id)dictionary forLocation:(id)location
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  locationCopy = location;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [dictionaryCopy countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v40)
  {
    v39 = *v42;
    *&v7 = 138543874;
    v37 = v7;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        objc_opt_class();
        v13 = [v12 objectForKeyedSubscript:@"type"];
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (!v15)
        {
          v53[0] = @"assets";
          v53[1] = v9;
          v53[2] = @"type";
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
          v17 = [v16 componentsJoinedByString:@"."];
          [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
        }

        v18 = WKWallpaperTypeFromString(v15);
        if (v18 > 3)
        {
          if (v18 <= 5)
          {
            if (v18 == 4)
            {
              [(WKWallpaperBundle *)self _layeredStillWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
            }

            else
            {
              [(WKWallpaperBundle *)self _layeredStripeWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
            }
            v19 = ;
          }

          else
          {
            switch(v18)
            {
              case 6:
                v19 = [(WKWallpaperBundle *)self _bokehWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              case 7:
                v19 = [(WKWallpaperBundle *)self _layeredAnimationWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              case 8:
                v19 = [(WKWallpaperBundle *)self _parameterizedCAWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              default:
                goto LABEL_59;
            }
          }

LABEL_48:
          v25 = v19;
          if (v19)
          {
            goto LABEL_49;
          }

          goto LABEL_59;
        }

        if (v18 <= 1)
        {
          if (v18)
          {
            if (v18 != 1)
            {
              goto LABEL_59;
            }

            v19 = [(WKWallpaperBundle *)self _liveWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
          }

          else
          {
            v19 = [(WKWallpaperBundle *)self _stillWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
          }

          goto LABEL_48;
        }

        if (v18 == 2)
        {
          objc_opt_class();
          v23 = [v12 objectForKeyedSubscript:@"representedType"];
          if (v23)
          {
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v22 = v24;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v52[0] = @"assets";
            v52[1] = v9;
            v52[2] = @"representedType";
            v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
            v33 = [v32 componentsJoinedByString:@"."];
            [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v33];
          }

          v31 = [(WKWallpaperBundle *)self _thumbnailWallpaperWithMetadataDictionary:v12 representedType:WKWallpaperTypeFromString(v22) wallpaperAppearance:v9];
        }

        else
        {
          objc_opt_class();
          v20 = [v12 objectForKeyedSubscript:@"representedType"];
          if (v20)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v51[0] = @"assets";
            v51[1] = v9;
            v51[2] = @"representedType";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
            v30 = [v29 componentsJoinedByString:@"."];
            [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v30];
          }

          v31 = [(WKWallpaperBundle *)self _layeredThumbnailWallpaperWithMetadataDictionary:v12 representedType:WKWallpaperTypeFromString(v22) wallpaperAppearance:v9];
        }

        v25 = v31;

        if (v25)
        {
LABEL_49:
          _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          v27 = [_wallpaperAssetLookup na_objectForKey:locationCopy withDefaultValue:&__block_literal_global];

          [v27 na_safeSetObject:v25 forKey:v9];
          _wallpaperAssetLookup2 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          [_wallpaperAssetLookup2 na_safeSetObject:v27 forKey:locationCopy];

          goto LABEL_61;
        }

LABEL_59:
        v25 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = v37;
          v46 = v35;
          v47 = 2114;
          v48 = locationCopy;
          v49 = 2114;
          v50 = v9;
          _os_log_error_impl(&dword_1E4A23000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Could not process wallpaper for location '%{public}@' and appearance '%{public}@'.", buf, 0x20u);
        }

LABEL_61:
      }

      v40 = [dictionaryCopy countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)l
{
  v62 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  pathExtension = [(__CFString *)lCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v7 = [lowercaseString isEqualToString:@"wallpaper"];

  if (v7)
  {
    v53 = 0;
    path = [(__CFString *)lCopy path];
    v9 = [defaultManager fileExistsAtPath:path isDirectory:&v53];
    v10 = v53;

    if (!v9 || (v10 & 1) == 0)
    {
      v11 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

      LOBYTE(v20) = 0;
      goto LABEL_28;
    }

    v11 = [(__CFString *)lCopy URLByAppendingPathComponent:@"Wallpaper.plist"];
    path2 = [(__CFString *)lCopy path];
    v13 = [defaultManager fileExistsAtPath:path2];

    if ((v13 & 1) == 0)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

      LOBYTE(v20) = 0;
      goto LABEL_27;
    }

    path3 = [v11 path];
    v15 = [path3 containsString:CPSharedResourcesDirectory()];

    if (v15)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = CPSharedResourcesDirectory();
        *buf = 136315394;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = v17;
        v18 = v17;
LABEL_20:
        _os_log_impl(&dword_1E4A23000, v16, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper is in '%{public}@', should load.", buf, 0x16u);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    path4 = [v11 path];
    v22 = NSTemporaryDirectory();
    v23 = [path4 containsString:v22];

    if (v23)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSTemporaryDirectory();
        *buf = 136315394;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = v18;
        goto LABEL_20;
      }

LABEL_21:
      LOBYTE(v20) = 1;
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    v52 = 0;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11 error:&v52];
    v16 = v52;
    if (v16)
    {
      sf_productType = WKLogForCategory(3uLL);
      if (os_log_type_enabled(sf_productType, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

LABEL_25:
      LOBYTE(v20) = 0;
LABEL_26:

      goto LABEL_27;
    }

    wk_wallpaperKitUserDefaults = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    wk_ignoreLogicalScreenClassForWallpaperBundle = [wk_wallpaperKitUserDefaults wk_ignoreLogicalScreenClassForWallpaperBundle];

    if ((wk_ignoreLogicalScreenClassForWallpaperBundle & 1) == 0)
    {
      objc_opt_class();
      v30 = [v24 objectForKeyedSubscript:@"logicalScreenClass"];
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      sf_productType = v31;

      v32 = WKLogForCategory(3uLL);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (!sf_productType)
      {
        if (v33)
        {
          *buf = 136315650;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = @"logicalScreenClass";
          v58 = 2114;
          v59 = v11;
          _os_log_impl(&dword_1E4A23000, v32, OS_LOG_TYPE_DEFAULT, "%s: No entry found for '%{public}@' key in 'Wallpaper.plist' at URL '%{public}@'.", buf, 0x20u);
        }

        LOBYTE(v20) = 0;
        sf_productType = v32;
        goto LABEL_26;
      }

      if (v33)
      {
        path5 = [(__CFString *)lCopy path];
        *buf = 136315650;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = path5;
        v58 = 2114;
        v59 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v32, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper '%{public}@' logical screen class is '%{public}@'.", buf, 0x20u);
      }

      v35 = WKLogicalScreenClassString();
      if (([v35 isEqualToString:sf_productType]& 1) == 0 && ([sf_productType isEqualToString:@"any"]& 1) == 0)
      {
        v50 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = sf_productType;
          v58 = 2114;
          v59 = v35;
          v60 = 2114;
          v61 = @"any";
          _os_log_impl(&dword_1E4A23000, v50, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper Bundle logical screen class '%{public}@' does not match the current device logical screen class '%{public}@' or '%{public}@'.", buf, 0x2Au);
        }

        goto LABEL_25;
      }
    }

    wk_wallpaperKitUserDefaults2 = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    wk_ignoreProductTypesForWallpaperBundle = [wk_wallpaperKitUserDefaults2 wk_ignoreProductTypesForWallpaperBundle];

    if (wk_ignoreProductTypesForWallpaperBundle)
    {
      sf_productType = WKLogForCategory(3uLL);
      if (os_log_type_enabled(sf_productType, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        _os_log_impl(&dword_1E4A23000, sf_productType, OS_LOG_TYPE_DEFAULT, "%s: Device is configured to load wallpapers for all product types.", buf, 0xCu);
      }

      LOBYTE(v20) = 1;
      goto LABEL_26;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_productType = [currentDevice sf_productType];

    objc_opt_class();
    v39 = [v24 objectForKeyedSubscript:@"unsupportedProductTypes"];
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;

    if ([v41 count])
    {
      v42 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = @"unsupportedProductTypes";
        v58 = 2114;
        v59 = v41;
        v60 = 2114;
        v61 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v42, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v43 = [MEMORY[0x1E695DFD8] setWithArray:v41];
      if ([v43 containsObject:sf_productType])
      {
        v44 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = sf_productType;
          _os_log_impl(&dword_1E4A23000, v44, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle is not supported for product type %{public}@.", buf, 0x16u);
        }

        LOBYTE(v20) = 0;
LABEL_72:

        goto LABEL_26;
      }
    }

    v51 = v41;
    objc_opt_class();
    v45 = [v24 objectForKeyedSubscript:@"productTypes"];
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v43 = v46;

    v47 = [v43 count];
    v44 = WKLogForCategory(3uLL);
    v48 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v47)
    {
      if (v48)
      {
        *buf = 136315906;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = @"productTypes";
        v58 = 2114;
        v59 = v43;
        v60 = 2114;
        v61 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v44, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v44 = [MEMORY[0x1E695DFD8] setWithArray:v43];
      v20 = [v44 containsObject:sf_productType];
      if (v20)
      {
        v49 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = sf_productType;
          _os_log_impl(&dword_1E4A23000, v49, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle is supported for product type %{public}@.", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v48)
      {
        *buf = 136315394;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = lCopy;
        _os_log_impl(&dword_1E4A23000, v44, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle at URL '%{public}@' should be loaded", buf, 0x16u);
      }

      LOBYTE(v20) = 1;
    }

    v41 = v51;
    goto LABEL_72;
  }

  v19 = WKLogForCategory(3uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
  }

  LOBYTE(v20) = 0;
LABEL_29:

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

- (UIImage)thumbnailImage
{
  _thumbnailImage = [(WKWallpaperBundle *)self _thumbnailImage];

  if (!_thumbnailImage)
  {
    thumbnailImageURL = [(WKWallpaperBundle *)self thumbnailImageURL];

    if (thumbnailImageURL)
    {
      v5 = MEMORY[0x1E69DCAB8];
      thumbnailImageURL2 = [(WKWallpaperBundle *)self thumbnailImageURL];
      path = [thumbnailImageURL2 path];
      thumbnailImage = [v5 imageWithContentsOfFile:path];
      [(WKWallpaperBundle *)self set_thumbnailImage:thumbnailImage];
    }

    else
    {
      thumbnailImageURL2 = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"];
      path = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"dark"];
      v9 = MEMORY[0x1E69DCAB8];
      thumbnailImage = [thumbnailImageURL2 thumbnailImage];
      thumbnailImage2 = [path thumbnailImage];
      v11 = [v9 wk_splitThumbnailWithLightAppearanceImage:thumbnailImage darkAppearanceImage:thumbnailImage2];
      [(WKWallpaperBundle *)self set_thumbnailImage:v11];
    }
  }

  return [(WKWallpaperBundle *)self _thumbnailImage];
}

- (unint64_t)wallpaperBackingTypeForLocation:(id)location
{
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v6 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v7 = [v6 objectForKeyedSubscript:@"default"];

  backingType = [v7 backingType];
  return backingType;
}

- (id)thumbnailRepresentableForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EABAB8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)fileBasedWallpaperForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EAC8B0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)valueBasedWallpaperForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EAC6A0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (NSString)identifierString
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WKWallpaperBundle identifier](self, "identifier")}];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)l error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(WKWallpaperBundle *)self supportsCopying])
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    lastPathComponent = [bundleURL lastPathComponent];

    v9 = [lCopy URLByAppendingPathComponent:lastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v12 = [defaultManager copyItemAtURL:bundleURL2 toURL:v9 error:error];

    if (!v12)
    {
      goto LABEL_14;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = *MEMORY[0x1E696A3A0];
    v36 = *MEMORY[0x1E696A3A0];
    v15 = *MEMORY[0x1E696A3A8];
    v37 = *MEMORY[0x1E696A3A8];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    path = [v9 path];
    v18 = [defaultManager2 setAttributes:v16 ofItemAtPath:path error:error];

    if (v18)
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [defaultManager3 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:0 errorHandler:0];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v21);
            }

            if (![*(*(&v31 + 1) + 8 * v25) setResourceValue:v15 forKey:v14 error:{error, v31}])
            {

              v26 = 0;
              goto LABEL_16;
            }

            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v26 = v9;
LABEL_16:
    }

    else
    {
LABEL_14:
      v26 = 0;
    }
  }

  else
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = WKWallpaperKitErrorDomain;
    v38 = *MEMORY[0x1E696A580];
    v39[0] = @"Unsupported copy action for wallpaper (supportsCopying == NO).";
    lastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v27 errorWithDomain:v28 code:-10003 userInfo:lastPathComponent];
    *error = v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)keypath
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = MEMORY[0x1E696AEC0];
  keypathCopy = keypath;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  keypathCopy = [v6 stringWithFormat:@"%@: (path: '%@') metadata does not contain valid value for keypath: '%@'", v9, bundleURL, keypathCopy];

  v12 = [v4 exceptionWithName:v5 reason:keypathCopy userInfo:0];

  [v12 raise];
}

- (id)_processCommonWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v47[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v47[0] = @"assets";
    v47[1] = appearanceCopy;
    v47[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v42 = v10;
  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v46[0] = @"assets";
    v46[1] = appearanceCopy;
    v46[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailImageFileName"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v45[0] = @"assets";
    v45[1] = appearanceCopy;
    v45[2] = @"thumbnailImageFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = appearanceCopy;
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v25 = [bundleURL URLByAppendingPathComponent:v20];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v25 path];
  v28 = [defaultManager fileExistsAtPath:path];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    path2 = [v25 path];
    v35 = [v31 stringWithFormat:@"%@: Thumbnail image does not exist at path '%@'", v33, path2];
    v36 = [v29 exceptionWithName:v30 reason:v35 userInfo:0];

    [v36 raise];
  }

  v43[0] = @"identifier";
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v44[0] = v37;
  v44[1] = v15;
  v43[1] = @"name";
  v43[2] = @"thumbnailImageFileURL";
  v44[2] = v25;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v31[3] = *MEMORY[0x1E69E9840];
  appearanceCopy = appearance;
  dictionaryCopy = dictionary;
  v8 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:dictionaryCopy wallpaperAppearance:appearanceCopy];
  v9 = [v8 mutableCopy];

  objc_opt_class();
  v10 = [dictionaryCopy objectForKeyedSubscript:@"fullSizeImageFileName"];

  v11 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v31[0] = @"assets";
    v31[1] = appearanceCopy;
    v31[2] = @"fullSizeImageFileName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v15 = [v14 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v15];
  }

  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v17 = [bundleURL URLByAppendingPathComponent:v13];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v17 path];
  v20 = [defaultManager fileExistsAtPath:path];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    path2 = [v17 path];
    v27 = [v23 stringWithFormat:@"%@: Full size image does not exist at path '%@'", v25, path2];
    v28 = [v21 exceptionWithName:v22 reason:v27 userInfo:0];

    [v28 raise];
  }

  [v9 setObject:v17 forKeyedSubscript:@"fullSizeImageFileURL"];

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_thumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance
{
  v6 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:dictionary wallpaperAppearance:appearance];
  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = [v6 objectForKeyedSubscript:@"name"];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = -[WKThumbnailWallpaper initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:]([WKThumbnailWallpaper alloc], "initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:", [v9 unsignedIntegerValue], v12, 2, type, 0, v15);

  return v16;
}

- (id)_stillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v4 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:dictionary wallpaperAppearance:appearance];
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"name"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:@"fullSizeImageFileURL"];
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = -[WKStillWallpaper initWithIdentifier:name:type:thumbnailImageURL:fullsizeImageURL:]([WKStillWallpaper alloc], "initWithIdentifier:name:type:thumbnailImageURL:fullsizeImageURL:", [v7 unsignedIntegerValue], v10, 0, v16, v13);

  return v17;
}

- (id)_liveWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v58[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  v7 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:dictionaryCopy wallpaperAppearance:?];
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v55 = v9;
  }

  else
  {
    v55 = 0;
  }

  objc_opt_class();
  v10 = [v7 objectForKeyedSubscript:@"name"];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v54 = v11;
  }

  else
  {
    v54 = 0;
  }

  objc_opt_class();
  v12 = [v7 objectForKeyedSubscript:@"fullSizeImageFileURL"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  objc_opt_class();
  v15 = [v7 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"videoFileName"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v20)
  {
    v58[0] = @"assets";
    v58[1] = appearanceCopy;
    v58[2] = @"videoFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v24 = [bundleURL URLByAppendingPathComponent:v20];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v24 path];
  v27 = [defaultManager fileExistsAtPath:path];

  if ((v27 & 1) == 0)
  {
    v53 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v24 path];
    v32 = v7;
    v33 = dictionaryCopy;
    selfCopy = self;
    v35 = v17;
    v37 = v36 = v14;
    v38 = [v29 stringWithFormat:@"%@: Video asset does not exist at path '%@'", v31, v37];
    v39 = [v53 exceptionWithName:v28 reason:v38 userInfo:0];

    v14 = v36;
    v17 = v35;
    self = selfCopy;
    dictionaryCopy = v33;
    v7 = v32;

    [v39 raise];
  }

  v40 = [dictionaryCopy objectForKeyedSubscript:@"stillTimeInVideo"];
  if (v40)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v42 = v40;
    if ((isKindOfClass & 1) == 0)
    {
      v57[0] = @"assets";
      v57[1] = appearanceCopy;
      v57[2] = @"stillTimeInVideo";
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
      v44 = [v43 componentsJoinedByString:@"."];
      [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v44];

      v42 = v40;
    }
  }

  else
  {
    v42 = &unk_1F5EAA6E8;
  }

  v45 = v42;

  v46 = [WKLiveWallpaper alloc];
  unsignedIntegerValue = [v55 unsignedIntegerValue];
  [v45 doubleValue];
  v49 = v48;

  v50 = [(WKLiveWallpaper *)v46 initWithIdentifier:unsignedIntegerValue name:v54 type:1 thumbnailImageURL:v17 fullsizeImageURL:v14 videoAssetURL:v24 stillTimeInVideo:v49];
  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance
{
  v86[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v86[0] = @"assets";
    v86[1] = appearanceCopy;
    v86[2] = @"identifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    v13 = [v12 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v13];
  }

  integerValue = [v11 integerValue];
  v14 = 0x1E696A000uLL;
  objc_opt_class();
  v15 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    v85[0] = @"assets";
    v85[1] = appearanceCopy;
    v85[2] = @"name";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
    v19 = [v18 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v19];
  }

  objc_opt_class();
  v20 = [dictionaryCopy objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0x1E696A000uLL;
  v81 = v22;
  v82 = v17;
  if (v22)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v25 = [bundleURL URLByAppendingPathComponent:v22];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v25 path];
    v28 = [defaultManager fileExistsAtPath:path];

    if ((v28 & 1) == 0)
    {
      v29 = MEMORY[0x1E695DF30];
      v30 = *MEMORY[0x1E695D940];
      v31 = MEMORY[0x1E696AEC0];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [v25 path];
      v35 = v34 = v25;
      v36 = [v31 stringWithFormat:@"%@: Background thumbnail asset does not exist at path '%@'", v33, v35];
      v37 = [v29 exceptionWithName:v30 reason:v36 userInfo:0];

      v25 = v34;
      v23 = 0x1E696A000;

      v14 = 0x1E696A000;
      [v37 raise];
    }
  }

  else
  {
    v25 = 0;
  }

  v38 = *(v14 + 3776);
  objc_opt_class();
  v39 = [dictionaryCopy objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
  if (v39)
  {
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v79 = dictionaryCopy;
  v80 = v25;
  v78 = appearanceCopy;
  if (v41)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v43 = [bundleURL2 URLByAppendingPathComponent:v41];

    defaultManager2 = [*(v23 + 3080) defaultManager];
    path2 = [v43 path];
    v46 = [defaultManager2 fileExistsAtPath:path2];

    if ((v46 & 1) == 0)
    {
      v47 = MEMORY[0x1E695DF30];
      v48 = *MEMORY[0x1E695D940];
      v49 = MEMORY[0x1E696AEC0];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      [v43 path];
      v52 = v23;
      selfCopy = self;
      v55 = v54 = v11;
      v56 = [v49 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v51, v55];
      v57 = [v47 exceptionWithName:v48 reason:v56 userInfo:0];

      v11 = v54;
      self = selfCopy;
      v23 = v52;

      appearanceCopy = v78;
      dictionaryCopy = v79;
      [v57 raise];
    }
  }

  else
  {
    v43 = 0;
  }

  objc_opt_class();
  v58 = [dictionaryCopy objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
  if (v58)
  {
    if (objc_opt_isKindOfClass())
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    v77 = v11;
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v62 = [bundleURL3 URLByAppendingPathComponent:v60];

    defaultManager3 = [*(v23 + 3080) defaultManager];
    path3 = [v62 path];
    v65 = [defaultManager3 fileExistsAtPath:path3];

    if ((v65 & 1) == 0)
    {
      v66 = MEMORY[0x1E695DF30];
      v67 = *MEMORY[0x1E695D940];
      v68 = MEMORY[0x1E696AEC0];
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      path4 = [v62 path];
      v72 = [v68 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v70, path4];
      v73 = [v66 exceptionWithName:v67 reason:v72 userInfo:0];

      [v73 raise];
    }

    appearanceCopy = v78;
    dictionaryCopy = v79;
    v11 = v77;
  }

  else
  {
    v62 = 0;
  }

  v74 = [[WKLayeredThumbnailWallpaper alloc] initWithIdentifier:integerValue name:v82 type:3 representedType:type backgroundThumbnailImageURL:v80 foregroundThumbnailImageURL:v43 floatingThumbnailImageURL:v62];

  v75 = *MEMORY[0x1E69E9840];

  return v74;
}

- (id)_layeredStillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v143[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v143[0] = @"assets";
    v143[1] = appearanceCopy;
    v143[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v138 = v10;
  integerValue = [v10 integerValue];
  v13 = 0x1E696A000uLL;
  objc_opt_class();
  v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v142[0] = @"assets";
    v142[1] = appearanceCopy;
    v142[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [dictionaryCopy objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0x1E696A000uLL;
  v135 = v21;
  if (v21)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v24 = [bundleURL URLByAppendingPathComponent:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v24 path];
    v27 = [defaultManager fileExistsAtPath:path];

    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      NSStringFromClass(v31);
      v32 = v16;
      v34 = v33 = appearanceCopy;
      [v24 path];
      v36 = v35 = v24;
      v37 = [v30 stringWithFormat:@"%@: Background thumbnail asset does not exist at path '%@'", v34, v36];
      v38 = [v28 exceptionWithName:v29 reason:v37 userInfo:0];

      v24 = v35;
      v22 = 0x1E696A000;

      appearanceCopy = v33;
      v16 = v32;
      v13 = 0x1E696A000;
      [v38 raise];
    }
  }

  else
  {
    v24 = 0;
  }

  v39 = *(v13 + 3776);
  objc_opt_class();
  v40 = [dictionaryCopy objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
  if (v40)
  {
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v133 = v42;
  v134 = v24;
  selfCopy = self;
  if (v42)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v44 = [bundleURL2 URLByAppendingPathComponent:v42];

    defaultManager2 = [*(v22 + 3080) defaultManager];
    path2 = [v44 path];
    v47 = [defaultManager2 fileExistsAtPath:path2];

    if ((v47 & 1) == 0)
    {
      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = MEMORY[0x1E696AEC0];
      v51 = objc_opt_class();
      NSStringFromClass(v51);
      v52 = v16;
      v54 = v53 = appearanceCopy;
      path3 = [v44 path];
      v56 = [v50 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v54, path3];
      v57 = [v48 exceptionWithName:v49 reason:v56 userInfo:0];

      appearanceCopy = v53;
      v16 = v52;
      self = selfCopy;
      [v57 raise];
    }
  }

  else
  {
    v44 = 0;
  }

  objc_opt_class();
  v58 = [dictionaryCopy objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
  if (v58)
  {
    if (objc_opt_isKindOfClass())
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v132 = v44;

  v139 = appearanceCopy;
  v137 = v16;
  v131 = v60;
  if (v60)
  {
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v62 = [bundleURL3 URLByAppendingPathComponent:v60];

    defaultManager3 = [*(v22 + 3080) defaultManager];
    path4 = [v62 path];
    v65 = [defaultManager3 fileExistsAtPath:path4];

    if ((v65 & 1) == 0)
    {
      v66 = MEMORY[0x1E695DF30];
      v67 = *MEMORY[0x1E695D940];
      v68 = MEMORY[0x1E696AEC0];
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      path5 = [v62 path];
      v72 = [v68 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v70, path5];
      v73 = [v66 exceptionWithName:v67 reason:v72 userInfo:0];

      v22 = 0x1E696A000;
      [v73 raise];
    }
  }

  else
  {
    v62 = 0;
  }

  objc_opt_class();
  v74 = [dictionaryCopy objectForKeyedSubscript:@"backgroundFullSizeImageFileName"];
  if (v74)
  {
    if (objc_opt_isKindOfClass())
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  if (v76)
  {
    bundleURL4 = [(WKWallpaperBundle *)self bundleURL];
    v78 = [bundleURL4 URLByAppendingPathComponent:v76];

    defaultManager4 = [*(v22 + 3080) defaultManager];
    path6 = [v78 path];
    v81 = [defaultManager4 fileExistsAtPath:path6];

    if ((v81 & 1) == 0)
    {
      v82 = MEMORY[0x1E695DF30];
      v83 = *MEMORY[0x1E695D940];
      v84 = MEMORY[0x1E696AEC0];
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      [v78 path];
      v88 = v87 = v62;
      v89 = [v84 stringWithFormat:@"%@: Background full size asset does not exist at path '%@'", v86, v88];
      v90 = [v82 exceptionWithName:v83 reason:v89 userInfo:0];

      v62 = v87;
      self = selfCopy;
      [v90 raise];
    }
  }

  else
  {
    v78 = 0;
  }

  objc_opt_class();
  v91 = [dictionaryCopy objectForKeyedSubscript:@"foregroundFullSizeImageFileName"];
  if (v91)
  {
    if (objc_opt_isKindOfClass())
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    v93 = v92;
  }

  else
  {
    v93 = 0;
  }

  v141 = dictionaryCopy;
  v94 = v78;
  v130 = v93;
  if (v93)
  {
    v95 = v62;
    bundleURL5 = [(WKWallpaperBundle *)self bundleURL];
    v97 = [bundleURL5 URLByAppendingPathComponent:v93];

    defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
    path7 = [v97 path];
    v100 = [defaultManager5 fileExistsAtPath:path7];

    if ((v100 & 1) == 0)
    {
      v101 = MEMORY[0x1E695DF30];
      v102 = *MEMORY[0x1E695D940];
      v103 = MEMORY[0x1E696AEC0];
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      path8 = [v97 path];
      v106 = [v103 stringWithFormat:@"%@: Foreground full size asset does not exist at path '%@'", v105, path8];
      v108 = [v101 exceptionWithName:v102 reason:v106 userInfo:0];

      dictionaryCopy = v141;
      [v108 raise];
    }

    v62 = v95;
  }

  else
  {
    v97 = 0;
  }

  objc_opt_class();
  v109 = [dictionaryCopy objectForKeyedSubscript:@"floatingFullSizeImageFileName"];
  if (v109)
  {
    if (objc_opt_isKindOfClass())
    {
      v110 = v109;
    }

    else
    {
      v110 = 0;
    }

    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  if (v111)
  {
    v129 = v76;
    v112 = v62;
    bundleURL6 = [(WKWallpaperBundle *)selfCopy bundleURL];
    v114 = [bundleURL6 URLByAppendingPathComponent:v111];

    defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
    path9 = [v114 path];
    v117 = [defaultManager6 fileExistsAtPath:path9];

    if ((v117 & 1) == 0)
    {
      v118 = MEMORY[0x1E695DF30];
      v119 = *MEMORY[0x1E695D940];
      v120 = MEMORY[0x1E696AEC0];
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      path10 = [v114 path];
      v123 = [v120 stringWithFormat:@"%@: Floating full size asset does not exist at path '%@'", v122, path10];
      v125 = [v118 exceptionWithName:v119 reason:v123 userInfo:0];

      [v125 raise];
    }

    v62 = v112;
    v76 = v129;
  }

  else
  {
    v114 = 0;
  }

  v126 = [[WKLayeredStillWallpaper alloc] initWithIdentifier:integerValue name:v137 backgroundThumbnailImageURL:v134 foregroundThumbnailImageURL:v132 floatingThumbnailImageURL:v62 backgroundFullSizeImageURL:v94 foregroundFullSizeImageURL:v97 floatingFullSizeImageURL:v114];

  v127 = *MEMORY[0x1E69E9840];

  return v126;
}

- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v56[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v56[0] = @"assets";
    v56[1] = appearanceCopy;
    v56[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v55[0] = @"assets";
    v55[1] = appearanceCopy;
    v55[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v51 = v10;

  if (!v20)
  {
    v54[0] = @"assets";
    v54[1] = appearanceCopy;
    v54[2] = @"backgroundColor";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = appearanceCopy;
  v24 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v20];
  objc_opt_class();
  v25 = [dictionaryCopy objectForKeyedSubscript:@"stripeAngleDegrees"];
  if (v25)
  {
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    v53[0] = @"assets";
    v53[1] = v23;
    v53[2] = @"stripeAngleDegrees";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
    v29 = [v28 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v29];
  }

  objc_opt_class();
  v30 = [dictionaryCopy objectForKeyedSubscript:@"stripeHeightFactor"];
  if (v30)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (!v32)
  {
    v52[0] = @"assets";
    v52[1] = v23;
    v52[2] = @"stripeHeightFactor";
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
    v34 = [v33 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v34];
  }

  objc_opt_class();
  v35 = [dictionaryCopy objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
  if (v35)
  {
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    objc_opt_class();
    v38 = [dictionaryCopy objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
    if (v38)
    {
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = &unk_1F5EAA700;
  }

  v41 = [WKLayeredStripeWallpaper alloc];
  [v27 doubleValue];
  v43 = v42;
  [v32 doubleValue];
  v45 = v44;
  [v40 doubleValue];
  v47 = [(WKLayeredStripeWallpaper *)v41 initWithIdentifier:integerValue name:v15 backgroundColor:v24 stripeAngleDegrees:v43 stripeHeightFactor:v45 firstStripeOffsetScaleFactor:v46];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_bokehWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v72[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v72[0] = @"assets";
    v72[1] = appearanceCopy;
    v72[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v64 = v10;
  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v63 = v15;
  if (!v15)
  {
    v71[0] = @"assets";
    v71[1] = appearanceCopy;
    v71[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColors"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v70[0] = @"assets";
    v70[1] = appearanceCopy;
    v70[2] = @"backgroundColors";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v61 = v20;
  v60 = [v20 na_map:&__block_literal_global_277];
  objc_opt_class();
  v23 = [dictionaryCopy objectForKeyedSubscript:@"bubbleColors"];
  if (v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    v69[0] = @"assets";
    v69[1] = appearanceCopy;
    v69[2] = @"bubbleColors";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
    v27 = [v26 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v27];
  }

  v58 = v25;
  v59 = [v25 na_map:&__block_literal_global_279];
  objc_opt_class();
  v28 = [dictionaryCopy objectForKeyedSubscript:@"bubbleCount"];
  if (v28)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    v68[0] = @"assets";
    v68[1] = appearanceCopy;
    v68[2] = @"bubbleCount";
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
    v32 = [v31 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v32];
  }

  objc_opt_class();
  v33 = [dictionaryCopy objectForKeyedSubscript:@"bubbleScale"];
  if (v33)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (!v35)
  {
    v67[0] = @"assets";
    v67[1] = appearanceCopy;
    v67[2] = @"bubbleScale";
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
    v37 = [v36 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v37];
  }

  selfCopy = self;
  v39 = appearanceCopy;
  objc_opt_class();
  v40 = [dictionaryCopy objectForKeyedSubscript:@"parallaxMultiplier"];
  if (v40)
  {
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (!v42)
  {
    v66[0] = @"assets";
    v66[1] = appearanceCopy;
    v66[2] = @"parallaxMultiplier";
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v44 = [v43 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)selfCopy _raiseInvalidMetadataExceptionForMetadataKeypath:v44];
  }

  objc_opt_class();
  v45 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailSeed"];
  if (v45)
  {
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v47)
  {
    v65[0] = @"assets";
    v65[1] = v39;
    v65[2] = @"thumbnailSeed";
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
    v49 = [v48 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)selfCopy _raiseInvalidMetadataExceptionForMetadataKeypath:v49];
  }

  v50 = [WKBokehWallpaper alloc];
  integerValue2 = [v30 integerValue];
  [v35 doubleValue];
  v53 = v52;
  [v42 doubleValue];
  v55 = -[WKBokehWallpaper initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:](v50, "initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:", integerValue, v63, v60, v59, integerValue2, [v47 integerValue], v53, v54);

  v56 = *MEMORY[0x1E69E9840];

  return v55;
}

id __79__WKWallpaperBundle__bokehWallpaperWithMetadataDictionary_wallpaperAppearance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v3];

  return v6;
}

id __79__WKWallpaperBundle__bokehWallpaperWithMetadataDictionary_wallpaperAppearance___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v3];

  return v6;
}

- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v80[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v80[0] = @"assets";
    v80[1] = appearanceCopy;
    v80[2] = @"identifier";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
    v11 = [v10 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v11];
  }

  integerValue = [v9 integerValue];
  v12 = 0x1E696A000uLL;
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v79[0] = @"assets";
    v79[1] = appearanceCopy;
    v79[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundAnimationFileName"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v76 = v20;
  v77 = v15;
  if (v20)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v22 = [bundleURL URLByAppendingPathComponent:v20];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v22 path];
    v25 = [defaultManager fileExistsAtPath:path];

    if ((v25 & 1) == 0)
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = *MEMORY[0x1E695D940];
      v28 = MEMORY[0x1E696AEC0];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      path2 = [v22 path];
      v32 = [v28 stringWithFormat:@"%@: Background animation asset does not exist at path '%@'", v30, path2];
      v33 = [v26 exceptionWithName:v27 reason:v32 userInfo:0];

      v12 = 0x1E696A000;
      [v33 raise];
    }
  }

  else
  {
    v22 = 0;
  }

  v34 = *(v12 + 3776);
  objc_opt_class();
  v35 = [dictionaryCopy objectForKeyedSubscript:@"foregroundAnimationFileName"];
  if (v35)
  {
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v39 = [bundleURL2 URLByAppendingPathComponent:v37];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path3 = [v39 path];
    v42 = [defaultManager2 fileExistsAtPath:path3];

    if ((v42 & 1) == 0)
    {
      v71 = MEMORY[0x1E695DF30];
      v43 = *MEMORY[0x1E695D940];
      v44 = MEMORY[0x1E696AEC0];
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      v46 = v73 = v22;
      path4 = [v39 path];
      v48 = [v44 stringWithFormat:@"%@: Foreground animation asset does not exist at path '%@'", v46, path4];
      v49 = [v71 exceptionWithName:v43 reason:v48 userInfo:0];

      v22 = v73;
      [v49 raise];
    }
  }

  else
  {
    v39 = 0;
  }

  objc_opt_class();
  v50 = [dictionaryCopy objectForKeyedSubscript:@"floatingAnimationFileNameKey"];
  if (v50)
  {
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v52)
  {
    v72 = v37;
    v74 = dictionaryCopy;
    v53 = v22;
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v55 = [bundleURL3 URLByAppendingPathComponent:v52];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    path5 = [v55 path];
    v58 = [defaultManager3 fileExistsAtPath:path5];

    if ((v58 & 1) == 0)
    {
      v59 = MEMORY[0x1E695DF30];
      v60 = *MEMORY[0x1E695D940];
      v61 = MEMORY[0x1E696AEC0];
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      [v55 path];
      v65 = v64 = v9;
      v66 = [v61 stringWithFormat:@"%@: Floating animation asset does not exist at path '%@'", v63, v65];
      v67 = [v59 exceptionWithName:v60 reason:v66 userInfo:0];

      v9 = v64;
      [v67 raise];
    }

    v22 = v53;
    v37 = v72;
    dictionaryCopy = v74;
  }

  else
  {
    v55 = 0;
  }

  v68 = [[WKLayeredAnimationWallpaper alloc] initWithIdentifier:integerValue name:v77 backgroundAnimationFileURL:v22 foregroundAnimationFileURL:v39 floatingAnimationFileURL:v55];

  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v41[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v41[0] = @"assets";
    v41[1] = appearanceCopy;
    v41[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  integerValue = [v10 integerValue];
  objc_opt_class();
  v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v40[0] = @"assets";
    v40[1] = appearanceCopy;
    v40[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [dictionaryCopy objectForKeyedSubscript:@"assetFileName"];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v38 = integerValue;
    v39 = appearanceCopy;
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v23 = [bundleURL URLByAppendingPathComponent:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v23 path];
    v26 = [defaultManager fileExistsAtPath:path];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x1E695DF30];
      v28 = *MEMORY[0x1E695D940];
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      path2 = [v23 path];
      v33 = [v29 stringWithFormat:@"%@: CA asset does not exist at path '%@'", v31, path2];
      v34 = [v27 exceptionWithName:v28 reason:v33 userInfo:0];

      [v34 raise];
    }

    integerValue = v38;
    appearanceCopy = v39;
  }

  else
  {
    v23 = 0;
  }

  v35 = [[WKParameterizedCAWallpaper alloc] initWithIdentifier:integerValue name:v16 fileURL:v23];

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

id __32__WKWallpaperBundle_na_identity__block_invoke()
{
  if (WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_token_21 != -1)
  {
    __32__WKWallpaperBundle_na_identity__block_invoke_cold_1();
  }

  v1 = WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_object_21;

  return v1;
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_2()
{
  WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_object_21 = __32__WKWallpaperBundle_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __32__WKWallpaperBundle_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendIntegerCharacteristic:&__block_literal_global_307];
  v2 = [v0 appendIntegerCharacteristic:&__block_literal_global_309];
  v3 = [v0 appendCharacteristic:&__block_literal_global_312];
  v4 = [v0 appendCharacteristic:&__block_literal_global_314];
  v5 = [v0 appendCharacteristic:&__block_literal_global_316];
  v6 = [v0 appendCharacteristic:&__block_literal_global_318];
  v7 = [v0 appendCharacteristic:&__block_literal_global_320];
  v8 = [v0 appendCharacteristic:&__block_literal_global_322];
  v9 = [v0 appendCharacteristic:&__block_literal_global_324];
  v10 = [v0 appendCharacteristic:&__block_literal_global_326];
  v11 = [v0 appendCharacteristic:&__block_literal_global_328];
  v12 = [v0 appendCharacteristic:&__block_literal_global_330];
  v13 = [v0 appendCharacteristic:&__block_literal_global_332];
  v14 = [v0 appendCharacteristic:&__block_literal_global_334];
  v15 = [v0 build];

  return v15;
}

id __32__WKWallpaperBundle_na_identity__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [a2 _wallpaperAssetLookup];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isAppearanceAware];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hasDistinctWallpapersForLocations];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 wantsDeviceMotion];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isOffloaded];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 disableModifyingLegibilityBlur];

  return [v2 numberWithBool:v3];
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

+ (id)_createWallpaperBundleInDirectory:(id)directory version:(int64_t)version identifier:(int64_t)identifier name:(id)name family:(id)family wantsDeviceMotion:(BOOL)motion isOffloaded:(BOOL)offloaded logicalScreenClass:(id)self0 thumbnailImageURL:(id)self1 adjustmentTraits:(id)self2 preferredProminentColors:(id)self3 preferredTitleColors:(id)self4 assetMapping:(id)self5
{
  motionCopy = motion;
  v102 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  nameCopy = name;
  familyCopy = family;
  classCopy = class;
  lCopy = l;
  traitsCopy = traits;
  colorsCopy = colors;
  titleColorsCopy = titleColors;
  mappingCopy = mapping;
  if ([mappingCopy na_allSatisfy:&__block_literal_global_337])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v73 = [uUIDString stringByAppendingPathExtension:@"wallpaper"];

    v82 = [directoryCopy URLByAppendingPathComponent:v73 isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v98 = 0;
    v22 = [defaultManager createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:&v98];
    v23 = v98;

    if ((v22 & 1) == 0)
    {
      v38 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
      }

      v37 = 0;
      goto LABEL_54;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342;
    aBlock[3] = &unk_1E8766A98;
    v97 = 0;
    aBlock[4] = v82;
    v69 = _Block_copy(aBlock);
    if (lCopy)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      lastPathComponent = [lCopy lastPathComponent];
      v26 = [v82 URLByAppendingPathComponent:lastPathComponent];
      v95 = v23;
      v27 = [defaultManager2 copyItemAtURL:lCopy toURL:v26 error:&v95];
      v28 = v95;

      if ((v27 & 1) == 0)
      {
        dictionary = WKLogForCategory(3uLL);
        if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
        {
          +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
        }

        v37 = 0;
        goto LABEL_53;
      }

      v23 = v28;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:version];
    [dictionary na_safeSetObject:v30 forKey:@"version"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    [dictionary na_safeSetObject:v31 forKey:@"identifier"];

    [dictionary na_safeSetObject:nameCopy forKey:@"name"];
    [dictionary na_safeSetObject:familyCopy forKey:@"family"];
    v32 = [mappingCopy count];
    if (v32 < 2)
    {
      v39 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];

      if (v39)
      {
        [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      }

      else
      {
        [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }
      v33 = ;
      v34 = [v33 objectForKey:@"dark"];
    }

    else
    {
      v33 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v34 = [v33 objectForKey:@"dark"];
    }

    v40 = v34;

    v41 = [MEMORY[0x1E696AD98] numberWithBool:v40 != 0];
    [dictionary na_safeSetObject:v41 forKey:@"appearanceAware"];

    v42 = [MEMORY[0x1E696AD98] numberWithBool:motionCopy];
    [dictionary na_safeSetObject:v42 forKey:@"wantsDeviceMotion"];

    v43 = [MEMORY[0x1E696AD98] numberWithBool:offloaded];
    [dictionary na_safeSetObject:v43 forKey:@"offloaded"];

    [dictionary na_safeSetObject:classCopy forKey:@"logicalScreenClass"];
    [dictionary na_safeSetObject:colorsCopy forKey:@"preferredProminentColor"];
    [dictionary na_safeSetObject:titleColorsCopy forKey:@"preferredTitleColor"];
    lastPathComponent2 = [lCopy lastPathComponent];
    [dictionary na_safeSetObject:lastPathComponent2 forKey:@"thumbnailImageFileName"];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    if (v32 < 2)
    {
      v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      if (!v47)
      {
        v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }

      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_351];
      [dictionary2 setObject:v48 forKeyedSubscript:@"lockAndHome"];
    }

    else
    {
      v45 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v46 = [v45 na_dictionaryByMappingValues:&__block_literal_global_346];
      [dictionary2 setObject:v46 forKeyedSubscript:@"lock"];

      v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationHomeScreen"];
      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_349];
      [dictionary2 setObject:v48 forKeyedSubscript:@"home"];
    }

    [dictionary na_safeSetObject:dictionary2 forKey:@"assets"];
    propertyListRepresentation = [traitsCopy propertyListRepresentation];
    [dictionary na_safeSetObject:propertyListRepresentation forKey:@"adjustments"];

    v70 = [v82 URLByAppendingPathComponent:@"Wallpaper.plist"];
    v94 = 0;
    v68 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:&v94];
    v28 = v94;

    if (v28)
    {
      v50 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
      }
    }

    else
    {
      v93 = 0;
      v51 = [v68 writeToURL:v70 options:1 error:&v93];
      v28 = v93;
      if (v51)
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v50 = mappingCopy;
        v52 = [v50 countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v52)
        {
          v53 = *v90;
          v65 = *v90;
          do
          {
            v66 = v52;
            for (i = 0; i != v66; ++i)
            {
              if (*v90 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v54 = [v50 objectForKeyedSubscript:*(*(&v89 + 1) + 8 * i)];
              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v55 = v54;
              v56 = [v55 countByEnumeratingWithState:&v85 objects:v99 count:16];
              if (v56)
              {
                v57 = *v86;
                v58 = v28;
                while (2)
                {
                  for (j = 0; j != v56; ++j)
                  {
                    if (*v86 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = [v55 objectForKeyedSubscript:*(*(&v85 + 1) + 8 * j)];
                    v84 = v58;
                    [v60 copyWallpaperContentsToDestinationDirectoryURL:v82 error:&v84];
                    v28 = v84;

                    if (v28)
                    {
                      v62 = WKLogForCategory(3uLL);
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
                      }

                      goto LABEL_51;
                    }

                    v58 = 0;
                  }

                  v56 = [v55 countByEnumeratingWithState:&v85 objects:v99 count:16];
                  v58 = 0;
                  v28 = 0;
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

              v53 = v65;
            }

            v52 = [v50 countByEnumeratingWithState:&v89 objects:v100 count:16];
          }

          while (v52);
        }

        v37 = [[WKWallpaperBundle alloc] initWithURL:v82];
        goto LABEL_52;
      }

      v50 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        path = [v70 path];
        [WKWallpaperBundle _createWallpaperBundleInDirectory:path version:v28 identifier:buf name:v50 family:? wantsDeviceMotion:? isOffloaded:? logicalScreenClass:? thumbnailImageURL:? adjustmentTraits:? preferredProminentColors:? preferredTitleColors:? assetMapping:?];
      }
    }

LABEL_51:

    v37 = 0;
LABEL_52:

LABEL_53:
    v69[2]();

    v23 = v28;
LABEL_54:

    v36 = uUID;
    goto LABEL_55;
  }

  v35 = WKLogForCategory(3uLL);
  v36 = v35;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [WKWallpaperBundle _createWallpaperBundleInDirectory:v35 version:? identifier:? name:? family:? wantsDeviceMotion:? isOffloaded:? logicalScreenClass:? thumbnailImageURL:? adjustmentTraits:? preferredProminentColors:? preferredTitleColors:? assetMapping:?];
    v37 = 0;
    v36 = v35;
  }

  else
  {
    v37 = 0;
  }

LABEL_55:

  v63 = *MEMORY[0x1E69E9840];

  return v37;
}

uint64_t __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 supportsCopying];
  v5 = v4 & [v3 supportsSerialization];
  if ((v5 & 1) == 0)
  {
    v6 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2_cold_1();
    }
  }

  return v5;
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtURL:*(a1 + 32) error:0];
  }
}

- (NADescriptionBuilder)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WKWallpaperBundle_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __42__WKWallpaperBundle_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  wk_descriptionBuilder = [(WKWallpaperBundle *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__WKWallpaperBundle_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __44__WKWallpaperBundle_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained identifierString];
  [v3 appendString:v5 withName:@"identifierString"];

  v6 = [v3 appendInteger:objc_msgSend(WeakRetained withName:{"version"), @"version"}];
  v7 = [WeakRetained name];
  [v3 appendString:v7 withName:@"name"];

  v8 = [WeakRetained family];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [WeakRetained family];
    [v3 appendString:v10 withName:@"family"];
  }

  v11 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"isAppearanceAware"), @"isAppearanceAware"}];
  v12 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"hasDistinctWallpapersForLocations"), @"hasDistinctWallpapersForLocations"}];
  v13 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"wantsDeviceMotion"), @"wantsDeviceMotion"}];
  v14 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"isOffloaded"), @"isOffloaded"}];
  v15 = [WeakRetained adjustmentTraits];
  v16 = [v3 appendObject:v15 withName:@"adjustmentTraits"];

  v17 = [WeakRetained preferredTitleColors];
  v40 = v3;
  v18 = [v3 appendObject:v17 withName:@"preferredTitleColors"];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [WeakRetained _wallpaperAssetLookup];
  v37 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v37)
  {
    v36 = *v46;
    do
    {
      v19 = 0;
      do
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v19;
        v20 = *(*(&v45 + 1) + 8 * v19);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v21 = [WeakRetained _wallpaperAssetLookup];
        v22 = [v21 objectForKeyedSubscript:v20];

        v39 = v22;
        v23 = [v22 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            v26 = 0;
            do
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v39);
              }

              v27 = *(*(&v41 + 1) + 8 * v26);
              v28 = [WeakRetained _wallpaperAssetLookup];
              v29 = [v28 objectForKeyedSubscript:v20];
              v30 = [v29 objectForKeyedSubscript:v27];
              v49[0] = @"_wallpaperAssetLookup";
              v49[1] = v20;
              v49[2] = v27;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
              v32 = [v31 componentsJoinedByString:@"."];
              v33 = [v40 appendObject:v30 withName:v32];

              ++v26;
            }

            while (v24 != v26);
            v24 = [v39 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v24);
        }

        v19 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v37);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)initWithURL:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E4A23000, v2, v3, "%{public}@: Wallpaper bundle does not exist at URL '%{public}@', returning nil.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: URL does not have valid path extension ('.wallpaper') '%{public}@.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: No wallpaper bundle found at URL '%{public}@.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: No 'Wallpaper.plist' file found at URL '%{public}@.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1E4A23000, v0, v1, "%s: Could not decode 'Wallpaper.plist' at URL '%{public}@', error '%{public}@'.", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_createWallpaperBundleInDirectory:(os_log_t)log version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "+[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:]";
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%s: Cannot create wallpaper bundle because one or more assets do not support copying or serialization.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to create wallpaper bundle directory, error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to copy bundle thumbnail image, error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1E4A23000, v0, v1, "%s: Could not serialized wallpaper metadata '%{public}@'.  Error: '%{public}@'.", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_createWallpaperBundleInDirectory:(uint8_t *)buf version:(os_log_t)log identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.5(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "+[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%s: Could not write out wallpaper metadata to path '%{public}@'.  Error: '%{public}@'.", buf, 0x20u);
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to copy wallpaper resources, error '%{public}@'.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Cannot create wallpaper bundle because wallpaper %{public}@ either cannot copy or cannot serialize.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  OUTLINED_FUNCTION_2(&dword_1E4A23000, a2, a3, "%s: Performing cleanup of '%{public}@'.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end