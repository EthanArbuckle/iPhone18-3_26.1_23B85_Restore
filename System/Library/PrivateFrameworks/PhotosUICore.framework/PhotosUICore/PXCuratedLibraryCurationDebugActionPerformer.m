@interface PXCuratedLibraryCurationDebugActionPerformer
- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4;
- (PXCuratedLibraryCurationDebugActionPerformer)initWithViewModel:(id)a3 assetCollectionReference:(id)a4 diagnosticLayout:(id)a5;
- (PXGLayout)layoutForDiagnosticDescription;
- (void)performUserInteractionTask;
@end

@implementation PXCuratedLibraryCurationDebugActionPerformer

- (PXGLayout)layoutForDiagnosticDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutForDiagnosticDescription);

  return WeakRetained;
}

- (void)performUserInteractionTask
{
  v3 = [(PXCuratedLibraryCurationDebugActionPerformer *)self layoutForDiagnosticDescription];
  if (v3)
  {
    v4 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
    v5 = [v4 assetCollection];

    v6 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:v5];
    v7 = [v3 diagnosticDescription];
    [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setHostLayoutDiagnosticDescription:v7];

    [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setShouldPresentTapToRadar:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PXCuratedLibraryCurationDebugActionPerformer_performUserInteractionTask__block_invoke;
    v9[3] = &unk_1E774C620;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

uint64_t __74__PXCuratedLibraryCurationDebugActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

- (BOOL)canPerformWithActivityItems:(id)a3 forActivity:(id)a4
{
  v6 = [a4 activityType];
  v7 = [(PXCuratedLibraryCurationDebugActionPerformer *)self activityType];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (PXCuratedLibraryCurationDebugActionPerformer)initWithViewModel:(id)a3 assetCollectionReference:(id)a4 diagnosticLayout:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryCurationDebugActionPerformer;
  v9 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v12 initWithActionType:@"PXCuratedLibraryActionCurationDebug" viewModel:a3 assetCollectionReference:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_layoutForDiagnosticDescription, v8);
  }

  return v10;
}

@end