@interface PXMomentShareStatusMock
+ (BOOL)shouldUseMockStatus;
- (PXMomentShareStatusMock)initWithMomentShare:(id)share;
- (id)_actionManager;
- (id)_createStatusProvider;
- (id)owner;
- (void)_updateStatus;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PXMomentShareStatusMock

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &_MockMomentShareStatusUserDefaultsContext)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXMomentShareStatusMock_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXMomentShareStatusMock;
    [(PXMomentShareStatusMock *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)_actionManager
{
  v4 = self->_originalMomentShare;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [(PXDisplayMomentShare *)v4 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_originalMomentShare", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:246 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_originalMomentShare", v10}];
  }

LABEL_3:
  photoLibrary = [(PXDisplayMomentShare *)v4 photoLibrary];
  v6 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:photoLibrary];

  return v6;
}

- (id)owner
{
  v2 = objc_alloc_init(_PXMomentShareMockParticipant);
  [(_PXMomentShareMockParticipant *)v2 setLocalizedName:@"Jane"];
  [(_PXMomentShareMockParticipant *)v2 setFirstName:@"Jane"];
  [(_PXMomentShareMockParticipant *)v2 setLastName:@"Doe"];

  return v2;
}

- (void)_updateStatus
{
  v4 = PXSharedUserDefaults();
  v5 = [v4 objectForKey:@"MomentShareStatusMock"];

  if (v5)
  {
    v6 = [v5 componentsSeparatedByString:@"/"];
    if ([v6 count] < 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = currentHandler;
      v27 = a2;
      selfCopy3 = self;
      v29 = 216;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v6 objectAtIndexedSubscript:1];
      selfCopy2 = self;
      if ([v7 isEqualToString:@"sender"])
      {
        v32 = 0u;
        if ([v8 isEqualToString:@"uploading"])
        {
          v30 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 1;
          v13 = 49;
          v14 = 26;
LABEL_46:

          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __40__PXMomentShareStatusMock__updateStatus__block_invoke_2;
          v33[3] = &__block_descriptor_114_e38_v16__0___PXMutableMomentShareStatus__8l;
          v42 = v12;
          v34 = xmmword_1A5381070;
          v35 = v13;
          v36 = v14;
          v37 = v11;
          v38 = v30;
          v39 = v9;
          v40 = v10;
          v41 = v32;
          [(PXMomentShareStatus *)selfCopy2 performChanges:v33];

          goto LABEL_47;
        }

        if ([v8 isEqualToString:@"downloading"])
        {
          v30 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v17 = xmmword_1A5381080;
        }

        else
        {
          if (([v8 isEqualToString:@"idle"] & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:161 description:@"MockMomentShareStatus only supports uploading/downloading/idle for sender"];

            v30 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 0;
            v14 = 0;
            v13 = 0;
            v12 = 1;
            goto LABEL_46;
          }

          v30 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v17 = xmmword_1A5381070;
        }

        v32 = v17;
        v12 = 1;
LABEL_30:
        v13 = 60;
        v14 = 40;
        goto LABEL_46;
      }

      if ([v7 isEqualToString:@"receiver"])
      {
        if ([v8 isEqualToString:@"downloading"])
        {
          v32 = xmmword_1A5381080;
          if ([v6 count] >= 3)
          {
            v15 = [v6 objectAtIndexedSubscript:2];
            v16 = [v15 isEqualToString:@"waitingforupload"];

            v30 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 0;
            if (v16)
            {
              v14 = 26;
            }

            else
            {
              v14 = 40;
            }

            if (v16)
            {
              v13 = 49;
            }

            else
            {
              v13 = 60;
            }

            goto LABEL_45;
          }

          v30 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
LABEL_29:
          v12 = 3;
          goto LABEL_30;
        }

        if ([v8 isEqualToString:@"saving"])
        {
          v32 = xmmword_1A5381070;
          if ([v6 count] < 3)
          {
            v9 = 0;
            v10 = 0;
            v12 = 3;
            v13 = 60;
            v14 = 40;
            v11 = 49;
            v30 = 26;
            goto LABEL_46;
          }

          v18 = [v6 objectAtIndexedSubscript:2];
          v19 = [v18 isEqualToString:@"savingall"];

          v9 = 0;
          v10 = 0;
          v20 = 26;
          v14 = 40;
          if (v19)
          {
            v20 = 40;
          }

          v30 = v20;
          v13 = 60;
          if (v19)
          {
            v11 = 60;
          }

          else
          {
            v11 = 49;
          }
        }

        else if ([v8 isEqualToString:@"saved"])
        {
          v32 = xmmword_1A5381070;
          if ([v6 count] < 3)
          {
            v30 = 0;
            v11 = 0;
            v12 = 3;
            v13 = 60;
            v14 = 40;
            v10 = 26;
            v9 = 49;
            goto LABEL_46;
          }

          v21 = [v6 objectAtIndexedSubscript:2];
          v22 = [v21 isEqualToString:@"savedall"];

          v30 = 0;
          v11 = 0;
          v13 = 60;
          if (v22)
          {
            v9 = 60;
          }

          else
          {
            v9 = 49;
          }

          v14 = 40;
          if (v22)
          {
            v10 = 40;
          }

          else
          {
            v10 = 26;
          }
        }

        else
        {
          if ([v8 isEqualToString:@"idle"])
          {
            v30 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 0;
            v32 = xmmword_1A5381070;
            goto LABEL_29;
          }

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:209 description:@"MockMomentShareStatus only supports downloading/saving/saved/idle for receiver"];

          v30 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v14 = 0;
          v13 = 0;
          v32 = 0u;
        }

LABEL_45:
        v12 = 3;
        goto LABEL_46;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = currentHandler;
      v27 = a2;
      selfCopy3 = self;
      v29 = 213;
    }

    [currentHandler handleFailureInMethod:v27 object:selfCopy3 file:@"PXMomentShareStatusMock.m" lineNumber:v29 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __40__PXMomentShareStatusMock__updateStatus__block_invoke;
  v43[3] = &unk_1E773D9C8;
  v43[4] = self;
  [(PXMomentShareStatus *)self performChanges:v43];
LABEL_47:
}

void __40__PXMomentShareStatusMock__updateStatus__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 144);
  v3 = a2;
  [v3 setMomentShare:v2];
  v4 = objc_alloc_init(_PXMomentShareMockFetchResult);
  [v3 setCopyingAssetsFetchResult:v4];

  v5 = objc_alloc_init(_PXMomentShareMockFetchResult);
  [v3 setCopiedAssetsFetchResult:v5];

  v6 = objc_alloc_init(_PXMomentShareMockFetchResult);
  [v3 setAllAssetsFetchResult:v6];
}

