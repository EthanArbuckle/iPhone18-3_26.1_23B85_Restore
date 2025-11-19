@interface WKWallpaperRepresentingCollection
+ (BOOL)shouldLoadWallpaperCollectionAtURL:(id)a3;
+ (id)_loadCollectionMetadataWithURL:(id)a3;
+ (id)_loadWallpaperRepresentingContentFromURL:(id)a3 collectionMetadata:(id)a4;
+ (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)a3 collectionURL:(id)a4;
- (BOOL)containsWallpaperRepresentingWithIdentifier:(id)a3;
- (BOOL)supportsDownloading;
- (WKWallpaperRepresentingCollection)initWithURL:(id)a3 downloadManager:(id)a4;
- (WKWallpaperRepresentingCollection)initWithWallpaperCollectionIdentifier:(id)a3 displayName:(id)a4 previewWallpaperRepresenting:(id)a5 wallpapersShareBaseAppearance:(BOOL)a6 hiddenFromPicker:(BOOL)a7 depthEffectDisabled:(BOOL)a8 motionEffectsDisabled:(BOOL)a9 disableRotation:(BOOL)a10 wallpaperRepresentingCollection:(id)a11 downloadManager:(id)a12;
- (id)deviceColor;
- (id)deviceEnclosureColor;
- (id)wallpaperBundleAtIndex:(int64_t)a3;
- (id)wallpaperRepresentingWithIdentifier:(id)a3;
- (int64_t)numberOfWallpapers;
- (void)cancelDownloadForWallpaperRepresentingWithIdentifier:(id)a3 completion:(id)a4;
- (void)downloadWallpaperRepresentingWithIdentifier:(id)a3 progress:(id)a4 completion:(id)a5;
@end

@implementation WKWallpaperRepresentingCollection

- (WKWallpaperRepresentingCollection)initWithWallpaperCollectionIdentifier:(id)a3 displayName:(id)a4 previewWallpaperRepresenting:(id)a5 wallpapersShareBaseAppearance:(BOOL)a6 hiddenFromPicker:(BOOL)a7 depthEffectDisabled:(BOOL)a8 motionEffectsDisabled:(BOOL)a9 disableRotation:(BOOL)a10 wallpaperRepresentingCollection:(id)a11 downloadManager:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a11;
  v21 = a12;
  v37.receiver = self;
  v37.super_class = WKWallpaperRepresentingCollection;
  v22 = [(WKWallpaperRepresentingCollection *)&v37 init];
  if (v22)
  {
    v23 = [MEMORY[0x1E695DF70] array];
    wallpaperBundles = v22->__wallpaperBundles;
    v22->__wallpaperBundles = v23;

    v25 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    wallpaperLookupTable = v22->__wallpaperLookupTable;
    v22->__wallpaperLookupTable = v25;

    v22->_wallpapersShareBaseAppearance = a6;
    v22->_hiddenFromPicker = a7;
    v22->_depthEffectDisabled = a8;
    v22->_motionEffectsDisabled = a9;
    v22->_disableRotation = a10;
    objc_storeStrong(&v22->_wallpaperCollectionIdentifier, a3);
    v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
    identifier = v22->_identifier;
    v22->_identifier = v27;

    objc_storeStrong(&v22->_previewWallpaperRepresenting, a5);
    v29 = [v18 copy];
    displayName = v22->_displayName;
    v22->_displayName = v29;

    objc_storeStrong(&v22->_downloadManager, a12);
    objc_initWeak(&location, v22);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __269__WKWallpaperRepresentingCollection_initWithWallpaperCollectionIdentifier_displayName_previewWallpaperRepresenting_wallpapersShareBaseAppearance_hiddenFromPicker_depthEffectDisabled_motionEffectsDisabled_disableRotation_wallpaperRepresentingCollection_downloadManager___block_invoke;
    v34[3] = &unk_1E8766EE8;
    objc_copyWeak(&v35, &location);
    [v20 na_each:v34];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v22;
}

