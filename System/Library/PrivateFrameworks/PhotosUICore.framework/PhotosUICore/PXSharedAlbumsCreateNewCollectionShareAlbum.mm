@interface PXSharedAlbumsCreateNewCollectionShareAlbum
@end

@implementation PXSharedAlbumsCreateNewCollectionShareAlbum

void ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x1E6978780] creationRequestForOwnedCollectionShareWithTitle:*(a1 + 32) subtype:102];
  v2 = [v6 placeholderForCreatedCollectionShare];
  v3 = [v2 localIdentifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharedAlbumsGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__178302;
    v47 = __Block_byref_object_dispose__178303;
    v9 = MEMORY[0x1E6978770];
    v49 = *(*(*(a1 + 64) + 8) + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    v11 = [*(a1 + 40) librarySpecificFetchOptions];
    v12 = [v9 fetchAssetCollectionsWithLocalIdentifiers:v10 options:v11];
    v48 = [v12 firstObject];

    if (!v44[5])
    {
      v30 = PLSharedAlbumsGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v31;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_ERROR, "Failed to fetch shared album with name '%@' after creation.", &buf, 0xCu);
      }

      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXSharedAlbumsErrorDomain" code:4 userInfo:0];
      v32 = *(a1 + 56);
      if (v32)
      {
        v32;
        v29;
        px_dispatch_on_main_queue();
      }

      goto LABEL_24;
    }

    v13 = PLSharedAlbumsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v44[5] uuid];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Successfully created shared album with UUID=%{public}@", &buf, 0xCu);
    }

    v15 = v44[5];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke_359;
    v39[3] = &unk_1E77407C0;
    v42 = &v43;
    v40 = *(a1 + 48);
    v41 = *(a1 + 56);
    v16 = v15;
    v17 = v39;
    v18 = PLSharedAlbumsGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 localizedTitle];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to publish shared album '%@'", &buf, 0xCu);
    }

    v20 = v16;
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedAlbumsPublishSharedAlbum(PHAssetCollection *__strong, void (^ _Nullable __strong)(PHAssetCollection *__strong, NSError * _Nullable __strong))"}];
      v37 = objc_opt_class();
      v36 = NSStringFromClass(v37);
      v38 = [v20 px_descriptionForAssertionMessage];
      [v33 handleFailureInFunction:v34 file:@"PXSharedAlbumsUtilities.m" lineNumber:120 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sharedAlbum", v36, v38}];
    }

    else
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PXSharedAlbumsPublishSharedAlbum(PHAssetCollection *__strong, void (^ _Nullable __strong)(PHAssetCollection *__strong, NSError * _Nullable __strong))"}];
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      [v33 handleFailureInFunction:v34 file:@"PXSharedAlbumsUtilities.m" lineNumber:120 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sharedAlbum", v36}];
    }

LABEL_11:
    v21 = v20;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v24 = MEMORY[0x1E6978AB8];
    v25 = [v22 uuid];
    v26 = [v22 photoLibrary];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v51 = ___PXSharedAlbumsPublishSharedAlbum_block_invoke;
    v52 = &unk_1E7740810;
    v53 = v21;
    v54 = v17;
    v27 = v17;
    v28 = v21;
    [v24 publishShareWithUUID:v25 photoLibrary:v26 completion:&buf];

    v29 = v40;
LABEL_24:

    _Block_object_dispose(&v43, 8);
    goto LABEL_25;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Shared album collection share creation failed with error: %@", &buf, 0xCu);
  }

  v23 = *(a1 + 56);
  if (v23)
  {
    v23;
    v5;
    px_dispatch_on_main_queue();
  }

LABEL_25:
}

void ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke_359(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = *(a1 + 48);
  v6 = *(*(v5 + 8) + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke_2_360;
  v18 = &unk_1E7740798;
  v20 = v5;
  v7 = *(a1 + 32);
  v19 = *(a1 + 40);
  v8 = v7;
  v9 = v6;
  v10 = v16;
  if ([v8 count])
  {
    v11 = [v9 photoLibrary];
    v12 = [v9 title];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___PXSharedAlbumsAddParticipantsToSharedAlbum_block_invoke;
    v23[3] = &unk_1E7744F50;
    v24 = v8;
    v25 = v9;
    v26 = v13;
    v27 = v12;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___PXSharedAlbumsAddParticipantsToSharedAlbum_block_invoke_370;
    v21[3] = &unk_1E7747648;
    v22 = v10;
    v14 = v13;
    v15 = v12;
    [v11 performChanges:v23 completionHandler:v21];
  }

  else
  {
    v17(v10, 1, 0);
  }
}

void ___PXSharedAlbumsCreateNewCollectionShareAlbum_block_invoke_2_360(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLSharedAlbumsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) uuid];
      *buf = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error adding participants to newly created shared album %{public}@: %@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v8;
    v5;
    px_dispatch_on_main_queue();
  }
}

@end