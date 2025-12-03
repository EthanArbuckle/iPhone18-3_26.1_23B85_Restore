@interface PXCMMInvitationsDataSourceManager
+ (NSArray)keyPathsAffectingCurrentDataSourceManager;
+ (id)currentDataSourceManager;
+ (id)currentDataSourceManagerForPhotoLibrary:(id)library momentSharePhotoLibrary:(id)photoLibrary fetchLimit:(int64_t)limit;
+ (id)emptyDataSourceManager;
- (PXMediaProvider)mediaProvider;
@end

@implementation PXCMMInvitationsDataSourceManager

+ (NSArray)keyPathsAffectingCurrentDataSourceManager
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_invitationsDataSourceType);
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)currentDataSourceManagerForPhotoLibrary:(id)library momentSharePhotoLibrary:(id)photoLibrary fetchLimit:(int64_t)limit
{
  libraryCopy = library;
  photoLibraryCopy = photoLibrary;
  v10 = +[PXCompleteMyMomentSettings sharedInstance];
  invitationsDataSourceType = [v10 invitationsDataSourceType];

  switch(invitationsDataSourceType)
  {
    case 2:
      emptyDataSourceManager = [self emptyDataSourceManager];
      goto LABEL_7;
    case 1:
      emptyDataSourceManager = [[PXCMMMomentsInvitationsDataSourceManager alloc] initWithPhotoLibrary:libraryCopy];
      goto LABEL_7;
    case 0:
      emptyDataSourceManager = [[PXCMMMomentShareInvitationsDataSourceManager alloc] initWithPhotoLibrary:photoLibraryCopy fetchLimit:limit];
LABEL_7:
      v13 = emptyDataSourceManager;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)currentDataSourceManager
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v5 = [self currentDataSourceManagerForPhotoLibrary:px_deprecated_appPhotoLibrary momentSharePhotoLibrary:mEMORY[0x1E69789A8]];

  return v5;
}

+ (id)emptyDataSourceManager
{
  v2 = objc_alloc_init(PXCMMInvitationsEmptyDataSourceManager);

  return v2;
}

- (PXMediaProvider)mediaProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:91 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSourceManager mediaProvider]", v6}];

  abort();
}

@end