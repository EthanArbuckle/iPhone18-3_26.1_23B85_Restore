@interface PLLibraryBookmarkManager
+ (id)_securityScopedURLWithURL:(id)a3 sandboxExtension:(id)a4;
+ (id)resolveSecurityScopedBookmark:(id)a3 isStale:(BOOL *)a4 error:(id *)a5;
+ (id)sharedBookmarkManager;
- (PLLibraryBookmarkManager)init;
- (id)URLFromClientLibraryURL:(id)a3 sandboxExtension:(id)a4 error:(id *)a5;
- (id)_activeURLForClientLibraryURL:(id)a3;
- (id)allKnownLibraryURLs;
- (id)newSandboxExtensionDataForClient:(id *)a3 path:(id)a4 writable:(BOOL)a5;
- (id)sandboxExtensionsByPathForClient:(id)a3 pathManager:(id)a4 libraryAccessRole:(int64_t)a5;
- (void)_importLithiumAccessRights;
- (void)_loadFromDefaults;
- (void)_removeActiveURLForPathKey:(id)a3;
- (void)_removeSSBForPathKey:(id)a3;
- (void)_saveToDefaults;
- (void)_storeSecurityScopedURL:(id)a3 pathKey:(id)a4;
- (void)dealloc;
- (void)removeSSBForLibraryURL:(id)a3;
@end

@implementation PLLibraryBookmarkManager

- (void)_removeSSBForPathKey:(id)a3
{
  if (a3)
  {
    [(PLLibraryBookmarkManager *)self _removeActiveURLForPathKey:?];

    [(PLLibraryBookmarkManager *)self _saveToDefaults];
  }
}

- (void)_removeActiveURLForPathKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSMutableDictionary *)self->_activeURLsByPathKey objectForKeyedSubscript:v4];
    if (v5)
    {
      [(NSMutableDictionary *)self->_activeURLsByPathKey removeObjectForKey:v6];
      [v5 stopAccessingSecurityScopedResource];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_storeSecurityScopedURL:(id)a3 pathKey:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = v12;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    v8 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:497 description:{@"Invalid parameter not satisfying: %@", @"pathKey"}];

  v8 = v12;
LABEL_3:
  if ([v8 startAccessingSecurityScopedResource])
  {
    [(NSMutableDictionary *)self->_activeURLsByPathKey setObject:v12 forKeyedSubscript:v7];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"started"}];
  }
}

- (id)newSandboxExtensionDataForClient:(id *)a3 path:(id)a4 writable:(BOOL)a5
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a4 isDirectory:1];
  v7 = [v6 path];
  [v7 fileSystemRepresentation];
  v11 = *a3;
  v8 = sandbox_extension_issue_file_to_process();
  v9 = v8;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:strlen(v8) + 1 freeWhenDone:{1, *v11.var0, *&v11.var0[4]}];
  }

  return v9;
}

- (id)_activeURLForClientLibraryURL:(id)a3
{
  v4 = a3;
  v5 = pathKeyForLibraryURL(v4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [(NSMutableDictionary *)self->_activeURLsByPathKey objectForKeyedSubscript:v5];
  if (v6)
  {
    goto LABEL_12;
  }

  if (![PLSandboxHelper fileURLHasSecurityScope:v4])
  {
    v7 = [v4 path];
    v8 = PLGetSandboxExtensionTokenWithFlags(v7, *MEMORY[0x1E69E9BB0], *MEMORY[0x1E69E9BF0], 0);
    v9 = PLSandboxExtensionTokenAsData(v8);

    if (v9)
    {
      v6 = [objc_opt_class() _securityScopedURLWithURL:v4 sandboxExtension:v9];
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = v4;
  if (v6)
  {
LABEL_11:
    [(PLLibraryBookmarkManager *)self _storeSecurityScopedURL:v6 pathKey:v5];
  }

LABEL_12:

  return v6;
}

- (void)_saveToDefaults
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
  }
}

- (void)_loadFromDefaults
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
  }
}

