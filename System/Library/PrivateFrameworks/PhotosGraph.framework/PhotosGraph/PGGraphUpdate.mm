@interface PGGraphUpdate
+ (id)loggingConnection;
- (BOOL)didProcessNodes;
- (BOOL)didSocialGroupsChanges;
- (BOOL)hasAnythingToDo;
- (BOOL)hasHighlightDayGroupsToInsert;
- (BOOL)hasPersonsToUpdate;
- (BOOL)hasUpdatedPersonNodes;
- (BOOL)hasUpdatedPersonNodesUnrelatedToMomentChange;
- (NSSet)contactIdentifiersOfPersonsToUpdate;
- (NSSet)highlightDayGroupsToIngest;
- (NSSet)highlightDaysToIngest;
- (NSSet)identifiersForMemoriesRelatedToDeletedMoments;
- (NSSet)identifiersForMomentRelatedToDeletedPersons;
- (NSSet)identifiersForMomentRelatedToUpdatedPersons;
- (NSSet)localIdentifiersOfPersonsToDelete;
- (NSSet)localIdentifiersOfPersonsToInsert;
- (NSSet)localIdentifiersOfPersonsToUpdate;
- (NSSet)momentsToIngest;
- (NSSet)uuidsOfHighlightsToDelete;
- (NSSet)uuidsOfHighlightsToInsert;
- (NSSet)uuidsOfMomentsToDelete;
- (NSSet)uuidsOfMomentsToInsert;
- (NSSet)uuidsOfMomentsToUpdate;
- (NSString)description;
- (PGGraphUpdate)initWithPhotoLibrary:(id)library updateType:(int64_t)type changeStreamToken:(id)token;
- (id)_fetchMomentsWithUUIDs:(id)ds;
- (id)_fetchedHighlightsWithHighlightUUIDs:(id)ds;
- (id)cachedDataModelObjectForGraphChange:(id)change;
- (id)initForChangeStreamResetInPhotoLibrary:(id)library updateType:(int64_t)type;
- (id)momentChangesDateInterval;
- (id)momentNodesToProcessInGraph:(id)graph forMomentUpdateTypes:(unint64_t)types includeInsertedNodes:(BOOL)nodes;
- (id)momentsToProcessForMomentUpdateTypes:(unint64_t)types includeMomentsToIngest:(BOOL)ingest;
- (id)uuidsOfMomentsToUpdateForMomentUpdateTypes:(unint64_t)types;
- (unint64_t)numberOfConsolidatedChanges;
- (void)_consolidate;
- (void)_consolidateIfNeeded;
- (void)_registerHighlights:(id)highlights;
- (void)_registerMoments:(id)moments;
- (void)_unregisterHighlightsForHighlightUUIDs:(id)ds;
- (void)_unregisterMomentsForMomentUUIDs:(id)ds;
- (void)addChange:(id)change;
- (void)addChanges:(id)changes;
- (void)clearInsertedAndUpdatedPersonNodes;
- (void)clearUpdatedPersonNodesUnrelatedToMomentChange;
- (void)enumerateConsolidatedChanges:(id)changes;
- (void)prepareForPostProcessingWithGraph:(id)graph;
- (void)registerInsertedAndUpdatedPersonNodes:(id)nodes;
- (void)registerLocationOfInterestVisitToResolve:(id)resolve forMomentUUID:(id)d;
- (void)registerPublicEventNode:(id)node withConsolidatedAddress:(id)address toResolveBusinessItemMuid:(unint64_t)muid;
- (void)registerUpdatedPersonNodesUnrelatedToMomentChange:(id)change;
- (void)updatedHighlightNode:(id)node forUpdateChangeType:(unint64_t)type;
- (void)updatedMomentNode:(id)node forUpdateChangeType:(unint64_t)type;
@end

@implementation PGGraphUpdate

- (id)momentChangesDateInterval
{
  v32 = *MEMORY[0x277D85DE8];
  if (![(PGGraphUpdate *)self isResumingFullAnalysis])
  {
    [(PGGraphUpdate *)self _consolidateIfNeeded];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v6 = [(PGGraphUpdate *)self momentsToProcessForMomentUpdateTypes:31 includeMomentsToIngest:1];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        v11 = distantPast;
        v12 = distantFuture;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v23 + 1) + 8 * v10);
          universalStartDate = [v13 universalStartDate];
          distantFuture = [v12 earlierDate:universalStartDate];

          universalEndDate = [v13 universalEndDate];
          distantPast = [v11 laterDate:universalEndDate];

          ++v10;
          v11 = distantPast;
          v12 = distantFuture;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }

    distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
    v17 = distantFuture2;
    if (distantFuture == distantFuture2)
    {
    }

    else
    {
      distantPast2 = [MEMORY[0x277CBEAA8] distantPast];

      if (distantPast != distantPast2)
      {
        loggingConnection = [objc_opt_class() loggingConnection];
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = distantFuture;
          v29 = 2112;
          v30 = distantPast;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "momentChangesDateInterval: returning date interval from earliest (%@) latest (%@) dates", buf, 0x16u);
        }

        v4 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:distantFuture endDate:distantPast];
LABEL_21:

        goto LABEL_22;
      }
    }

    loggingConnection2 = [objc_opt_class() loggingConnection];
    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = distantFuture;
      v29 = 2112;
      v30 = distantPast;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "momentChangesDateInterval: returning nil since we do not have earliest (%@) or latest (%@) dates", buf, 0x16u);
    }

    v4 = 0;
    goto LABEL_21;
  }

  distantFuture = [objc_opt_class() loggingConnection];
  if (os_log_type_enabled(distantFuture, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, distantFuture, OS_LOG_TYPE_DEFAULT, "momentChangesDateInterval: returning nil since we're resuming full analysis", buf, 2u);
  }

  v4 = 0;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSSet)identifiersForMemoriesRelatedToDeletedMoments
{
  relatedDetails = [(PGGraphUpdate *)self relatedDetails];
  identifiersForMemoriesRelatedToDeletedMoments = [relatedDetails identifiersForMemoriesRelatedToDeletedMoments];

  return identifiersForMemoriesRelatedToDeletedMoments;
}

