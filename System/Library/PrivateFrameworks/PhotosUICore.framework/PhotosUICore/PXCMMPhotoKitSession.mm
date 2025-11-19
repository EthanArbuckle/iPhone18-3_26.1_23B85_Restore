@interface PXCMMPhotoKitSession
- (PXCMMPhotoKitSession)initWithContext:(id)a3;
- (PXCMMPhotoKitSession)initWithPhotoKitContext:(id)a3;
- (id)description;
- (id)diagnosticDictionary;
- (id)notificationSuppressionContexts;
@end

@implementation PXCMMPhotoKitSession

- (id)diagnosticDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PXCMMPhotoKitSession;
  v3 = [(PXCMMSession *)&v15 diagnosticDictionary];
  v4 = [(PXCMMPhotoKitSession *)self suggestion];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 photoLibrary];
    v7 = [v5 localIdentifier];
    v14 = 0;
    v8 = [v6 sharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:v7 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = v10;
      if (v3)
      {
        [v10 addEntriesFromDictionary:v3];
      }

      [v11 addEntriesFromDictionary:v8];
      v12 = [v11 copy];

      v3 = v12;
    }

    else
    {
      v11 = PLSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v5;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve debug information for suggestion %@", buf, 0xCu);
      }
    }
  }

  return v3;
}

- (id)description
{
  momentShare = self->_momentShare;
  if (momentShare)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", momentShare];
  }

  else
  {
    v4 = &stru_1F1741150;
  }

  if (self->_suggestion)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", self->_suggestion];
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p%@%@>", objc_opt_class(), self, v4, v5];

  return v6;
}

- (id)notificationSuppressionContexts
{
  v3 = [(PXCMMPhotoKitSession *)self momentShare];
  v4 = [v3 uuid];

  v5 = [(PXCMMSession *)self activityType];
  v6 = 0;
  if (v5 == 2 && v4)
  {
    v7 = PLSuppressionContextForMomentShareUUID();
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  }

  return v6;
}

- (PXCMMPhotoKitSession)initWithPhotoKitContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitSession.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v27.receiver = self;
  v27.super_class = PXCMMPhotoKitSession;
  v6 = [(PXCMMSession *)&v27 initWithContext:v5];
  if (v6)
  {
    v7 = [v5 momentShare];
    momentShare = v6->_momentShare;
    v6->_momentShare = v7;

    v9 = [v5 suggestion];
    suggestion = v6->_suggestion;
    v6->_suggestion = v9;

    v11 = [v5 originatingMomentShare];
    originatingMomentShare = v6->_originatingMomentShare;
    v6->_originatingMomentShare = v11;

    if ([(PXCMMSession *)v6 activityType]== 2)
    {
      v13 = +[PXCompleteMyMomentSettings sharedInstance];
      v14 = [v13 simulateImport];

      v15 = [[PXPhotoKitImportStatusManager alloc] initAllowingSimulation:v14];
      importStatusManager = v6->_importStatusManager;
      v6->_importStatusManager = v15;
    }

    v17 = [(PXCMMSession *)v6 viewModel];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __48__PXCMMPhotoKitSession_initWithPhotoKitContext___block_invoke;
    v25[3] = &unk_1E7746A48;
    v18 = v6;
    v26 = v18;
    [v17 performChanges:v25];

    if (v6->_momentShare)
    {
      v19 = [[PXPhotoKitMomentShareStatus alloc] initWithPhotoKitMomentShare:v6->_momentShare];
      photoKitMomentShareStatus = v18->_photoKitMomentShareStatus;
      v18->_photoKitMomentShareStatus = v19;

      v21 = [MEMORY[0x1E69BF320] UUIDString];
      photoKitImportSessionID = v18->_photoKitImportSessionID;
      v18->_photoKitImportSessionID = v21;
    }
  }

  return v6;
}

void __48__PXCMMPhotoKitSession_initWithPhotoKitContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 152);
  v3 = a2;
  [v3 setContainsUnverifiedPersons:{objc_msgSend(v2, "containsUnverifiedPersons")}];
}

- (PXCMMPhotoKitSession)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitSession.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXCMMPhotoKitSession initWithContext:]"}];

  abort();
}

@end