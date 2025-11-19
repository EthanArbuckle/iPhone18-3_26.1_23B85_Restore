@interface PXSharedLibraryPhotoKitDataSourceManager
+ (id)exitingDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)previewDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)a3;
- (PXSharedLibraryPhotoKitDataSourceManager)init;
- (PXSharedLibraryPhotoKitDataSourceManager)initWithType:(int64_t)a3 fetchResult:(id)a4;
- (id)createInitialDataSource;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
@end

@implementation PXSharedLibraryPhotoKitDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [(PXSectionedDataSourceManager *)self dataSource];
  if (!v9)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [v31 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:272 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v33}];
LABEL_22:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    v35 = [v9 px_descriptionForAssertionMessage];
    [v31 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:272 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v33, v35}];

    goto LABEL_22;
  }

LABEL_4:
  v10 = [v8 objectForKeyedSubscript:@"currentDataSource"];

  if (v10 == v9)
  {
    v11 = [v8 objectForKeyedSubscript:@"preparedDataSource"];
    v12 = [v8 objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v38 = 0;
    v11 = [v9 dataSourceUpdatedWithChange:v7 changeDetails:&v38];
    v12 = v38;
  }

  v13 = v12;
  v14 = [v11 numberOfItemsInSection:0];
  v37 = v7;
  if (v14)
  {
    if (v11)
    {
      [v11 firstItemIndexPath];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v16 = [v11 sharedLibraryAtItemIndexPath:buf];
    v17 = [v16 libraryScope];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v17 uuid];
    v15 = [v18 stringWithFormat:@", first: <%p:%@>", v17, v19];
  }

  else
  {
    v15 = &stru_1F1741150;
  }

  v36 = v8;
  v20 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    type = self->_type;
    if (type > 3)
    {
      v23 = @"Unknown";
    }

    else
    {
      v23 = off_1E77477D8[type];
    }

    *buf = 138544386;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2114;
    *&buf[24] = v23;
    v42 = 2048;
    v43 = v14;
    v44 = 2114;
    v45 = v15;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Changed: %{public}@, count: %lu%{public}@", buf, 0x34u);
  }

  v24 = [off_1E77218B0 alloc];
  v25 = [v9 identifier];
  v26 = [v11 identifier];
  v27 = [off_1E7721450 changeDetailsWithNoChanges];
  v39 = &unk_1F190DC00;
  v40 = v13;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v29 = v28 = v13;
  v30 = [v24 initWithFromDataSourceIdentifier:v25 toDataSourceIdentifier:v26 sectionChanges:v27 itemChangeDetailsBySection:v29 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v11 changeDetails:v30];
  v8 = v36;
  v7 = v37;
LABEL_19:
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__224075;
  v19 = __Block_byref_object_dispose__224076;
  v20 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXSharedLibraryPhotoKitDataSourceManager_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E77477B8;
  block[4] = self;
  block[5] = &v15;
  block[6] = a2;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6 = v16[5];
  v13 = 0;
  v7 = [v6 dataSourceUpdatedWithChange:v5 changeDetails:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = v16[5];
    v21[0] = @"currentDataSource";
    v21[1] = @"preparedDataSource";
    v22[0] = v10;
    v22[1] = v7;
    v21[2] = @"preparedChangeDetails";
    v22[2] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v11;
}

void __73__PXSharedLibraryPhotoKitDataSourceManager_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    v13 = [v2 px_descriptionForAssertionMessage];
    [v5 handleFailureInMethod:v10 object:v11 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:251 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v9, v13}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 handleFailureInMethod:v6 object:v7 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:251 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v9}];
  }

LABEL_3:
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)createInitialDataSource
{
  [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
  v3 = [[PXSharedLibraryPhotoKitDataSource alloc] initWithFetchResult:self->_fetchResult];

  return v3;
}

- (id)fetchExiting
{
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"exitState", 0];
  [v2 setPredicate:v3];

  [v2 setIncludeExitingShares:1];
  v4 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:v2];
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchSharedLibrary
{
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:v2];
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchPreview
{
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E69788A0] fetchPreviewLibraryScopeWithOptions:v2];
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  photoLibrary = self->_photoLibrary;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PXSharedLibraryPhotoKitDataSourceManager_fetchSharedLibraryForURL_completionHandler___block_invoke;
  v14[3] = &unk_1E7747790;
  v15 = v9;
  v11 = v9;
  PXSharedLibraryFetchLibraryScopeForURL(photoLibrary, v7, v14);
}

void __87__PXSharedLibraryPhotoKitDataSourceManager_fetchSharedLibraryForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (PXSharedLibraryPhotoKitDataSourceManager)initWithType:(int64_t)a3 fetchResult:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v15.receiver = self;
  v15.super_class = PXSharedLibraryPhotoKitDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    objc_storeStrong(&v9->_fetchResult, a4);
    v11 = [(PHFetchResult *)v10->_fetchResult photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = v11;
  }

  return v10;
}

- (PXSharedLibraryPhotoKitDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:172 description:{@"%s is not available as initializer", "-[PXSharedLibraryPhotoKitDataSourceManager init]"}];

  abort();
}

+ (id)exitingDataSourceManagerForPhotoLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"exitState", 0];
  [v6 setPredicate:v7];

  [v6 setIncludeExitingShares:1];
  v8 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:v6];
  v9 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:3 fetchResult:v8];

  return v9;
}

+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = MEMORY[0x1E69788A0];
  v7 = [v5 librarySpecificFetchOptions];
  v8 = [v6 fetchActiveLibraryScopeWithOptions:v7];

  v9 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:2 fetchResult:v8];

  return v9;
}

+ (id)previewDataSourceManagerForPhotoLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E69788A0] fetchPreviewLibraryScopeWithOptions:v6];
  v8 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:1 fetchResult:v7];

  return v8;
}

+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E69788A0] fetchPendingLibraryScopeInvitationWithOptions:v6];
  v8 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:0 fetchResult:v7];

  return v8;
}

@end