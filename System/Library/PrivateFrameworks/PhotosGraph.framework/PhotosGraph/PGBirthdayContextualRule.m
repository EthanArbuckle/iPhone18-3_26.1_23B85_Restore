@interface PGBirthdayContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3;
- (PGBirthdayContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 curationManager:(id)a5 loggingConnection:(id)a6;
- (id)_bestAssetInCuratedAssets:(id)a3 forPerson:(id)a4 contextualScore:(double *)a5;
- (id)_bestBirthdayCelebrationAssetForHighlightNode:(id)a3 assetCollection:(id)a4 curationContext:(id)a5;
- (id)_fetchCuratedAssetsForHighlightItem:(id)a3 intersectingAssets:(id)a4;
- (id)_filterCuratedAssets:(id)a3 forHighlightItem:(id)a4;
@end

@implementation PGBirthdayContextualRule

- (id)_bestBirthdayCelebrationAssetForHighlightNode:(id)a3 assetCollection:(id)a4 curationContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 graph];
  v12 = [(PGCurationManager *)self->_curationManager curationCriteriaFactory];
  v13 = [v12 curationCriteriaWithCollection:v10 meaningLabel:@"Birthday" inGraph:v11 client:0];

  v14 = objc_alloc_init(PGKeyAssetCurationOptions);
  curationManager = self->_curationManager;
  v16 = [v10 UUID];

  v17 = [(PGCurationManager *)curationManager curatedKeyAssetForCollectionUUID:v16 curatedAssetCollection:v9 options:v14 criteria:v13 curationContext:v8];

  return v17;
}

- (id)_bestAssetInCuratedAssets:(id)a3 forPerson:(id)a4 contextualScore:(double *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v41 = a4;
  v7 = [v41 localIdentifier];
  v46 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v6 options:0];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v47 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v47)
  {
    v44 = 0;
    v45 = *v54;
    v8 = 0.5;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v53 + 1) + 8 * i);
        v12 = [v11 localIdentifier];
        v13 = [v46 objectForKeyedSubscript:v12];

        v48 = [v13 count];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v50;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v50 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v49 + 1) + 8 * j);
              v20 = [v19 personLocalIdentifier];
              v21 = [v20 isEqualToString:v7];

              if (v21)
              {
                v22 = v19;

                if (v22)
                {
                  v23 = [v11 pixelWidth];
                  v24 = 1.3333 / (v23 / [v11 pixelHeight]);
                  [v22 size];
                  v26 = v25 * v24;
                  v27 = 0.0;
                  if (v26 >= 0.05 && v26 <= v8)
                  {
                    v29 = 0.15;
                    if (v26 > 0.15)
                    {
                      v8 = 0.5;
                      v26 = 0.5 - fmin(v26, 0.5);
                      v29 = 0.35;
                    }

                    v27 = v26 / v29;
                  }

                  v30 = ceil(v27 * 4.0) * 0.25;
                  [v11 overallAestheticScore];
                  v32 = ceil(v31 * 10.0) / 10.0;
                  [v11 curationScore];
                  v34 = 1.0 / v48 + v30 * 0.1 + v32 * 0.01 + ceil(v33 * 10.0) / 10.0 * 0.01;
                  [v22 quality];
                  v36 = v34 + fmax(v35, 0.0) * 0.001;
                  if (!v44 || v36 > v9)
                  {
                    v37 = v11;

                    *a5 = v36;
                    v44 = v37;
                    v9 = v36;
                  }
                }

                goto LABEL_27;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v22 = 0;
LABEL_27:
      }

      v47 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v47);
  }

  else
  {
    v44 = 0;
  }

  v38 = v44;
  v39 = *MEMORY[0x277D85DE8];
  return v44;
}

