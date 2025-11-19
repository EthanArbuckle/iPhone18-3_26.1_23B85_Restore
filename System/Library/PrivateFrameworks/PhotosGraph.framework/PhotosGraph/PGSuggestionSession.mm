@interface PGSuggestionSession
+ (id)suggesterClassesWithProfile:(unsigned __int8)a3;
- (BOOL)suggesterClass:(Class)a3 supportsOptions:(id)a4;
- (BOOL)suggestion:(id)a3 collidesWithMemories:(id)a4;
- (BOOL)suggestion:(id)a3 isEqualToSuggestion:(id)a4;
- (BOOL)supportsRelaxedCollisionRulesForSuggester:(id)a3;
- (PGSuggestionSession)initWithProfile:(unsigned __int8)a3 workingContext:(id)a4;
- (double)topTierAestheticScore;
- (id)activeSuggestersWithOptions:(id)a3;
- (id)coordinatedSuggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)electedSuggestionsFromSuggestions:(id)a3 options:(id)a4 progress:(id)a5;
- (id)existingSuggestionsWithState:(unsigned __int16)a3 count:(unint64_t)a4;
- (id)infoWithSuggestion:(id)a3;
- (id)infosWithSuggestions:(id)a3;
- (id)suggesterClasses;
- (id)suggestionsByCollisionReasonCollidingWithSuggestion:(id)a3 inSuggestions:(id)a4 relaxCollisionRules:(BOOL)a5;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (id)uncoordinatedSuggestionsWithOptions:(id)a3 progress:(id)a4;
- (unint64_t)deniedSuggestion:(id)a3 collidesWithSuggestion:(id)a4;
- (unint64_t)outstanderSuggestion:(id)a3 collidesWithSuggestion:(id)a4 relaxCollisionRules:(BOOL)a5;
- (unint64_t)singleAssetSuggestion:(id)a3 collidesWithSuggestion:(id)a4;
- (void)setExistingSuggestions:(id)a3;
@end

@implementation PGSuggestionSession

- (id)existingSuggestionsWithState:(unsigned __int16)a3 count:(unint64_t)a4
{
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(NSArray *)self->_existingSuggestions count];
  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_existingSuggestions;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      if ([v15 state] == v5)
      {
        [v9 addObject:v15];
        if ([v9 count] >= v8)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)infosWithSuggestions:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    v23 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v7 = [(NSArray *)self->_existingSuggestions reverseObjectEnumerator];
        v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
        v26 = v5;
        if (!v8)
        {
          v10 = 0;
          goto LABEL_24;
        }

        v9 = v8;
        v10 = 0;
        v11 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            if ([(PGSuggestionSession *)self suggestion:v6 isEqualToSuggestion:v13])
            {
              [(PGSuggestionSession *)self infoWithSuggestion:v13];
              v10 = v14 = v10;
            }

            else
            {
              v15 = [(PGSuggestionSession *)self reasonForSuggestion:v6 collidingWithSuggestion:v13 relaxCollisionRules:0];
              if (!v15)
              {
                continue;
              }

              v16 = @"Unknown";
              if (v15 <= 3)
              {
                v16 = off_278884428[v15];
              }

              v14 = v16;
              v17 = [v27 objectForKeyedSubscript:v14];
              if (!v17)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v27 setObject:v17 forKeyedSubscript:v14];
              }

              v18 = [(PGSuggestionSession *)self infoWithSuggestion:v13];
              [v17 addObject:v18];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v9);
