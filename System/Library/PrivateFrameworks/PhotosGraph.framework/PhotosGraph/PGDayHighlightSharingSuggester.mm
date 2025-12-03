@interface PGDayHighlightSharingSuggester
+ (BOOL)canSuggestHighlightNodeWithoutPeople:(id)people loggingConnection:(id)connection;
+ (BOOL)shouldSuggestHighlightNode:(id)node neighborScoreComputer:(id)computer loggingConnection:(id)connection;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
@end

@implementation PGDayHighlightSharingSuggester

+ (BOOL)canSuggestHighlightNodeWithoutPeople:(id)people loggingConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  connectionCopy = connection;
  if (![peopleCopy isInteresting])
  {
    goto LABEL_7;
  }

  localEndDate = [peopleCopy localEndDate];
  localStartDate = [peopleCopy localStartDate];
  [localEndDate timeIntervalSinceDate:localStartDate];
  v10 = v9;

  if (v10 < 7200.0)
  {
    goto LABEL_7;
  }

  collection = [peopleCopy collection];
  momentNodes = [collection momentNodes];
  numberOfAssets = [momentNodes numberOfAssets];

  if (numberOfAssets >= 0x1E)
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412802;
      v18 = peopleCopy;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = numberOfAssets;
      _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Considering highlight node %@ interesting enough to suggest without person detected in it (duration %.0f, number of assets %lu).", &v17, 0x20u);
    }

    v14 = 1;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)shouldSuggestHighlightNode:(id)node neighborScoreComputer:(id)computer loggingConnection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  connectionCopy = connection;
  [computer neighborScoreWithHighlightNode:nodeCopy];
  v10 = v9;
  isInteresting = [nodeCopy isInteresting];
  isSmartInteresting = [nodeCopy isSmartInteresting];
  meaningLabels = [nodeCopy meaningLabels];
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413314;
    v24 = nodeCopy;
    v25 = 1024;
    v26 = isInteresting;
    v27 = 1024;
    v28 = isSmartInteresting;
    v29 = 2048;
    v30 = v10;
    v31 = 2112;
    v32 = meaningLabels;
    _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node %@: isInteresting %d, isSmartInteresting %d, neighborScore %.2f, meanings %@", &v23, 0x2Cu);
  }

  if (!((v10 > 0.43) | (isInteresting | isSmartInteresting) & 1) && ![meaningLabels count])
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v18 = "[Sharing Suggestion] Highlight node not interesting for sharing.";
      v19 = connectionCopy;
      v20 = 2;
      goto LABEL_14;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if ([nodeCopy isPartOfTrip])
  {
    v14 = +[PGGraph mostSignificantMeaningLabels];
    v15 = [meaningLabels intersectsSet:v14];

    v16 = os_log_type_enabled(connectionCopy, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        v23 = 138412290;
        v24 = meaningLabels;
        _os_log_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node is contained in a trip and meaningful enough for sharing (%@).", &v23, 0xCu);
      }

      goto LABEL_9;
    }

    if (v16)
    {
      v23 = 138412290;
      v24 = meaningLabels;
      v18 = "[Sharing Suggestion] Highlight node is contained in a trip, but not meaningful enough for sharing (%@).";
      v19 = connectionCopy;
      v20 = 12;
LABEL_14:
      _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, v18, &v23, v20);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_9:
  v17 = 1;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  loggingConnection = [session loggingConnection];
  workingContext = [session workingContext];
  curationManager = [workingContext curationManager];
  curationContext = [session curationContext];
  serviceManager = [workingContext serviceManager];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__PGDayHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke;
  v26[3] = &unk_2788847A0;
  v27 = optionsCopy;
  v28 = session;
  v29 = loggingConnection;
  v30 = photoLibrary;
  v31 = serviceManager;
  selfCopy = self;
  v33 = workingContext;
  v34 = curationManager;
  v35 = curationContext;
  v14 = v6;
  v36 = v14;
  v15 = curationContext;
  v16 = curationManager;
  v17 = workingContext;
  v18 = serviceManager;
  v19 = photoLibrary;
  v20 = loggingConnection;
  v21 = session;
  v22 = optionsCopy;
  [v17 performSynchronousConcurrentGraphReadUsingBlock:v26];
  v23 = v36;
  v24 = v14;

  return v14;
}

