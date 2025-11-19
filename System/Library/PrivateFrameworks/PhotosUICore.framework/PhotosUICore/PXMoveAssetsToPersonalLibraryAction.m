@interface PXMoveAssetsToPersonalLibraryAction
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXMoveAssetsToPersonalLibraryAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  PXSharedLibraryMoveAssetsToSharedLibrary(v5, v4);
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  PXSharedLibraryMoveAssetsToPersonalLibrary(v5, v4);
}

@end