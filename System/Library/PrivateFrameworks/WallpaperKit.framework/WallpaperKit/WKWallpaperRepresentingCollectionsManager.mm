@interface WKWallpaperRepresentingCollectionsManager
+ (WKWallpaperRepresentingCollectionsManager)defaultManager;
- (WKWallpaperRepresentingCollectionsManager)initWithDownloadManager:(id)a3;
- (id)wallpaperCollectionAtIndex:(int64_t)a3;
- (id)wallpaperCollectionWithIdentifier:(id)a3;
- (int64_t)numberOfWallpaperCollections;
- (void)_loadCollections;
- (void)_loadSystemWallpaperCollections;
@end

@implementation WKWallpaperRepresentingCollectionsManager

- (WKWallpaperRepresentingCollectionsManager)initWithDownloadManager:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WKWallpaperRepresentingCollectionsManager;
  v6 = [(WKWallpaperRepresentingCollectionsManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__downloadManager, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    wallpaperCollections = v7->__wallpaperCollections;
    v7->__wallpaperCollections = v8;

    v10 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    wallpaperCollectionLookupTable = v7->__wallpaperCollectionLookupTable;
    v7->__wallpaperCollectionLookupTable = v10;

    [(WKWallpaperRepresentingCollectionsManager *)v7 _loadCollections];
  }

  return v7;
}