void __66__PGDayHighlightSharingSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    v8 = [*(a1 + 40) loggingConnection];
    v79 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v120 = v4;
      v121 = 2112;
      v122 = v6;
      _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Start date or end date invalid: %@ - %@", buf, 0x16u);
    }

    goto LABEL_86;
  }

  v88 = a1;
  v77 = v3;
  v9 = [v3 graph];
  v76 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v6];
  v79 = v9;
  v10 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:"momentNodesForLocalDateInterval:inGraph:" inGraph:?];
  if (![v10 count])
  {
    v78 = v10;
    v71 = *(a1 + 48);
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    *buf = 138412546;
    v120 = v4;
    v121 = 2112;
    v122 = v6;
    v72 = "[Sharing Suggestion] No moments found between %@ and %@";
LABEL_77:
    _os_log_impl(&dword_22F0FC000, v71, OS_LOG_TYPE_DEFAULT, v72, buf, 0x16u);
    goto LABEL_85;
  }

  v11 = [v10 subsetWithEnoughScenesProcessed];
  v12 = v10;
  v13 = v11;

  v14 = [v13 subsetWithEnoughFacesProcessed];

  v78 = v14;
  if (![v14 count])
  {
    v71 = *(v88 + 48);
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    *buf = 138412546;
    v120 = v4;
    v121 = 2112;
    v122 = v6;
    v72 = "[Sharing Suggestion] No moments analyzed found between %@ and %@";
    goto LABEL_77;
  }

  v15 = [v14 highlightNodes];
  v16 = [v15 set];

  if (![v16 count])
  {
    v73 = *(v88 + 48);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v120 = v4;
      v121 = 2112;
      v122 = v6;
      v123 = 2112;
      v124 = v78;
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No highlight nodes found between %@ and %@ for moment nodes %@", buf, 0x20u);
    }

    goto LABEL_84;
  }

  v17 = [v16 mutableCopy];
  v98 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = [*(v88 + 40) existingSuggestions];
  v18 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
  v82 = v6;
  v83 = v4;
  v89 = v17;
  v81 = v16;
  if (!v18)
  {
    goto LABEL_42;
  }

  v19 = v18;
  v20 = *v112;
  v80 = *v112;
  do
  {
    v21 = 0;
    v84 = v19;
    do
    {
      if (*v112 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v111 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      if ([v22 subtype] == 101)
      {
        v86 = v23;
        v87 = v21;
        v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v22 options:0];
        v92 = [v24 fetchedObjectIDsSet];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v96 = v16;
        v25 = [v96 countByEnumeratingWithState:&v107 objects:v117 count:16];
        if (!v25)
        {
          goto LABEL_39;
        }

        v26 = v25;
        v27 = v22;
        v28 = *v108;
        v90 = v22;
        while (1)
        {
          v29 = 0;
          v94 = v26;
          do
          {
            if (*v108 != v28)
            {
              objc_enumerationMutation(v96);
            }

            v30 = *(*(&v107 + 1) + 8 * v29);
            v31 = objc_autoreleasePoolPush();
            if ([v17 containsObject:v30])
            {
              v32 = [v27 universalStartDate];
              v33 = [v27 universalEndDate];
              v34 = v32;
              if (v34 && v33)
              {
                v35 = v30;
                v36 = [v35 universalStartDate];
                v37 = [v35 universalEndDate];

                if ([v36 compare:v33] == 1)
                {

                  v17 = v89;
                  goto LABEL_27;
                }

                v42 = [v37 compare:v34];

                v7 = v42 == -1;
                v17 = v89;
                v27 = v90;
                if (!v7)
                {
                  [v89 removeObject:v35];
LABEL_33:
                  v26 = v94;
                  goto LABEL_34;
                }
              }

              else
              {
LABEL_27:
              }

              v38 = [v30 localIdentifier];
              v39 = [v98 objectForKeyedSubscript:v38];
              if (!v39)
              {
                v40 = [v30 fetchAssetCollectionInPhotoLibrary:*(v88 + 56)];
                v41 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v40 options:0];
                v39 = [v41 fetchedObjectIDsSet];

                [v98 setObject:v39 forKeyedSubscript:v38];
                v27 = v90;
              }

              if ([v92 intersectsSet:v39])
              {
                [v17 removeObject:v30];
              }

              goto LABEL_33;
            }

LABEL_34:
            objc_autoreleasePoolPop(v31);
            ++v29;
          }

          while (v26 != v29);
          v43 = [v96 countByEnumeratingWithState:&v107 objects:v117 count:16];
          v26 = v43;
          if (!v43)
          {
LABEL_39:

            v6 = v82;
            v4 = v83;
            v20 = v80;
            v16 = v81;
            v19 = v84;
            v23 = v86;
            v21 = v87;
            break;
          }
        }
      }

      objc_autoreleasePoolPop(v23);
      ++v21;
    }

    while (v21 != v19);
    v19 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
  }

  while (v19);
