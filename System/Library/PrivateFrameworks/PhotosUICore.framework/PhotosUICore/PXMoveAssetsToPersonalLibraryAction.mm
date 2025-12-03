@interface PXMoveAssetsToPersonalLibraryAction
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMoveAssetsToPersonalLibraryAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  assets = [(PXAssetsAction *)self assets];
  PXSharedLibraryMoveAssetsToSharedLibrary(assets, undoCopy);
}

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXAssetsAction *)self assets];
  PXSharedLibraryMoveAssetsToPersonalLibrary(assets, actionCopy);
}

@end