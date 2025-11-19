@interface PGRecentSocialGroupCentricSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4;
- (id)assetsMatchingSocialGroup:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5 matchingAssetUUID:(id)a6;
- (id)assetsWithPersonsBetweenStartDate:(id)a3 andEndDate:(id)a4 matchAssetUUID:(id)a5;
- (id)longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:(id)a3;
- (id)nextSocialGroupPotentialSuggestionWithProgress:(id)a3;
- (id)nextSuggestionWithProgress:(id)a3;
- (id)potentialSuggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)socialGroupPotentialSuggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)verifiedPersons;
- (void)reset;
- (void)startSuggestingWithOptions:(id)a3;
- (void)usePotentialSuggestions:(id)a3;
@end

@implementation PGRecentSocialGroupCentricSuggester

- (void)usePotentialSuggestions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableSet *)self->_usedPotentialSuggestions addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)assetsMatchingSocialGroup:(id)a3 betweenStartDate:(id)a4 andEndDate:(id)a5 matchingAssetUUID:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(PGAbstractSuggester *)self session];
  v15 = [v14 loggingConnection];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Computing eligible socialgroup assets between %@ and %@", buf, 0x16u);
  }

  v16 = [(PGRecentSocialGroupCentricSuggester *)self assetsWithPersonsBetweenStartDate:v10 andEndDate:v11 matchAssetUUID:v12];

  v17 = [MEMORY[0x277CBEB98] setWithArray:v13];
  v18 = [v13 count];

  v19 = MEMORY[0x277CCAC30];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __111__PGRecentSocialGroupCentricSuggester_assetsMatchingSocialGroup_betweenStartDate_andEndDate_matchingAssetUUID___block_invoke;
  v30 = &unk_2788817C0;
  v31 = v17;
  v32 = v18 >> 1;
  v20 = v17;
  v21 = [v19 predicateWithBlock:&v27];
  v22 = [v16 filteredArrayUsingPredicate:{v21, v27, v28, v29, v30}];

  v23 = v15;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 134217984;
    v34 = v24;
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: found %lu eligible assets", buf, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

BOOL __111__PGRecentSocialGroupCentricSuggester_assetsMatchingSocialGroup_betweenStartDate_andEndDate_matchingAssetUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clsPersonLocalIdentifiers];
  v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
  [v5 intersectSet:*(a1 + 32)];
  v6 = [v5 count];
  if (v6 >= 2 && (v7 = v6, v6 >= *(a1 + 40)))
  {
    v9 = [v3 clsFaceInformationSummary];
    v10 = [v9 numberOfFaces];
    v11 = v10 - v7;
    if (v10 < v7)
    {
      v11 = 0;
    }

    v8 = v11 < v7 && vcvtd_n_f64_u64(v7, 1uLL) <= [v9 numberOfGoodFacesOfVerifiedPersons];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)assetsWithPersonsBetweenStartDate:(id)a3 andEndDate:(id)a4 matchAssetUUID:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eligibleAssets = self->_eligibleAssets;
  if (!eligibleAssets)
  {
    v64 = [(PGAbstractSuggester *)self session];
    v63 = [v64 photoLibrary];
    v62 = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v55 = objc_autoreleasePoolPush();
    v13 = [objc_opt_class() noVideoPredicate];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v13, 0}];
    if (v8)
    {
      v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", v8];
      [v14 addObject:v15];
    }

    v59 = v14;
    if (v9)
    {
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", v9];
      [v14 addObject:v16];
    }

    if (v10)
    {
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", v10];
      [v14 addObject:v17];
    }

    v57 = v9;
    v58 = v8;
    v56 = v10;
    v54 = v13;
    if ([v14 count] <= 1)
    {
      [v14 firstObject];
    }

    else
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v14];
    }
    v53 = ;
    v18 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v53];
    v19 = +[PGCurationManager assetPropertySetsForCuration];
    [v18 setFetchPropertySets:v19];

    [v18 setChunkSizeForFetch:500];
    v51 = [(PGRecentSocialGroupCentricSuggester *)self verifiedPersons];
    v52 = v18;
    v61 = [MEMORY[0x277CD97A8] fetchAssetsForPersons:? options:?];
    v20 = [v61 count];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v60 = v20;
      do
      {
        context = objc_autoreleasePoolPush();
        if (v21 - v22 >= 0x1F4)
        {
          v23 = 500;
        }

        else
        {
          v23 = v21 - v22;
        }

        v24 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v22, v23}];
        v25 = [v61 objectsAtIndexes:v24];

        v26 = objc_alloc(MEMORY[0x277CD98D0]);
        v27 = [v61 fetchType];
        v28 = [v61 fetchPropertySets];
        v29 = [v26 initWithObjects:v25 photoLibrary:v63 fetchType:v27 fetchPropertySets:v28 identifier:0 registerIfNeeded:0];

        v30 = MEMORY[0x277CD97A8];
        v31 = [v64 curationContext];
        v32 = [v30 clsAllAssetsFromFetchResult:v29 prefetchOptions:v62 curationContext:v31];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v67;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v67 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v66 + 1) + 8 * i);
              if ([(PGAbstractSuggester *)self assetIsValidForSuggesting:v38])
              {
                v39 = [v38 uuid];
                [v12 addObject:v39];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v66 objects:v70 count:16];
          }

          while (v35);
        }

        objc_autoreleasePoolPop(context);
        v22 += 500;
        v21 = v60;
      }

      while (v22 < v60);
    }

    objc_autoreleasePoolPop(v55);
    v40 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v12];
    v41 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v40];
    v42 = +[PGCurationManager assetPropertySetsForCuration];
    [v41 setFetchPropertySets:v42];

    v43 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v41];
    v44 = MEMORY[0x277CD97A8];
    v45 = [v64 curationContext];
    v46 = [v44 clsAllAssetsFromFetchResult:v43 prefetchOptions:v62 curationContext:v45];
    v47 = self->_eligibleAssets;
    self->_eligibleAssets = v46;

    eligibleAssets = self->_eligibleAssets;
    v9 = v57;
    v8 = v58;
    v10 = v56;
  }

  v48 = eligibleAssets;

  v49 = *MEMORY[0x277D85DE8];
  return eligibleAssets;
}