LABEL_24:

        v19 = [(PGSuggestionSession *)self infoWithSuggestion:v6];
        [v19 setObject:v10 forKeyedSubscript:@"identicalExistingSuggestionInfo"];
        [v19 setObject:v27 forKeyedSubscript:@"suggestionsByCollisionReason"];
        [v24 addObject:v19];

        v5 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)infoWithSuggestion:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23[0] = @"type";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "type")}];
  v23[1] = @"subtype";
  v24[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "subtype")}];
  v24[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v7 = [v6 mutableCopy];

  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isInvalid")}];
    [v7 setObject:v8 forKeyedSubscript:@"isInvalid"];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v3 uuid];
    [v7 setObject:v9 forKeyedSubscript:@"uuid"];
  }

  v10 = [v3 universalStartDate];
  [v7 setObject:v10 forKeyedSubscript:@"universalStartDate"];

  v11 = [v3 universalEndDate];
  [v7 setObject:v11 forKeyedSubscript:@"universalEndDate"];

  v12 = [v3 keyAssets];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [v13 uuid];
    [v7 setObject:v14 forKeyedSubscript:@"keyAssetUUID"];

    v15 = [v13 creationDate];
    [v7 setObject:v15 forKeyedSubscript:@"keyAssetCreationDate"];
  }

  v16 = [v3 creationDate];
  [v7 setObject:v16 forKeyedSubscript:@"creationDate"];

  v17 = [v3 title];
  [v7 setObject:v17 forKeyedSubscript:@"title"];

  v18 = [v3 subtitle];
  [v7 setObject:v18 forKeyedSubscript:@"subtitle"];

  if (objc_opt_respondsToSelector())
  {
    v19 = [v3 reasons];
    if (v19)
    {
      v20 = v19;
      [v7 setObject:v19 forKeyedSubscript:@"reasons"];
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)suggestion:(id)a3 isEqualToSuggestion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v53 = [v7 type];
  v52 = [v8 type];
  v9 = [v7 subtype];
  v51 = [v8 subtype];
  v10 = [v7 keyAssets];
  v11 = [v10 count];
  if (!v11)
  {
    v4 = [v8 keyAssets];
    if (![v4 count])
    {
      v50 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v12 = [v7 keyAssets];
  v13 = [v8 keyAssets];
  v50 = [v12 isEqualToArray:v13];

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_7:

  v14 = [v7 representativeAssets];
  v15 = [v14 count];
  if (!v15)
  {
    v5 = [v8 representativeAssets];
    if (![v5 count])
    {
      v49 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v16 = [v7 representativeAssets];
  v17 = [v8 representativeAssets];
  v49 = [v16 isEqualToArray:v17];

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_13:

  v18 = [v7 features];
  v19 = [v18 count];
  if (v19 || ([v8 features], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "count")))
  {
    v20 = [v7 features];
    v21 = [v8 features];
    v22 = [v20 isEqualToSet:v21];

    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_19:
  v23 = [v7 suggestedPersonLocalIdentifiers];
  if ([v23 count])
  {
    v24 = [v8 suggestedPersonLocalIdentifiers];
    if ([v24 count])
    {
      v25 = [v7 suggestedPersonLocalIdentifiers];
      v26 = [v8 suggestedPersonLocalIdentifiers];
      v27 = [v25 isEqualToArray:v26];

      v28 = v27 ^ 1;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = [v7 title];
  v30 = [v8 title];
  if (v29 == v30)
  {
    v33 = 1;
  }

  else
  {
    v31 = [v7 title];
    v32 = [v8 title];
    v33 = [v31 isEqualToString:v32];
  }

  v34 = [v7 subtitle];
  v35 = [v8 subtitle];
  if (v34 == v35)
  {
    v43 = 1;
  }

  else
  {
    v36 = [v7 subtitle];
    [v8 subtitle];
    v48 = v7;
    v37 = v8;
    v38 = v33;
    v39 = v28;
    v40 = v22;
    v42 = v41 = v9;
    v43 = [v36 isEqualToString:v42];

    v9 = v41;
    v22 = v40;
    v28 = v39;
    v33 = v38;
    v8 = v37;
    v7 = v48;
  }

  v45 = v53 != v52 || v9 != v51;
  v46 = v33 & ~(v45 | v50 ^ 1 | v49 ^ 1 | v22 ^ 1 | v28) & v43;

  return v46 & 1;
}

- (double)topTierAestheticScore
{
  result = self->_topTierAestheticScore;
  if (result == 2.22507386e-308)
  {
    v11[9] = v2;
    v11[10] = v3;
    v6 = [(PGSuggestionSession *)self workingContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PGSuggestionSession_topTierAestheticScore__block_invoke;
    v11[3] = &unk_27888A3B8;
    v11[4] = self;
    [v6 performSynchronousConcurrentGraphReadUsingBlock:v11];

    if (self->_topTierAestheticScore == 2.22507386e-308)
    {
      v7 = [(PGSuggestionSession *)self loggingConnection];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "topTierAestheticScore could not be determined from the graph, computing it from the photoLibrary.", v10, 2u);
      }

      v8 = [(PGSuggestionSession *)self photoLibrary];
      [PGGraphBuilder topTierAestheticScoreForRatio:v8 inPhotoLibrary:0.01];
      self->_topTierAestheticScore = v9;
    }

    return self->_topTierAestheticScore;
  }

  return result;
}

void __44__PGSuggestionSession_topTierAestheticScore__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 infoNode];
  [v4 topTierAestheticScore];
  v6 = v5;

  if (v6 > 0.0)
  {
    *(*(a1 + 32) + 88) = v6;
  }
}

- (id)uncoordinatedSuggestionsWithOptions:(id)a3 progress:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v65 = a4;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v78 = _Block_copy(v65);
  if (v78)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v92[3] >= 0.01)
    {
      v92[3] = Current;
      LOBYTE(info.numer) = 0;
      v78[2](v78, &info, 0.0);
      v7 = *(v96 + 24) | LOBYTE(info.numer);
      *(v96 + 24) = v7;
      if (v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v101 = 802;
          *&v101[4] = 2080;
          *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v67 = MEMORY[0x277CBEBF8];
        goto LABEL_93;
      }
    }
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Starting uncoordinated suggestion generation", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  v9 = loggingConnection;
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  spid = v10;
  v64 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UncoordinatedSuggestionGeneration", "", buf, 2u);
  }

  v66 = v12;

  info = 0;
  mach_timebase_info(&info);
  v62 = mach_absolute_time();
  v13 = MEMORY[0x277D27690];
  v14 = [v5 localToday];
  v15 = [v13 universalDateFromLocalDate:v14];
  universalToday = self->_universalToday;
  self->_universalToday = v15;

  v69 = [(PGSuggestionSession *)self activeSuggestersWithOptions:v5];
  v72 = [v69 count];
  v17 = [v5 maximumNumberOfSuggestions];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = -1;
  }

  v70 = v18;
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v68 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v75 = 0;
  v19 = MEMORY[0x277D86220];
  v67 = MEMORY[0x277CBEBF8];
  while ([v73 count] < v70 && objc_msgSend(v71, "count") < v72)
  {
    context = objc_autoreleasePoolPush();
    if (v78)
    {
      v20 = CFAbsoluteTimeGetCurrent();
      if (v20 - v92[3] >= 0.01)
      {
        v92[3] = v20;
        LOBYTE(v89.numer) = 0;
        v78[2](v78, &v89, 0.5);
        v21 = *(v96 + 24) | LOBYTE(v89.numer);
        *(v96 + 24) = v21;
        if (v21)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v101 = 820;
            *&v101[4] = 2080;
            *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
            _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v22 = 0;
          goto LABEL_76;
        }
      }
    }

    v23 = v19;
    v24 = [v69 objectAtIndexedSubscript:v75];
    v25 = self->_loggingConnection;
    v26 = os_signpost_id_generate(v25);
    v27 = v25;
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "NextSuggestion", "", buf, 2u);
    }

    v77 = v28;

    v19 = v23;
    v89 = 0;
    mach_timebase_info(&v89);
    v29 = mach_absolute_time();
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __68__PGSuggestionSession_uncoordinatedSuggestionsWithOptions_progress___block_invoke;
    v84[3] = &unk_27888A188;
    v85 = v78;
    v86 = &v91;
    v88 = 0x3F847AE147AE147BLL;
    v87 = &v95;
    v30 = [v24 nextSuggestionWithProgress:v84];
    v74 = *(v96 + 24);
    if (v74 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v101 = 828;
        *&v101[4] = 2080;
        *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_74;
    }

    v31 = self->_loggingConnection;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412547;
      *v101 = v24;
      *&v101[8] = 2113;
      *&v101[10] = v30;
      _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "Suggester %@ returned suggestion %{private}@", buf, 0x16u);
    }

    v32 = mach_absolute_time();
    v19 = v23;
    numer = v89.numer;
    denom = v89.denom;
    v35 = v77;
    v36 = v35;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, v26, "NextSuggestion", "", buf, 2u);
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v101 = "NextSuggestion";
      *&v101[8] = 2048;
      *&v101[10] = ((((v32 - v29) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    [v24 setLastSuggestionWasColliding:0];
    if (!v30)
    {
      if (-[PGSuggestionSession supportsRelaxedCollisionRulesForSuggester:](self, "supportsRelaxedCollisionRulesForSuggester:", v24) && ([v68 containsIndex:v75] & 1) == 0)
      {
        v49 = self->_loggingConnection;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v101 = v24;
          _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_DEFAULT, "No more suggestions for suggester %@, trying with relaxed collision rules", buf, 0xCu);
        }

        [v68 addIndex:v75];
        v19 = v23;
        [v24 reset];
      }

      else
      {
        v39 = self->_loggingConnection;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v101 = v24;
          _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_DEFAULT, "No more suggestions for suggester %@", buf, 0xCu);
        }

        [v71 addIndex:v75];
        v19 = v23;
      }

      v30 = 0;
      goto LABEL_73;
    }

    if (([v5 ignoreCollisionsWithExistingSuggestions] & 1) != 0 || !-[PGSuggestionSession _suggestionIsColliding:relaxCollisionRules:](self, "_suggestionIsColliding:relaxCollisionRules:", v30, objc_msgSend(v68, "containsIndex:", v75)))
    {
      if ([v5 ignoreCollisionsWithSameBatchSuggestions])
      {
        v37 = 0;
        goto LABEL_71;
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v38 = v73;
      v40 = [v38 countByEnumeratingWithState:&v80 objects:v99 count:16];
      if (v40)
      {
        v61 = v5;
        v41 = *v81;
        while (2)
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v81 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v80 + 1) + 8 * i);
            v44 = [(PGSuggestionSession *)self reasonForSuggestion:v30 collidingWithSuggestion:v43 relaxCollisionRules:0, v61];
            v45 = self->_loggingConnection;
            if (v44)
            {
              v46 = v45;
              v5 = v61;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = @"Unknown";
                if (v44 <= 3)
                {
                  v47 = off_278884428[v44];
                }

                v48 = v47;
                *buf = 138412547;
                *v101 = v48;
                *&v101[8] = 2113;
                *&v101[10] = v43;
                _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_DEFAULT, "Suggestion did collide (%@) with same batch suggestion %{private}@", buf, 0x16u);
              }

              v19 = v23;
              v37 = 0;
              goto LABEL_64;
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              *v101 = v43;
              _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_DEFAULT, "Suggestion didn't collide with same batch suggestion %{private}@", buf, 0xCu);
            }
          }

          v19 = v23;
          v40 = [v38 countByEnumeratingWithState:&v80 objects:v99 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }

        v37 = 0;
        v5 = v61;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 1;
      v38 = v30;
