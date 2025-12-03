@interface WLPhotoLibrary
- (BOOL)copy:(id)copy filename:(id)filename error:(id *)error;
- (WLPhotoLibrary)init;
- (WLPhotoLibrary)initWithContentType:(unint64_t)type;
- (id)assetCollectionChangeRequest:(id)request;
- (void)addAsset:(id)asset collection:(id)collection;
- (void)addAsset:(id)asset filename:(id)filename size:(unint64_t)size collection:(id)collection completion:(id)completion;
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
    fetchRootPath = [(WLFileProvider *)v4 fetchRootPath];

    if (fetchRootPath)
    {
      v6 = WLLocalizedString();
      v7 = [fetchRootPath stringByAppendingPathComponent:v6];
      [(WLPhotoLibrary *)v3 setRootPath:v7];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      LOBYTE(v7) = [defaultManager fileExistsAtPath:v3->_rootPath];

      if ((v7 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        rootPath = v3->_rootPath;
        v14 = 0;
        [defaultManager2 createDirectoryAtPath:rootPath withIntermediateDirectories:0 attributes:0 error:&v14];
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

- (WLPhotoLibrary)initWithContentType:(unint64_t)type
{
  v4 = [(WLPhotoLibrary *)self init];
  v5 = v4;
  if (v4)
  {
    [(WLPhotoLibrary *)v4 setContentType:type];
  }

  return v5;
}

- (void)addAsset:(id)asset filename:(id)filename size:(unint64_t)size collection:(id)collection completion:(id)completion
{
  v33[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  filenameCopy = filename;
  collectionCopy = collection;
  completionCopy = completion;
  if (assetCopy && filenameCopy)
  {
    if (size)
    {
      _WLLog();
      objc_initWeak(&location, self);
      mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke;
      v27[3] = &unk_279EB56E8;
      objc_copyWeak(&v30, &location);
      v17 = assetCopy;
      v28 = v17;
      v29 = collectionCopy;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63__WLPhotoLibrary_addAsset_filename_size_collection_completion___block_invoke_2;
      v22[3] = &unk_279EB5710;
      objc_copyWeak(&v26, &location);
      v23 = v17;
      v24 = filenameCopy;
      v25 = completionCopy;
      [mEMORY[0x277CD9948] performChanges:v27 completionHandler:v22];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      _WLLog();
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1, 0);
      }
    }
  }

  else
  {
    _WLLog();
    if (completionCopy)
    {
      v18 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"WLPhotoLibrary did receive nil.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v20 = [v18 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v19];

      (*(completionCopy + 2))(completionCopy, 0, v20);
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

- (void)addAsset:(id)asset collection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (collectionCopy)
  {
    v7 = [(WLPhotoLibrary *)self assetCollectionChangeRequest:collectionCopy];
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
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:assetCopy];
    v12 = [v13 creationRequestForAssetFromVideoAtFileURL:v11];
    goto LABEL_8;
  }

  if (!contentType)
  {
    v10 = MEMORY[0x277CD97B0];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:assetCopy];
    v12 = [v10 creationRequestForAssetFromImageAtFileURL:v11];
LABEL_8:
    v14 = v12;

    goto LABEL_10;
  }

  v16 = self->_contentType;
  _WLLog();
  v14 = 0;
LABEL_10:
  placeholderForCreatedAsset = [v14 placeholderForCreatedAsset];
  [v8 addObject:placeholderForCreatedAsset];

  placeholderForCreatedAsset2 = [v14 placeholderForCreatedAsset];
  _WLLog();

  if (v8)
  {
    [v7 addAssets:{v8, v14, placeholderForCreatedAsset2, assetCopy}];
    _WLLog();
  }
}

- (BOOL)copy:(id)copy filename:(id)filename error:(id *)error
{
  copyCopy = copy;
  filenameCopy = filename;
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v11 = [(NSString *)rootPath stringByAppendingPathComponent:filenameCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v11])
    {
      errorCopy = error;
      v26 = defaultManager;
      v28 = copyCopy;
      stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
      v27 = filenameCopy;
      pathExtension = [filenameCopy pathExtension];
      v15 = 2;
      v16 = 2147483645;
      while (1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %ld", stringByDeletingPathExtension, v15];
        if ([pathExtension length])
        {
          v18 = [v17 stringByAppendingFormat:@".%@", pathExtension];

          v17 = v18;
        }

        v19 = [(NSString *)self->_rootPath stringByAppendingPathComponent:v17];

        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [defaultManager2 fileExistsAtPath:v19];

        if ((v21 & 1) == 0)
        {
          break;
        }

        ++v15;
        v11 = v19;
        if (!--v16)
        {

          LOBYTE(v22) = 0;
          filenameCopy = v27;
          copyCopy = v28;
          goto LABEL_15;
        }
      }

      filenameCopy = v27;
      copyCopy = v28;
      error = errorCopy;
      defaultManager = v26;
    }

    else
    {
      v19 = v11;
    }

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [defaultManager3 moveItemAtPath:copyCopy toPath:v19 error:error];

    if (error && v22)
    {
      *error = 0;
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

- (id)assetCollectionChangeRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_new();
  requestCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localizedTitle = %@", requestCopy];
  [v4 setPredicate:requestCopy];

  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    [MEMORY[0x277CD97C0] changeRequestForAssetCollection:firstObject];
  }

  else
  {
    [MEMORY[0x277CD97C0] creationRequestForAssetCollectionWithTitle:requestCopy];
  }
  v8 = ;

  return v8;
}

@end