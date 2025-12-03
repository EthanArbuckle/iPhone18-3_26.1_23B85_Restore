@interface PGGraphAssetTranslator
- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block;
- (id)highlightUpdateTypeByAssetProperty;
- (id)momentUpdateTypeByAssetProperty;
@end

@implementation PGGraphAssetTranslator

- (id)highlightUpdateTypeByAssetProperty
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"favorite";
  v5[1] = @"adjustmentTimestamp";
  v6[0] = &unk_284484530;
  v6[1] = &unk_284484530;
  v5[2] = @"analysisStateModificationDate";
  v6[2] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)momentUpdateTypeByAssetProperty
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"favorite";
  v5[1] = @"adjustmentTimestamp";
  v6[0] = &unk_284484530;
  v6[1] = &unk_284484530;
  v5[2] = @"analysisStateModificationDate";
  v6[2] = &unk_284484530;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)graphChangesForChangedPropertyNamesByLocalIdentifier:(id)identifier change:(id)change progressBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  changeCopy = change;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  if (!v10 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v61[3] < 0.01) || (v61[3] = v11, v59 = 0, (*(v10 + 2))(v10, &v59, 0.0), v12 = *(v65 + 24) | v59, *(v65 + 24) = v12, (v12 & 1) == 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    momentUpdateTypeByAssetProperty = [(PGGraphAssetTranslator *)self momentUpdateTypeByAssetProperty];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    highlightUpdateTypeByAssetProperty = [(PGGraphAssetTranslator *)self highlightUpdateTypeByAssetProperty];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke;
    v50[3] = &unk_278887B50;
    v50[4] = self;
    v18 = momentUpdateTypeByAssetProperty;
    v51 = v18;
    v19 = dictionary;
    v52 = v19;
    v20 = highlightUpdateTypeByAssetProperty;
    v53 = v20;
    v21 = dictionary2;
    v54 = v21;
    v22 = v10;
    v55 = v22;
    v56 = &v60;
    v57 = &v64;
    v58 = 0x3F847AE147AE147BLL;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v50];
    if (*(v65 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v69 = 197;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v13 = MEMORY[0x277CBEBF8];
      goto LABEL_41;
    }

    photoLibrary = [(PGGraphEntityTranslator *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    if ([v19 count])
    {
      allKeys = [v19 allKeys];
      v25 = [MEMORY[0x277CD98F8] fetchMomentUUIDByAssetUUIDForAssetUUIDs:allKeys options:librarySpecificFetchOptions];
      if (v10)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v61[3] >= 0.01)
        {
          v61[3] = Current;
          v59 = 0;
          (*(v22 + 2))(v22, &v59, 0.5);
          v27 = *(v65 + 24) | v59;
          *(v65 + 24) = v27;
          if (v27)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v69 = 206;
              v70 = 2080;
              v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_38;
          }
        }
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_303;
      v47[3] = &unk_278887B78;
      v28 = v25;
      v48 = v28;
      v49 = array;
      [v19 enumerateKeysAndObjectsUsingBlock:v47];
    }

    if (v10 && (v29 = CFAbsoluteTimeGetCurrent(), v29 - v61[3] >= 0.01) && (v61[3] = v29, v59 = 0, (*(v22 + 2))(v22, &v59, 0.5), v30 = *(v65 + 24) | v59, *(v65 + 24) = v30, (v30 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v69 = 220;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v31 = MEMORY[0x277D86220];
LABEL_37:
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v21 count])
      {
        allKeys2 = [v21 allKeys];
        v33 = [MEMORY[0x277CD9958] fetchPhotosHighlightUUIDByAssetUUIDForAssetUUIDs:allKeys2 options:librarySpecificFetchOptions];
        if (v10)
        {
          v34 = CFAbsoluteTimeGetCurrent();
          if (v34 - v61[3] >= 0.01)
          {
            v61[3] = v34;
            v59 = 0;
            (*(v22 + 2))(v22, &v59, 0.5);
            v35 = *(v65 + 24) | v59;
            *(v65 + 24) = v35;
            if (v35)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v69 = 227;
                v70 = 2080;
                v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_38;
            }
          }
        }

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_308;
        v44[3] = &unk_278887B78;
        v36 = v33;
        v45 = v36;
        v46 = array;
        [v21 enumerateKeysAndObjectsUsingBlock:v44];
      }

      if (!v10 || (v37 = CFAbsoluteTimeGetCurrent(), v37 - v61[3] < 0.01) || (v61[3] = v37, v59 = 0, (*(v22 + 2))(v22, &v59, 1.0), v38 = *(v65 + 24) | v59, *(v65 + 24) = v38, (v38 & 1) == 0))
      {
        v13 = array;
        goto LABEL_40;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v69 = 241;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
        v31 = MEMORY[0x277D86220];
        goto LABEL_37;
      }
    }

LABEL_38:
    v13 = MEMORY[0x277CBEBF8];
LABEL_40:

LABEL_41:
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v69 = 150;
    v70 = 2080;
    v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGGraphEntityTranslator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_42:
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v39 = *MEMORY[0x277D85DE8];

  return v13;
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v24 = v6;
  v9 = [objc_opt_class() uuidFromLocalIdentifier:v6];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [*(a1 + 40) objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = [*(a1 + 48) objectForKeyedSubscript:v9];
          if (!v17)
          {
            v17 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 48) setObject:v17 forKeyedSubscript:v9];
          }

          [v17 addIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];
        }

        v18 = [*(a1 + 56) objectForKeyedSubscript:v15];
        if (v18)
        {
          v19 = [*(a1 + 64) objectForKeyedSubscript:v9];
          if (!v19)
          {
            v19 = [MEMORY[0x277CCAB58] indexSet];
            [*(a1 + 64) setObject:v19 forKeyedSubscript:v9];
          }

          [v19 addIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  if (*(a1 + 72))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v21 = *(*(a1 + 80) + 8);
    if (Current - *(v21 + 24) >= *(a1 + 96))
    {
      *(v21 + 24) = Current;
      (*(*(a1 + 72) + 16))(0.5);
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_303(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_308(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2_309;
    v8[3] = &unk_278889B40;
    v9 = v6;
    v10 = *(a1 + 40);
    [v5 enumerateIndexesUsingBlock:v8];
  }
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2_309(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphHighlightChange alloc] initWithHighlightUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

void __100__PGGraphAssetTranslator_graphChangesForChangedPropertyNamesByLocalIdentifier_change_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[PGGraphMomentChange alloc] initWithMomentUUID:*(a1 + 32) updateTypes:a2];
  [*(a1 + 40) addObject:v3];
}

@end