- (void)_loadCollections
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v10 = v5;
    v11 = 2082;
    v12 = "[WKWallpaperRepresentingCollectionsManager _loadCollections]";
    _os_log_impl(&dword_1E4A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s start.", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__WKWallpaperRepresentingCollectionsManager__loadCollections__block_invoke;
  aBlock[3] = &unk_1E8767070;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  [(WKWallpaperRepresentingCollectionsManager *)self _loadSystemWallpaperCollections];
  v6[2](v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __61__WKWallpaperRepresentingCollectionsManager__loadCollections__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2082;
    v10 = "[WKWallpaperRepresentingCollectionsManager _loadCollections]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}s complete.", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_loadSystemWallpaperCollections
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
    _os_log_impl(&dword_1E4A23000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: start.", buf, 0xCu);
  }

  v90 = MGCopyAnswer();
  v3 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v114 = v5;
    v115 = 2114;
    v116 = v90;
    _os_log_impl(&dword_1E4A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolving default wallpaper collections for device name '%{public}@'", buf, 0x16u);
  }

  v6 = WKWallpapersBaseURL();
  v91 = [v6 URLByAppendingPathComponent:@"Collections"];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v90 lowercaseString];
  v9 = [v7 stringWithFormat:@"Collections~%@.plist", v8];
  v92 = [v91 URLByAppendingPathComponent:v9];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v92 path];
  LOBYTE(v9) = [v10 fileExistsAtPath:v11];

  if ((v9 & 1) == 0)
  {
    v12 = [v91 URLByAppendingPathComponent:@"Collections.plist"];

    v92 = v12;
  }

  v13 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v92 path];
    *buf = 138543618;
    v114 = v15;
    v115 = 2114;
    v116 = v16;
    _os_log_impl(&dword_1E4A23000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Resolved to default wallpaper collections file at path '%{public}@'", buf, 0x16u);
  }

  v87 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v92];
  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v109 = 0;
  v88 = [v17 contentsOfDirectoryAtURL:v91 includingPropertiesForKeys:0 options:0 error:&v109];
  v89 = v109;

  if (v89)
  {
    log = WKLogForCategory(4uLL);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v91 path];
      *buf = 138543874;
      v114 = v19;
      v115 = 2114;
      v116 = v20;
      v117 = 2114;
      v118 = v89;
      _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%{public}@: Unable to load contents of directory at path '%{public}@'. Error '%{public}@'.", buf, 0x20u);
    }

    goto LABEL_55;
  }

  log = [MEMORY[0x1E695DF90] dictionary];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v21 = v88;
  v22 = [v21 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v22)
  {
    v23 = *v106;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v106 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v105 + 1) + 8 * i);
        v26 = [v25 path];
        v27 = [(WKWallpaperRepresentingCollection *)v26 lowercaseString];
        if (![v27 hasSuffix:@"wallpapercollection"])
        {
          goto LABEL_23;
        }

        v28 = [WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:v25];

        if (!v28)
        {
          continue;
        }

        v29 = [WKWallpaperRepresentingCollection alloc];
        v30 = [(WKWallpaperRepresentingCollectionsManager *)self _downloadManager];
        v26 = [(WKWallpaperRepresentingCollection *)v29 initWithURL:v25 downloadManager:v30];

        if (v26)
        {
          v31 = WKLogForCategory(4uLL);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(WKWallpaperRepresentingCollection *)v26 identifier];
            v33 = [v32 UUIDString];
            v34 = [(WKWallpaperRepresentingCollection *)v26 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = v33;
            v117 = 2114;
            v118 = v34;
            _os_log_impl(&dword_1E4A23000, v31, OS_LOG_TYPE_DEFAULT, "%s: Loaded wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }

          v27 = [(WKWallpaperRepresentingCollection *)v26 identifier];
          v35 = [v27 UUIDString];
          [log setObject:v26 forKeyedSubscript:v35];

LABEL_23:
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v22);
  }

  v36 = WKAppleInternalWallpapersBaseURL();
  v86 = [v36 URLByAppendingPathComponent:@"Collections"];

  v93 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v93 sf_isInternalInstall])
  {
    v37 = WKAppleInternalWallpapersBaseURL();
    if (v37)
    {
      v38 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = [v86 path];
      v40 = [v38 fileExistsAtPath:v39];

      if (!v40)
      {
        v89 = 0;
        goto LABEL_35;
      }

      v41 = [MEMORY[0x1E696AC08] defaultManager];
      v104 = 0;
      v93 = [v41 contentsOfDirectoryAtURL:v86 includingPropertiesForKeys:0 options:0 error:&v104];
      v89 = v104;

      if (v89)
      {
        v42 = WKLogForCategory(4uLL);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = [v86 path];
          *buf = 138543874;
          v114 = v44;
          v115 = 2114;
          v116 = v45;
          v117 = 2114;
          v118 = v89;
          _os_log_error_impl(&dword_1E4A23000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Unable to load internal contents of directory at path '%{public}@'. Error '%{public}@'.", buf, 0x20u);
        }

LABEL_72:

        goto LABEL_34;
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v42 = v93;
      v72 = [v42 countByEnumeratingWithState:&v100 objects:v111 count:16];
      if (!v72)
      {
        goto LABEL_72;
      }

      v73 = *v101;
LABEL_59:
      v74 = 0;
      while (1)
      {
        if (*v101 != v73)
        {
          objc_enumerationMutation(v42);
        }

        v75 = *(*(&v100 + 1) + 8 * v74);
        v76 = [v75 path];
        v77 = [(WKWallpaperRepresentingCollection *)v76 lowercaseString];
        if (![v77 hasSuffix:@"wallpapercollection"])
        {
          goto LABEL_68;
        }

        v78 = [WKWallpaperRepresentingCollection shouldLoadWallpaperCollectionAtURL:v75];

        if (v78)
        {
          break;
        }

LABEL_70:
        if (v72 == ++v74)
        {
          v72 = [v42 countByEnumeratingWithState:&v100 objects:v111 count:16];
          if (!v72)
          {
            goto LABEL_72;
          }

          goto LABEL_59;
        }
      }

      v79 = [WKWallpaperRepresentingCollection alloc];
      v80 = [(WKWallpaperRepresentingCollectionsManager *)self _downloadManager];
      v76 = [(WKWallpaperRepresentingCollection *)v79 initWithURL:v75 downloadManager:v80];

      if (v76)
      {
        v81 = WKLogForCategory(4uLL);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = [(WKWallpaperRepresentingCollection *)v76 identifier];
          v83 = [v82 UUIDString];
          v84 = [(WKWallpaperRepresentingCollection *)v76 displayName];
          *buf = 136315650;
          v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
          v115 = 2114;
          v116 = v83;
          v117 = 2114;
          v118 = v84;
          _os_log_impl(&dword_1E4A23000, v81, OS_LOG_TYPE_DEFAULT, "%s: Loaded internal wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
        }

        v77 = [(WKWallpaperRepresentingCollection *)v76 identifier];
        v85 = [v77 UUIDString];
        [log setObject:v76 forKeyedSubscript:v85];

LABEL_68:
      }

      goto LABEL_70;
    }
  }

  v89 = 0;
LABEL_34:

LABEL_35:
  objc_opt_class();
  v46 = [v87 objectForKeyedSubscript:@"order"];
  if (objc_opt_isKindOfClass())
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;

  if (!v48)
  {
    v49 = MEMORY[0x1E695DF30];
    v50 = MEMORY[0x1E696AEC0];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v53 = [v92 path];
    v54 = objc_claimAutoreleasedReturnValue();
    v55 = [v49 exceptionWithName:*MEMORY[0x1E695D940] reason:v54 userInfo:0];

    [v55 raise];
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v56 = v48;
  v57 = [v56 countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v57)
  {
    v58 = *v97;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v97 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v60 = *(*(&v96 + 1) + 8 * j);
        v61 = [log objectForKeyedSubscript:v60];
        v62 = v61;
        if (v61 && [v61 numberOfWallpapers] >= 1)
        {
          v63 = WKLogForCategory(4uLL);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [v62 identifier];
            v65 = [v64 UUIDString];
            v66 = [v62 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = v65;
            v117 = 2114;
            v118 = v66;
            _os_log_impl(&dword_1E4A23000, v63, OS_LOG_TYPE_DEFAULT, "%s: Adding wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }

          v67 = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
          [v67 na_safeAddObject:v62];

          v68 = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollectionLookupTable];
          v69 = [v62 identifier];
          [v68 setObject:v62 forKey:v69];
        }

        else
        {
          v68 = WKLogForCategory(4uLL);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [v62 displayName];
            *buf = 136315650;
            v114 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]";
            v115 = 2114;
            v116 = v60;
            v117 = 2114;
            v118 = v70;
            _os_log_impl(&dword_1E4A23000, v68, OS_LOG_TYPE_DEFAULT, "%s: Skipping empty wallpaper collection (identifier: '%{public}@', displayName: '%{public}@').", buf, 0x20u);
          }
        }
      }

      v57 = [v56 countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v57);
  }

