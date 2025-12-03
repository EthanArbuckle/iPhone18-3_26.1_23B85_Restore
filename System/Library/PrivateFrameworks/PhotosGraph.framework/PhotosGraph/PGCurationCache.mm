@interface PGCurationCache
- (id)_curatedAssetIdentifiersforMomentUUID:(id)d options:(id)options;
- (id)_curatedKeyAssetIdentifierforMomentUUID:(id)d options:(id)options;
- (id)_fetchCurationObjectForEntityName:(id)name predicate:(id)predicate;
- (id)curatedAssetIdentifiersForMoment:(id)moment options:(id)options;
- (id)curatedKeyAssetIdentifierForMoment:(id)moment options:(id)options;
- (void)_invalidateCacheForMomentWithUUID:(id)d;
- (void)_invalidateCacheForMomentsWithUUIDs:(id)ds;
- (void)_setCuratedAssets:(id)assets forMomentUUID:(id)d options:(id)options;
- (void)_setCuratedKeyAsset:(id)asset forMomentUUID:(id)d options:(id)options;
- (void)_setProperties:(id)properties forCurationObjectWithEntityName:(id)name momentUUID:(id)d predicate:(id)predicate;
- (void)setCuratedAssets:(id)assets forMoment:(id)moment options:(id)options;
- (void)setCuratedKeyAsset:(id)asset forMoment:(id)moment options:(id)options;
@end

@implementation PGCurationCache

- (void)_invalidateCacheForMomentsWithUUIDs:(id)ds
{
  dsCopy = ds;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PGCurationCache__invalidateCacheForMomentsWithUUIDs___block_invoke;
  v7[3] = &unk_278880B88;
  v8 = dsCopy;
  selfCopy = self;
  v6 = dsCopy;
  [managedObjectContext performBlockAndWait:v7];
}

void __55__PGCurationCache__invalidateCacheForMomentsWithUUIDs___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Moment"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier IN %@", *(a1 + 32)];
  [v2 setPredicate:v3];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  v5 = [*(a1 + 40) managedObjectContext];
  v11 = 0;
  v6 = [v5 executeRequest:v4 error:&v11];
  v7 = v11;

  [*(a1 + 40) _save];
  if (v7)
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "Failed to invalidate curation cache for multiple moments.", buf, 2u);
    }
  }
}

- (void)_invalidateCacheForMomentWithUUID:(id)d
{
  dCopy = d;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PGCurationCache__invalidateCacheForMomentWithUUID___block_invoke;
  v7[3] = &unk_278880B88;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  [managedObjectContext performBlockAndWait:v7];
}

void __53__PGCurationCache__invalidateCacheForMomentWithUUID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Moment"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(identifier == %@)", *(a1 + 32)];
  [v2 setPredicate:v3];
  v4 = [*(a1 + 40) managedObjectContext];
  v23 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v23];
  v6 = v23;

  if (v5)
  {
    v17 = v6;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [*(a1 + 40) managedObjectContext];
          [v13 deleteObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    [*(a1 + 40) _save];
    v6 = v17;
  }

  else if (v6)
  {
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "Failed to invalidate curation cache for moment", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setProperties:(id)properties forCurationObjectWithEntityName:(id)name momentUUID:(id)d predicate:(id)predicate
{
  propertiesCopy = properties;
  nameCopy = name;
  dCopy = d;
  predicateCopy = predicate;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__PGCurationCache__setProperties_forCurationObjectWithEntityName_momentUUID_predicate___block_invoke;
  v19[3] = &unk_2788827F0;
  v19[4] = self;
  v20 = dCopy;
  v21 = nameCopy;
  v22 = predicateCopy;
  v23 = propertiesCopy;
  v15 = propertiesCopy;
  v16 = predicateCopy;
  v17 = nameCopy;
  v18 = dCopy;
  [managedObjectContext performBlockAndWait:v19];
}

void __87__PGCurationCache__setProperties_forCurationObjectWithEntityName_momentUUID_predicate___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Moment"];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", *(a1 + 40)];
  [v3 setFetchLimit:1];
  [v3 setPredicate:v4];
  v26 = 0;
  v5 = [v2 executeFetchRequest:v3 error:&v26];
  v6 = v26;
  if (v5 && [v5 count] == 1)
  {
    v7 = [v5 objectAtIndex:0];
    v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 48)];
    [v8 setFetchLimit:1];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"moment == %@", v7];
    v10 = MEMORY[0x277CCA920];
    v11 = *(a1 + 56);
    v22 = v9;
    v27[0] = v9;
    v27[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v13 = [v10 andPredicateWithSubpredicates:v12];

    v21 = v13;
    [v8 setPredicate:v13];
    v25 = v6;
    v14 = [v2 executeFetchRequest:v8 error:&v25];
    v20 = v25;

    if (v14 && [v14 count] == 1)
    {
      v15 = [v14 objectAtIndex:0];
    }

    else
    {
      v15 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:*(a1 + 48) inManagedObjectContext:v2];
    }

    v16 = v15;

    v6 = v20;
  }

  else
  {
    v7 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"Moment" inManagedObjectContext:v2];
    [v7 setValue:*(a1 + 40) forKey:@"identifier"];
    v16 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:*(a1 + 48) inManagedObjectContext:v2];
  }

  [v16 setValue:v7 forKey:@"moment"];
  v17 = *(a1 + 64);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__PGCurationCache__setProperties_forCurationObjectWithEntityName_momentUUID_predicate___block_invoke_2;
  v23[3] = &unk_278881F00;
  v24 = v16;
  v18 = v16;
  [v17 enumerateKeysAndObjectsUsingBlock:v23];
  [*(a1 + 32) _save];

  v19 = *MEMORY[0x277D85DE8];
}