void __40__PXMomentShareStatusMock__updateStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = a2;
  v9 = [_PXMomentShareMockMomentShare momentShareWithStatus:v3 photosCount:v4 videosCount:v5 uploadedPhotosCount:v6 uploadedVideosCount:v7];
  [v8 setMomentShare:v9];

  v10 = [_PXMomentShareMockFetchResult momentShareMockFetchResultWithPhotosCount:*(a1 + 64) videosCount:*(a1 + 72)];
  [v8 setCopyingAssetsFetchResult:v10];

  v11 = [_PXMomentShareMockFetchResult momentShareMockFetchResultWithPhotosCount:*(a1 + 80) videosCount:*(a1 + 88)];
  [v8 setCopiedAssetsFetchResult:v11];

  v12 = [_PXMomentShareMockFetchResult momentShareMockFetchResultWithPhotosCount:*(a1 + 96) videosCount:*(a1 + 104)];
  [v8 setAllAssetsFetchResult:v12];
}

- (id)_createStatusProvider
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [[PXPhotoKitCPLActionManager alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary];
  v4 = [[PXCPLUIStatusProvider alloc] initWithPhotoLibrary:px_deprecated_appPhotoLibrary actionManager:v3];

  return v4;
}

- (void)dealloc
{
  v3 = PXSharedUserDefaults();
  [v3 removeObserver:self forKeyPath:@"MomentShareStatusMock" context:&_MockMomentShareStatusUserDefaultsContext];

  v4.receiver = self;
  v4.super_class = PXMomentShareStatusMock;
  [(PXMomentShareStatusMock *)&v4 dealloc];
}

- (PXMomentShareStatusMock)initWithMomentShare:(id)share
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = PXMomentShareStatusMock;
  v6 = [(PXMomentShareStatus *)&v10 initWithMomentShare:shareCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalMomentShare, share);
    [(PXMomentShareStatusMock *)v7 _updateStatus];
    v8 = PXSharedUserDefaults();
    [v8 addObserver:v7 forKeyPath:@"MomentShareStatusMock" options:0 context:&_MockMomentShareStatusUserDefaultsContext];
  }

  return v7;
}

+ (BOOL)shouldUseMockStatus
{
  v2 = PXSharedUserDefaults();
  v3 = [v2 objectForKey:@"MomentShareStatusMock"];
  v4 = v3 != 0;

  return v4;
}

@end