void __269__WKWallpaperRepresentingCollection_initWithWallpaperCollectionIdentifier_displayName_previewWallpaperRepresenting_wallpapersShareBaseAppearance_hiddenFromPicker_depthEffectDisabled_motionEffectsDisabled_disableRotation_wallpaperRepresentingCollection_downloadManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = v3;
  v5 = v14;
  if ([v14 isOffloaded])
  {
    v6 = [WeakRetained downloadManager];
    v7 = [v14 identifierString];
    v8 = [v14 name];
    v9 = [v6 localWallpaperRepresentingWithIdentifier:v7 wallpaperName:v8];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v14;
    }

    v5 = v10;
  }

  v11 = [WeakRetained _wallpaperBundles];
  [v11 addObject:v5];

  v12 = [WeakRetained _wallpaperLookupTable];
  v13 = [v5 identifierString];
  [v12 setObject:v5 forKey:v13];
}

- (WKWallpaperRepresentingCollection)initWithURL:(id)a3 downloadManager:(id)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v77 = a4;
  v7 = [objc_opt_class() _loadCollectionMetadataWithURL:v6];
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    [objc_opt_class() _raiseInvalidMetadataExceptionForMetadataKeypath:@"identifier" collectionURL:v6];
  }

  objc_opt_class();
  v11 = [v7 objectForKeyedSubscript:@"name"];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v75 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
  v76 = v13;
  v74 = [v75 localizedStringForKey:v13 value:0 table:0];
  v78 = [objc_opt_class() _loadWallpaperRepresentingContentFromURL:v6 collectionMetadata:v7];
  objc_opt_class();
  v14 = [v7 objectForKeyedSubscript:@"wallpapersShareBaseAppearance"];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v64 = v15;

  objc_opt_class();
  v16 = [v7 objectForKeyedSubscript:@"hiddenFromPicker"];
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  objc_opt_class();
  v19 = [v7 objectForKeyedSubscript:@"depthEffectDisabled"];
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v72 = v21;
  if (v21)
  {
    v71 = [v21 BOOLValue];
  }

  else
  {
    v71 = 1;
  }

  objc_opt_class();
  v22 = [v7 objectForKeyedSubscript:@"motionEffectsDisabled"];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    v69 = [v24 BOOLValue];
  }

  else
  {
    v69 = 0;
  }

  v70 = v24;
  if ([v18 BOOLValue])
  {
    v25 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v82 = "[WKWallpaperRepresentingCollection initWithURL:downloadManager:]";
      v83 = 2114;
      v84 = v10;
      _os_log_impl(&dword_1E4A23000, v25, OS_LOG_TYPE_DEFAULT, "%s: Hiding Wallpaper '%{public}@': Explicitly hidden", buf, 0x16u);
    }

    v68 = 1;
  }

  else
  {
    objc_opt_class();
    v26 = [v7 objectForKeyedSubscript:@"supportedDeviceClasses"];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v25 = v27;

    v28 = MGCopyAnswer();
    if (v25 && ([v25 na_safeContainsObject:v28]& 1) == 0)
    {
      v29 = WKLogForCategory(4uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v82 = "[WKWallpaperRepresentingCollection initWithURL:downloadManager:]";
        v83 = 2114;
        v84 = v10;
        v85 = 2114;
        v86 = v28;
        _os_log_impl(&dword_1E4A23000, v29, OS_LOG_TYPE_DEFAULT, "%s: Hiding Wallpaper '%{public}@': Device class '%{public}@' not in supported list", buf, 0x20u);
      }

      v68 = 1;
    }

    else
    {
      v68 = 0;
    }
  }

  v73 = v18;

  objc_opt_class();
  v30 = [v7 objectForKeyedSubscript:@"disableRotation"];
  if (objc_opt_isKindOfClass())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  v67 = v32;
  v66 = [v32 BOOLValue];
  objc_opt_class();
  v33 = [v7 objectForKeyedSubscript:@"previewWallpaperMatchesDeviceTraits"];
  if (objc_opt_isKindOfClass())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  v65 = v35;
  if (![v35 BOOLValue])
  {
    goto LABEL_73;
  }

  v62 = v10;
  v63 = self;
  objc_opt_class();
  v36 = [v7 objectForKeyedSubscript:@"previewWallpaperDeviceTraitsLookup"];
  if (v36)
  {
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (!v38)
  {
    [objc_opt_class() _raiseInvalidMetadataExceptionForMetadataKeypath:@"previewWallpaperDeviceTraitsLookup" collectionURL:v6];
  }

  v61 = v6;
  v39 = [(WKWallpaperRepresentingCollection *)self deviceColor];
  v40 = [(WKWallpaperRepresentingCollection *)self deviceEnclosureColor];
  objc_opt_class();
  v41 = [v38 objectForKeyedSubscript:v39];
  v42 = (objc_opt_isKindOfClass() & 1) != 0 ? v41 : 0;
  v43 = v42;

  objc_opt_class();
  v44 = [v43 objectForKeyedSubscript:v40];
  v45 = (objc_opt_isKindOfClass() & 1) != 0 ? v44 : 0;
  v46 = v45;

  if (v46)
  {
    objc_opt_class();
    v47 = [v46 objectForKeyedSubscript:@"wallpaperIdentifier"];
    if (objc_opt_isKindOfClass())
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __65__WKWallpaperRepresentingCollection_initWithURL_downloadManager___block_invoke;
    v79[3] = &unk_1E8766F10;
    v50 = v49;
    v80 = v50;
    v51 = [v78 na_firstObjectPassingTest:v79];
    if (v51)
    {
      v52 = WKLogForCategory(4uLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [v51 identifierString];
        *buf = 136315650;
        v82 = "[WKWallpaperRepresentingCollection initWithURL:downloadManager:]";
        v83 = 2114;
        v84 = v53;
        v85 = 2114;
        v86 = v62;
        _os_log_impl(&dword_1E4A23000, v52, OS_LOG_TYPE_DEFAULT, "%s: Using Preview Wallpaper Representing '%{public}@' for collection identifier '%{public}@' based on device traits.", buf, 0x20u);
      }
    }
  }

  else
  {
    v51 = 0;
  }

  v6 = v61;
  v10 = v62;
  self = v63;
  if (!v51)
  {
LABEL_73:
    v54 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v78 firstObject];
      v56 = [v55 identifierString];
      *buf = 136315650;
      v82 = "[WKWallpaperRepresentingCollection initWithURL:downloadManager:]";
      v83 = 2114;
      v84 = v10;
      v85 = 2114;
      v86 = v56;
      _os_log_impl(&dword_1E4A23000, v54, OS_LOG_TYPE_DEFAULT, "%s: Preview Wallpaper Representing for collection identifier '%{public}@' not set, defaulting to first wallpaper '%{public}@'.", buf, 0x20u);
    }

    v51 = [v78 firstObject];
  }

  BYTE1(v60) = v66;
  LOBYTE(v60) = v69;
  v57 = -[WKWallpaperRepresentingCollection initWithWallpaperCollectionIdentifier:displayName:previewWallpaperRepresenting:wallpapersShareBaseAppearance:hiddenFromPicker:depthEffectDisabled:motionEffectsDisabled:disableRotation:wallpaperRepresentingCollection:downloadManager:](self, "initWithWallpaperCollectionIdentifier:displayName:previewWallpaperRepresenting:wallpapersShareBaseAppearance:hiddenFromPicker:depthEffectDisabled:motionEffectsDisabled:disableRotation:wallpaperRepresentingCollection:downloadManager:", v10, v74, v51, [v64 BOOLValue], v68, v71, v60, v78, v77);

  v58 = *MEMORY[0x1E69E9840];
  return v57;
}

