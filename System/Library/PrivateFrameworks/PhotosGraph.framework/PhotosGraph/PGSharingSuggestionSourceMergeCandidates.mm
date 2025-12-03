@interface PGSharingSuggestionSourceMergeCandidates
- (PGSharingSuggestionSourceMergeCandidates)initWithServiceManager:(id)manager;
- (id)filterMeNodePredicateForInput:(id)input photoLibrary:(id)library;
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceMergeCandidates

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v118 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  momentNodes = [inputCopy momentNodes];
  v70 = inputCopy;
  graph = [inputCopy graph];
  v7 = objc_opt_new();
  v83 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(momentNodes, "count")}];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = momentNodes;
  v8 = [obj countByEnumeratingWithState:&v106 objects:v117 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v107;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v107 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v106 + 1) + 8 * i);
        v13 = objc_opt_new();
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __81__PGSharingSuggestionSourceMergeCandidates_suggestedResultsForInput_withOptions___block_invoke;
        v104[3] = &unk_278889240;
        v14 = v13;
        v105 = v14;
        [v12 enumeratePersonNodesUsingBlock:v104];
        localIdentifier = [v12 localIdentifier];
        if ([localIdentifier length])
        {
          [v83 setObject:v14 forKeyedSubscript:localIdentifier];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v9);
  }

  moments = [v70 moments];
  photoLibrary = [moments photoLibrary];
  v18 = [(PGSharingSuggestionSourceMergeCandidates *)self filterMeNodePredicateForInput:v70 photoLibrary:photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kindSubtype != %d && kindSubtype != %d", 10, 103];
  v75 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setInternalPredicate:v20];

  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setPersonContext:3];
  if (v18)
  {
    [librarySpecificFetchOptions2 setPredicate:v18];
  }

  v69 = photoLibrary;
  librarySpecificFetchOptions3 = [photoLibrary librarySpecificFetchOptions];
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(verifiedType == %d || verifiedType == %d) && type != %d", 2, 1, -1];
  v67 = v23;
  v68 = v18;
  if (v18)
  {
    v24 = MEMORY[0x277CCA920];
    v116[0] = v23;
    v116[1] = v18;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];
    [librarySpecificFetchOptions3 setPredicate:v26];
  }

  else
  {
    [librarySpecificFetchOptions3 setPredicate:v23];
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v71 = moments;
  v78 = [v71 countByEnumeratingWithState:&v100 objects:v115 count:16];
  if (v78)
  {
    v73 = librarySpecificFetchOptions2;
    v74 = *v101;
    do
    {
      for (j = 0; j != v78; ++j)
      {
        if (*v101 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v28 = *(*(&v100 + 1) + 8 * j);
        v29 = objc_autoreleasePoolPush();
        v30 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v28 options:v75];
        if ([v30 count])
        {
          v81 = v29;
          v82 = j;
          v31 = v28;
          v32 = [v30 count];
          v33 = v31;
          if (v32 != [v31 estimatedAssetCount])
          {
            v33 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v30 title:0];
          }

          v79 = v33;
          v80 = v30;
          v34 = [MEMORY[0x277CD9938] fetchPersonsForAssetCollection:v33 options:librarySpecificFetchOptions2];
          localIdentifier2 = [v31 localIdentifier];
          v36 = [v83 objectForKeyedSubscript:localIdentifier2];

          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v37 = v34;
          v38 = [v37 countByEnumeratingWithState:&v96 objects:v114 count:16];
          if (v38)
          {
            v39 = v38;
            v86 = v36;
            v87 = *v97;
            v85 = v37;
            do
            {
              for (k = 0; k != v39; ++k)
              {
                if (*v97 != v87)
                {
                  objc_enumerationMutation(v37);
                }

                v41 = *(*(&v96 + 1) + 8 * k);
                v42 = objc_autoreleasePoolPush();
                if ([v41 verifiedType])
                {
                  localIdentifier3 = [v41 localIdentifier];
                  v44 = [v36 containsObject:localIdentifier3];

                  if ((v44 & 1) == 0)
                  {
                    [v7 addObject:v41];
                  }
                }

                else
                {
                  v45 = [MEMORY[0x277CD9938] fetchMergeCandidatePersonsForPerson:v41 options:librarySpecificFetchOptions3];
                  if ([v45 count])
                  {
                    v46 = librarySpecificFetchOptions3;
                    v94 = 0u;
                    v95 = 0u;
                    v92 = 0u;
                    v93 = 0u;
                    v47 = v45;
                    v48 = [v47 countByEnumeratingWithState:&v92 objects:v113 count:16];
                    if (v48)
                    {
                      v49 = v48;
                      v50 = *v93;
                      do
                      {
                        for (m = 0; m != v49; ++m)
                        {
                          if (*v93 != v50)
                          {
                            objc_enumerationMutation(v47);
                          }

                          [v7 addObject:*(*(&v92 + 1) + 8 * m)];
                        }

                        v49 = [v47 countByEnumeratingWithState:&v92 objects:v113 count:16];
                      }

                      while (v49);
                    }

                    librarySpecificFetchOptions3 = v46;
                    v37 = v85;
                    v36 = v86;
                  }

                  else if ([optionsCopy includeUnverified] && objc_msgSend(v41, "faceCount") >= 8)
                  {
                    [v7 addObject:v41];
                  }
                }

                objc_autoreleasePoolPop(v42);
              }

              v39 = [v37 countByEnumeratingWithState:&v96 objects:v114 count:16];
            }

            while (v39);
          }

          librarySpecificFetchOptions2 = v73;
          v29 = v81;
          j = v82;
          v30 = v80;
        }

        objc_autoreleasePoolPop(v29);
      }

      v78 = [v71 countByEnumeratingWithState:&v100 objects:v115 count:16];
    }

    while (v78);
  }

  if (![v71 count])
  {
    v52 = +[PGLogging sharedLogging];
    loggingConnection = [v52 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v112 = obj;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "No asset collections fetched for %@", buf, 0xCu);
    }
  }

  v54 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v55 = v7;
  v56 = [v55 countByEnumeratingWithState:&v88 objects:v110 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v89;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v89 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v88 + 1) + 8 * n);
        localIdentifier4 = [v60 localIdentifier];
        v62 = [graph personNodeForPersonLocalIdentifier:localIdentifier4];

        if (v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = v60;
        }

        v64 = [(PGSharingSuggestionSource *)self suggestionResultWithPerson:v63];
        [v54 addObject:v64];
      }

      v57 = [v55 countByEnumeratingWithState:&v88 objects:v110 count:16];
    }

    while (v57);
  }

  v65 = *MEMORY[0x277D85DE8];

  return v54;
}