- (id)_fetchCuratedAssetsForHighlightItem:(id)a3 intersectingAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGBirthdayContextualRule *)self _filterCuratedAssets:v7 forHighlightItem:v6];
  if ([v8 count])
  {
    v9 = [v6 extendedCuratedAssets];
    v10 = [MEMORY[0x277CBEB98] setWithArray:v9];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", v10];
    v12 = [v7 filteredArrayUsingPredicate:v11];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)_filterCuratedAssets:(id)a3 forHighlightItem:(id)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a4;
  v7 = a3;
  v8 = [v6 startDate];
  v9 = [v6 endDate];

  v10 = [v5 predicateWithFormat:@"creationDate >= %@ && creationDate <= %@", v8, v9];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  return v11;
}

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v4 localTodayComponents];

  v8 = [v7 month];
  v9 = [v7 day];
  v10 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:self->_graph];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke;
  v35[3] = &unk_2788864B0;
  v35[4] = self;
  v38 = v8;
  v39 = v9;
  v11 = v5;
  v36 = v11;
  v12 = v6;
  v37 = v12;
  v29 = v10;
  [v10 enumerateNodesUsingBlock:v35];
  v13 = +[PGGraphPersonNode personScoreSortDescriptors];
  [v11 sortUsingDescriptors:v13];

  v14 = objc_opt_new();
  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_191;
  v32[3] = &unk_2788864D8;
  v16 = v15;
  v33 = v16;
  v17 = v14;
  v34 = v17;
  [v11 enumerateObjectsUsingBlock:v32];
  objc_storeStrong(&self->_personNodeByLocalIdentifier, v14);
  v18 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v19 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v12 options:v18];
  v20 = [v19 fetchedObjects];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_2;
  v30[3] = &unk_278886500;
  v21 = v16;
  v31 = v21;
  v22 = [v20 sortedArrayUsingComparator:v30];
  availablePersons = self->_availablePersons;
  self->_availablePersons = v22;

  v24 = [(NSArray *)self->_availablePersons count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_availablePersons;
    *buf = 138413059;
    v41 = self;
    v42 = 1024;
    v43 = v24 != 0;
    v44 = 2048;
    v45 = v24;
    v46 = 2113;
    v47 = v26;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d, for %lu persons: %{private}@", buf, 0x26u);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v24 != 0;
}

void __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isMeNode] & 1) != 0 || (objc_msgSend(v3, "isFavorite") & 1) != 0 || (objc_msgSend(v3, "collection"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "socialGroupNodes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v7 = [v3 birthdayDateComponents];
    if (!v7)
    {
      v7 = [v3 potentialBirthdayDateComponents];
      if (!v7)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(*(a1 + 32) + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138477827;
        v15 = v3;
        _os_log_debug_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEBUG, "No birthday date found for %{private}@, taking the potential birthday.", &v14, 0xCu);
      }
    }

    if ([v7 month] == *(a1 + 56) && objc_msgSend(v7, "day") == *(a1 + 64))
    {
      v9 = *(*(a1 + 32) + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = 138477827;
        v15 = v3;
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Can provide contextual asset for person %{private}@", &v14, 0xCu);
      }

      [*(a1 + 40) addObject:v3];
      v10 = *(a1 + 48);
      v11 = [v3 localIdentifier];
      [v10 addObject:v11];
    }

    goto LABEL_13;
  }

  v13 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138477827;
    v15 = v3;
    _os_log_debug_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEBUG, "Skipping person %{private}@, not part of any social groups nor favorited.", &v14, 0xCu);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

void __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_191(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = [v5 localIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v7];
}

uint64_t __69__PGBirthdayContextualRule_canProvideContextualKeyAssetsWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 localIdentifier];
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = *(a1 + 32);
  v10 = [v6 localIdentifier];

  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (PGBirthdayContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 curationManager:(id)a5 loggingConnection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGBirthdayContextualRule;
  v15 = [(PGBirthdayContextualRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_graph, a3);
    objc_storeStrong(&v16->_photoLibrary, a4);
    objc_storeStrong(&v16->_curationManager, a5);
    objc_storeStrong(&v16->_loggingConnection, a6);
  }

  return v16;
}

@end