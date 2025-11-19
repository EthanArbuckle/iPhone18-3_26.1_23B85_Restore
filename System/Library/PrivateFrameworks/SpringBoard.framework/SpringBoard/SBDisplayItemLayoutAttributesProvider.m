@interface SBDisplayItemLayoutAttributesProvider
- (BOOL)_shouldUpdateForDisplayOrdinal:(int64_t)a3;
- (SBDisplayItemLayoutAttributesProvider)init;
- (SBDisplayItemLayoutAttributesProviderDelegate)delegate;
- (id)_layoutAttributesForDisplayItem:(id)a3 inAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6;
- (id)lastInteractedDisplayItemInAppLayout:(id)a3 orientation:(int64_t)a4 passingTest:(id)a5;
- (id)lastInteractedDisplayItemsInAppLayout:(id)a3 orientation:(int64_t)a4;
- (id)layoutAttributesEntriesForAppLayout:(id)a3;
- (id)layoutAttributesForDisplayItem:(id)a3 inAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6;
- (id)layoutAttributesMapForAppLayout:(id)a3 displayOrdinal:(int64_t)a4 orientation:(int64_t)a5;
- (id)zOrderedItemsInAppLayout:(id)a3 orientation:(int64_t)a4;
- (void)performBlockWithoutUpdating:(id)a3;
- (void)updateLayoutAttributes:(id)a3 forKey:(id)a4;
- (void)updateLayoutAttributes:(id)a3 ofDisplayItem:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6;
- (void)updateLayoutAttributesMap:(id)a3 forAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6;
@end

@implementation SBDisplayItemLayoutAttributesProvider

- (SBDisplayItemLayoutAttributesProvider)init
{
  v6.receiver = self;
  v6.super_class = SBDisplayItemLayoutAttributesProvider;
  v2 = [(SBDisplayItemLayoutAttributesProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBDisplayItemLayoutAttributesStorage);
    storage = v2->_storage;
    v2->_storage = v3;
  }

  return v2;
}

- (id)layoutAttributesMapForAppLayout:(id)a3 displayOrdinal:(int64_t)a4 orientation:(int64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v8 allItems];
  v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(SBDisplayItemLayoutAttributesProvider *)self layoutAttributesForDisplayItem:v14 inAppLayout:v8 displayOrdinal:a4 orientation:a5];
        [v9 setObject:v15 forKey:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [v9 copy];

  return v16;
}

- (id)layoutAttributesForDisplayItem:(id)a3 inAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayItemLayoutAttributesProvider layoutAttributesForDisplayItem:inAppLayout:displayOrdinal:orientation:];
  }

  v12 = [(SBDisplayItemLayoutAttributesProvider *)self _layoutAttributesForDisplayItem:v10 inAppLayout:v11 displayOrdinal:a5 orientation:a6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [WeakRetained shouldForceFullscreenForDisplayOrdinal:a5];

  if (v14)
  {
    v15 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v12];

    v12 = v15;
  }

  return v12;
}

- (id)_layoutAttributesForDisplayItem:(id)a3 inAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [[SBDisplayItemLayoutAttributesKey alloc] initWithDisplayItem:v9 displayOrdinal:a5 orientation:a6];
  if (![(SBDisplayItemLayoutAttributesKey *)v10 orientation]|| ([(SBDisplayItemLayoutAttributesStorage *)self->_storage layoutAttributesForKey:v10], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(SBDisplayItemLayoutAttributesStorage *)self->_storage bestEffortLayoutAttributesForKey:v10];
    v13 = SBLogLayoutAttributes();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v14)
      {
        v15 = [(SBDisplayItemLayoutAttributesKey *)v10 description];
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Returning best effort layout attributes for (%@)", &v19, 0xCu);
      }

      v16 = v12;
    }

    else
    {
      if (v14)
      {
        v17 = [v9 bundleIdentifier];
        v19 = 138412290;
        v20 = v17;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "No layout attributes found for (%@), returning empty layout attributes.", &v19, 0xCu);
      }

      v16 = objc_alloc_init(SBDisplayItemLayoutAttributes);
    }

    v11 = v16;
  }

  return v11;
}

- (void)updateLayoutAttributesMap:(id)a3 forAppLayout:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if ([(SBDisplayItemLayoutAttributesProvider *)self _shouldUpdateForDisplayOrdinal:a5])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          v16 = [v10 objectForKey:{v15, v17}];
          [(SBDisplayItemLayoutAttributesProvider *)self updateLayoutAttributes:v16 ofDisplayItem:v15 displayOrdinal:a5 orientation:a6];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateLayoutAttributes:(id)a3 ofDisplayItem:(id)a4 displayOrdinal:(int64_t)a5 orientation:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBDisplayItemLayoutAttributesProvider updateLayoutAttributes:ofDisplayItem:displayOrdinal:orientation:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBDisplayItemLayoutAttributesProvider updateLayoutAttributes:a2 ofDisplayItem:self displayOrdinal:? orientation:?];
