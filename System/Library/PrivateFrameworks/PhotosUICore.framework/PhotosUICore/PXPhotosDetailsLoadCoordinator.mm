@interface PXPhotosDetailsLoadCoordinator
+ (id)loadCoordinatorForContext:(id)a3;
- (BOOL)_canPerformRelatedFetch;
- (BOOL)_canPerformSuggestionsFetch;
- (PXPhotosDetailsLoadCoordinator)init;
- (id)_createToken;
- (id)tokenForLivePhotoVariations;
- (void)performBlockWhenReadyToFetchRelated:(id)a3;
- (void)performBlockWhenReadyToFetchSuggestions:(id)a3;
@end

@implementation PXPhotosDetailsLoadCoordinator

- (BOOL)_canPerformSuggestionsFetch
{
  v2 = [(PXPhotosDetailsLoadCoordinator *)self _tokens];
  v3 = [v2 objectEnumerator];
  v4 = [v3 nextObject];
  v5 = v4 == 0;

  return v5;
}

- (BOOL)_canPerformRelatedFetch
{
  v2 = [(PXPhotosDetailsLoadCoordinator *)self _tokens];
  v3 = [v2 objectEnumerator];
  v4 = [v3 nextObject];
  v5 = v4 == 0;

  return v5;
}

void __52__PXPhotosDetailsLoadCoordinator__tokenDidComplete___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _tokens];
    [v2 removeObject:*(a1 + 32)];
  }

  if ([*(a1 + 40) _canPerformRelatedFetch])
  {
    v3 = [*(a1 + 40) _relatedBlocks];
    v4 = [v3 copy];

    v5 = [*(a1 + 40) _relatedBlocks];
    [v5 removeAllObjects];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v23 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  if ([*(a1 + 40) _canPerformSuggestionsFetch])
  {
    v11 = [*(a1 + 40) _suggestionsBlocks];
    v12 = [v11 copy];

    v13 = [*(a1 + 40) _suggestionsBlocks];
    [v13 removeAllObjects];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v19 + 1) + 8 * v18) + 16))(*(*(&v19 + 1) + 8 * v18));
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (void)performBlockWhenReadyToFetchSuggestions:(id)a3
{
  v7 = a3;
  if ([(PXPhotosDetailsLoadCoordinator *)self _canPerformSuggestionsFetch])
  {
    v7[2]();
  }

  else
  {
    v4 = [(PXPhotosDetailsLoadCoordinator *)self _suggestionsBlocks];
    v5 = [v7 copy];
    v6 = _Block_copy(v5);
    [v4 addObject:v6];
  }
}

- (void)performBlockWhenReadyToFetchRelated:(id)a3
{
  v7 = a3;
  if ([(PXPhotosDetailsLoadCoordinator *)self _canPerformRelatedFetch])
  {
    v7[2]();
  }

  else
  {
    v4 = [(PXPhotosDetailsLoadCoordinator *)self _relatedBlocks];
    v5 = [v7 copy];
    v6 = _Block_copy(v5);
    [v4 addObject:v6];
  }
}

- (id)tokenForLivePhotoVariations
{
  v2 = [[PXPhotosDetailsLoadCoordinationToken alloc] _initWithLoadCoordinator:0];

  return v2;
}

- (id)_createToken
{
  v3 = [[PXPhotosDetailsLoadCoordinationToken alloc] _initWithLoadCoordinator:self];
  v4 = [(PXPhotosDetailsLoadCoordinator *)self _tokens];
  [v4 addObject:v3];

  return v3;
}

- (PXPhotosDetailsLoadCoordinator)init
{
  v11.receiver = self;
  v11.super_class = PXPhotosDetailsLoadCoordinator;
  v2 = [(PXPhotosDetailsLoadCoordinator *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeoutDelay = 10.0;
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    tokens = v3->__tokens;
    v3->__tokens = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    relatedBlocks = v3->__relatedBlocks;
    v3->__relatedBlocks = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    suggestionsBlocks = v3->__suggestionsBlocks;
    v3->__suggestionsBlocks = v8;
  }

  return v3;
}

+ (id)loadCoordinatorForContext:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, PXPhotosDetailsLoadCoordinatorAssociationKey);
  if (!v4)
  {
    v4 = objc_alloc_init(PXPhotosDetailsLoadCoordinator);
    objc_setAssociatedObject(v3, PXPhotosDetailsLoadCoordinatorAssociationKey, v4, 1);
  }

  return v4;
}

@end