@interface PXRemoveLibrarySharingSuggestionAction
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRemoveLibrarySharingSuggestionAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  assets = [(PXAssetsAction *)self assets];
  PXSharedLibraryAddSharingSuggestions(assets, undoCopy);
}

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXAssetsAction *)self assets];
  PXSharedLibraryRemoveSharingSuggestions(assets, actionCopy);
}

@end