@interface PXCuratedLibraryAssetCollectionActionPerformer
- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4;
- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 assetCollectionReference:(id)a5;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (void)performActionWithCompletionHandler:(id)a3;
@end

@implementation PXCuratedLibraryAssetCollectionActionPerformer

- (void)performActionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v7 = [(PXActionPerformer *)self actionType];
  v8 = [v7 isEqualToString:@"PXCuratedLibraryActionSelectAllToggle"];

  if (!v8)
  {

LABEL_6:
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryAssetCollectionActionPerformer;
    [(PXCuratedLibraryActionPerformer *)&v9 performActionWithCompletionHandler:v4];
    goto LABEL_7;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PXCuratedLibraryAssetCollectionActionPerformer_performActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7748B68;
  v11 = v5;
  [v6 performChanges:v10];

  if (v4)
  {
    v4[2](v4, 1, 0);
  }

LABEL_7:
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v4 = [(PXActionPerformer *)self actionType];
  v5 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  v6 = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  v8 = _PXCuratedLibraryActionTitle(v4, v7, v5, v6);

  return v8;
}

- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4 assetCollectionReference:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryAssetCollectionActionPerformer;
  v10 = [(PXCuratedLibraryActionPerformer *)&v13 initWithActionType:a3 viewModel:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetCollectionReference, a5);
  }

  return v11;
}

- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)a3 viewModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXCuratedLibraryAssetCollectionActionPerformer initWithActionType:viewModel:]"}];

  abort();
}

@end