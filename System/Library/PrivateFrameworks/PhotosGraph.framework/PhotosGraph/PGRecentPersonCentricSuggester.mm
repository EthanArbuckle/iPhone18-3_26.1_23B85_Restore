@interface PGRecentPersonCentricSuggester
- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date;
- (id)assetsByPersonLocalIdentifierWithOptions:(id)options progress:(id)progress;
- (id)assetsWithSinglePersonBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress;
- (id)assetsWithSinglePersonWithOptions:(id)options progress:(id)progress;
- (id)birthdayPersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)lastAssetWithPerson:(id)person beforeDate:(id)date matchingAssetUUID:(id)d;
- (id)longTimeNoSeePersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)nextBirthdayPersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextLongTimeNoSeePersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextPersonPotentialSuggestionWithProgress:(id)progress;
- (id)nextPotentialSuggestionWithProgress:(id)progress;
- (id)nextSuggestionWithProgress:(id)progress;
- (id)personPotentialSuggestionsWithOptions:(id)options progress:(id)progress;
- (id)suggestionWithPotentialSuggestion:(id)suggestion progress:(id)progress;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (id)verifiedPersonByPersonLocalIdentifier;
- (unint64_t)relationScoreWithPersonNode:(id)node;
- (void)reset;
- (void)startSuggestingWithOptions:(id)options;
- (void)updateUsedPersonLocalIdentifiersFromPotentialSuggestions:(id)suggestions;
@end

@implementation PGRecentPersonCentricSuggester

- (void)updateUsedPersonLocalIdentifiersFromPotentialSuggestions:(id)suggestions
{
  v16 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        personLocalIdentifier = [*(*(&v11 + 1) + 8 * v8) personLocalIdentifier];
        [(NSMutableSet *)self->_usedPersonLocalIdentifiers addObject:personLocalIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [suggestionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)assetsWithSinglePersonBetweenStartDate:(id)date andEndDate:(id)endDate matchingAssetUUID:(id)d progress:(id)progress
{
  v50 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  v13 = _Block_copy(progress);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v49 = dateCopy;
      *&v49[8] = 2112;
      *&v49[10] = endDateCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Computing eligible single-person assets between %@ and %@", buf, 0x16u);
    }

    verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
    if (![verifiedPersonByPersonLocalIdentifier count])
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: No verified person, no eligible asset", buf, 2u);
      }

      v16 = MEMORY[0x277CBEBF8];
      goto LABEL_50;
    }

    noVideoPredicate = [objc_opt_class() noVideoPredicate];
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{noVideoPredicate, 0}];
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated >= %@", dateCopy];
      [v20 addObject:dateCopy];
    }

    if (endDateCopy)
    {
      endDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateCreated <= %@", endDateCopy];
      [v20 addObject:endDateCopy];
    }

    if (dCopy)
    {
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
      [v20 addObject:dCopy];
    }

    v43 = dCopy;
    v44 = dateCopy;
    v42 = endDateCopy;
    if ([v20 count] <= 1)
    {
      [v20 firstObject];
    }

    else
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v20];
    }
    v40 = ;
    v24 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v40];
    v25 = +[PGCurationManager assetPropertySetsForCuration];
    [v24 setFetchPropertySets:v25];

    v26 = MEMORY[0x277CD97A8];
    allValues = [verifiedPersonByPersonLocalIdentifier allValues];
    v45 = [v26 fetchAssetsForPersons:allValues options:v24];

    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v47 = 0;
        v13[2](v13, &v47, 0.4);
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v49 = 693;
            *&v49[4] = 2080;
            *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
          goto LABEL_49;
        }

        v14 = Current;
      }
    }

    clsPrefetchOptionsForKeyAsset = [MEMORY[0x277CD97A8] clsPrefetchOptionsForKeyAsset];
    v30 = MEMORY[0x277CD97A8];
    curationContext = [session curationContext];
    v32 = [v30 clsAllAssetsFromFetchResult:v45 prefetchOptions:clsPrefetchOptionsForKeyAsset curationContext:curationContext];

    if (v13)
    {
      v33 = CFAbsoluteTimeGetCurrent();
      endDateCopy = v42;
      if (v33 - v14 >= 0.01)
      {
        v47 = 0;
        v13[2](v13, &v47, 0.8);
        if (v47)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v49 = 698;
            *&v49[4] = 2080;
            *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = MEMORY[0x277CBEBF8];
LABEL_48:

LABEL_49:
          dCopy = v43;

          dateCopy = v44;
LABEL_50:

          goto LABEL_51;
        }

        v14 = v33;
      }
    }

    else
    {
      endDateCopy = v42;
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __111__PGRecentPersonCentricSuggester_assetsWithSinglePersonBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke;
    v46[3] = &unk_2788894C0;
    v46[4] = self;
    v34 = [MEMORY[0x277CCAC30] predicateWithBlock:v46];
    v35 = [v32 filteredArrayUsingPredicate:v34];

    v36 = loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v35 count];
      *buf = 134217984;
      *v49 = v37;
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: found %lu eligible assets", buf, 0xCu);
    }

    if (v13 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v47 = 0, v13[2](v13, &v47, 1.0), v47))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v49 = 710;
        *&v49[4] = 2080;
        *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = v35;
    }

    goto LABEL_48;
  }

  v47 = 0;
  v13[2](v13, &v47, 0.0);
  if (v47 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v49 = 655;
    *&v49[4] = 2080;
    *&v49[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = MEMORY[0x277CBEBF8];
LABEL_51:

  v38 = *MEMORY[0x277D85DE8];

  return v16;
}

BOOL __111__PGRecentPersonCentricSuggester_assetsWithSinglePersonBetweenStartDate_andEndDate_matchingAssetUUID_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) assetIsValidForSuggesting:v3])
  {
    v4 = [v3 clsFaceInformationSummary];
    v5 = [v4 numberOfFaces] == 1 && objc_msgSend(v4, "numberOfGoodFacesOfVerifiedPersons") == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lastAssetWithPerson:(id)person beforeDate:(id)date matchingAssetUUID:(id)d
{
  v22[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CCAC30];
  personCopy = person;
  date = [v9 predicateWithFormat:@"dateCreated < %@", date];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{date, 0}];
  if (dCopy)
  {
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid == %@", dCopy];
    [v12 addObject:dCopy];
  }

  if ([v12 count] <= 1)
  {
    [v12 firstObject];
  }

  else
  {
    [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v12];
  }
  v14 = ;
  v15 = [(PGAbstractSuggester *)self defaultAssetFetchOptionsWithInternalPredicate:v14];
  [v15 setFetchLimit:1];
  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v22[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v15 setSortDescriptors:v17];

  v18 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:personCopy options:v15];

  firstObject = [v18 firstObject];

  v20 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)verifiedPersonByPersonLocalIdentifier
{
  v24 = *MEMORY[0x277D85DE8];
  verifiedPersonByPersonLocalIdentifier = self->_verifiedPersonByPersonLocalIdentifier;
  if (!verifiedPersonByPersonLocalIdentifier)
  {
    session = [(PGAbstractSuggester *)self session];
    photoLibrary = [session photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setPersonContext:1];
    v7 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          localIdentifier = [v14 localIdentifier];
          [(NSDictionary *)v8 setObject:v14 forKeyedSubscript:localIdentifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v16 = self->_verifiedPersonByPersonLocalIdentifier;
    self->_verifiedPersonByPersonLocalIdentifier = v8;

    verifiedPersonByPersonLocalIdentifier = self->_verifiedPersonByPersonLocalIdentifier;
  }

  v17 = *MEMORY[0x277D85DE8];

  return verifiedPersonByPersonLocalIdentifier;
}

- (id)nextPersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  if (!personPotentialSuggestionEnumerator)
  {
    personPotentialSuggestions = self->_personPotentialSuggestions;
    if (!personPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self personPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_personPotentialSuggestions;
      self->_personPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_personPotentialSuggestions];
      personPotentialSuggestions = self->_personPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)personPotentialSuggestions objectEnumerator];
    v10 = self->_personPotentialSuggestionEnumerator;
    self->_personPotentialSuggestionEnumerator = objectEnumerator;

    personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)personPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)nextLongTimeNoSeePersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  if (!longTimeNoSeePersonPotentialSuggestionEnumerator)
  {
    longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
    if (!longTimeNoSeePersonPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self longTimeNoSeePersonPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_longTimeNoSeePersonPotentialSuggestions;
      self->_longTimeNoSeePersonPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_longTimeNoSeePersonPotentialSuggestions];
      longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)longTimeNoSeePersonPotentialSuggestions objectEnumerator];
    v10 = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
    self->_longTimeNoSeePersonPotentialSuggestionEnumerator = objectEnumerator;

    longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)longTimeNoSeePersonPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)nextBirthdayPersonPotentialSuggestionWithProgress:(id)progress
{
  progressCopy = progress;
  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  if (!birthdayPersonPotentialSuggestionEnumerator)
  {
    birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
    if (!birthdayPersonPotentialSuggestions)
    {
      v7 = [(PGRecentPersonCentricSuggester *)self birthdayPersonPotentialSuggestionsWithOptions:self->_options progress:progressCopy];
      v8 = self->_birthdayPersonPotentialSuggestions;
      self->_birthdayPersonPotentialSuggestions = v7;

      [(PGRecentPersonCentricSuggester *)self updateUsedPersonLocalIdentifiersFromPotentialSuggestions:self->_birthdayPersonPotentialSuggestions];
      birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
    }

    objectEnumerator = [(NSArray *)birthdayPersonPotentialSuggestions objectEnumerator];
    v10 = self->_birthdayPersonPotentialSuggestionEnumerator;
    self->_birthdayPersonPotentialSuggestionEnumerator = objectEnumerator;

    birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  }

  nextObject = [(NSEnumerator *)birthdayPersonPotentialSuggestionEnumerator nextObject];

  return nextObject;
}