- (id)verifiedPersons
{
  v2 = [(PGAbstractSuggester *)self session];
  v3 = [v2 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setPersonContext:1];
  v5 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v4];
  v6 = [v5 fetchedObjects];

  return v6;
}

- (id)potentialSuggestionsWithOptions:(id)a3 progress:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(PGAbstractSuggester *)self session];
  v8 = [v7 workingContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke;
  v14[3] = &unk_27888A638;
  v15 = v5;
  v9 = v6;
  v16 = v9;
  v10 = v5;
  [v8 performSynchronousConcurrentGraphReadUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [*(a1 + 32) universalStartDate];
  v5 = [*(a1 + 32) universalEndDate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke_2;
  v8[3] = &unk_278881798;
  v9 = v5;
  v10 = v4;
  v11 = *(a1 + 40);
  v6 = v4;
  v7 = v5;
  [v3 enumerateSocialGroupsWithBlock:v8 includeInvalidGroups:0];
}

void __80__PGRecentSocialGroupCentricSuggester_potentialSuggestionsWithOptions_progress___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  if ([v9 count] >= 2)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v14)
    {
      v15 = v14;
      v44 = v12;
      v45 = v11;
      v46 = v10;
      v47 = v9;
      v16 = 0;
      v17 = 0;
      v18 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          v21 = [v20 universalStartDate];
          if ([v21 compare:*(a1 + 32)] == 1 || (objc_msgSend(v20, "universalEndDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "compare:", *(a1 + 40)), v22, v23 == -1))
          {
            if ([v21 compare:*(a1 + 40)] == -1)
            {
              if (v16)
              {
                v24 = [v21 laterDate:v16];

                v16 = v24;
              }

              else
              {
                v16 = v21;
              }
            }
          }

          else
          {
            v17 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v15);

      if ((v17 & 1) == 0)
      {
        v10 = v46;
        v9 = v47;
        v12 = v44;
        v11 = v45;
        goto LABEL_38;
      }

      if (v16)
      {
        [*(a1 + 40) timeIntervalSinceDate:v16];
        if (v25 <= 2592000.0)
        {

          v16 = 0;
        }
      }

      v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v47, "count")}];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v27 = v47;
      v28 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v53;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v53 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [*(*(&v52 + 1) + 8 * j) localIdentifier];
            [v26 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v29);
      }

      v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v34 = v13;
      v35 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
      v11 = v45;
      if (v35)
      {
        v36 = v35;
        v37 = *v49;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v49 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [*(*(&v48 + 1) + 8 * k) localIdentifier];
            [v33 addObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v36);
      }

      v40 = [PGPotentialRecentSocialGroupCentricSuggestion alloc];
      v10 = v46;
      *&v41 = a5;
      v42 = [(PGPotentialRecentSocialGroupCentricSuggestion *)v40 initWithPersonLocalIdentifiers:v26 personWeights:v46 momentLocalIdentifiers:v33 weight:v16 notSeenSinceDate:v41];
      [*(a1 + 48) addObject:v42];

      v9 = v47;
      v12 = v44;
    }

    else
    {
      v16 = 0;
      v26 = v13;
    }

