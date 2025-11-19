@interface PBFPosterGalleryDataProvider
+ (id)demoPreviewProvider;
- (NSOrderedSet)sectionIdentifiers;
- (PBFPosterGalleryDataProvider)init;
- (id)buildSnapshot;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemsForSectionWithIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)posterPreviews;
- (id)posterPreviewsForPath:(id)a3;
- (id)preparedComplicationPreviewImagesForPreview:(id)a3;
- (id)providerForExtensionIdentifier:(id)a3;
- (id)providerForPath:(id)a3;
- (id)sectionIdentifierForIndex:(int64_t)a3;
- (id)snapshotBundleForRequest:(id)a3;
- (int64_t)sectionTypeForSectionWithIdentifier:(id)a3;
- (unint64_t)numberOfItemsInSectionWithIdentifier:(id)a3;
- (void)_decrementTransactionCount:(BOOL)a3;
- (void)_incrementTransactionCount:(BOOL)a3;
- (void)_notifyObserversDidUpdate;
- (void)_notifyObserversWillUpdate;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)fetchComplicationPreviewImagesForPreview:(id)a3 complicationSnapshotReceivedHandler:(id)a4 errorHandler:(id)a5 completion:(id)a6;
- (void)invalidate;
@end

@implementation PBFPosterGalleryDataProvider

+ (id)demoPreviewProvider
{
  if (demoPreviewProvider_onceToken != -1)
  {
    +[PBFPosterGalleryDataProvider demoPreviewProvider];
  }

  v3 = demoPreviewProvider_demoPreviewProvider;

  return v3;
}

void __51__PBFPosterGalleryDataProvider_demoPreviewProvider__block_invoke()
{
  v55[6] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Smart Album" description:&stru_282CD3858];
  v55[0] = v1;
  v2 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Emoji" description:&stru_282CD3858];
  v55[1] = v2;
  v3 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Weather" description:&stru_282CD3858];
  v55[2] = v3;
  v4 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Collections" description:&stru_282CD3858];
  v55[3] = v4;
  v5 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Pride" description:&stru_282CD3858];
  v55[4] = v5;
  v6 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:@"Astronomy" description:&stru_282CD3858];
  v55[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:6];
  [v0 addSectionWithIdentifier:@"Featured Posters" localizedTitle:@"Featured Posters" type:1 items:v7];

  v8 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v54[0] = v8;
  v9 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v54[1] = v9;
  v10 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v54[2] = v10;
  v11 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v54[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
  v13 = v0;
  [v0 addSectionWithIdentifier:@"Featured Photos" localizedTitle:@"Featured Photos" type:0 items:v12];

  v14 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v53[0] = v14;
  v15 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v53[1] = v15;
  v16 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v53[2] = v16;
  v17 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v53[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  [v0 addSectionWithIdentifier:@"Weather & Astronomy" localizedTitle:@"Weather & Astronomy" type:0 items:v18];

  v19 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v52[0] = v19;
  v20 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v52[1] = v20;
  v21 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v52[2] = v21;
  v22 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v52[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  [v0 addSectionWithIdentifier:@"Emoji" localizedTitle:@"Emoji" type:0 items:v23];

  v24 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v51[0] = v24;
  v25 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v51[1] = v25;
  v26 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v51[2] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
  [v13 addSectionWithIdentifier:@"Pride" localizedTitle:@"Pride" type:0 items:v27];

  v28 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:@"This face is inspired by the colors of the Pan-African Flag. The shapes change as you move, creating a face that's unique to you."];
  v50 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  [v13 addSectionWithIdentifier:@"Unity" localizedTitle:@"Unity" type:2 items:v29];

  v30 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v49[0] = v30;
  v31 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v49[1] = v31;
  v32 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v49[2] = v32;
  v33 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v49[3] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  [v13 addSectionWithIdentifier:@"Collections" localizedTitle:@"Collections" type:0 items:v34];

  v35 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v48[0] = v35;
  v36 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v48[1] = v36;
  v37 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v48[2] = v37;
  v38 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v48[3] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  [v13 addSectionWithIdentifier:@"Color" localizedTitle:@"Color" type:0 items:v39];

  v40 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v41 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858, v40];
  v47[1] = v41;
  v42 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v47[2] = v42;
  v43 = [PBFGenericPosterPreview testPosterPreviewWithLocalizedTitle:&stru_282CD3858 description:&stru_282CD3858];
  v47[3] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  [v13 addSectionWithIdentifier:@"Recents" localizedTitle:@"Recents" type:0 items:v44];

  v45 = [v13 copy];
  v46 = demoPreviewProvider_demoPreviewProvider;
  demoPreviewProvider_demoPreviewProvider = v45;
}

