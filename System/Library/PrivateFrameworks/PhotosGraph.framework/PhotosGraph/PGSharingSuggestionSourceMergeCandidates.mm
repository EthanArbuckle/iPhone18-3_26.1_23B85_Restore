@interface PGSharingSuggestionSourceMergeCandidates
- (PGSharingSuggestionSourceMergeCandidates)initWithServiceManager:(id)a3;
- (id)filterMeNodePredicateForInput:(id)a3 photoLibrary:(id)a4;
- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4;
@end

@implementation PGSharingSuggestionSourceMergeCandidates

- (id)suggestedResultsForInput:(id)a3 withOptions:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v84 = a4;
  v6 = [v5 momentNodes];
  v70 = v5;
  v77 = [v5 graph];
  v7 = objc_opt_new();
  v83 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v6;
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
        v15 = [v12 localIdentifier];
        if ([v15 length])
        {
          [v83 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v9);
  }

  v16 = [v70 moments];
  v17 = [v16 photoLibrary];
  v18 = [(PGSharingSuggestionSourceMergeCandidates *)self filterMeNodePredicateForInput:v70 photoLibrary:v17];
  v19 = [v17 librarySpecificFetchOptions];
  [v19 setIncludeGuestAssets:1];
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kindSubtype != %d && kindSubtype != %d", 10, 103];
  v75 = v19;
  [v19 setInternalPredicate:v20];

  v21 = [v17 librarySpecificFetchOptions];
  [v21 setPersonContext:3];
  if (v18)
  {
    [v21 setPredicate:v18];
  }

  v69 = v17;
  v22 = [v17 librarySpecificFetchOptions];
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
    [v22 setPredicate:v26];
  }

  else
  {
    [v22 setPredicate:v23];
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v71 = v16;
  v78 = [v71 countByEnumeratingWithState:&v100 objects:v115 count:16];
  if (v78)
  {
    v73 = v21;
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
          v34 = [MEMORY[0x277CD9938] fetchPersonsForAssetCollection:v33 options:v21];
          v35 = [v31 localIdentifier];
          v36 = [v83 objectForKeyedSubscript:v35];

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
                  v43 = [v41 localIdentifier];
                  v44 = [v36 containsObject:v43];

                  if ((v44 & 1) == 0)
                  {
                    [v7 addObject:v41];
                  }
                }

                else
                {
                  v45 = [MEMORY[0x277CD9938] fetchMergeCandidatePersonsForPerson:v41 options:v22];
                  if ([v45 count])
                  {
                    v46 = v22;
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

                    v22 = v46;
                    v37 = v85;
                    v36 = v86;
                  }

                  else if ([v84 includeUnverified] && objc_msgSend(v41, "faceCount") >= 8)
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

          v21 = v73;
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
    v53 = [v52 loggingConnection];

    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v112 = obj;
      _os_log_error_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_ERROR, "No asset collections fetched for %@", buf, 0xCu);
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
        v61 = [v60 localIdentifier];
        v62 = [v77 personNodeForPersonLocalIdentifier:v61];

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

- (id)filterMeNodePredicateForInput:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 graph];
  v9 = [v8 meNode];

  v10 = [v9 localIdentifier];
  v11 = [v9 contactIdentifier];
  if (v9 || ([v6 momentNodes], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
  {
    v14 = v11;
  }

  else
  {
    v21 = [(CLSServiceManager *)self->_serviceManager mePerson];
    v14 = [v21 CNIdentifier];

    if (v21)
    {
      v22 = [v7 librarySpecificFetchOptions];
      v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"personUri == %@", v14];
      [v22 setPredicate:v23];

      [v22 setFetchLimit:1];
      v24 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v22];
      v25 = [v24 firstObject];
      v26 = [v25 localIdentifier];

      v10 = v26;
    }
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (v10)
  {
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier != %@", v10];
    [v15 addObject:v16];
  }

  if (v14)
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"personUri != %@", v14];
    [v15 addObject:v17];
  }

  if ([v15 count] == 1)
  {
    v18 = [v15 firstObject];
LABEL_12:
    v19 = v18;
    goto LABEL_14;
  }

  if ([v15 count] >= 2)
  {
    v18 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v15];
    goto LABEL_12;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (PGSharingSuggestionSourceMergeCandidates)initWithServiceManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGSharingSuggestionSourceMergeCandidates;
  v6 = [(PGSharingSuggestionSourceMergeCandidates *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceManager, a3);
  }

  return v7;
}

@end