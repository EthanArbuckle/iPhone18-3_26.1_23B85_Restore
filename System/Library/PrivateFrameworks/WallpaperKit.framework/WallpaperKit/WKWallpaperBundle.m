@interface WKWallpaperBundle
+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)a3;
+ (id)_createWallpaperBundleInDirectory:(id)a3 version:(int64_t)a4 identifier:(int64_t)a5 name:(id)a6 family:(id)a7 wantsDeviceMotion:(BOOL)a8 isOffloaded:(BOOL)a9 logicalScreenClass:(id)a10 thumbnailImageURL:(id)a11 adjustmentTraits:(id)a12 preferredProminentColors:(id)a13 preferredTitleColors:(id)a14 assetMapping:(id)a15;
- (BOOL)isEqual:(id)a3;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (NSString)identifierString;
- (UIImage)thumbnailImage;
- (WKWallpaperBundle)initWithURL:(id)a3;
- (id)_bokehWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_layeredStillWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)a3 representedType:(unint64_t)a4 wallpaperAppearance:(id)a5;
- (id)_liveWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_processCommonWallpaperMetadataWithDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_stillWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4;
- (id)_thumbnailWallpaperWithMetadataDictionary:(id)a3 representedType:(unint64_t)a4 wallpaperAppearance:(id)a5;
- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderBlock;
- (id)fileBasedWallpaperForLocation:(id)a3 andAppearance:(id)a4;
- (id)thumbnailRepresentableForLocation:(id)a3 andAppearance:(id)a4;
- (id)valueBasedWallpaperForLocation:(id)a3 andAppearance:(id)a4;
- (unint64_t)hash;
- (unint64_t)wallpaperBackingTypeForLocation:(id)a3;
- (void)_loadBundle;
- (void)_processAssetDictionary:(id)a3 forLocation:(id)a4;
- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)a3;
@end

@implementation WKWallpaperBundle

- (WKWallpaperBundle)initWithURL:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v18];
  v8 = v18;

  if (v7 && (v8 & 1) != 0)
  {
    v17.receiver = self;
    v17.super_class = WKWallpaperBundle;
    v9 = [(WKWallpaperBundle *)&v17 init];
    if (v9)
    {
      v10 = [v4 copy];
      bundleURL = v9->_bundleURL;
      v9->_bundleURL = v10;

      v12 = [MEMORY[0x1E695DF90] dictionary];
      wallpaperAssetLookup = v9->__wallpaperAssetLookup;
      v9->__wallpaperAssetLookup = v12;

      [(WKWallpaperBundle *)v9 _loadBundle];
    }

    self = v9;
    v14 = self;
  }

  else
  {
    v15 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WKWallpaperBundle initWithURL:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WKWallpaperBundle *)self bundleURL];
  v6 = [v4 initWithURL:v5];

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

- (void)_processAssetDictionary:(id)a3 forLocation:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v38 = a4;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = [v6 countByEnumeratingWithState:&v41 objects:v54 count:16];
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
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        v10 = [v6 objectForKeyedSubscript:v9];
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
          v26 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          v27 = [v26 na_objectForKey:v38 withDefaultValue:&__block_literal_global];

          [v27 na_safeSetObject:v25 forKey:v9];
          v28 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          [v28 na_safeSetObject:v27 forKey:v38];

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
          v48 = v38;
          v49 = 2114;
          v50 = v9;
          _os_log_error_impl(&dword_1E4A23000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Could not process wallpaper for location '%{public}@' and appearance '%{public}@'.", buf, 0x20u);
        }

