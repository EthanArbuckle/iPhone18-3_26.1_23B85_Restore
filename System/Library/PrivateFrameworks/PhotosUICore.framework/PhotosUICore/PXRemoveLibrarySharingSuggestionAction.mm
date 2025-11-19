@interface PXRemoveLibrarySharingSuggestionAction
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXRemoveLibrarySharingSuggestionAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  PXSharedLibraryAddSharingSuggestions(v5, v4);
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  PXSharedLibraryRemoveSharingSuggestions(v5, v4);
}

@end