LABEL_38:
  }

  objc_autoreleasePoolPop(v12);

  v43 = *MEMORY[0x277D85DE8];
}

- (id)nextSocialGroupPotentialSuggestionWithProgress:(id)a3
{
  v4 = a3;
  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  if (!socialGroupPotentialSuggestionEnumerator)
  {
    socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
    if (!socialGroupPotentialSuggestions)
    {
      v7 = [(PGRecentSocialGroupCentricSuggester *)self socialGroupPotentialSuggestionsWithOptions:self->_options progress:v4];
      v8 = self->_socialGroupPotentialSuggestions;
      self->_socialGroupPotentialSuggestions = v7;

      [(PGRecentSocialGroupCentricSuggester *)self usePotentialSuggestions:self->_socialGroupPotentialSuggestions];
      socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
    }

    v9 = [(NSArray *)socialGroupPotentialSuggestions objectEnumerator];
    v10 = self->_socialGroupPotentialSuggestionEnumerator;
    self->_socialGroupPotentialSuggestionEnumerator = v9;

    socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  }

  v11 = [(NSEnumerator *)socialGroupPotentialSuggestionEnumerator nextObject];

  return v11;
}

- (id)nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:(id)a3
{
  v4 = a3;
  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  if (!longTimeNoSeeSocialGroupPotentialSuggestionEnumerator)
  {
    longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
    if (!longTimeNoSeeSocialGroupPotentialSuggestions)
    {
      v7 = [(PGRecentSocialGroupCentricSuggester *)self longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:self->_options progress:v4];
      v8 = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
      self->_longTimeNoSeeSocialGroupPotentialSuggestions = v7;

      [(PGRecentSocialGroupCentricSuggester *)self usePotentialSuggestions:self->_longTimeNoSeeSocialGroupPotentialSuggestions];
      longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
    }

    v9 = [(NSArray *)longTimeNoSeeSocialGroupPotentialSuggestions objectEnumerator];
    v10 = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
    self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = v9;

    longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  }

  v11 = [(NSEnumerator *)longTimeNoSeeSocialGroupPotentialSuggestionEnumerator nextObject];

  return v11;
}

