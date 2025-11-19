@interface PGTripHighlightSharingSuggester
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
@end

@implementation PGTripHighlightSharingSuggester

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(PGAbstractSuggester *)self session];
  v8 = [v7 loggingConnection];
  v9 = [v7 workingContext];
  v10 = [v7 photoLibrary];
  v11 = [v9 curationManager];
  v12 = [v7 curationContext];
  v13 = [v9 serviceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke;
  v26[3] = &unk_2788847A0;
  v27 = v5;
  v28 = v8;
  v29 = v7;
  v30 = v13;
  v31 = self;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  v14 = v6;
  v36 = v14;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v13;
  v20 = v7;
  v21 = v8;
  v22 = v5;
  [v18 performSynchronousConcurrentGraphReadUsingBlock:v26];
  v23 = v36;
  v24 = v14;

  return v14;
}

void __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) universalStartDate];
  v5 = [*(a1 + 32) universalEndDate];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v63 = v3;
  if (v7)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v103 = v4;
      v104 = 2112;
      v105 = v6;
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Start date or end date invalid: %@ - %@", buf, 0x16u);
    }

    goto LABEL_67;
  }

  v62 = [v3 graph];
  [v62 allTripNodes];
  v10 = v9 = a1;
  v11 = MEMORY[0x277CCAC30];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke_189;
  v94[3] = &unk_278884778;
  v95 = *(v9 + 40);
  v12 = v4;
  v96 = v12;
  v13 = v6;
  v97 = v13;
  v14 = [v11 predicateWithBlock:v94];
  v61 = v10;
  v15 = [v10 filteredArrayUsingPredicate:v14];

  if (![v15 count])
  {
    v56 = *(v9 + 40);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v103 = v12;
      v104 = 2112;
      v105 = v13;
      _os_log_impl(&dword_22F0FC000, v56, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No trips found between %@ and %@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  v59 = v13;
  v60 = v12;
  v16 = [v15 mutableCopy];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v64 = v9;
  obj = [*(v9 + 48) existingSuggestions];
  v17 = [obj countByEnumeratingWithState:&v90 objects:v101 count:16];
  v67 = v6;
  v68 = v4;
  v73 = v16;
  v66 = v15;
  if (!v17)
  {
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *v91;
  v65 = *v91;
  do
  {
    v20 = 0;
    v69 = v18;
    do
    {
      if (*v91 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v74 = *(*(&v90 + 1) + 8 * v20);
      if ([v74 subtype] == 102)
      {
        v71 = v20;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v76 = v15;
        v21 = [v76 countByEnumeratingWithState:&v86 objects:v100 count:16];
        if (!v21)
        {
          goto LABEL_31;
        }

        v22 = v21;
        v23 = *v87;
        while (1)
        {
          v24 = 0;
          do
          {
            if (*v87 != v23)
            {
              objc_enumerationMutation(v76);
            }

            v25 = *(*(&v86 + 1) + 8 * v24);
            v26 = objc_autoreleasePoolPush();
            if ([v16 containsObject:v25])
            {
              v27 = [v74 universalStartDate];
              v28 = [v74 universalEndDate];
              v29 = v27;
              if (!v29 || !v28)
              {
                goto LABEL_25;
              }

              v30 = v25;
              v31 = [v30 universalStartDate];
              v32 = [v30 universalEndDate];

              if ([v31 compare:v28] == 1)
              {

LABEL_25:
                goto LABEL_26;
              }

              v33 = [v32 compare:v29];

              v7 = v33 == -1;
              v16 = v73;
              if (!v7)
              {
                [v73 removeObject:v30];
              }
            }

LABEL_26:
            objc_autoreleasePoolPop(v26);
            ++v24;
          }

          while (v22 != v24);
          v34 = [v76 countByEnumeratingWithState:&v86 objects:v100 count:16];
          v22 = v34;
          if (!v34)
          {
LABEL_31:

            v6 = v67;
            v4 = v68;
            v19 = v65;
            v15 = v66;
            v18 = v69;
            v20 = v71;
            break;
          }
        }
      }

      v20 = v20 + 1;
    }

    while (v20 != v18);
    v18 = [obj countByEnumeratingWithState:&v90 objects:v101 count:16];
  }

  while (v18);
LABEL_34:

  if ([v16 count])
  {
    v75 = [[PGTitleGenerationContext alloc] initWithGraph:v62 serviceManager:*(v64 + 56)];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v72 = v16;
    v35 = [v72 countByEnumeratingWithState:&v82 objects:v99 count:16];
    if (v35)
    {
      v36 = v35;
      v77 = *v83;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v83 != v77)
          {
            objc_enumerationMutation(v72);
          }

          v38 = *(*(&v82 + 1) + 8 * i);
          v39 = objc_autoreleasePoolPush();
          v40 = *(v64 + 64);
          v41 = [v38 collection];
          v42 = [v41 momentNodes];
          v43 = [v42 temporaryArray];
          v44 = [v40 sharingSuggestionResultsForMomentNodes:v43 withWorkingContext:*(v64 + 72)];

          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v45 = v44;
          v46 = [(PGEnrichableEventSuggestion *)v45 countByEnumeratingWithState:&v78 objects:v98 count:16];
          v47 = v45;
          if (v46)
          {
            v48 = v46;
            v49 = *v79;
LABEL_42:
            v50 = 0;
            while (1)
            {
              if (*v79 != v49)
              {
                objc_enumerationMutation(v45);
              }

              v51 = [*(*(&v78 + 1) + 8 * v50) person];
              v52 = [v51 isVerified];

              if (v52)
              {
                break;
              }

              if (v48 == ++v50)
              {
                v48 = [(PGEnrichableEventSuggestion *)v45 countByEnumeratingWithState:&v78 objects:v98 count:16];
                if (v48)
                {
                  goto LABEL_42;
                }

                v47 = v45;
                goto LABEL_56;
              }
            }

            v53 = v64;
            v47 = [[PGEnrichableEventSuggestion alloc] initWithType:1 subtype:102 enrichableEvent:v38 sharingSuggestionResults:v45 photoLibrary:*(v64 + 80) curationManager:*(v64 + 88) curationContext:*(v64 + 96) loggingConnection:*(v64 + 40) titleGenerationContext:v75];
            if (v47)
            {
              [*(v64 + 104) addObject:v47];
              if ([*(v64 + 32) allowNotification])
              {
                v54 = [*(v64 + 48) notificationProfile];
                if ([v54 eligibleForNotification])
                {
                  -[PGEnrichableEventSuggestion setNotificationQuality:](v47, "setNotificationQuality:", [v54 notificationQualityForEnrichableEvent:v38]);
                  if ([v54 shouldNotifyForSuggestion:v47 withOptions:*(v64 + 32)])
                  {
                    [(PGEnrichableEventSuggestion *)v47 setNotificationState:1];
                  }
                }

                v53 = v64;
              }

              v55 = [*(v53 + 104) count];
              if (v55 >= [*(v53 + 32) maximumNumberOfSuggestions])
              {

                objc_autoreleasePoolPop(v39);
                goto LABEL_64;
              }
            }
          }

LABEL_56:

          objc_autoreleasePoolPop(v39);
        }

        v36 = [v72 countByEnumeratingWithState:&v82 objects:v99 count:16];
      }

      while (v36);
    }

LABEL_64:

    v6 = v67;
    v4 = v68;
    v15 = v66;
    v16 = v73;
  }

  else
  {
    v57 = *(v64 + 40);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v103 = v60;
      v104 = 2112;
      v105 = v59;
      _os_log_impl(&dword_22F0FC000, v57, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Trips found between %@ and %@ are already covered in exising sharing suggestions", buf, 0x16u);
    }
  }

LABEL_66:
LABEL_67:

  v58 = *MEMORY[0x277D85DE8];
}

BOOL __67__PGTripHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke_189(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  v6 = [v5 subsetWithEnoughScenesProcessed];
  v7 = [v6 subsetWithEnoughFacesProcessed];

  v8 = [v5 count];
  if (v8 == [v7 count])
  {
    v9 = a1[5];
    v10 = a1[6];
    v11 = v3;
    v12 = v9;
    v13 = v10;
    v14 = v13;
    v15 = 0;
    if (v12 && v13)
    {
      v16 = [v11 universalStartDate];
      v17 = [v11 universalEndDate];
      v15 = [v16 compare:v14] != 1 && objc_msgSend(v17, "compare:", v12) != -1;
    }
  }

  else
  {
    v18 = a1[4];
    v15 = 0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v3;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Not all moments analyzed for %@", &v21, 0xCu);
      v15 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end