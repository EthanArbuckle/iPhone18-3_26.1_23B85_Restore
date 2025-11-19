@interface PXSharedAlbumsPublishSharedAlbum
@end

@implementation PXSharedAlbumsPublishSharedAlbum

void ___PXSharedAlbumsPublishSharedAlbum_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLSharedAlbumsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) localizedTitle];
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to publish shared album '%@' with error %@", buf, 0x16u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v9;
      v6;
      px_dispatch_on_main_queue();
    }
  }

  else
  {
    v10 = [*(a1 + 32) photoLibrary];
    v11 = [v10 px_standardLibrarySpecificFetchOptions];

    v12 = MEMORY[0x1E6978650];
    v13 = [*(a1 + 32) localIdentifier];
    v22 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v15 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v14 options:v11];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = *(a1 + 40);
      if (v17)
      {
        v17;
        v16;
        px_dispatch_on_main_queue();
      }
    }

    else
    {
      v18 = PLSharedAlbumsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 32) localIdentifier];
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "After successfully publishing shared album, could not retrieve it with identifier: '%{public}@'", buf, 0xCu);
      }

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXSharedAlbumsErrorDomain" code:4 userInfo:0];
      v21 = *(a1 + 40);
      if (v21)
      {
        v21;
        v20;
        px_dispatch_on_main_queue();
      }
    }
  }
}

@end