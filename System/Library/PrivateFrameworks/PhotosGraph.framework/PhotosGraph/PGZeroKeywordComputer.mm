@interface PGZeroKeywordComputer
+ (id)contextualHolidayZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
+ (id)zeroKeywordLog;
- (PGZeroKeywordComputer)initWithPhotoLibrary:(id)a3 curationManager:(id)a4 searchComputationCache:(id)a5;
- (id)_tripZeroKeywordWithGraph:(id)a3 curationContext:(id)a4 score:(double *)a5;
- (id)_zeroKeywordDisplayMeaningNodeForMeaningNode:(id)a3;
- (id)_zeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
- (id)contextualDateZeroKeywordsWithGraph:(id)a3 options:(id)a4;
- (id)contextualMeaningAndTripZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
- (id)contextualPersonZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)contextualSceneZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)contextualSeasonZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5;
- (id)contextualSocialGroupZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)eventZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
- (id)meaningNodeZeroKeywordForDisplayMeaningNode:(id)a3 collectionUUIDsToAvoid:(id)a4 curationContext:(id)a5;
- (id)momentNodesOverlappingLocalDateInterval:(id)a3 inGraph:(id)a4;
- (id)peopleZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
- (id)placeZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)sceneZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:(id)a3;
- (id)socialGroupKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
- (id)tripRankedKeywordWithGraph:(id)a3 curationContext:(id)a4;
- (id)zeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6;
@end

@implementation PGZeroKeywordComputer

- (id)momentNodesOverlappingLocalDateInterval:(id)a3 inGraph:(id)a4
{
  v5 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:a3 inGraph:a4];
  if ([(PGZeroKeywordComputer *)self shouldFilterMomentNodesWithPresence])
  {
    v6 = [(PGZeroKeywordComputer *)self momentNodesWhereMeIsPresent];
    v7 = [v5 collectionByIntersecting:v6];

    v5 = v7;
  }

  return v5;
}

- (id)_zeroKeywordDisplayMeaningNodeForMeaningNode:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32890;
  v16 = __Block_byref_object_dispose__32891;
  v17 = 0;
  v4 = [v3 graph];
  v5 = [v4 zeroKeywordMappingByMeaningLabel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__PGZeroKeywordComputer_Contextual___zeroKeywordDisplayMeaningNodeForMeaningNode___block_invoke;
  v9[3] = &unk_278883368;
  v6 = v3;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __82__PGZeroKeywordComputer_Contextual___zeroKeywordDisplayMeaningNodeForMeaningNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 mappedMeaningNodes];
  if ([v6 containsObject:*(a1 + 32)])
  {
    v7 = [v10 displayNode];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (id)contextualDateZeroKeywordsWithGraph:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [v7 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277D27690] currentLocalDate];
  }

  v12 = v11;

  v13 = [MEMORY[0x277D27690] dateByAddingYears:-1 toDate:v12];
  v14 = [MEMORY[0x277D27690] dateByAddingDays:-3 toDate:v13];
  v15 = [MEMORY[0x277D27690] dateByAddingDays:3 toDate:v13];
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
  v17 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v16 inGraph:v8];

  if ([v17 count])
  {
    v27 = v9;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"PGZeroKeywordOneYearAgoSearchableText" value:@"PGZeroKeywordOneYearAgoSearchableText" table:@"Localizable"];

    v20 = MEMORY[0x277D3ACF8];
    v21 = [MEMORY[0x277D3AD78] locale];
    LODWORD(v20) = [v20 nlpSearchSupportsLocale:v21];

    if (v20)
    {
      v22 = [v17 set];
      v23 = bestEventNodeForEventNodes(v22);

      if (v23)
      {
        v24 = [v23 localIdentifier];
        v25 = zeroKeywordWithAttributes(7, 8, v19, v19, 0, v24);

        [v27 addObject:v25];
      }
    }

    v9 = v27;
  }

  return v9;
}

- (id)contextualMeaningAndTripZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v46 = a4;
  v9 = a5;
  v36 = a6;
  v10 = 0.0;
  v48 = _Block_copy(v36);
  v37 = v9;
  if (v48)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v52) = 0;
      v48[2](v48, &v52, 0.0);
      if (v52 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x1CE04000202;
          LOWORD(v66) = 2080;
          *(&v66 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_54;
      }

      v10 = Current;
    }
  }

  v13 = [v9 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
  v14 = v13;
  if (v13)
  {
    v42 = v13;
  }

  else
  {
    v42 = [MEMORY[0x277D27690] currentLocalDate];
  }

  v44 = [MEMORY[0x277CBEB18] array];
  v47 = [MEMORY[0x277CBEB58] set];
  v41 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:v42];
  v40 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v41 endDate:v42];
  v39 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v40 inGraph:v43];
  v15 = [v39 set];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  buf = v16;
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&v66 = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *(&v66 + 1) = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];

  v38 = [v15 sortedArrayUsingDescriptors:v19];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = [v38 reverseObjectEnumerator];
  v21 = [v20 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (!v21)
  {
    v45 = 0;
    goto LABEL_46;
  }

  v23 = 0;
  v45 = 0;
  v24 = *v59;
  *&v22 = 67109378;
  v35 = v22;
  while (2)
  {
    v25 = 0;
    do
    {
      if (*v59 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v58 + 1) + 8 * v25);
      if (![v26 isInteresting])
      {
        goto LABEL_34;
      }

      if ((v23 & 1) == 0)
      {
        if (![v26 isPartOfTrip])
        {
          v23 = 0;
          goto LABEL_24;
        }

        v27 = [(PGZeroKeywordComputer *)self tripZeroKeywordWithGraph:v43 curationContext:v46];
        if (v27)
        {
          [v44 addObject:v27];
        }
      }

      v23 = 1;
LABEL_24:
      buf = 0;
      *&v66 = &buf;
      *(&v66 + 1) = 0x3032000000;
      v67 = __Block_byref_object_copy__32890;
      v68 = __Block_byref_object_dispose__32891;
      v69 = 0;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__32890;
      v56 = __Block_byref_object_dispose__32891;
      v57 = 0;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __121__PGZeroKeywordComputer_Contextual__contextualMeaningAndTripZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
      v51[3] = &unk_278883340;
      v51[4] = self;
      v51[5] = &buf;
      v51[6] = &v52;
      [v26 enumerateMeaningEdgesAndNodesUsingBlock:v51];
      if (*(v66 + 40) && ([v47 containsObject:v53[5]] & 1) == 0 && (-[PGZeroKeywordComputer meaningNodeZeroKeywordForDisplayMeaningNode:collectionUUIDsToAvoid:curationContext:](self, "meaningNodeZeroKeywordForDisplayMeaningNode:collectionUUIDsToAvoid:curationContext:", v53[5], 0, v46), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        [v44 addObject:v28];

        v29 = 0;
        v30 = 1;
      }

      else
      {
        if (v48)
        {
          v31 = CFAbsoluteTimeGetCurrent();
          if (v31 - v10 >= 0.01)
          {
            v50 = 0;
            (v48)[2](v48, &v50, 0.5);
            if (v50 | v45 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v62[0] = v35;
                v62[1] = 527;
                v63 = 2080;
                v64 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v62, 0x12u);
              }

              v29 = 0;
              v30 = 0;
              v45 = 1;
            }

            else
            {
              v30 = 0;
              v45 = 0;
              v29 = 1;
            }

            goto LABEL_32;
          }
        }

        v30 = 0;
        v29 = 1;
      }

      v31 = v10;
LABEL_32:
      _Block_object_dispose(&v52, 8);

      _Block_object_dispose(&buf, 8);
      if (!v29)
      {

        if (v30)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v10 = v31;
LABEL_34:
      ++v25;
    }

    while (v21 != v25);
    v32 = [v20 countByEnumeratingWithState:&v58 objects:v70 count:16];
    v21 = v32;
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v31 = v10;
LABEL_47:
  if (v48 && CFAbsoluteTimeGetCurrent() - v31 >= 0.01 && (LOBYTE(v52) = 0, v48[2](v48, &v52, 1.0), v52 | v45 & 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x21204000202;
      LOWORD(v66) = 2080;
      *(&v66 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

LABEL_44:
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = v44;
  }

LABEL_54:
  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

void __121__PGZeroKeywordComputer_Contextual__contextualMeaningAndTripZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _zeroKeywordDisplayMeaningNodeForMeaningNode:v6];
  if (v7)
  {
    if ([v11 isReliable])
    {
      if ([v6 countOfEdgesWithLabel:@"MEANING" domain:700] >= 3)
      {
        [v11 confidence];
        v9 = v8;
        [*(*(*(a1 + 40) + 8) + 40) confidence];
        if (v9 > v10)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        }
      }
    }
  }
}

- (id)contextualSceneZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v43 = a4;
  v37 = a5;
  v8 = 0.0;
  v47 = _Block_copy(v37);
  if (v47)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v54[0]) = 0;
      v47[2](v47, v54, 0.0);
      if (LOBYTE(v54[0]) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x19204000202;
          LOWORD(v63) = 2080;
          *(&v63 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v10 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }

      v8 = Current;
    }
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v11 = [v43 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
  v12 = v11;
  if (v11)
  {
    v44 = v11;
  }

  else
  {
    v44 = [MEMORY[0x277D27690] currentLocalDate];
  }

  v41 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:v44];
  v40 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v41 endDate:v44];
  v46 = [MEMORY[0x277CBEB58] set];
  v39 = [(PGZeroKeywordComputer *)self momentNodesOverlappingLocalDateInterval:v40 inGraph:v42];
  v13 = [v39 set];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  buf = v14;
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&v63 = v15;
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *(&v63 + 1) = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];

  v38 = [v13 sortedArrayUsingDescriptors:v17];

  v58 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  v18 = [v38 reverseObjectEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (!v19)
  {
    v45 = 0;
    goto LABEL_38;
  }

  v45 = 0;
  v21 = *v56;
  *&v20 = 67109378;
  v36 = v20;
  while (2)
  {
    v22 = 0;
    do
    {
      if (*v56 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v55 + 1) + 8 * v22);
      if (![v23 isInteresting])
      {
        goto LABEL_26;
      }

      buf = 0;
      *&v63 = &buf;
      *(&v63 + 1) = 0x3032000000;
      v64 = __Block_byref_object_copy__32890;
      v65 = __Block_byref_object_dispose__32891;
      v66 = 0;
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x2020000000;
      v54[3] = 0;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __96__PGZeroKeywordComputer_Contextual__contextualSceneZeroKeywordsWithGraph_options_progressBlock___block_invoke;
      v50[3] = &unk_278883318;
      v24 = v46;
      v51 = v24;
      v52 = v54;
      p_buf = &buf;
      [v23 enumerateSceneEdgesAndNodesUsingBlock:v50];
      v25 = *(v63 + 40);
      if (!v25)
      {
        goto LABEL_51;
      }

      v26 = [v25 targetNode];
      v27 = [v26 localizedName];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "sceneIdentifier")}];
      v29 = zeroKeywordWithAttributes(3, 13, v27, 0, 0, v28);

      [v48 addObject:v29];
      [v24 addObject:v26];
      LOBYTE(v28) = [v48 count] < 2;

      if ((v28 & 1) == 0)
      {
        v32 = 0;
        v31 = 1;
      }

      else
      {
LABEL_51:
        if (v47)
        {
          v30 = CFAbsoluteTimeGetCurrent();
          if (v30 - v8 >= 0.01)
          {
            v49 = 0;
            (v47)[2](v47, &v49, 0.5);
            if (v49 | v45 & 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v59[0] = v36;
                v59[1] = 451;
                v60 = 2080;
                v61 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v59, 0x12u);
              }

              v32 = 0;
              v31 = 0;
              v45 = 1;
            }

            else
            {
              v31 = 0;
              v45 = 0;
              v32 = 1;
            }

            goto LABEL_24;
          }
        }

        v31 = 0;
        v32 = 1;
      }

      v30 = v8;