LABEL_64:
      v30 = 0;
    }

LABEL_71:
    [v24 setLastSuggestionWasColliding:v37];
    if (v30)
    {
      [v73 addObject:v30];
LABEL_73:
      v75 = (v75 + 1) % v72;
LABEL_74:
    }

    v22 = v74 ^ 1;
LABEL_76:
    objc_autoreleasePoolPop(context);
    if ((v22 & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  v50 = mach_absolute_time();
  v51 = info.numer;
  v52 = info.denom;
  v53 = v66;
  v54 = v53;
  if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, spid, "UncoordinatedSuggestionGeneration", "", buf, 2u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v101 = "UncoordinatedSuggestionGeneration";
    *&v101[8] = 2048;
    *&v101[10] = ((((v50 - v62) * v51) / v52) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v55 = self->_loggingConnection;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [v73 count];
    *buf = 134218242;
    *v101 = v56;
    *&v101[8] = 2112;
    *&v101[10] = v73;
    _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_DEFAULT, "Generated %lu suggestions:\n%@", buf, 0x16u);
  }

  if (v78 && (v57 = CFAbsoluteTimeGetCurrent(), v57 - v92[3] >= 0.01) && (v92[3] = v57, LOBYTE(v89.numer) = 0, v78[2](v78, &v89, 1.0), v58 = *(v96 + 24) | LOBYTE(v89.numer), *(v96 + 24) = v58, (v58 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v101 = 899;
      *&v101[4] = 2080;
      *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v67 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v67 = v73;
  }

LABEL_92:

LABEL_93:
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  v59 = *MEMORY[0x277D85DE8];

  return v67;
}

void __68__PGSuggestionSession_uncoordinatedSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2)
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

- (id)coordinatedSuggestionsWithOptions:(id)a3 progress:(id)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v53 = a4;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v63 = _Block_copy(v53);
  if (v63)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v80[3] >= 0.01)
    {
      v80[3] = Current;
      LOBYTE(info.numer) = 0;
      v63[2](v63, &info, 0.0);
      v6 = *(v84 + 24) | LOBYTE(info.numer);
      *(v84 + 24) = v6;
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 684;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v55 = MEMORY[0x277CBEBF8];
        goto LABEL_72;
      }
    }
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Starting coordinated suggestion generation", buf, 2u);
    loggingConnection = self->_loggingConnection;
  }

  v8 = loggingConnection;
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  spid = v9;
  v52 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CoordinatedSuggestionGeneration", "", buf, 2u);
  }

  v54 = v11;

  info = 0;
  mach_timebase_info(&info);
  v50 = mach_absolute_time();
  v12 = MEMORY[0x277D27690];
  v13 = [v58 localToday];
  v14 = [v12 universalDateFromLocalDate:v13];
  universalToday = self->_universalToday;
  self->_universalToday = v14;

  v59 = [(PGSuggestionSession *)self activeSuggestersWithOptions:v58];
  v62 = [v59 count];
  v64 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v57 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v62];
  v56 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0;
  v55 = MEMORY[0x277CBEBF8];
  while ([v64 count] < v62)
  {
    v17 = objc_autoreleasePoolPush();
    if (v63 && (v18 = CFAbsoluteTimeGetCurrent(), v18 - v80[3] >= 0.01) && (v80[3] = v18, LOBYTE(v77.numer) = 0, v63[2](v63, &v77, 0.5), v19 = *(v84 + 24) | LOBYTE(v77.numer), *(v84 + 24) = v19, (v19 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 701;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v64 containsIndex:v16])
      {
        goto LABEL_53;
      }

      v20 = [v59 objectAtIndexedSubscript:v16];
      v21 = self->_loggingConnection;
      v22 = os_signpost_id_generate(v21);
      v23 = v21;
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "NextSuggestion", "", buf, 2u);
      }

      v77 = 0;
      mach_timebase_info(&v77);
      v25 = mach_absolute_time();
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke;
      v72[3] = &unk_27888A188;
      v73 = v63;
      v74 = &v79;
      v76 = 0x3F847AE147AE147BLL;
      v75 = &v83;
      v26 = [v20 nextSuggestionWithProgress:v72];
      v60 = *(v84 + 24);
      if (v60 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 711;
          *&buf[8] = 2080;
          *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v27 = self->_loggingConnection;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412547;
          *&buf[4] = v20;
          *&buf[12] = 2113;
          *&buf[14] = v26;
          _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEFAULT, "Suggester %@ returned suggestion %{private}@", buf, 0x16u);
        }

        v28 = mach_absolute_time();
        numer = v77.numer;
        denom = v77.denom;
        v31 = v24;
        v32 = v31;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, v22, "NextSuggestion", "", buf, 2u);
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "NextSuggestion";
          *&buf[12] = 2048;
          *&buf[14] = ((((v28 - v25) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        [v20 setLastSuggestionWasColliding:0];
        if (v26)
        {
          if (([v58 ignoreCollisionsWithExistingSuggestions] & 1) != 0 || !-[PGSuggestionSession _suggestionIsColliding:relaxCollisionRules:](self, "_suggestionIsColliding:relaxCollisionRules:", v26, objc_msgSend(v56, "containsIndex:", v16)))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v88 = 1;
            if (([v58 ignoreCollisionsWithSameBatchSuggestions] & 1) == 0 && objc_msgSend(v57, "count"))
            {
              v34 = objc_alloc_init(MEMORY[0x277CCAB58]);
              v68[0] = MEMORY[0x277D85DD0];
              v68[1] = 3221225472;
              v68[2] = __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke_274;
              v68[3] = &unk_27887FCC8;
              v68[4] = self;
              v69 = v26;
              v35 = v34;
              v70 = v35;
              v71 = buf;
              [v57 enumerateKeysAndObjectsUsingBlock:v68];
              if (*(*&buf[8] + 24) == 1 && [v35 count])
              {
                v65[0] = MEMORY[0x277D85DD0];
                v65[1] = 3221225472;
                v65[2] = __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke_276;
                v65[3] = &unk_278889B40;
                v66 = v57;
                v67 = v64;
                [v35 enumerateIndexesUsingBlock:v65];
              }
            }

            if (*(*&buf[8] + 24) == 1)
            {
              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
              [v57 setObject:v26 forKeyedSubscript:v36];

              [v64 addIndex:v16];
            }

            _Block_object_dispose(buf, 8);
            v33 = 0;
          }

          else
          {
            v33 = 1;
          }

          [v20 setLastSuggestionWasColliding:v33];
        }

        else if (-[PGSuggestionSession supportsRelaxedCollisionRulesForSuggester:](self, "supportsRelaxedCollisionRulesForSuggester:", v20) && ([v56 containsIndex:v16] & 1) == 0)
        {
          [v56 addIndex:v16];
          [v20 reset];
        }

        else
        {
          [v64 addIndex:v16];
        }
      }

      if ((v60 & 1) == 0)
      {
LABEL_53:
        v16 = (v16 + 1) % v62;
        v37 = 1;
        goto LABEL_54;
      }
    }

    v37 = 0;