- (id)personPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v66 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v7 = _Block_copy(progressCopy);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v53[3] >= 0.01)
    {
      v53[3] = Current;
      v51 = 0;
      v7[2](v7, &v51, 0.0);
      v9 = *(v57 + 24) | v51;
      *(v57 + 24) = v9;
      if (v9)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v63 = 511;
          v64 = 2080;
          v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v10 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  if (!self->_assetsByPersonLocalIdentifier)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __81__PGRecentPersonCentricSuggester_personPotentialSuggestionsWithOptions_progress___block_invoke;
    v46[3] = &unk_27888A188;
    v47 = v7;
    v48 = &v52;
    v49 = &v56;
    v50 = 0x3F847AE147AE147BLL;
    v11 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v46];
    assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
    self->_assetsByPersonLocalIdentifier = v11;

    if (*(v57 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 518;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v7)
  {
    v13 = CFAbsoluteTimeGetCurrent();
    if (v13 - v53[3] >= 0.01)
    {
      v53[3] = v13;
      v51 = 0;
      v7[2](v7, &v51, 0.5);
      v14 = *(v57 + 24) | v51;
      *(v57 + 24) = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v63 = 521;
          v64 = 2080;
          v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v15 = MEMORY[0x277CBEBF8];
        goto LABEL_51;
      }
    }
  }

  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
  v17 = [verifiedPersonByPersonLocalIdentifier count];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = verifiedPersonByPersonLocalIdentifier;
  objectEnumerator = [verifiedPersonByPersonLocalIdentifier objectEnumerator];
  v19 = [objectEnumerator countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (v19)
  {
    v20 = 1.0 / v17;
    v21 = *v43;
    v22 = 0.0;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        if (v7)
        {
          v25 = CFAbsoluteTimeGetCurrent();
          if (v25 - v53[3] >= 0.01)
          {
            v53[3] = v25;
            v51 = 0;
            v7[2](v7, &v51, v22 * 0.4 + 0.5);
            v26 = *(v57 + 24) | v51;
            *(v57 + 24) = v26;
            if (v26)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v63 = 529;
                v64 = 2080;
                v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_41;
            }
          }
        }

        localIdentifier = [v24 localIdentifier];
        if (([(NSMutableSet *)self->_usedPersonLocalIdentifiers containsObject:localIdentifier]& 1) == 0)
        {
          v28 = [(NSDictionary *)self->_assetsByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];
          if (v28)
          {
            v29 = [[PGPotentialRecentPersonCentricSuggestion alloc] initWithPersonLocalIdentifier:localIdentifier assets:v28 notSeenSinceDate:0];
            [v41 addObject:v29];
          }
        }

        v22 = v20 + v22;
      }

      v19 = [objectEnumerator countByEnumeratingWithState:&v42 objects:v61 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (v7 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v53[3] >= 0.01) && (v53[3] = v30, v51 = 0, v7[2](v7, &v51, 0.9), v31 = *(v57 + 24) | v51, *(v57 + 24) = v31, (v31 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v63 = 545;
      v64 = 2080;
      v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_41:
    v15 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
    v60[0] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
    v60[1] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

    [v41 sortUsingDescriptors:v34];
    if (v7 && (v35 = CFAbsoluteTimeGetCurrent(), v35 - v53[3] >= 0.01) && (v53[3] = v35, v51 = 0, v7[2](v7, &v51, 1.0), v36 = *(v57 + 24) | v51, *(v57 + 24) = v36, (v36 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v63 = 552;
        v64 = 2080;
        v65 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v15 = v41;
    }
  }

LABEL_51:
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v15;
}

void __81__PGRecentPersonCentricSuggester_personPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)longTimeNoSeePersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  v76 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v50 = _Block_copy(progressCopy);
  if (!v50 || (v5 = CFAbsoluteTimeGetCurrent(), v5 - v63[3] < 0.01) || (v63[3] = v5, v61 = 0, (*(v50 + 2))(v50, &v61, 0.0), v6 = *(v67 + 24) | v61, *(v67 + 24) = v6, (v6 & 1) == 0))
  {
    universalStartDate = [optionsCopy universalStartDate];
    if (universalStartDate)
    {
      if (!self->_assetsByPersonLocalIdentifier)
      {
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __94__PGRecentPersonCentricSuggester_longTimeNoSeePersonPotentialSuggestionsWithOptions_progress___block_invoke;
        v56[3] = &unk_27888A188;
        v57 = v50;
        v58 = &v62;
        v59 = &v66;
        v60 = 0x3F847AE147AE147BLL;
        v9 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v56];
        assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
        self->_assetsByPersonLocalIdentifier = v9;

        if (*(v67 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v73 = 462;
            v74 = 2080;
            v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_19;
        }
      }

      if (!v50 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v63[3] < 0.01) || (v63[3] = v11, v61 = 0, (*(v50 + 2))(v50, &v61, 0.5), v12 = *(v67 + 24) | v61, *(v67 + 24) = v12, (v12 & 1) == 0))
      {
        v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
        verifiedPersonByPersonLocalIdentifier = [(PGRecentPersonCentricSuggester *)self verifiedPersonByPersonLocalIdentifier];
        v14 = [verifiedPersonByPersonLocalIdentifier count];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        objectEnumerator = [verifiedPersonByPersonLocalIdentifier objectEnumerator];
        v16 = [objectEnumerator countByEnumeratingWithState:&v52 objects:v71 count:16];
        v44 = verifiedPersonByPersonLocalIdentifier;
        v47 = universalStartDate;
        if (v16)
        {
          v17 = 1.0 / v14;
          v49 = *v53;
          v18 = 0.0;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v53 != v49)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              v20 = *(*(&v52 + 1) + 8 * i);
              if (v50)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v63[3] >= 0.01)
                {
                  v63[3] = Current;
                  v61 = 0;
                  (*(v50 + 2))(v50, &v61, v18 * 0.4 + 0.5);
                  v22 = *(v67 + 24) | v61;
                  *(v67 + 24) = v22;
                  if (v22)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      v73 = 473;
                      v74 = 2080;
                      v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    v7 = MEMORY[0x277CBEBF8];
                    goto LABEL_54;
                  }
                }
              }

              localIdentifier = [v20 localIdentifier];
              if (([(NSMutableSet *)self->_usedPersonLocalIdentifiers containsObject:localIdentifier]& 1) == 0)
              {
                v24 = [(NSDictionary *)self->_assetsByPersonLocalIdentifier objectForKeyedSubscript:localIdentifier];
                if (v24)
                {
                  additionalOptions = [optionsCopy additionalOptions];
                  v26 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

                  v27 = [(PGRecentPersonCentricSuggester *)self lastAssetWithPerson:v20 beforeDate:v47 matchingAssetUUID:v26];
                  creationDate = [v27 creationDate];
                  if (v27)
                  {
                    universalStartDate2 = [optionsCopy universalStartDate];
                    [universalStartDate2 timeIntervalSinceDate:creationDate];
                    v31 = v30 > 2592000.0;

                    if (v31)
                    {
                      v32 = [[PGPotentialRecentPersonCentricSuggestion alloc] initWithPersonLocalIdentifier:localIdentifier assets:v24 notSeenSinceDate:creationDate];
                      [v46 addObject:v32];
                    }
                  }
                }
              }

              v18 = v17 + v18;
            }

            v16 = [objectEnumerator countByEnumeratingWithState:&v52 objects:v71 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        if (v50 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v63[3] >= 0.01) && (v63[3] = v33, v61 = 0, (*(v50 + 2))(v50, &v61, 0.9), v34 = *(v67 + 24) | v61, *(v67 + 24) = v34, (v34 & 1) != 0))
        {
          v35 = v44;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v73 = 495;
            v74 = 2080;
            v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v7 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"notSeenSinceDate" ascending:{1, v44}];
          v70[0] = v36;
          v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
          v70[1] = v37;
          v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
          v70[2] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];

          [v46 sortUsingDescriptors:v39];
          if (v50 && (v40 = CFAbsoluteTimeGetCurrent(), v40 - v63[3] >= 0.01) && (v63[3] = v40, v61 = 0, (*(v50 + 2))(v50, &v61, 1.0), v41 = *(v67 + 24) | v61, *(v67 + 24) = v41, (v41 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v73 = 503;
              v74 = 2080;
              v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v7 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v7 = v46;
          }

LABEL_54:
          v35 = v44;
        }

        universalStartDate = v47;
        goto LABEL_56;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v73 = 465;
        v74 = 2080;
        v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_19:
    v7 = MEMORY[0x277CBEBF8];
LABEL_56:

    goto LABEL_57;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v73 = 449;
    v74 = 2080;
    v75 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_57:
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  v42 = *MEMORY[0x277D85DE8];

  return v7;
}

