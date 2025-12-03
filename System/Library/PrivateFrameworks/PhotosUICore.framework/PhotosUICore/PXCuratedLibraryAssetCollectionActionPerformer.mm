@interface PXCuratedLibraryAssetCollectionActionPerformer
- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)type viewModel:(id)model;
- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)type viewModel:(id)model assetCollectionReference:(id)reference;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PXCuratedLibraryAssetCollectionActionPerformer

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  assetCollectionReference = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  if (!assetCollectionReference)
  {
    goto LABEL_6;
  }

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionType = [(PXActionPerformer *)self actionType];
  v8 = [actionType isEqualToString:@"PXCuratedLibraryActionSelectAllToggle"];

  if (!v8)
  {

LABEL_6:
    v9.receiver = self;
    v9.super_class = PXCuratedLibraryAssetCollectionActionPerformer;
    [(PXCuratedLibraryActionPerformer *)&v9 performActionWithCompletionHandler:handlerCopy];
    goto LABEL_7;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PXCuratedLibraryAssetCollectionActionPerformer_performActionWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7748B68;
  v11 = assetCollectionReference;
  [viewModel performChanges:v10];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

LABEL_7:
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  actionType = [(PXActionPerformer *)self actionType];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  assetCollectionReference = [(PXCuratedLibraryAssetCollectionActionPerformer *)self assetCollectionReference];
  v8 = _PXCuratedLibraryActionTitle(actionType, v7, viewModel, assetCollectionReference);

  return v8;
}

- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)type viewModel:(id)model assetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v13.receiver = self;
  v13.super_class = PXCuratedLibraryAssetCollectionActionPerformer;
  v10 = [(PXCuratedLibraryActionPerformer *)&v13 initWithActionType:type viewModel:model];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetCollectionReference, reference);
  }

  return v11;
}

- (PXCuratedLibraryAssetCollectionActionPerformer)initWithActionType:(id)type viewModel:(id)model
{
  typeCopy = type;
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetCollectionActionPerformer.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXCuratedLibraryAssetCollectionActionPerformer initWithActionType:viewModel:]"}];

  abort();
}

@end