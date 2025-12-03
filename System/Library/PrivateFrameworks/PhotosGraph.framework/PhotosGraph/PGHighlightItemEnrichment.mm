@interface PGHighlightItemEnrichment
- (PGHighlightItemEnrichment)initWithRule:(id)rule modelWriter:(id)writer;
- (void)contextualKeyAssetForYearHighlightItemLists:(id)lists withManager:(id)manager curationContext:(id)context options:(id)options progressBlock:(id)block;
- (void)enrichHighlightItemLists:(id)lists progressBlock:(id)block;
- (void)updateVisibilityStateForHighlightItemLists:(id)lists withManager:(id)manager progressBlock:(id)block;
@end

@implementation PGHighlightItemEnrichment

- (void)enrichHighlightItemLists:(id)lists progressBlock:(id)block
{
  v51 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  blockCopy = block;
  if ([listsCopy count])
  {
    v8 = 0.0;
    v38 = _Block_copy(blockCopy);
    if (v38)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current >= 0.01)
      {
        v43 = 0;
        v38[2](v38, &v43, 0.0);
        if (v43 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v45 = 232;
            *&v45[4] = 2080;
            *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_54:

          goto LABEL_55;
        }

        v8 = Current;
      }
    }

    loggingConnection = [(PGHighlightItemEnrichmentRule *)self->_rule loggingConnection];
    modelWriter = [(PGHighlightItemEnrichment *)self modelWriter];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = loggingConnection;
      v13 = [listsCopy count];
      rule = self->_rule;
      *buf = 134218242;
      *v45 = v13;
      *&v45[8] = 2112;
      *&v45[10] = rule;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "Enriching %ld time unit list using rule %@", buf, 0x16u);
    }

    v15 = [listsCopy count];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = listsCopy;
    obj = listsCopy;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 1.0 / v15;
      v19 = *v40;
      v20 = 0.0;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          if ([modelWriter visibilityStateForHighlightItem:v22 sharingFilter:0])
          {
            v23 = objc_autoreleasePoolPush();
            v24 = [(PGHighlightItemEnrichmentRule *)self->_rule keyAssetForHighlightItemList:v22 sharingFilter:0];
            if (v24)
            {
              [v22 setKeyAssetPrivate:v24];
            }

            else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v45 = v22;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to enrich highlight %@: no private key asset found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v23);
          }

          else
          {
            v24 = 0;
          }

          if ([modelWriter visibilityStateForHighlightItem:v22 sharingFilter:1])
          {
            v25 = objc_autoreleasePoolPush();
            v26 = [(PGHighlightItemEnrichmentRule *)self->_rule keyAssetForHighlightItemList:v22 sharingFilter:1];
            if (v26)
            {
              [v22 setKeyAssetShared:v26];
            }

            else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v45 = v22;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to enrich highlight %@: no shared key asset found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v25);
          }

          else
          {
            v26 = 0;
          }

          if ([v22 sharingComposition] == 2)
          {
            if (v24 && v26)
            {
              v27 = [PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:v24 keyAssetShared:v26 shouldCompareHighlight:1];
            }

            else if (v24)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2 * (v26 != 0);
            }
          }

          else
          {
            v27 = 0;
          }

          [v22 setMixedSharingCompositionKeyAssetRelationship:v27];
          v28 = objc_autoreleasePoolPush();
          [(PGHighlightItemEnrichmentRule *)self->_rule promotionScoreForHighlightItemList:v22];
          v30 = v29;
          [v22 setPromotionScore:?];
          objc_autoreleasePoolPop(v28);
          v31 = loggingConnection;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v33 = [0 count];
            *buf = 138413058;
            *v45 = v22;
            *&v45[8] = 2112;
            *&v45[10] = v24;
            v46 = 2048;
            v47 = v33;
            v48 = 2048;
            v49 = v30;
            _os_log_debug_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEBUG, "Enriched %@ with:\n\tKey asset: %@\n\tCurated assets count: %lu\n\tPromotion score: %.2f", buf, 0x2Au);
          }

          v20 = v18 + v20;
          if (v38)
          {
            v32 = CFAbsoluteTimeGetCurrent();
            if (v32 - v8 >= 0.01)
            {
              v43 = 0;
              v38[2](v38, &v43, v20);
              if (v43)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v45 = 314;
                  *&v45[4] = 2080;
                  *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                blockCopy = v35;
                listsCopy = v36;
                goto LABEL_53;
              }

              v8 = v32;
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    blockCopy = v35;
    listsCopy = v36;
    if (v38)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v43 = 0;
        v38[2](v38, &v43, 1.0);
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v45 = 317;
            *&v45[4] = 2080;
            *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_55:

  v34 = *MEMORY[0x277D85DE8];
}