void __94__PGRecentPersonCentricSuggester_longTimeNoSeePersonPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

- (id)birthdayPersonPotentialSuggestionsWithOptions:(id)options progress:(id)progress
{
  *(&v76[2] + 4) = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v50 = _Block_copy(progressCopy);
  v48 = progressCopy;
  if (v50)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v67[3] >= 0.01)
    {
      v67[3] = Current;
      LOBYTE(info.numer) = 0;
      v50[2](v50, &info, 0.0);
      v8 = *(v71 + 24) | LOBYTE(info.numer);
      *(v71 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v76[0]) = 381;
          WORD2(v76[0]) = 2080;
          *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
LABEL_17:
          _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }
  }

  if (!self->_assetsByPersonLocalIdentifier)
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke;
    v61[3] = &unk_27888A188;
    v62 = v50;
    v63 = &v66;
    v64 = &v70;
    v65 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentPersonCentricSuggester *)self assetsByPersonLocalIdentifierWithOptions:optionsCopy progress:v61];
    assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
    self->_assetsByPersonLocalIdentifier = v10;

    if (*(v71 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v76[0]) = 388;
        WORD2(v76[0]) = 2080;
        *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      goto LABEL_18;
    }
  }

  if (v50)
  {
    v12 = CFAbsoluteTimeGetCurrent();
    if (v12 - v67[3] >= 0.01)
    {
      v67[3] = v12;
      LOBYTE(info.numer) = 0;
      v50[2](v50, &info, 0.5);
      v13 = *(v71 + 24) | LOBYTE(info.numer);
      *(v71 + 24) = v13;
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v76[0]) = 391;
          WORD2(v76[0]) = 2080;
          *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v9 = MEMORY[0x277D86220];
          goto LABEL_17;
        }