- (void)_importLithiumAccessRights
{
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if ((PLIsReallyAssetsd_isAssetsd & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
  }
}

- (id)allKnownLibraryURLs
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return v2;
}

- (void)removeSSBForLibraryURL:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PLLibraryBookmarkManager_removeSSBForLibraryURL___block_invoke;
  v6[3] = &unk_1E7932A28;
  v7 = v4;
  v8 = self;
  v5 = v4;
  PLSafeRunWithUnfairLock(&sLock, v6);
}

void __51__PLLibraryBookmarkManager_removeSSBForLibraryURL___block_invoke(uint64_t a1)
{
  v2 = pathKeyForLibraryURL(*(a1 + 32));
  [*(a1 + 40) _removeSSBForPathKey:v2];
}

- (id)sandboxExtensionsByPathForClient:(id)a3 pathManager:(id)a4 libraryAccessRole:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3186;
  v25 = __Block_byref_object_dispose__3187;
  v26 = 0;
  if (a5 == 2)
  {
    v11 = [v9 clientOwnedDirectoryPathsForClientAccess:v8];
  }

  else if (a5 == 1)
  {
    v11 = [v9 pathsForClientAccess:v8];
  }

  else if (a5)
  {
    v11 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__PLLibraryBookmarkManager_sandboxExtensionsByPathForClient_pathManager_libraryAccessRole___block_invoke;
  v16[3] = &unk_1E79300E8;
  v20 = &v21;
  v12 = v11;
  v17 = v12;
  v18 = self;
  v13 = v8;
  v19 = v13;
  PLSafeRunWithUnfairLock(&sLock, v16);
  v14 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v14;
}

void __91__PLLibraryBookmarkManager_sandboxExtensionsByPathForClient_pathManager_libraryAccessRole___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PLLibraryBookmarkManager_sandboxExtensionsByPathForClient_pathManager_libraryAccessRole___block_invoke_2;
  v9[3] = &unk_1E79300C0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
}

void __91__PLLibraryBookmarkManager_sandboxExtensionsByPathForClient_pathManager_libraryAccessRole___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 BOOLValue];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 clientAuditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v9 = [v8 newSandboxExtensionDataForClient:v14 path:v5 writable:v6];
  if (v9)
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:v9 forKeyedSubscript:v5];
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v11 = @"writable";
      }

      else
      {
        v11 = @"readonly";
      }

      v12 = [*(a1 + 40) clientProcessIdentifier];
      v13 = [*(a1 + 40) trustedCallerBundleID];
      LODWORD(v14[0]) = 138544130;
      *(v14 + 4) = v11;
      WORD6(v14[0]) = 2112;
      *(v14 + 14) = v5;
      WORD3(v14[1]) = 2050;
      *(&v14[1] + 1) = v12;
      v15 = 2114;
      v16 = v13;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "No %{public}@ sandbox extension for path %@ for client pid %{public}ld (%{public}@)", v14, 0x2Au);
    }
  }
}