LABEL_3:
  if ([(SBDisplayItemLayoutAttributesProvider *)self _shouldUpdateForDisplayOrdinal:a5])
  {
    if (v11)
    {
      v13 = [[SBDisplayItemLayoutAttributesKey alloc] initWithDisplayItem:v12 displayOrdinal:a5 orientation:a6];
      v14 = [(SBDisplayItemLayoutAttributesStorage *)self->_storage lasInteractionTimeForDisplayItem:v12];
      v15 = [(SBHomeScreenConfigurationServer *)v11 queue];
      if (v15 > v14)
      {
        v16 = v15;
        storage = self->_storage;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke;
        v50[3] = &unk_2783B5E68;
        v50[4] = self;
        v50[5] = v16;
        [(SBDisplayItemLayoutAttributesStorage *)storage enumarateLayoutAttributesForDisplayItem:v12 block:v50];
      }

      v18 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v11];

      v19 = [(SBDisplayItemLayoutAttributesStorage *)self->_storage layoutAttributesForKey:v13];
      v20 = [(SBHomeScreenConfigurationServer *)v19 connections];
      if (v20 != [(SBHomeScreenConfigurationServer *)v18 connections]&& ([(SBHomeScreenConfigurationServer *)v18 connections]== 2 || [(SBHomeScreenConfigurationServer *)v19 connections]== 2))
      {
        v21 = [(SBHomeScreenConfigurationServer *)v18 connections];
        v22 = self->_storage;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke_2;
        v45[3] = &unk_2783B5E90;
        v48 = a5;
        v49 = v21;
        v46 = v13;
        v47 = self;
        [(SBDisplayItemLayoutAttributesStorage *)v22 enumarateLayoutAttributesForDisplayItem:v12 block:v45];
      }

      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      [(SBDisplayItemLayoutAttributes *)v19 slideOverConfiguration];
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
      v37[0] = v42;
      v37[1] = v43;
      v38 = v44;
      v35[0] = v39;
      v35[1] = v40;
      v36 = v41;
      if (!SBEqualDisplayItemSlideOverConfigurations(v37, v35))
      {
        v23 = self->_storage;
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke_3;
        v28 = &unk_2783B5EB8;
        v24 = v13;
        v30 = self;
        v31 = a5;
        v32 = v39;
        v33 = v40;
        v34 = v41;
        v29 = v24;
        [(SBDisplayItemLayoutAttributesStorage *)v23 enumarateLayoutAttributesForDisplayItem:v12 block:&v25];
      }

      [(SBDisplayItemLayoutAttributesStorage *)self->_storage setLayoutAttributes:v18 forKey:v13, v25, v26, v27, v28];
    }

    else
    {
      v13 = SBLogLayoutAttributes();
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        [SBDisplayItemLayoutAttributesProvider updateLayoutAttributes:v12 ofDisplayItem:&v13->super displayOrdinal:? orientation:?];
      }

      v18 = 0;
    }

    v11 = v18;
  }
}

void __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:a3];
  [*(*(a1 + 32) + 8) setLayoutAttributes:v6 forKey:v5];
}

void __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) isEqual:v7] & 1) == 0 && objc_msgSend(v7, "displayOrdinal") == *(a1 + 48))
  {
    v6 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v5];
    [*(*(a1 + 40) + 8) setLayoutAttributes:v6 forKey:v7];
  }
}

void __105__SBDisplayItemLayoutAttributesProvider_updateLayoutAttributes_ofDisplayItem_displayOrdinal_orientation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isEqual:v5] & 1) == 0 && objc_msgSend(v5, "displayOrdinal") == *(a1 + 48))
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    v7 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v6];
    [*(*(a1 + 40) + 8) setLayoutAttributes:v7 forKey:{v5, v8, v9, v10}];
  }
}

- (id)lastInteractedDisplayItemInAppLayout:(id)a3 orientation:(int64_t)a4 passingTest:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__57;
  v25 = __Block_byref_object_dispose__57;
  v26 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = -1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__SBDisplayItemLayoutAttributesProvider_lastInteractedDisplayItemInAppLayout_orientation_passingTest___block_invoke;
  v14[3] = &unk_2783B5EE0;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  v17 = &v21;
  v18 = v20;
  v19 = a4;
  v11 = v9;
  v16 = v11;
  [v10 enumerate:v14];
  v12 = v22[5];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);

  return v12;
}