LABEL_54:
    objc_autoreleasePoolPop(v17);
    if ((v37 & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v38 = [v57 allValues];
  v39 = mach_absolute_time();
  v40 = info.numer;
  v41 = info.denom;
  v42 = v54;
  v43 = v42;
  if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CoordinatedSuggestionGeneration", "", buf, 2u);
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "CoordinatedSuggestionGeneration";
    *&buf[12] = 2048;
    *&buf[14] = ((((v39 - v50) * v40) / v41) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v44 = self->_loggingConnection;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v38 count];
    *buf = 134218242;
    *&buf[4] = v45;
    *&buf[12] = 2112;
    *&buf[14] = v38;
    _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_DEFAULT, "Generated %lu suggestions:\n%@", buf, 0x16u);
  }

  if (v63 && (v46 = CFAbsoluteTimeGetCurrent(), v46 - v80[3] >= 0.01) && (v80[3] = v46, LOBYTE(v77.numer) = 0, v63[2](v63, &v77, 1.0), v47 = *(v84 + 24) | LOBYTE(v77.numer), *(v84 + 24) = v47, (v47 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 794;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v55 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v55 = v38;
  }

LABEL_71:
LABEL_72:
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  v48 = *MEMORY[0x277D85DE8];

  return v55;
}

void __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2)
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