LABEL_18:
        v14 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }
    }
  }

  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v17 = os_signpost_id_generate(loggingConnection);
  v18 = loggingConnection;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "BirthdayPersonPotentialSuggestions", "", &buf, 2u);
  }

  v47 = v19;

  info = 0;
  mach_timebase_info(&info);
  v44 = mach_absolute_time();
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localToday = [optionsCopy localToday];
  v22 = session;
  v23 = [MEMORY[0x277D27690] monthFromDate:localToday];
  v46 = localToday;
  v24 = [MEMORY[0x277D27690] dayFromDate:localToday];
  workingContext = [session workingContext];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_248;
  v52[3] = &unk_278883428;
  v55 = &v66;
  v56 = &v70;
  v45 = v50;
  v54 = v45;
  v52[4] = self;
  v57 = 0x3F847AE147AE147BLL;
  v58 = v23;
  v59 = v24;
  v26 = v20;
  v53 = v26;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v52];

  v27 = v22;
  if (*(v71 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 67109378;
      LODWORD(v76[0]) = 429;
      WORD2(v76[0]) = 2080;
      *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v28 = MEMORY[0x277D86220];
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    v29 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v32 = v47;
    v33 = v32;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, v17, "BirthdayPersonPotentialSuggestions", "", &buf, 2u);
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v76[0] = "BirthdayPersonPotentialSuggestions";
      LOWORD(v76[1]) = 2048;
      *(&v76[1] + 2) = ((((v29 - v44) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (!v50 || (v34 = CFAbsoluteTimeGetCurrent(), v34 - v67[3] < 0.01) || (v67[3] = v34, v51 = 0, v45[2](v45, &v51, 0.9), v35 = *(v71 + 24) | v51, *(v71 + 24) = v35, (v35 & 1) == 0))
    {
      v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"relationshipScore" ascending:1];
      v74[0] = v36;
      v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assets.@count" ascending:0];
      v74[1] = v37;
      v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personLocalIdentifier" ascending:1];
      v74[2] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];

      [v26 sortUsingDescriptors:v39];
      if (v50 && (v40 = CFAbsoluteTimeGetCurrent(), v40 - v67[3] >= 0.01) && (v67[3] = v40, v51 = 0, v45[2](v45, &v51, 1.0), v41 = *(v71 + 24) | v51, *(v71 + 24) = v41, (v41 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 67109378;
          LODWORD(v76[0]) = 441;
          WORD2(v76[0]) = 2080;
          *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }

        v14 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v14 = v26;
      }

      goto LABEL_45;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 67109378;
      LODWORD(v76[0]) = 433;
      WORD2(v76[0]) = 2080;
      *(v76 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v28 = MEMORY[0x277D86220];
      goto LABEL_25;
    }
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_45:

LABEL_46:
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);

  v42 = *MEMORY[0x277D85DE8];

  return v14;
}

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_248(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_2;
  v7[3] = &unk_278883400;
  v4 = *(a1 + 48);
  v11 = *(a1 + 72);
  v10 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v12 = *(a1 + 80);
  v8 = v6;
  [v3 enumeratePersonNodesIncludingMe:1 withBlock:v7];
}

void __89__PGRecentPersonCentricSuggester_birthdayPersonPotentialSuggestionsWithOptions_progress___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 56) + 8), Current - *(v7 + 24) >= *(a1 + 72)) && (*(v7 + 24) = Current, (*(*(a1 + 48) + 16))(0.75), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v8 = [v5 localIdentifier];
    if ([v8 length])
    {
      if (([*(*(a1 + 32) + 72) containsObject:v8] & 1) == 0)
      {
        v9 = [v5 birthdayDate];
        if (v9 || ([v5 potentialBirthdayDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = v9;
          v11 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v8];
          if (v11)
          {
            v12 = [MEMORY[0x277D27690] monthFromDate:v10];
            v13 = [MEMORY[0x277D27690] dayFromDate:v10];
            if (v12 == *(a1 + 80) && v13 == *(a1 + 88))
            {
              v14 = -[PGPotentialRecentPersonCentricSuggestion initWithPersonLocalIdentifier:assets:relationshipScore:]([PGPotentialRecentPersonCentricSuggestion alloc], "initWithPersonLocalIdentifier:assets:relationshipScore:", v8, v11, [*(a1 + 32) relationScoreWithPersonNode:v5]);
              [*(a1 + 40) addObject:v14];
            }
          }
        }
      }
    }
  }
}