void __168__PGHighlightItemEnrichment__contextualKeyAssetForYearHighlightItemList_sharingFilter_curationContext_contextualOptions_options_availableContextualRules_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, double a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  [v13 promotionScore];
  v16 = v15;
  v17 = *(*(a1 + 40) + 8);
  if (!*(v17 + 40))
  {
    goto LABEL_5;
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);
  if (v18 < a6)
  {
    goto LABEL_5;
  }

  if (v18 == a6)
  {
    v19 = *(*(*(a1 + 56) + 8) + 24);
    if (v16 > v19)
    {
LABEL_5:
      objc_storeStrong((v17 + 40), a2);
      *(*(*(a1 + 48) + 8) + 24) = a6;
      *(*(*(a1 + 56) + 8) + 24) = v16;
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
      goto LABEL_6;
    }

    if (v16 == v19)
    {
      v22 = [*(*(*(a1 + 64) + 8) + 40) uuid];
      v23 = [v13 uuid];
      v24 = [v22 compare:v23];

      if (v24 == -1)
      {
        v17 = *(*(a1 + 40) + 8);
        goto LABEL_5;
      }
    }
  }

LABEL_6:
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v21 = *(*(a1 + 80) + 8);
    if (Current - *(v21 + 24) >= *(a1 + 96))
    {
      *(v21 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 104));
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a5 = 1;
      }
    }
  }
}

- (void)contextualKeyAssetForYearHighlightItemLists:(id)lists withManager:(id)manager curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  managerCopy = manager;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  if ([listsCopy count])
  {
    v17 = _Block_copy(blockCopy);
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    if (v17 && (v18 = CFAbsoluteTimeGetCurrent(), v18 - v39[3] >= 0.01) && (v39[3] = v18, v37 = 0, (*(v17 + 2))(v17, &v37, 0.0), v19 = *(v43 + 24) | v37, *(v43 + 24) = v19, (v19 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v47 = 98;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      loggingConnection = [(PGHighlightItemEnrichmentRule *)self->_rule loggingConnection];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke;
      v26[3] = &unk_278881458;
      v27 = managerCopy;
      v28 = optionsCopy;
      v21 = loggingConnection;
      v29 = v21;
      v30 = listsCopy;
      v22 = v17;
      v36 = 0x3F847AE147AE147BLL;
      v34 = &v38;
      v35 = &v42;
      v33 = v22;
      selfCopy = self;
      v32 = contextCopy;
      [v27 performSynchronousConcurrentGraphReadUsingBlock:v26];
      if (v17)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v39[3] >= 0.01)
        {
          v39[3] = Current;
          v37 = 0;
          (*(v22 + 2))(v22, &v37, 1.0);
          v24 = *(v43 + 24) | v37;
          *(v43 + 24) = v24;
          if ((v24 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v47 = 143;
            v48 = 2080;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PGContextualOptions alloc];
  v30 = v3;
  v5 = [v3 graph];
  v6 = [*(a1 + 32) photoLibrary];
  v7 = [*(a1 + 32) curationManager];
  v8 = [(PGContextualOptions *)v4 initWithGraph:v5 photoLibrary:v6 curationManager:v7 options:*(a1 + 40) loggingConnection:*(a1 + 48)];

  v33 = v8;
  v9 = [(PGContextualOptions *)v8 availableContextualRules];
  v10 = [*(a1 + 56) count];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 56);
  v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 1.0 / v10;
    v14 = *v46;
    v15 = 0.0;
    v31 = v9;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v45 + 1) + 8 * v16);
      v15 = v13 + v15;
      if (*(a1 + 80))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v19 = *(*(a1 + 88) + 8);
        if (Current - *(v19 + 24) >= *(a1 + 104))
        {
          *(v19 + 24) = Current;
          v44 = 0;
          (*(*(a1 + 80) + 16))(v15);
          *(*(*(a1 + 96) + 8) + 24) |= v44;
          if (*(*(*(a1 + 96) + 8) + 24))
          {
            goto LABEL_19;
          }
        }
      }

      v20 = [v17 sharingComposition];
      if (!v20)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_16;
      }

      if (v20 == 2)
      {
        v21 = 1;
        goto LABEL_14;
      }