- (NSSet)identifiersForMomentRelatedToDeletedPersons
{
  relatedDetails = [(PGGraphUpdate *)self relatedDetails];
  identifiersForMomentRelatedToDeletedPersons = [relatedDetails identifiersForMomentRelatedToDeletedPersons];

  return identifiersForMomentRelatedToDeletedPersons;
}

- (NSSet)identifiersForMomentRelatedToUpdatedPersons
{
  relatedDetails = [(PGGraphUpdate *)self relatedDetails];
  identifiersForMomentRelatedToUpdatedPersons = [relatedDetails identifiersForMomentRelatedToUpdatedPersons];

  return identifiersForMomentRelatedToUpdatedPersons;
}

void __95__PGGraphUpdate_highlightsToProcessForKind_withHighlightUpdateTypes_includeHighlightsToIngest___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 type] == 9)
  {
    v4 = v3;
    if ((*(a1 + 48) & [v4 updateTypes]) != 0)
    {
      v5 = [v4 highlightUUID];
      v6 = [*(a1 + 32) highlightForHighlightUUID:v5];
      v7 = v6;
      if (v6)
      {
        if ([v6 kind] == *(a1 + 56))
        {
          [*(a1 + 40) addObject:v7];
        }
      }

      else
      {
        v8 = *(a1 + 32);
        v9 = [objc_opt_class() loggingConnection];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v11 = 138412546;
          v12 = v5;
          v13 = 2112;
          v14 = v4;
          _os_log_fault_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_FAULT, "Consolidate can't find highlight UUID (%@) for change %@", &v11, 0x16u);
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_fetchedHighlightsWithHighlightUUIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_highlightByHighlightUUID objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v5;
          v16 = v14;
        }

        else
        {
          v15 = v7;
          v16 = v13;
        }

        [v15 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid in %@", v7];
    [librarySpecificFetchOptions setInternalPredicate:v18];

    v19 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
    [(PGGraphUpdate *)self _registerHighlights:v19];
    fetchedObjects = [v19 fetchedObjects];
    [v5 addObjectsFromArray:fetchedObjects];
  }

  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_unregisterHighlightsForHighlightUUIDs:(id)ds
{
  highlightByHighlightUUID = self->_highlightByHighlightUUID;
  dsCopy = ds;
  allObjects = [dsCopy allObjects];
  [(NSMutableDictionary *)highlightByHighlightUUID removeObjectsForKeys:allObjects];

  [(NSMutableSet *)self->_deletedHighlightUUIDsForValidityCheck unionSet:dsCopy];
}

- (void)_registerHighlights:(id)highlights
{
  v17 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [highlightsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(highlightsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        uuid = [v9 uuid];
        [(NSMutableDictionary *)self->_highlightByHighlightUUID setObject:v9 forKeyedSubscript:uuid];
      }

      v6 = [highlightsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasHighlightDayGroupsToInsert
{
  highlightDayGroupsToIngest = [(PGGraphUpdate *)self highlightDayGroupsToIngest];
  v3 = [highlightDayGroupsToIngest count] != 0;

  return v3;
}

- (NSSet)highlightDayGroupsToIngest
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  highlightsToInsertByHighlightKind = self->_highlightsToInsertByHighlightKind;

  return [(NSMutableDictionary *)highlightsToInsertByHighlightKind objectForKeyedSubscript:&unk_284483F60];
}

- (NSSet)highlightDaysToIngest
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  highlightsToInsertByHighlightKind = self->_highlightsToInsertByHighlightKind;

  return [(NSMutableDictionary *)highlightsToInsertByHighlightKind objectForKeyedSubscript:&unk_284483F48];
}

- (NSSet)uuidsOfHighlightsToDelete
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  uuidsOfHighlightsToDelete = self->_uuidsOfHighlightsToDelete;

  return uuidsOfHighlightsToDelete;
}

- (NSSet)uuidsOfHighlightsToInsert
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  uuidsOfHighlightsToInsert = self->_uuidsOfHighlightsToInsert;

  return uuidsOfHighlightsToInsert;
}

- (void)clearUpdatedPersonNodesUnrelatedToMomentChange
{
  v3 = [MEMORY[0x277CBEB98] set];
  updatedPersonNodesUnrelatedToMomentChange = self->_updatedPersonNodesUnrelatedToMomentChange;
  self->_updatedPersonNodesUnrelatedToMomentChange = v3;
}

- (void)clearInsertedAndUpdatedPersonNodes
{
  v3 = [MEMORY[0x277CBEB98] set];
  insertedAndUpdatedPersonNodes = self->_insertedAndUpdatedPersonNodes;
  self->_insertedAndUpdatedPersonNodes = v3;
}

- (void)registerUpdatedPersonNodesUnrelatedToMomentChange:(id)change
{
  updatedPersonNodesUnrelatedToMomentChange = self->_updatedPersonNodesUnrelatedToMomentChange;
  if (updatedPersonNodesUnrelatedToMomentChange)
  {
    v5 = [(NSSet *)updatedPersonNodesUnrelatedToMomentChange setByAddingObjectsFromSet:change];
  }

  else
  {
    v5 = [change copy];
  }

  v6 = self->_updatedPersonNodesUnrelatedToMomentChange;
  self->_updatedPersonNodesUnrelatedToMomentChange = v5;
}

- (void)registerInsertedAndUpdatedPersonNodes:(id)nodes
{
  insertedAndUpdatedPersonNodes = self->_insertedAndUpdatedPersonNodes;
  if (insertedAndUpdatedPersonNodes)
  {
    v5 = [(NSSet *)insertedAndUpdatedPersonNodes setByAddingObjectsFromSet:nodes];
  }

  else
  {
    v5 = [nodes copy];
  }

  v6 = self->_insertedAndUpdatedPersonNodes;
  self->_insertedAndUpdatedPersonNodes = v5;
}