- (PBFPosterGalleryDataProvider)init
{
  v20.receiver = self;
  v20.super_class = PBFPosterGalleryDataProvider;
  v2 = [(PBFPosterGalleryDataProvider *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    orderedSectionIdentifiers = v2->_orderedSectionIdentifiers;
    v2->_orderedSectionIdentifiers = v3;

    v5 = objc_opt_new();
    sectionIdentifierToSectionType = v2->_sectionIdentifierToSectionType;
    v2->_sectionIdentifierToSectionType = v5;

    v7 = objc_opt_new();
    sectionIdentifierToItems = v2->_sectionIdentifierToItems;
    v2->_sectionIdentifierToItems = v7;

    v9 = objc_opt_new();
    posterPreviewForPosterUniqueIdentifier = v2->_posterPreviewForPosterUniqueIdentifier;
    v2->_posterPreviewForPosterUniqueIdentifier = v9;

    v11 = objc_opt_new();
    sectionIdentifierToLocalizedTitle = v2->_sectionIdentifierToLocalizedTitle;
    v2->_sectionIdentifierToLocalizedTitle = v11;

    v13 = objc_opt_new();
    sectionIdentifierToLocalizedSubtitle = v2->_sectionIdentifierToLocalizedSubtitle;
    v2->_sectionIdentifierToLocalizedSubtitle = v13;

    v15 = objc_opt_new();
    outstandingSnapshotRequests = v2->_outstandingSnapshotRequests;
    v2->_outstandingSnapshotRequests = v15;

    v17 = objc_opt_new();
    outstandingComplicationSnapshotRequests = v2->_outstandingComplicationSnapshotRequests;
    v2->_outstandingComplicationSnapshotRequests = v17;
  }

  return v2;
}

- (void)dealloc
{
  [(PBFPosterGalleryDataProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterGalleryDataProvider;
  [(PBFPosterGalleryDataProvider *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PBFPosterGalleryDataProvider allocWithZone:?]];
  v5 = [(NSMutableOrderedSet *)self->_orderedSectionIdentifiers mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setOrderedSectionIdentifiers:v5];

  v6 = [(NSMutableDictionary *)self->_sectionIdentifierToItems mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToItems:v6];

  v7 = [(NSMutableDictionary *)self->_sectionIdentifierToSectionType mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToSectionType:v7];

  v8 = [(NSMutableDictionary *)self->_sectionIdentifierToLocalizedTitle mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToLocalizedTitle:v8];

  v9 = [(NSMutableDictionary *)self->_sectionIdentifierToLocalizedSubtitle mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToLocalizedSubtitle:v9];

  v10 = [(NSMutableDictionary *)self->_posterPreviewForPosterUniqueIdentifier mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setPosterPreviewForPosterUniqueIdentifier:v10];

  [(PBFPosterGalleryDataProvider *)v4 setComplicationSnapshotProvider:self->_complicationSnapshotProvider];
  [(PBFPosterGalleryDataProvider *)v4 setSnapshotProvider:self->_snapshotProvider];
  [(PBFPosterGalleryDataProvider *)v4 setExtensionProvider:self->_extensionProvider];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PBFPosterGalleryDataProvider *)[PBFGalleryMutableDataProvider allocWithZone:?]];
  v5 = [(NSMutableOrderedSet *)self->_orderedSectionIdentifiers mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setOrderedSectionIdentifiers:v5];

  v6 = [(NSMutableDictionary *)self->_sectionIdentifierToItems mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToItems:v6];

  v7 = [(NSMutableDictionary *)self->_sectionIdentifierToSectionType mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToSectionType:v7];

  v8 = [(NSMutableDictionary *)self->_sectionIdentifierToLocalizedTitle mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToLocalizedTitle:v8];

  v9 = [(NSMutableDictionary *)self->_sectionIdentifierToLocalizedSubtitle mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setSectionIdentifierToLocalizedSubtitle:v9];

  v10 = [(NSMutableDictionary *)self->_posterPreviewForPosterUniqueIdentifier mutableCopy];
  [(PBFPosterGalleryDataProvider *)v4 setPosterPreviewForPosterUniqueIdentifier:v10];

  [(PBFPosterGalleryDataProvider *)v4 setComplicationSnapshotProvider:self->_complicationSnapshotProvider];
  [(PBFPosterGalleryDataProvider *)v4 setSnapshotProvider:self->_snapshotProvider];
  [(PBFPosterGalleryDataProvider *)v4 setExtensionProvider:self->_extensionProvider];
  return v4;
}

- (NSOrderedSet)sectionIdentifiers
{
  v2 = [(NSMutableOrderedSet *)self->_orderedSectionIdentifiers copy];

  return v2;
}

- (id)sectionIdentifierForIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSMutableOrderedSet *)self->_orderedSectionIdentifiers count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableOrderedSet *)self->_orderedSectionIdentifiers objectAtIndex:a3];
    }
  }

  return v6;
}