uint64_t __65__WKWallpaperRepresentingCollection_initWithURL_downloadManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifierString];
  v4 = [*(a1 + 32) stringValue];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (BOOL)shouldLoadWallpaperCollectionAtURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "+[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:]";
    _os_log_impl(&dword_1E4A23000, v4, OS_LOG_TYPE_DEFAULT, "%s: start.", buf, 0xCu);
  }

  v16 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v16];
  v8 = v16;

  if (v7 & v8)
  {
    v9 = [v3 URLByAppendingPathComponent:@"WallpaperCollection.plist"];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11 isDirectory:0];

    if ((v12 & 1) == 0)
    {
      v13 = WKLogForCategory(4uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [v9 path];
        objc_claimAutoreleasedReturnValue();
        +[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:];
      }
    }
  }

  else
  {
    v9 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v3 path];
      objc_claimAutoreleasedReturnValue();
      +[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:];
    }

    v12 = 0;
  }

  __72__WKWallpaperRepresentingCollection_shouldLoadWallpaperCollectionAtURL___block_invoke();
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void __72__WKWallpaperRepresentingCollection_shouldLoadWallpaperCollectionAtURL___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "+[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (int64_t)numberOfWallpapers
{
  v2 = [(WKWallpaperRepresentingCollection *)self _wallpaperBundles];
  v3 = [v2 count];

  return v3;
}

