@interface PBFGalleryMutableDataProvider
- (BOOL)_isSectionIdentifierValid:(id)valid;
- (BOOL)_isValidItem:(id)item withinSectionIdentifier:(id)identifier;
- (void)addToSection:(id)section item:(id)item;
- (void)configureForGallery:(id)gallery;
- (void)executeBulkUpdate:(id)update;
- (void)insertSectionWithIdentifier:(id)identifier toIndex:(unint64_t)index localizedTitle:(id)title localizedSubtitle:(id)subtitle type:(int64_t)type items:(id)items;
- (void)removeFromSection:(id)section item:(id)item;
- (void)removeSectionWithIdentifier:(id)identifier;
- (void)setItems:(id)items forSectionIdentifier:(id)identifier;
- (void)sortItemsWithinSectionAtIdentifier:(id)identifier comparator:(id)comparator;
- (void)sortSectionsWithComparator:(id)comparator;
@end

@implementation PBFGalleryMutableDataProvider

- (void)insertSectionWithIdentifier:(id)identifier toIndex:(unint64_t)index localizedTitle:(id)title localizedSubtitle:(id)subtitle type:(int64_t)type items:(id)items
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  itemsCopy = items;
  if (!identifierCopy)
  {
    [PBFGalleryMutableDataProvider insertSectionWithIdentifier:toIndex:localizedTitle:localizedSubtitle:type:items:];
  }

  if (![(PBFGalleryMutableDataProvider *)self _isSectionTypeValid:type])
  {
    [PBFGalleryMutableDataProvider insertSectionWithIdentifier:toIndex:localizedTitle:localizedSubtitle:type:items:];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __113__PBFGalleryMutableDataProvider_insertSectionWithIdentifier_toIndex_localizedTitle_localizedSubtitle_type_items___block_invoke;
  v22[3] = &unk_2782C9608;
  indexCopy = index;
  typeCopy = type;
  v23 = identifierCopy;
  v24 = titleCopy;
  v25 = subtitleCopy;
  v26 = itemsCopy;
  v18 = itemsCopy;
  v19 = subtitleCopy;
  v20 = titleCopy;
  v21 = identifierCopy;
  [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v22];
}

void __113__PBFGalleryMutableDataProvider_insertSectionWithIdentifier_toIndex_localizedTitle_localizedSubtitle_type_items___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[8];
  v15 = v3;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 orderedSectionIdentifiers];
    v4 = [v5 count];

    v3 = v15;
  }

  v6 = [v3 orderedSectionIdentifiers];
  [v6 insertObject:a1[4] atIndex:v4];

  v7 = [v15 sectionIdentifierToSectionType];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[9]];
  [v7 setObject:v8 forKey:a1[4]];

  v9 = a1[5];
  v10 = [v15 sectionIdentifierToLocalizedTitle];
  v11 = v10;
  if (v9)
  {
    [v10 setObject:a1[5] forKey:a1[4]];
  }

  else
  {
    [v10 removeObjectForKey:a1[4]];
  }

  v12 = a1[6];
  v13 = [v15 sectionIdentifierToLocalizedSubtitle];
  v14 = v13;
  if (v12)
  {
    [v13 setObject:a1[6] forKey:a1[4]];
  }

  else
  {
    [v13 removeObjectForKey:a1[4]];
  }

  [v15 setItems:a1[7] forSectionIdentifier:a1[4]];
  [v15 _markChangeDidOccur];
}