- (unint64_t)relationScoreWithPersonNode:(id)node
{
  nodeCopy = node;
  if ([nodeCopy isMyPartner] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredPartner"))
  {
    v4 = 1;
  }

  else if ([nodeCopy isMyChild] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredChild"))
  {
    v4 = 2;
  }

  else if ([nodeCopy isMyParent] & 1) != 0 || (objc_msgSend(nodeCopy, "isMyInferredParent"))
  {
    v4 = 3;
  }

  else if ([nodeCopy isMemberOfMyFamily] & 1) != 0 || (objc_msgSend(nodeCopy, "isInferredMemberOfMyFamily"))
  {
    v4 = 4;
  }

  else if ([nodeCopy isMyFriend])
  {
    v4 = 5;
  }

  else if ([nodeCopy isMyInferredFriend])
  {
    v4 = 5;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (id)assetsByPersonLocalIdentifierWithOptions:(id)options progress:(id)progress
{
  v70 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v41 = _Block_copy(progressCopy);
  if (!v41 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v57[3] < 0.01) || (v57[3] = v6, v55 = 0, (*(v41 + 2))(v41, &v55, 0.0), v7 = *(v61 + 24) | v55, *(v61 + 24) = v7, (v7 & 1) == 0))
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __84__PGRecentPersonCentricSuggester_assetsByPersonLocalIdentifierWithOptions_progress___block_invoke;
    v50[3] = &unk_27888A188;
    v37 = v41;
    v51 = v37;
    v52 = &v56;
    v53 = &v60;
    v54 = 0x3F847AE147AE147BLL;
    v9 = [(PGRecentPersonCentricSuggester *)self assetsWithSinglePersonWithOptions:optionsCopy progress:v50];
    v34 = v9;
    if (*(v61 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v67 = 338;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v10 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v41 || (v11 = CFAbsoluteTimeGetCurrent(), v11 - v57[3] < 0.01) || (v57[3] = v11, v55 = 0, (*(v37 + 2))(v37, &v55, 0.8), v12 = *(v61 + 24) | v55, *(v61 + 24) = v12, (v12 & 1) == 0))
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [v9 count];
        v15 = v9;
        v16 = v14;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = v15;
        v17 = [obj countByEnumeratingWithState:&v46 objects:v65 count:16];
        if (v17)
        {
          v18 = 1.0 / v16;
          v39 = *v47;
          v19 = 0.0;
          while (2)
          {
            v40 = v17;
            for (i = 0; i != v40; ++i)
            {
              if (*v47 != v39)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v46 + 1) + 8 * i);
              if (v41)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v57[3] >= 0.01)
                {
                  v57[3] = Current;
                  v55 = 0;
                  (*(v37 + 2))(v37, &v55, v19 * 0.2 + 0.8);
                  v23 = *(v61 + 24) | v55;
                  *(v61 + 24) = v23;
                  if (v23)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      v67 = 347;
                      v68 = 2080;
                      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_44;
                  }
                }
              }

              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              clsPersonLocalIdentifiers = [v21 clsPersonLocalIdentifiers];
              v25 = [clsPersonLocalIdentifiers countByEnumeratingWithState:&v42 objects:v64 count:16];
              if (v25)
              {
                v26 = *v43;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v43 != v26)
                    {
                      objc_enumerationMutation(clsPersonLocalIdentifiers);
                    }

                    v28 = *(*(&v42 + 1) + 8 * j);
                    v29 = [v13 objectForKeyedSubscript:v28];
                    if (!v29)
                    {
                      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      [v13 setObject:v29 forKeyedSubscript:v28];
                    }

                    [v29 addObject:v21];
                  }

                  v25 = [clsPersonLocalIdentifiers countByEnumeratingWithState:&v42 objects:v64 count:16];
                }

                while (v25);
              }

              v19 = v18 + v19;
            }

            v17 = [obj countByEnumeratingWithState:&v46 objects:v65 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        if (v41 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v57[3] >= 0.01) && (v57[3] = v30, v55 = 0, (*(v37 + 2))(v37, &v55, 1.0), v31 = *(v61 + 24) | v55, *(v61 + 24) = v31, (v31 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v67 = 363;
            v68 = 2080;
            v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_44:
          v8 = MEMORY[0x277CBEC10];
        }

        else
        {
          v8 = v13;
        }

        goto LABEL_47;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v67 = 340;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v10 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v8 = MEMORY[0x277CBEC10];
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v67 = 333;
    v68 = 2080;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = MEMORY[0x277CBEC10];
LABEL_48:
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v8;
}

void __84__PGRecentPersonCentricSuggester_assetsByPersonLocalIdentifierWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)assetsWithSinglePersonWithOptions:(id)options progress:(id)progress
{
  progressCopy = progress;
  optionsCopy = options;
  additionalOptions = [optionsCopy additionalOptions];
  v9 = [additionalOptions objectForKeyedSubscript:@"assetUUID"];

  universalStartDate = [optionsCopy universalStartDate];
  universalEndDate = [optionsCopy universalEndDate];

  v12 = [(PGRecentPersonCentricSuggester *)self assetsWithSinglePersonBetweenStartDate:universalStartDate andEndDate:universalEndDate matchingAssetUUID:v9 progress:progressCopy];

  return v12;
}