- (void)registerPublicEventNode:(id)node withConsolidatedAddress:(id)address toResolveBusinessItemMuid:(unint64_t)muid
{
  v8 = MEMORY[0x277CCABB0];
  addressCopy = address;
  nodeCopy = node;
  v13 = [v8 numberWithUnsignedLongLong:muid];
  v11 = [[PGResolvablePublicEventBusinessItem alloc] initWithPublicEventNode:nodeCopy consolidatedAddress:addressCopy businessItemMuid:muid];

  v12 = [(NSMutableDictionary *)self->_registeredResolvableItemsByBusinessItemMuid objectForKeyedSubscript:v13];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_registeredResolvableItemsByBusinessItemMuid setObject:v12 forKeyedSubscript:v13];
  }

  [v12 addObject:v11];
}

- (void)registerLocationOfInterestVisitToResolve:(id)resolve forMomentUUID:(id)d
{
  resolveCopy = resolve;
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_registeredLocationOfInterestVisitsToResolveByMomentUUID objectForKeyedSubscript:dCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_registeredLocationOfInterestVisitsToResolveByMomentUUID setObject:v7 forKeyedSubscript:dCopy];
  }

  [v7 addObject:resolveCopy];
}

- (id)momentNodesToProcessInGraph:(id)graph forMomentUpdateTypes:(unint64_t)types includeInsertedNodes:(BOOL)nodes
{
  nodesCopy = nodes;
  v26 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if ([(PGGraphUpdate *)self isResumingFullAnalysis])
  {
    momentNodes = [graphCopy momentNodes];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v11 = v10;
    if (nodesCopy)
    {
      [v10 unionSet:self->_insertedMomentNodes];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_updateMomentNodesByUpdateType;
    v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (([v17 unsignedIntegerValue] & types) != 0)
          {
            v18 = [(NSMutableDictionary *)self->_updateMomentNodesByUpdateType objectForKeyedSubscript:v17];
            [v11 addObjectsFromArray:v18];
          }
        }

        v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    momentNodes = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v11 graph:graphCopy];
  }

  v19 = *MEMORY[0x277D85DE8];

  return momentNodes;
}

- (id)momentsToProcessForMomentUpdateTypes:(unint64_t)types includeMomentsToIngest:(BOOL)ingest
{
  ingestCopy = ingest;
  if (!self->_consolidatedChanges)
  {
    loggingConnection = [objc_opt_class() loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "GraphLiveUpdate - expected GraphUpdate instance to be consolidated before this method is called.", buf, 2u);
    }
  }

  v8 = [MEMORY[0x277CBEB58] set];
  if (ingestCopy)
  {
    momentsToIngest = [(PGGraphUpdate *)self momentsToIngest];
    [v8 unionSet:momentsToIngest];
  }

  v10 = [MEMORY[0x277CBEB58] set];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __77__PGGraphUpdate_momentsToProcessForMomentUpdateTypes_includeMomentsToIngest___block_invoke;
  v24 = &unk_2788854B0;
  typesCopy = types;
  selfCopy = self;
  v11 = v8;
  v26 = v11;
  v12 = v10;
  v27 = v12;
  [(PGGraphUpdate *)self enumerateConsolidatedChanges:&v21];
  if ([v12 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v14 = MEMORY[0x277CD98F8];
    allObjects = [v12 allObjects];
    v16 = [v14 fetchAssetCollectionsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

LABEL_9:
    [(PGGraphUpdate *)self _registerMoments:v16];
    fetchedObjects = [v16 fetchedObjects];
    [v11 addObjectsFromArray:fetchedObjects];

    goto LABEL_13;
  }

  if ([(PGGraphUpdate *)self isResumingFullAnalysis]&& [(PGGraphUpdate *)self updateType]== 4)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v16 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions];
    goto LABEL_9;
  }

LABEL_13:
  v18 = v27;
  v19 = v11;

  return v11;
}

void __77__PGGraphUpdate_momentsToProcessForMomentUpdateTypes_includeMomentsToIngest___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 type] == 3;
  v4 = v11;
  if (v3)
  {
    v5 = v11;
    if ((*(a1 + 56) & [v5 updateTypes]) != 0)
    {
      v6 = [v5 momentUUID];
      v7 = [*(a1 + 32) momentByMomentUUID];
      v8 = [v7 objectForKeyedSubscript:v6];

      if (v8)
      {
        [*(a1 + 40) addObject:v8];
      }

      else
      {
        v9 = *(a1 + 48);
        v10 = [MEMORY[0x277CD98F8] localIdentifierWithUUID:v6];
        [v9 addObject:v10];
      }
    }

    v4 = v11;
  }
}

- (id)uuidsOfMomentsToUpdateForMomentUpdateTypes:(unint64_t)types
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PGGraphUpdate_uuidsOfMomentsToUpdateForMomentUpdateTypes___block_invoke;
  v8[3] = &unk_278885488;
  typesCopy = types;
  v6 = v5;
  v9 = v6;
  [(PGGraphUpdate *)self enumerateConsolidatedChanges:v8];

  return v6;
}

