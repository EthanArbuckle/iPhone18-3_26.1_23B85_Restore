@interface PGRecentSyndicatedAssetSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)createSuggestionWithAsset:(id)asset;
- (id)eligibleAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)reasonsForSuggestion:(id)suggestion;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
@end

@implementation PGRecentSyndicatedAssetSuggester

- (id)eligibleAssetsBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress
{
  v71 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v13 = _Block_copy(progress);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    session = [(PGAbstractSuggester *)self session];
    v18 = session;
    if (!session)
    {
      v16 = MEMORY[0x277CBEBF8];
LABEL_53:

      goto LABEL_54;
    }

    v65 = session;
    loggingConnection = [session loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v70 = dateCopy;
      *&v70[8] = 2112;
      *&v70[10] = endDateCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: Computing eligible assets between %@ and %@", buf, 0x16u);
    }

    v64 = loggingConnection;
    0x3FE0000000000000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"overallAestheticScore >= %f", 0x3FE0000000000000];
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore >= %f", *MEMORY[0x277D3C768]];
    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v57 = [MEMORY[0x277D3B248] predicateForIncludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 0}];
    v58 = noVideoPredicate;
    v59 = v21;
    v60 = 0x3FE0000000000000;
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{0x3FE0000000000000, v21, noVideoPredicate, v57, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v23 addObject:dateCopy];
    }

    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v23 addObject:endDateCopy];
    }

    v62 = endDateCopy;
    v63 = dateCopy;
    v18 = v65;
    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v23 addObject:dCopy];
    }

    v61 = dCopy;
    v27 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v23];
    photoLibrary = [v65 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v56 = v27;
    [librarySpecificFetchOptions setInternalPredicate:v27];
    v30 = +[PGCurationManager assetPropertySetsForCuration];
    [librarySpecificFetchOptions setFetchPropertySets:v30];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v31 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v55 = v31;
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v67 = 0;
        v13[2](v13, &v67, 0.4);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v70 = 205;
            *&v70[4] = 2080;
            *&v70[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          v33 = v64;
          goto LABEL_52;
        }

        v14 = Current;
      }
    }

    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v35 = MEMORY[0x277CD97A8];
    curationContext = [v65 curationContext];
    v37 = [v35 clsAllAssetsFromFetchResult:v31 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

    if (v13)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      v39 = 0x277CCA000uLL;
      if (v38 - v14 >= 0.01)
      {
        v67 = 0;
        v13[2](v13, &v67, 0.8);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v70 = 210;
            *&v70[4] = 2080;
            *&v70[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          v33 = v64;
          v18 = v65;
          goto LABEL_51;
        }

        v14 = v38;
      }
    }

    else
    {
      v39 = 0x277CCA000;
      v13 = 0;
    }

    v40 = *(v39 + 3120);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __105__PGRecentSyndicatedAssetSuggester_eligibleAssetsBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v66[3] = &unk_2788894C0;
    v66[4] = self;
    v41 = [v40 predicateWithBlock:v66];
    v42 = [v37 filteredArrayUsingPredicate:v41];

    v33 = v64;
    v43 = v64;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v42 count];
      *buf = 134217984;
      *v70 = v44;
      _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: found %lu eligible assets", buf, 0xCu);
    }

    v18 = v65;
    if (v13)
    {
      v45 = CFAbsoluteTimeGetCurrent();
      if (v45 - v14 >= 0.01)
      {
        v67 = 0;
        v13[2](v13, &v67, 0.9);
        if (v67)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v70 = 230;
            *&v70[4] = 2080;
            *&v70[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
LABEL_50:

LABEL_51:
LABEL_52:

          endDateCopy = v62;
          dateCopy = v63;
          dCopy = v61;
          goto LABEL_53;
        }

        v14 = v45;
      }
    }

    v54 = v37;
    v46 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
    v68[0] = v46;
    v47 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"curationScore" ascending:0];
    v68[1] = v47;
    v48 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v68[2] = v48;
    v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v68[3] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];

    v51 = [v42 sortedArrayUsingDescriptors:v50];

    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v67 = 0, v13[2](v13, &v67, 1.0), v67))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v70 = 241;
        *&v70[4] = 2080;
        *&v70[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v51;
    }

    v33 = v64;
    v37 = v54;

    v42 = v51;
    goto LABEL_50;
  }

  v67 = 0;
  v13[2](v13, &v67, 0.0);
  if (v67 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v70 = 164;
    *&v70[4] = 2080;
    *&v70[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_54:

  v52 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __105__PGRecentSyndicatedAssetSuggester_eligibleAssetsBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) processedAssetIsValidForSuggesting:v3 allowGuestAsset:1])
  {
    if ([v3 clsPeopleCount])
    {
      v4 = 1;
    }

    else
    {
      v4 = [*(a1 + 32) hasSuggestableScenesWithAsset:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)reasonsForSuggestion:(id)suggestion
{
  v14[2] = *MEMORY[0x277D85DE8];
  keyAssets = [suggestion keyAssets];
  firstObject = [keyAssets firstObject];

  v5 = MEMORY[0x277CCACA8];
  [firstObject overallAestheticScore];
  v7 = [v5 stringWithFormat:@"aesthetics = %.3f", v6];
  v8 = MEMORY[0x277CCACA8];
  [firstObject curationScore];
  v10 = [v8 stringWithFormat:@"curation = %.3f", v9];
  v14[0] = v7;
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createSuggestionWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [[PGSingleAssetSuggestion alloc] initWithType:3 subtype:306 asset:assetCopy];

  if ([(PGSuggestionOptions *)self->_options computeReasons])
  {
    v6 = [(PGRecentSyndicatedAssetSuggester *)self reasonsForSuggestion:v5];
    [(PGSingleAssetSuggestion *)v5 setReasons:v6];
  }

  return v5;
}

- (void)reset
{
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: Resetting", v6, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v21 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: nextSuggestion", &v19, 2u);
  }

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  if (!suggestedAssetEnumerator)
  {
    suggestedAssets = self->_suggestedAssets;
    if (!suggestedAssets)
    {
      universalStartDate = [(PGSuggestionOptions *)self->_options universalStartDate];
      universalEndDate = [(PGSuggestionOptions *)self->_options universalEndDate];
      v11 = [(PGRecentSyndicatedAssetSuggester *)self eligibleAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:progressCopy];
      v12 = self->_suggestedAssets;
      self->_suggestedAssets = v11;

      suggestedAssets = self->_suggestedAssets;
    }

    objectEnumerator = [(NSArray *)suggestedAssets objectEnumerator];
    v14 = self->_suggestedAssetEnumerator;
    self->_suggestedAssetEnumerator = objectEnumerator;

    suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  }

  nextObject = [(NSEnumerator *)suggestedAssetEnumerator nextObject];
  if (nextObject)
  {
    v16 = [(PGRecentSyndicatedAssetSuggester *)self createSuggestionWithAsset:nextObject];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138477827;
      v20 = v16;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: Suggesting %{private}@", &v19, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: Nothing to suggest", &v19, 2u);
    }

    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Syndicated Asset: Starting suggesting", v10, 2u);
  }

  suggestedAssets = self->_suggestedAssets;
  self->_suggestedAssets = 0;

  suggestedAssetEnumerator = self->_suggestedAssetEnumerator;
  self->_suggestedAssetEnumerator = 0;

  options = self->_options;
  self->_options = optionsCopy;
}

- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date
{
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v7 = [(PGRecentSyndicatedAssetSuggester *)self eligibleAssetsBetweenStartDate:0 andEndDate:0 matchingAssetUUID:uuid progress:&__block_literal_global_55126];

  if ([v7 count] == 1)
  {
    firstObject = [v7 firstObject];
    uuid2 = [firstObject uuid];
    uuid3 = [assetCopy uuid];
    v11 = [uuid2 isEqualToString:uuid3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v68 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  aBlock = progress;
  objc_storeStrong(&self->_options, options);
  v7 = _Block_copy(aBlock);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v56[3] < 0.01) || (v56[3] = v8, v54 = 0, (*(v7 + 2))(v7, &v54, 0.0), v9 = *(v60 + 24) | v54, *(v60 + 24) = v9, (v9 & 1) == 0))
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    universalStartDate = [optionsCopy universalStartDate];
    universalEndDate = [optionsCopy universalEndDate];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __68__PGRecentSyndicatedAssetSuggester_suggestionsWithOptions_progress___block_invoke;
    v49[3] = &unk_27888A188;
    v41 = v7;
    v50 = v41;
    v51 = &v55;
    v52 = &v59;
    v53 = 0x3F847AE147AE147BLL;
    v14 = [(PGRecentSyndicatedAssetSuggester *)self eligibleAssetsBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:0 progress:v49];
    v39 = universalStartDate;
    v40 = universalEndDate;
    if (*(v60 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 64;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
        v15 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v7)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v56[3] >= 0.01)
        {
          v56[3] = Current;
          v54 = 0;
          (*(v41 + 2))(v41, &v54, 0.5);
          v17 = *(v60 + 24) | v54;
          *(v60 + 24) = v17;
          if (v17)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            *buf = 67109378;
            v65 = 66;
            v66 = 2080;
            v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
            v15 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if ([v14 count])
      {
        maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
        if (maximumNumberOfSuggestions)
        {
          v19 = maximumNumberOfSuggestions;
        }

        else
        {
          v19 = -1;
        }

        v20 = [v14 count];
        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v38 = v14;
        obj = v14;
        v22 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
        if (v22)
        {
          v23 = 1.0 / v21;
          v24 = *v46;
          v25 = 0.0;
LABEL_25:
          v26 = 0;
          while (1)
          {
            if (*v46 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v45 + 1) + 8 * v26);
            v28 = objc_autoreleasePoolPush();
            if (!v7)
            {
              goto LABEL_34;
            }

            v29 = CFAbsoluteTimeGetCurrent();
            if (v29 - v56[3] >= 0.01 && (v56[3] = v29, v54 = 0, (*(v41 + 2))(v41, &v54, v25 * 0.5 + 0.5), v30 = *(v60 + 24) | v54, *(v60 + 24) = v30, (v30 & 1) != 0))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v65 = 74;
                v66 = 2080;
                v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v31 = 1;
            }

            else
            {
LABEL_34:
              v32 = [(PGRecentSyndicatedAssetSuggester *)self createSuggestionWithAsset:v27];
              [v11 addObject:v32];
              v33 = [v11 count] >= v19;

              v25 = v23 + v25;
              v31 = 2 * v33;
            }

            objc_autoreleasePoolPop(v28);
            if (v31)
            {
              break;
            }

            if (v22 == ++v26)
            {
              v22 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
              if (v22)
              {
                goto LABEL_25;
              }

              goto LABEL_38;
            }
          }

          v14 = v38;
          if (v31 != 2)
          {
            goto LABEL_45;
          }
        }

        else
        {
LABEL_38:

          v14 = v38;
        }
      }

      if (!v7 || (v34 = CFAbsoluteTimeGetCurrent(), v34 - v56[3] < 0.01) || (v56[3] = v34, v54 = 0, (*(v41 + 2))(v41, &v54, 1.0), v35 = *(v60 + 24) | v54, *(v60 + 24) = v35, (v35 & 1) == 0))
      {
        v10 = v11;
        goto LABEL_47;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v65 = 85;
        v66 = 2080;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
        v15 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_45:
    v10 = MEMORY[0x277CBEBF8];
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v65 = 55;
    v66 = 2080;
    v67 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentSyndicatedAssetSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_48:
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  v36 = *MEMORY[0x277D85DE8];

  return v10;
}

void __68__PGRecentSyndicatedAssetSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

@end