- (BOOL)supportsDownloading
{
  v2 = [(WKWallpaperRepresentingCollection *)self downloadManager];
  v3 = v2 != 0;

  return v3;
}

- (id)wallpaperBundleAtIndex:(int64_t)a3
{
  v4 = [(WKWallpaperRepresentingCollection *)self _wallpaperBundles];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (BOOL)containsWallpaperRepresentingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WKWallpaperRepresentingCollection *)self _wallpaperLookupTable];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

- (id)wallpaperRepresentingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WKWallpaperRepresentingCollection *)self _wallpaperLookupTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)downloadWallpaperRepresentingWithIdentifier:(id)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WKWallpaperRepresentingCollection *)self wallpaperRepresentingWithIdentifier:v8];
  objc_initWeak(&location, self);
  v12 = [(WKWallpaperRepresentingCollection *)self downloadManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__WKWallpaperRepresentingCollection_downloadWallpaperRepresentingWithIdentifier_progress_completion___block_invoke;
  v15[3] = &unk_1E8766F38;
  objc_copyWeak(&v18, &location);
  v13 = v11;
  v16 = v13;
  v14 = v10;
  v17 = v14;
  [v12 downloadWallpaperRepresentingIfNeeded:v13 progress:v9 withCompletion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __101__WKWallpaperRepresentingCollection_downloadWallpaperRepresentingWithIdentifier_progress_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (v13)
  {
    v8 = [WeakRetained _wallpaperBundles];
    v9 = [v8 indexOfObject:*(a1 + 32)];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v7 _wallpaperBundles];
      [v10 replaceObjectAtIndex:v9 withObject:v13];

      v11 = [v7 _wallpaperLookupTable];
      v12 = [v13 identifierString];
      [v11 setObject:v13 forKey:v12];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancelDownloadForWallpaperRepresentingWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [(WKWallpaperRepresentingCollection *)self wallpaperRepresentingWithIdentifier:a3];
  v7 = [(WKWallpaperRepresentingCollection *)self downloadManager];
  [v7 cancelDownloadForWallpaperRepresenting:v8 withCompletion:v6];
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

+ (id)_loadCollectionMetadataWithURL:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v48 = "+[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:]";
    _os_log_impl(&dword_1E4A23000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: start.", buf, 0xCu);
  }

  v46 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v46];
  v8 = v46;

  v9 = MEMORY[0x1E695D940];
  if ((v7 & v8 & 1) == 0)
  {
    v10 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v3 path];
      objc_claimAutoreleasedReturnValue();
      +[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:];
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v3 path];
    v16 = [v12 stringWithFormat:@"%@: Wallpaper collection does not exist at URL '%@'.", v14, v15];
    v17 = [v11 exceptionWithName:*v9 reason:v16 userInfo:0];

    [v17 raise];
  }

  v18 = [v3 URLByAppendingPathComponent:@"WallpaperCollection.plist"];
  v19 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = [v18 path];
  v21 = [v19 fileExistsAtPath:v20 isDirectory:0];

  if ((v21 & 1) == 0)
  {
    v22 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [v18 path];
      objc_claimAutoreleasedReturnValue();
      +[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:];
    }

    v23 = MEMORY[0x1E695DF30];
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v18 path];
    v28 = [v24 stringWithFormat:@"%@: Wallpaper collection does not contain a metadata file at path '%@'.", v26, v27];
    v29 = [v23 exceptionWithName:*v9 reason:v28 userInfo:0];

    [v29 raise];
  }

  v45 = 0;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v18 error:&v45];
  v31 = v45;
  if (v31)
  {
    v32 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v44 = NSStringFromClass(v42);
      v43 = [v18 path];
      *buf = 138543874;
      v48 = v44;
      v49 = 2114;
      v50 = v43;
      v51 = 2114;
      v52 = v31;
      _os_log_error_impl(&dword_1E4A23000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error in loading Wallpaper Collection metadata file '%{public}@', error '%{public}@'", buf, 0x20u);
    }

    v33 = MEMORY[0x1E695DF30];
    v34 = MEMORY[0x1E696AEC0];
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v18 path];
    v38 = [v34 stringWithFormat:@"%@: Encountered error in loading metadata file (path: '%@') (error: '%@').", v36, v37, v31];
    v39 = [v33 exceptionWithName:*v9 reason:v38 userInfo:0];

    [v39 raise];
  }

  __68__WKWallpaperRepresentingCollection__loadCollectionMetadataWithURL___block_invoke();
  v40 = *MEMORY[0x1E69E9840];

  return v30;
}