LABEL_24:

      _Block_object_dispose(v54, 8);
      _Block_object_dispose(&buf, 8);

      if (!v32)
      {

        if (v31)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v8 = v30;
LABEL_26:
      ++v22;
    }

    while (v19 != v22);
    v33 = [v18 countByEnumeratingWithState:&v55 objects:v67 count:16];
    v19 = v33;
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v30 = v8;
LABEL_39:
  if (v47 && CFAbsoluteTimeGetCurrent() - v30 >= 0.01 && (LOBYTE(v54[0]) = 0, v47[2](v47, v54, 1.0), LOBYTE(v54[0]) | v45 & 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x1C604000202;
      LOWORD(v63) = 2080;
      *(&v63 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

LABEL_36:
    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = v48;
  }

LABEL_46:
  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

void __96__PGZeroKeywordComputer_Contextual__contextualSceneZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    if ([v9 isReliable])
    {
      if ([v9 numberOfSearchConfidenceAssets])
      {
        if ([v6 isSuitableForSuggestions])
        {
          if ([v6 isIndexed])
          {
            v7 = [v9 numberOfSearchConfidenceAssets];
            v8 = (([v6 level] - 1) * 0.1 + 1.0) * v7;
            if (v8 > *(*(*(a1 + 40) + 8) + 24))
            {
              objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
              *(*(*(a1 + 40) + 8) + 24) = v8;
            }
          }
        }
      }
    }
  }
}

- (id)contextualSeasonZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEB18];
  v11 = a5;
  v12 = [v10 array];
  v13 = [v11 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277D27690] currentLocalDate];
  }

  v15 = v14;

  v16 = [v8 seasonNodeForLocalDate:v15];
  if ([MEMORY[0x277D27690] isFirstTenDaysOfSeasonForLocalDate:v15])
  {
    v17 = [v8 previousSeasonNodeForSeasonNode:v16];
    v18 = +[PGLogging sharedLogging];
    v19 = [v18 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v17 name];
      v29 = 138412290;
      v30 = v20;
      v21 = "Contextual Season ZK : previous season %@";
LABEL_9:
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, v21, &v29, 0xCu);
    }
  }

  else
  {
    v17 = v16;
    v22 = +[PGLogging sharedLogging];
    v19 = [v22 loggingConnection];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v17 name];
      v29 = 138412290;
      v30 = v20;
      v21 = "Contextual Season ZK : current season %@";
      goto LABEL_9;
    }
  }

  if (v17)
  {
    photoLibrary = self->_photoLibrary;
    curationManager = self->_curationManager;
    v25 = [(PGZeroKeywordComputer *)self searchComputationCache];
    v26 = seasonNodeZeroKeyword(v17, photoLibrary, curationManager, v25, v9);

    if (v26)
    {
      [v12 addObject:v26];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)contextualSocialGroupZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0.0;
  v72 = _Block_copy(v10);
  if (!v72)
  {
    goto LABEL_8;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_8;
  }

  v94 = 0;
  v72[2](v72, &v94, 0.0);
  if (v94 != 1)
  {
    v11 = Current;
LABEL_8:
    v63 = v10;
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [v9 objectForKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];
    v64 = v9;
    v16 = [v9 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277D27690] currentLocalDate];
    }

    v68 = v18;

    v19 = [MEMORY[0x277CBEB58] set];
    v74 = [MEMORY[0x277CBEB58] set];
    v70 = self;
    v20 = self->_photoLibrary;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    aBlock[3] = &unk_278883250;
    v65 = v8;
    v21 = v8;
    v90 = v21;
    v61 = v20;
    v91 = v61;
    v62 = v19;
    v92 = v62;
    v67 = v14;
    v93 = v67;
    v71 = _Block_copy(aBlock);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v15;
    v22 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v86;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v86 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v85 + 1) + 8 * i);
          v96 = @"name";
          v97 = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
          v83[3] = &unk_278889240;
          v84 = v74;
          [v21 enumerateNodesWithLabel:@"People" domain:300 properties:v27 usingBlock:v83];
        }

        v23 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
      }

      while (v23);
    }

    v71[2](v71, v74);
    if (v72)
    {
      v28 = CFAbsoluteTimeGetCurrent();
      v30 = v67;
      v29 = v68;
      if (v28 - v11 >= 0.01)
      {
        v94 = 0;
        v72[2](v72, &v94, 0.5);
        if (v94)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 205;
            LOWORD(v100) = 2080;
            *(&v100 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v13 = MEMORY[0x277CBEBF8];
          v10 = v63;
LABEL_64:

          goto LABEL_65;
        }

        v11 = v28;
      }
    }

    else
    {
      v30 = v67;
      v29 = v68;
    }

    v66 = [v30 count];
    v59 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:v29];
    v69 = v29;
    v58 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v59 endDate:v29];
    v57 = [PGZeroKeywordComputer momentNodesOverlappingLocalDateInterval:v70 inGraph:"momentNodesOverlappingLocalDateInterval:inGraph:"];
    v31 = [v57 set];
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    *buf = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
    *&v100 = v33;
    v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    *(&v100 + 1) = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

    v36 = [v31 sortedArrayUsingDescriptors:v35];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v60 = v36;
    v37 = [v36 reverseObjectEnumerator];
    v38 = [v37 countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v80;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v80 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v79 + 1) + 8 * j);
          v43 = objc_autoreleasePoolPush();
          [v74 removeAllObjects];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_243;
          v77[3] = &unk_278889240;
          v44 = v74;
          v78 = v44;
          [v42 enumeratePersonNodesUsingBlock:v77];
          v71[2](v71, v44);
          if (v72)
          {
            v45 = CFAbsoluteTimeGetCurrent();
            if (v45 - v11 >= 0.01)
            {
              v94 = 0;
              v72[2](v72, &v94, 0.5);
              if (v94)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *&buf[4] = 225;
                  LOWORD(v100) = 2080;
                  *(&v100 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v43);
                v13 = MEMORY[0x277CBEBF8];
                v9 = v64;
                v8 = v65;
                v10 = v63;
                v30 = v67;
                v29 = v69;
                goto LABEL_63;
              }

              v11 = v45;
            }
          }

          objc_autoreleasePoolPop(v43);
        }

        v39 = [v37 countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    v30 = v67;
    if ([v67 count] == v66)
    {
      v46 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:v69];
      v47 = [v60 firstObject];
      v48 = [v47 previousMomentNode];

      v8 = v65;
      v10 = v63;
      if ([v67 count] == v66 && v48)
      {
        while (1)
        {
          v49 = [v48 localEndDate];
          v50 = [v49 compare:v46];

          if (v50 == -1)
          {
            break;
          }

          v51 = objc_autoreleasePoolPush();
          if ([v48 isInteresting])
          {
            [v74 removeAllObjects];
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_244;
            v75[3] = &unk_278889240;
            v52 = v74;
            v76 = v52;
            [v48 enumeratePersonNodesUsingBlock:v75];
            v71[2](v71, v52);
            if (v72)
            {
              v53 = CFAbsoluteTimeGetCurrent();
              if (v53 - v11 >= 0.01)
              {
                v94 = 0;
                v72[2](v72, &v94, 0.5);
                if (v94)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *&buf[4] = 244;
                    LOWORD(v100) = 2080;
                    *(&v100 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  objc_autoreleasePoolPop(v51);
                  v13 = MEMORY[0x277CBEBF8];
                  v9 = v64;
                  v29 = v69;
                  goto LABEL_63;
                }

                v11 = v53;
              }
            }
          }

          v54 = [v48 previousMomentNode];

          objc_autoreleasePoolPop(v51);
          if ([v67 count] == v66)
          {
            v48 = v54;
            if (v54)
            {
              continue;
            }
          }

          goto LABEL_55;
        }
      }

      v54 = v48;
LABEL_55:
    }

    else
    {
      v8 = v65;
      v10 = v63;
    }

    v29 = v69;
    v9 = v64;
    if (v72 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (v94 = 0, v72[2](v72, &v94, 1.0), v94))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 251;
        LOWORD(v100) = 2080;
        *(&v100 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v13 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v13 = v67;
    }

