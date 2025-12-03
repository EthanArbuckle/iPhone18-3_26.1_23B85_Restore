@interface PXMoveAssetsToSharedLibraryAction
- (PXMoveAssetsToSharedLibraryAction)initWithAssets:(id)assets;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMoveAssetsToSharedLibraryAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  assets = [(PXAssetsAction *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXMoveAssetsToSharedLibraryAction_performUndo___block_invoke;
  v7[3] = &unk_1E774BD88;
  v7[4] = self;
  v8 = undoCopy;
  v6 = undoCopy;
  PXSharedLibraryMoveAssetsToPersonalLibrary(assets, v7);
}

void __49__PXMoveAssetsToSharedLibraryAction_performUndo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2 && [*(*(a1 + 32) + 96) count])
  {
    PXSharedLibraryAddSharingSuggestions(*(*(a1 + 32) + 96), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2, v6);
    }
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXAssetsAction *)self assets];
  PXSharedLibraryMoveAssetsToSharedLibrary(assets, actionCopy);
}

- (PXMoveAssetsToSharedLibraryAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v6.receiver = self;
  v6.super_class = PXMoveAssetsToSharedLibraryAction;
  if ([(PXAssetsAction *)&v6 initWithAssets:assetsCopy])
  {
    PXFilter();
  }

  return 0;
}

uint64_t __52__PXMoveAssetsToSharedLibraryAction_initWithAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 fetchPropertySetsIfNeeded];
  v3 = [v2 libraryScopeProperties];

  v4 = [v3 assetIsInPhotosSuggestedPreviewState];
  return v4;
}

@end