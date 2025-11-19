@interface PLSidecarFinder
+ (BOOL)_isValidExtensionForSidecar:(id)a3 context:(id)a4;
+ (id)_findPotentialSidecarURLsInDirectory:(id)a3 context:(id)a4;
- (PLSidecarFinder)init;
- (id)collectSidecarURLsForAssetFilename:(id)a3 inDirectory:(id)a4 context:(id)a5 removeWhenDone:(BOOL)a6;
- (void)reset;
@end

@implementation PLSidecarFinder

- (void)reset
{
  v2 = [(PLSidecarFinder *)self cachedSidecarURLsByDirectory];
  [v2 removeAllObjects];
}

- (id)collectSidecarURLsForAssetFilename:(id)a3 inDirectory:(id)a4 context:(id)a5 removeWhenDone:(BOOL)a6
{
  v26 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  os_unfair_lock_lock(&self->_lock);
  v12 = [v9 stringByDeletingPathExtension];
  v30 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [(PLSidecarFinder *)self cachedSidecarURLsByDirectory];
  v15 = [v14 objectForKey:v10];

  if (!v15)
  {
    v15 = [objc_opt_class() _findPotentialSidecarURLsInDirectory:v10 context:v11];
    v16 = [(PLSidecarFinder *)self cachedSidecarURLsByDirectory];
    [v16 setObject:v15 forKey:v10];
  }

  v27 = v11;
  v28 = self;
  v29 = v10;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        v23 = [v22 lastPathComponent];
        v24 = [v23 stringByDeletingPathExtension];
        if ([v12 isEqualToString:v24])
        {
          if (([v23 isEqualToString:v9] & 1) == 0)
          {
            [v30 addObject:v22];
          }

          [v13 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v19);
  }

  if (v26)
  {
    [v17 removeObjectsInArray:v13];
  }

  os_unfair_lock_unlock(&v28->_lock);

  return v30;
}

- (PLSidecarFinder)init
{
  v6.receiver = self;
  v6.super_class = PLSidecarFinder;
  v2 = [(PLSidecarFinder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cachedSidecarURLsByDirectory = v2->_cachedSidecarURLsByDirectory;
    v2->_cachedSidecarURLsByDirectory = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (id)_findPotentialSidecarURLsInDirectory:(id)a3 context:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = *MEMORY[0x1E695DB78];
  v28 = *MEMORY[0x1E695DC30];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB78], 0}];
  v24 = v6;
  v23 = v25 = v5;
  v8 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:? options:? errorHandler:?];
  v26 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v30 = 0;
        v16 = [v14 getResourceValue:&v30 forKey:v7 error:0];
        v17 = v30;
        v18 = v17;
        if (v16 && ([v17 BOOLValue] & 1) == 0)
        {
          v29 = 0;
          v19 = [v14 getResourceValue:&v29 forKey:v28 error:0];
          v20 = v29;
          if (v19)
          {
            v21 = [v14 pathExtension];
            if ([objc_opt_class() _isValidExtensionForSidecar:v21 context:v27])
            {
              [v26 addObject:v14];
            }
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  return v26;
}

uint64_t __64__PLSidecarFinder__findPotentialSidecarURLsInDirectory_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error enumerating directory: %@, error: %@", &v8, 0x16u);
  }

  return 1;
}

+ (BOOL)_isValidExtensionForSidecar:(id)a3 context:(id)a4
{
  v4 = a3;
  if ([v4 length] && +[PLManagedAsset isValidFileExtensionForImport:](PLManagedAsset, "isValidFileExtensionForImport:", v4) && (objc_msgSend(MEMORY[0x1E69C08F0], "resourceModelTypeForFilenameExtension:", v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [PLUniformTypeIdentifier utiWithIdentifier:v6];
    v8 = [v7 conformsToData] && (!objc_msgSend(v7, "conformsToImage") || objc_msgSend(v7, "conformsToRawImage")) && !objc_msgSend(v7, "conformsToMovie");
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end