LABEL_63:

    goto LABEL_64;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 167;
    LOWORD(v100) = 2080;
    *(&v100 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_65:

  v55 = *MEMORY[0x277D85DE8];

  return v13;
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) maximalSocialGroupsOverlappingMemberLocalIdentifiers:a2];
  v10 = [PGPeopleUtilities validateSocialGroups:v3 withPhotoLibrary:*(a1 + 40) graph:*(a1 + 32)];

  v4 = [v10 count] == 1;
  v5 = v10;
  if (v4)
  {
    v6 = [v10 firstObject];
    v7 = personUUIDsFromPersonLocalIdentifiers(v6);
    v8 = PLSearchSocialGroupLookupIdentifier();

    if (([*(a1 + 48) containsObject:v8] & 1) == 0)
    {
      v9 = zeroKeywordWithAttributes(1, 5, 0, 0, v8, v6);
      [*(a1 + 56) addObject:v9];
      [*(a1 + 48) addObject:v8];
    }

    v5 = v10;
  }
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_243(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

void __102__PGZeroKeywordComputer_Contextual__contextualSocialGroupZeroKeywordsWithGraph_options_progressBlock___block_invoke_244(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (id)contextualPersonZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v121 = *MEMORY[0x277D85DE8];
  v65 = a3;
  v7 = a4;
  v57 = a5;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v66 = _Block_copy(v57);
  v56 = v7;
  if (v66 && (v8 = CFAbsoluteTimeGetCurrent(), v8 - v108[3] >= 0.01) && (v108[3] = v8, v106 = 0, (*(v66 + 2))(v66, &v106, 0.0), v9 = *(v112 + 24) | v106, *(v112 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 48;
      LOWORD(v120) = 2080;
      *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v59 = [MEMORY[0x277CBEB18] array];
    v11 = [v7 objectForKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];
    v12 = [v7 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v13 = v12;
    if (v12)
    {
      v58 = v12;
    }

    else
    {
      v58 = [MEMORY[0x277D27690] currentLocalDate];
    }

    v14 = [MEMORY[0x277CBEB58] set];
    v15 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    aBlock[3] = &unk_2788831D8;
    v54 = v14;
    v104 = v54;
    v60 = v15;
    v105 = v60;
    v64 = _Block_copy(aBlock);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = v11;
    v16 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
    if (v16)
    {
      v17 = *v100;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v100 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v99 + 1) + 8 * i);
          v116 = @"name";
          v117 = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
          v93[3] = &unk_278883200;
          v94 = v64;
          v95 = v66;
          v96 = &v107;
          v98 = 0x3F847AE147AE147BLL;
          v97 = &v111;
          [v65 enumerateNodesWithLabel:@"People" domain:300 properties:v20 usingBlock:v93];

          if (*(v112 + 24) == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *&buf[4] = 81;
              LOWORD(v120) = 2080;
              *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v10 = MEMORY[0x277CBEBF8];
            v27 = v94;
            v55 = obj;
            goto LABEL_55;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v21 = filteredKeywords(v60, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0.0);
    [v59 addObjectsFromArray:v21];

    [v60 removeAllObjects];
    v22 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:v58];
    v23 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:1 toDate:v58];
    v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v23];
    v25 = [MEMORY[0x277D27690] yearFromDate:v22];
    v55 = v22;
    v26 = [MEMORY[0x277D27690] yearFromDate:v23];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_238;
    v83[3] = &unk_278883228;
    v89 = v25;
    v51 = v24;
    v84 = v51;
    v92 = v25 != v26;
    v61 = v64;
    v85 = v61;
    v90 = v26;
    v62 = v66;
    v86 = v62;
    v87 = &v107;
    v91 = 0x3F847AE147AE147BLL;
    v88 = &v111;
    [v65 enumerateNodesWithLabel:0 domain:300 usingBlock:v83];
    if (*(v112 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 119;
        LOWORD(v120) = 2080;
        *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v28 = filteredKeywords(v60, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0.0);
      [v59 addObjectsFromArray:v28];

      [v60 removeAllObjects];
      v50 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v55 endDate:v58];
      v49 = [PGZeroKeywordComputer momentNodesOverlappingLocalDateInterval:"momentNodesOverlappingLocalDateInterval:inGraph:" inGraph:?];
      v29 = [v49 set];
      v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
      *buf = v30;
      v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
      *&v120 = v31;
      v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
      *(&v120 + 1) = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

      v53 = [v29 sortedArrayUsingDescriptors:v33];

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v34 = [v53 reverseObjectEnumerator];
      v35 = [v34 countByEnumeratingWithState:&v79 objects:v115 count:16];
      if (v35)
      {
        v36 = *v80;
        while (2)
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v80 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v79 + 1) + 8 * j);
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_239;
            v73[3] = &unk_278883200;
            v74 = v61;
            v75 = v62;
            v76 = &v107;
            v77 = &v111;
            v78 = 0x3F847AE147AE147BLL;
            [v38 enumeratePersonNodesUsingBlock:v73];
            if (*(v112 + 24) == 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 138;
                LOWORD(v120) = 2080;
                *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_45;
            }
          }

          v35 = [v34 countByEnumeratingWithState:&v79 objects:v115 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      if (![v60 count])
      {
        v39 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-2 toDate:v58];
        v40 = [v53 firstObject];
        v41 = [v40 previousMomentNode];

        while (1)
        {
          if ([v60 count] || !v41 || (objc_msgSend(v41, "localEndDate"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "compare:", v39) == -1, v42, v43))
          {

            break;
          }

          if ([v41 isInteresting])
          {
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_240;
            v67[3] = &unk_278883200;
            v68 = v61;
            v69 = v62;
            v70 = &v107;
            v71 = &v111;
            v72 = 0x3F847AE147AE147BLL;
            [v41 enumeratePersonNodesUsingBlock:v67];
            if (*(v112 + 24) == 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *&buf[4] = 153;
                LOWORD(v120) = 2080;
                *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_45;
            }
          }

          v44 = [v41 previousMomentNode];

          v41 = v44;
        }
      }

      if (v66 && (Current = CFAbsoluteTimeGetCurrent(), Current - v108[3] >= 0.01) && (v108[3] = Current, v106 = 0, (*(v62 + 2))(v62, &v106, 1.0), v46 = *(v112 + 24) | v106, *(v112 + 24) = v46, (v46 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 159;
          LOWORD(v120) = 2080;
          *(&v120 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_45:
        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = v59;
      }
    }

    v27 = v23;
LABEL_55:
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);

  v47 = *MEMORY[0x277D85DE8];

  return v10;
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 localIdentifier];
  v4 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v3];
  if ([v4 length] && (objc_msgSend(*(a1 + 32), "containsObject:", v4) & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
    v5 = [v12 name];
    v6 = zeroKeywordWithAttributes(0, 1, v5, 0, v4, v3);

    v7 = [v12 collection];
    v8 = [v7 momentNodes];
    v9 = [v8 count];

    v10 = *(a1 + 40);
    v11 = [[PGRankedZeroKeyword alloc] initWithKeyword:v6 score:v9];
    [v10 addObject:v11];
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_238(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 birthdayDate];
  if (v6)
  {
    v7 = [MEMORY[0x277D27690] dateBySettingYear:*(a1 + 72) ofDate:v6];
    if (([*(a1 + 32) containsDate:v7] & 1) != 0 || *(a1 + 96) == 1 && (objc_msgSend(MEMORY[0x277D27690], "dateBySettingYear:ofDate:", *(a1 + 80), v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v7 = v8, objc_msgSend(*(a1 + 32), "containsDate:", v8)))
    {
      (*(*(a1 + 40) + 16))();
    }

    if (*(a1 + 48))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = *(*(a1 + 56) + 8);
      if (Current - *(v10 + 24) >= *(a1 + 88))
      {
        *(v10 + 24) = Current;
        (*(*(a1 + 48) + 16))(0.5);
        *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *a3 = 1;
        }
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_239(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

void __97__PGZeroKeywordComputer_Contextual__contextualPersonZeroKeywordsWithGraph_options_progressBlock___block_invoke_240(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  (*(*(a1 + 32) + 16))();
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(*(a1 + 48) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 64))
    {
      *(v6 + 24) = Current;
      (*(*(a1 + 40) + 16))(0.5);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

+ (id)contextualHolidayZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v7 = a4;
  v40 = a5;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v48 = _Block_copy(v40);
  v39 = v7;
  if (!v48 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v71[3] < 0.01) || (v71[3] = v8, LOBYTE(v78) = 0, (*(v48 + 2))(v48, &v78, 0.0), v9 = *(v75 + 24) | v78, *(v75 + 24) = v9, (v9 & 1) == 0))
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v46 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v7 objectForKeyedSubscript:@"PHMemoryOptionDateKey"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277D27690] currentLocalDate];
    }

    v15 = v14;

    v44 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:-1 toDate:v15];
    v43 = [MEMORY[0x277D27690] endOfDayForDate:v15];
    v16 = MEMORY[0x277D27690];
    v17 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v15];
    v42 = [v16 startOfDayForDate:v17];

    v41 = [MEMORY[0x277D27690] dateByAddingWeeksOfYear:1 toDate:v15];
    v49 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v46];
    v45 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:v47];
    v18 = MEMORY[0x277D22BF8];
    v19 = +[PGGraphHolidayNode datesOfCelebration];
    v20 = [v18 adjacencyWithSources:v45 relation:v19 targetsClass:objc_opt_class()];

    v21 = [v20 sources];
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    v68[3] = &unk_278888D00;
    v23 = v22;
    v69 = v23;
    [v21 enumerateNodesUsingBlock:v68];
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = [v20 targets];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
    v66[3] = &unk_2788875A8;
    v26 = v24;
    v67 = v26;
    [v25 enumerateNodesUsingBlock:v66];

    v27 = [v21 holidayNames];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_3;
    v61[3] = &unk_2788832A0;
    v28 = v20;
    v62 = v28;
    v29 = v23;
    v63 = v29;
    v30 = v26;
    v64 = v30;
    v31 = v11;
    v65 = v31;
    [v49 enumerateEventRulesWithNames:v27 betweenLocalDate:v44 andLocalDate:v43 usingBlock:v61];
    if (*(v75 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x13604000202;
        LOWORD(v83) = 2080;
        *(&v83 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
      goto LABEL_28;
    }

    if ([v31 count] >= 3)
    {
      [v31 removeObjectsInRange:{0, objc_msgSend(v31, "count") - 2}];
    }

    buf = 0;
    *&v83 = &buf;
    *(&v83 + 1) = 0x2020000000;
    v84 = 2;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_257;
    v51[3] = &unk_2788832F0;
    v52 = v28;
    v53 = v29;
    v54 = v30;
    v32 = v31;
    v55 = v32;
    p_buf = &buf;
    v33 = v48;
    v56 = v33;
    v58 = &v70;
    v59 = &v74;
    v60 = 0x3F847AE147AE147BLL;
    [v49 enumerateEventRulesWithNames:v27 betweenLocalDate:v42 andLocalDate:v41 usingBlock:v51];
    if (*(v75 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v78 = 67109378;
        v79 = 362;
        v80 = 2080;
        v81 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        v34 = MEMORY[0x277D86220];
LABEL_19:
        _os_log_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v78, 0x12u);
      }
    }

    else
    {
      if (!v48 || (Current = CFAbsoluteTimeGetCurrent(), Current - v71[3] < 0.01) || (v71[3] = Current, v50 = 0, (*(v33 + 2))(v33, &v50, 1.0), v36 = *(v75 + 24) | v50, *(v75 + 24) = v36, (v36 & 1) == 0))
      {
        v10 = v32;
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v78 = 67109378;
        v79 = 364;
        v80 = 2080;
        v81 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
        v34 = MEMORY[0x277D86220];
        goto LABEL_19;
      }
    }

    v10 = MEMORY[0x277CBEBF8];
LABEL_27:

    _Block_object_dispose(&buf, 8);
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x10304000202;
    LOWORD(v83) = 2080;
    *(&v83 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer+Contextual.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_29:
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v10;
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v2 setObject:v4 forKeyedSubscript:v5];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_4;
  v10[3] = &unk_278883278;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  [v7 enumerateTargetsBySourceWithBlock:v10];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_257(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2_258;
  v16[3] = &unk_2788832C8;
  v9 = *(a1 + 32);
  v17 = *(a1 + 40);
  v10 = v7;
  v18 = v10;
  v19 = *(a1 + 48);
  v11 = v8;
  v20 = v11;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v21 = v12;
  v22 = v13;
  v23 = a4;
  [v9 enumerateTargetsBySourceWithBlock:v16];
  if (*(a1 + 64))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v15 = *(*(a1 + 80) + 8);
    if (Current - *(v15 + 24) >= *(a1 + 96))
    {
      *(v15 + 24) = Current;
      (*(*(a1 + 64) + 16))(0.5);
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_2_258(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 elementIdentifiers];
  v7 = [v6 firstElement];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  v42 = v10;
  v11 = [v10 name];
  v12 = [*(a1 + 40) name];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v38 = v5;
    v14 = [v5 elementIdentifiers];
    v15 = [v14 indexArray];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v53;
      v19 = *MEMORY[0x277D3B1D8];
      v20 = *MEMORY[0x277D3B180];
      v39 = *v53;
      v40 = a1;
      do
      {
        v21 = 0;
        v41 = v17;
        do
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v52 + 1) + 8 * v21)];
          v23 = [v22 localDate];
          if ([*(a1 + 56) containsObject:v23])
          {
            v24 = holidayNodeZeroKeyword(v42);
            if (v24)
            {
              v46 = v21;
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v47 = *(a1 + 64);
              v25 = [v47 countByEnumeratingWithState:&v48 objects:v56 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v49;
                v44 = v23;
                v45 = v22;
                do
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v49 != v27)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v29 = *(*(&v48 + 1) + 8 * i);
                    v30 = [v24 objectForKeyedSubscript:v19];
                    v31 = [v29 objectForKeyedSubscript:v19];
                    v32 = [v30 isEqualToString:v31];

                    v33 = [v24 objectForKeyedSubscript:v20];
                    v34 = [v29 objectForKeyedSubscript:v20];
                    v35 = [v33 isEqualToString:v34];

                    if (v32)
                    {
                      v36 = v35 == 0;
                    }

                    else
                    {
                      v36 = 1;
                    }

                    if (!v36)
                    {

                      v18 = v39;
                      a1 = v40;
                      v17 = v41;
                      v22 = v45;
                      v21 = v46;
                      v23 = v44;
                      goto LABEL_23;
                    }
                  }

                  v26 = [v47 countByEnumeratingWithState:&v48 objects:v56 count:16];
                  v23 = v44;
                  v22 = v45;
                }

                while (v26);
              }

              a1 = v40;
              [*(v40 + 64) addObject:v24];
              --*(*(*(v40 + 72) + 8) + 24);
              v18 = v39;
              v17 = v41;
              v21 = v46;
              if (!*(*(*(v40 + 72) + 8) + 24))
              {
                **(v40 + 80) = 1;
              }
            }

