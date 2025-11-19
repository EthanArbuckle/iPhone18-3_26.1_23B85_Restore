@interface WLPhotoLibrary
- (BOOL)copy:(id)a3 filename:(id)a4 error:(id *)a5;
- (WLPhotoLibrary)init;
- (WLPhotoLibrary)initWithContentType:(unint64_t)a3;
- (id)assetCollectionChangeRequest:(id)a3;
- (void)addAsset:(id)a3 collection:(id)a4;
- (void)addAsset:(id)a3 filename:(id)a4 size:(unint64_t)a5 collection:(id)a6 completion:(id)a7;
@end

@implementation WLPhotoLibrary

- (WLPhotoLibrary)init
{
  v15.receiver = self;
  v15.super_class = WLPhotoLibrary;
  v2 = [(WLPhotoLibrary *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(WLPhotoLibrary *)v2 setContentType:0];
    v4 = objc_alloc_init(WLFileProvider);
    v5 = [(WLFileProvider *)v4 fetchRootPath];

    if (v5)
    {
      v6 = WLLocalizedString();
      v7 = [v5 stringByAppendingPathComponent:v6];
      [(WLPhotoLibrary *)v3 setRootPath:v7];

      v8 = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(v7) = [v8 fileExistsAtPath:v3->_rootPath];

      if ((v7 & 1) == 0)
      {
        v9 = [MEMORY[0x277CCAA00] defaultManager];
        rootPath = v3->_rootPath;
        v14 = 0;
        [v9 createDirectoryAtPath:rootPath withIntermediateDirectories:0 attributes:0 error:&v14];
        v11 = v14;

        if (v11)
        {
          v13 = [v11 description];
          _WLLog();
        }
      }
    }

    else
    {
      _WLLog();
    }
  }

  return v3;
}

- (WLPhotoLibrary)initWithContentType:(unint64_t)a3
{
  v4 = [(WLPhotoLibrary *)self init];
  v5 = v4;
  if (v4)
  {
    [(WLPhotoLibrary *)v4 setContentType:a3];
  }

  return v5;
}

- (void)addAsset:(id)a3 filename:(id)a4 size:(unint64_t)a5 collection:(id)a6 completion:(id)a7
{
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v12 && v13)
  {
    if (a5)
    {
      _WLLog();
      objc_initWeak(&location, self);
      v16 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke;
      v27[3] = &unk_279EB56E8;
      objc_copyWeak(&v30, &location);
      v17 = v12;
      v28 = v17;
      v29 = v14;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke_2;
      v22[3] = &unk_279EB5710;
      objc_copyWeak(&v26, &location);
      v23 = v17;
      v24 = v13;
      v25 = v15;
      [v16 performChanges:v27 completionHandler:v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      _WLLog();
      if (v15)
      {
        (*(v15 + 2))(v15, 1, 0);
      }
    }
  }

  else
  {
    _WLLog();
    if (v15)
    {
      v18 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"WLPhotoLibrary did receive nil.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v20 = [v18 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v19];

      (*(v15 + 2))(v15, 0, v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addAsset:*(a1 + 32) collection:*(a1 + 40)];
}

void __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v9 = [WeakRetained photoLibraryDidComplete:v7 filename:v8 success:a2 error:&v12];
  v10 = v12;

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v10);
  }
}

- (void)addAsset:(id)a3 collection:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(WLPhotoLibrary *)self assetCollectionChangeRequest:v6];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    _WLLog();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  contentType = self->_contentType;
  if (contentType == 1)
  {
    v13 = MEMORY[0x277CD97B0];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
    v12 = [v13 creationRequestForAssetFromVideoAtFileURL:v11];
    goto LABEL_8;
  }

  if (!contentType)
  {
    v10 = MEMORY[0x277CD97B0];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
    v12 = [v10 creationRequestForAssetFromImageAtFileURL:v11];
LABEL_8:
    v14 = v12;

    goto LABEL_10;
  }

  v16 = self->_contentType;
  _WLLog();
  v14 = 0;
LABEL_10:
  v15 = [v14 placeholderForCreatedAsset];
  [v8 addObject:v15];

  v17 = [v14 placeholderForCreatedAsset];
  _WLLog();

  if (v8)
  {
    [v7 addAssets:{v8, v14, v17, v18}];
    _WLLog();
  }
}

- (BOOL)copy:(id)a3 filename:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v11 = [(NSString *)rootPath stringByAppendingPathComponent:v9];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v12 fileExistsAtPath:v11])
    {
      v25 = a5;
      v26 = v12;
      v28 = v8;
      v13 = [v9 stringByDeletingPathExtension];
      v27 = v9;
      v14 = [v9 pathExtension];
      v15 = 2;
      v16 = 2147483645;
      while (1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %ld", v13, v15];
        if ([v14 length])
        {
          v18 = [v17 stringByAppendingFormat:@".%@", v14];

          v17 = v18;
        }

        v19 = [(NSString *)self->_rootPath stringByAppendingPathComponent:v17];

        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v20 fileExistsAtPath:v19];

        if ((v21 & 1) == 0)
        {
          break;
        }

        ++v15;
        v11 = v19;
        if (!--v16)
        {

          LOBYTE(v22) = 0;
          v9 = v27;
          v8 = v28;
          goto LABEL_15;
        }
      }

      v9 = v27;
      v8 = v28;
      a5 = v25;
      v12 = v26;
    }

    else
    {
      v19 = v11;
    }

    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [v23 moveItemAtPath:v8 toPath:v19 error:a5];

    if (a5 && v22)
    {
      *a5 = 0;
      LOBYTE(v22) = 1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

LABEL_15:

  return v22;
}

- (id)assetCollectionChangeRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localizedTitle = %@", v3];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  v7 = [v6 firstObject];

  if (v7)
  {
    [MEMORY[0x277CD97C0] changeRequestForAssetCollection:v7];
  }

  else
  {
    [MEMORY[0x277CD97C0] creationRequestForAssetCollectionWithTitle:v3];
  }
  v8 = ;

  return v8;
}

@end