- (id)itemsForSectionWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sectionIdentifierToItems objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (unint64_t)numberOfItemsInSectionWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sectionIdentifierToItems objectForKey:a3];
  v4 = [v3 count];

  return v4;
}

- (id)posterPreviewsForPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  posterPreviewForPosterUniqueIdentifier = self->_posterPreviewForPosterUniqueIdentifier;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __54__PBFPosterGalleryDataProvider_posterPreviewsForPath___block_invoke;
  v14 = &unk_2782C9540;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [(NSMutableDictionary *)posterPreviewForPosterUniqueIdentifier enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

void __54__PBFPosterGalleryDataProvider_posterPreviewsForPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 posterDescriptorLookupInfo];
  v5 = [v4 posterDescriptorPath];
  v6 = [v5 identity];
  v7 = [*(a1 + 32) identity];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v9];
  }
}

- (id)posterPreviews
{
  v3 = objc_opt_new();
  posterPreviewForPosterUniqueIdentifier = self->_posterPreviewForPosterUniqueIdentifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PBFPosterGalleryDataProvider_posterPreviews__block_invoke;
  v8[3] = &unk_2782C9568;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)posterPreviewForPosterUniqueIdentifier enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (int64_t)sectionTypeForSectionWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sectionIdentifierToSectionType objectForKey:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)buildSnapshot
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFB890]);
  v4 = [(NSMutableOrderedSet *)self->_orderedSectionIdentifiers array];
  [v3 appendSectionsWithIdentifiers:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_orderedSectionIdentifiers;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_sectionIdentifierToItems objectForKey:v10, v14];
        v12 = [v11 valueForKey:@"previewUniqueIdentifier"];

        [v3 appendItemsWithIdentifiers:v12 intoSectionWithIdentifier:v10];
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)_notifyObserversWillUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 dataProviderWillUpdate:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversDidUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_transactionsCount <= 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSHashTable *)self->_observers copy];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 dataProviderDidUpdate:self];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)_incrementTransactionCount:(BOOL)a3
{
  transactionsCount = self->_transactionsCount;
  self->_transactionsCount = transactionsCount + 1;
  if (transactionsCount)
  {
    v4 = 1;
  }

  else
  {
    v4 = !a3;
  }

  if (!v4)
  {
    [(PBFPosterGalleryDataProvider *)self _notifyObserversWillUpdate];
  }
}

- (void)_decrementTransactionCount:(BOOL)a3
{
  v3 = a3;
  p_transactionsCount = &self->_transactionsCount;
  transactionsCount = self->_transactionsCount;
  v7 = transactionsCount - 1;
  self->_transactionsCount = transactionsCount - 1;
  if (transactionsCount <= 0)
  {
    [(PBFPosterGalleryDataProvider *)a2 _decrementTransactionCount:p_transactionsCount, &v8];
    v7 = v8;
  }

  if (v7 <= 0)
  {
    *p_transactionsCount = 0;
    p_transactionsCount[1] = 0;
    if (v3)
    {

      [(PBFPosterGalleryDataProvider *)self _notifyObserversDidUpdate];
    }
  }
}

- (id)snapshotBundleForRequest:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterGalleryDataProvider *)self snapshotProvider];
  v6 = [v5 snapshotBundleForRequest:v4];

  if (([v6 isFinished] & 1) == 0)
  {
    v7 = self->_outstandingSnapshotRequests;
    v8 = self->_outstandingSnapshotRequests;
    objc_sync_enter(v8);
    [(NSMutableSet *)v7 addObject:v4];
    objc_sync_exit(v8);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PBFPosterGalleryDataProvider_snapshotBundleForRequest___block_invoke;
    aBlock[3] = &unk_2782C58B0;
    v20 = v7;
    v21 = v4;
    v9 = v7;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__PBFPosterGalleryDataProvider_snapshotBundleForRequest___block_invoke_2;
    v17[3] = &unk_2782C9590;
    v18 = v10;
    v15 = MEMORY[0x277D85DD0];
    v16 = v18;
    v11 = MEMORY[0x277D3EC60];
    v12 = v18;
    v13 = [v11 mainThreadScheduler];
    [v6 addSuccessBlock:v17 andFailureBlock:&v15 scheduler:v13];
  }

  return v6;
}

void __57__PBFPosterGalleryDataProvider_snapshotBundleForRequest___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) removeObject:*(a1 + 40)];
  objc_sync_exit(obj);
}