- (id)URLFromClientLibraryURL:(id)a3 sandboxExtension:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3186;
  v25 = __Block_byref_object_dispose__3187;
  v26 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PLLibraryBookmarkManager_URLFromClientLibraryURL_sandboxExtension_error___block_invoke;
  v15[3] = &unk_1E7930098;
  v18 = &v21;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v19 = a2;
  v20 = a5;
  PLSafeRunWithUnfairLock(&sLock, v15);
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __75__PLLibraryBookmarkManager_URLFromClientLibraryURL_sandboxExtension_error___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _activeURLForClientLibraryURL:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && !*(a1 + 48) && [PLPhotoLibraryPathManager isSystemPhotoLibraryURL:*(a1 + 40)])
  {
    v5 = +[PLPhotoLibraryPathManager systemLibraryURL];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "No SSB on file for %@", buf, 0xCu);
    }

    v10 = [objc_opt_class() _securityScopedURLWithURL:*(a1 + 40) sandboxExtension:*(a1 + 48)];
    v11 = v10;
    if (v10)
    {
      if ([v10 startAccessingSecurityScopedResource])
      {
        [v11 stopAccessingSecurityScopedResource];
      }

      else
      {
        v18 = [v11 path];
        v19 = [PLSandboxHelper processCanWriteSandboxForPath:v18];

        if (!v19)
        {
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          v26 = *(a1 + 64);
          v27 = *(a1 + 32);
          v28 = [v11 path];
          [v25 handleFailureInMethod:v26 object:v27 file:@"PLLibraryBookmarkManager.m" lineNumber:151 description:{@"Failed to start accessing security scoped resource and no access to %@", v28}];
        }
      }

      v15 = 0;
      v17 = v11;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = v12;
      v14 = *(a1 + 40);
      if (v14)
      {
        [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A998]];
      }

      [v13 setObject:@"Client did not provide bookmarkData" forKeyedSubscript:*MEMORY[0x1E696A588]];
      [v13 setObject:@"Double-click the photo library in Finder or Option+Launch Photos and select the photo library" forKeyedSubscript:*MEMORY[0x1E696A598]];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:41017 userInfo:v13];

      if (v15 && *(a1 + 72))
      {
        v16 = v15;
        **(a1 + 72) = v15;
      }

      v17 = *(a1 + 40);
    }

    v20 = *(a1 + 32);
    v21 = v17;
    v22 = [v20 _activeURLForClientLibraryURL:v21];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }
}

- (void)dealloc
{
  [(NSMutableDictionary *)self->_activeURLsByPathKey enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3209];
  v3.receiver = self;
  v3.super_class = PLLibraryBookmarkManager;
  [(PLLibraryBookmarkManager *)&v3 dealloc];
}

- (PLLibraryBookmarkManager)init
{
  if (sLibraryBookmarkManager)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryBookmarkManager.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"sLibraryBookmarkManager == nil"}];
  }

  v9.receiver = self;
  v9.super_class = PLLibraryBookmarkManager;
  v3 = [(PLLibraryBookmarkManager *)&v9 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeURLsByPathKey = v3->_activeURLsByPathKey;
    v3->_activeURLsByPathKey = v4;

    [(PLLibraryBookmarkManager *)v3 _loadFromDefaults];
  }

  return v3;
}

+ (id)_securityScopedURLWithURL:(id)a3 sandboxExtension:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = a4;
    v7 = [a3 path];
    v8 = [v5 fileURLWithPath:v7 isDirectory:1];

    MEMORY[0x1AC591C90](v8, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)resolveSecurityScopedBookmark:(id)a3 isStale:(BOOL *)a4 error:(id *)a5
{
  v11 = 0;
  v10 = 0;
  v7 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:a3 options:256 relativeToURL:0 bookmarkDataIsStale:&v11 error:&v10];
  v8 = v10;
  if (a5 && !v7)
  {
    v8 = v8;
    *a5 = v8;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return v7;
}

+ (id)sharedBookmarkManager
{
  v11 = *MEMORY[0x1E69E9840];
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd)
  {
    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    if ((PLIsReallyAssetsd_isAssetsd & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"PLLibraryBookmarkManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PLLibraryBookmarkManager_sharedBookmarkManager__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (sharedBookmarkManager_onceToken != -1)
    {
      dispatch_once(&sharedBookmarkManager_onceToken, block);
    }

    v4 = sLibraryBookmarkManager;
  }

  else
  {
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "+[PLLibraryBookmarkManager sharedBookmarkManager]";
        _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "%{public}s is only available in photolibraryd", buf, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __49__PLLibraryBookmarkManager_sharedBookmarkManager__block_invoke(uint64_t a1)
{
  sLibraryBookmarkManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

@end