@interface PLInitialSuggestionRanker
+ (BOOL)_candidateHasLastUsedDateOfToday:(id)a3 calendar:(id)a4 todayDateComponents:(id)a5 calendarUnits:(unint64_t)a6;
+ (id)_candidateBucketsForCandidates:(id)a3 suggestionLimit:(unint64_t)a4 maxNumberOfSuggestionsPerContentType:(unint64_t)a5;
+ (id)rankSearchSuggestionCandidates:(id)a3 suggestionLimit:(unint64_t)a4 maxNumberOfSuggestionsPerContentType:(unint64_t)a5;
+ (id)trimmedListCandidatesOfCandidatesFromCandidates:(id)a3 maxNumberOfSuggestionsPerContentType:(unint64_t)a4;
+ (unint64_t)candidateSimilarityToOtherCandidate:(id)a3 otherCandidate:(id)a4;
+ (void)_populateBuckets:(id)a3 candidates:(id)a4 shouldTryToExcludeCandidatesUsedToday:(BOOL)a5 suggestionLimit:(unint64_t)a6;
@end

@implementation PLInitialSuggestionRanker

+ (void)_populateBuckets:(id)a3 candidates:(id)a4 shouldTryToExcludeCandidatesUsedToday:(BOOL)a5 suggestionLimit:(unint64_t)a6
{
  v7 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v7)
  {
    v12 = [v10 count] - a6;
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E695DEE8] currentCalendar];
  [MEMORY[0x1E695DF00] date];
  v28 = v31 = v13;
  v30 = [v13 components:28 fromDate:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = [v19 suggestionTemplate];
        v21 = [v20 templateContentType];

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
        v23 = [v9 objectForKeyedSubscript:v22];

        if (v23)
        {
          [v19 dateLastUsed];
          v25 = v24 == 0.0 || v12 == 0;
          if (v25 || ([a1 _candidateHasLastUsedDateOfToday:v19 calendar:v31 todayDateComponents:v30 calendarUnits:28] & 1) == 0)
          {
            [v23 addObject:v19];
          }

          else
          {
            v26 = PLSearchBackendInitialSuggestionsGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v37 = v19;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Excluding candidate %@ from initial suggestions because it was already used today.", buf, 0xCu);
            }

            --v12;
          }
        }

        else
        {
          v27 = PLSearchBackendInitialSuggestionsGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v37 = v21;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Missing bucket for content type %tu during initial suggestion ranking, no suggestions for this content type will be generated.", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v16);
  }
}

+ (id)_candidateBucketsForCandidates:(id)a3 suggestionLimit:(unint64_t)a4 maxNumberOfSuggestionsPerContentType:(unint64_t)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = v8;
  v10 = [v8 count];
  for (i = 1; i != 10; ++i)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v28 setObject:v12 forKeyedSubscript:v13];
  }

  [a1 _populateBuckets:v28 candidates:v27 shouldTryToExcludeCandidatesUsedToday:v10 > a4 suggestionLimit:a4];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v10 > a4)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __113__PLInitialSuggestionRanker__candidateBucketsForCandidates_suggestionLimit_maxNumberOfSuggestionsPerContentType___block_invoke;
    v34[3] = &unk_1E7578150;
    v34[4] = &v35;
    [v28 enumerateKeysAndObjectsUsingBlock:v34];
    if (v36[3] < a4)
    {
      [v28 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_114867];
      [a1 _populateBuckets:v28 candidates:v27 shouldTryToExcludeCandidatesUsedToday:0 suggestionLimit:a4];
    }
  }

  v14 = 9;
  do
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v16 = [v28 objectForKeyedSubscript:v15];

    if ([v16 count])
    {
      [v9 addObject:v16];
    }

    --v14;
  }

  while (v14);
  v32 = 0u;
  v33 = 0u;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = 25;
  }

  v30 = 0uLL;
  v31 = 0uLL;
  obj = v9;
  v18 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * j);
        v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateLastUsed" ascending:1];
        v39[0] = v22;
        v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rankingScore" ascending:0];
        v39[1] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
        [v21 sortUsingDescriptors:v24];

        if ([v21 count] > v17)
        {
          v25 = [v21 subarrayWithRange:{0, v17}];
          [v21 removeAllObjects];
          [v21 addObjectsFromArray:v25];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v18);
  }

  _Block_object_dispose(&v35, 8);

  return obj;
}

