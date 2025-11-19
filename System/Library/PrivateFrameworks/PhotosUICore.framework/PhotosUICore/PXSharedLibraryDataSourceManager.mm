@interface PXSharedLibraryDataSourceManager
+ (id)currentExitingDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)currentInvitationsDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)currentPreviewDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)currentSharedLibraryDataSourceManagerForPhotoLibrary:(id)a3;
+ (id)exitingDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4;
+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4;
+ (id)keyPathsAffectingCurrentExitingDataSourceManager;
+ (id)keyPathsAffectingCurrentInvitationsDataSourceManager;
+ (id)keyPathsAffectingCurrentPreviewDataSourceManager;
+ (id)keyPathsAffectingCurrentSharedLibraryDataSourceManager;
+ (id)previewDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4;
+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation PXSharedLibraryDataSourceManager

- (id)fetchExiting
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:206 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchExiting]", v6}];

  abort();
}

- (id)fetchSharedLibrary
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:202 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchSharedLibrary]", v6}];

  abort();
}

- (id)fetchPreview
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:198 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchPreview]", v6}];

  abort();
}

- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:194 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchSharedLibraryForURL:completionHandler:]", v11}];

  abort();
}

+ (id)keyPathsAffectingCurrentExitingDataSourceManager
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_exitingDataSourceType);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)currentExitingDataSourceManagerForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    v7 = [v6 exitingDataSourceType];

    v5 = [a1 exitingDataSourceManagerForPhotoLibrary:v4 type:v7];
  }

  v8 = v5;

  return v8;
}

+ (id)exitingDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantExitingDataSourceManager];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerExitingDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager exitingDataSourceManagerForPhotoLibrary:v5];
  }

  v6 = v7;
LABEL_11:

  return v6;
}

+ (id)keyPathsAffectingCurrentSharedLibraryDataSourceManager
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_sharedLibraryDataSourceType);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)currentSharedLibraryDataSourceManagerForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    v7 = [v6 sharedLibraryDataSourceType];

    v5 = [a1 sharedLibraryDataSourceManagerForPhotoLibrary:v4 type:v7];
  }

  v8 = v5;

  return v8;
}

+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantSharedLibraryDataSourceManager];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerSharedLibraryDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager sharedLibraryDataSourceManagerForPhotoLibrary:v5];
  }

  v6 = v7;
LABEL_11:

  return v6;
}

+ (id)keyPathsAffectingCurrentPreviewDataSourceManager
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_previewDataSourceType);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)currentPreviewDataSourceManagerForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    v7 = [v6 previewDataSourceType];

    v5 = [a1 previewDataSourceManagerForPhotoLibrary:v4 type:v7];
  }

  v8 = v5;

  return v8;
}

+ (id)previewDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = 0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantPreviewDataSourceManager];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerPreviewDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager previewDataSourceManagerForPhotoLibrary:v5];
  }

  v6 = v7;
LABEL_11:

  return v6;
}

+ (id)keyPathsAffectingCurrentInvitationsDataSourceManager
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_invitationsDataSourceType);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)currentInvitationsDataSourceManagerForPhotoLibrary:(id)a3
{
  v4 = a3;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    v7 = [v6 invitationsDataSourceType];

    v5 = [a1 invitationsDataSourceManagerForPhotoLibrary:v4 type:v7];
  }

  v8 = v5;

  return v8;
}

+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  switch(a4)
  {
    case 2:
      v6 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
      goto LABEL_7;
    case 1:
      v6 = +[PXSharedLibraryMockDataSourceManager invitationsDataSourceManager];
      goto LABEL_7;
    case 0:
      v6 = [PXSharedLibraryPhotoKitDataSourceManager invitationsDataSourceManagerForPhotoLibrary:v5];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end