void __60__PGGraphUpdate_uuidsOfMomentsToUpdateForMomentUpdateTypes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 type] == 3;
  v4 = v8;
  if (v3)
  {
    v5 = v8;
    if ((*(a1 + 40) & [v5 updateTypes]) != 0)
    {
      v6 = *(a1 + 32);
      v7 = [v5 momentUUID];
      [v6 addObject:v7];
    }

    v4 = v8;
  }
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __28__PGGraphUpdate_description__block_invoke;
  v50[3] = &unk_278885460;
  v4 = string;
  v51 = v4;
  [(PGGraphUpdate *)self enumerateConsolidatedChanges:v50];
  if ([(NSSet *)self->_consolidatedChanges count])
  {
    v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"[%@]", v4];

    v4 = v5;
  }

  localIdentifiersOfPersonsToDelete = [(PGGraphUpdate *)self localIdentifiersOfPersonsToDelete];
  v7 = [localIdentifiersOfPersonsToDelete count];

  if (v7)
  {
    localIdentifiersOfPersonsToDelete2 = [(PGGraphUpdate *)self localIdentifiersOfPersonsToDelete];
    [v4 appendFormat:@"\nPersons to delete:\n%@", localIdentifiersOfPersonsToDelete2];
  }

  localIdentifiersOfPersonsToInsert = [(PGGraphUpdate *)self localIdentifiersOfPersonsToInsert];
  v10 = [localIdentifiersOfPersonsToInsert count];

  if (v10)
  {
    localIdentifiersOfPersonsToInsert2 = [(PGGraphUpdate *)self localIdentifiersOfPersonsToInsert];
    [v4 appendFormat:@"\nPersons to insert:\n%@", localIdentifiersOfPersonsToInsert2];
  }

  uuidsOfHighlightsToDelete = [(PGGraphUpdate *)self uuidsOfHighlightsToDelete];
  v13 = [uuidsOfHighlightsToDelete count];

  if (v13)
  {
    uuidsOfHighlightsToDelete2 = [(PGGraphUpdate *)self uuidsOfHighlightsToDelete];
    [v4 appendFormat:@"\nHighlights to delete:\n%@", uuidsOfHighlightsToDelete2];
  }

  uuidsOfHighlightsToInsert = [(PGGraphUpdate *)self uuidsOfHighlightsToInsert];
  v16 = [uuidsOfHighlightsToInsert count];

  if (v16)
  {
    uuidsOfHighlightsToInsert2 = [(PGGraphUpdate *)self uuidsOfHighlightsToInsert];
    [v4 appendFormat:@"\nHighlights to insert:\n%@", uuidsOfHighlightsToInsert2];
  }

  uuidsOfMomentsToDelete = [(PGGraphUpdate *)self uuidsOfMomentsToDelete];
  v19 = [uuidsOfMomentsToDelete count];

  if (v19)
  {
    uuidsOfMomentsToDelete2 = [(PGGraphUpdate *)self uuidsOfMomentsToDelete];
    [v4 appendFormat:@"\nMoments to delete:\n%@", uuidsOfMomentsToDelete2];
  }

  uuidsOfMomentsToInsert = [(PGGraphUpdate *)self uuidsOfMomentsToInsert];
  v22 = [uuidsOfMomentsToInsert count];

  if (v22)
  {
    uuidsOfMomentsToInsert2 = [(PGGraphUpdate *)self uuidsOfMomentsToInsert];
    [v4 appendFormat:@"\nMoments to insert:\n%@", uuidsOfMomentsToInsert2];
  }

  if ([(PGGraphUpdate *)self hasAnythingToDo])
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"- [Moment]\tinserts: %ld\tdeletes: %ld\tupdates: %ld\n", -[NSSet count](self->_momentsToIngest, "count"), -[NSSet count](self->_uuidsOfMomentsToDelete, "count"), -[NSSet count](self->_uuidsOfMomentsToUpdate, "count")];
    v25 = MEMORY[0x277CCACA8];
    v26 = [(NSMutableDictionary *)self->_highlightsToInsertByHighlightKind objectForKeyedSubscript:&unk_284483F48];
    v27 = [v25 stringWithFormat:@"- [Highlight]\tinserts: %ld\tdeletes: %ld\tupdates: %ld\n", objc_msgSend(v26, "count"), -[NSSet count](self->_uuidsOfHighlightsToDelete, "count"), -[NSSet count](self->_uuidsOfHighlightsToUpdate, "count")];

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"- [Person]\tinserts: %ld\tdeletes: %ld\tupdates: %ld\n", -[NSSet count](self->_localIdentifiersOfPersonsToInsert, "count"), -[NSSet count](self->_localIdentifiersOfPersonsToDelete, "count"), -[NSSet count](self->_contactIdentifiersOfPersonsToUpdate, "count") + -[NSSet count](self->_localIdentifiersOfPersonsToUpdate, "count")];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"- [SocialGroup]\tinserts: %ld\tdeletes: %ld\tupdates: %ld\n", -[NSSet count](self->_uuidsOfSocialGroupsToInsert, "count"), -[NSSet count](self->_uuidsOfSocialGroupsToDelete, "count"), -[NSSet count](self->_uuidsOfSocialGroupsToUpdate, "count")];
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v24, v27, v28, v29];
  }

  else
  {
    v48 = &stru_2843F5C58;
  }

  consolidatedChanges = [(PGGraphUpdate *)self consolidatedChanges];
  v31 = [consolidatedChanges count];

  if (v31)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Consolidate changes: %ld\n", -[NSSet count](self->_consolidatedChanges, "count")];
  }

  else
  {
    v32 = &stru_2843F5C58;
  }

  momentChangesDateInterval = [(PGGraphUpdate *)self momentChangesDateInterval];
  v34 = MEMORY[0x277CCACA8];
  startDate = [momentChangesDateInterval startDate];
  v36 = startDate;
  if (startDate)
  {
    v37 = startDate;
  }

  else
  {
    v37 = @"none";
  }

  endDate = [momentChangesDateInterval endDate];
  v39 = endDate;
  if (endDate)
  {
    v40 = endDate;
  }

  else
  {
    v40 = @"none";
  }

  v41 = [v34 stringWithFormat:@"Moment changes date interval: [%@ - %@]\n", v37, v40];

  v42 = MEMORY[0x277CCACA8];
  v49.receiver = self;
  v49.super_class = PGGraphUpdate;
  v43 = [(PGGraphUpdate *)&v49 description];
  if ([(PGGraphUpdate *)self isResumingFullAnalysis])
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  if ([(PGGraphUpdate *)self hasAnythingToDo])
  {
    v45 = @"YES";
  }

  else
  {
    v45 = @"NO";
  }

  v46 = [v42 stringWithFormat:@"%@\nResuming full analysis: %@\nHas anything to do: %@\n%@%@%@%@", v43, v44, v45, v32, v41, v48, v4];

  return v46;
}

- (void)updatedHighlightNode:(id)node forUpdateChangeType:(unint64_t)type
{
  nodeCopy = node;
  v6 = self->_updateHighlightNodesByUpdateType;
  objc_sync_enter(v6);
  updateHighlightNodesByUpdateType = self->_updateHighlightNodesByUpdateType;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  array = [(NSMutableDictionary *)updateHighlightNodesByUpdateType objectForKeyedSubscript:v8];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = self->_updateHighlightNodesByUpdateType;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)v10 setObject:array forKeyedSubscript:v11];
  }

  [array addObject:nodeCopy];

  objc_sync_exit(v6);
}

