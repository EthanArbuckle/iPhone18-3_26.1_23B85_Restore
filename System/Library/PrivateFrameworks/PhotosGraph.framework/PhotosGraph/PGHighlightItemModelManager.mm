@interface PGHighlightItemModelManager
- (PGHighlightItemModelManager)initWithLibrary:(id)library;
- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter;
- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter;
- (id)fetchParentHighlightItemsForHighlightItems:(id)items;
- (id)highlightUUIDsWithContextualKeyAssetChange;
- (id)highlightUUIDsWithVisibilityStateChange;
- (id)initForTesting;
- (void)commonInit;
- (void)consumeHighlightItemList:(id)list;
@end

@implementation PGHighlightItemModelManager

- (id)_contextualKeyAssetByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter
{
  if (filter <= 2u)
  {
    a2 = (&self->_contextualKeyAssetPrivateByHighlighItemUUID)[filter & 0x1FFF];
  }

  return a2;
}

- (id)_visibilityStateByHighlighItemUUIDForHighlightFilter:(unsigned __int16)filter
{
  if (filter <= 2u)
  {
    a2 = (&self->_visibilityStatePrivateByHighlighItemUUID)[filter & 0x1FFF];
  }

  return a2;
}

- (id)highlightUUIDsWithContextualKeyAssetChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_contextualKeyAssetPrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_contextualKeyAssetSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_contextualKeyAssetMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys3];

  return v3;
}

- (id)highlightUUIDsWithVisibilityStateChange
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_visibilityStatePrivateByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_visibilityStateSharedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys2];

  allKeys3 = [(NSMutableDictionary *)self->_visibilityStateMixedByHighlighItemUUID allKeys];
  [v3 addObjectsFromArray:allKeys3];

  return v3;
}

- (id)fetchParentHighlightItemsForHighlightItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  library = [(PGHighlightItemModelManager *)self library];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];

  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = itemsCopy;
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

        modelObject = [*(*(&v18 + 1) + 8 * i) modelObject];
        [array addObject:modelObject];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    v14 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:array options:librarySpecificFetchOptions];
    fetchedObjects = [v14 fetchedObjects];
  }

  else
  {
    fetchedObjects = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return fetchedObjects;
}

- (void)consumeHighlightItemList:(id)list
{
  v3 = MEMORY[0x277CD9960];
  listCopy = list;
  modelObject = [listCopy modelObject];
  v9 = [v3 changeRequestForPhotosHighlight:modelObject];

  [listCopy promotionScore];
  [v9 setPromotionScore:?];
  [v9 setEnrichmentState:4];
  [v9 setVisibilityState:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 0)}];
  [v9 setVisibilityStateShared:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 1)}];
  [v9 setVisibilityStateMixed:{objc_msgSend(listCopy, "visibilityStateForHighlightFilter:", 2)}];
  keyAssetPrivate = [listCopy keyAssetPrivate];
  [v9 setKeyAssetPrivate:keyAssetPrivate];

  keyAssetShared = [listCopy keyAssetShared];
  [v9 setKeyAssetShared:keyAssetShared];

  mixedSharingCompositionKeyAssetRelationship = [listCopy mixedSharingCompositionKeyAssetRelationship];
  [v9 setMixedSharingCompositionKeyAssetRelationship:mixedSharingCompositionKeyAssetRelationship];
  [v9 didEnrichHighlight];
}

- (void)commonInit
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  visibilityStatePrivateByHighlighItemUUID = self->_visibilityStatePrivateByHighlighItemUUID;
  self->_visibilityStatePrivateByHighlighItemUUID = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateSharedByHighlighItemUUID = self->_visibilityStateSharedByHighlighItemUUID;
  self->_visibilityStateSharedByHighlighItemUUID = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  visibilityStateMixedByHighlighItemUUID = self->_visibilityStateMixedByHighlighItemUUID;
  self->_visibilityStateMixedByHighlighItemUUID = dictionary3;

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetPrivateByHighlighItemUUID = self->_contextualKeyAssetPrivateByHighlighItemUUID;
  self->_contextualKeyAssetPrivateByHighlighItemUUID = dictionary4;

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetSharedByHighlighItemUUID = self->_contextualKeyAssetSharedByHighlighItemUUID;
  self->_contextualKeyAssetSharedByHighlighItemUUID = dictionary5;

  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  contextualKeyAssetMixedByHighlighItemUUID = self->_contextualKeyAssetMixedByHighlighItemUUID;
  self->_contextualKeyAssetMixedByHighlighItemUUID = dictionary6;
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

- (PGHighlightItemModelManager)initWithLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PGHighlightItemModelManager;
  v6 = [(PGHighlightItemModelManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    [(PGHighlightItemModelManager *)v7 commonInit];
  }

  return v7;
}

@end