void __81__PGSharingSuggestionSourceMergeCandidates_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localIdentifier];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)filterMeNodePredicateForInput:(id)input photoLibrary:(id)library
{
  inputCopy = input;
  libraryCopy = library;
  graph = [inputCopy graph];
  meNode = [graph meNode];

  localIdentifier = [meNode localIdentifier];
  contactIdentifier = [meNode contactIdentifier];
  if (meNode || ([inputCopy momentNodes], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
  {
    cNIdentifier = contactIdentifier;
  }

  else
  {
    mePerson = [(CLSServiceManager *)self->_serviceManager mePerson];
    cNIdentifier = [mePerson CNIdentifier];

    if (mePerson)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"personUri == %@", cNIdentifier];
      [librarySpecificFetchOptions setPredicate:v23];

      [librarySpecificFetchOptions setFetchLimit:1];
      v24 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions];
      firstObject = [v24 firstObject];
      localIdentifier2 = [firstObject localIdentifier];

      localIdentifier = localIdentifier2;
    }
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (localIdentifier)
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier != %@", localIdentifier];
    [v15 addObject:v16];
  }

  if (cNIdentifier)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"personUri != %@", cNIdentifier];
    [v15 addObject:v17];
  }

  if ([v15 count] == 1)
  {
    firstObject2 = [v15 firstObject];
LABEL_12:
    v19 = firstObject2;
    goto LABEL_14;
  }

  if ([v15 count] >= 2)
  {
    firstObject2 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
    goto LABEL_12;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (PGSharingSuggestionSourceMergeCandidates)initWithServiceManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PGSharingSuggestionSourceMergeCandidates;
  v6 = [(PGSharingSuggestionSourceMergeCandidates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceManager, manager);
  }

  return v7;
}

@end