LABEL_55:
  __76__WKWallpaperRepresentingCollectionsManager__loadSystemWallpaperCollections__block_invoke();
  v71 = *MEMORY[0x1E69E9840];
}

void __76__WKWallpaperRepresentingCollectionsManager__loadSystemWallpaperCollections__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = WKLogForCategory(4uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[WKWallpaperRepresentingCollectionsManager _loadSystemWallpaperCollections]_block_invoke";
    _os_log_impl(&dword_1E4A23000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: complete.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (WKWallpaperRepresentingCollectionsManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[WKWallpaperRepresentingCollectionsManager defaultManager];
  }

  v3 = defaultManager__defaultWallpaperCollectionsManager;

  return v3;
}

void __59__WKWallpaperRepresentingCollectionsManager_defaultManager__block_invoke()
{
  v0 = [WKWallpaperRepresentingCollectionsManager alloc];
  v3 = +[WKWallpaperBundleDownloadManager defaultManager];
  v1 = [(WKWallpaperRepresentingCollectionsManager *)v0 initWithDownloadManager:v3];
  v2 = defaultManager__defaultWallpaperCollectionsManager;
  defaultManager__defaultWallpaperCollectionsManager = v1;
}

- (int64_t)numberOfWallpaperCollections
{
  v2 = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
  v3 = [v2 count];

  return v3;
}

- (id)wallpaperCollectionAtIndex:(int64_t)a3
{
  v4 = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollections];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)wallpaperCollectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WKWallpaperRepresentingCollectionsManager *)self _wallpaperCollectionLookupTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end