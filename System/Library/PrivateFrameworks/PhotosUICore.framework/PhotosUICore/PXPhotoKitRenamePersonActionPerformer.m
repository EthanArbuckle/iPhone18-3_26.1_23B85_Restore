@interface PXPhotoKitRenamePersonActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitRenamePersonActionPerformer

- (void)performUserInteractionTask
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [PXPeopleBootstrapContext contextWithPerson:v4 type:1];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 processName];
    v9 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/PXDisplay Adoption/PhotoKit/Actions/Asset Collection Action Performers/People/PXPhotoKitRenamePersonActionPerformer.m" lastPathComponent];
    v10 = [v6 stringWithFormat:@"%@:%@:%s:%d", v8, v9, "-[PXPhotoKitRenamePersonActionPerformer performUserInteractionTask]", 42];
    [(PXPhotoKitRenamePersonActionPerformer *)v5 setCallerInfo:v10];

    [(PXPhotoKitRenamePersonActionPerformer *)v5 setSourcePerson:v4];
    v11 = [PXPeopleUtilities bootstrapViewControllerForContext:v5 delegate:0];
    v12 = v11;
    if (v11)
    {
      [v11 setModalPresentationStyle:2];
      v13 = [(PXActionPerformer *)self presentationEnvironment];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __67__PXPhotoKitRenamePersonActionPerformer_performUserInteractionTask__block_invoke;
      v16[3] = &unk_1E774C648;
      v16[4] = self;
      [v13 presentViewController:v12 animated:1 completionHandler:v16];
    }

    else
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Unable to get a bootstrap view controller for %@", buf, 0xCu);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    }
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = self;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "No person available for %@", buf, 0xCu);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

@end