uint64_t __113__PLInitialSuggestionRanker__candidateBucketsForCandidates_suggestionLimit_maxNumberOfSuggestionsPerContentType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

+ (BOOL)_candidateHasLastUsedDateOfToday:(id)a3 calendar:(id)a4 todayDateComponents:(id)a5 calendarUnits:(unint64_t)a6
{
  v9 = a5;
  v10 = MEMORY[0x1E695DF00];
  v11 = a4;
  [a3 dateLastUsed];
  v12 = [v10 dateWithTimeIntervalSince1970:?];
  v13 = [v11 components:a6 fromDate:v12];

  v14 = [v13 month];
  v17 = 0;
  if (v14 == [v9 month])
  {
    v15 = [v13 day];
    if (v15 == [v9 day])
    {
      v16 = [v13 year];
      if (v16 == [v9 year])
      {
        v17 = 1;
      }
    }
  }

  return v17;
}

+ (id)trimmedListCandidatesOfCandidatesFromCandidates:(id)a3 maxNumberOfSuggestionsPerContentType:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a1 _candidateBucketsForCandidates:a3 suggestionLimit:-1 maxNumberOfSuggestionsPerContentType:a4];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObjectsFromArray:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];

  return v11;
}

+ (unint64_t)candidateSimilarityToOtherCandidate:(id)a3 otherCandidate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 suggestionTemplate];
  v8 = [v6 suggestionTemplate];
  v9 = [v7 suggestionTemplateKey];
  v51 = [v8 suggestionTemplateKey];
  v52 = v9;
  if ([v9 isEqualToString:?])
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 templateType];
  if (v11 == [v8 templateType])
  {
    ++v10;
  }

  v53 = v7;
  v12 = [v7 templateDateType];
  v13 = [v8 templateDateType];
  if (v12 != v13 || (v12 | v13) == 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 | 4;
  }

  v16 = [v5 firstRankedGroup];
  v17 = [v16 group];
  v18 = [v17 groupId];

  v19 = [v5 secondRankedGroup];
  v20 = [v19 group];
  v21 = [v20 groupId];

  v22 = [v6 firstRankedGroup];
  v23 = [v22 group];
  v24 = [v23 groupId];

  v25 = [v6 secondRankedGroup];
  v26 = [v25 group];
  v27 = [v26 groupId];

  if (v18 | v24 && v18 == v24 || (v21 | v24 ? (v28 = v21 == v24) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), v18 | v27 ? (v30 = v18 == v27) : (v30 = 0), !v30 ? (v31 = 0) : (v31 = 1), v21 == v27 ? (v32 = (v21 | v27) == 0) : (v32 = 1), !v32 || (v31 & 1) != 0 || v29))
  {
    v15 |= 8uLL;
  }

  v33 = [v5 firstRankedGroup];
  v34 = [v33 group];
  v35 = [v34 category];

  v36 = [v5 secondRankedGroup];
  v37 = [v36 group];
  v38 = [v37 category];

  v39 = [v6 firstRankedGroup];
  v40 = [v39 group];
  v41 = [v40 category];

  v42 = [v6 secondRankedGroup];
  v43 = [v42 group];
  v44 = [v43 category];

  if (v35 | v41 && v35 == v41 || (v38 | v41 ? (v45 = v38 == v41) : (v45 = 0), !v45 ? (v46 = 0) : (v46 = 1), v35 | v44 ? (v47 = v44 == v35) : (v47 = 0), !v47 ? (v48 = 0) : (v48 = 1), v38 == v44 ? (v49 = (v38 | v44) == 0) : (v49 = 1), !v49 || (v48 & 1) != 0 || v46))
  {
    v15 |= 2uLL;
  }

  return v15;
}

+ (id)rankSearchSuggestionCandidates:(id)a3 suggestionLimit:(unint64_t)a4 maxNumberOfSuggestionsPerContentType:(unint64_t)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v53 = a3;
  if ([v53 count])
  {
    v7 = PLPhotosSearchGetLog();
    v8 = os_signpost_id_generate(v7);

    v9 = v7;
    v10 = v9;
    spid = v8;
    v51 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLSearchBackendInitialSuggestionIndexRankingSignpost", "", buf, 2u);
    }

    v52 = v10;

    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [a1 _candidateBucketsForCandidates:v53 suggestionLimit:a4 maxNumberOfSuggestionsPerContentType:a5];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v11 = v65 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v65;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v64 + 1) + 8 * i) count];
          if (v13 <= v16)
          {
            v13 = v16;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v12);
      v17 = v13 - 1;
    }

    else
    {
      v17 = -1;
    }

    v54 = v17;

    v19 = 2 * [v11 count];
    if (v19 < a4)
    {
      v20 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v69 = v19;
        v70 = 2112;
        v71 = v11;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Adjusting suggestion limit to %tu due to limited initial suggestion candidates: %@.", buf, 0x16u);
      }

      a4 = v19;
    }

    v21 = [v53 count];
    v55 = 0;
    v59 = 0;
    v60 = 0;
    v22 = 0;
    v63 = 0;
    if (a4 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = a4;
    }

    v57 = v23;
    v58 = 0;
    v24 = -1;
    v25 = 0.0;