- (void)updatedMomentNode:(id)node forUpdateChangeType:(unint64_t)type
{
  nodeCopy = node;
  v6 = self->_updateMomentNodesByUpdateType;
  objc_sync_enter(v6);
  updateMomentNodesByUpdateType = self->_updateMomentNodesByUpdateType;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  array = [(NSMutableDictionary *)updateMomentNodesByUpdateType objectForKeyedSubscript:v8];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = self->_updateMomentNodesByUpdateType;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableDictionary *)v10 setObject:array forKeyedSubscript:v11];
  }

  [array addObject:nodeCopy];

  objc_sync_exit(v6);
}

- (void)enumerateConsolidatedChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_consolidatedChanges;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      changesCopy[2](changesCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numberOfConsolidatedChanges
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  consolidatedChanges = self->_consolidatedChanges;

  return [(NSSet *)consolidatedChanges count];
}

- (void)_consolidateIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_consolidatedChanges)
  {
    [(PGGraphUpdate *)obj _consolidate];
  }

  objc_sync_exit(obj);
}

- (id)_fetchMomentsWithUUIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_momentByMomentUUID objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v5;
          v16 = v14;
        }

        else
        {
          v15 = v7;
          v16 = v13;
        }

        [v15 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid in %@", v7];
    [librarySpecificFetchOptions setInternalPredicate:v18];

    v19 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions];
    [(PGGraphUpdate *)self _registerMoments:v19];
    fetchedObjects = [v19 fetchedObjects];
    [v5 addObjectsFromArray:fetchedObjects];
  }

  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_consolidate
{
  v98 = *MEMORY[0x277D85DE8];
  v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v78 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v71 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v81 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v80 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = self->_inputChanges;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v92 objects:v97 count:16];
  v75 = v3;
  v84 = v5;
  v73 = v4;
  if (!v7)
  {
    v74 = 0;
    goto LABEL_62;
  }

  v8 = v7;
  v74 = 0;
  v9 = *v93;
  do
  {
    v10 = 0;
    do
    {
      if (*v93 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v92 + 1) + 8 * v10);
      type = [v11 type];
      if (type <= 6)
      {
        if (type <= 2)
        {
          if (!type)
          {
            loggingConnection = [objc_opt_class() loggingConnection];
            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unknown change type in graph update", buf, 2u);
            }

            goto LABEL_48;
          }

          if (type != 1)
          {
            if (type != 2)
            {
              goto LABEL_49;
            }

            loggingConnection = [v11 momentUUIDs];
            [v78 unionSet:loggingConnection];
            allObjects = [loggingConnection allObjects];
            [v5 removeObjectsForKeys:allObjects];

            [(PGGraphUpdate *)self _unregisterMomentsForMomentUUIDs:loggingConnection];
            goto LABEL_48;
          }

          v26 = v11;
          loggingConnection = [v26 momentUUIDs];
          allObjects2 = [loggingConnection allObjects];
          [v84 removeObjectsForKeys:allObjects2];

          [v83 unionSet:loggingConnection];
          moments = [v26 moments];

          [(PGGraphUpdate *)self _registerMoments:moments];
          goto LABEL_42;
        }

        if (type != 3)
        {
          if (type != 5)
          {
            if (type != 6)
            {
              goto LABEL_49;
            }

            loggingConnection = v11;
            personLocalIdentifier = [loggingConnection personLocalIdentifier];
            contactIdentifier = [loggingConnection contactIdentifier];
            if ([personLocalIdentifier length])
            {
              if (([v81 containsObject:personLocalIdentifier] & 1) == 0)
              {
                v19 = v6;
                v20 = [v5 objectForKeyedSubscript:personLocalIdentifier];
                if (v20)
                {
                  v21 = v20;
                }

                else
                {
                  v30 = v5;
                  v21 = loggingConnection;
                  [v30 setObject:v21 forKeyedSubscript:personLocalIdentifier];
                  [v72 addObject:personLocalIdentifier];
                }

                v6 = v19;
                v4 = v73;
LABEL_57:
                [v21 mergeChange:loggingConnection];

                v5 = v84;
              }
            }

            else if ([contactIdentifier length])
            {
              v29 = [v6 objectForKeyedSubscript:contactIdentifier];
              if (v29)
              {
                v21 = v29;
              }

              else
              {
                v21 = loggingConnection;
                [v6 setObject:v21 forKeyedSubscript:contactIdentifier];
                [v70 addObject:contactIdentifier];
              }

              goto LABEL_57;
            }

            v3 = v75;
            goto LABEL_48;
          }

          loggingConnection = [v11 personLocalIdentifiers];
          [v81 unionSet:loggingConnection];
          allObjects3 = [loggingConnection allObjects];
          [v5 removeObjectsForKeys:allObjects3];
          goto LABEL_47;
        }

        loggingConnection = v11;
        allObjects3 = [loggingConnection momentUUID];
        if ([v83 containsObject:allObjects3] & 1) != 0 || (objc_msgSend(v78, "containsObject:", allObjects3))
        {
          goto LABEL_47;
        }

        v16 = [v5 objectForKeyedSubscript:allObjects3];
        if (!v16)
        {
          v16 = loggingConnection;
          [v84 setObject:v16 forKeyedSubscript:allObjects3];
          [v71 addObject:allObjects3];
        }

        [v16 mergeChange:loggingConnection];
        v74 |= [loggingConnection updateTypes];
LABEL_39:

        v5 = v84;
        goto LABEL_47;
      }

      if (type > 9)
      {
        switch(type)
        {
          case 10:
            allObjects3 = v11;
            loggingConnection = [allObjects3 socialGroupUUIDs];
            v25 = v76;
            break;
          case 11:
            allObjects3 = v11;
            loggingConnection = [allObjects3 socialGroupUUIDs];
            v25 = v77;
            break;
          case 12:
            allObjects3 = v11;
            loggingConnection = [allObjects3 socialGroupUUID];
            [(NSSet *)v4 addObject:loggingConnection];
            goto LABEL_47;
          default:
            goto LABEL_49;
        }

        [(NSSet *)v25 unionSet:loggingConnection];
LABEL_47:

        goto LABEL_48;
      }

      if (type != 7)
      {
        if (type == 8)
        {
          loggingConnection = [v11 highlightUUIDs];
          [v80 unionSet:loggingConnection];
          allObjects4 = [loggingConnection allObjects];
          [v5 removeObjectsForKeys:allObjects4];

          [(PGGraphUpdate *)self _unregisterHighlightsForHighlightUUIDs:loggingConnection];
          goto LABEL_48;
        }

        loggingConnection = v11;
        allObjects3 = [loggingConnection highlightUUID];
        if ([v3 containsObject:allObjects3] & 1) != 0 || (objc_msgSend(v80, "containsObject:", allObjects3))
        {
          goto LABEL_47;
        }

        v16 = [v5 objectForKeyedSubscript:allObjects3];
        if (!v16)
        {
          v16 = loggingConnection;
          [v84 setObject:v16 forKeyedSubscript:allObjects3];
          [v69 addObject:allObjects3];
        }

        [v16 mergeChange:loggingConnection];
        goto LABEL_39;
      }

      v22 = v11;
      loggingConnection = [v22 highlightUUIDs];
      allObjects5 = [loggingConnection allObjects];
      [v84 removeObjectsForKeys:allObjects5];

      [v3 unionSet:loggingConnection];
      moments = [v22 highlights];

      [(PGGraphUpdate *)self _registerHighlights:moments];
