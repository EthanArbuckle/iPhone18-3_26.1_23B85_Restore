@interface PXCuratedLibraryCurationDebugActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (PXCuratedLibraryCurationDebugActionPerformer)initWithViewModel:(id)model assetCollectionReference:(id)reference diagnosticLayout:(id)layout;
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
  layoutForDiagnosticDescription = [(PXCuratedLibraryCurationDebugActionPerformer *)self layoutForDiagnosticDescription];
  if (layoutForDiagnosticDescription)
  {
    assetCollectionReference = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
    assetCollection = [assetCollectionReference assetCollection];

    v6 = [[PXHighlightDiagnosticsViewController alloc] initWithHighlight:assetCollection];
    diagnosticDescription = [layoutForDiagnosticDescription diagnosticDescription];
    [(PXCuratedAssetCollectionDiagnosticsViewController *)v6 setHostLayoutDiagnosticDescription:diagnosticDescription];

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

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryCurationDebugActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (PXCuratedLibraryCurationDebugActionPerformer)initWithViewModel:(id)model assetCollectionReference:(id)reference diagnosticLayout:(id)layout
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryCurationDebugActionPerformer;
  v9 = [(PXCuratedLibraryAssetCollectionActionPerformer *)&v12 initWithActionType:@"PXCuratedLibraryActionCurationDebug" viewModel:model assetCollectionReference:reference];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_layoutForDiagnosticDescription, layoutCopy);
  }

  return v10;
}

@end