LABEL_23:
          }

          ++v21;
        }

        while (v21 != v17);
        v17 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v17);
    }

    v5 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __98__PGZeroKeywordComputer_Contextual__contextualHolidayZeroKeywordsWithGraph_options_progressBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 elementIdentifiers];
  v7 = [v6 firstElement];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 name];
  v12 = [*(a1 + 40) name];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v5 elementIdentifiers];
    v15 = [v14 indexArray];

    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v19)];
          v21 = [v20 localDate];
          if ([*(a1 + 56) containsObject:v21])
          {
            v22 = holidayNodeZeroKeyword(v10);
            if (v22)
            {
              [*(a1 + 64) addObject:v22];
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)meaningNodeZeroKeywordForDisplayMeaningNode:(id)a3 collectionUUIDsToAvoid:(id)a4 curationContext:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 label];
  v12 = [v8 graph];
  v13 = [v12 zeroKeywordMappingByMeaningLabel];
  v14 = [v13 objectForKeyedSubscript:v11];
  v15 = [v14 mappedMeaningNodes];
  if ([v15 count])
  {
    if (!isSuitableForZeroKeywordWithMeanings(v15))
    {
      v26 = 0;
      goto LABEL_12;
    }

    v35 = v13;
    photoLibrary = self->_photoLibrary;
    curationManager = self->_curationManager;
    v18 = [(PGZeroKeywordComputer *)self searchComputationCache];
    v19 = v9;
    v20 = v18;
    v33 = v10;
    v34 = v19;
    v21 = bestAssetIdentifiersForMeaningNodes(v15, v19, photoLibrary, curationManager, v18, v12, v10);

    v22 = zeroKeywordLocalizationKeyForMeaningLabel(v11);
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:v22 value:v22 table:@"Localizable"];

    v25 = [v8 localizedName];
    if ([v21 count])
    {
      v26 = zeroKeywordWithAttributes(5, 13, v24, v25, 0, v21);
    }

    else
    {
      v26 = 0;
    }

    v10 = v33;
    v9 = v34;
  }

  else
  {
    v35 = v13;
    v27 = v10;
    v28 = +[PGLogging sharedLogging];
    v29 = [v28 loggingConnection];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = [v8 label];
      *buf = 138412290;
      v37 = v32;
      _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Cannot find root applicable meaning nodes for display meaning %@", buf, 0xCu);
    }

    v26 = 0;
    v10 = v27;
  }

  v13 = v35;
LABEL_12:

  v30 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_tripZeroKeywordWithGraph:(id)a3 curationContext:(id)a4 score:(double *)a5
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 longTripNodes];
  if (![v8 count])
  {
    v9 = [v6 shortTripNodes];

    v8 = v9;
  }

  if ([(PGZeroKeywordComputer *)self shouldFilterMomentNodesWithPresence])
  {
    v51 = v6;
    v53 = v7;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v62;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v62 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v61 + 1) + 8 * i);
          v17 = [v16 collection];
          v18 = [v17 momentNodes];
          v19 = [(PGZeroKeywordComputer *)self momentNodesWhereMeIsPresent];
          v20 = [v18 intersectsCollection:v19];

          if (v20)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v13);
    }

    v6 = v51;
    v7 = v53;
    v8 = v10;
  }

  if (![v8 count])
  {
    v46 = 0;
    goto LABEL_37;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (!v22)
  {
    v46 = 0;
LABEL_34:

    v23 = v22;
LABEL_36:

    goto LABEL_37;
  }

  v49 = v8;
  v52 = v6;
  v54 = v7;
  v23 = 0;
  v24 = 0;
  v25 = *v58;
  do
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v58 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v57 + 1) + 8 * j);
      v28 = [v27 localStartDate];
      if (!v23 || [MEMORY[0x277D27690] compareDate:v28 toDate:v23 toUnitGranularity:16] == 1)
      {
        v29 = v28;

        v30 = v27;
        v23 = v29;
        v24 = v30;
      }
    }

    v22 = [v21 countByEnumeratingWithState:&v57 objects:v66 count:16];
  }

  while (v22);

  if (!v24)
  {
    v46 = 0;
    v6 = v52;
    v7 = v54;
    v8 = v49;
    goto LABEL_36;
  }

  v31 = [v24 eventEnrichmentMomentNodes];
  v32 = [v31 uuids];
  v33 = [(PGZeroKeywordComputer *)self searchComputationCache];
  v34 = [v24 UUID];
  v35 = [v32 allObjects];
  v22 = [v33 keyAssetLocalIdentifierForNodeIdentifier:v34 withAssociatedMomentUUIDs:v35];

  if (!v22)
  {
    v36 = [v31 temporaryArray];
    v56 = 0;
    v22 = bestAssetIdentifierForMomentNodes(v36, &v56, v54);
    v37 = v56;

    v38 = [(PGZeroKeywordComputer *)self searchComputationCache];
    v39 = [v24 UUID];
    [v38 setKeyAssetLocalIdentifier:v22 forNodeIdentifier:v39 withAssociatedMomentUUID:v37];
  }

  if (v22)
  {
    v6 = v52;
    v8 = v49;
    if (a5)
    {
      v40 = [v52 allTripNodes];
      v41 = [v40 count];

      *a5 = v41;
    }

    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v42 localizedStringForKey:@"PGMeaningTripZeroKeywordText" value:@"PGMeaningTripZeroKeywordText" table:@"Localizable"];

    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];

    v65 = v22;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v46 = zeroKeywordWithAttributes(5, 13, v21, v44, 0, v45);

    v7 = v54;
    goto LABEL_34;
  }

  v46 = 0;
  v6 = v52;
  v7 = v54;
  v8 = v49;
LABEL_37:

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)tripRankedKeywordWithGraph:(id)a3 curationContext:(id)a4
{
  v8 = 0.0;
  v4 = [(PGZeroKeywordComputer *)self _tripZeroKeywordWithGraph:a3 curationContext:a4 score:&v8];
  v5 = [PGRankedZeroKeyword alloc];
  v6 = [(PGRankedZeroKeyword *)v5 initWithKeyword:v4 score:v8];

  return v6;
}

- (id)sceneZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v107 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v51 = a4;
  v7 = a5;
  v8 = _Block_copy(v7);
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v49 = v7;
  v52 = v8;
  if (!v8 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v91[3] < 0.01) || (v91[3] = v9, v99[0] = 0, (*(v8 + 2))(v8, v99, 0.0), v10 = *(v95 + 24) | v99[0], *(v95 + 24) = v10, (v10 & 1) == 0))
  {
    v55 = [MEMORY[0x277CBEB18] array];
    v54 = [MEMORY[0x277CBEB58] set];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke;
    v85[3] = &unk_27888A188;
    v12 = v8;
    v86 = v12;
    v87 = &v90;
    v88 = &v94;
    v89 = 0x3F847AE147AE147BLL;
    v50 = [(PGZeroKeywordComputer *)self contextualSceneZeroKeywordsWithGraph:v53 options:v51 progressBlock:v85];
    if (*(v95 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v11 = MEMORY[0x277CBEBF8];
LABEL_56:

        goto LABEL_57;
      }

      *buf = 67109378;
      *&buf[4] = 696;
      LOWORD(v104) = 2080;
      *(&v104 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      v13 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_11;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v14 = v50;
    v15 = [v14 countByEnumeratingWithState:&v81 objects:v106 count:16];
    if (v15)
    {
      v16 = *v82;
      v17 = *MEMORY[0x277D3B180];
LABEL_14:
      v18 = 0;
      while (1)
      {
        if (*v82 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v81 + 1) + 8 * v18);
        [v55 addObject:v19];
        v20 = [v19 objectForKeyedSubscript:v17];
        [v54 addObject:v20];

        if ([v19 count] > 2)
        {
          break;
        }

        if (v15 == ++v18)
        {
          v15 = [v14 countByEnumeratingWithState:&v81 objects:v106 count:16];
          if (v15)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    if (v52)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v91[3] >= 0.01)
      {
        v91[3] = Current;
        v99[0] = 0;
        (*(v12 + 2))(v12, v99, 0.1);
        v22 = *(v95 + 24) | v99[0];
        *(v95 + 24) = v22;
        if (v22)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_11;
          }

          *buf = 67109378;
          *&buf[4] = 707;
          LOWORD(v104) = 2080;
          *(&v104 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v13 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v23 = [MEMORY[0x277CBEB58] set];
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = [MEMORY[0x277CBEB38] dictionary];
    *buf = 0;
    *&v104 = buf;
    *(&v104 + 1) = 0x2020000000;
    v105 = 0x3FB999999999999ALL;
    v26 = [(PGGraphNodeCollection *)PGGraphSceneNodeCollection nodesInGraph:v53];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_346;
    v70[3] = &unk_278888230;
    v47 = v12;
    v76 = v47;
    v77 = &v90;
    v78 = buf;
    v79 = &v94;
    v80 = 0x3F847AE147AE147BLL;
    v56 = v25;
    v71 = v56;
    v72 = v54;
    v57 = v23;
    v73 = v57;
    v48 = v24;
    v74 = v48;
    v75 = self;
    [v26 enumerateNodesUsingBlock:v70];

    if (*(v95 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v99 = 67109378;
        v100 = 763;
        v101 = 2080;
        v102 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v27 = MEMORY[0x277D86220];
LABEL_28:
        _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v99, 0x12u);
      }
    }

    else
    {
      if (v52)
      {
        v28 = CFAbsoluteTimeGetCurrent();
        if (v28 - v91[3] >= 0.01)
        {
          v91[3] = v28;
          v69 = 0;
          (*(v47 + 2))(v47, &v69, 0.8);
          v29 = *(v95 + 24) | v69;
          *(v95 + 24) = v29;
          if (v29)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_29;
            }

            *v99 = 67109378;
            v100 = 765;
            v101 = 2080;
            v102 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v27 = MEMORY[0x277D86220];
            goto LABEL_28;
          }
        }
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v30 = v48;
      v31 = [v30 countByEnumeratingWithState:&v65 objects:v98 count:16];
      if (v31)
      {
        v32 = *v66;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v65 + 1) + 8 * i);
            v35 = objc_autoreleasePoolPush();
            v36 = -[CLSSceneTaxonomyHierarchy nodeForIdentifier:](self->_sceneTaxonomy, "nodeForIdentifier:", [v34 unsignedLongLongValue]);
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_355;
            v59[3] = &unk_278888258;
            v37 = v30;
            v60 = v37;
            v61 = v56;
            v62 = v34;
            v38 = v36;
            v63 = v38;
            v64 = v57;
            [v38 visitParentsUsingNameBlock:v59];

            objc_autoreleasePoolPop(v35);
          }

          v31 = [v37 countByEnumeratingWithState:&v65 objects:v98 count:16];
        }

        while (v31);
      }

      if (v52)
      {
        v39 = CFAbsoluteTimeGetCurrent();
        if (v39 - v91[3] >= 0.01)
        {
          v91[3] = v39;
          v69 = 0;
          (*(v47 + 2))(v47, &v69, 0.9);
          v40 = *(v95 + 24) | v69;
          *(v95 + 24) = v40;
          if (v40)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_29;
            }

            *v99 = 67109378;
            v100 = 792;
            v101 = 2080;
            v102 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v27 = MEMORY[0x277D86220];
            goto LABEL_28;
          }
        }
      }

      v41 = [v57 allObjects];
      v42 = filteredKeywords(v41, 0xAuLL, 0xFuLL, 0.9);
      [v55 addObjectsFromArray:v42];

      if ([v55 count] >= 0x10)
      {
        [v55 removeObjectsInRange:{15, objc_msgSend(v55, "count") - 15}];
      }

      if (!v52 || (v43 = CFAbsoluteTimeGetCurrent(), v43 - v91[3] < 0.01) || (v91[3] = v43, v69 = 0, (*(v47 + 2))(v47, &v69, 1.0), v44 = *(v95 + 24) | v69, *(v95 + 24) = v44, (v44 & 1) == 0))
      {
        v11 = v55;
        goto LABEL_55;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v99 = 67109378;
        v100 = 803;
        v101 = 2080;
        v102 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v27 = MEMORY[0x277D86220];
        goto LABEL_28;
      }
    }

