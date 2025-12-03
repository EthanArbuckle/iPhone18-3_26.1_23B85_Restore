@interface PXSharedLibraryPhotoKitDataSourceManager
+ (id)exitingDataSourceManagerForPhotoLibrary:(id)library;
+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)library;
+ (id)previewDataSourceManagerForPhotoLibrary:(id)library;
+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)library;
- (PXSharedLibraryPhotoKitDataSourceManager)init;
- (PXSharedLibraryPhotoKitDataSourceManager)initWithType:(int64_t)type fetchResult:(id)result;
- (id)createInitialDataSource;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
@end

@implementation PXSharedLibraryPhotoKitDataSourceManager

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  v46 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_19;
  }

  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:272 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.dataSource", v33}];
LABEL_22:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:272 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.dataSource", v33, px_descriptionForAssertionMessage}];

    goto LABEL_22;
  }

LABEL_4:
  v10 = [infoCopy objectForKeyedSubscript:@"currentDataSource"];

  if (v10 == dataSource)
  {
    v11 = [infoCopy objectForKeyedSubscript:@"preparedDataSource"];
    v12 = [infoCopy objectForKeyedSubscript:@"preparedChangeDetails"];
  }

  else
  {
    v38 = 0;
    v11 = [dataSource dataSourceUpdatedWithChange:queueCopy changeDetails:&v38];
    v12 = v38;
  }

  v13 = v12;
  v14 = [v11 numberOfItemsInSection:0];
  v37 = queueCopy;
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
    libraryScope = [v16 libraryScope];
    v18 = MEMORY[0x1E696AEC0];
    uuid = [libraryScope uuid];
    v15 = [v18 stringWithFormat:@", first: <%p:%@>", libraryScope, uuid];
  }

  else
  {
    v15 = &stru_1F1741150;
  }

  v36 = infoCopy;
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
  identifier = [dataSource identifier];
  identifier2 = [v11 identifier];
  changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
  v39 = &unk_1F190DC00;
  v40 = v13;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v29 = v28 = v13;
  v30 = [v24 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v29 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v11 changeDetails:v30];
  infoCopy = v36;
  queueCopy = v37;
LABEL_19:
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v22[3] = *MEMORY[0x1E69E9840];
  changeCopy = change;
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
  v7 = [v6 dataSourceUpdatedWithChange:changeCopy changeDetails:&v13];
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
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"exitState", 0];
  [librarySpecificFetchOptions setPredicate:v3];

  [librarySpecificFetchOptions setIncludeExitingShares:1];
  v4 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  firstObject = [v4 firstObject];
  if (firstObject)
  {
    v6 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchSharedLibrary
{
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  firstObject = [v3 firstObject];
  if (firstObject)
  {
    v5 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchPreview
{
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x1E69788A0] fetchPreviewLibraryScopeWithOptions:librarySpecificFetchOptions];
  firstObject = [v3 firstObject];
  if (firstObject)
  {
    v5 = [[PXSharedLibraryPhotoKit alloc] initWithLibraryScope:firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
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
  PXSharedLibraryFetchLibraryScopeForURL(photoLibrary, lCopy, v14);
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

- (PXSharedLibraryPhotoKitDataSourceManager)initWithType:(int64_t)type fetchResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  v15.receiver = self;
  v15.super_class = PXSharedLibraryPhotoKitDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    objc_storeStrong(&v9->_fetchResult, result);
    photoLibrary = [(PHFetchResult *)v10->_fetchResult photoLibrary];
    photoLibrary = v10->_photoLibrary;
    v10->_photoLibrary = photoLibrary;
  }

  return v10;
}

- (PXSharedLibraryPhotoKitDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:172 description:{@"%s is not available as initializer", "-[PXSharedLibraryPhotoKitDataSourceManager init]"}];

  abort();
}

+ (id)exitingDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"exitState", 0];
  [librarySpecificFetchOptions setPredicate:v7];

  [librarySpecificFetchOptions setIncludeExitingShares:1];
  v8 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  v9 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:3 fetchResult:v8];

  return v9;
}

+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = MEMORY[0x1E69788A0];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v8 = [v6 fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];

  v9 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:2 fetchResult:v8];

  return v9;
}

+ (id)previewDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E69788A0] fetchPreviewLibraryScopeWithOptions:librarySpecificFetchOptions];
  v8 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:1 fetchResult:v7];

  return v8;
}

+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitDataSource.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v7 = [MEMORY[0x1E69788A0] fetchPendingLibraryScopeInvitationWithOptions:librarySpecificFetchOptions];
  v8 = [[PXSharedLibraryPhotoKitDataSourceManager alloc] initWithType:0 fetchResult:v7];

  return v8;
}

@end