LABEL_42:

      v5 = v84;
LABEL_48:

LABEL_49:
      ++v10;
    }

    while (v8 != v10);
    v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v92 objects:v97 count:16];
    v8 = v31;
  }

  while (v31);
LABEL_62:

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    v33 = MEMORY[0x277CBEA60];
    allValues = [v5 allValues];
    v35 = [v33 arrayWithArray:allValues];
    [v32 addObjectsFromArray:v35];
  }

  v36 = v69;
  v37 = v83;
  if ([v6 count])
  {
    v38 = MEMORY[0x277CBEA60];
    allValues2 = [v6 allValues];
    v40 = [v38 arrayWithArray:allValues2];
    [v32 addObjectsFromArray:v40];
  }

  obja = v32;
  v41 = [MEMORY[0x277CBEB98] setWithArray:v32];
  consolidatedChanges = self->_consolidatedChanges;
  self->_consolidatedChanges = v41;

  v43 = [v78 mutableCopy];
  [v43 minusSet:v83];
  [v83 minusSet:v78];
  v44 = v43;

  objc_storeStrong(&self->_uuidsOfMomentsToInsert, v83);
  objc_storeStrong(&self->_uuidsOfMomentsToDelete, v43);
  objc_storeStrong(&self->_uuidsOfMomentsToUpdate, v71);
  self->_momentUpdateTypes = v74;
  if ([v83 count])
  {
    [(PGGraphUpdate *)self _fetchMomentsWithUUIDs:v83];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v45 = ;
  momentsToIngest = self->_momentsToIngest;
  self->_momentsToIngest = v45;

  if (v71 && [v71 count])
  {
    v47 = [(PGGraphUpdate *)self _fetchMomentsWithUUIDs:v71];
  }

  v48 = [v81 mutableCopy];
  [v48 minusSet:v68];
  [v68 minusSet:v81];
  v79 = v48;

  objc_storeStrong(&self->_localIdentifiersOfPersonsToInsert, v68);
  objc_storeStrong(&self->_localIdentifiersOfPersonsToDelete, v48);
  objc_storeStrong(&self->_localIdentifiersOfPersonsToUpdate, v72);
  objc_storeStrong(&self->_contactIdentifiersOfPersonsToUpdate, v70);
  [(PGGraphUpdate *)self clearInsertedAndUpdatedPersonNodes];
  [(PGGraphUpdate *)self clearUpdatedPersonNodesUnrelatedToMomentChange];
  objc_storeStrong(&self->_uuidsOfHighlightsToInsert, v3);
  objc_storeStrong(&self->_uuidsOfHighlightsToDelete, v80);
  objc_storeStrong(&self->_uuidsOfHighlightsToUpdate, v69);
  if ([v3 count])
  {
    v82 = v6;
    v49 = [(PGGraphUpdate *)self _fetchedHighlightsWithHighlightUUIDs:v3];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v87 objects:v96 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v88;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v87 + 1) + 8 * i);
          highlightsToInsertByHighlightKind = self->_highlightsToInsertByHighlightKind;
          v56 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v54, "kind")}];
          v57 = [(NSMutableDictionary *)highlightsToInsertByHighlightKind objectForKeyedSubscript:v56];

          if (!v57)
          {
            v57 = [MEMORY[0x277CBEB58] set];
            v58 = self->_highlightsToInsertByHighlightKind;
            v59 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v54, "kind")}];
            [(NSMutableDictionary *)v58 setObject:v57 forKeyedSubscript:v59];
          }

          [v57 addObject:v54];
        }

        v51 = [v49 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v51);
    }

    v37 = v83;
    v5 = v84;
    v3 = v75;
    v36 = v69;
    v6 = v82;
  }

  if (v36 && [v36 count])
  {
    v60 = [(PGGraphUpdate *)self _fetchedHighlightsWithHighlightUUIDs:v36];
  }

  uuidsOfSocialGroupsToInsert = self->_uuidsOfSocialGroupsToInsert;
  self->_uuidsOfSocialGroupsToInsert = v76;
  v62 = v76;

  uuidsOfSocialGroupsToDelete = self->_uuidsOfSocialGroupsToDelete;
  self->_uuidsOfSocialGroupsToDelete = v77;
  v64 = v77;

  uuidsOfSocialGroupsToUpdate = self->_uuidsOfSocialGroupsToUpdate;
  self->_uuidsOfSocialGroupsToUpdate = v73;

  v66 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterMomentsForMomentUUIDs:(id)ds
{
  momentByMomentUUID = self->_momentByMomentUUID;
  dsCopy = ds;
  allObjects = [dsCopy allObjects];
  [(NSMutableDictionary *)momentByMomentUUID removeObjectsForKeys:allObjects];

  [(NSMutableSet *)self->_deletedMomentUUIDsForValidityCheck unionSet:dsCopy];
}