LABEL_29:
    v11 = MEMORY[0x277CBEBF8];
LABEL_55:

    _Block_object_dispose(buf, 8);
    goto LABEL_56;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 687;
    LOWORD(v104) = 2080;
    *(&v104 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_57:
  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v94, 8);

  v45 = *MEMORY[0x277D85DE8];

  return v11;
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_346(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 72) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 80) + 8), Current - *(v8 + 24) >= *(a1 + 104)) && (*(v8 + 24) = Current, LOBYTE(v29) = 0, (*(*(a1 + 72) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 96) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = (*(*(*(a1 + 88) + 8) + 24) + 0.8) * 0.5;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_2;
    v28[3] = &unk_278888208;
    v28[4] = &v29;
    [v5 enumerateMomentEdgesAndNodesUsingBlock:v28];
    v9 = [v5 level];
    v10 = (v9 - 1);
    if (!v9)
    {
      v10 = 0.0;
    }

    v11 = (v10 * 0.1 + 1.0) * v30[3];
    v30[3] = v11;
    if (v11 != 0.0 && [v5 isSuitableForSuggestions] && objc_msgSend(v5, "isIndexed"))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "sceneIdentifier")}];
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v12];
      if ([*(a1 + 40) containsObject:v12])
      {
        v13 = [PGRankedZeroKeyword alloc];
        v14 = [(PGRankedZeroKeyword *)v13 initWithKeyword:0 score:v30[3]];
        [*(a1 + 48) addObject:v14];
        [*(a1 + 56) setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        v15 = [v5 label];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGScene%@ZeroKeywordText", v15];

        v16 = *(a1 + 64);
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:v14 value:v14 table:@"Localizable"];

        if (v18 == v14)
        {
          v19 = +[PGLogging sharedLogging];
          v20 = [v19 loggingConnection];

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v5 label];
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "No ZK title key for scene with label %@", buf, 0xCu);
          }

          v22 = [v5 localizedName];

          v18 = v22;
        }

        v23 = [v5 localizedName];
        v24 = zeroKeywordWithAttributes(3, 13, v18, v23, 0, v12);
        v25 = [PGRankedZeroKeyword alloc];
        v26 = [(PGRankedZeroKeyword *)v25 initWithKeyword:v24 score:v30[3]];
        [*(a1 + 48) addObject:v26];
        [*(a1 + 56) setObject:v26 forKeyedSubscript:v12];
      }
    }

    _Block_object_dispose(&v29, 8);
  }

  objc_autoreleasePoolPop(v6);

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_355(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    v9 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v10 = [v8 numberOfAssets];
    v11 = v10 / [v9 numberOfAssets];
    if (v11 >= 0.75)
    {
      v12 = +[PGLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [*(a1 + 56) name];
        v17 = 138412802;
        v18 = v5;
        v19 = 2112;
        v20 = v14;
        v21 = 2048;
        v22 = v11;
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Filtering out scene ZK %@ because child scene %@ covers %f of the assets", &v17, 0x20u);
      }

      [*(a1 + 64) removeObject:v7];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

void __74__PGZeroKeywordComputer_sceneZeroKeywordsWithGraph_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isReliable];
  v4 = 0.0;
  if (v3)
  {
    v4 = [v5 numberOfSearchConfidenceAssets];
  }

  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)eventZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v137 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v71 = a4;
  v77 = a5;
  v68 = a6;
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 0;
  v83 = _Block_copy(v68);
  if (!v83 || (v9 = CFAbsoluteTimeGetCurrent(), v9 - v119[3] < 0.01) || (v119[3] = v9, v128[0] = 0, (*(v83 + 2))(v83, v128, 0.0), v10 = *(v123 + 24) | v128[0], *(v123 + 24) = v10, (v10 & 1) == 0))
  {
    v12 = [MEMORY[0x277CBEB18] array];
    v79 = [MEMORY[0x277CBEB58] set];
    v80 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v13 = objc_opt_class();
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v113[3] = &unk_27888A188;
    v14 = v83;
    v114 = v14;
    v115 = &v118;
    v117 = 0x3F847AE147AE147BLL;
    v116 = &v122;
    v69 = [v13 contextualHolidayZeroKeywordsWithGraph:v78 options:v77 progressBlock:v113];
    v81 = v12;
    if (*(v123 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v11 = MEMORY[0x277CBEBF8];
LABEL_89:

        goto LABEL_90;
      }

      *buf = 67109378;
      *&buf[4] = 545;
      LOWORD(v134) = 2080;
      *(&v134 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      v15 = MEMORY[0x277D86220];
LABEL_10:
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_11;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v16 = v69;
    v17 = [v16 countByEnumeratingWithState:&v109 objects:v136 count:16];
    if (v17)
    {
      v18 = *v110;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v110 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [v12 addObject:*(*(&v109 + 1) + 8 * v19)];
        if ([v12 count] > 2)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v109 objects:v136 count:16];
          if (v17)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    if (v83)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v119[3] >= 0.01)
      {
        v119[3] = Current;
        v128[0] = 0;
        (*(v14 + 2))(v14, v128, 0.3);
        v21 = *(v123 + 24) | v128[0];
        *(v123 + 24) = v21;
        if (v21)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_11;
          }

          *buf = 67109378;
          *&buf[4] = 554;
          LOWORD(v134) = 2080;
          *(&v134 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v15 = MEMORY[0x277D86220];
          goto LABEL_10;
        }
      }
    }

    v22 = [(PGZeroKeywordComputer *)self contextualDateZeroKeywordsWithGraph:v78 options:v77];
    [v12 addObjectsFromArray:v22];

    v23 = [(PGZeroKeywordComputer *)self contextualSeasonZeroKeywordsWithGraph:v78 curationContext:v71 options:v77];
    [v12 addObjectsFromArray:v23];

    v24 = [MEMORY[0x277CBEB58] set];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_340;
    v104[3] = &unk_27888A188;
    v67 = v14;
    v105 = v67;
    v106 = &v118;
    v107 = &v122;
    v108 = 0x3F847AE147AE147BLL;
    v25 = [(PGZeroKeywordComputer *)self contextualMeaningAndTripZeroKeywordsWithGraph:v78 curationContext:v71 options:v77 progressBlock:v104];
    v66 = v25;
    if (*(v123 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 572;
        LOWORD(v134) = 2080;
        *(&v134 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
      goto LABEL_88;
    }

    *buf = 0;
    *&v134 = buf;
    *(&v134 + 1) = 0x2020000000;
    v135 = 0x3FE0000000000000;
    v26 = v25;
    v27 = [v25 count];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v26;
    v28 = [obj countByEnumeratingWithState:&v100 objects:v132 count:16];
    if (v28)
    {
      v82 = 0;
      v29 = 0.1 / v27;
      v76 = *v101;
      v74 = *MEMORY[0x277D3B1D8];
      v73 = *MEMORY[0x277D3B180];
      while (2)
      {
        v75 = v28;
        for (i = 0; i != v75; ++i)
        {
          if (*v101 != v76)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v100 + 1) + 8 * i);
          if (v83)
          {
            v32 = CFAbsoluteTimeGetCurrent();
            if (v32 - v119[3] >= 0.01)
            {
              v119[3] = v32;
              v99 = 0;
              (*(v67 + 2))(v67, &v99, *(v134 + 24));
              v33 = *(v123 + 24) | v99;
              *(v123 + 24) = v33;
              if (v33)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v128 = 67109378;
                  v129 = 578;
                  v130 = 2080;
                  v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v128, 0x12u);
                }

                goto LABEL_86;
              }
            }
          }

          *(v134 + 24) = v29 + *(v134 + 24);
          [v81 addObject:v31];
          v34 = [v31 objectForKeyedSubscript:v74];
          [v79 addObject:v34];

          v35 = [v31 objectForKeyedSubscript:v73];
          if ([v35 count])
          {
            v36 = [v35 firstObject];
            v37 = MEMORY[0x277CD97A8];
            v127 = v36;
            v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
            v39 = [v37 fetchAssetsWithLocalIdentifiers:v38 options:v80];

            if ([v39 count])
            {
              v40 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v39 withType:3 options:v80];
              v97 = 0u;
              v98 = 0u;
              v96 = 0u;
              v95 = 0u;
              v41 = v40;
              v42 = [v41 countByEnumeratingWithState:&v95 objects:v126 count:16];
              if (v42)
              {
                v43 = *v96;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v96 != v43)
                    {
                      objc_enumerationMutation(v41);
                    }

                    v45 = [*(*(&v95 + 1) + 8 * j) uuid];
                    [v24 addObject:v45];
                  }

                  v42 = [v41 countByEnumeratingWithState:&v95 objects:v126 count:16];
                }

                while (v42);
              }
            }

            if (v82 >= 2)
            {

              goto LABEL_53;
            }

            ++v82;
          }
        }

        v28 = [obj countByEnumeratingWithState:&v100 objects:v132 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_53:

    if (v83)
    {
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v119[3] >= 0.01)
      {
        v119[3] = v46;
        v99 = 0;
        (*(v67 + 2))(v67, &v99, 0.6);
        v47 = *(v123 + 24) | v99;
        *(v123 + 24) = v47;
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v128 = 67109378;
            v129 = 604;
            v130 = 2080;
            v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v128, 0x12u);
          }

