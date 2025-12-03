@interface PUPXPhotoKitSaveVideoFrameActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitSaveVideoFrameActionPerformer

- (void)performUserInteractionTask
{
  v25 = *MEMORY[0x1E69E9840];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = [assets count];

  if (v4 != 1)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_FAULT, "Can only save video frame from one unique asset", buf, 2u);
    }
  }

  delegate = [(PXActionPerformer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    memset(buf, 0, sizeof(buf));
    v24 = 0;
    delegate2 = [(PXActionPerformer *)self delegate];
    v9 = delegate2;
    if (delegate2)
    {
      [delegate2 playerCurrentTimeForActionPerformer:self];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v24 = 0;
    }

    v11 = objc_alloc(MEMORY[0x1E69C39A0]);
    assets2 = [(PXPhotoKitAssetActionPerformer *)self assets];
    firstObject = [assets2 firstObject];
    v21 = *buf;
    v22 = v24;
    v14 = [v11 initWithAsset:firstObject time:&v21];

    undoManager = [(PXActionPerformer *)self undoManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__PUPXPhotoKitSaveVideoFrameActionPerformer_performUserInteractionTask__block_invoke;
    v18[3] = &unk_1E7B7FB70;
    v19 = v14;
    selfCopy = self;
    v16 = v14;
    [v16 executeWithUndoManager:undoManager completionHandler:v18];
  }

  else
  {
    v10 = PXAssertGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      delegate3 = [(PXActionPerformer *)self delegate];
      *buf = 138412290;
      *&buf[4] = delegate3;
      _os_log_fault_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_FAULT, "action performer delegate %@ doesn't implement playerCurrentTimeForActionPerformer:", buf, 0xCu);
    }
  }
}

void __71__PUPXPhotoKitSaveVideoFrameActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) createdAsset];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C3930]) initWithType:7 revealMode:1 asset:v5 assetCollection:0];
    v7 = objc_alloc(MEMORY[0x1E69C3938]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__PUPXPhotoKitSaveVideoFrameActionPerformer_performUserInteractionTask__block_invoke_2;
    v13[3] = &unk_1E7B7A7D8;
    v13[4] = *(a1 + 40);
    v8 = [v7 initWithDestination:v6 options:0 completionHandler:v13];
    v9 = [*(a1 + 40) hostViewController];
    v10 = [v9 conformsToProtocol:&unk_1F2CFE780];

    v11 = *(a1 + 40);
    if (v10)
    {
      v12 = [v11 hostViewController];
      PXProgrammaticNavigationRequestExecute();
    }

    else
    {
      [v11 completeUserInteractionTaskWithSuccess:1 error:0];
    }
  }

  else
  {
    [*(a1 + 40) completeUserInteractionTaskWithSuccess:0 error:v4];
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
  showSaveVideoFrameAction = [mEMORY[0x1E69C3640] showSaveVideoFrameAction];

  if (showSaveVideoFrameAction)
  {
    selectedIndexPaths = [snapshotCopy selectedIndexPaths];
    v10 = [selectedIndexPaths count];

    if (v10 == 1)
    {
      firstObject = [snapshotCopy firstObject];
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v12 = firstObject;

        if (v12)
        {
          v13 = [self _canPerformOnAsset:v12];
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {

        v12 = 0;
      }

      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end