void __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke_274(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) reasonForSuggestion:*(a1 + 40) collidingWithSuggestion:v8 relaxCollisionRules:0];
  v10 = *(a1 + 32);
  v11 = v10[5];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      v13 = v11;
      if (v9 > 3)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = off_278884428[v9];
      }

      v15 = v14;
      v18 = 138412547;
      v19 = v15;
      v20 = 2113;
      v21 = v8;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "Suggestion did collide (%@) with same batch suggestion %{private}@", &v18, 0x16u);

      v10 = *(a1 + 32);
    }

    v16 = [v10 bestSuggestionBetween:v8 and:*(a1 + 40)];
    if (v16 == *(a1 + 40))
    {
      [*(a1 + 48) addIndex:{objc_msgSend(v7, "unsignedIntegerValue")}];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else if (v12)
  {
    v18 = 138477827;
    v19 = v8;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "Suggestion didn't collide with same batch suggestion %{private}@", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PGSuggestionSession_coordinatedSuggestionsWithOptions_progress___block_invoke_276(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v4 removeObjectForKey:v5];

  v6 = *(a1 + 40);

  return [v6 removeIndex:a2];
}

- (id)activeSuggestersWithOptions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGSuggestionSession *)self suggesterClasses];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = loggingConnection;
    v8 = [v5 count];
    profile = self->_profile;
    *buf = 134218240;
    v31 = v8;
    v32 = 2048;
    v33 = profile;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_DEFAULT, "Querying %lu Suggesters for profile %lu", buf, 0x16u);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v26;
    *&v12 = 138412290;
    v23 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ([(PGSuggestionSession *)self suggesterClass:v16 supportsOptions:v4])
        {
          v18 = [v16 suggesterWithSession:self];
          v19 = self->_loggingConnection;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v31 = v16;
            v32 = 2112;
            v33 = v18;
            _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "Querying Suggester of class %@ - %@", buf, 0x16u);
          }

          [v18 startSuggestingWithOptions:{v4, v23}];
          [v24 addObject:v18];
        }

        else
        {
          v20 = self->_loggingConnection;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v23;
            v31 = v16;
            _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_DEFAULT, "Suggester class %@ doesn't support passed options", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v6 = a4;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v53 = _Block_copy(v6);
  v49 = v6;
  if (v53)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v72[3] >= 0.01)
    {
      v72[3] = Current;
      v70 = 0;
      v53[2](v53, &v70, 0.0);
      v8 = *(v76 + 24) | v70;
      *(v76 + 24) = v8;
      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v80 = 597;
          *&v80[4] = 2080;
          *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
        goto LABEL_60;
      }
    }
  }

  v10 = MEMORY[0x277D27690];
  v11 = [v52 localToday];
  v12 = [v10 universalDateFromLocalDate:v11];
  universalToday = self->_universalToday;
  self->_universalToday = v12;

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [(PGSuggestionSession *)self suggesterClasses];
  v15 = self->_loggingConnection;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 count];
    profile = self->_profile;
    *buf = 134218240;
    *v80 = v16;
    *&v80[8] = 2048;
    *&v80[10] = profile;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_DEFAULT, "Querying %lu Suggesters for profile %lu", buf, 0x16u);
  }

  v18 = [v14 count];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v14;
  v19 = [obj countByEnumeratingWithState:&v66 objects:v83 count:16];
  if (!v19)
  {
    goto LABEL_34;
  }

  v20 = 0.5 / v18;
  v21 = *v67;
  v22 = 0.0;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v67 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v66 + 1) + 8 * i);
      if (v53)
      {
        v25 = CFAbsoluteTimeGetCurrent();
        if (v25 - v72[3] >= 0.01)
        {
          v72[3] = v25;
          v70 = 0;
          v53[2](v53, &v70, v22);
          v26 = *(v76 + 24) | v70;
          *(v76 + 24) = v26;
          if (v26)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v80 = 610;
              *&v80[4] = 2080;
              *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_55:

            goto LABEL_56;
          }
        }
      }

      v27 = objc_autoreleasePoolPush();
      if ([(PGSuggestionSession *)self suggesterClass:v24 supportsOptions:v52])
      {
        v28 = [v24 suggesterWithSession:self];
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v80 = v24;
          *&v80[8] = 2112;
          *&v80[10] = v28;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Querying Suggester of class %@ - %@", buf, 0x16u);
        }

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __55__PGSuggestionSession_suggestionsWithOptions_progress___block_invoke;
        v59[3] = &unk_278886858;
        v60 = v53;
        v61 = &v71;
        v64 = v22;
        v65 = v20;
        v63 = 0x3F847AE147AE147BLL;
        v62 = &v75;
        v30 = [v28 suggestionsWithOptions:v52 progress:v59];
        v31 = *(v76 + 24);
        if (v31 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v80 = 623;
            *&v80[4] = 2080;
            *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v33 = self->_loggingConnection;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v30 count];
            *buf = 134218498;
            *v80 = v34;
            *&v80[8] = 2112;
            *&v80[10] = v24;
            v81 = 2112;
            v82 = v28;
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_DEFAULT, "Added %lu suggestions from suggester of class %@ - %@", buf, 0x20u);
          }

          [v50 addObjectsFromArray:v30];
        }

        if (v31)
        {
          v35 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v32 = self->_loggingConnection;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v80 = v24;
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_DEFAULT, "Suggester class %@ doesn't support passed options", buf, 0xCu);
        }
      }

      v35 = 1;