LABEL_42:

  if ([v17 count])
  {
    v44 = objc_alloc_init(PGNeighborScoreComputer);
    v45 = v88;
    v93 = [[PGTitleGenerationContext alloc] initWithGraph:v79 serviceManager:*(v88 + 64)];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v97 = v17;
    v46 = [v97 countByEnumeratingWithState:&v103 objects:v116 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v104;
      v91 = *v104;
      do
      {
        v49 = 0;
        v95 = v47;
        do
        {
          if (*v104 != v48)
          {
            objc_enumerationMutation(v97);
          }

          v50 = *(*(&v103 + 1) + 8 * v49);
          v51 = objc_autoreleasePoolPush();
          v52 = *(v45 + 72);
          if ([objc_opt_class() shouldSuggestHighlightNode:v50 neighborScoreComputer:v44 loggingConnection:*(v45 + 48)])
          {
            v53 = *(v45 + 72);
            [v50 eventEnrichmentMomentNodes];
            v55 = v54 = v45;
            v56 = [v55 array];
            v57 = [v53 sharingSuggestionResultsForMomentNodes:v56 withWorkingContext:*(v54 + 80)];

            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v58 = v57;
            v59 = [(PGEnrichableEventSuggestion *)v58 countByEnumeratingWithState:&v99 objects:v115 count:16];
            v60 = v58;
            if (v59)
            {
              v61 = v59;
              v62 = v44;
              v63 = *v100;
LABEL_51:
              v64 = 0;
              while (1)
              {
                if (*v100 != v63)
                {
                  objc_enumerationMutation(v58);
                }

                v65 = [*(*(&v99 + 1) + 8 * v64) person];
                v66 = [v65 isVerified];

                if (v66)
                {
                  break;
                }

                if (v61 == ++v64)
                {
                  v61 = [(PGEnrichableEventSuggestion *)v58 countByEnumeratingWithState:&v99 objects:v115 count:16];
                  if (v61)
                  {
                    goto LABEL_51;
                  }

                  v60 = v58;
                  v17 = v89;
                  v44 = v62;
                  goto LABEL_68;
                }
              }

              v67 = *(v88 + 48);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node contains verified people", buf, 2u);
              }

              v68 = v88;
              v60 = [[PGEnrichableEventSuggestion alloc] initWithType:1 subtype:101 enrichableEvent:v50 sharingSuggestionResults:v58 photoLibrary:*(v88 + 56) curationManager:*(v88 + 88) curationContext:*(v88 + 96) loggingConnection:*(v88 + 48) titleGenerationContext:v93];
              v17 = v89;
              v44 = v62;
              if (!v60)
              {
LABEL_68:
                v48 = v91;
                goto LABEL_69;
              }

              [*(v88 + 104) addObject:v60];
              v48 = v91;
              if ([*(v88 + 32) allowNotification])
              {
                v69 = [*(v88 + 40) notificationProfile];
                if ([v69 eligibleForNotification])
                {
                  -[PGEnrichableEventSuggestion setNotificationQuality:](v60, "setNotificationQuality:", [v69 notificationQualityForHighlightNode:v50]);
                  if ([v69 shouldNotifyForSuggestion:v60 withOptions:*(v88 + 32)])
                  {
                    [(PGEnrichableEventSuggestion *)v60 setNotificationState:1];
                  }
                }

                v68 = v88;
              }

              v70 = [*(v68 + 104) count];
              if (v70 >= [*(v68 + 32) maximumNumberOfSuggestions])
              {

                objc_autoreleasePoolPop(v51);
                goto LABEL_82;
              }
            }

LABEL_69:

            v45 = v88;
            v47 = v95;
          }

          objc_autoreleasePoolPop(v51);
          ++v49;
        }

        while (v49 != v47);
        v47 = [v97 countByEnumeratingWithState:&v103 objects:v116 count:16];
      }

      while (v47);
    }

LABEL_82:

    v6 = v82;
    v4 = v83;
    v16 = v81;
  }

  else
  {
    v74 = *(v88 + 48);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v120 = v4;
      v121 = 2112;
      v122 = v6;
      _os_log_impl(&dword_22F0FC000, v74, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlights found between %@ and %@ are already covered in exising sharing suggestions", buf, 0x16u);
    }
  }

LABEL_84:
LABEL_85:

  v3 = v77;
LABEL_86:

  v75 = *MEMORY[0x277D85DE8];
}

@end