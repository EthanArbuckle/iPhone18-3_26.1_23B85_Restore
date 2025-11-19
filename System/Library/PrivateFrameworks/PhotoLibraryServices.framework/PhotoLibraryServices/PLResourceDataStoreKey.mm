@interface PLResourceDataStoreKey
+ (BOOL)refreshSandboxExtensionForURL:(id)a3 assetID:(id)a4 error:(id *)a5;
+ (BOOL)refreshSandboxExtensionForURL:(id)a3 libraryID:(id)a4 assetUUID:(id)a5 error:(id *)a6;
- (BOOL)isEqualToKey:(id)a3;
- (PLResourceDataStoreKey)initWithKeyStruct:(const void *)a3;
- (id)descriptionForAssetID:(id)a3;
- (id)fileURLForAssetID:(id)a3;
- (id)keyData;
- (id)uniformTypeIdentifier;
- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4;
@end

@implementation PLResourceDataStoreKey

+ (BOOL)refreshSandboxExtensionForURL:(id)a3 libraryID:(id)a4 assetUUID:(id)a5 error:(id *)a6
{
  v61[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((PLIsAssetsd() & 1) != 0 || !PLIsLimitedLibraryClient() || ![v9 isFileURL])
  {
    v21 = 1;
    goto LABEL_8;
  }

  v12 = MEMORY[0x1E695DFF8];
  v13 = MEMORY[0x19EAEE560](v10);
  v14 = [v12 fileURLWithPath:v13 isDirectory:1];

  if (!v14)
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E69BFF48];
    v54 = *MEMORY[0x1E696A278];
    v55 = @"no library url";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v19 = [v23 errorWithDomain:v24 code:44001 userInfo:v16];
    v20 = 0;
    v21 = 0;
    goto LABEL_22;
  }

  v15 = +[PLPhotoLibraryBundleController sharedBundleController];
  v16 = [v15 bundleForLibraryURL:v14];

  v17 = [v16 clientSandboxExtensionCache];
  v18 = [v17 containsURL:v9];

  if ((v18 & 1) == 0)
  {
    v25 = [v16 assetsdClient];
    v26 = [v25 resourceClient];

    v47 = v26;
    if (v26)
    {
      v27 = [v9 path];
      v52 = 0;
      v53 = 0;
      v28 = [v26 sandboxExtensionsForAssetWithUUID:v11 sandboxExtensionTokens:&v53 error:&v52];
      v20 = v53;
      v29 = v52;
      v19 = v29;
      if (v28)
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __82__PLResourceDataStoreKey_refreshSandboxExtensionForURL_libraryID_assetUUID_error___block_invoke;
        v48[3] = &unk_1E756BCE8;
        v51 = 0;
        v46 = v27;
        v43 = v27;
        v49 = v43;
        v30 = v16;
        v50 = v30;
        [v20 enumerateKeysAndObjectsUsingBlock:v48];
        v31 = [v30 clientSandboxExtensionCache];
        v21 = [v31 containsURL:v9];

        if ((v21 & 1) == 0)
        {
          v41 = MEMORY[0x1E696ABC0];
          v40 = *MEMORY[0x1E69BFF48];
          v60 = *MEMORY[0x1E696A278];
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sandbox extension not in the cache after requesting them for path: %@", v43];
          v61[0] = v44;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
          v42 = [v41 errorWithDomain:v40 code:44001 userInfo:v32];

          v19 = v42;
        }

        v33 = v49;
        goto LABEL_20;
      }

      if (!v29)
      {
        v45 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E69BFF48];
        v58 = *MEMORY[0x1E696A278];
        v46 = v27;
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown error getting sandbox extension for path: %@", v27];
        v59 = v33;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v19 = [v45 errorWithDomain:v37 code:44001 userInfo:v38];

        v21 = 0;
LABEL_20:

        v36 = v46;
        goto LABEL_21;
      }

      v36 = v27;
    }

    else
    {
      v34 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E69BFF48];
      v56 = *MEMORY[0x1E696A278];
      v57 = @"no resource client";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v19 = [v34 errorWithDomain:v35 code:44001 userInfo:v36];
      v20 = 0;
    }

    v21 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_22:

  if (a6)
  {
    v39 = v19;
    *a6 = v19;
  }

LABEL_8:
  return v21;
}

void __82__PLResourceDataStoreKey_refreshSandboxExtensionForURL_libraryID_assetUUID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!*(a1 + 48) || [v5 isEqualToString:*(a1 + 32)])
  {
    v7 = [objc_alloc(MEMORY[0x1E69BF2E8]) initFileURLWithPath:v5 sandboxExtensionToken:v6 consume:1];
    if (v7)
    {
      v8 = [*(a1 + 40) clientSandboxExtensionCache];
      [v8 insertSandboxedURL:v7];
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to generate sandboxedURL for path: %@", &v9, 0xCu);
      }
    }
  }
}

+ (BOOL)refreshSandboxExtensionForURL:(id)a3 assetID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 libraryID];
  v11 = [v8 uuid];

  LOBYTE(a5) = [a1 refreshSandboxExtensionForURL:v9 libraryID:v10 assetUUID:v11 error:a5];
  return a5;
}

- (id)uniformTypeIdentifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (id)keyData
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (BOOL)isEqualToKey:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

- (PLResourceDataStoreKey)initWithKeyStruct:(const void *)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (id)fileURLForAssetID:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

- (id)descriptionForAssetID:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Subclasses must override %@", v5}];

  return 0;
}

- (id)validateForAssetID:(id)a3 resourceIdentity:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return MEMORY[0x1E695E0F0];
}

@end