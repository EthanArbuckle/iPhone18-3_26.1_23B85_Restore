@interface PXSharedLibraryDataSourceManager
+ (id)currentExitingDataSourceManagerForPhotoLibrary:(id)library;
+ (id)currentInvitationsDataSourceManagerForPhotoLibrary:(id)library;
+ (id)currentPreviewDataSourceManagerForPhotoLibrary:(id)library;
+ (id)currentSharedLibraryDataSourceManagerForPhotoLibrary:(id)library;
+ (id)exitingDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type;
+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type;
+ (id)keyPathsAffectingCurrentExitingDataSourceManager;
+ (id)keyPathsAffectingCurrentInvitationsDataSourceManager;
+ (id)keyPathsAffectingCurrentPreviewDataSourceManager;
+ (id)keyPathsAffectingCurrentSharedLibraryDataSourceManager;
+ (id)previewDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type;
+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler;
@end

@implementation PXSharedLibraryDataSourceManager

- (id)fetchExiting
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:206 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchExiting]", v6}];

  abort();
}

- (id)fetchSharedLibrary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:202 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchSharedLibrary]", v6}];

  abort();
}

- (id)fetchPreview
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:198 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchPreview]", v6}];

  abort();
}

- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDataSource.m" lineNumber:194 description:{@"Method %s is a responsibility of subclass %@", "-[PXSharedLibraryDataSourceManager fetchSharedLibraryForURL:completionHandler:]", v11}];

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

+ (id)currentExitingDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    exitingDataSourceType = [v6 exitingDataSourceType];

    v5 = [self exitingDataSourceManagerForPhotoLibrary:libraryCopy type:exitingDataSourceType];
  }

  v8 = v5;

  return v8;
}

+ (id)exitingDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type
{
  libraryCopy = library;
  v6 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantExitingDataSourceManager];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerExitingDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager exitingDataSourceManagerForPhotoLibrary:libraryCopy];
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

+ (id)currentSharedLibraryDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    sharedLibraryDataSourceType = [v6 sharedLibraryDataSourceType];

    v5 = [self sharedLibraryDataSourceManagerForPhotoLibrary:libraryCopy type:sharedLibraryDataSourceType];
  }

  v8 = v5;

  return v8;
}

+ (id)sharedLibraryDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type
{
  libraryCopy = library;
  v6 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantSharedLibraryDataSourceManager];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerSharedLibraryDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager sharedLibraryDataSourceManagerForPhotoLibrary:libraryCopy];
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

+ (id)currentPreviewDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    previewDataSourceType = [v6 previewDataSourceType];

    v5 = [self previewDataSourceManagerForPhotoLibrary:libraryCopy type:previewDataSourceType];
  }

  v8 = v5;

  return v8;
}

+ (id)previewDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type
{
  libraryCopy = library;
  v6 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = +[PXSharedLibraryMockDataSourceManager participantPreviewDataSourceManager];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v7 = +[PXSharedLibraryMockDataSourceManager ownerPreviewDataSourceManager];
  }

  else
  {
    v7 = [PXSharedLibraryPhotoKitDataSourceManager previewDataSourceManagerForPhotoLibrary:libraryCopy];
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

+ (id)currentInvitationsDataSourceManagerForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (PLIsPhotosReliveWidget())
  {
    v5 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
  }

  else
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    invitationsDataSourceType = [v6 invitationsDataSourceType];

    v5 = [self invitationsDataSourceManagerForPhotoLibrary:libraryCopy type:invitationsDataSourceType];
  }

  v8 = v5;

  return v8;
}

+ (id)invitationsDataSourceManagerForPhotoLibrary:(id)library type:(int64_t)type
{
  libraryCopy = library;
  switch(type)
  {
    case 2:
      v6 = objc_alloc_init(PXSharedLibraryEmptyDataSourceManager);
      goto LABEL_7;
    case 1:
      v6 = +[PXSharedLibraryMockDataSourceManager invitationsDataSourceManager];
      goto LABEL_7;
    case 0:
      v6 = [PXSharedLibraryPhotoKitDataSourceManager invitationsDataSourceManagerForPhotoLibrary:libraryCopy];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end