LABEL_25:
    if (!(([v61 count] >= v57) | v55 & 1))
    {
      v26 = 0;
      v55 = 0;
      while (1)
      {
        if (v26 >= [v11 count])
        {
          goto LABEL_25;
        }

        v27 = [v11 objectAtIndexedSubscript:v26];
        if (v63 >= [v27 count])
        {
          ++v22;
          goto LABEL_50;
        }

        v28 = [v27 objectAtIndexedSubscript:?];
        if ([v62 containsObject:v28])
        {
          v29 = PLSearchBackendInitialSuggestionsGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v69 = v28;
            v70 = 2112;
            v71 = v61;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Unexpectedly found duplicate candidate suggestions, discarding candidate: %@, for ranked candidates: %@", buf, 0x16u);
          }

          ++v22;
          goto LABEL_49;
        }

        if ([v61 count])
        {
          break;
        }

        [v61 addObject:v28];
        [v62 addObject:v28];
        ++v58;
LABEL_49:

LABEL_50:
        if (v26 != [v11 count] - 1)
        {
          goto LABEL_63;
        }

        if (v24 == -1)
        {
          v42 = 0;
        }

        else
        {
          v40 = [v11 objectAtIndexedSubscript:v24];
          v41 = [v40 objectAtIndexedSubscript:v63];
          if (([v62 containsObject:v41] & 1) != 0 || objc_msgSend(v61, "count") >= v57)
          {
            v42 = 0;
          }

          else
          {
            [v61 addObject:v41];
            [v62 addObject:v41];
            ++v58;
            v42 = 1;
          }
        }

        v43 = [v11 count];
        v25 = 0.0;
        if ((v42 & 1) != 0 || v43 != v22 && v58 != v43 - v22)
        {
          v59 = 0;
          v60 = 0;
          v22 = 0;
LABEL_62:
          v24 = -1;
          goto LABEL_63;
        }

        if (v63 < v54)
        {
          v59 = 0;
          v60 = 0;
          v58 = 0;
          v22 = 0;
          ++v63;
          goto LABEL_62;
        }

        v59 = 0;
        v60 = 0;
        v22 = 0;
        v24 = -1;
        v55 = 1;
LABEL_63:

        ++v26;
      }

      v30 = [v61 lastObject];
      v31 = [a1 candidateSimilarityToOtherCandidate:v28 otherCandidate:v30];
      v32 = [v28 suggestionTemplate];
      [v28 dateLastUsed];
      if (v24 != -1)
      {
        v34 = v33;
        if (v60 == v31 || v31 <= 1)
        {
          v37 = [v32 templateContentType];
          v38 = v37;
          if (v34 >= v25 && v37 <= v59)
          {
            goto LABEL_48;
          }

          [v28 dateLastUsed];
          v25 = v39;
          v24 = v26;
          v59 = v38;
LABEL_47:
          v60 = v31;
LABEL_48:

          goto LABEL_49;
        }

        v35 = v60;
        if (v60 >= v31)
        {
          v35 = v31;
        }

        v60 = v35;
        if (v35 != v31)
        {
          goto LABEL_48;
        }
      }

      v59 = [v32 templateContentType];
      [v28 dateLastUsed];
      v25 = v36;
      v24 = v26;
      goto LABEL_47;
    }

    v44 = v52;
    v45 = v44;
    if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v45, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendInitialSuggestionIndexRankingSignpost", "", buf, 2u);
    }

    v46 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v61 count];
      v48 = [v53 count];
      *buf = 134218498;
      v69 = v47;
      v70 = 2048;
      v71 = v48;
      v72 = 2112;
      v73 = v61;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Returning %tu initial suggestions after ranking from %tu candidates: %@", buf, 0x20u);
    }

    v18 = [v61 copy];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

@end