- (id)socialGroupPotentialSuggestionsWithOptions:(id)a3 progress:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v6 = a4;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v43 = _Block_copy(v6);
  v39 = v6;
  if (v43)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v56[3] >= 0.01)
    {
      v56[3] = Current;
      v54 = 0;
      v43[2](v43, &v54, 0.0);
      v8 = *(v60 + 24) | v54;
      *(v60 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v66 = 288;
          v67 = 2080;
          v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  v42 = self;
  if (!self->_allPotentialSuggestions)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __91__PGRecentSocialGroupCentricSuggester_socialGroupPotentialSuggestionsWithOptions_progress___block_invoke;
    v49[3] = &unk_27888A188;
    v50 = v43;
    v51 = &v55;
    v52 = &v59;
    v53 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentSocialGroupCentricSuggester *)self potentialSuggestionsWithOptions:v44 progress:v49];
    allPotentialSuggestions = self->_allPotentialSuggestions;
    self->_allPotentialSuggestions = v10;

    if (*(v60 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v66 = 295;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v43)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v56[3] >= 0.01)
    {
      v56[3] = v12;
      v54 = 0;
      v43[2](v43, &v54, 0.3);
      v13 = *(v60 + 24) | v54;
      *(v60 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v66 = 298;
          v67 = 2080;
          v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_51;
      }
    }
  }

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(NSArray *)self->_allPotentialSuggestions count];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_allPotentialSuggestions;
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v64 count:16];
  if (v16)
  {
    v17 = 1.0 / v15;
    v18 = *v46;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v45 + 1) + 8 * i);
        if (v43)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v56[3] >= 0.01)
          {
            v56[3] = v22;
            v54 = 0;
            v43[2](v43, &v54, v19 * 0.6 + 0.3);
            v23 = *(v60 + 24) | v54;
            *(v60 + 24) = v23;
            if (v23)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v66 = 305;
                v67 = 2080;
                v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_41;
            }
          }
        }

        if (([(NSMutableSet *)self->_usedPotentialSuggestions containsObject:v21]& 1) == 0)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = [v44 additionalOptions];
          v26 = [v25 objectForKeyedSubscript:@"assetUUID"];

          v27 = [v21 personLocalIdentifiers];
          v28 = [v44 universalStartDate];
          v29 = [v44 universalEndDate];
          v30 = [(PGRecentSocialGroupCentricSuggester *)v42 assetsMatchingSocialGroup:v27 betweenStartDate:v28 andEndDate:v29 matchingAssetUUID:v26];

          if ([v30 count])
          {
            [v21 setAssets:v30];
            [v40 addObject:v21];
          }

          objc_autoreleasePoolPop(v24);
          self = v42;
        }

        v19 = v17 + v19;
      }

      v16 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v64 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v43 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v56[3] >= 0.01) && (v56[3] = v31, v54 = 0, v43[2](v43, &v54, 0.9), v32 = *(v60 + 24) | v54, *(v60 + 24) = v32, (v32 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v66 = 325;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_41:
    v14 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v63 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];

    [v40 sortUsingDescriptors:v34];
    if (v43 && (v35 = CFAbsoluteTimeGetCurrent(), v35 - v56[3] >= 0.01) && (v56[3] = v35, v54 = 0, v43[2](v43, &v54, 1.0), v36 = *(v60 + 24) | v54, *(v60 + 24) = v36, (v36 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v66 = 331;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = v40;
    }
  }

LABEL_51:
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v14;
}

void __91__PGRecentSocialGroupCentricSuggester_socialGroupPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions:(id)a3 progress:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v6 = a4;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v47 = _Block_copy(v6);
  v42 = v6;
  if (v47)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v59[3] >= 0.01)
    {
      v59[3] = Current;
      v57 = 0;
      v47[2](v47, &v57, 0.0);
      v8 = *(v63 + 24) | v57;
      *(v63 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v69 = 233;
          v70 = 2080;
          v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  v46 = self;
  if (!self->_allPotentialSuggestions)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __104__PGRecentSocialGroupCentricSuggester_longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions_progress___block_invoke;
    v52[3] = &unk_27888A188;
    v53 = v47;
    v54 = &v58;
    v55 = &v62;
    v56 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentSocialGroupCentricSuggester *)self potentialSuggestionsWithOptions:v45 progress:v52];
    allPotentialSuggestions = self->_allPotentialSuggestions;
    self->_allPotentialSuggestions = v10;

    if (*(v63 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v69 = 240;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v47)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v59[3] >= 0.01)
    {
      v59[3] = v12;
      v57 = 0;
      v47[2](v47, &v57, 0.3);
      v13 = *(v63 + 24) | v57;
      *(v63 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v69 = 243;
          v70 = 2080;
          v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_52;
      }
    }
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(NSArray *)self->_allPotentialSuggestions count];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_allPotentialSuggestions;
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (v16)
  {
    v17 = 1.0 / v15;
    v18 = *v49;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        if (v47)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v59[3] >= 0.01)
          {
            v59[3] = v22;
            v57 = 0;
            v47[2](v47, &v57, v19 * 0.6 + 0.3);
            v23 = *(v63 + 24) | v57;
            *(v63 + 24) = v23;
            if (v23)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v69 = 250;
                v70 = 2080;
                v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_42;
            }
          }
        }

        if (([(NSMutableSet *)self->_usedPotentialSuggestions containsObject:v21]& 1) == 0)
        {
          v24 = [v21 notSeenSinceDate];
          v25 = v24 == 0;

          self = v46;
          if (!v25)
          {
            v26 = objc_autoreleasePoolPush();
            v27 = [v45 additionalOptions];
            v28 = [v27 objectForKeyedSubscript:@"assetUUID"];

            v29 = [v21 personLocalIdentifiers];
            v30 = [v45 universalStartDate];
            v31 = [v45 universalEndDate];
            v32 = [(PGRecentSocialGroupCentricSuggester *)v46 assetsMatchingSocialGroup:v29 betweenStartDate:v30 andEndDate:v31 matchingAssetUUID:v28];

            if ([v32 count])
            {
              [v21 setAssets:v32];
              [v43 addObject:v21];
            }

            objc_autoreleasePoolPop(v26);
            self = v46;
          }
        }

        v19 = v17 + v19;
      }

      v16 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v67 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v47 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v59[3] >= 0.01) && (v59[3] = v33, v57 = 0, v47[2](v47, &v57, 0.9), v34 = *(v63 + 24) | v57, *(v63 + 24) = v34, (v34 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v69 = 273;
      v70 = 2080;
      v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_42:
    v14 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"notSeenSinceDate" ascending:1];
    v66[0] = v35;
    v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v66[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];

    [v43 sortUsingDescriptors:v37];
    if (v47 && (v38 = CFAbsoluteTimeGetCurrent(), v38 - v59[3] >= 0.01) && (v59[3] = v38, v57 = 0, v47[2](v47, &v57, 1.0), v39 = *(v63 + 24) | v57, *(v63 + 24) = v39, (v39 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v69 = 280;
        v70 = 2080;
        v71 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v14 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v14 = v43;
    }
  }

LABEL_52:
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  v40 = *MEMORY[0x277D85DE8];

  return v14;
}

void __104__PGRecentSocialGroupCentricSuggester_longTimeNoSeeSocialGroupPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (BOOL)canGenerateSuggestionWithAsset:(id)a3 onDate:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PGSuggestionOptions);
  [(PGSuggestionOptions *)v8 setLocalToday:v7];

  v9 = [v6 creationDate];
  [(PGSuggestionOptions *)v8 setUniversalStartDate:v9];

  v23 = @"assetUUID";
  v10 = [v6 uuid];
  v24[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(PGSuggestionOptions *)v8 setAdditionalOptions:v11];

  [(PGSuggestionOptions *)v8 setMaximumNumberOfSuggestions:1];
  v12 = [(PGRecentSocialGroupCentricSuggester *)self suggestionsWithOptions:v8 progress:&__block_literal_global_21961];
  if ([v12 count] == 1)
  {
    v13 = [v12 firstObject];
    v14 = [v13 keyAssets];
    if ([v14 count] == 1)
    {
      v22 = [v12 firstObject];
      v15 = [v22 keyAssets];
      v16 = [v15 firstObject];
      v17 = [v16 uuid];
      v18 = [v6 uuid];
      v19 = [v17 isEqualToString:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v26 = a4;
  v6 = _Block_copy(v26);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v38[3] >= 0.01) && (v38[3] = v7, v36 = 0, (*(v6 + 2))(v6, &v36, 0.0), v8 = *(v42 + 24) | v36, *(v42 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v46 = 176;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(PGRecentSocialGroupCentricSuggester *)self startSuggestingWithOptions:v27];
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [v27 maximumNumberOfSuggestions];
    v11 = 0;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = -1;
    }

    v13 = 0.0;
    v14 = MEMORY[0x277D86220];
    while (v11 < v12)
    {
      v15 = objc_autoreleasePoolPush();
      if (v6 && (Current = CFAbsoluteTimeGetCurrent(), Current - v38[3] >= 0.01) && (v38[3] = Current, v36 = 0, (*(v6 + 2))(v6, &v36, v13), v17 = *(v42 + 24) | v36, *(v42 + 24) = v17, (v17 & 1) != 0))
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v46 = 187;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = 1;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __71__PGRecentSocialGroupCentricSuggester_suggestionsWithOptions_progress___block_invoke;
        v29[3] = &unk_278886858;
        v30 = v6;
        v31 = &v37;
        v34 = v13;
        v35 = 1.0 / v12;
        v33 = 0x3F847AE147AE147BLL;
        v32 = &v41;
        v19 = [(PGRecentSocialGroupCentricSuggester *)self nextSuggestionWithProgress:v29];
        v20 = v19;
        if (*(v42 + 24) == 1)
        {
          v18 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 192;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else if (v19)
        {
          [v28 addObject:v19];
          v18 = 0;
          ++v11;
          v13 = 1.0 / v12 + v13;
        }

        else
        {
          v18 = 3;
        }
      }

      objc_autoreleasePoolPop(v15);
      if (v18)
      {
        if (v18 != 3)
        {
          v9 = MEMORY[0x277CBEBF8];
          v21 = v28;
          goto LABEL_35;
        }

        break;
      }
    }

    v21 = v28;
    if (v6 && (v22 = CFAbsoluteTimeGetCurrent(), v22 - v38[3] >= 0.01) && (v38[3] = v22, v36 = 0, (*(v6 + 2))(v6, &v36, 1.0), v23 = *(v42 + 24) | v36, *(v42 + 24) = v23, (v23 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 202;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v9 = v28;
    }

LABEL_35:
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

void __71__PGRecentSocialGroupCentricSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)reset
{
  v3 = [(PGAbstractSuggester *)self session];
  v4 = [v3 loggingConnection];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Resetting", v7, 2u);
  }

  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = 0;

  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  self->_socialGroupPotentialSuggestionEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v3 = _Block_copy(v36);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (v3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v53[3] >= 0.01)
    {
      v53[3] = Current;
      v51 = 0;
      (*(v3 + 2))(v3, &v51, 0.0);
      v5 = *(v57 + 24) | v51;
      *(v57 + 24) = v5;
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v61 = 97;
          *&v61[4] = 2080;
          *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v6 = 0;
        goto LABEL_66;
      }
    }
  }

  v37 = [(PGAbstractSuggester *)self session];
  v7 = [v37 workingContext];
  v38 = [v7 curationManager];

  v8 = [v37 loggingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: nextSuggestion", buf, 2u);
  }

  v9 = 0;
  v39 = (v3 + 16);
  v10 = v8;
  do
  {
    if (v9)
    {
      goto LABEL_53;
    }

    v11 = objc_autoreleasePoolPush();
    if (!v3 || (v10 = v8, v12 = CFAbsoluteTimeGetCurrent(), v12 - v53[3] < 0.01) || (v53[3] = v12, v51 = 0, (*(v3 + 2))(v3, &v51, 0.5), v13 = *(v57 + 24) | v51, *(v57 + 24) = v13, (v13 & 1) == 0))
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke;
      v46[3] = &unk_27888A188;
      v15 = v3;
      v47 = v15;
      v48 = &v52;
      v50 = 0x3F847AE147AE147BLL;
      v49 = &v56;
      v16 = [(PGRecentSocialGroupCentricSuggester *)self nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:v46];
      v17 = v16;
      if (*(v57 + 24) == 1)
      {
        v14 = 1;
        v18 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v61 = 112;
          *&v61[4] = 2080;
          *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = 0;
        goto LABEL_48;
      }

      if (!v16)
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke_189;
        v41[3] = &unk_27888A188;
        v42 = v15;
        v43 = &v52;
        v45 = 0x3F847AE147AE147BLL;
        v44 = &v56;
        v17 = [(PGRecentSocialGroupCentricSuggester *)self nextLongTimeNoSeeSocialGroupPotentialSuggestionWithProgress:v41];
        if (*(v57 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v61 = 119;
            *&v61[4] = 2080;
            *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }
      }

      if (!v3 || (v19 = CFAbsoluteTimeGetCurrent(), v19 - v53[3] < 0.01) || (v53[3] = v19, v51 = 0, (*v39)(v15, &v51, 0.5), v20 = *(v57 + 24) | v51, *(v57 + 24) = v20, (v20 & 1) == 0))
      {
        if (!v17)
        {
          v9 = 0;
          v14 = 3;
LABEL_49:

          v10 = v8;
          goto LABEL_50;
        }

        v21 = [v17 personLocalIdentifiers];
        v22 = objc_alloc_init(PGKeyAssetCurationOptions);
        v23 = [MEMORY[0x277CBEB98] setWithArray:v21];
        [(PGKeyAssetCurationOptions *)v22 setReferencePersonLocalIdentifiers:v23];

        v24 = [v17 assets];
        v25 = [v38 bestAssetInAssets:v24 options:v22];

        if (v3 && (v26 = CFAbsoluteTimeGetCurrent(), v26 - v53[3] >= 0.01) && (v53[3] = v26, v51 = 0, (*v39)(v15, &v51, 0.5), v27 = *(v57 + 24) | v51, *(v57 + 24) = v27, (v27 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v61 = 131;
            *&v61[4] = 2080;
            *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          v14 = 1;
        }

        else
        {
          if (v25)
          {
            v9 = [[PGPeopleCentricSuggestion alloc] initWithPersonLocalIdentifiers:v21 asset:v25];
            v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v29 = [v28 localizedStringForKey:@"PGPeopleTitleFormatGenericSocialGroup" value:@"PGPeopleTitleFormatGenericSocialGroup" table:@"Localizable"];
            [(PGSingleAssetSuggestion *)v9 setTitle:v29];

            v30 = [v25 localCreationDate];
            v31 = [MEMORY[0x277CCA968] localizedStringFromDate:v30 dateStyle:2 timeStyle:0];
            [(PGSingleAssetSuggestion *)v9 setSubtitle:v31];
          }

          else
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "Recent SocialGroup Centric: bestAssetInAssets returned nil, cannot generate suggestion", buf, 2u);
            }

            v9 = 0;
          }

          v14 = 0;
        }

LABEL_48:
        goto LABEL_49;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v61 = 122;
        *&v61[4] = 2080;
        *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_32:
      v9 = 0;
      v14 = 1;
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v61 = 107;
      *&v61[4] = 2080;
      *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = 0;
    v14 = 1;
LABEL_50:
    objc_autoreleasePoolPop(v11);
  }

  while (!v14);
  if (v14 != 3)
  {
LABEL_60:
    v6 = 0;
    goto LABEL_65;
  }

  if (v9)
  {
LABEL_53:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *v61 = v9;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Suggesting %{private}@", buf, 0xCu);
    }

    if (v3)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Nothing to suggest", buf, 2u);
  }

  v9 = 0;
  if (!v3)
  {
    goto LABEL_64;
  }