- (void)_registerMoments:(id)moments
{
  v17 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [momentsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(momentsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        uuid = [v9 uuid];
        [(NSMutableDictionary *)self->_momentByMomentUUID setObject:v9 forKeyedSubscript:uuid];
      }

      v6 = [momentsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)prepareForPostProcessingWithGraph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if ([(PGGraphUpdate *)self isResumingFullAnalysis])
  {
    v5 = objc_autoreleasePoolPush();
    momentsToIngest = [(PGGraphUpdate *)self momentsToIngest];
    v7 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:graphCopy];
    uuids = [v7 uuids];

    v9 = [MEMORY[0x277CBEB58] setWithSet:uuids];
    v10 = [momentsToIngest count];
    if (v10 != [v9 count])
    {
      v25 = v5;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = momentsToIngest;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          v15 = 0;
          do
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            uuid = [*(*(&v26 + 1) + 8 * v15) uuid];
            [v9 removeObject:uuid];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v13);
      }

      v5 = v25;
      if ([v9 count])
      {
        v17 = MEMORY[0x277CBEB58];
        v18 = [(PGGraphUpdate *)self _fetchMomentsWithUUIDs:v9];
        v19 = [v17 setWithSet:v18];

        [(NSSet *)v19 unionSet:v11];
        momentsToIngest = self->_momentsToIngest;
        self->_momentsToIngest = v19;
        v21 = v19;

        v22 = [MEMORY[0x277CBEB58] setWithSet:self->_uuidsOfMomentsToInsert];
        [(NSSet *)v22 unionSet:v9];
        uuidsOfMomentsToInsert = self->_uuidsOfMomentsToInsert;
        self->_uuidsOfMomentsToInsert = v22;
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)addChanges:(id)changes
{
  [(NSMutableArray *)self->_inputChanges addObjectsFromArray:changes];
  consolidatedChanges = self->_consolidatedChanges;
  self->_consolidatedChanges = 0;
}

- (void)addChange:(id)change
{
  [(NSMutableArray *)self->_inputChanges addObject:change];
  consolidatedChanges = self->_consolidatedChanges;
  self->_consolidatedChanges = 0;
}

- (BOOL)didSocialGroupsChanges
{
  if ([(PGGraphUpdate *)self hasSocialGroupsToDelete]|| [(PGGraphUpdate *)self hasSocialGroupsToInsert])
  {
    return 1;
  }

  return [(PGGraphUpdate *)self hasSocialGroupsToUpdate];
}

- (BOOL)didProcessNodes
{
  hasUpdatedMomentNodes = [(PGGraphUpdate *)self hasDeletedMomentNodes]|| [(PGGraphUpdate *)self hasInsertedMomentNodes]|| [(PGGraphUpdate *)self hasUpdatedMomentNodes];
  hasUpdatedHighlightNodes = [(PGGraphUpdate *)self hasDeletedHighlightNodes]|| [(PGGraphUpdate *)self hasInsertedHighlightNodes]|| [(PGGraphUpdate *)self hasUpdatedHighlightNodes];
  hasUpdatedPersonNodes = [(PGGraphUpdate *)self hasDeletedPersonNodes]|| [(PGGraphUpdate *)self hasUpdatedPersonNodes];
  v6 = hasUpdatedMomentNodes || hasUpdatedPersonNodes || hasUpdatedHighlightNodes;
  return v6 & 1;
}

- (NSSet)momentsToIngest
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  momentsToIngest = self->_momentsToIngest;

  return momentsToIngest;
}

- (BOOL)hasUpdatedPersonNodesUnrelatedToMomentChange
{
  updatedPersonNodesUnrelatedToMomentChange = [(PGGraphUpdate *)self updatedPersonNodesUnrelatedToMomentChange];
  v3 = [updatedPersonNodesUnrelatedToMomentChange count] != 0;

  return v3;
}

- (BOOL)hasUpdatedPersonNodes
{
  insertedAndUpdatedPersonNodes = [(PGGraphUpdate *)self insertedAndUpdatedPersonNodes];
  v3 = [insertedAndUpdatedPersonNodes count] != 0;

  return v3;
}

- (BOOL)hasPersonsToUpdate
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = [(NSSet *)self->_localIdentifiersOfPersonsToUpdate count];
  return v3 + [(NSSet *)self->_contactIdentifiersOfPersonsToUpdate count]!= 0;
}

- (NSSet)contactIdentifiersOfPersonsToUpdate
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  contactIdentifiersOfPersonsToUpdate = self->_contactIdentifiersOfPersonsToUpdate;

  return [v3 setWithSet:contactIdentifiersOfPersonsToUpdate];
}

- (NSSet)localIdentifiersOfPersonsToUpdate
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  localIdentifiersOfPersonsToUpdate = self->_localIdentifiersOfPersonsToUpdate;

  return [v3 setWithSet:localIdentifiersOfPersonsToUpdate];
}

- (NSSet)localIdentifiersOfPersonsToDelete
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  localIdentifiersOfPersonsToDelete = self->_localIdentifiersOfPersonsToDelete;

  return [v3 setWithSet:localIdentifiersOfPersonsToDelete];
}

- (NSSet)localIdentifiersOfPersonsToInsert
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  localIdentifiersOfPersonsToInsert = self->_localIdentifiersOfPersonsToInsert;

  return [v3 setWithSet:localIdentifiersOfPersonsToInsert];
}

- (NSSet)uuidsOfMomentsToUpdate
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  uuidsOfMomentsToUpdate = self->_uuidsOfMomentsToUpdate;

  return [v3 setWithSet:uuidsOfMomentsToUpdate];
}