LABEL_86:
          v11 = MEMORY[0x277CBEBF8];
          goto LABEL_87;
        }
      }
    }

    v48 = [v78 zeroKeywordMappingByMeaningLabel];
    v49 = [MEMORY[0x277CBEB18] array];
    *(v134 + 24) = 0x3FE3333333333333;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_341;
    v84[3] = &unk_2788881E0;
    v91 = buf;
    v50 = v67;
    v94 = 0x3F847AE147AE147BLL;
    v92 = &v118;
    v93 = &v122;
    v90 = v50;
    v84[4] = self;
    v85 = v24;
    v51 = v71;
    v86 = v51;
    v87 = v80;
    v52 = v79;
    v88 = v52;
    v53 = v49;
    v89 = v53;
    [v48 enumerateKeysAndObjectsUsingBlock:v84];
    if (*(v123 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v128 = 67109378;
        v129 = 656;
        v130 = 2080;
        v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v54 = MEMORY[0x277D86220];
LABEL_61:
        _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v128, 0x12u);
      }
    }

    else
    {
      if (!v83 || (v55 = CFAbsoluteTimeGetCurrent(), v55 - v119[3] < 0.01) || (v119[3] = v55, v99 = 0, (*(v50 + 2))(v50, &v99, 0.9), v56 = *(v123 + 24) | v99, *(v123 + 24) = v56, (v56 & 1) == 0))
      {
        v57 = [(PGZeroKeywordComputer *)self tripRankedKeywordWithGraph:v78 curationContext:v51];
        v58 = v57;
        if (v57)
        {
          v59 = [v57 zeroKeyword];
          v60 = [v59 objectForKeyedSubscript:*MEMORY[0x277D3B1D8]];

          if (([v52 containsObject:v60] & 1) == 0)
          {
            [v53 addObject:v58];
          }
        }

        v61 = filteredKeywords(v53, 7uLL, 0xFuLL, 0.35);
        [v81 addObjectsFromArray:v61];

        if ([v81 count] >= 0x10)
        {
          [v81 removeObjectsInRange:{15, objc_msgSend(v81, "count") - 15}];
        }

        if (v83 && (v62 = CFAbsoluteTimeGetCurrent(), v62 - v119[3] >= 0.01) && (v119[3] = v62, v99 = 0, (*(v50 + 2))(v50, &v99, 1.0), v63 = *(v123 + 24) | v99, *(v123 + 24) = v63, (v63 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v128 = 67109378;
            v129 = 679;
            v130 = 2080;
            v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v128, 0x12u);
          }

          v11 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v11 = v81;
        }

        goto LABEL_82;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v128 = 67109378;
        v129 = 658;
        v130 = 2080;
        v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v54 = MEMORY[0x277D86220];
        goto LABEL_61;
      }
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_82:

LABEL_87:
    _Block_object_dispose(buf, 8);
LABEL_88:

    goto LABEL_89;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 531;
    LOWORD(v134) = 2080;
    *(&v134 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_90:
  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);

  v64 = *MEMORY[0x277D85DE8];

  return v11;
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_340(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_341(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v32 = a2;
  v7 = a3;
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 88) + 8) + 24) = (*(*(*(a1 + 88) + 8) + 24) + 0.9) * 0.5;
  v38 = a1;
  v34 = v7;
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v9 = *(*(a1 + 96) + 8), Current - *(v9 + 24) >= *(a1 + 112)) && (*(v9 + 24) = Current, LOBYTE(v46) = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 88) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    v35 = [v7 displayNode];
    v37 = [*(a1 + 32) meaningNodeZeroKeywordForDisplayMeaningNode:v35 collectionUUIDsToAvoid:*(a1 + 40) curationContext:*(a1 + 48)];
    v36 = [v37 objectForKeyedSubscript:*MEMORY[0x277D3B180]];
    if ([v36 count])
    {
      v10 = [v36 firstObject];
      v11 = MEMORY[0x277CD97A8];
      v56[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
      v13 = [v11 fetchAssetsWithLocalIdentifiers:v12 options:*(a1 + 56)];

      if ([v13 count])
      {
        v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v13 withType:3 options:*(a1 + 56)];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v15)
        {
          v16 = *v51;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v51 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = v38[5];
              v19 = [*(*(&v50 + 1) + 8 * i) uuid];
              [v18 addObject:v19];
            }

            v15 = [v14 countByEnumeratingWithState:&v50 objects:v55 count:16];
          }

          while (v15);
        }
      }
    }

    if (v37)
    {
      v20 = v38[8];
      v21 = [v37 objectForKeyedSubscript:*MEMORY[0x277D3B1D8]];
      LOBYTE(v20) = [v20 containsObject:v21];

      if ((v20 & 1) == 0)
      {
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 0;
        v22 = [MEMORY[0x277CBEB58] set];
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v23 = [v34 mappedMeaningNodes];
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v24)
        {
          v25 = *v43;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v42 + 1) + 8 * j);
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_2;
              v39[3] = &unk_2788881B8;
              v40 = v22;
              v41 = &v46;
              [v27 enumerateMeaningfulEventsUsingBlock:v39];
            }

            v24 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v24);
        }

        v28 = [v22 count];
        v29 = v38[9];
        v30 = [[PGRankedZeroKeyword alloc] initWithKeyword:v37 score:v28 + v47[3] * 2.22044605e-16];
        [v29 addObject:v30];

        _Block_object_dispose(&v46, 8);
      }
    }
  }

  objc_autoreleasePoolPop(context);

  v31 = *MEMORY[0x277D85DE8];
}

void __90__PGZeroKeywordComputer_eventZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
    v3 = [v5 eventCollection];
    v4 = [v3 eventMomentNodes];
    *(*(*(a1 + 40) + 8) + 24) += [v4 numberOfAssets];
  }
}