LABEL_31:
      objc_autoreleasePoolPop(v27);
      if (!v35)
      {
        goto LABEL_55;
      }

      v22 = v20 + v22;
    }

    v19 = [obj countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_34:

  if (!v53 || (v36 = CFAbsoluteTimeGetCurrent(), v36 - v72[3] < 0.01) || (v72[3] = v36, v70 = 0, v53[2](v53, &v70, 0.5), v37 = *(v76 + 24) | v70, *(v76 + 24) = v37, (v37 & 1) == 0))
  {
    v38 = self->_loggingConnection;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v50 count];
      *buf = 134217984;
      *v80 = v39;
      _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_DEFAULT, "Got %lu suggestions in total, running elections.", buf, 0xCu);
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__PGSuggestionSession_suggestionsWithOptions_progress___block_invoke_272;
    v54[3] = &unk_27888A188;
    v40 = v53;
    v55 = v40;
    v56 = &v71;
    v57 = &v75;
    v58 = 0x3F847AE147AE147BLL;
    v41 = [(PGSuggestionSession *)self electedSuggestionsFromSuggestions:v50 options:v52 progress:v54];
    if (*(v76 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v80 = 644;
        *&v80[4] = 2080;
        *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
        v42 = MEMORY[0x277D86220];
LABEL_44:
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v43 = self->_loggingConnection;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v41 count];
        *buf = 134217984;
        *v80 = v44;
        _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_DEFAULT, "Elected results: %lu", buf, 0xCu);
      }

      if (!v53 || (v45 = CFAbsoluteTimeGetCurrent(), v45 - v72[3] < 0.01) || (v72[3] = v45, v70 = 0, v40[2](v40, &v70, 1.0), v46 = *(v76 + 24) | v70, *(v76 + 24) = v46, (v46 & 1) == 0))
      {
        v9 = v41;
        goto LABEL_58;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v80 = 647;
        *&v80[4] = 2080;
        *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
        v42 = MEMORY[0x277D86220];
        goto LABEL_44;
      }
    }

    v9 = MEMORY[0x277CBEBF8];
LABEL_58:

    goto LABEL_59;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v80 = 637;
    *&v80[4] = 2080;
    *&v80[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_56:
  v9 = MEMORY[0x277CBEBF8];
LABEL_59:

LABEL_60:
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  v47 = *MEMORY[0x277D85DE8];

  return v9;
}

void __55__PGSuggestionSession_suggestionsWithOptions_progress___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __55__PGSuggestionSession_suggestionsWithOptions_progress___block_invoke_272(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)suggesterClass:(Class)a3 supportsOptions:(id)a4
{
  v5 = a4;
  v6 = [v5 suggestionTypeWhitelist];
  v7 = [v5 suggestionTypeBlocklist];
  if (v6 | v7)
  {
    v8 = [(objc_class *)a3 suggestionTypes];
    if (v6 && ![v6 pg_intersectsIndexSet:v8] || v7 && (objc_msgSend(v7, "containsIndexes:", v8) & 1) != 0)
    {
      v9 = 0;
      goto LABEL_18;
    }
  }

  v8 = [v5 suggestionSubtypeWhitelist];
  v10 = [v5 suggestionSubtypeBlocklist];
  if (v8 | v10)
  {
    v11 = [(objc_class *)a3 suggestionSubtypes];
    v9 = (!v8 || [v8 pg_intersectsIndexSet:v11]) && (!v10 || !objc_msgSend(v10, "containsIndexes:", v11));
  }

  else
  {
    v9 = 1;
  }

LABEL_18:
  return v9;
}

- (id)suggesterClasses
{
  v3 = objc_opt_class();
  profile = self->_profile;

  return [v3 suggesterClassesWithProfile:profile];
}

