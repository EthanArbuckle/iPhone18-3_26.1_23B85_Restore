@interface PGGraphHighlightTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5;
- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4;
- (id)graphChangesForInsertedLocalIdentifiers:(id)a3 progressBlock:(id)a4;
- (id)highlightUpdateAssetCountProperties;
- (id)highlightUpdateDateProperties;
- (id)highlightUpdateSearchProperties;
- (id)highlightUpdateTypeProperties;
- (id)momentUpdateTypeByHighlightProperty;
@end

@implementation PGGraphHighlightTranslator

- (id)momentUpdateTypeByHighlightProperty
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"extendedCount";
  v6[0] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)highlightUpdateSearchProperties
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"verboseSmartDescription";
  v7[1] = @"subtitle";
  v7[2] = @"title";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)highlightUpdateAssetCountProperties
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"estimatedAssetCount";
  v7[1] = @"dayGroupAssetsCount";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)highlightUpdateTypeProperties
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"type";
  v7[1] = @"category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)highlightUpdateDateProperties
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"startDate";
  v7[1] = @"endDate";
  v7[2] = @"startTimeZoneOffset";
  v7[3] = @"endTimeZoneOffset";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)a3 change:(id)a4 progressBlock:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v40 = a4;
  v8 = a5;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v41 = _Block_copy(v8);
  if (!v41 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v60[3] < 0.01) || (v60[3] = v9, v58 = 0, (*(v41 + 2))(v41, &v58, 0.0), v10 = *(v64 + 24) | v58, *(v64 + 24) = v10, (v10 & 1) == 0))
  {
    v12 = [(PGGraphHighlightTranslator *)self highlightUpdateDateProperties];
    v13 = [(PGGraphHighlightTranslator *)self highlightUpdateTypeProperties];
    v14 = [(PGGraphHighlightTranslator *)self highlightUpdateAssetCountProperties];
    v15 = [(PGGraphHighlightTranslator *)self highlightUpdateSearchProperties];
    v16 = v8;
    v17 = [(PGGraphHighlightTranslator *)self momentUpdateTypeByHighlightProperty];
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = [MEMORY[0x277CBEB18] array];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v45[3] = &unk_278887BA0;
    v36 = v12;
    v46 = v36;
    v37 = v13;
    v47 = v37;
    v48 = v40;
    v20 = v15;
    v49 = v20;
    v38 = v14;
    v50 = v38;
    v21 = v19;
    v51 = v21;
    v22 = v17;
    v52 = v22;
    v23 = v18;
    v53 = v23;
    v24 = v41;
    v54 = v24;
    v55 = &v59;
    v56 = &v63;
    v57 = 0x3F847AE147AE147BLL;
    [v39 enumerateKeysAndObjectsUsingBlock:v45];
    v8 = v16;
    if ([v23 count])
    {
      v25 = [(PGGraphEntityTranslator *)self photoLibrary];
      v26 = [v25 librarySpecificFetchOptions];

      v27 = [v23 allKeys];
      v28 = [MEMORY[0x277CD98F8] fetchMomentUUIDsByPhotosHighlightUUIDForPhotosHighlightUUIDs:v27 options:v26];
      if (v41)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v60[3] >= 0.01)
        {
          v60[3] = Current;
          v58 = 0;
          (*(v24 + 2))(v24, &v58, 0.5);
          v30 = *(v64 + 24) | v58;
          *(v64 + 24) = v30;
          if (v30)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v68 = 487;
              v69 = 2080;
              v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_20;
          }
        }
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_360;
      v42[3] = &unk_278887B78;
      v31 = v28;
      v43 = v31;
      v44 = v21;
      [v23 enumerateKeysAndObjectsUsingBlock:v42];
    }

    if (!v41 || (v32 = CFAbsoluteTimeGetCurrent(), v32 - v60[3] < 0.01) || (v60[3] = v32, v58 = 0, (*(v24 + 2))(v24, &v58, 1.0), v33 = *(v64 + 24) | v58, *(v64 + 24) = v33, (v33 & 1) == 0))
    {
      v11 = v21;
      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v68 = 499;
      v69 = 2080;
      v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_20:
    v11 = MEMORY[0x277CBEBF8];
LABEL_22:

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v68 = 418;
    v69 = 2080;
    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_23:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  v34 = *MEMORY[0x277D85DE8];

  return v11;
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CD9958] uuidFromLocalIdentifier:v6];
  if ([v7 intersectsSet:*(a1 + 32)])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if ([v7 intersectsSet:{*(a1 + 40), a4}])
  {
    v9 |= 4uLL;
  }

  if (([*(a1 + 48) momentRelationshipChangedForHighlightWithLocalIdentifier:v6] & 1) != 0 || objc_msgSend(*(a1 + 48), "highlightGroupRelationshipChangedForHighlightWithLocalIdentifier:", v6))
  {
    v9 |= 8uLL;
  }

  v10 = v9 | [*(a1 + 48) assetsOrDayGroupAssetsRelationshipChangedForHighlightWithLocalIdentifier:v6];
  if (([v7 intersectsSet:*(a1 + 56)] & 1) != 0 || (objc_msgSend(*(a1 + 48), "keyAssetPrivateOrDayGroupKeyAssetPrivateChangedForHighlightWithLocalIdentifier:", v6) & 1) != 0 || objc_msgSend(*(a1 + 48), "keyAssetSharedOrDayGroupKeyAssetSharedChangedForHighlightWithLocalIdentifier:", v6))
  {
    v10 |= 0x40uLL;
  }

  v27 = v6;
  if ([v7 intersectsSet:*(a1 + 64)])
  {
    v10 |= 0x10uLL;
  }

  if (v10)
  {
    v11 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:v8 updateTypes:v10];
    [*(a1 + 72) addObject:v11];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [*(a1 + 80) objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = [*(a1 + 88) objectForKeyedSubscript:v8];
          if (!v19)
          {
            v19 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 88) setObject:v19 forKeyedSubscript:v8];
          }

          v20 = [v18 unsignedIntegerValue];
          [v19 addIndex:v20];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v21 = PGGraphChangeStringFromMomentUpdateType(v20);
            *buf = 138412802;
            v33 = v8;
            v34 = 2112;
            v35 = v17;
            v36 = 2112;
            v37 = v21;
            _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Highlight %@ updated %@, Need to update moment for updateType %@", buf, 0x20u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v14);
  }

  if (*(a1 + 96))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v23 = *(*(a1 + 104) + 8);
    if (Current - *(v23 + 24) >= *(a1 + 120))
    {
      *(v23 + 24) = Current;
      buf[0] = 0;
      (*(*(a1 + 96) + 16))(0.5);
      *(*(*(a1 + 112) + 8) + 24) |= buf[0];
      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        *v26 = 1;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_360(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
        v13[3] = &unk_278889B40;
        v13[4] = v11;
        v14 = *(a1 + 40);
        [v5 enumerateIndexesUsingBlock:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __104__PGGraphHighlightTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphMomentChange alloc] initWithMomentUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)graphChangesForDeletedLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Delete %ld highlights", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:v4];
  v6 = [[PGGraphHighlightsDeletion alloc] initWithHighlightUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)graphChangesForInsertedLocalIdentifiers:(id)a3 progressBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Batch Updates - Insert %ld new highlights", buf, 0xCu);
  }

  v5 = [objc_opt_class() uuidsFromLocalIdentifiers:v4];
  v6 = [[PGGraphHighlightsInsertion alloc] initWithHighlightUUIDs:v5];
  v10 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end