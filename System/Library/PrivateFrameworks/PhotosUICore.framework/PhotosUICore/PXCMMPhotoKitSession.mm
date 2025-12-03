@interface PXCMMPhotoKitSession
- (PXCMMPhotoKitSession)initWithContext:(id)context;
- (PXCMMPhotoKitSession)initWithPhotoKitContext:(id)context;
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
  diagnosticDictionary = [(PXCMMSession *)&v15 diagnosticDictionary];
  suggestion = [(PXCMMPhotoKitSession *)self suggestion];
  v5 = suggestion;
  if (suggestion)
  {
    photoLibrary = [suggestion photoLibrary];
    localIdentifier = [v5 localIdentifier];
    v14 = 0;
    v8 = [photoLibrary sharingSuggestionDebugInformationForAssetCollectionLocalIdentifier:localIdentifier error:&v14];
    v9 = v14;

    if (v8)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v11 = dictionary;
      if (diagnosticDictionary)
      {
        [dictionary addEntriesFromDictionary:diagnosticDictionary];
      }

      [v11 addEntriesFromDictionary:v8];
      v12 = [v11 copy];

      diagnosticDictionary = v12;
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

  return diagnosticDictionary;
}

- (id)description
{
  momentShare = self->_momentShare;
  if (momentShare)
  {
    momentShare = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", momentShare];
  }

  else
  {
    momentShare = &stru_1F1741150;
  }

  if (self->_suggestion)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", self->_suggestion];
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p%@%@>", objc_opt_class(), self, momentShare, v5];

  return v6;
}

- (id)notificationSuppressionContexts
{
  momentShare = [(PXCMMPhotoKitSession *)self momentShare];
  uuid = [momentShare uuid];

  activityType = [(PXCMMSession *)self activityType];
  v6 = 0;
  if (activityType == 2 && uuid)
  {
    v7 = PLSuppressionContextForMomentShareUUID();
    v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  }

  return v6;
}

- (PXCMMPhotoKitSession)initWithPhotoKitContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitSession.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v27.receiver = self;
  v27.super_class = PXCMMPhotoKitSession;
  v6 = [(PXCMMSession *)&v27 initWithContext:contextCopy];
  if (v6)
  {
    momentShare = [contextCopy momentShare];
    momentShare = v6->_momentShare;
    v6->_momentShare = momentShare;

    suggestion = [contextCopy suggestion];
    suggestion = v6->_suggestion;
    v6->_suggestion = suggestion;

    originatingMomentShare = [contextCopy originatingMomentShare];
    originatingMomentShare = v6->_originatingMomentShare;
    v6->_originatingMomentShare = originatingMomentShare;

    if ([(PXCMMSession *)v6 activityType]== 2)
    {
      v13 = +[PXCompleteMyMomentSettings sharedInstance];
      simulateImport = [v13 simulateImport];

      v15 = [[PXPhotoKitImportStatusManager alloc] initAllowingSimulation:simulateImport];
      importStatusManager = v6->_importStatusManager;
      v6->_importStatusManager = v15;
    }

    viewModel = [(PXCMMSession *)v6 viewModel];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __48__PXCMMPhotoKitSession_initWithPhotoKitContext___block_invoke;
    v25[3] = &unk_1E7746A48;
    v18 = v6;
    v26 = v18;
    [viewModel performChanges:v25];

    if (v6->_momentShare)
    {
      v19 = [[PXPhotoKitMomentShareStatus alloc] initWithPhotoKitMomentShare:v6->_momentShare];
      photoKitMomentShareStatus = v18->_photoKitMomentShareStatus;
      v18->_photoKitMomentShareStatus = v19;

      uUIDString = [MEMORY[0x1E69BF320] UUIDString];
      photoKitImportSessionID = v18->_photoKitImportSessionID;
      v18->_photoKitImportSessionID = uUIDString;
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

- (PXCMMPhotoKitSession)initWithContext:(id)context
{
  contextCopy = context;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPhotoKitSession.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXCMMPhotoKitSession initWithContext:]"}];

  abort();
}

@end