- (id)electedSuggestionsFromSuggestions:(id)a3 options:(id)a4 progress:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = _Block_copy(a5);
  v11 = 0.0;
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v47) = 0;
      v10[2](v10, &v47, 0.0);
      if (v47 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v53 = 492;
          *&v53[4] = 2080;
          *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v13 = MEMORY[0x277CBEBF8];
        goto LABEL_54;
      }

      v11 = Current;
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [v8 count];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = v8;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = v17;
  v19 = 1.0 / v15;
  v20 = *v49;
  v21 = 0.0;
  v46 = v14;
  while (2)
  {
    v22 = 0;
    do
    {
      if (*v49 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(&v48 + 1) + 8 * v22);
      if (v10)
      {
        v24 = CFAbsoluteTimeGetCurrent();
        if (v24 - v11 >= 0.01)
        {
          LOBYTE(v47) = 0;
          v10[2](v10, &v47, v21);
          if (v47)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v53 = 499;
              *&v53[4] = 2080;
              *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v13 = MEMORY[0x277CBEBF8];
            goto LABEL_52;
          }

          v11 = v24;
        }
      }

      v47 = 0;
      if ([v9 ignoreCollisionsWithExistingSuggestions])
      {
LABEL_18:
        if (([v9 ignoreCollisionsWithSameBatchSuggestions] & 1) != 0 || (-[PGSuggestionSession anySuggestionCollidingWithSuggestion:inSuggestions:relaxCollisionRules:collisionReason:](self, "anySuggestionCollidingWithSuggestion:inSuggestions:relaxCollisionRules:collisionReason:", v23, v14, 0, &v47), (v25 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          [v14 addObject:v23];
          goto LABEL_37;
        }

        v26 = v25;
        loggingConnection = self->_loggingConnection;
        if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        v28 = v47;
        v29 = loggingConnection;
        v30 = @"Unknown";
        if (v28 <= 3)
        {
          v30 = off_278884428[v28];
        }

        v31 = v30;
        *buf = 138412547;
        *v53 = v31;
        *&v53[8] = 2113;
        *&v53[10] = v26;
        v32 = v29;
        v33 = "Suggestion did collide (%@) with same batch suggestion %{private}@";
        goto LABEL_35;
      }

      v34 = [(PGSuggestionSession *)self anySuggestionCollidingWithSuggestion:v23 inSuggestions:self->_existingSuggestions relaxCollisionRules:0 collisionReason:&v47];
      if (v34)
      {
        v26 = v34;
        v35 = self->_loggingConnection;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = v47;
          v29 = v35;
          v37 = @"Unknown";
          if (v36 <= 3)
          {
            v37 = off_278884428[v36];
          }

          v31 = v37;
          *buf = 138412547;
          *v53 = v31;
          *&v53[8] = 2113;
          *&v53[10] = v26;
          v32 = v29;
          v33 = "Suggestion did collide (%@) with existing suggestion %{private}@";
LABEL_35:
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, v33, buf, 0x16u);

          v14 = v46;
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      v38 = [(PGSuggestionSession *)self anySuggestionCollidingWithSuggestion:v23 inSuggestions:self->_deniedSuggestions relaxCollisionRules:0 collisionReason:&v47];
      if (v38)
      {
        v26 = v38;
        v39 = self->_loggingConnection;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = v47;
          v29 = v39;
          v41 = @"Unknown";
          if (v40 <= 3)
          {
            v41 = off_278884428[v40];
          }

          v31 = v41;
          *buf = 138412547;
          *v53 = v31;
          *&v53[8] = 2113;
          *&v53[10] = v26;
          v32 = v29;
          v33 = "Suggestion did collide (%@) with denied suggestion %{private}@";
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_37;
      }

      if (![(PGSuggestionSession *)self suggestion:v23 collidesWithMemories:self->_collidableMemories])
      {
        goto LABEL_18;
      }

LABEL_37:
      v21 = v19 + v21;
      ++v22;
    }

    while (v18 != v22);
    v42 = [v16 countByEnumeratingWithState:&v48 objects:v54 count:16];
    v18 = v42;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_42:

  if (v10 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (LOBYTE(v47) = 0, v10[2](v10, &v47, 1.0), v47))
  {
    v8 = v45;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v53 = 544;
      *&v53[4] = 2080;
      *&v53[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/PGSuggestionSession.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v13 = v14;
LABEL_52:
    v8 = v45;
  }

LABEL_54:
  v43 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)suggestion:(id)a3 collidesWithMemories:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 universalStartDate];
  v8 = [v5 universalEndDate];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 cls_universalStartDate];
        v15 = [v13 cls_universalEndDate];
        if ([v14 compare:v8] != 1 && objc_msgSend(v15, "compare:", v7) != -1)
        {

          LOBYTE(v10) = 1;
          goto LABEL_12;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)suggestionsByCollisionReasonCollidingWithSuggestion:(id)a3 inSuggestions:(id)a4 relaxCollisionRules:(BOOL)a5
{
  v24 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(PGSuggestionSession *)self reasonForSuggestion:v7 collidingWithSuggestion:v13 relaxCollisionRules:v24];
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
          v18 = [v23 objectForKeyedSubscript:v17];

          if (!v18)
          {
            v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
            [v23 setObject:v18 forKeyedSubscript:v19];
          }

          [v18 addObject:v13];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)supportsRelaxedCollisionRulesForSuggester:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)deniedSuggestion:(id)a3 collidesWithSuggestion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 state] == 4)
  {
    v7 = [v6 universalStartDate];
    v8 = [v7 dateByAddingTimeInterval:-120.0];

    v9 = [v6 universalEndDate];
    v10 = [v9 dateByAddingTimeInterval:120.0];

    v11 = [v5 universalStartDate];
    v12 = [v5 universalEndDate];
    if ([v11 compare:v10] == 1)
    {
      v13 = 0;
    }

    else if ([v12 compare:v8] == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)outstanderSuggestion:(id)a3 collidesWithSuggestion:(id)a4 relaxCollisionRules:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 creationDate];
  universalToday = v10;
  if (!v10)
  {
    universalToday = self->_universalToday;
  }

  v12 = universalToday;

  v13 = [v9 creationDate];
  v14 = v13;
  if (!v13)
  {
    v14 = self->_universalToday;
  }

  v15 = v14;

  [(NSDate *)v12 timeIntervalSinceDate:v15];
  v17 = v16;

  v18 = fabs(v17);
  if (v18 >= 15552000.0 || v18 >= 2592000.0 && v5)
  {
    v19 = 0;
  }

  else
  {
    if (v18 >= 2592000.0 || v5)
    {
      v21 = 3600.0;
    }

    else
    {
      v21 = 43200.0;
    }

    v22 = [v8 universalStartDate];
    v23 = [v22 dateByAddingTimeInterval:-v21];

    v24 = [v8 universalEndDate];
    v25 = [v24 dateByAddingTimeInterval:v21];

    v26 = [v9 universalStartDate];
    v27 = [v9 universalEndDate];
    v19 = [v26 compare:v25] != 1 && objc_msgSend(v27, "compare:", v23) != -1;
  }

  return v19;
}

