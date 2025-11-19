@interface PXCMMInvitationsDataSourceManager
+ (NSArray)keyPathsAffectingCurrentDataSourceManager;
+ (id)currentDataSourceManager;
+ (id)currentDataSourceManagerForPhotoLibrary:(id)a3 momentSharePhotoLibrary:(id)a4 fetchLimit:(int64_t)a5;
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

+ (id)currentDataSourceManagerForPhotoLibrary:(id)a3 momentSharePhotoLibrary:(id)a4 fetchLimit:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[PXCompleteMyMomentSettings sharedInstance];
  v11 = [v10 invitationsDataSourceType];

  switch(v11)
  {
    case 2:
      v12 = [a1 emptyDataSourceManager];
      goto LABEL_7;
    case 1:
      v12 = [[PXCMMMomentsInvitationsDataSourceManager alloc] initWithPhotoLibrary:v8];
      goto LABEL_7;
    case 0:
      v12 = [[PXCMMMomentShareInvitationsDataSourceManager alloc] initWithPhotoLibrary:v9 fetchLimit:a5];
LABEL_7:
      v13 = v12;
      goto LABEL_9;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)currentDataSourceManager
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v5 = [a1 currentDataSourceManagerForPhotoLibrary:v3 momentSharePhotoLibrary:v4];

  return v5;
}

+ (id)emptyDataSourceManager
{
  v2 = objc_alloc_init(PXCMMInvitationsEmptyDataSourceManager);

  return v2;
}

- (PXMediaProvider)mediaProvider
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationsDataSourceManager.m" lineNumber:91 description:{@"Method %s is a responsibility of subclass %@", "-[PXCMMInvitationsDataSourceManager mediaProvider]", v6}];

  abort();
}

@end