- (id)placeZeroKeywordsWithGraph:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _Block_copy(a5);
  if (v10 && CFAbsoluteTimeGetCurrent() >= 0.01 && (v26 = 0, v10[2](v10, &v26, 0.0), v26 == 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v29 = 516;
      v30 = 2080;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v12 = [[PGPlaceZeroKeywordGenerator alloc] initWithGraph:v8 photoLibrary:self->_photoLibrary searchComputationCache:self->_searchComputationCache options:v9];
    v13 = [(PGPlaceZeroKeywordGenerator *)v12 generatePlaceZeroKeywords];
    v11 = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * i) getZeroKeywordDict];
          [v11 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:(id)a3
{
  v29[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"type" ascending:1];
  v29[0] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"manualOrder" ascending:0];
  v29[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v29[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  [v5 setSortDescriptors:v9];

  v10 = [MEMORY[0x277CD9938] fetchPersonsWithLocalIdentifiers:v4 options:v5];
  v11 = MEMORY[0x277CBEB18];
  v12 = [v10 fetchedObjects];
  v13 = [v11 arrayWithArray:v12];

  v14 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:{1, v15}];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  [v14 setSortDescriptors:v17];

  [v14 setFetchLimit:100];
  v18 = 0;
  do
  {
    v19 = v18;
    v18 = [MEMORY[0x277CD97A8] fetchAssetsContainingAllPersons:v13 options:v14];

    if ([v18 count])
    {
      break;
    }

    v20 = [v13 firstObject];
    [v13 removeObject:v20];
  }

  while ([v13 count]);
  v21 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v18 title:&stru_2843F5C58 subtitle:&stru_2843F5C58 titleFontName:&stru_2843F5C58];
  v22 = objc_alloc_init(PGKeyAssetCurationOptions);
  v23 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [(PGKeyAssetCurationOptions *)v22 setReferencePersonLocalIdentifiers:v23];

  [(PGKeyAssetCurationOptions *)v22 setFocusOnPeople:1];
  [(PGKeyAssetCurationOptions *)v22 setComplete:1];
  v24 = [(PGCurationManager *)self->_curationManager curatedKeyAssetForAssetCollection:v21 curatedAssetCollection:0 options:v22 criteria:0 curationContext:self->_curationContext];
  v25 = [v24 localIdentifier];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)socialGroupKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v145 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v89 = a4;
  v85 = a5;
  v9 = a6;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v96 = _Block_copy(v9);
  v83 = v9;
  if (!v96 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v128[3] < 0.01) || (v128[3] = v10, v126 = 0, (*(v96 + 2))(v96, &v126, 0.0), v11 = *(v132 + 24) | v126, *(v132 + 24) = v11, (v11 & 1) == 0))
  {
    v99 = [MEMORY[0x277CBEB18] array];
    v95 = [MEMORY[0x277CBEB58] set];
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v121[3] = &unk_27888A188;
    v88 = v96;
    v122 = v88;
    v123 = &v127;
    v125 = 0x3F847AE147AE147BLL;
    v124 = &v131;
    v13 = [(PGZeroKeywordComputer *)self contextualSocialGroupZeroKeywordsWithGraph:v86 options:v85 progressBlock:v121];
    v81 = v13;
    if (*(v132 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v142 = 334;
        v143 = 2080;
        v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v117 objects:v140 count:16];
      if (v16)
      {
        v17 = *v118;
        v18 = *MEMORY[0x277D3B180];
LABEL_14:
        v19 = 0;
        while (1)
        {
          if (*v118 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v117 + 1) + 8 * v19);
          [v99 addObject:v20];
          v21 = [v20 objectForKeyedSubscript:v18];
          [v95 addObject:v21];

          if ([v99 count] > 2)
          {
            break;
          }

          if (v16 == ++v19)
          {
            v16 = [v15 countByEnumeratingWithState:&v117 objects:v140 count:16];
            if (v16)
            {
              goto LABEL_14;
            }

            break;
          }
        }
      }

      if (!v96 || (v22 = CFAbsoluteTimeGetCurrent(), v22 - v128[3] < 0.01) || (v128[3] = v22, v126 = 0, (*(v88 + 2))(v88, &v126, 0.3), v23 = *(v132 + 24) | v126, *(v132 + 24) = v23, (v23 & 1) == 0))
      {
        v79 = [v86 socialGroupNodesSortedByImportance];
        v80 = [v79 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_62226];
        if (v96 && (v24 = CFAbsoluteTimeGetCurrent(), v24 - v128[3] >= 0.01) && (v128[3] = v24, v126 = 0, (*(v88 + 2))(v88, &v126, 0.5), v25 = *(v132 + 24) | v126, *(v132 + 24) = v25, (v25 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v142 = 366;
            v143 = 2080;
            v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v12 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v100 = objc_opt_new();
          v90 = [v80 mutableCopy];
          v26 = [v80 count];
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          obj = v80;
          v27 = [obj countByEnumeratingWithState:&v113 objects:v139 count:16];
          if (v27)
          {
            v29 = 0;
            v30 = 0.3 / v26;
            v93 = *v114;
            v31 = 0.5;
            *&v28 = 67109378;
            v78 = v28;
            while (2)
            {
              v91 = v27;
              for (i = 0; i != v91; i = i + 1)
              {
                if (*v114 != v93)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v113 + 1) + 8 * i);
                context = objc_autoreleasePoolPush();
                if (v96 && (Current = CFAbsoluteTimeGetCurrent(), Current - v128[3] >= 0.01) && (v128[3] = Current, v126 = 0, (*(v88 + 2))(v88, &v126, v31), v35 = *(v132 + 24) | v126, *(v132 + 24) = v35, (v35 & 1) != 0))
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = v78;
                    v142 = 377;
                    v143 = 2080;
                    v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v36 = 0;
                }

                else
                {
                  v37 = [v33 personNodes];
                  v38 = [v37 count];
                  if (v38 == 1)
                  {
                    ++v29;
                  }

                  [v90 removeObject:v33];
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v39 = v90;
                  v40 = [v39 countByEnumeratingWithState:&v109 objects:v138 count:16];
                  if (v40)
                  {
                    v41 = *v110;
                    while (2)
                    {
                      for (j = 0; j != v40; ++j)
                      {
                        if (*v110 != v41)
                        {
                          objc_enumerationMutation(v39);
                        }

                        v43 = *(*(&v109 + 1) + 8 * j);
                        v44 = [v43 personNodes];
                        v45 = [v44 count];
                        if ((v38 - v45) >= 2)
                        {

                          goto LABEL_61;
                        }

                        if (v38 == 1 && v45 == 1 && v29 >= 5)
                        {
                          [v100 addObject:v43];
                        }
                      }

                      v40 = [v39 countByEnumeratingWithState:&v109 objects:v138 count:16];
                      if (v40)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_61:

                  v31 = v30 + v31;
                  v36 = 1;
                }

                objc_autoreleasePoolPop(context);
                if (!v36)
                {

                  goto LABEL_71;
                }
              }

              v27 = [obj countByEnumeratingWithState:&v113 objects:v139 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

          if (v96 && (v47 = CFAbsoluteTimeGetCurrent(), v47 - v128[3] >= 0.01) && (v128[3] = v47, v126 = 0, (*(v88 + 2))(v88, &v126, 0.8), v48 = *(v132 + 24) | v126, *(v132 + 24) = v48, (v48 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v142 = 408;
              v143 = 2080;
              v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_71:
            v12 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v84 = [v86 fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:{v79, v78}];
            v49 = [v86 memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:? shouldIncludeMeNode:? simulateMeNodeNotSet:?];
            v94 = [PGPeopleUtilities validateKeyedSocialGroups:v49 withPhotoLibrary:self->_photoLibrary graph:v86];

            v50 = [v79 count];
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v92 = v79;
            v51 = [v92 countByEnumeratingWithState:&v105 objects:v137 count:16];
            if (v51)
            {
              v52 = 0.2 / v50;
              contexta = *v106;
              v53 = 0.8;
              while (2)
              {
                for (k = 0; k != v51; ++k)
                {
                  if (*v106 != contexta)
                  {
                    objc_enumerationMutation(v92);
                  }

                  v55 = *(*(&v105 + 1) + 8 * k);
                  if (v96)
                  {
                    v56 = CFAbsoluteTimeGetCurrent();
                    if (v56 - v128[3] >= 0.01)
                    {
                      v128[3] = v56;
                      v126 = 0;
                      (*(v88 + 2))(v88, &v126, v53);
                      v57 = *(v132 + 24) | v126;
                      *(v132 + 24) = v57;
                      if (v57)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v142 = 418;
                          v143 = 2080;
                          v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_116;
                      }
                    }
                  }

                  if ([v99 count] > 0xE)
                  {
                    goto LABEL_105;
                  }

                  if (([v100 containsObject:v55] & 1) == 0)
                  {
                    v58 = [v55 UUID];
                    v59 = [v94 objectForKey:v58];

                    if (v59)
                    {
                      v60 = [v55 UUID];
                      v61 = [v94 objectForKeyedSubscript:v60];

                      if ([v61 count] >= 2 && (objc_msgSend(v95, "containsObject:", v61) & 1) == 0)
                      {
                        v103 = 0u;
                        v104 = 0u;
                        v101 = 0u;
                        v102 = 0u;
                        v62 = v61;
                        v63 = [v62 countByEnumeratingWithState:&v101 objects:v136 count:16];
                        if (v63)
                        {
                          v64 = *v102;
                          while (2)
                          {
                            for (m = 0; m != v63; ++m)
                            {
                              if (*v102 != v64)
                              {
                                objc_enumerationMutation(v62);
                              }

                              v66 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v101 + 1) + 8 * m)];
                              v67 = [v89 userFeedbackCalculator];
                              v68 = [v67 userFeedbackTypeForPersonUUID:v66];

                              if (v68 == 2)
                              {
                                if ([v62 count] < 3)
                                {
LABEL_98:
                                  v70 = v62;
                                  goto LABEL_101;
                                }
                              }

                              else if (v68 == 3)
                              {
                                goto LABEL_98;
                              }
                            }

                            v63 = [v62 countByEnumeratingWithState:&v101 objects:v136 count:16];
                            if (v63)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        [v95 addObject:v62];
                        v69 = personUUIDsFromPersonLocalIdentifiers(v62);
                        v70 = PLSearchSocialGroupLookupIdentifier();

                        v71 = [(PGZeroKeywordComputer *)self socialGroupKeyAssetLocalIdentifierWithPersonLocalIdentifiers:v62];
                        v72 = v71;
                        if (v71)
                        {
                          v135 = v71;
                          v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
                        }

                        else
                        {
                          v66 = MEMORY[0x277CBEBF8];
                        }

                        v73 = zeroKeywordForSocialGroupWithIdentifier(v70, v62, v66);
                        [v99 addObject:v73];

LABEL_101:
                      }
                    }
                  }

                  v53 = v52 + v53;
                }

                v51 = [v92 countByEnumeratingWithState:&v105 objects:v137 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

LABEL_105:

            if ([v99 count] >= 0x10)
            {
              [v99 removeObjectsInRange:{15, objc_msgSend(v99, "count") - 15}];
            }

            if (v96 && (v74 = CFAbsoluteTimeGetCurrent(), v74 - v128[3] >= 0.01) && (v128[3] = v74, v126 = 0, (*(v88 + 2))(v88, &v126, 1.0), v75 = *(v132 + 24) | v126, *(v132 + 24) = v75, (v75 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v142 = 470;
                v143 = 2080;
                v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

LABEL_116:
              v12 = MEMORY[0x277CBEBF8];
            }

            else
            {
              v12 = v99;
            }
          }
        }

        goto LABEL_120;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v142 = 345;
        v143 = 2080;
        v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v12 = MEMORY[0x277CBEBF8];
LABEL_120:

    goto LABEL_121;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v142 = 324;
    v143 = 2080;
    v144 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_121:
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);

  v76 = *MEMORY[0x277D85DE8];

  return v12;
}

void __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __92__PGZeroKeywordComputer_socialGroupKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 personNodes];
  v6 = [v5 count];

  v7 = [v4 personNodes];

  v8 = [v7 count];
  if (v6 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)peopleZeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v158 = *MEMORY[0x277D85DE8];
  v100 = a3;
  v109 = a4;
  v9 = a5;
  v97 = a6;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v110 = _Block_copy(v97);
  v96 = v9;
  if (v110)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v141[3] >= 0.01)
    {
      v141[3] = Current;
      v139 = 0;
      v110[2](v110, &v139, 0.0);
      v11 = *(v145 + 24) | v139;
      *(v145 + 24) = v11;
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v155 = 158;
          v156 = 2080;
          v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_108;
      }
    }
  }

  v111 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB58] set];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
  v134[3] = &unk_27888A188;
  v108 = v110;
  v135 = v108;
  v136 = &v140;
  v138 = 0x3F847AE147AE147BLL;
  v137 = &v144;
  v98 = [(PGZeroKeywordComputer *)self contextualPersonZeroKeywordsWithGraph:v100 options:v9 progressBlock:v134];
  if (*(v145 + 24) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_11:
      v12 = MEMORY[0x277CBEBF8];
      goto LABEL_107;
    }

    *buf = 67109378;
    v155 = 168;
    v156 = 2080;
    v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    v14 = MEMORY[0x277D86220];
LABEL_10:
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_11;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v15 = v98;
  v16 = [v15 countByEnumeratingWithState:&v130 objects:v153 count:16];
  if (v16)
  {
    v17 = *v131;
    v18 = *MEMORY[0x277D3B180];
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v131 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v130 + 1) + 8 * v19);
      [v111 addObject:v20];
      v21 = [v20 objectForKeyedSubscript:v18];
      [v13 addObject:v21];

      if ([v111 count] > 2)
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [v15 countByEnumeratingWithState:&v130 objects:v153 count:16];
        if (v16)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  if (v110)
  {
    v22 = CFAbsoluteTimeGetCurrent();
    if (v22 - v141[3] >= 0.01)
    {
      v141[3] = v22;
      v139 = 0;
      v108[2](v108, &v139, 0.4);
      v23 = *(v145 + 24) | v139;
      *(v145 + 24) = v23;
      if (v23)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        *buf = 67109378;
        v155 = 179;
        v156 = 2080;
        v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v14 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }
  }

  v99 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v99 setPersonContext:1];
  [v99 setIncludedDetectionTypes:&unk_284486420];
  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"type" ascending:0];
  v152[0] = v24;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"manualOrder" ascending:1];
  v152[1] = v25;
  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"detectionType" ascending:1];
  v152[2] = v26;
  v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v152[3] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:4];
  [v99 setSortDescriptors:v28];

  v29 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v99];
  v30 = [v29 count];
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v29;
  v31 = [obj countByEnumeratingWithState:&v126 objects:v151 count:16];
  if (!v31)
  {
    goto LABEL_45;
  }

  v32 = 0.3 / v30;
  v33 = *v127;
  v34 = 0.4;
  while (2)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v127 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v126 + 1) + 8 * i);
      if (v110)
      {
        v37 = CFAbsoluteTimeGetCurrent();
        if (v37 - v141[3] >= 0.01)
        {
          v141[3] = v37;
          v139 = 0;
          v108[2](v108, &v139, v34);
          v38 = *(v145 + 24) | v139;
          *(v145 + 24) = v38;
          if (v38)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v155 = 196;
              v156 = 2080;
              v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_105;
          }
        }
      }

      if ([v111 count] > 0xE)
      {
        goto LABEL_45;
      }

      v39 = [v36 localIdentifier];
      if (([v13 containsObject:v39] & 1) == 0)
      {
        [v13 addObject:v39];
        v40 = [v109 userFeedbackCalculator];
        v41 = [v36 uuid];
        v42 = [v40 userFeedbackTypeForPersonUUID:v41];

        if ((v42 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          v43 = [v36 detectionType];
          if (v43 - 3 >= 2)
          {
            if (v43 != 1)
            {
              goto LABEL_43;
            }

            v44 = v43;
          }

          else
          {
            v44 = 6;
          }

          v45 = [v36 name];
          v46 = [v36 uuid];
          v47 = zeroKeywordWithAttributes(0, v44, v45, 0, v46, v39);

          if (v47)
          {
            [v111 addObject:v47];
          }
        }
      }

LABEL_43:

      v34 = v32 + v34;
    }

    v31 = [obj countByEnumeratingWithState:&v126 objects:v151 count:16];
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_45:

  if ([v111 count] >= 0x10)
  {
    [v111 removeObjectsInRange:{15, objc_msgSend(v111, "count") - 15}];
  }

  if (v110 && (v48 = CFAbsoluteTimeGetCurrent(), v48 - v141[3] >= 0.01) && (v141[3] = v48, v139 = 0, v108[2](v108, &v139, 0.7), v49 = *(v145 + 24) | v139, *(v145 + 24) = v49, (v49 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v155 = 247;
      v156 = 2080;
      v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_105:
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v50 = [v100 bestSocialGroupNodes];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_326;
    v124[3] = &unk_278888170;
    v51 = v100;
    v125 = v51;
    v52 = [v50 indexesOfObjectsPassingTest:v124];
    v53 = [v50 objectsAtIndexes:v52];
    v95 = v50;

    v94 = [v51 fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:v53];
    v54 = [v51 memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:? shouldIncludeMeNode:? simulateMeNodeNotSet:?];
    v107 = [PGPeopleUtilities validateKeyedSocialGroups:v54 withPhotoLibrary:self->_photoLibrary graph:v51];

    v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v56 = [v107 objectEnumerator];
    v57 = [v56 countByEnumeratingWithState:&v120 objects:v150 count:16];
    if (v57)
    {
      v58 = *v121;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v121 != v58)
          {
            objc_enumerationMutation(v56);
          }

          [v55 addObjectsFromArray:*(*(&v120 + 1) + 8 * j)];
        }

        v57 = [v56 countByEnumeratingWithState:&v120 objects:v150 count:16];
      }

      while (v57);
    }

    v93 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v55 inGraph:v51];
    v104 = [v93 personNodeByLocalIdentifier];
    v60 = [v95 count];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v102 = v53;
    v61 = [v102 countByEnumeratingWithState:&v116 objects:v149 count:16];
    if (v61)
    {
      v62 = 0.3 / v60;
      v63 = *v117;
      v64 = 0.7;
      while (2)
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v117 != v63)
          {
            objc_enumerationMutation(v102);
          }

          v66 = *(*(&v116 + 1) + 8 * k);
          v67 = [v66 UUID];
          v68 = [v107 objectForKey:v67];

          v64 = v62 + v64;
          if (v68)
          {
            v69 = [v66 UUID];
            v70 = [v107 objectForKeyedSubscript:v69];

            v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v70, "count")}];
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v105 = v70;
            v71 = [v105 countByEnumeratingWithState:&v112 objects:v148 count:16];
            if (v71)
            {
              v72 = *v113;
              while (2)
              {
                for (m = 0; m != v71; ++m)
                {
                  if (*v113 != v72)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v74 = *(*(&v112 + 1) + 8 * m);
                  if (v110)
                  {
                    v75 = CFAbsoluteTimeGetCurrent();
                    if (v75 - v141[3] >= 0.01)
                    {
                      v141[3] = v75;
                      v139 = 0;
                      v108[2](v108, &v139, v64);
                      v76 = *(v145 + 24) | v139;
                      *(v145 + 24) = v76;
                      if (v76)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v155 = 280;
                          v156 = 2080;
                          v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_100;
                      }
                    }
                  }

                  if (([v13 containsObject:v74] & 1) == 0)
                  {
                    v77 = [v104 objectForKeyedSubscript:v74];
                    v78 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:v74];
                    v79 = [v109 userFeedbackCalculator];
                    v80 = [v79 userFeedbackTypeForPersonUUID:v78];

                    if ((v80 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v81 = [v77 name];
                      v82 = zeroKeywordWithAttributes(0, 1, v81, 0, v78, v74);

                      [v101 addObject:v82];
                    }
                  }
                }

                v71 = [v105 countByEnumeratingWithState:&v112 objects:v148 count:16];
                if (v71)
                {
                  continue;
                }

                break;
              }
            }

            if ([v101 count] && objc_msgSend(v111, "count"))
            {
              v83 = [v111 count];
              v84 = [v101 count];
              v85 = v84 + [v111 count] - 15;
              if (v85 >= 1)
              {
                v86 = v83 - 1;
                do
                {
                  v87 = [v111 objectAtIndexedSubscript:v86];
                  v88 = [v101 containsObject:v87];

                  if ((v88 & 1) == 0)
                  {
                    [v111 removeObjectAtIndex:v86];
                    --v85;
                  }

                  --v86;
                }

                while (v85 > 0);
              }

              [v111 addObjectsFromArray:v101];
            }

            goto LABEL_91;
          }
        }

        v61 = [v102 countByEnumeratingWithState:&v116 objects:v149 count:16];
        if (v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_91:

    if (v110 && (v89 = CFAbsoluteTimeGetCurrent(), v89 - v141[3] >= 0.01) && (v141[3] = v89, v139 = 0, v108[2](v108, &v139, 1.0), v90 = *(v145 + 24) | v139, *(v145 + 24) = v90, (v90 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v155 = 316;
        v156 = 2080;
        v157 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_100:
      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = v111;
    }
  }

LABEL_107:
LABEL_108:
  _Block_object_dispose(&v140, 8);
  _Block_object_dispose(&v144, 8);

  v91 = *MEMORY[0x277D85DE8];

  return v12;
}

void __91__PGZeroKeywordComputer_peopleZeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)_zeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v107 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _Block_copy(v13);
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v98[3] < 0.01) || (v98[3] = v15, LOBYTE(info.numer) = 0, (*(v14 + 2))(v14, &info, 0.0), v16 = *(v102 + 24) | LOBYTE(info.numer), *(v102 + 24) = v16, (v16 & 1) == 0))
  {
    v69 = [v10 meNodeCollection];
    if ([v10 isSharedLibraryEnabled])
    {
      v18 = [v69 count];
      self->_shouldFilterMomentNodesWithPresence = v18 != 0;
      if (v18)
      {
        v19 = [v69 momentNodesWithPresence];
        momentNodesWhereMeIsPresent = self->_momentNodesWhereMeIsPresent;
        self->_momentNodesWhereMeIsPresent = v19;
      }
    }

    else
    {
      self->_shouldFilterMomentNodesWithPresence = 0;
    }

    v21 = [MEMORY[0x277CBEB38] dictionary];
    v22 = objc_autoreleasePoolPush();
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke;
    v92[3] = &unk_27888A188;
    v23 = v14;
    v93 = v23;
    v94 = &v97;
    v95 = &v101;
    v96 = 0x3F847AE147AE147BLL;
    v24 = [(PGZeroKeywordComputer *)self peopleZeroKeywordsWithGraph:v10 curationContext:v11 options:v12 progressBlock:v92];
    [v21 setObject:v24 forKeyedSubscript:&unk_284484638];

    v25 = *(v102 + 24);
    if (v25 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v106 = 103;
      *&v106[4] = 2080;
      *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v22);
    if (v25)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v98[3] >= 0.01)
      {
        v98[3] = Current;
        LOBYTE(info.numer) = 0;
        (*(v23 + 2))(v23, &info, 0.2);
        v27 = *(v102 + 24) | LOBYTE(info.numer);
        *(v102 + 24) = v27;
        if (v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v106 = 106;
            *&v106[4] = 2080;
            *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v28 = MEMORY[0x277D86220];
LABEL_29:
            _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_30;
          }

          goto LABEL_30;
        }
      }
    }

    v29 = objc_autoreleasePoolPush();
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_294;
    v87[3] = &unk_27888A188;
    v30 = v23;
    v88 = v30;
    v89 = &v97;
    v90 = &v101;
    v91 = 0x3F847AE147AE147BLL;
    v31 = [(PGZeroKeywordComputer *)self socialGroupKeywordsWithGraph:v10 curationContext:v11 options:v12 progressBlock:v87];
    [v21 setObject:v31 forKeyedSubscript:&unk_284484650];

    v32 = *(v102 + 24);
    if (v32 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v106 = 113;
      *&v106[4] = 2080;
      *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v29);
    if (v32)
    {
      goto LABEL_30;
    }

    if (v14)
    {
      v33 = CFAbsoluteTimeGetCurrent();
      if (v33 - v98[3] >= 0.01)
      {
        v98[3] = v33;
        LOBYTE(info.numer) = 0;
        (*(v30 + 2))(v30, &info, 0.4);
        v34 = *(v102 + 24) | LOBYTE(info.numer);
        *(v102 + 24) = v34;
        if (v34)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v106 = 116;
            *&v106[4] = 2080;
            *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v28 = MEMORY[0x277D86220];
            goto LABEL_29;
          }

LABEL_30:
          v17 = MEMORY[0x277CBEC10];
LABEL_31:

          goto LABEL_32;
        }
      }
    }

    v37 = [objc_opt_class() zeroKeywordLog];
    v38 = os_signpost_id_generate(v37);
    v39 = v37;
    v40 = v39;
    spid = v38;
    v67 = v38 - 1;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "ZeroKeywordComputerPlaceZKW", "", buf, 2u);
    }

    v68 = v40;

    info = 0;
    mach_timebase_info(&info);
    v65 = mach_absolute_time();
    v41 = objc_autoreleasePoolPush();
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_297;
    v81[3] = &unk_27888A188;
    v42 = v30;
    v82 = v42;
    v83 = &v97;
    v84 = &v101;
    v85 = 0x3F847AE147AE147BLL;
    v43 = [(PGZeroKeywordComputer *)self placeZeroKeywordsWithGraph:v10 options:v12 progressBlock:v81];
    [v21 setObject:v43 forKeyedSubscript:&unk_284484668];

    v44 = *(v102 + 24);
    if (v44 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v106 = 125;
      *&v106[4] = 2080;
      *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v41);
    if (v44)
    {
      goto LABEL_71;
    }

    v45 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v48 = v68;
    v49 = v48;
    if (v67 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v49, OS_SIGNPOST_INTERVAL_END, spid, "ZeroKeywordComputerPlaceZKW", "", buf, 2u);
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v106 = "ZeroKeywordComputerPlaceZKW";
      *&v106[8] = 2048;
      *&v106[10] = ((((v45 - v65) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v14 && (v50 = CFAbsoluteTimeGetCurrent(), v50 - v98[3] >= 0.01) && (v98[3] = v50, v80 = 0, (*(v42 + 2))(v42, &v80, 0.6), v51 = *(v102 + 24) | v80, *(v102 + 24) = v51, (v51 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v106 = 130;
        *&v106[4] = 2080;
        *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        v52 = MEMORY[0x277D86220];
LABEL_70:
        _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_301;
      v75[3] = &unk_27888A188;
      v54 = v42;
      v76 = v54;
      v77 = &v97;
      v78 = &v101;
      v79 = 0x3F847AE147AE147BLL;
      v55 = [(PGZeroKeywordComputer *)self eventZeroKeywordsWithGraph:v10 curationContext:v11 options:v12 progressBlock:v75];
      [v21 setObject:v55 forKeyedSubscript:&unk_284484680];

      v56 = *(v102 + 24);
      if (v56 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v106 = 137;
        *&v106[4] = 2080;
        *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v53);
      if (v56)
      {
        goto LABEL_71;
      }

      if (v14 && (v57 = CFAbsoluteTimeGetCurrent(), v57 - v98[3] >= 0.01) && (v98[3] = v57, v80 = 0, (*(v54 + 2))(v54, &v80, 0.8), v58 = *(v102 + 24) | v80, *(v102 + 24) = v58, (v58 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v106 = 140;
          *&v106[4] = 2080;
          *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          v52 = MEMORY[0x277D86220];
          goto LABEL_70;
        }
      }

      else
      {
        v59 = objc_autoreleasePoolPush();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_304;
        v70[3] = &unk_27888A188;
        v60 = v54;
        v71 = v60;
        v72 = &v97;
        v73 = &v101;
        v74 = 0x3F847AE147AE147BLL;
        v61 = [(PGZeroKeywordComputer *)self sceneZeroKeywordsWithGraph:v10 options:v12 progressBlock:v70];
        [v21 setObject:v61 forKeyedSubscript:&unk_284484698];

        v62 = *(v102 + 24);
        if (v62 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v106 = 147;
          *&v106[4] = 2080;
          *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v59);
        if ((v62 & 1) == 0)
        {
          if (!v14 || (v63 = CFAbsoluteTimeGetCurrent(), v63 - v98[3] < 0.01) || (v98[3] = v63, v80 = 0, (*(v60 + 2))(v60, &v80, 1.0), v64 = *(v102 + 24) | v80, *(v102 + 24) = v64, (v64 & 1) == 0))
          {
            v17 = v21;
            goto LABEL_72;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v106 = 150;
            *&v106[4] = 2080;
            *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
            v52 = MEMORY[0x277D86220];
            goto LABEL_70;
          }
        }
      }
    }

LABEL_71:
    v17 = MEMORY[0x277CBEC10];
LABEL_72:

    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v106 = 88;
    *&v106[4] = 2080;
    *&v106[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGZeroKeywordComputer.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = MEMORY[0x277CBEC10];
LABEL_32:
  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v101, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_294(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_297(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_301(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.6);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __86__PGZeroKeywordComputer__zeroKeywordsWithGraph_curationContext_options_progressBlock___block_invoke_304(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)zeroKeywordsWithGraph:(id)a3 curationContext:(id)a4 options:(id)a5 progressBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() zeroKeywordLog];
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "ZeroKeywordComputer-ZeroKeywordComputing", "", buf, 2u);
  }

  v18 = [(PGZeroKeywordComputer *)self _zeroKeywordsWithGraph:v13 curationContext:v12 options:v11 progressBlock:v10];

  v19 = v17;
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v15, "ZeroKeywordComputer-ZeroKeywordComputing", "", v22, 2u);
  }

  return v18;
}

- (PGZeroKeywordComputer)initWithPhotoLibrary:(id)a3 curationManager:(id)a4 searchComputationCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PGZeroKeywordComputer;
  v12 = [(PGZeroKeywordComputer *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, a3);
    objc_storeStrong(&v13->_curationManager, a4);
    v14 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v13->_photoLibrary];
    curationContext = v13->_curationContext;
    v13->_curationContext = v14;

    objc_storeStrong(&v13->_searchComputationCache, a5);
    v16 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:1];
    sceneTaxonomy = v13->_sceneTaxonomy;
    v13->_sceneTaxonomy = v16;

    v13->_shouldFilterMomentNodesWithPresence = 0;
    momentNodesWhereMeIsPresent = v13->_momentNodesWhereMeIsPresent;
    v13->_momentNodesWhereMeIsPresent = 0;
  }

  return v13;
}

+ (id)zeroKeywordLog
{
  if (zeroKeywordLog_onceToken != -1)
  {
    dispatch_once(&zeroKeywordLog_onceToken, &__block_literal_global_366);
  }

  v3 = zeroKeywordLog_zeroKeywordLog;

  return v3;
}

void __39__PGZeroKeywordComputer_zeroKeywordLog__block_invoke()
{
  v0 = os_log_create("com.apple.PhotosGraph", "ZeroKeywordComputer");
  v1 = zeroKeywordLog_zeroKeywordLog;
  zeroKeywordLog_zeroKeywordLog = v0;
}

@end