- (unint64_t)singleAssetSuggestion:(id)a3 collidesWithSuggestion:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 creationDate];
  universalToday = v8;
  if (!v8)
  {
    universalToday = self->_universalToday;
  }

  v10 = universalToday;

  v11 = [v7 creationDate];
  v12 = v11;
  if (!v11)
  {
    v12 = self->_universalToday;
  }

  v13 = v12;

  [(NSDate *)v10 timeIntervalSinceDate:v13];
  v15 = fabs(v14);
  if (v15 >= 2592000.0)
  {
    v23 = 0;
  }

  else
  {
    v16 = dbl_22F78BF80[v15 < 604800.0];
    v17 = [v6 universalStartDate];
    v18 = [v17 dateByAddingTimeInterval:-v16];

    v19 = [v6 universalEndDate];
    v20 = [v19 dateByAddingTimeInterval:v16];

    v21 = [v7 universalStartDate];
    v22 = [v7 universalEndDate];
    if ([v21 compare:v20] == 1 || objc_msgSend(v22, "compare:", v18) == -1)
    {
      if (v15 < 259200.0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        context = objc_autoreleasePoolPush();
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v24 = [v6 features];
        v37 = [v24 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v37)
        {
          v25 = *v49;
          v41 = v20;
          v42 = v18;
          v39 = v24;
          v40 = v22;
          v36 = *v49;
          do
          {
            v26 = 0;
            do
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(v24);
              }

              v38 = v26;
              v27 = *(*(&v48 + 1) + 8 * v26);
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v28 = [v7 features];
              v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v45;
                while (2)
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v45 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    if ([v27 collidesWithFeature:*(*(&v44 + 1) + 8 * i)])
                    {

                      v23 = 2;
                      v20 = v41;
                      v18 = v42;
                      v24 = v39;
                      v22 = v40;
                      goto LABEL_34;
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              v26 = v38 + 1;
              v20 = v41;
              v18 = v42;
              v24 = v39;
              v22 = v40;
              v25 = v36;
            }

            while (v38 + 1 != v37);
            v33 = [v39 countByEnumeratingWithState:&v48 objects:v53 count:16];
            v25 = v36;
            v23 = 0;
            v37 = v33;
          }

          while (v33);
        }

        else
        {
          v23 = 0;
        }

LABEL_34:

        objc_autoreleasePoolPop(context);
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 1;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)setExistingSuggestions:(id)a3
{
  v4 = a3;
  if (self->_profile == 1)
  {
    v5 = [PGSuggestionNotificationProfile alloc];
    v6 = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
    v7 = [(PGSuggestionNotificationProfile *)v5 initWithExistingSuggestions:v4 serviceManager:v6];
    notificationProfile = self->_notificationProfile;
    self->_notificationProfile = v7;
  }

  existingSuggestions = self->_existingSuggestions;
  self->_existingSuggestions = v4;
}

- (PGSuggestionSession)initWithProfile:(unsigned __int8)a3 workingContext:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PGSuggestionSession;
  v8 = [(PGSuggestionSession *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_profile = a3;
    objc_storeStrong(&v8->_workingContext, a4);
    v10 = objc_alloc(MEMORY[0x277D3C790]);
    v11 = [v7 photoLibrary];
    v12 = [v10 initWithPhotoLibrary:v11];
    curationContext = v9->_curationContext;
    v9->_curationContext = v12;

    v9->_topTierAestheticScore = 2.22507386e-308;
  }

  return v9;
}

void __63__PGSuggestionSession_availableSuggestionTypeInfosWithProfile___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PHSuggestionStringWithType();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PGSuggestionSession_availableSuggestionTypeInfosWithProfile___block_invoke_2;
  v7[3] = &unk_27887FCA0;
  v8 = v4;
  v10 = a2;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v4;
  [v5 enumerateIndexesUsingBlock:v7];
}

void __63__PGSuggestionSession_availableSuggestionTypeInfosWithProfile___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = PHSuggestionStringWithSubtype();
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", *(a1 + 32), v4];
  v11[0] = v5;
  v10[0] = @"uuid";
  v10[1] = @"type";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v11[1] = v6;
  v10[2] = @"subtype";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)suggesterClassesWithProfile:(unsigned __int8)a3
{
  v3 = 0;
  v32[6] = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v4 = MEMORY[0x277CBEA60];
        v5 = &v15;
        v6 = 5;
        goto LABEL_21;
      }

      if (a3 != 7)
      {
        goto LABEL_22;
      }

      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = &v13;
      goto LABEL_14;
    }

    if (a3 != 4)
    {
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v4 = MEMORY[0x277CBEA60];
      v5 = &v20;
LABEL_16:
      v6 = 6;
      goto LABEL_21;
    }

    v31 = objc_opt_class();
    v4 = MEMORY[0x277CBEA60];
    v5 = &v31;
LABEL_18:
    v6 = 1;
    goto LABEL_21;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = MEMORY[0x277CBEB18];
      v29[0] = objc_opt_class();
      v29[1] = objc_opt_class();
      v29[2] = objc_opt_class();
      v29[3] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
      v3 = [v7 arrayWithArray:v8];

      v28[0] = objc_opt_class();
      v28[1] = objc_opt_class();
      v28[2] = objc_opt_class();
      v28[3] = objc_opt_class();
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
      [v3 addObjectsFromArray:v9];

      v27[0] = objc_opt_class();
      v27[1] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v3 addObjectsFromArray:v10];

      goto LABEL_22;
    }

    v26 = objc_opt_class();
    v4 = MEMORY[0x277CBEA60];
    v5 = &v26;
    goto LABEL_18;
  }

  if (!a3)
  {
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v32[4] = objc_opt_class();
    v32[5] = objc_opt_class();
    v4 = MEMORY[0x277CBEA60];
    v5 = v32;
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    goto LABEL_22;
  }

  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v4 = MEMORY[0x277CBEA60];
  v5 = v30;
LABEL_14:
  v6 = 2;
LABEL_21:
  v3 = [v4 arrayWithObjects:v5 count:{v6, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
LABEL_22:
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

@end