- (BOOL)canGenerateSuggestionWithAsset:(id)asset onDate:(id)date
{
  v24[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dateCopy = date;
  v8 = objc_alloc_init(PGSuggestionOptions);
  [(PGSuggestionOptions *)v8 setLocalToday:dateCopy];

  creationDate = [assetCopy creationDate];
  [(PGSuggestionOptions *)v8 setUniversalStartDate:creationDate];

  v23 = @"assetUUID";
  uuid = [assetCopy uuid];
  v24[0] = uuid;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(PGSuggestionOptions *)v8 setAdditionalOptions:v11];

  [(PGSuggestionOptions *)v8 setMaximumNumberOfSuggestions:1];
  v12 = [(PGRecentPersonCentricSuggester *)self suggestionsWithOptions:v8 progress:&__block_literal_global_33294];
  if ([v12 count] == 1)
  {
    firstObject = [v12 firstObject];
    keyAssets = [firstObject keyAssets];
    if ([keyAssets count] == 1)
    {
      firstObject2 = [v12 firstObject];
      keyAssets2 = [firstObject2 keyAssets];
      firstObject3 = [keyAssets2 firstObject];
      uuid2 = [firstObject3 uuid];
      uuid3 = [assetCopy uuid];
      v19 = [uuid2 isEqualToString:uuid3];
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

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v49 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v6 = _Block_copy(progressCopy);
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
      v46 = 269;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    [(PGRecentPersonCentricSuggester *)self startSuggestingWithOptions:optionsCopy];
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
    v11 = 0;
    if (maximumNumberOfSuggestions)
    {
      v12 = maximumNumberOfSuggestions;
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
          v46 = 280;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = 1;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __66__PGRecentPersonCentricSuggester_suggestionsWithOptions_progress___block_invoke;
        v29[3] = &unk_278886858;
        v30 = v6;
        v31 = &v37;
        v34 = v13;
        v35 = 1.0 / v12;
        v33 = 0x3F847AE147AE147BLL;
        v32 = &v41;
        v19 = [(PGRecentPersonCentricSuggester *)self nextSuggestionWithProgress:v29];
        v20 = v19;
        if (*(v42 + 24) == 1)
        {
          v18 = 1;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 285;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
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
        v46 = 295;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
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

void __66__PGRecentPersonCentricSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Resetting", v8, 2u);
  }

  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  self->_birthdayPersonPotentialSuggestionEnumerator = 0;

  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  self->_longTimeNoSeePersonPotentialSuggestionEnumerator = 0;

  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  self->_personPotentialSuggestionEnumerator = 0;
}

- (id)nextSuggestionWithProgress:(id)progress
{
  v46 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v4 = _Block_copy(progressCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v37[3] >= 0.01)
    {
      v37[3] = Current;
      v35 = 0;
      v4[2](v4, &v35, 0.0);
      v6 = *(v41 + 24) | v35;
      *(v41 + 24) = v6;
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v45 = 220;
          *&v45[4] = 2080;
          *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v7 = 0;
        goto LABEL_45;
      }
    }
  }

  session = [(PGAbstractSuggester *)self session];
  oslog = [session loggingConnection];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: nextSuggestion", buf, 2u);
  }

  v9 = 0;
  do
  {
    if (v9)
    {
      goto LABEL_32;
    }

    v10 = objc_autoreleasePoolPush();
    if (v4 && (v11 = CFAbsoluteTimeGetCurrent(), v11 - v37[3] >= 0.01) && (v37[3] = v11, v35 = 0, v4[2](v4, &v35, 0.5), v12 = *(v41 + 24) | v35, *(v41 + 24) = v12, (v12 & 1) != 0))
    {
      v13 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v45 = 227;
        *&v45[4] = 2080;
        *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = 0;
      v14 = 1;
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke;
      v30[3] = &unk_27888A188;
      v15 = v4;
      v31 = v15;
      v32 = &v36;
      v33 = &v40;
      v34 = 0x3F847AE147AE147BLL;
      v16 = [(PGRecentPersonCentricSuggester *)self nextPotentialSuggestionWithProgress:v30];
      v17 = v16;
      if (*(v41 + 24) == 1)
      {
        v14 = 1;
        v18 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v45 = 232;
          *&v45[4] = 2080;
          *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = 0;
      }

      else if (v16)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke_243;
        v25[3] = &unk_27888A188;
        v26 = v15;
        v27 = &v36;
        v28 = &v40;
        v29 = 0x3F847AE147AE147BLL;
        v9 = [(PGRecentPersonCentricSuggester *)self suggestionWithPotentialSuggestion:v17 progress:v25];
        if (*(v41 + 24) == 1)
        {
          v14 = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v45 = 241;
            *&v45[4] = 2080;
            *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v9 = 0;
        v14 = 3;
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  while (!v14);
  if (v14 != 3)
  {
LABEL_39:
    v7 = 0;
    goto LABEL_44;
  }

  if (v9)
  {
LABEL_32:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      *v45 = v9;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Suggesting %{private}@", buf, 0xCu);
    }

    if (!v4)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Nothing to suggest", buf, 2u);
    }

    v9 = 0;
    if (!v4)
    {
      goto LABEL_43;
    }
  }

  v19 = CFAbsoluteTimeGetCurrent();
  if (v19 - v37[3] >= 0.01)
  {
    v37[3] = v19;
    v35 = 0;
    v4[2](v4, &v35, 1.0);
    v20 = *(v41 + 24) | v35;
    *(v41 + 24) = v20;
    if (v20)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v45 = 253;
        *&v45[4] = 2080;
        *&v45[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_39;
    }
  }

LABEL_43:
  v9 = v9;
  v7 = v9;
LABEL_44:

LABEL_45:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

void __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2)
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

void __61__PGRecentPersonCentricSuggester_nextSuggestionWithProgress___block_invoke_243(uint64_t a1, _BYTE *a2)
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

- (id)suggestionWithPotentialSuggestion:(id)suggestion progress:(id)progress
{
  v97 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  progressCopy = progress;
  v7 = _Block_copy(progressCopy);
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v52 = progressCopy;
  v53 = suggestionCopy;
  if (!v7 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v79[3] < 0.01) || (v79[3] = v8, LOBYTE(v73[0]) = 0, v7[2](v7, v73, 0.0), v9 = *(v83 + 24) | LOBYTE(v73[0]), *(v83 + 24) = v9, (v9 & 1) == 0))
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    personLocalIdentifier = [suggestionCopy personLocalIdentifier];
    assets = [suggestionCopy assets];
    v14 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:assets options:0];
    oslog = loggingConnection;
    v49 = session;
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v79[3] >= 0.01)
      {
        v79[3] = Current;
        LOBYTE(v73[0]) = 0;
        v7[2](v7, v73, 0.2);
        v16 = *(v83 + 24) | LOBYTE(v73[0]);
        *(v83 + 24) = v16;
        if (v16)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0x9704000202;
            LOWORD(v92) = 2080;
            *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          v10 = 0;
          goto LABEL_49;
        }
      }
    }

    v54 = v14;
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(assets, "count")}];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v18 = assets;
    v19 = [v18 countByEnumeratingWithState:&v74 objects:v96 count:16];
    if (v19)
    {
      v20 = *v75;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v75 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v74 + 1) + 8 * i);
          localIdentifier = [v22 localIdentifier];
          [v17 setObject:v22 forKeyedSubscript:localIdentifier];
        }

        v19 = [v18 countByEnumeratingWithState:&v74 objects:v96 count:16];
      }

      while (v19);
    }

    buf = 0;
    *&v92 = &buf;
    *(&v92 + 1) = 0x3032000000;
    v93 = __Block_byref_object_copy__33312;
    v94 = __Block_byref_object_dispose__33313;
    v95 = 0;
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x2020000000;
    v73[3] = 0xFFEFFFFFFFFFFFFFLL;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0xFFEFFFFFFFFFFFFFLL;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = 0;
    v24 = 1.0 / [v54 count];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __77__PGRecentPersonCentricSuggester_suggestionWithPotentialSuggestion_progress___block_invoke;
    v57[3] = &unk_2788833D8;
    v25 = v7;
    v59 = v25;
    v60 = &v78;
    v66 = 0x3F847AE147AE147BLL;
    v61 = v68;
    v62 = &v82;
    v67 = v24;
    v26 = personLocalIdentifier;
    v58 = v26;
    v63 = v73;
    v64 = &v69;
    p_buf = &buf;
    [v54 enumerateKeysAndObjectsUsingBlock:v57];
    if (*(v83 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_24:
        v10 = 0;
LABEL_48:

        _Block_object_dispose(v68, 8);
        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(v73, 8);
        _Block_object_dispose(&buf, 8);

        v14 = v54;
LABEL_49:

        goto LABEL_50;
      }

      v87 = 67109378;
      v88 = 183;
      v89 = 2080;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
      v27 = MEMORY[0x277D86220];
LABEL_23:
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v87, 0x12u);
      goto LABEL_24;
    }

    if (v7)
    {
      v28 = CFAbsoluteTimeGetCurrent();
      if (v28 - v79[3] >= 0.01)
      {
        v79[3] = v28;
        v56 = 0;
        (v25)[2](v25, &v56, 0.8);
        v29 = *(v83 + 24) | v56;
        *(v83 + 24) = v29;
        if (v29)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_24;
          }

          v87 = 67109378;
          v88 = 185;
          v89 = 2080;
          v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          v27 = MEMORY[0x277D86220];
          goto LABEL_23;
        }
      }
    }

    if (v70[3] >= 0.15 && ([v17 objectForKeyedSubscript:*(v92 + 40)], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = [[PGPeopleCentricSuggestion alloc] initWithPersonLocalIdentifier:v26 asset:v30];
      photoLibrary = [v49 photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v33 = MEMORY[0x277CD9938];
      personLocalIdentifier2 = [v53 personLocalIdentifier];
      v86 = personLocalIdentifier2;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      v47 = [v33 fetchPersonsWithLocalIdentifiers:v35 options:librarySpecificFetchOptions];

      firstObject = [v47 firstObject];
      displayName = [firstObject displayName];

      v38 = [displayName length];
      v39 = displayName;
      if (!v38)
      {
        v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v46 localizedStringForKey:@"PGPeopleTitleFormatGenericUnnamedPerson" value:@"PGPeopleTitleFormatGenericUnnamedPerson" table:@"Localizable"];
      }

      [(PGSingleAssetSuggestion *)v31 setTitle:v39];
      if (!v38)
      {
      }

      localCreationDate = [v30 localCreationDate];
      v41 = [MEMORY[0x277CCA968] localizedStringFromDate:localCreationDate dateStyle:2 timeStyle:0];
      [(PGSingleAssetSuggestion *)v31 setSubtitle:v41];

      if (!v7)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v87) = 0;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: no eligible best asset, cannot generate suggestion", &v87, 2u);
      }

      v30 = 0;
      v31 = 0;
      if (!v7)
      {
        goto LABEL_46;
      }
    }

    v42 = CFAbsoluteTimeGetCurrent();
    if (v42 - v79[3] >= 0.01)
    {
      v79[3] = v42;
      v56 = 0;
      (v25)[2](v25, &v56, 1.0);
      v43 = *(v83 + 24) | v56;
      *(v83 + 24) = v43;
      if (v43)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v87 = 67109378;
          v88 = 212;
          v89 = 2080;
          v90 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v87, 0x12u);
        }

        v10 = 0;
        goto LABEL_47;
      }
    }