void __68__WKWallpaperRepresentingCollection__loadCollectionMetadataWithURL___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "+[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (id)_loadWallpaperRepresentingContentFromURL:(id)a3 collectionMetadata:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"order"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    [a1 _raiseInvalidMetadataExceptionForMetadataKeypath:@"order" collectionURL:v6];
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v12 = [v6 URLByAppendingPathComponent:@"Wallpapers"];
  v49 = 0;
  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v42 = v12;
  v14 = [v12 path];
  v15 = [v13 fileExistsAtPath:v14 isDirectory:&v49];
  v16 = v49;

  if (v15 && (v16 & 1) != 0)
  {
    v17 = [MEMORY[0x1E696AC08] defaultManager];
    v48 = 0;
    v18 = [v17 contentsOfDirectoryAtURL:v42 includingPropertiesForKeys:0 options:0 error:&v48];
    v19 = v48;

    v40 = v7;
    if (v19)
    {
      v20 = WKLogForCategory(4uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(WKWallpaperRepresentingCollection *)v6 _loadWallpaperRepresentingContentFromURL:v19 collectionMetadata:v20];
      }

      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v23 = MEMORY[0x1E696AEC0];
      v24 = NSStringFromClass(a1);
      v25 = [v42 path];
      v26 = [v23 stringWithFormat:@"%@: Encountered error in loading contents of directory for system wallpape collection (path: '%@') (error: '%@').", v24, v25, v19];
      v27 = [v21 exceptionWithName:v22 reason:v26 userInfo:0];

      [v27 raise];
    }

    v41 = v6;
    v28 = [MEMORY[0x1E695DF90] dictionary];
    v29 = [v18 na_filter:&__block_literal_global_82];
    if (![v29 count])
    {
      v30 = WKLogForCategory(4uLL);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [WKWallpaperRepresentingCollection _loadWallpaperRepresentingContentFromURL:v30 collectionMetadata:?];
      }
    }

    v39 = v18;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __97__WKWallpaperRepresentingCollection__loadWallpaperRepresentingContentFromURL_collectionMetadata___block_invoke_84;
    v47[3] = &unk_1E8766F80;
    v47[4] = v28;
    [v29 na_each:v47];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v10;
    v32 = [v31 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v44;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [v28 objectForKeyedSubscript:*(*(&v43 + 1) + 8 * i)];
          [v11 na_safeAddObject:v36];
        }

        v33 = [v31 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v33);
    }

    v7 = v40;
    v6 = v41;
  }

  else
  {
    v19 = WKLogForCategory(4uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [WKWallpaperRepresentingCollection _loadWallpaperRepresentingContentFromURL:v6 collectionMetadata:v19];
    }
  }

  v37 = *MEMORY[0x1E69E9840];

  return v11;
}