LABEL_61:
      }

      v40 = [v6 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v40);
  }

  v36 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [(__CFString *)v3 pathExtension];
  v6 = [v5 lowercaseString];
  v7 = [v6 isEqualToString:@"wallpaper"];

  if (v7)
  {
    v53 = 0;
    v8 = [(__CFString *)v3 path];
    v9 = [v4 fileExistsAtPath:v8 isDirectory:&v53];
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

    v11 = [(__CFString *)v3 URLByAppendingPathComponent:@"Wallpaper.plist"];
    v12 = [(__CFString *)v3 path];
    v13 = [v4 fileExistsAtPath:v12];

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

    v14 = [v11 path];
    v15 = [v14 containsString:CPSharedResourcesDirectory()];

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

    v21 = [v11 path];
    v22 = NSTemporaryDirectory();
    v23 = [v21 containsString:v22];

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
      v25 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

LABEL_25:
      LOBYTE(v20) = 0;
LABEL_26:

      goto LABEL_27;
    }

    v28 = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    v29 = [v28 wk_ignoreLogicalScreenClassForWallpaperBundle];

    if ((v29 & 1) == 0)
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

      v25 = v31;

      v32 = WKLogForCategory(3uLL);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (!v25)
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
        v25 = v32;
        goto LABEL_26;
      }

      if (v33)
      {
        v34 = [(__CFString *)v3 path];
        *buf = 136315650;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v56 = 2114;
        v57 = v34;
        v58 = 2114;
        v59 = v25;
        _os_log_impl(&dword_1E4A23000, v32, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper '%{public}@' logical screen class is '%{public}@'.", buf, 0x20u);
      }

      v35 = WKLogicalScreenClassString();
      if (([v35 isEqualToString:v25]& 1) == 0 && ([v25 isEqualToString:@"any"]& 1) == 0)
      {
        v50 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = v25;
          v58 = 2114;
          v59 = v35;
          v60 = 2114;
          v61 = @"any";
          _os_log_impl(&dword_1E4A23000, v50, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper Bundle logical screen class '%{public}@' does not match the current device logical screen class '%{public}@' or '%{public}@'.", buf, 0x2Au);
        }

        goto LABEL_25;
      }
    }

    v36 = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    v37 = [v36 wk_ignoreProductTypesForWallpaperBundle];

    if (v37)
    {
      v25 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        _os_log_impl(&dword_1E4A23000, v25, OS_LOG_TYPE_DEFAULT, "%s: Device is configured to load wallpapers for all product types.", buf, 0xCu);
      }

      LOBYTE(v20) = 1;
      goto LABEL_26;
    }

    v38 = [MEMORY[0x1E69DC938] currentDevice];
    v25 = [v38 sf_productType];

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
        v61 = v25;
        _os_log_impl(&dword_1E4A23000, v42, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v43 = [MEMORY[0x1E695DFD8] setWithArray:v41];
      if ([v43 containsObject:v25])
      {
        v44 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = v25;
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
        v61 = v25;
        _os_log_impl(&dword_1E4A23000, v44, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v44 = [MEMORY[0x1E695DFD8] setWithArray:v43];
      v20 = [v44 containsObject:v25];
      if (v20)
      {
        v49 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v55 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v56 = 2114;
          v57 = v25;
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
        v57 = v3;
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
  v3 = [(WKWallpaperBundle *)self _thumbnailImage];

  if (!v3)
  {
    v4 = [(WKWallpaperBundle *)self thumbnailImageURL];

    if (v4)
    {
      v5 = MEMORY[0x1E69DCAB8];
      v6 = [(WKWallpaperBundle *)self thumbnailImageURL];
      v7 = [v6 path];
      v8 = [v5 imageWithContentsOfFile:v7];
      [(WKWallpaperBundle *)self set_thumbnailImage:v8];
    }

    else
    {
      v6 = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"];
      v7 = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"dark"];
      v9 = MEMORY[0x1E69DCAB8];
      v8 = [v6 thumbnailImage];
      v10 = [v7 thumbnailImage];
      v11 = [v9 wk_splitThumbnailWithLightAppearanceImage:v8 darkAppearanceImage:v10];
      [(WKWallpaperBundle *)self set_thumbnailImage:v11];
    }
  }

  return [(WKWallpaperBundle *)self _thumbnailImage];
}

- (unint64_t)wallpaperBackingTypeForLocation:(id)a3
{
  v4 = a3;
  v5 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 objectForKeyedSubscript:@"default"];

  v8 = [v7 backingType];
  return v8;
}

- (id)thumbnailRepresentableForLocation:(id)a3 andAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

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

- (id)fileBasedWallpaperForLocation:(id)a3 andAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

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

- (id)valueBasedWallpaperForLocation:(id)a3 andAppearance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

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
  v3 = [v2 stringValue];

  return v3;
}

- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(WKWallpaperBundle *)self supportsCopying])
  {
    v7 = [(WKWallpaperBundle *)self bundleURL];
    v8 = [v7 lastPathComponent];

    v9 = [v6 URLByAppendingPathComponent:v8];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [(WKWallpaperBundle *)self bundleURL];
    v12 = [v10 copyItemAtURL:v11 toURL:v9 error:a4];

    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = *MEMORY[0x1E696A3A0];
    v36 = *MEMORY[0x1E696A3A0];
    v15 = *MEMORY[0x1E696A3A8];
    v37 = *MEMORY[0x1E696A3A8];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v17 = [v9 path];
    v18 = [v13 setAttributes:v16 ofItemAtPath:v17 error:a4];

    if (v18)
    {
      v19 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [v19 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:0 errorHandler:0];

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

            if (![*(*(&v31 + 1) + 8 * v25) setResourceValue:v15 forKey:v14 error:{a4, v31}])
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
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v27 errorWithDomain:v28 code:-10003 userInfo:v8];
    *a4 = v26 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(WKWallpaperBundle *)self bundleURL];
  v11 = [v6 stringWithFormat:@"%@: (path: '%@') metadata does not contain valid value for keypath: '%@'", v9, v10, v7];

  v12 = [v4 exceptionWithName:v5 reason:v11 userInfo:0];

  [v12 raise];
}

- (id)_processCommonWallpaperMetadataWithDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v47[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v47[1] = v7;
    v47[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v42 = v10;
  v41 = [v10 integerValue];
  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"name"];
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
    v46[1] = v7;
    v46[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [v6 objectForKeyedSubscript:@"thumbnailImageFileName"];
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
    v45[1] = v7;
    v45[2] = @"thumbnailImageFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = v7;
  v24 = [(WKWallpaperBundle *)self bundleURL];
  v25 = [v24 URLByAppendingPathComponent:v20];

  v26 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = [v25 path];
  v28 = [v26 fileExistsAtPath:v27];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = [v25 path];
    v35 = [v31 stringWithFormat:@"%@: Thumbnail image does not exist at path '%@'", v33, v34];
    v36 = [v29 exceptionWithName:v30 reason:v35 userInfo:0];

    [v36 raise];
  }

  v43[0] = @"identifier";
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
  v44[0] = v37;
  v44[1] = v15;
  v43[1] = @"name";
  v43[2] = @"thumbnailImageFileURL";
  v44[2] = v25;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:v7 wallpaperAppearance:v6];
  v9 = [v8 mutableCopy];

  objc_opt_class();
  v10 = [v7 objectForKeyedSubscript:@"fullSizeImageFileName"];

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
    v31[1] = v6;
    v31[2] = @"fullSizeImageFileName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v15 = [v14 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v15];
  }

  v16 = [(WKWallpaperBundle *)self bundleURL];
  v17 = [v16 URLByAppendingPathComponent:v13];

  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = [v17 path];
  v20 = [v18 fileExistsAtPath:v19];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v17 path];
    v27 = [v23 stringWithFormat:@"%@: Full size image does not exist at path '%@'", v25, v26];
    v28 = [v21 exceptionWithName:v22 reason:v27 userInfo:0];

    [v28 raise];
  }

  [v9 setObject:v17 forKeyedSubscript:@"fullSizeImageFileURL"];

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_thumbnailWallpaperWithMetadataDictionary:(id)a3 representedType:(unint64_t)a4 wallpaperAppearance:(id)a5
{
  v6 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:a3 wallpaperAppearance:a5];
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

  v16 = -[WKThumbnailWallpaper initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:]([WKThumbnailWallpaper alloc], "initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:", [v9 unsignedIntegerValue], v12, 2, a4, 0, v15);

  return v16;
}

- (id)_stillWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v4 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:a3 wallpaperAppearance:a4];
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

