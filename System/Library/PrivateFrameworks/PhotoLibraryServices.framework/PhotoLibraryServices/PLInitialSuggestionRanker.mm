@interface PLInitialSuggestionRanker
+ (BOOL)_candidateHasLastUsedDateOfToday:(id)today calendar:(id)calendar todayDateComponents:(id)components calendarUnits:(unint64_t)units;
+ (id)_candidateBucketsForCandidates:(id)candidates suggestionLimit:(unint64_t)limit maxNumberOfSuggestionsPerContentType:(unint64_t)type;
+ (id)rankSearchSuggestionCandidates:(id)candidates suggestionLimit:(unint64_t)limit maxNumberOfSuggestionsPerContentType:(unint64_t)type;
+ (id)trimmedListCandidatesOfCandidatesFromCandidates:(id)candidates maxNumberOfSuggestionsPerContentType:(unint64_t)type;
+ (unint64_t)candidateSimilarityToOtherCandidate:(id)candidate otherCandidate:(id)otherCandidate;
+ (void)_populateBuckets:(id)buckets candidates:(id)candidates shouldTryToExcludeCandidatesUsedToday:(BOOL)today suggestionLimit:(unint64_t)limit;
@end

@implementation PLInitialSuggestionRanker

+ (void)_populateBuckets:(id)buckets candidates:(id)candidates shouldTryToExcludeCandidatesUsedToday:(BOOL)today suggestionLimit:(unint64_t)limit
{
  todayCopy = today;
  v39 = *MEMORY[0x1E69E9840];
  bucketsCopy = buckets;
  candidatesCopy = candidates;
  v11 = candidatesCopy;
  if (todayCopy)
  {
    v12 = [candidatesCopy count] - limit;
  }

  else
  {
    v12 = 0;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [MEMORY[0x1E695DF00] date];
  v28 = v31 = currentCalendar;
  v30 = [currentCalendar components:28 fromDate:?];
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
        suggestionTemplate = [v19 suggestionTemplate];
        templateContentType = [suggestionTemplate templateContentType];

        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:templateContentType];
        v23 = [bucketsCopy objectForKeyedSubscript:v22];

        if (v23)
        {
          [v19 dateLastUsed];
          v25 = v24 == 0.0 || v12 == 0;
          if (v25 || ([self _candidateHasLastUsedDateOfToday:v19 calendar:v31 todayDateComponents:v30 calendarUnits:28] & 1) == 0)
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
            v37 = templateContentType;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Missing bucket for content type %tu during initial suggestion ranking, no suggestions for this content type will be generated.", buf, 0xCu);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v16);
  }
}