void __87__PGCurationCache__setProperties_forCurationObjectWithEntityName_momentUUID_predicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x277CBEB68];
  v6 = a2;
  v7 = [v5 null];

  if (v7 == v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9;
  }

  [*(a1 + 32) setValue:v8 forKey:v6];
}

- (id)_fetchCurationObjectForEntityName:(id)name predicate:(id)predicate
{
  nameCopy = name;
  predicateCopy = predicate;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5540;
  v22 = __Block_byref_object_dispose__5541;
  v23 = 0;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__PGCurationCache__fetchCurationObjectForEntityName_predicate___block_invoke;
  v13[3] = &unk_27887F7E0;
  v9 = nameCopy;
  v14 = v9;
  v10 = predicateCopy;
  v15 = v10;
  selfCopy = self;
  v17 = &v18;
  [managedObjectContext performBlockAndWait:v13];

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __63__PGCurationCache__fetchCurationObjectForEntityName_predicate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setFetchLimit:1];
  [v2 setPredicate:*(a1 + 40)];
  v3 = [*(a1 + 48) managedObjectContext];
  v9 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v9];
  v5 = v9;

  if (v4 && [v4 count] == 1)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_setCuratedKeyAsset:(id)asset forMomentUUID:(id)d options:(id)options
{
  v51[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dCopy = d;
  assetCopy = asset;
  referenceAsset = [optionsCopy referenceAsset];
  v10 = referenceAsset;
  if (referenceAsset)
  {
    localIdentifier = [referenceAsset localIdentifier];
  }

  else
  {
    localIdentifier = @"base";
  }

  referenceLocation = [optionsCopy referenceLocation];
  [referenceLocation coordinate];
  if (referenceLocation)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f", v13, v14];
  }

  else
  {
    v15 = @"base";
  }

  referencePersonLocalIdentifiers = [optionsCopy referencePersonLocalIdentifiers];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
  v51[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v19 = [referencePersonLocalIdentifiers sortedArrayUsingDescriptors:v18];

  if ([v19 count])
  {
    v20 = [v19 componentsJoinedByString:@"_"];
  }

  else
  {
    v20 = @"base";
  }

  v49[0] = @"referenceAsset";
  v49[1] = @"referenceLocation";
  v47 = localIdentifier;
  v50[0] = localIdentifier;
  v50[1] = v15;
  v44 = v20;
  v45 = v15;
  v50[2] = v20;
  v49[2] = @"referencePeople";
  v49[3] = @"complete";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "complete")}];
  v50[3] = v21;
  v49[4] = @"focusOnPeople";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "focusOnPeople")}];
  v50[4] = v22;
  v49[5] = @"useSummarizer";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "useSummarizer")}];
  v50[5] = v23;
  v49[6] = @"useContextualCurationOnly";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "useContextualCurationOnly")}];
  v50[6] = v24;
  v49[7] = @"prefilterAssetsWithFaces";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(optionsCopy, "prefilterAssetsWithFaces")}];
  v50[7] = v25;
  v49[8] = @"curatedKeyAsset";
  localIdentifier2 = [assetCopy localIdentifier];

  null = localIdentifier2;
  if (!localIdentifier2)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v50[8] = null;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:9];
  if (!localIdentifier2)
  {
  }

  v29 = optionsCopy;
  referenceAsset2 = [v29 referenceAsset];
  v31 = referenceAsset2;
  if (referenceAsset2)
  {
    localIdentifier3 = [referenceAsset2 localIdentifier];
  }

  else
  {
    localIdentifier3 = @"base";
  }

  referenceLocation2 = [v29 referenceLocation];
  [referenceLocation2 coordinate];
  if (referenceLocation2)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f", v34, v35];
  }

  else
  {
    v36 = @"base";
  }

  referencePersonLocalIdentifiers2 = [v29 referencePersonLocalIdentifiers];
  v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
  v51[0] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v40 = [referencePersonLocalIdentifiers2 sortedArrayUsingDescriptors:v39];

  if ([v40 count])
  {
    v41 = [v40 componentsJoinedByString:@"_"];
  }

  else
  {
    v41 = @"base";
  }

  v42 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(complete == %d) AND \t\t\t\t\t\t\t  (focusOnPeople == %d) AND \t\t\t\t\t\t\t  (useSummarizer == %d) AND \t\t\t\t\t\t\t  (prefilterAssetsWithFaces == %d) AND \t\t\t\t\t\t\t  (referenceAsset == %@) AND \t\t\t\t\t\t\t  (referenceLocation == %@) AND \t\t\t\t\t\t\t  (referencePeople == %@) AND \t\t\t\t\t\t\t  (useContextualCurationOnly == %d)", objc_msgSend(v29, "complete"), objc_msgSend(v29, "focusOnPeople"), objc_msgSend(v29, "useSummarizer"), objc_msgSend(v29, "prefilterAssetsWithFaces"), localIdentifier3, v36, v41, objc_msgSend(v29, "useContextualCurationOnly")];

  [(PGCurationCache *)self _setProperties:v28 forCurationObjectWithEntityName:@"CuratedKeyAsset" momentUUID:dCopy predicate:v42];
  v43 = *MEMORY[0x277D85DE8];
}