- (void)fetchComplicationPreviewImagesForPreview:(id)a3 complicationSnapshotReceivedHandler:(id)a4 errorHandler:(id)a5 completion:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  *(&v29 + 1) = a4;
  *&v29 = a5;
  v26 = a6;
  v23 = v9;
  v27 = [PBFComplicationSnapshotRequest requestsForPreview:v9];
  v24 = self->_outstandingComplicationSnapshotRequests;
  if ([v27 count])
  {
    v10 = [v27 mutableCopy];
    v11 = [(PBFPosterGalleryDataProvider *)self complicationSnapshotProvider];
    v28 = [v11 preparedComplicationSnapshotsForRequests:v10];
    v12 = &v39;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = [v28 keyEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v14)
    {
      v12 = *v40;
      a5 = (v29 != 0);
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          [v10 removeObject:v16];
          if (v29 != 0)
          {
            v17 = [v28 objectForKey:v16];
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke;
            v36[3] = &unk_2782C6F68;
            v18 = v29;
            v36[4] = v16;
            v37 = v18;
            v38 = *(&v29 + 1);
            v19 = [MEMORY[0x277D3EC60] mainThreadScheduler];
            [v17 addCompletionBlock:v36 scheduler:v19];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v14);
    }

    if ([v10 count])
    {
      v20 = v24;
      objc_sync_enter(v20);
      [(NSMutableSet *)v20 addObjectsFromArray:v10];
      objc_sync_exit(v20);

      v21 = [(PBFPosterGalleryDataProvider *)self complicationSnapshotProvider];
      if (*(&v29 + 1))
      {
        v22 = v33;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_2;
        v33[3] = &unk_2782C95B8;
        v12 = &v34;
        v34 = v20;
        a5 = &v35;
        v35 = *(&v29 + 1);
      }

      else
      {
        v22 = 0;
      }

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_3;
      v30[3] = &unk_2782C95E0;
      v31 = v20;
      v32 = v29;
      [v21 fetchComplicationSnapshotsForRequests:v10 complicationSnapshotReceivedHandler:v22 errorHandler:v30 completionHandler:v26];

      if (*(&v29 + 1))
      {
      }

      goto LABEL_21;
    }
  }

  if (v26)
  {
    v26[2](v26, 0);
  }

LABEL_21:
}

void __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

void __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) removeObject:v7];
  objc_sync_exit(v6);

  (*(*(a1 + 40) + 16))();
}

void __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  [*(a1 + 32) removeObject:v5];
  objc_sync_exit(v7);

  v8 = PBFLogGallery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_3_cold_1(v5, v6, v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v6);
  }
}

- (id)preparedComplicationPreviewImagesForPreview:(id)a3
{
  v4 = [PBFComplicationSnapshotRequest requestsForPreview:a3];
  v5 = [(PBFPosterGalleryDataProvider *)self complicationSnapshotProvider];
  v6 = [v5 preparedComplicationSnapshotsForRequests:v4];

  return v6;
}

- (id)providerForPath:(id)a3
{
  v4 = [a3 identity];
  v5 = [v4 provider];
  v6 = [(PBFPosterGalleryDataProvider *)self providerForExtensionIdentifier:v5];

  return v6;
}

- (id)providerForExtensionIdentifier:(id)a3
{
  extensionProvider = self->_extensionProvider;
  v4 = a3;
  v5 = [(PFPosterExtensionProvider *)extensionProvider extensionForIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)invalidate
{
  obj = self->_outstandingSnapshotRequests;
  objc_sync_enter(obj);
  if ([(NSMutableSet *)self->_outstandingSnapshotRequests count])
  {
    v3 = [(PBFPosterGalleryDataProvider *)self snapshotProvider];
    [v3 cancelRequests:self->_outstandingSnapshotRequests reason:@"PBFPosterGalleryDataProvider invalidated"];

    [(NSMutableSet *)self->_outstandingSnapshotRequests removeAllObjects];
  }

  objc_sync_exit(obj);

  obja = self->_outstandingComplicationSnapshotRequests;
  objc_sync_enter(obja);
  if ([(NSMutableSet *)self->_outstandingComplicationSnapshotRequests count])
  {
    v4 = [(PBFPosterGalleryDataProvider *)self complicationSnapshotProvider];
    [v4 cancelRequests:self->_outstandingComplicationSnapshotRequests];

    [(NSMutableSet *)self->_outstandingComplicationSnapshotRequests removeAllObjects];
  }

  objc_sync_exit(obja);
}

- (void)_decrementTransactionCount:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"PBFPosterGalleryDataProvider.m" lineNumber:334 description:@"Transactions unbalanced!"];

  *a4 = *a3;
}

void __133__PBFPosterGalleryDataProvider_fetchComplicationPreviewImagesForPreview_complicationSnapshotReceivedHandler_errorHandler_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21B526000, log, OS_LOG_TYPE_ERROR, "Error fetching request %{public}@: %{public}@", &v3, 0x16u);
}

@end