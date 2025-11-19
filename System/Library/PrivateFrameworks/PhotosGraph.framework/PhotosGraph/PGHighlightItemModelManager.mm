@interface PGHighlightItemModelManager
- (PGHighlightItemModelManager)initWithLibrary:(id)a3;
- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)a3;
- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)a3;
- (id)fetchParentHighlightItemsForHighlightItems:(id)a3;
- (id)highlightUUIDsWithContextualKeyAssetChange;
- (id)highlightUUIDsWithVisibilityStateChange;
- (id)initForTesting;
- (void)commonInit;
- (void)consumeHighlightItemList:(id)a3;
@end

@implementation PGHighlightItemModelManager

- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)a3
{
  if (a3 <= 2u)
  {
    a2 = (&self->_contextualKeyAssetPrivateByHighlighItemUUID)[a3 & 0x1FFF];
  }

  return a2;
}

- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)a3
{
  if (a3 <= 2u)
  {
    a2 = (&self->_visibilityStatePrivateByHighlighItemUUID)[a3 & 0x1FFF];
  }

  return a2;
}

- (id)highlightUUIDsWithContextualKeyAssetChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NSMutableDictionary *)self->_contextualKeyAssetPrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableDictionary *)self->_contextualKeyAssetSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableDictionary *)self->_contextualKeyAssetMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (id)highlightUUIDsWithVisibilityStateChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(NSMutableDictionary *)self->_visibilityStatePrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableDictionary *)self->_visibilityStateSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v5];

  v6 = [(NSMutableDictionary *)self->_visibilityStateMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (id)fetchParentHighlightItemsForHighlightItems:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGHighlightItemModelManager *)self library];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * i) modelObject];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:v7 options:v6];
    v15 = [v14 fetchedObjects];
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)consumeHighlightItemList:(id)a3
{
  v3 = MEMORY[0x277CD9960];
  v4 = a3;
  v5 = [v4 modelObject];
  v9 = [v3 changeRequestForPhotosHighlight:v5];

  [v4 promotionScore];
  [v9 setPromotionScore:?];
  [v9 setEnrichmentState:4];
  [v9 setVisibilityState:{objc_msgSend(v4, "visibilityStateForHighlightFilter:", 0)}];
  [v9 setVisibilityStateShared:{objc_msgSend(v4, "visibilityStateForHighlightFilter:", 1)}];
  [v9 setVisibilityStateMixed:{objc_msgSend(v4, "visibilityStateForHighlightFilter:", 2)}];
  v6 = [v4 keyAssetPrivate];
  [v9 setKeyAssetPrivate:v6];

  v7 = [v4 keyAssetShared];
  [v9 setKeyAssetShared:v7];

  v8 = [v4 mixedSharingCompositionKeyAssetRelationship];
  [v9 setMixedSharingCompositionKeyAssetRelationship:v8];
  [v9 didEnrichHighlight];
}

- (void)commonInit
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStatePrivateByHighlighItemUUID = self->_visibilityStatePrivateByHighlighItemUUID;
  self->_visibilityStatePrivateByHighlighItemUUID = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateSharedByHighlighItemUUID = self->_visibilityStateSharedByHighlighItemUUID;
  self->_visibilityStateSharedByHighlighItemUUID = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateMixedByHighlighItemUUID = self->_visibilityStateMixedByHighlighItemUUID;
  self->_visibilityStateMixedByHighlighItemUUID = v7;

  v9 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetPrivateByHighlighItemUUID = self->_contextualKeyAssetPrivateByHighlighItemUUID;
  self->_contextualKeyAssetPrivateByHighlighItemUUID = v9;

  v11 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetSharedByHighlighItemUUID = self->_contextualKeyAssetSharedByHighlighItemUUID;
  self->_contextualKeyAssetSharedByHighlighItemUUID = v11;

  v13 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetMixedByHighlighItemUUID = self->_contextualKeyAssetMixedByHighlighItemUUID;
  self->_contextualKeyAssetMixedByHighlighItemUUID = v13;
}

- (id)initForTesting
{
  v5.receiver = self;
  v5.super_class = PGHighlightItemModelManager;
  v2 = [(PGHighlightItemModelManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGHighlightItemModelManager *)v2 commonInit];
  }

  return v3;
}

- (PGHighlightItemModelManager)initWithLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGHighlightItemModelManager;
  v6 = [(PGHighlightItemModelManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
    [(PGHighlightItemModelManager *)v7 commonInit];
  }

  return v7;
}

@end