- (id)_liveWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v58[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v56 = a4;
  v7 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:v6 wallpaperAppearance:?];
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
  v18 = [v6 objectForKeyedSubscript:@"videoFileName"];
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
    v58[1] = v56;
    v58[2] = @"videoFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = [(WKWallpaperBundle *)self bundleURL];
  v24 = [v23 URLByAppendingPathComponent:v20];

  v25 = [MEMORY[0x1E696AC08] defaultManager];
  v26 = [v24 path];
  v27 = [v25 fileExistsAtPath:v26];

  if ((v27 & 1) == 0)
  {
    v53 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v24 path];
    v32 = v7;
    v33 = v6;
    v34 = self;
    v35 = v17;
    v37 = v36 = v14;
    v38 = [v29 stringWithFormat:@"%@: Video asset does not exist at path '%@'", v31, v37];
    v39 = [v53 exceptionWithName:v28 reason:v38 userInfo:0];

    v14 = v36;
    v17 = v35;
    self = v34;
    v6 = v33;
    v7 = v32;

    [v39 raise];
  }

  v40 = [v6 objectForKeyedSubscript:@"stillTimeInVideo"];
  if (v40)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v42 = v40;
    if ((isKindOfClass & 1) == 0)
    {
      v57[0] = @"assets";
      v57[1] = v56;
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
  v47 = [v55 unsignedIntegerValue];
  [v45 doubleValue];
  v49 = v48;

  v50 = [(WKLiveWallpaper *)v46 initWithIdentifier:v47 name:v54 type:1 thumbnailImageURL:v17 fullsizeImageURL:v14 videoAssetURL:v24 stillTimeInVideo:v49];
  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)a3 representedType:(unint64_t)a4 wallpaperAppearance:(id)a5
{
  v86[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"identifier"];
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
    v86[1] = v8;
    v86[2] = @"identifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    v13 = [v12 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v13];
  }

  v83 = [v11 integerValue];
  v14 = 0x1E696A000uLL;
  objc_opt_class();
  v15 = [v7 objectForKeyedSubscript:@"name"];
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
    v85[1] = v8;
    v85[2] = @"name";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
    v19 = [v18 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v19];
  }

  objc_opt_class();
  v20 = [v7 objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
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
    v24 = [(WKWallpaperBundle *)self bundleURL];
    v25 = [v24 URLByAppendingPathComponent:v22];

    v26 = [MEMORY[0x1E696AC08] defaultManager];
    v27 = [v25 path];
    v28 = [v26 fileExistsAtPath:v27];

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
  v39 = [v7 objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
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

  v79 = v7;
  v80 = v25;
  v78 = v8;
  if (v41)
  {
    v42 = [(WKWallpaperBundle *)self bundleURL];
    v43 = [v42 URLByAppendingPathComponent:v41];

    v44 = [*(v23 + 3080) defaultManager];
    v45 = [v43 path];
    v46 = [v44 fileExistsAtPath:v45];

    if ((v46 & 1) == 0)
    {
      v47 = MEMORY[0x1E695DF30];
      v48 = *MEMORY[0x1E695D940];
      v49 = MEMORY[0x1E696AEC0];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      [v43 path];
      v52 = v23;
      v53 = self;
      v55 = v54 = v11;
      v56 = [v49 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v51, v55];
      v57 = [v47 exceptionWithName:v48 reason:v56 userInfo:0];

      v11 = v54;
      self = v53;
      v23 = v52;

      v8 = v78;
      v7 = v79;
      [v57 raise];
    }
  }

  else
  {
    v43 = 0;
  }

  objc_opt_class();
  v58 = [v7 objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
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
    v61 = [(WKWallpaperBundle *)self bundleURL];
    v62 = [v61 URLByAppendingPathComponent:v60];

    v63 = [*(v23 + 3080) defaultManager];
    v64 = [v62 path];
    v65 = [v63 fileExistsAtPath:v64];

    if ((v65 & 1) == 0)
    {
      v66 = MEMORY[0x1E695DF30];
      v67 = *MEMORY[0x1E695D940];
      v68 = MEMORY[0x1E696AEC0];
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      v71 = [v62 path];
      v72 = [v68 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v70, v71];
      v73 = [v66 exceptionWithName:v67 reason:v72 userInfo:0];

      [v73 raise];
    }

    v8 = v78;
    v7 = v79;
    v11 = v77;
  }

  else
  {
    v62 = 0;
  }

  v74 = [[WKLayeredThumbnailWallpaper alloc] initWithIdentifier:v83 name:v82 type:3 representedType:a4 backgroundThumbnailImageURL:v80 foregroundThumbnailImageURL:v43 floatingThumbnailImageURL:v62];

  v75 = *MEMORY[0x1E69E9840];

  return v74;
}

- (id)_layeredStillWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v143[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v143[1] = v7;
    v143[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v138 = v10;
  v136 = [v10 integerValue];
  v13 = 0x1E696A000uLL;
  objc_opt_class();
  v14 = [v6 objectForKeyedSubscript:@"name"];
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
    v142[1] = v7;
    v142[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [v6 objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
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
    v23 = [(WKWallpaperBundle *)self bundleURL];
    v24 = [v23 URLByAppendingPathComponent:v21];

    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v24 path];
    v27 = [v25 fileExistsAtPath:v26];

    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      NSStringFromClass(v31);
      v32 = v16;
      v34 = v33 = v7;
      [v24 path];
      v36 = v35 = v24;
      v37 = [v30 stringWithFormat:@"%@: Background thumbnail asset does not exist at path '%@'", v34, v36];
      v38 = [v28 exceptionWithName:v29 reason:v37 userInfo:0];

      v24 = v35;
      v22 = 0x1E696A000;

      v7 = v33;
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
  v40 = [v6 objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
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
  v140 = self;
  if (v42)
  {
    v43 = [(WKWallpaperBundle *)self bundleURL];
    v44 = [v43 URLByAppendingPathComponent:v42];

    v45 = [*(v22 + 3080) defaultManager];
    v46 = [v44 path];
    v47 = [v45 fileExistsAtPath:v46];

    if ((v47 & 1) == 0)
    {
      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = MEMORY[0x1E696AEC0];
      v51 = objc_opt_class();
      NSStringFromClass(v51);
      v52 = v16;
      v54 = v53 = v7;
      v55 = [v44 path];
      v56 = [v50 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v54, v55];
      v57 = [v48 exceptionWithName:v49 reason:v56 userInfo:0];

      v7 = v53;
      v16 = v52;
      self = v140;
      [v57 raise];
    }
  }

  else
  {
    v44 = 0;
  }

  objc_opt_class();
  v58 = [v6 objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
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

  v139 = v7;
  v137 = v16;
  v131 = v60;
  if (v60)
  {
    v61 = [(WKWallpaperBundle *)self bundleURL];
    v62 = [v61 URLByAppendingPathComponent:v60];

    v63 = [*(v22 + 3080) defaultManager];
    v64 = [v62 path];
    v65 = [v63 fileExistsAtPath:v64];

    if ((v65 & 1) == 0)
    {
      v66 = MEMORY[0x1E695DF30];
      v67 = *MEMORY[0x1E695D940];
      v68 = MEMORY[0x1E696AEC0];
      v69 = objc_opt_class();
      v70 = NSStringFromClass(v69);
      v71 = [v62 path];
      v72 = [v68 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v70, v71];
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
  v74 = [v6 objectForKeyedSubscript:@"backgroundFullSizeImageFileName"];
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
    v77 = [(WKWallpaperBundle *)self bundleURL];
    v78 = [v77 URLByAppendingPathComponent:v76];

    v79 = [*(v22 + 3080) defaultManager];
    v80 = [v78 path];
    v81 = [v79 fileExistsAtPath:v80];

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
      self = v140;
      [v90 raise];
    }
  }

  else
  {
    v78 = 0;
  }

  objc_opt_class();
  v91 = [v6 objectForKeyedSubscript:@"foregroundFullSizeImageFileName"];
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

  v141 = v6;
  v94 = v78;
  v130 = v93;
  if (v93)
  {
    v95 = v62;
    v96 = [(WKWallpaperBundle *)self bundleURL];
    v97 = [v96 URLByAppendingPathComponent:v93];

    v98 = [MEMORY[0x1E696AC08] defaultManager];
    v99 = [v97 path];
    v100 = [v98 fileExistsAtPath:v99];

    if ((v100 & 1) == 0)
    {
      v101 = MEMORY[0x1E695DF30];
      v102 = *MEMORY[0x1E695D940];
      v103 = MEMORY[0x1E696AEC0];
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      v106 = [v97 path];
      v107 = [v103 stringWithFormat:@"%@: Foreground full size asset does not exist at path '%@'", v105, v106];
      v108 = [v101 exceptionWithName:v102 reason:v107 userInfo:0];

      v6 = v141;
      [v108 raise];
    }

    v62 = v95;
  }

  else
  {
    v97 = 0;
  }

  objc_opt_class();
  v109 = [v6 objectForKeyedSubscript:@"floatingFullSizeImageFileName"];
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
    v113 = [(WKWallpaperBundle *)v140 bundleURL];
    v114 = [v113 URLByAppendingPathComponent:v111];

    v115 = [MEMORY[0x1E696AC08] defaultManager];
    v116 = [v114 path];
    v117 = [v115 fileExistsAtPath:v116];

    if ((v117 & 1) == 0)
    {
      v118 = MEMORY[0x1E695DF30];
      v119 = *MEMORY[0x1E695D940];
      v120 = MEMORY[0x1E696AEC0];
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v123 = [v114 path];
      v124 = [v120 stringWithFormat:@"%@: Floating full size asset does not exist at path '%@'", v122, v123];
      v125 = [v118 exceptionWithName:v119 reason:v124 userInfo:0];

      [v125 raise];
    }

    v62 = v112;
    v76 = v129;
  }

  else
  {
    v114 = 0;
  }

  v126 = [[WKLayeredStillWallpaper alloc] initWithIdentifier:v136 name:v137 backgroundThumbnailImageURL:v134 foregroundThumbnailImageURL:v132 floatingThumbnailImageURL:v62 backgroundFullSizeImageURL:v94 foregroundFullSizeImageURL:v97 floatingFullSizeImageURL:v114];

  v127 = *MEMORY[0x1E69E9840];

  return v126;
}

- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v56[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v56[1] = v7;
    v56[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v50 = [v10 integerValue];
  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"name"];
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
    v55[1] = v7;
    v55[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [v6 objectForKeyedSubscript:@"backgroundColor"];
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
    v54[1] = v7;
    v54[2] = @"backgroundColor";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = v7;
  v24 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v20];
  objc_opt_class();
  v25 = [v6 objectForKeyedSubscript:@"stripeAngleDegrees"];
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
  v30 = [v6 objectForKeyedSubscript:@"stripeHeightFactor"];
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
  v35 = [v6 objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
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
    v38 = [v6 objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
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
  v47 = [(WKLayeredStripeWallpaper *)v41 initWithIdentifier:v50 name:v15 backgroundColor:v24 stripeAngleDegrees:v43 stripeHeightFactor:v45 firstStripeOffsetScaleFactor:v46];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_bokehWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v72[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v72[1] = v7;
    v72[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v64 = v10;
  v62 = [v10 integerValue];
  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"name"];
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
    v71[1] = v7;
    v71[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [v6 objectForKeyedSubscript:@"backgroundColors"];
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
    v70[1] = v7;
    v70[2] = @"backgroundColors";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v61 = v20;
  v60 = [v20 na_map:&__block_literal_global_277];
  objc_opt_class();
  v23 = [v6 objectForKeyedSubscript:@"bubbleColors"];
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
    v69[1] = v7;
    v69[2] = @"bubbleColors";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
    v27 = [v26 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v27];
  }

  v58 = v25;
  v59 = [v25 na_map:&__block_literal_global_279];
  objc_opt_class();
  v28 = [v6 objectForKeyedSubscript:@"bubbleCount"];
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
    v68[1] = v7;
    v68[2] = @"bubbleCount";
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
    v32 = [v31 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v32];
  }

  objc_opt_class();
  v33 = [v6 objectForKeyedSubscript:@"bubbleScale"];
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
    v67[1] = v7;
    v67[2] = @"bubbleScale";
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
    v37 = [v36 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v37];
  }

  v38 = self;
  v39 = v7;
  objc_opt_class();
  v40 = [v6 objectForKeyedSubscript:@"parallaxMultiplier"];
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
    v66[1] = v7;
    v66[2] = @"parallaxMultiplier";
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v44 = [v43 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)v38 _raiseInvalidMetadataExceptionForMetadataKeypath:v44];
  }

  objc_opt_class();
  v45 = [v6 objectForKeyedSubscript:@"thumbnailSeed"];
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
    [(WKWallpaperBundle *)v38 _raiseInvalidMetadataExceptionForMetadataKeypath:v49];
  }

  v50 = [WKBokehWallpaper alloc];
  v51 = [v30 integerValue];
  [v35 doubleValue];
  v53 = v52;
  [v42 doubleValue];
  v55 = -[WKBokehWallpaper initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:](v50, "initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:", v62, v63, v60, v59, v51, [v47 integerValue], v53, v54);

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

- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v80[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v78 = a4;
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

  if (!v9)
  {
    v80[0] = @"assets";
    v80[1] = v78;
    v80[2] = @"identifier";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
    v11 = [v10 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v11];
  }

  v75 = [v9 integerValue];
  v12 = 0x1E696A000uLL;
  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"name"];
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
    v79[1] = v78;
    v79[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [v6 objectForKeyedSubscript:@"backgroundAnimationFileName"];
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
    v21 = [(WKWallpaperBundle *)self bundleURL];
    v22 = [v21 URLByAppendingPathComponent:v20];

    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v22 path];
    v25 = [v23 fileExistsAtPath:v24];

    if ((v25 & 1) == 0)
    {
      v26 = MEMORY[0x1E695DF30];
      v27 = *MEMORY[0x1E695D940];
      v28 = MEMORY[0x1E696AEC0];
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v22 path];
      v32 = [v28 stringWithFormat:@"%@: Background animation asset does not exist at path '%@'", v30, v31];
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
  v35 = [v6 objectForKeyedSubscript:@"foregroundAnimationFileName"];
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
    v38 = [(WKWallpaperBundle *)self bundleURL];
    v39 = [v38 URLByAppendingPathComponent:v37];

    v40 = [MEMORY[0x1E696AC08] defaultManager];
    v41 = [v39 path];
    v42 = [v40 fileExistsAtPath:v41];

    if ((v42 & 1) == 0)
    {
      v71 = MEMORY[0x1E695DF30];
      v43 = *MEMORY[0x1E695D940];
      v44 = MEMORY[0x1E696AEC0];
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      v46 = v73 = v22;
      v47 = [v39 path];
      v48 = [v44 stringWithFormat:@"%@: Foreground animation asset does not exist at path '%@'", v46, v47];
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
  v50 = [v6 objectForKeyedSubscript:@"floatingAnimationFileNameKey"];
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
    v74 = v6;
    v53 = v22;
    v54 = [(WKWallpaperBundle *)self bundleURL];
    v55 = [v54 URLByAppendingPathComponent:v52];

    v56 = [MEMORY[0x1E696AC08] defaultManager];
    v57 = [v55 path];
    v58 = [v56 fileExistsAtPath:v57];

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
    v6 = v74;
  }

  else
  {
    v55 = 0;
  }

  v68 = [[WKLayeredAnimationWallpaper alloc] initWithIdentifier:v75 name:v77 backgroundAnimationFileURL:v22 foregroundAnimationFileURL:v39 floatingAnimationFileURL:v55];

  v69 = *MEMORY[0x1E69E9840];

  return v68;
}

- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)a3 wallpaperAppearance:(id)a4
{
  v41[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"identifier"];
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
    v41[1] = v7;
    v41[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v13 = [v10 integerValue];
  objc_opt_class();
  v14 = [v6 objectForKeyedSubscript:@"name"];
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
    v40[1] = v7;
    v40[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [v6 objectForKeyedSubscript:@"assetFileName"];
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
    v38 = v13;
    v39 = v7;
    v22 = [(WKWallpaperBundle *)self bundleURL];
    v23 = [v22 URLByAppendingPathComponent:v21];

    v24 = [MEMORY[0x1E696AC08] defaultManager];
    v25 = [v23 path];
    v26 = [v24 fileExistsAtPath:v25];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x1E695DF30];
      v28 = *MEMORY[0x1E695D940];
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v23 path];
      v33 = [v29 stringWithFormat:@"%@: CA asset does not exist at path '%@'", v31, v32];
      v34 = [v27 exceptionWithName:v28 reason:v33 userInfo:0];

      [v34 raise];
    }

    v13 = v38;
    v7 = v39;
  }

  else
  {
    v23 = 0;
  }

  v35 = [[WKParameterizedCAWallpaper alloc] initWithIdentifier:v13 name:v16 fileURL:v23];

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
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