void __102__SBDisplayItemLayoutAttributesProvider_lastInteractedDisplayItemInAppLayout_orientation_passingTest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) layoutAttributesForDisplayItem:v7 inAppLayout:*(a1 + 40) displayOrdinal:objc_msgSend(*(a1 + 40) orientation:{"preferredDisplayOrdinal"), *(a1 + 72)}];
  v6 = [(SBHomeScreenConfigurationServer *)v5 queue];

  if ((!*(*(*(a1 + 56) + 8) + 40) || v6 > *(*(*(a1 + 64) + 8) + 24)) && (*(*(a1 + 48) + 16))())
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    *(*(*(a1 + 64) + 8) + 24) = v6;
  }
}

- (id)zOrderedItemsInAppLayout:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 allItems];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v7 allItems];
    }

    else
    {
      v11 = -[SBDisplayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:displayOrdinal:orientation:](self, "layoutAttributesMapForAppLayout:displayOrdinal:orientation:", v7, [v7 preferredDisplayOrdinal], a4);
      v12 = SBDisplayItemDescendingZOrderComparator(v11);
      v13 = [v7 allItems];
      v10 = [v13 sortedArrayUsingComparator:v12];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)lastInteractedDisplayItemsInAppLayout:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 allItems];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v7 allItems];
    }

    else
    {
      v11 = -[SBDisplayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:displayOrdinal:orientation:](self, "layoutAttributesMapForAppLayout:displayOrdinal:orientation:", v7, [v7 preferredDisplayOrdinal], a4);
      v12 = SBDisplayItemDescendingInteractionTimeComparator(v11);
      v13 = [v7 allItems];
      v10 = [v13 sortedArrayUsingComparator:v12];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

- (id)layoutAttributesEntriesForAppLayout:(id)a3
{
  v4 = [a3 allItems];
  v5 = [(SBDisplayItemLayoutAttributesStorage *)self->_storage layoutAttributesMap];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBDisplayItemLayoutAttributesProvider_layoutAttributesEntriesForAppLayout___block_invoke;
  v9[3] = &unk_2783B5F08;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v9];

  return v7;
}

uint64_t __77__SBDisplayItemLayoutAttributesProvider_layoutAttributesEntriesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 displayItem];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)updateLayoutAttributes:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (-[SBDisplayItemLayoutAttributesProvider _shouldUpdateForDisplayOrdinal:](self, "_shouldUpdateForDisplayOrdinal:", [v6 displayOrdinal]))
  {
    [(SBDisplayItemLayoutAttributesStorage *)self->_storage setLayoutAttributes:v7 forKey:v6];
  }
}

- (void)performBlockWithoutUpdating:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDisplayItemLayoutAttributesProvider performBlockWithoutUpdating:];
  }

  self->_isPerformingWithoutUpdating = 1;
  v4[2]();
  self->_isPerformingWithoutUpdating = 0;
}

- (BOOL)_shouldUpdateForDisplayOrdinal:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_isPerformingWithoutUpdating)
  {
    v7 = 0;
  }

  else if (WeakRetained)
  {
    v7 = [WeakRetained shouldUpdateLayoutAttributesForDisplayOrdinal:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (SBDisplayItemLayoutAttributesProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutAttributesForDisplayItem:inAppLayout:displayOrdinal:orientation:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayItemLayoutAttributesProvider layoutAttributesForDisplayItem:inAppLayout:displayOrdinal:orientation:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayItemLayoutAttributesProvider.m" lineNumber:63 description:@"this call must be made on the main thread"];
}

- (void)updateLayoutAttributes:ofDisplayItem:displayOrdinal:orientation:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayItemLayoutAttributesProvider updateLayoutAttributes:ofDisplayItem:displayOrdinal:orientation:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayItemLayoutAttributesProvider.m" lineNumber:120 description:@"this call must be made on the main thread"];
}

- (void)updateLayoutAttributes:(uint64_t)a1 ofDisplayItem:(uint64_t)a2 displayOrdinal:orientation:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayItemLayoutAttributesProvider.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

- (void)updateLayoutAttributes:(void *)a1 ofDisplayItem:(NSObject *)a2 displayOrdinal:orientation:.cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Attempted to update empty layout attributes for (%@)", &v4, 0xCu);
}

- (void)performBlockWithoutUpdating:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDisplayItemLayoutAttributesProvider performBlockWithoutUpdating:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDisplayItemLayoutAttributesProvider.m" lineNumber:248 description:@"this call must be made on the main thread"];
}

@end