LABEL_17:
      if (v12 == ++v16)
      {
        v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v21 = 0;
LABEL_14:
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 40);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_2;
    v39[3] = &unk_27888A1B0;
    v40 = *(a1 + 80);
    v42 = *(a1 + 104);
    v43 = v15;
    v41 = *(a1 + 88);
    v9 = v31;
    [v22 _contextualKeyAssetForYearHighlightItemList:v17 sharingFilter:0 curationContext:v23 contextualOptions:v33 options:v24 availableContextualRules:v31 progressBlock:v39];
    LOBYTE(v22) = *(*(*(a1 + 96) + 8) + 24);

    if (v22)
    {
      goto LABEL_19;
    }

    if (v21)
    {
LABEL_16:
      v25 = *(a1 + 64);
      v26 = *(a1 + 72);
      v27 = *(a1 + 40);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_3;
      v34[3] = &unk_27888A1B0;
      v35 = *(a1 + 80);
      v37 = *(a1 + 104);
      v38 = v15;
      v36 = *(a1 + 88);
      [v25 _contextualKeyAssetForYearHighlightItemList:v17 sharingFilter:1 curationContext:v26 contextualOptions:v33 options:v27 availableContextualRules:v9 progressBlock:v34];
      v28 = *(*(*(a1 + 96) + 8) + 24);

      if (v28)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)updateVisibilityStateForHighlightItemLists:(id)lists withManager:(id)manager progressBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  managerCopy = manager;
  blockCopy = block;
  if ([listsCopy count])
  {
    v11 = _Block_copy(blockCopy);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke;
    v15[3] = &unk_278881430;
    v16 = listsCopy;
    selfCopy = self;
    v12 = v11;
    v18 = v12;
    v19 = &v22;
    v20 = &v26;
    v21 = 0x3F847AE147AE147BLL;
    [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v15];
    if (*(v27 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v31 = 87;
        v32 = 2080;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else if (v12)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v23[3] >= 0.01)
      {
        v23[3] = Current;
        buf[0] = 0;
        (*(v12 + 2))(v12, buf, 1.0);
        *(v27 + 24) |= buf[0];
      }
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v3 = [v18 graph];
  v4 = [*(a1 + 32) count];
  objc_initWeak(&location, *(a1 + 40));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = 1.0 / v4;
    v7 = *v26;
    v8 = 0.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      if (!*(a1 + 48))
      {
        goto LABEL_10;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v13 = *(*(a1 + 56) + 8);
      if (Current - *(v13 + 24) >= *(a1 + 72) && (*(v13 + 24) = Current, v24 = 0, (*(*(a1 + 48) + 16))(v8), *(*(*(a1 + 64) + 8) + 24) |= v24, (*(*(*(a1 + 64) + 8) + 24) & 1) != 0))
      {
        v14 = 0;
      }

      else
      {
LABEL_10:
        v15 = [v10 kind] == 2 ? 4 : 2;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_2;
        aBlock[3] = &unk_278881408;
        objc_copyWeak(&v22, &location);
        aBlock[4] = v10;
        v21 = v3;
        v23 = v15;
        v16 = _Block_copy(aBlock);
        v16[2](v16, 0);
        v16[2](v16, 1);
        v16[2](v16, 2);

        objc_destroyWeak(&v22);
        v8 = v6 + v8;
        v14 = 1;
      }

      objc_autoreleasePoolPop(v11);
      if (!v14)
      {
        break;
      }

      if (v5 == ++v9)
      {
        v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [WeakRetained rule];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [WeakRetained neighborScoreComputer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_3;
  v11[3] = &unk_2788813E0;
  v12 = a2;
  v11[4] = WeakRetained;
  v11[5] = &v13;
  [v5 enumerateChildVisibilityStateForHighlightItemList:v7 sharingFilter:a2 withGraph:v6 neighborScoreComputer:v8 usingBlock:v11];

  if (*(v14 + 24) == 1)
  {
    v9 = *(a1 + 56);
  }

  else
  {
    v9 = 0;
  }

  v10 = [WeakRetained modelWriter];
  [v10 setVisibilityState:v9 forHighlightItemList:*(a1 + 32) sharingFilter:a2];

  _Block_object_dispose(&v13, 8);
}

uint64_t __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 modelWriter];
  [v7 setVisibilityState:a3 forHighlightItem:v6 sharingFilter:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24))
  {
    result = 1;
  }

  else
  {
    result = MEMORY[0x231902060](a3);
    v8 = *(*(a1 + 40) + 8);
  }

  *(v8 + 24) = result;
  return result;
}

- (PGHighlightItemEnrichment)initWithRule:(id)rule modelWriter:(id)writer
{
  ruleCopy = rule;
  writerCopy = writer;
  v14.receiver = self;
  v14.super_class = PGHighlightItemEnrichment;
  v9 = [(PGHighlightItemEnrichment *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rule, rule);
    objc_storeStrong(&v10->_modelWriter, writer);
    v11 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v10->_neighborScoreComputer;
    v10->_neighborScoreComputer = v11;
  }

  return v10;
}

@end