- (NSSet)uuidsOfMomentsToDelete
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  uuidsOfMomentsToDelete = self->_uuidsOfMomentsToDelete;

  return [v3 setWithSet:uuidsOfMomentsToDelete];
}

- (NSSet)uuidsOfMomentsToInsert
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  v3 = MEMORY[0x277CBEB98];
  uuidsOfMomentsToInsert = self->_uuidsOfMomentsToInsert;

  return [v3 setWithSet:uuidsOfMomentsToInsert];
}

- (BOOL)hasAnythingToDo
{
  [(PGGraphUpdate *)self _consolidateIfNeeded];
  hasMomentsToUpdate = [(PGGraphUpdate *)self hasMomentsToInsert]|| [(PGGraphUpdate *)self hasMomentsToDelete]|| [(PGGraphUpdate *)self hasMomentsToUpdate];
  hasHighlightsToUpdate = [(PGGraphUpdate *)self hasHighlightsToInsert]|| [(PGGraphUpdate *)self hasHighlightsToDelete]|| [(PGGraphUpdate *)self hasHighlightsToUpdate];
  hasPersonsToUpdate = [(PGGraphUpdate *)self hasPersonsToDelete]|| [(PGGraphUpdate *)self hasPersonsToInsert]|| [(PGGraphUpdate *)self hasPersonsToUpdate];
  hasSocialGroupsToUpdate = [(PGGraphUpdate *)self hasSocialGroupsToDelete]|| [(PGGraphUpdate *)self hasSocialGroupsToInsert]|| [(PGGraphUpdate *)self hasSocialGroupsToUpdate];
  return hasHighlightsToUpdate || hasMomentsToUpdate || hasPersonsToUpdate || hasSocialGroupsToUpdate;
}

- (id)cachedDataModelObjectForGraphChange:(id)change
{
  changeCopy = change;
  type = [changeCopy type];
  if (type == 9)
  {
    highlightUUID = [changeCopy highlightUUID];
    v7 = 192;
    goto LABEL_5;
  }

  if (type == 3)
  {
    highlightUUID = [changeCopy momentUUID];
    v7 = 120;
LABEL_5:
    v8 = [*(&self->super.isa + v7) objectForKeyedSubscript:highlightUUID];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)initForChangeStreamResetInPhotoLibrary:(id)library updateType:(int64_t)type
{
  result = [(PGGraphUpdate *)self initWithPhotoLibrary:library updateType:type changeStreamToken:0];
  if (result)
  {
    *(result + 32) = 0;
  }

  return result;
}

- (PGGraphUpdate)initWithPhotoLibrary:(id)library updateType:(int64_t)type changeStreamToken:(id)token
{
  libraryCopy = library;
  tokenCopy = token;
  v46.receiver = self;
  v46.super_class = PGGraphUpdate;
  v11 = [(PGGraphUpdate *)&v46 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_photoLibrary, library);
    v12->_updateType = type;
    objc_storeStrong(&v12->_changeStreamToken, token);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputChanges = v12->_inputChanges;
    v12->_inputChanges = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    momentByMomentUUID = v12->_momentByMomentUUID;
    v12->_momentByMomentUUID = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updateMomentNodesByUpdateType = v12->_updateMomentNodesByUpdateType;
    v12->_updateMomentNodesByUpdateType = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updateHighlightNodesByUpdateType = v12->_updateHighlightNodesByUpdateType;
    v12->_updateHighlightNodesByUpdateType = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deletedMomentUUIDsForValidityCheck = v12->_deletedMomentUUIDsForValidityCheck;
    v12->_deletedMomentUUIDsForValidityCheck = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deletedHighlightUUIDsForValidityCheck = v12->_deletedHighlightUUIDsForValidityCheck;
    v12->_deletedHighlightUUIDsForValidityCheck = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registeredLocationOfInterestVisitsToResolveByMomentUUID = v12->_registeredLocationOfInterestVisitsToResolveByMomentUUID;
    v12->_registeredLocationOfInterestVisitsToResolveByMomentUUID = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registeredResolvableItemsByBusinessItemMuid = v12->_registeredResolvableItemsByBusinessItemMuid;
    v12->_registeredResolvableItemsByBusinessItemMuid = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    localIdentifiersOfPersonsToUpdate = v12->_localIdentifiersOfPersonsToUpdate;
    v12->_localIdentifiersOfPersonsToUpdate = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    localIdentifiersOfPersonsToDelete = v12->_localIdentifiersOfPersonsToDelete;
    v12->_localIdentifiersOfPersonsToDelete = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    localIdentifiersOfPersonsToInsert = v12->_localIdentifiersOfPersonsToInsert;
    v12->_localIdentifiersOfPersonsToInsert = v33;

    v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
    contactIdentifiersOfPersonsToUpdate = v12->_contactIdentifiersOfPersonsToUpdate;
    v12->_contactIdentifiersOfPersonsToUpdate = v35;

    v37 = objc_alloc_init(PGGraphUpdateRelatedDetails);
    relatedDetails = v12->_relatedDetails;
    v12->_relatedDetails = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
    highlightByHighlightUUID = v12->_highlightByHighlightUUID;
    v12->_highlightByHighlightUUID = v39;

    v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
    highlightsToInsertByHighlightKind = v12->_highlightsToInsertByHighlightKind;
    v12->_highlightsToInsertByHighlightKind = v41;

    v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
    uuidsOfDeletedHighlights = v12->_uuidsOfDeletedHighlights;
    v12->_uuidsOfDeletedHighlights = v43;

    v12->_hasIncrementalChanges = 1;
    if (type == 3)
    {
      *&v12->_hasIncrementalChanges = 256;
    }
  }

  return v12;
}

+ (id)loggingConnection
{
  if (loggingConnection_onceToken != -1)
  {
    dispatch_once(&loggingConnection_onceToken, &__block_literal_global_50189);
  }

  v3 = loggingConnection_log;

  return v3;
}

void __34__PGGraphUpdate_loggingConnection__block_invoke()
{
  v0 = os_log_create("com.apple.PhotosGraph", "PGGraphUpdate");
  v1 = loggingConnection_log;
  loggingConnection_log = v0;
}

@end