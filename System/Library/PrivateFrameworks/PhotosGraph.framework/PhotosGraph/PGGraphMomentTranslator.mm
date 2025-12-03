@interface PGGraphMomentTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block;
- (id)highlightUpdateTypeByMomentProperty;
- (id)momentUpdateTypeByMomentProperty;
@end

@implementation PGGraphMomentTranslator

- (id)highlightUpdateTypeByMomentProperty
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"approximateLatitude";
  v5[1] = @"approximateLongitude";
  v6[0] = &unk_284484590;
  v6[1] = &unk_284484590;
  v5[2] = @"estimatedAssetCount";
  v6[2] = &unk_2844845A8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)momentUpdateTypeByMomentProperty
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"startDate";
  v5[1] = @"endDate";
  v6[0] = &unk_284484548;
  v6[1] = &unk_284484548;
  v5[2] = @"approximateLatitude";
  v5[3] = @"approximateLongitude";
  v6[2] = &unk_284484560;
  v6[3] = &unk_284484560;
  v5[4] = @"estimatedAssetCount";
  v6[4] = &unk_284484578;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v50[3] < 0.01) || (v50[3] = v11, v48 = 0, (*(v10 + 2))(v10, &v48, 0.0), v12 = *(v54 + 24) | v48, *(v54 + 24) = v12, (v12 & 1) == 0))
  {
    momentUpdateTypeByMomentProperty = [(PGGraphMomentTranslator *)self momentUpdateTypeByMomentProperty];
    highlightUpdateTypeByMomentProperty = [(PGGraphMomentTranslator *)self highlightUpdateTypeByMomentProperty];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v39[3] = &unk_278887B50;
    v39[4] = self;
    v18 = momentUpdateTypeByMomentProperty;
    v40 = v18;
    v19 = array;
    v41 = v19;
    v20 = highlightUpdateTypeByMomentProperty;
    v42 = v20;
    v21 = dictionary;
    v43 = v21;
    v22 = v10;
    v44 = v22;
    v45 = &v49;
    v46 = &v53;
    v47 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v39];
    if (*(v54 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v58 = 341;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v23 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v21 count])
      {
        photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        allKeys = [v21 allKeys];
        v26 = [MEMORY[0x277CD9958] fetchPhotosHighlightUUIDByMomentUUIDForMomentUUIDs:allKeys options:librarySpecificFetchOptions];
        if (v10)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v50[3] >= 0.01)
          {
            v50[3] = Current;
            v48 = 0;
            (*(v22 + 2))(v22, &v48, 0.5);
            v28 = *(v54 + 24) | v48;
            *(v54 + 24) = v28;
            if (v28)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v58 = 350;
                v59 = 2080;
                v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_11;
            }
          }
        }

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_331;
        v36[3] = &unk_278887B78;
        v29 = v26;
        v37 = v29;
        v38 = v19;
        [v21 enumerateKeysAndObjectsUsingBlock:v36];
      }

      if (!v10 || (v30 = CFAbsoluteTimeGetCurrent(), v30 - v50[3] < 0.01) || (v50[3] = v30, v48 = 0, (*(v22 + 2))(v22, &v48, 1.0), v31 = *(v54 + 24) | v48, *(v54 + 24) = v31, (v31 & 1) == 0))
      {
        v13 = v19;
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v58 = 364;
        v59 = 2080;
        v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v23 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v13 = MEMORY[0x277CBEBF8];
LABEL_26:

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v58 = 292;
    v59 = 2080;
    v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_27:
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v13;
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [objc_opt_class() uuidFromLocalIdentifier:v7];
  v11 = v10;
  if (v10 && [v10 length])
  {
    v33 = a4;
    v34 = v8;
    v35 = v7;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [*(a1 + 40) objectForKeyedSubscript:v16];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 unsignedIntegerValue];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v24 = PGGraphChangeStringFromMomentUpdateType(v19);
              *buf = 138412802;
              v43 = v11;
              v44 = 2112;
              v45 = v16;
              v46 = 2112;
              v47 = v24;
              _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Moment Updated %@, Property changed %@, Need to trigger an %@", buf, 0x20u);
            }

            v20 = [[PGGraphMomentChange alloc] initWithMomentUUID:v11 updateTypes:v19];
            [*(a1 + 48) addObject:v20];
          }

          v21 = [*(a1 + 56) objectForKeyedSubscript:v16];
          if (v21)
          {
            v22 = [*(a1 + 64) objectForKeyedSubscript:v11];
            if (!v22)
            {
              v22 = [MEMORY[0x277CCAB58] indexSet];
              [*(a1 + 64) setObject:v22 forKeyedSubscript:v11];
            }

            v23 = [v21 unsignedIntegerValue];
            [v22 addIndex:v23];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v25 = PGGraphChangeStringFromHighlightUpdateType(v23);
              *buf = 138412802;
              v43 = v11;
              v44 = 2112;
              v45 = v16;
              v46 = 2112;
              v47 = v25;
              _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Moment %@ updated %@, Need to update highlight for updateType %@", buf, 0x20u);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v13);
    }

    v8 = v34;
    v7 = v35;
    if (*(a1 + 72))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v27 = *(*(a1 + 80) + 8);
      if (Current - *(v27 + 24) >= *(a1 + 96))
      {
        *(v27 + 24) = Current;
        buf[0] = 0;
        (*(*(a1 + 72) + 16))(0.5);
        *(*(*(a1 + 88) + 8) + 24) |= buf[0];
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *v33 = 1;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 32);
    v30 = objc_opt_class();
    v31 = *(a1 + 32);
    v32 = [objc_opt_class() entityClassName];
    *buf = 138413314;
    v43 = v11;
    v44 = 2112;
    v45 = v7;
    v46 = 2112;
    v47 = v30;
    v48 = 2112;
    v49 = v32;
    v50 = 2112;
    v51 = v8;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Moment updated but momentUUID is invalid (%@) for local identifier: %@, class: %@, entityClassName: %@, changedPropertyNames: %@", buf, 0x34u);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_331(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __101__PGGraphMomentTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Delete %ld moments", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphMomentsDeletion alloc] initWithMomentUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)identifiers progressBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [identifiersCopy count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Insert %ld new moments", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:identifiersCopy];
  v6 = [[PGGraphMomentsInsertion alloc] initWithMomentUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end