- (void)setItems:(id)items forSectionIdentifier:(id)identifier
{
  itemsCopy = items;
  identifierCopy = identifier;
  if (![(PBFGalleryMutableDataProvider *)self _isSectionIdentifierValid:identifierCopy])
  {
    [PBFGalleryMutableDataProvider setItems:forSectionIdentifier:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PBFGalleryMutableDataProvider_setItems_forSectionIdentifier___block_invoke;
  v10[3] = &unk_2782C9658;
  v11 = identifierCopy;
  v12 = itemsCopy;
  v8 = itemsCopy;
  v9 = identifierCopy;
  [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v10];
}

void __63__PBFGalleryMutableDataProvider_setItems_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 sectionIdentifierToItems];
  v5 = [v4 objectForKey:*(a1 + 32)];

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [v3 posterPreviewForPosterUniqueIdentifier];
        v12 = [v10 previewUniqueIdentifier];
        [v11 removeObjectForKey:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v13 = *(a1 + 40);
  v14 = [v3 sectionIdentifierToItems];
  v15 = v14;
  if (v13)
  {
    v16 = [*(a1 + 40) mutableCopy];
    [v15 setObject:v16 forKey:*(a1 + 32)];
  }

  else
  {
    [v14 removeObjectForKey:*(a1 + 32)];
  }

  v17 = *(a1 + 40);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__PBFGalleryMutableDataProvider_setItems_forSectionIdentifier___block_invoke_2;
  v19[3] = &unk_2782C9630;
  v20 = v3;
  v18 = v3;
  [v17 enumerateObjectsUsingBlock:v19];
  [v18 _markChangeDidOccur];
}

void __63__PBFGalleryMutableDataProvider_setItems_forSectionIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 posterPreviewForPosterUniqueIdentifier];
  v4 = [v3 previewUniqueIdentifier];
  [v5 setObject:v3 forKey:v4];
}

- (void)addToSection:(id)section item:(id)item
{
  sectionCopy = section;
  itemCopy = item;
  if ([(PBFGalleryMutableDataProvider *)self _isSectionIdentifierValid:sectionCopy])
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PBFGalleryMutableDataProvider addToSection:item:];
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  [PBFGalleryMutableDataProvider addToSection:item:];
LABEL_3:
  if (![(PBFGalleryMutableDataProvider *)self _isValidItem:itemCopy withinSectionIdentifier:sectionCopy])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__PBFGalleryMutableDataProvider_addToSection_item___block_invoke;
    v8[3] = &unk_2782C9658;
    v9 = sectionCopy;
    v10 = itemCopy;
    [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v8];
  }
}

void __51__PBFGalleryMutableDataProvider_addToSection_item___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 sectionIdentifierToItems];
  v4 = [v3 objectForKey:*(a1 + 32)];

  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [v9 sectionIdentifierToItems];
    [v5 setObject:v4 forKey:*(a1 + 32)];
  }

  [v4 addObject:*(a1 + 40)];
  v6 = [v9 posterPreviewForPosterUniqueIdentifier];
  v7 = *(a1 + 40);
  v8 = [v7 previewUniqueIdentifier];
  [v6 setObject:v7 forKey:v8];

  [v9 _markChangeDidOccur];
}

- (void)removeSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(PBFGalleryMutableDataProvider *)self _isSectionIdentifierValid:identifierCopy])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__PBFGalleryMutableDataProvider_removeSectionWithIdentifier___block_invoke;
    v5[3] = &unk_2782C9658;
    v5[4] = self;
    v6 = identifierCopy;
    [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v5];
  }
}

void __61__PBFGalleryMutableDataProvider_removeSectionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) itemsForSectionWithIdentifier:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__PBFGalleryMutableDataProvider_removeSectionWithIdentifier___block_invoke_2;
  v11[3] = &unk_2782C9630;
  v12 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v11];
  v6 = [v5 orderedSectionIdentifiers];
  [v6 removeObject:*(a1 + 40)];

  v7 = [v5 sectionIdentifierToItems];
  [v7 removeObjectForKey:*(a1 + 40)];

  v8 = [v5 sectionIdentifierToSectionType];
  [v8 removeObjectForKey:*(a1 + 40)];

  v9 = [v5 sectionIdentifierToLocalizedTitle];
  [v9 removeObjectForKey:*(a1 + 40)];

  v10 = [v5 sectionIdentifierToLocalizedSubtitle];
  [v10 removeObjectForKey:*(a1 + 40)];

  [v5 _markChangeDidOccur];
}

void __61__PBFGalleryMutableDataProvider_removeSectionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 posterPreviewForPosterUniqueIdentifier];
  v4 = [v3 previewUniqueIdentifier];

  [v5 removeObjectForKey:v4];
}

