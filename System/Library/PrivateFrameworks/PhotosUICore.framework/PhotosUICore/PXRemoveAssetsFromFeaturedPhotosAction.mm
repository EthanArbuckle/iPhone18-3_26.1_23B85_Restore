@interface PXRemoveAssetsFromFeaturedPhotosAction
- (PXFastEnumeration)suggestions;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXRemoveAssetsFromFeaturedPhotosAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  suggestions = [(PXRemoveAssetsFromFeaturedPhotosAction *)self suggestions];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__PXRemoveAssetsFromFeaturedPhotosAction_performUndo___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = suggestions;
  v7 = suggestions;
  [photoLibrary performChanges:v8 completionHandler:undoCopy];
}

void __54__PXRemoveAssetsFromFeaturedPhotosAction_performUndo___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 markReactivated];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)performAction:(id)action
{
  actionCopy = action;
  suggestions = [(PXRemoveAssetsFromFeaturedPhotosAction *)self suggestions];
  photoLibrary = [(PXPhotosAction *)self photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXRemoveAssetsFromFeaturedPhotosAction_performAction___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = suggestions;
  v7 = suggestions;
  [photoLibrary performChanges:v8 completionHandler:actionCopy];
}

void __56__PXRemoveAssetsFromFeaturedPhotosAction_performAction___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 markDeclined];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (PXFastEnumeration)suggestions
{
  v20 = *MEMORY[0x1E69E9840];
  suggestions = self->_suggestions;
  if (!suggestions)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXPhotosAction assetCount](self, "assetCount")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    assets = [(PXAssetsAction *)self assets];
    v6 = [assets countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(assets);
          }

          v10 = [MEMORY[0x1E6978AE8] fetchRecentInterestSuggestionsForAsset:*(*(&v15 + 1) + 8 * v9)];
          fetchedObjects = [v10 fetchedObjects];
          [v4 addObjectsFromArray:fetchedObjects];

          ++v9;
        }

        while (v7 != v9);
        v7 = [assets countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
    v13 = self->_suggestions;
    self->_suggestions = v12;

    suggestions = self->_suggestions;
  }

  return suggestions;
}

@end