LABEL_46:
    v10 = v31;
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x8D04000202;
    LOWORD(v92) = 2080;
    *(&v92 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v10 = 0;
LABEL_50:
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);

  v44 = *MEMORY[0x277D85DE8];

  return v10;
}

void __77__PGRecentPersonCentricSuggester_suggestionWithPotentialSuggestion_progress___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if (*(a1 + 40) && (Current = CFAbsoluteTimeGetCurrent(), v11 = *(*(a1 + 48) + 8), Current - *(v11 + 24) >= *(a1 + 96)) && (*(v11 + 24) = Current, v33 = 0, (*(*(a1 + 40) + 16))(*(*(*(a1 + 56) + 8) + 24) * 0.6 + 0.2), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    obj = a2;
    v12 = v8;
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 56) + 8) + 24);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [v18 personLocalIdentifier];
          v20 = [v19 isEqualToString:*(a1 + 32)];

          if (v20)
          {
            [v18 quality];
            v22 = v21;
            [v18 size];
            v24 = v23;
            v25 = *(*(*(a1 + 72) + 8) + 24);
            v8 = v12;
            if (v22 > v25 || v22 == v25 && ((v26 = *(*(*(a1 + 80) + 8) + 24), v24 > v26) || v24 == v26 && [v12 compare:*(*(*(a1 + 88) + 8) + 40)] == -1))
            {
              objc_storeStrong((*(*(a1 + 88) + 8) + 40), obj);
              *(*(*(a1 + 72) + 8) + 24) = v22;
              *(*(*(a1 + 80) + 8) + 24) = v24;
            }

            goto LABEL_19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v8 = v12;
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

- (id)nextPotentialSuggestionWithProgress:(id)progress
{
  v48 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v5 = _Block_copy(progressCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (!v5 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v37[3] < 0.01) || (v37[3] = v6, v35 = 0, (*(v5 + 2))(v5, &v35, 0.0), v7 = *(v41 + 24) | v35, *(v41 + 24) = v7, (v7 & 1) == 0))
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke;
    v30[3] = &unk_27888A188;
    v9 = v5;
    v31 = v9;
    v32 = &v36;
    v33 = &v40;
    v34 = 0x3F847AE147AE147BLL;
    v10 = [(PGRecentPersonCentricSuggester *)self nextBirthdayPersonPotentialSuggestionWithProgress:v30];
    if (*(v41 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 112;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v11 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (v5)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v37[3] >= 0.01)
        {
          v37[3] = Current;
          v35 = 0;
          (*(v9 + 2))(v9, &v35, 0.33);
          v15 = *(v41 + 24) | v35;
          *(v41 + 24) = v15;
          if (v15)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v45 = 114;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if (!v10)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_227;
        v25[3] = &unk_27888A188;
        v26 = v9;
        v27 = &v36;
        v28 = &v40;
        v29 = 0x3F847AE147AE147BLL;
        v10 = [(PGRecentPersonCentricSuggester *)self nextLongTimeNoSeePersonPotentialSuggestionWithProgress:v25];
        if (*(v41 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 120;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_11;
        }
      }

      if (v5)
      {
        v16 = CFAbsoluteTimeGetCurrent();
        if (v16 - v37[3] >= 0.01)
        {
          v37[3] = v16;
          v35 = 0;
          (*(v9 + 2))(v9, &v35, 0.66);
          v17 = *(v41 + 24) | v35;
          *(v41 + 24) = v17;
          if (v17)
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_11;
            }

            *buf = 67109378;
            v45 = 123;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_10;
          }
        }
      }

      if (!v10)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_228;
        v20[3] = &unk_27888A188;
        v21 = v9;
        v22 = &v36;
        v23 = &v40;
        v24 = 0x3F847AE147AE147BLL;
        v10 = [(PGRecentPersonCentricSuggester *)self nextPersonPotentialSuggestionWithProgress:v20];
        if (*(v41 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 130;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_11;
        }
      }

      if (!v5 || (v18 = CFAbsoluteTimeGetCurrent(), v18 - v37[3] < 0.01) || (v37[3] = v18, v35 = 0, (*(v9 + 2))(v9, &v35, 1.0), v19 = *(v41 + 24) | v35, *(v41 + 24) = v19, (v19 & 1) == 0))
      {
        v10 = v10;
        v8 = v10;
        goto LABEL_12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 133;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
        v11 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

LABEL_11:
    v8 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v45 = 107;
    v46 = 2080;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Single Asset Suggester/PGRecentPersonCentricSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_13:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_227(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.33);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __70__PGRecentPersonCentricSuggester_nextPotentialSuggestionWithProgress___block_invoke_228(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.33 + 0.66);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)startSuggestingWithOptions:(id)options
{
  optionsCopy = options;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Recent Person Centric: Starting suggesting", buf, 2u);
  }

  assetsByPersonLocalIdentifier = self->_assetsByPersonLocalIdentifier;
  self->_assetsByPersonLocalIdentifier = 0;

  birthdayPersonPotentialSuggestions = self->_birthdayPersonPotentialSuggestions;
  self->_birthdayPersonPotentialSuggestions = 0;

  longTimeNoSeePersonPotentialSuggestions = self->_longTimeNoSeePersonPotentialSuggestions;
  self->_longTimeNoSeePersonPotentialSuggestions = 0;

  personPotentialSuggestions = self->_personPotentialSuggestions;
  self->_personPotentialSuggestions = 0;

  birthdayPersonPotentialSuggestionEnumerator = self->_birthdayPersonPotentialSuggestionEnumerator;
  self->_birthdayPersonPotentialSuggestionEnumerator = 0;

  longTimeNoSeePersonPotentialSuggestionEnumerator = self->_longTimeNoSeePersonPotentialSuggestionEnumerator;
  self->_longTimeNoSeePersonPotentialSuggestionEnumerator = 0;

  personPotentialSuggestionEnumerator = self->_personPotentialSuggestionEnumerator;
  self->_personPotentialSuggestionEnumerator = 0;

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  usedPersonLocalIdentifiers = self->_usedPersonLocalIdentifiers;
  self->_usedPersonLocalIdentifiers = v14;

  workingContext = [session workingContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__PGRecentPersonCentricSuggester_startSuggestingWithOptions___block_invoke;
  v19[3] = &unk_27888A3B8;
  v19[4] = self;
  [workingContext performSynchronousConcurrentGraphReadUsingBlock:v19];

  options = self->_options;
  self->_options = optionsCopy;
  v18 = optionsCopy;
}

void __61__PGRecentPersonCentricSuggester_startSuggestingWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 graph];
  v3 = [v5 meNodeWithFallbackInferredMeNode];
  v4 = [v3 localIdentifier];
  if ([v4 length])
  {
    [*(*(a1 + 32) + 72) addObject:v4];
  }
}

@end