- (void)removeFromSection:(id)section item:(id)item
{
  sectionCopy = section;
  itemCopy = item;
  v8 = itemCopy;
  if (sectionCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PBFGalleryMutableDataProvider removeFromSection:item:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [PBFGalleryMutableDataProvider removeFromSection:item:];
LABEL_3:
  if ([(PBFGalleryMutableDataProvider *)self _isValidItem:v8 withinSectionIdentifier:sectionCopy])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__PBFGalleryMutableDataProvider_removeFromSection_item___block_invoke;
    v9[3] = &unk_2782C9658;
    v10 = v8;
    v11 = sectionCopy;
    [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v9];
  }
}

void __56__PBFGalleryMutableDataProvider_removeFromSection_item___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 _markChangeDidOccur];
  v4 = [v3 posterPreviewForPosterUniqueIdentifier];
  v5 = [*(a1 + 32) previewUniqueIdentifier];
  [v4 removeObjectForKey:v5];

  v6 = [v3 sectionIdentifierToItems];

  v7 = [v6 objectForKey:*(a1 + 40)];

  [v7 removeObject:*(a1 + 32)];
}

- (void)sortSectionsWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  orderedSectionIdentifiers = [(PBFPosterGalleryDataProvider *)self orderedSectionIdentifiers];
  v6 = [orderedSectionIdentifiers mutableCopy];
  [orderedSectionIdentifiers sortUsingComparator:comparatorCopy];

  if (([v6 isEqual:orderedSectionIdentifiers] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__PBFGalleryMutableDataProvider_sortSectionsWithComparator___block_invoke;
    v7[3] = &unk_2782C9680;
    v8 = v6;
    [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v7];
  }
}

void __60__PBFGalleryMutableDataProvider_sortSectionsWithComparator___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 orderedSectionIdentifiers];
  [v3 removeAllObjects];

  v4 = [v6 orderedSectionIdentifiers];
  v5 = [*(a1 + 32) array];
  [v4 addObjectsFromArray:v5];

  [v6 _markChangeDidOccur];
}