+ (id)_createWallpaperBundleInDirectory:(id)a3 version:(int64_t)a4 identifier:(int64_t)a5 name:(id)a6 family:(id)a7 wantsDeviceMotion:(BOOL)a8 isOffloaded:(BOOL)a9 logicalScreenClass:(id)a10 thumbnailImageURL:(id)a11 adjustmentTraits:(id)a12 preferredProminentColors:(id)a13 preferredTitleColors:(id)a14 assetMapping:(id)a15
{
  v71 = a8;
  v102 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v77 = a6;
  v78 = a7;
  v76 = a10;
  v83 = a11;
  v75 = a12;
  v79 = a13;
  v80 = a14;
  v19 = a15;
  if ([v19 na_allSatisfy:&__block_literal_global_337])
  {
    v74 = [MEMORY[0x1E696AFB0] UUID];
    v20 = [v74 UUIDString];
    v73 = [v20 stringByAppendingPathExtension:@"wallpaper"];

    v82 = [v81 URLByAppendingPathComponent:v73 isDirectory:1];
    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v98 = 0;
    v22 = [v21 createDirectoryAtURL:v82 withIntermediateDirectories:1 attributes:0 error:&v98];
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
    if (v83)
    {
      v24 = [MEMORY[0x1E696AC08] defaultManager];
      v25 = [v83 lastPathComponent];
      v26 = [v82 URLByAppendingPathComponent:v25];
      v95 = v23;
      v27 = [v24 copyItemAtURL:v83 toURL:v26 error:&v95];
      v28 = v95;

      if ((v27 & 1) == 0)
      {
        v29 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
        }

        v37 = 0;
        goto LABEL_53;
      }

      v23 = v28;
    }

    v29 = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v29 na_safeSetObject:v30 forKey:@"version"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [v29 na_safeSetObject:v31 forKey:@"identifier"];

    [v29 na_safeSetObject:v77 forKey:@"name"];
    [v29 na_safeSetObject:v78 forKey:@"family"];
    v32 = [v19 count];
    if (v32 < 2)
    {
      v39 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];

      if (v39)
      {
        [v19 objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      }

      else
      {
        [v19 objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }
      v33 = ;
      v34 = [v33 objectForKey:@"dark"];
    }

    else
    {
      v33 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v34 = [v33 objectForKey:@"dark"];
    }

    v40 = v34;

    v41 = [MEMORY[0x1E696AD98] numberWithBool:v40 != 0];
    [v29 na_safeSetObject:v41 forKey:@"appearanceAware"];

    v42 = [MEMORY[0x1E696AD98] numberWithBool:v71];
    [v29 na_safeSetObject:v42 forKey:@"wantsDeviceMotion"];

    v43 = [MEMORY[0x1E696AD98] numberWithBool:a9];
    [v29 na_safeSetObject:v43 forKey:@"offloaded"];

    [v29 na_safeSetObject:v76 forKey:@"logicalScreenClass"];
    [v29 na_safeSetObject:v79 forKey:@"preferredProminentColor"];
    [v29 na_safeSetObject:v80 forKey:@"preferredTitleColor"];
    v44 = [v83 lastPathComponent];
    [v29 na_safeSetObject:v44 forKey:@"thumbnailImageFileName"];

    v72 = [MEMORY[0x1E695DF90] dictionary];
    if (v32 < 2)
    {
      v47 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      if (!v47)
      {
        v47 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }

      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_351];
      [v72 setObject:v48 forKeyedSubscript:@"lockAndHome"];
    }

    else
    {
      v45 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v46 = [v45 na_dictionaryByMappingValues:&__block_literal_global_346];
      [v72 setObject:v46 forKeyedSubscript:@"lock"];

      v47 = [v19 objectForKeyedSubscript:@"WKWallpaperLocationHomeScreen"];
      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_349];
      [v72 setObject:v48 forKeyedSubscript:@"home"];
    }

    [v29 na_safeSetObject:v72 forKey:@"assets"];
    v49 = [v75 propertyListRepresentation];
    [v29 na_safeSetObject:v49 forKey:@"adjustments"];

    v70 = [v82 URLByAppendingPathComponent:@"Wallpaper.plist"];
    v94 = 0;
    v68 = [MEMORY[0x1E696AE40] dataWithPropertyList:v29 format:100 options:0 error:&v94];
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
        v50 = v19;
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
        v61 = [v70 path];
        [WKWallpaperBundle _createWallpaperBundleInDirectory:v61 version:v28 identifier:buf name:v50 family:? wantsDeviceMotion:? isOffloaded:? logicalScreenClass:? thumbnailImageURL:? adjustmentTraits:? preferredProminentColors:? preferredTitleColors:? assetMapping:?];
      }
    }

LABEL_51:

    v37 = 0;
LABEL_52:

LABEL_53:
    v69[2]();

    v23 = v28;
LABEL_54:

    v36 = v74;
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
  v4 = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WKWallpaperBundle_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];

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
  v2 = [(WKWallpaperBundle *)self wk_descriptionBuilder];
  v3 = [v2 build];

  return v3;
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