void __97__WKWallpaperRepresentingCollection__loadWallpaperRepresentingContentFromURL_collectionMetadata___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[WKWallpaperBundle alloc] initWithURL:v3];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WKWallpaperBundle identifier](v6, "identifier")}];
  [v4 na_safeSetObject:v6 forKey:v5];
}

+ (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)a3 collectionURL:(id)a4
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = NSStringFromClass(a1);
  v12 = [v9 path];

  v13 = [v8 stringWithFormat:@"%@: (path: '%@') metadata does not contain valid value for keypath: '%@'", v11, v12, v10];

  v14 = [v6 exceptionWithName:v7 reason:v13 userInfo:0];

  [v14 raise];
}

+ (void)shouldLoadWallpaperCollectionAtURL:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 136315394;
  OUTLINED_FUNCTION_0_1(v2, v1, "+[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:]");
  OUTLINED_FUNCTION_1_0(&dword_1E4A23000, v3, v4, "%s: No wallpaper collection found at path '%{public}@'.", v5);
}

+ (void)shouldLoadWallpaperCollectionAtURL:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 136315394;
  OUTLINED_FUNCTION_0_1(v2, v1, "+[WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:]");
  OUTLINED_FUNCTION_1_0(&dword_1E4A23000, v3, v4, "%s: Wallpaper Collection metadata file does not exist at URL '%{public}@'", v5);
}

+ (void)_loadCollectionMetadataWithURL:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 136446466;
  OUTLINED_FUNCTION_0_1(v2, v1, "+[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:]");
  OUTLINED_FUNCTION_1_0(&dword_1E4A23000, v3, v4, "%{public}s: No wallpaper collection found at URL '%{public}@.", v5);
}

+ (void)_loadCollectionMetadataWithURL:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 136446466;
  OUTLINED_FUNCTION_0_1(v2, v1, "+[WKWallpaperRepresentingCollection _loadCollectionMetadataWithURL:]");
  OUTLINED_FUNCTION_1_0(&dword_1E4A23000, v3, v4, "%{public}s: Wallpaper Collection metadata file does not exist at URL '%{public}@'", v5);
}

+ (void)_loadWallpaperRepresentingContentFromURL:(void *)a1 collectionMetadata:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v5[0] = 136446466;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1E4A23000, a2, OS_LOG_TYPE_FAULT, "%{public}s: No 'Wallpapers' directory found in wallpaper collection at path '%{public}@'.", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_loadWallpaperRepresentingContentFromURL:(NSObject *)a3 collectionMetadata:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v8[0] = 136446722;
  OUTLINED_FUNCTION_0();
  v9 = v6;
  v10 = a2;
  _os_log_error_impl(&dword_1E4A23000, a3, OS_LOG_TYPE_ERROR, "%{public}s: Encountered error in retrieving contents of collection at path '%{public}@', error '%{public}@'", v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_loadWallpaperRepresentingContentFromURL:(os_log_t)log collectionMetadata:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = "+[WKWallpaperRepresentingCollection _loadWallpaperRepresentingContentFromURL:collectionMetadata:]";
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%{public}s: no bundles that we want to load", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end