- (id)_curatedKeyAssetIdentifierforMomentUUID:(id)d options:(id)options
{
  v39[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  referenceAsset = [optionsCopy referenceAsset];
  v7 = referenceAsset;
  if (referenceAsset)
  {
    localIdentifier = [referenceAsset localIdentifier];
  }

  else
  {
    localIdentifier = @"base";
  }

  referenceLocation = [optionsCopy referenceLocation];
  [referenceLocation coordinate];
  if (referenceLocation)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f", v10, v11];
  }

  else
  {
    v12 = @"base";
  }

  referencePersonLocalIdentifiers = [optionsCopy referencePersonLocalIdentifiers];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_compare_];
  v33 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v16 = [referencePersonLocalIdentifiers sortedArrayUsingDescriptors:v15];

  if ([v16 count])
  {
    v17 = [v16 componentsJoinedByString:@"_"];
  }

  else
  {
    v17 = @"base";
  }

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(complete == %d) AND \t\t\t\t\t\t\t  (focusOnPeople == %d) AND \t\t\t\t\t\t\t  (useSummarizer == %d) AND \t\t\t\t\t\t\t  (prefilterAssetsWithFaces == %d) AND \t\t\t\t\t\t\t  (referenceAsset == %@) AND \t\t\t\t\t\t\t  (referenceLocation == %@) AND \t\t\t\t\t\t\t  (referencePeople == %@) AND \t\t\t\t\t\t\t  (useContextualCurationOnly == %d)", objc_msgSend(optionsCopy, "complete"), objc_msgSend(optionsCopy, "focusOnPeople"), objc_msgSend(optionsCopy, "useSummarizer"), objc_msgSend(optionsCopy, "prefilterAssetsWithFaces"), localIdentifier, v12, v17, objc_msgSend(optionsCopy, "useContextualCurationOnly")];

  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(moment.identifier == %@)", dCopy];
  v20 = MEMORY[0x277CCA920];
  v39[0] = dCopy;
  v39[1] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__5540;
  v37 = __Block_byref_object_dispose__5541;
  v38 = 0;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__PGCurationCache__curatedKeyAssetIdentifierforMomentUUID_options___block_invoke;
  v30[3] = &unk_27887F7B8;
  v30[4] = self;
  v24 = v22;
  v31 = v24;
  v32 = &v33;
  [managedObjectContext performBlockAndWait:v30];

  v25 = v34[5];
  _Block_object_dispose(&v33, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __67__PGCurationCache__curatedKeyAssetIdentifierforMomentUUID_options___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _fetchCurationObjectForEntityName:@"CuratedKeyAsset" predicate:*(a1 + 40)];
  v2 = [v5 valueForKey:@"curatedKeyAsset"];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setCuratedAssets:(id)assets forMomentUUID:(id)d options:(id)options
{
  v18[2] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dCopy = d;
  v10 = [assets valueForKey:@"uuid"];
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  v17[0] = @"duration";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "duration")}];
  v17[1] = @"curatedAssets";
  v18[0] = v12;
  null = v11;
  if (!v11)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = null;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (!v11)
  {
  }

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"duration == %lld", objc_msgSend(optionsCopy, "duration")];
  [(PGCurationCache *)self _setProperties:v14 forCurationObjectWithEntityName:@"CuratedAssets" momentUUID:dCopy predicate:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_curatedAssetIdentifiersforMomentUUID:(id)d options:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5540;
  v28 = __Block_byref_object_dispose__5541;
  v29 = 0;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(moment.identifier == %@) AND (duration == %lld)", dCopy, objc_msgSend(optionsCopy, "duration")];
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__PGCurationCache__curatedAssetIdentifiersforMomentUUID_options___block_invoke;
  v21[3] = &unk_27887F7B8;
  v21[4] = self;
  v10 = v8;
  v22 = v10;
  v23 = &v24;
  [managedObjectContext performBlockAndWait:v21];

  if (v25[5])
  {
    v11 = MEMORY[0x277CCAAC8];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = v25[5];
    v20 = 0;
    v16 = [v11 unarchivedObjectOfClasses:v14 fromData:v15 error:&v20];
    v17 = v20;

    if (!v16 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error unarchiving blobIdentifiers: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void __65__PGCurationCache__curatedAssetIdentifiersforMomentUUID_options___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _fetchCurationObjectForEntityName:@"CuratedAssets" predicate:*(a1 + 40)];
  v2 = [v5 valueForKey:@"curatedAssets"];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)curatedKeyAssetIdentifierForMoment:(id)moment options:(id)options
{
  momentCopy = moment;
  optionsCopy = options;
  if ([momentCopy assetCollectionType] == 3)
  {
    uuid = [momentCopy uuid];
    v9 = [(PGCurationCache *)self _curatedKeyAssetIdentifierforMomentUUID:uuid options:optionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curatedAssetIdentifiersForMoment:(id)moment options:(id)options
{
  momentCopy = moment;
  optionsCopy = options;
  if ([momentCopy assetCollectionType] == 3)
  {
    uuid = [momentCopy uuid];
    v9 = [(PGCurationCache *)self _curatedAssetIdentifiersforMomentUUID:uuid options:optionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setCuratedAssets:(id)assets forMoment:(id)moment options:(id)options
{
  assetsCopy = assets;
  momentCopy = moment;
  optionsCopy = options;
  if ([momentCopy assetCollectionType] == 3)
  {
    uuid = [momentCopy uuid];
    [(PGCurationCache *)self _setCuratedAssets:assetsCopy forMomentUUID:uuid options:optionsCopy];
  }
}

- (void)setCuratedKeyAsset:(id)asset forMoment:(id)moment options:(id)options
{
  assetCopy = asset;
  momentCopy = moment;
  optionsCopy = options;
  if ([momentCopy assetCollectionType] == 3)
  {
    uuid = [momentCopy uuid];
    [(PGCurationCache *)self _setCuratedKeyAsset:assetCopy forMomentUUID:uuid options:optionsCopy];
  }
}

@end