LABEL_56:
  v32 = CFAbsoluteTimeGetCurrent();
  if (v32 - v53[3] >= 0.01)
  {
    v53[3] = v32;
    v51 = 0;
    (*(v3 + 2))(v3, &v51, 1.0);
    v33 = *(v57 + 24) | v51;
    *(v57 + 24) = v33;
    if (v33)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v61 = 161;
        *&v61[4] = 2080;
        *&v61[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSocialGroupCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_60;
    }
  }

LABEL_64:
  v9 = v9;
  v6 = v9;
LABEL_65:

LABEL_66:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  v34 = *MEMORY[0x277D85DE8];

  return v6;
}

void __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __66__PGRecentSocialGroupCentricSuggester_nextSuggestionWithProgress___block_invoke_189(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)startSuggestingWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 loggingConnection];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "Recent SocialGroup Centric: Starting suggesting", v14, 2u);
  }

  allPotentialSuggestions = self->_allPotentialSuggestions;
  self->_allPotentialSuggestions = 0;

  usedPotentialSuggestions = self->_usedPotentialSuggestions;
  self->_usedPotentialSuggestions = 0;

  longTimeNoSeeSocialGroupPotentialSuggestions = self->_longTimeNoSeeSocialGroupPotentialSuggestions;
  self->_longTimeNoSeeSocialGroupPotentialSuggestions = 0;

  socialGroupPotentialSuggestions = self->_socialGroupPotentialSuggestions;
  self->_socialGroupPotentialSuggestions = 0;

  longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator;
  self->_longTimeNoSeeSocialGroupPotentialSuggestionEnumerator = 0;

  socialGroupPotentialSuggestionEnumerator = self->_socialGroupPotentialSuggestionEnumerator;
  self->_socialGroupPotentialSuggestionEnumerator = 0;

  options = self->_options;
  self->_options = v4;
}

@end