- (void)sortItemsWithinSectionAtIdentifier:(id)identifier comparator:(id)comparator
{
  identifierCopy = identifier;
  comparatorCopy = comparator;
  if (!identifierCopy)
  {
    [PBFGalleryMutableDataProvider sortItemsWithinSectionAtIdentifier:comparator:];
  }

  v8 = [(PBFPosterGalleryDataProvider *)self itemsForSectionWithIdentifier:identifierCopy];
  v9 = [v8 mutableCopy];
  [v9 sortUsingComparator:comparatorCopy];
  if (([v9 isEqual:v8] & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__PBFGalleryMutableDataProvider_sortItemsWithinSectionAtIdentifier_comparator___block_invoke;
    v10[3] = &unk_2782C96A8;
    v11 = v9;
    v12 = identifierCopy;
    selfCopy = self;
    [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v10];
  }
}

uint64_t __79__PBFGalleryMutableDataProvider_sortItemsWithinSectionAtIdentifier_comparator___block_invoke(void *a1, void *a2)
{
  v3 = [a2 sectionIdentifierToItems];
  [v3 setObject:a1[4] forKey:a1[5]];

  v4 = a1[6];

  return [v4 _markChangeDidOccur];
}

- (void)executeBulkUpdate:(id)update
{
  updateCopy = update;
  if (!updateCopy)
  {
    [PBFGalleryMutableDataProvider executeBulkUpdate:];
  }

  [(PBFPosterGalleryDataProvider *)self _incrementTransactionCount:1];
  updateCopy[2](updateCopy, self);
  [(PBFPosterGalleryDataProvider *)self _decrementTransactionCount:1];
}

- (void)configureForGallery:(id)gallery
{
  galleryCopy = gallery;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__10;
  v18[4] = __Block_byref_object_dispose__10;
  sectionIdentifiers = [(PBFPosterGalleryDataProvider *)self sectionIdentifiers];
  array = [sectionIdentifiers array];

  sectionIdentifiers2 = [galleryCopy sectionIdentifiers];
  array2 = [sectionIdentifiers2 array];

  snapshotProvider = [galleryCopy snapshotProvider];
  [(PBFPosterGalleryDataProvider *)self setSnapshotProvider:snapshotProvider];
  complicationSnapshotProvider = [galleryCopy complicationSnapshotProvider];
  [(PBFPosterGalleryDataProvider *)self setComplicationSnapshotProvider:complicationSnapshotProvider];
  extensionProvider = [galleryCopy extensionProvider];
  [(PBFPosterGalleryDataProvider *)self setExtensionProvider:extensionProvider];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__PBFGalleryMutableDataProvider_configureForGallery___block_invoke;
  v13[3] = &unk_2782C96D0;
  v11 = array2;
  v14 = v11;
  v17 = v18;
  v12 = galleryCopy;
  v15 = v12;
  selfCopy = self;
  [(PBFGalleryMutableDataProvider *)self executeBulkUpdate:v13];

  _Block_object_dispose(v18, 8);
}

void __53__PBFGalleryMutableDataProvider_configureForGallery___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) differenceFromArray:*(*(*(a1 + 56) + 8) + 40)];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = [v4 removals];
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v47 + 1) + 8 * i) object];
        [v3 removeSectionWithIdentifier:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v7);
  }

  v38 = v3;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = v4;
  obj = [v4 insertions];
  v11 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * j);
        v16 = [v15 object];
        v17 = [*(a1 + 40) sectionForSectionIdentifier:v16];
        v18 = [*(a1 + 40) itemsForSectionWithIdentifier:v16];
        v19 = [v15 index];
        v20 = [v17 localizedTitle];
        v21 = [v17 localizedSubtitle];
        v22 = [v17 type] - 1;
        if (v22 > 3)
        {
          v23 = 1;
        }

        else
        {
          v23 = qword_21B6D78E8[v22];
        }

        [v38 insertSectionWithIdentifier:v16 toIndex:v19 localizedTitle:v20 localizedSubtitle:v21 type:v23 items:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v12);
  }

  v24 = [*(a1 + 48) sectionIdentifiers];
  v25 = [v24 array];
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = *(*(*(a1 + 56) + 8) + 40);
  v29 = [v28 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v39 + 1) + 8 * k);
        v34 = [*(a1 + 48) itemsForSectionWithIdentifier:v33];
        v35 = [*(a1 + 40) itemsForSectionWithIdentifier:v33];
        if (([v34 isEqual:v35] & 1) == 0)
        {
          [v38 setItems:v35 forSectionIdentifier:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v30);
  }
}

- (BOOL)_isSectionIdentifierValid:(id)valid
{
  validCopy = valid;
  orderedSectionIdentifiers = [(PBFPosterGalleryDataProvider *)self orderedSectionIdentifiers];
  v6 = [orderedSectionIdentifiers containsObject:validCopy];

  return v6;
}

- (BOOL)_isValidItem:(id)item withinSectionIdentifier:(id)identifier
{
  itemCopy = item;
  v7 = [(PBFPosterGalleryDataProvider *)self itemsForSectionWithIdentifier:identifier];
  LOBYTE(self) = [v7 containsObject:itemCopy];

  return self;
}

- (void)insertSectionWithIdentifier:toIndex:localizedTitle:localizedSubtitle:type:items:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"sectionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)insertSectionWithIdentifier:toIndex:localizedTitle:localizedSubtitle:type:items:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"[self _isSectionTypeValid:sectionType]" object:? file:? lineNumber:? description:?];
}

- (void)setItems:forSectionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"[self _isSectionIdentifierValid:sectionIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)addToSection:item:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"[self _isSectionIdentifierValid:sectionIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)addToSection:item:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

- (void)removeFromSection:item:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"sectionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)removeFromSection:item:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"item" object:? file:? lineNumber:? description:?];
}

- (void)sortItemsWithinSectionAtIdentifier:comparator:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"sectionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)executeBulkUpdate:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"bulkUpdateHandler" object:? file:? lineNumber:? description:?];
}

@end