+ (id)_candidateBucketsForCandidates:(id)candidates suggestionLimit:(unint64_t)limit maxNumberOfSuggestionsPerContentType:(unint64_t)type
{
  v41 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = candidatesCopy;
  v10 = [candidatesCopy count];
  for (i = 1; i != 10; ++i)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v28 setObject:v12 forKeyedSubscript:v13];
  }

  [self _populateBuckets:v28 candidates:v27 shouldTryToExcludeCandidatesUsedToday:v10 > limit suggestionLimit:limit];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v10 > limit)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __113__PLInitialSuggestionRanker__candidateBucketsForCandidates_suggestionLimit_maxNumberOfSuggestionsPerContentType___block_invoke;
    v34[3] = &unk_1E7578150;
    v34[4] = &v35;
    [v28 enumerateKeysAndObjectsUsingBlock:v34];
    if (v36[3] < limit)
    {
      [v28 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_114867];
      [self _populateBuckets:v28 candidates:v27 shouldTryToExcludeCandidatesUsedToday:0 suggestionLimit:limit];
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
  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 25;
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

        if ([v21 count] > typeCopy)
        {
          v25 = [v21 subarrayWithRange:{0, typeCopy}];
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

+ (BOOL)_candidateHasLastUsedDateOfToday:(id)today calendar:(id)calendar todayDateComponents:(id)components calendarUnits:(unint64_t)units
{
  componentsCopy = components;
  v10 = MEMORY[0x1E695DF00];
  calendarCopy = calendar;
  [today dateLastUsed];
  v12 = [v10 dateWithTimeIntervalSince1970:?];
  v13 = [calendarCopy components:units fromDate:v12];

  month = [v13 month];
  v17 = 0;
  if (month == [componentsCopy month])
  {
    v15 = [v13 day];
    if (v15 == [componentsCopy day])
    {
      year = [v13 year];
      if (year == [componentsCopy year])
      {
        v17 = 1;
      }
    }
  }

  return v17;
}

+ (id)trimmedListCandidatesOfCandidatesFromCandidates:(id)candidates maxNumberOfSuggestionsPerContentType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [self _candidateBucketsForCandidates:candidates suggestionLimit:-1 maxNumberOfSuggestionsPerContentType:type];
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

+ (unint64_t)candidateSimilarityToOtherCandidate:(id)candidate otherCandidate:(id)otherCandidate
{
  candidateCopy = candidate;
  otherCandidateCopy = otherCandidate;
  suggestionTemplate = [candidateCopy suggestionTemplate];
  suggestionTemplate2 = [otherCandidateCopy suggestionTemplate];
  suggestionTemplateKey = [suggestionTemplate suggestionTemplateKey];
  suggestionTemplateKey2 = [suggestionTemplate2 suggestionTemplateKey];
  v52 = suggestionTemplateKey;
  if ([suggestionTemplateKey isEqualToString:?])
  {
    v10 = 16;
  }

  else
  {
    v10 = 0;
  }

  templateType = [suggestionTemplate templateType];
  if (templateType == [suggestionTemplate2 templateType])
  {
    ++v10;
  }

  v53 = suggestionTemplate;
  templateDateType = [suggestionTemplate templateDateType];
  templateDateType2 = [suggestionTemplate2 templateDateType];
  if (templateDateType != templateDateType2 || (templateDateType | templateDateType2) == 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 | 4;
  }

  firstRankedGroup = [candidateCopy firstRankedGroup];
  group = [firstRankedGroup group];
  groupId = [group groupId];

  secondRankedGroup = [candidateCopy secondRankedGroup];
  group2 = [secondRankedGroup group];
  groupId2 = [group2 groupId];

  firstRankedGroup2 = [otherCandidateCopy firstRankedGroup];
  group3 = [firstRankedGroup2 group];
  groupId3 = [group3 groupId];

  secondRankedGroup2 = [otherCandidateCopy secondRankedGroup];
  group4 = [secondRankedGroup2 group];
  groupId4 = [group4 groupId];

  if (groupId | groupId3 && groupId == groupId3 || (groupId2 | groupId3 ? (v28 = groupId2 == groupId3) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), groupId | groupId4 ? (v30 = groupId == groupId4) : (v30 = 0), !v30 ? (v31 = 0) : (v31 = 1), groupId2 == groupId4 ? (v32 = (groupId2 | groupId4) == 0) : (v32 = 1), !v32 || (v31 & 1) != 0 || v29))
  {
    v15 |= 8uLL;
  }

  firstRankedGroup3 = [candidateCopy firstRankedGroup];
  group5 = [firstRankedGroup3 group];
  category = [group5 category];

  secondRankedGroup3 = [candidateCopy secondRankedGroup];
  group6 = [secondRankedGroup3 group];
  category2 = [group6 category];

  firstRankedGroup4 = [otherCandidateCopy firstRankedGroup];
  group7 = [firstRankedGroup4 group];
  category3 = [group7 category];

  secondRankedGroup4 = [otherCandidateCopy secondRankedGroup];
  group8 = [secondRankedGroup4 group];
  category4 = [group8 category];

  if (category | category3 && category == category3 || (category2 | category3 ? (v45 = category2 == category3) : (v45 = 0), !v45 ? (v46 = 0) : (v46 = 1), category | category4 ? (v47 = category4 == category) : (v47 = 0), !v47 ? (v48 = 0) : (v48 = 1), category2 == category4 ? (v49 = (category2 | category4) == 0) : (v49 = 1), !v49 || (v48 & 1) != 0 || v46))
  {
    v15 |= 2uLL;
  }

  return v15;
}

+ (id)rankSearchSuggestionCandidates:(id)candidates suggestionLimit:(unint64_t)limit maxNumberOfSuggestionsPerContentType:(unint64_t)type
{
  v75 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  if ([candidatesCopy count])
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
    [self _candidateBucketsForCandidates:candidatesCopy suggestionLimit:limit maxNumberOfSuggestionsPerContentType:type];
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
    if (v19 < limit)
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

      limit = v19;
    }

    v21 = [candidatesCopy count];
    v55 = 0;
    templateContentType2 = 0;
    v60 = 0;
    v22 = 0;
    v63 = 0;
    if (limit >= v21)
    {
      limitCopy = v21;
    }

    else
    {
      limitCopy = limit;
    }

    v57 = limitCopy;
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
          templateContentType2 = 0;
          v60 = 0;
          v22 = 0;
LABEL_62:
          v24 = -1;
          goto LABEL_63;
        }

        if (v63 < v54)
        {
          templateContentType2 = 0;
          v60 = 0;
          v58 = 0;
          v22 = 0;
          ++v63;
          goto LABEL_62;
        }

        templateContentType2 = 0;
        v60 = 0;
        v22 = 0;
        v24 = -1;
        v55 = 1;
LABEL_63:

        ++v26;
      }

      lastObject = [v61 lastObject];
      v31 = [self candidateSimilarityToOtherCandidate:v28 otherCandidate:lastObject];
      suggestionTemplate = [v28 suggestionTemplate];
      [v28 dateLastUsed];
      if (v24 != -1)
      {
        v34 = v33;
        if (v60 == v31 || v31 <= 1)
        {
          templateContentType = [suggestionTemplate templateContentType];
          v38 = templateContentType;
          if (v34 >= v25 && templateContentType <= templateContentType2)
          {
            goto LABEL_48;
          }

          [v28 dateLastUsed];
          v25 = v39;
          v24 = v26;
          templateContentType2 = v38;
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

      templateContentType2 = [suggestionTemplate templateContentType];
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
      v48 = [candidatesCopy count];
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