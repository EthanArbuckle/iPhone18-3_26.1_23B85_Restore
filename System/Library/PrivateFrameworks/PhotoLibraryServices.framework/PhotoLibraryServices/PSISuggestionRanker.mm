@interface PSISuggestionRanker
+ (BOOL)_suggestionIsOCRSuggestion:(id)suggestion;
+ (BOOL)_suggestionIsPrimaryPersonOrPetSuggestion:(id)suggestion;
+ (double)_averageGroupRankingScoreForSuggestion:(id)suggestion;
+ (double)_percentOverlapWithCompletionText:(id)text suggestionQuery:(id)query minPercentOverlapForPrioritization:(double)prioritization;
+ (double)initialSuggestionScoreForIndexCategory:(unint64_t)category;
+ (double)suggestionScoreForIndexCategory:(unint64_t)category;
+ (id)_dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:(id)suggestions;
+ (id)_rankedSearchSuggestionsFromSuggestions:(id)suggestions queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount suggestionType:(unint64_t)type suggestionQuery:(id)query;
+ (id)rankedSearchSuggestionsFromSuggestionCandidates:(id)candidates suggestionType:(unint64_t)type queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount suggestionLimit:(unint64_t)limit suggestionQuery:(id)query;
+ (id)sortedSuggestionsFromSuggestions:(id)suggestions;
+ (unint64_t)_characterLengthForSuggestion:(id)suggestion suggestionQuery:(id)query;
+ (unint64_t)_countBasedPriorityForSuggestion:(id)suggestion queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount;
+ (unint64_t)_countOfOCRSuggestionsInSuggestions:(id)suggestions;
+ (void)_rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:(id)type orderedSuggestionCategoryTypes:(id)types maxSuggestions:(unint64_t)suggestions suggestionQuery:(id)query suggestionType:(unint64_t)suggestionType rankedSuggestions:(id)rankedSuggestions resumingIndex:(unint64_t)index completion:(id)self0;
@end

@implementation PSISuggestionRanker

+ (unint64_t)_countOfOCRSuggestionsInSuggestions:(id)suggestions
{
  v16 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        v7 += [self _suggestionIsOCRSuggestion:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [suggestionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_suggestionIsOCRSuggestion:(id)suggestion
{
  suggestionComponents = [suggestion suggestionComponents];
  firstObject = [suggestionComponents firstObject];

  v5 = [firstObject indexCategory] == 1203 || objc_msgSend(firstObject, "indexCategory") == 1205 || objc_msgSend(firstObject, "indexCategory") == 1204;
  return v5;
}

+ (BOOL)_suggestionIsPrimaryPersonOrPetSuggestion:(id)suggestion
{
  suggestionComponents = [suggestion suggestionComponents];
  firstObject = [suggestionComponents firstObject];

  indexCategory = [firstObject indexCategory];
  indexCategory2 = [firstObject indexCategory];
  v8 = indexCategory == 1300 || indexCategory2 == 1330;

  return v8;
}

+ (id)_dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:(id)suggestions
{
  v63 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = suggestionsCopy;
    v4 = suggestionsCopy;
    v5 = [v4 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v5)
    {
      v6 = v5;
      v38 = 0;
      v7 = *v52;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v51 + 1) + 8 * v8);
        if ([v38 length])
        {
          break;
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        suggestionComponents = [v9 suggestionComponents];
        v11 = [suggestionComponents countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v48;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v48 != v13)
              {
                objc_enumerationMutation(suggestionComponents);
              }

              if ([*(*(&v47 + 1) + 8 * i) indexCategory] == 1102)
              {
                contentString = [v9 contentString];

                v38 = contentString;
                goto LABEL_18;
              }
            }

            v12 = [suggestionComponents countByEnumeratingWithState:&v47 objects:v61 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:

        if (++v8 == v6)
        {
          v6 = [v4 countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v38 = 0;
    }

    if ([v38 length])
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v4;
      v18 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v43 + 1) + 8 * j);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            suggestionComponents2 = [v22 suggestionComponents];
            v24 = [suggestionComponents2 countByEnumeratingWithState:&v39 objects:v59 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v40;
LABEL_31:
              v27 = 0;
              while (1)
              {
                if (*v40 != v26)
                {
                  objc_enumerationMutation(suggestionComponents2);
                }

                v28 = *(*(&v39 + 1) + 8 * v27);
                if ([v28 indexCategory] == 1100 || objc_msgSend(v28, "indexCategory") == 1101)
                {
                  break;
                }

                if (v25 == ++v27)
                {
                  v25 = [suggestionComponents2 countByEnumeratingWithState:&v39 objects:v59 count:16];
                  if (v25)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_38;
                }
              }

              contentString2 = [v22 contentString];
              v30 = [contentString2 length];
              v31 = [v38 length];

              if (v30 == v31)
              {
                goto LABEL_44;
              }

              contentString3 = [v22 contentString];
              v33 = [v38 containsString:contentString3];

              if (!v33)
              {
                goto LABEL_44;
              }

              v34 = PLSearchBackendQueryGetLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v56 = v22;
                v57 = 2112;
                v58 = v38;
                _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Excluding suggestion: %@ because it overlaps with NL date suggestion: %@", buf, 0x16u);
              }
            }

            else
            {
LABEL_38:

LABEL_44:
              [v17 addObject:v22];
            }
          }

          v19 = [obj countByEnumeratingWithState:&v43 objects:v60 count:16];
        }

        while (v19);
      }

      if (v17)
      {
        v16 = [v17 copy];
      }

      else
      {
        v16 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v16 = v4;
    }

    suggestionsCopy = v36;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

+ (double)initialSuggestionScoreForIndexCategory:(unint64_t)category
{
  if (category > 1499)
  {
    if (category > 1799)
    {
      if (category < 1804)
      {
        return 0.85;
      }

      if (category != 2600 && category != 2601)
      {
        return 0.0;
      }

      return 0.95;
    }

    if (category <= 1599)
    {
      if (category == 1500 || category == 1501)
      {
        return 0.95;
      }
    }

    else if (category == 1600 || category == 1601 || category == 1610)
    {
      return 0.85;
    }

    return 0.0;
  }

  if (category <= 1102)
  {
    if (category <= 1000)
    {
      if (category == 5)
      {
        return 0.75;
      }

      if (category != 1000)
      {
        return 0.0;
      }

      return 0.95;
    }

    if (category == 1001)
    {
      return 0.65;
    }

    if (category != 1101)
    {
      if (category == 1102)
      {
        return 0.8;
      }

      return 0.0;
    }

    return 0.25;
  }

  if (category <= 1104)
  {
    if (category == 1103)
    {
      return 0.6;
    }

    return 0.5;
  }

  if (category == 1105)
  {
    return 0.5;
  }

  result = 1.0;
  if (category != 1300)
  {
    if (category == 1330)
    {
      return 0.95;
    }

    return 0.0;
  }

  return result;
}

+ (double)suggestionScoreForIndexCategory:(unint64_t)category
{
  result = 1.0;
  if (category > 1510)
  {
    if (category > 1899)
    {
      if (category <= 1999)
      {
        switch(category)
        {
          case 0x76CuLL:
          case 0x76DuLL:
          case 0x77DuLL:
            return 0.0;
          case 0x76EuLL:
          case 0x76FuLL:
          case 0x770uLL:
          case 0x771uLL:
          case 0x772uLL:
          case 0x773uLL:
          case 0x774uLL:
          case 0x775uLL:
          case 0x776uLL:
          case 0x777uLL:
          case 0x778uLL:
          case 0x779uLL:
          case 0x77AuLL:
          case 0x77BuLL:
          case 0x77CuLL:
          case 0x77EuLL:
          case 0x77FuLL:
          case 0x780uLL:
            return 0.3;
          default:
            return result;
        }

        return result;
      }

      if (category > 2500)
      {
        if (category <= 2699)
        {
          if (category != 2501 && category != 2600 && category != 2601)
          {
            return result;
          }

          return 0.4;
        }

        if (category <= 2899)
        {
          if (category == 2800)
          {
            result = 0.0;
          }

          v4 = category == 2700;
          goto LABEL_82;
        }

        if (category != 2900 && category != 2901)
        {
          return result;
        }
      }

      else
      {
        if (category <= 2299)
        {
          if (category != 2000)
          {
            if (category == 2100)
            {
              return 0.0;
            }

            if (category != 2200)
            {
              return result;
            }

            return 0.4;
          }

          return 0.65;
        }

        if (category > 2400)
        {
          if (category != 2401)
          {
            if (category != 2500)
            {
              return result;
            }

            return 0.4;
          }
        }

        else
        {
          if (category == 2300)
          {
            return 0.25;
          }

          if (category != 2400)
          {
            return result;
          }
        }
      }

      return 0.3;
    }

    if (category <= 1600)
    {
      if (category > 1530)
      {
        if (category > 1540)
        {
          if (category != 1541 && category != 1600)
          {
            return result;
          }
        }

        else if (category != 1531 && category != 1540)
        {
          return result;
        }
      }

      else if (category > 1520)
      {
        if (category != 1521 && category != 1530)
        {
          return result;
        }
      }

      else if (category != 1511 && category != 1520)
      {
        return result;
      }

      return 0.4;
    }

    if (category > 1700)
    {
      if (category <= 1800)
      {
        if (category != 1701 && category != 1800)
        {
          return result;
        }
      }

      else if (category != 1801 && category != 1802 && category != 1803)
      {
        return result;
      }

      return 0.4;
    }

    if (category <= 1610)
    {
      if (category != 1601 && category != 1610)
      {
        return result;
      }

      return 0.4;
    }

    if (category == 1611)
    {
      return 0.4;
    }

    if (category != 1700)
    {
      return result;
    }

    return 0.65;
  }

  if (category > 1100)
  {
    if (category <= 1203)
    {
      if (category <= 1106)
      {
        if (category <= 1103)
        {
          return 0.7;
        }

        if (category != 1104 && category != 1105)
        {
          v4 = category == 1106;
LABEL_82:
          if (v4)
          {
            return 0.0;
          }

          return result;
        }
      }

      else if (category <= 1199)
      {
        if (category == 1109)
        {
          result = 0.0;
        }

        if (category == 1108)
        {
          result = 0.0;
        }

        v4 = category == 1107;
        goto LABEL_82;
      }

      return 0.35;
    }

    if (category > 1399)
    {
      if (category > 1499)
      {
        if (category != 1500 && category != 1501 && category != 1510)
        {
          return result;
        }

        return 0.4;
      }

      switch(category)
      {
        case 0x578uLL:
          return 0.2;
        case 0x579uLL:
          return 0.1;
        case 0x57AuLL:
          return 0.2;
      }

      return result;
    }

    if (category > 1319)
    {
      if (category - 1330 >= 2)
      {
        if (category == 1320 || category == 1321)
        {
          return 0.9;
        }

        return result;
      }
    }

    else
    {
      if (category == 1204 || category == 1205)
      {
        return 0.35;
      }

      if (category != 1310)
      {
        return result;
      }
    }

    return 0.8;
  }

  if (category <= 999)
  {
    switch(category)
    {
      case 0uLL:
      case 0xBuLL:
      case 0xDuLL:
        return 0.0;
      case 1uLL:
        result = 0.51;
        break;
      case 2uLL:
      case 3uLL:
        result = 0.5;
        break;
      case 4uLL:
        result = 0.52;
        break;
      case 5uLL:
        result = 0.56;
        break;
      case 6uLL:
        result = 0.55;
        break;
      case 7uLL:
        result = 0.57;
        break;
      case 8uLL:
        result = 0.58;
        break;
      case 9uLL:
        result = 0.53;
        break;
      case 0xAuLL:
        result = 0.59;
        break;
      case 0xCuLL:
        return 0.6;
      case 0xEuLL:
        result = 0.54;
        break;
      default:
        return result;
    }

    return result;
  }

  if (category <= 1005)
  {
    if (category > 1002)
    {
      return 0.4;
    }

    if (category != 1000 && category != 1001)
    {
      return result;
    }

    return 0.65;
  }

  if (category <= 1008)
  {
    if (category != 1006)
    {
      if (category == 1008)
      {
        result = 0.0;
      }

      v4 = category == 1007;
      goto LABEL_82;
    }

    return 0.4;
  }

  switch(category)
  {
    case 0x3F1uLL:
      return 0.65;
    case 0x3F2uLL:
      return 0.6;
    case 0x44CuLL:
      return 0.7;
  }

  return result;
}

+ (unint64_t)_characterLengthForSuggestion:(id)suggestion suggestionQuery:(id)query
{
  suggestionCopy = suggestion;
  suggestionOptions = [query suggestionOptions];
  searchSuggestionType = [suggestionOptions searchSuggestionType];

  if (searchSuggestionType == 2)
  {
    v8 = 1;
  }

  else
  {
    contentString = [suggestionCopy contentString];
    v8 = [contentString length];
  }

  return v8;
}

+ (double)_percentOverlapWithCompletionText:(id)text suggestionQuery:(id)query minPercentOverlapForPrioritization:(double)prioritization
{
  v42 = *MEMORY[0x1E69E9840];
  textCopy = text;
  queryCopy = query;
  suggestionOptions = [queryCopy suggestionOptions];
  searchSuggestionType = [suggestionOptions searchSuggestionType];

  v11 = 0.0;
  if (searchSuggestionType == 2)
  {
    goto LABEL_19;
  }

  contentString = [textCopy contentString];
  v13 = [contentString length];

  [queryCopy completionSuggestionTexts];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v40 = 0u;
  v35 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v35)
  {
    goto LABEL_18;
  }

  v15 = v13;
  v16 = *v38;
  v33 = *v38;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v38 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v37 + 1) + 8 * i);
      v36 = [v18 length];
      suggestionComponents = [textCopy suggestionComponents];
      firstObject = [suggestionComponents firstObject];
      matchType = [firstObject matchType];

      contentString2 = [textCopy contentString];
      lowercaseString = [contentString2 lowercaseString];
      lowercaseString2 = [v18 lowercaseString];
      if (matchType != 3)
      {
        if ([lowercaseString hasPrefix:lowercaseString2])
        {
        }

        else
        {
          contentString3 = [textCopy contentString];
          [contentString3 lowercaseString];
          v27 = v14;
          v28 = textCopy;
          v30 = v29 = queryCopy;
          lowercaseString3 = [v18 lowercaseString];
          v34 = [v30 isEqualToString:lowercaseString3];

          queryCopy = v29;
          textCopy = v28;
          v14 = v27;
          v16 = v33;

          v11 = 0.0;
          if (!v34)
          {
            goto LABEL_14;
          }
        }

LABEL_13:
        v11 = v36 / v15;
        goto LABEL_14;
      }

      v25 = [lowercaseString containsString:lowercaseString2];

      v11 = 0.0;
      if (v25)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v11 >= prioritization)
      {
        goto LABEL_18;
      }
    }

    v35 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v35);
  v11 = 0.0;
LABEL_18:

LABEL_19:
  return v11;
}

+ (double)_averageGroupRankingScoreForSuggestion:(id)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  suggestionComponents = [suggestionCopy suggestionComponents];
  v6 = [suggestionComponents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(suggestionComponents);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 score];
        v13 = v12;
        [self suggestionScoreForIndexCategory:{objc_msgSend(v11, "indexCategory")}];
        v9 = v9 + v14 + v13;
      }

      v7 = [suggestionComponents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);

    if (v9 == 0.0)
    {
      v15 = 0.0;
      goto LABEL_13;
    }

    suggestionComponents = [suggestionCopy suggestionComponents];
    v15 = v9 / [suggestionComponents count];
  }

  else
  {
    v15 = 0.0;
  }

LABEL_13:
  return v15;
}

+ (unint64_t)_countBasedPriorityForSuggestion:(id)suggestion queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount
{
  suggestionCopy = suggestion;
  v8 = suggestionCopy;
  v9 = 0.0;
  v10 = 0.0;
  if (count)
  {
    v10 = [suggestionCopy matchedAssetsCount] / count;
  }

  if (collectionCount)
  {
    v9 = [v8 matchedCollectionsCount] / collectionCount;
  }

  if (v10 <= 0.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 < 0.25 || v11 > 0.5)
  {
    if (v11 <= 0.5 || v11 > 0.8)
    {
      if (v11 >= 0.1 && v11 < 0.25)
      {
        v13 = 3;
      }

      else if (v11 <= 0.8)
      {
        if (v11 >= 0.1)
        {
          v13 = 0;
        }

        else
        {
          v13 = 5;
        }
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (id)_rankedSearchSuggestionsFromSuggestions:(id)suggestions queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount suggestionType:(unint64_t)type suggestionQuery:(id)query
{
  queryCopy = query;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __131__PSISuggestionRanker__rankedSearchSuggestionsFromSuggestions_queryAssetCount_queryCollectionCount_suggestionType_suggestionQuery___block_invoke;
  v16[3] = &unk_1E756B748;
  countCopy = count;
  collectionCountCopy = collectionCount;
  v17 = queryCopy;
  selfCopy = self;
  typeCopy = type;
  v13 = queryCopy;
  v14 = [suggestions sortedArrayUsingComparator:v16];

  return v14;
}

uint64_t __131__PSISuggestionRanker__rankedSearchSuggestionsFromSuggestions_queryAssetCount_queryCollectionCount_suggestionType_suggestionQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 40) _averageGroupRankingScoreForSuggestion:v5];
  v8 = v7;
  [*(a1 + 40) _averageGroupRankingScoreForSuggestion:v6];
  v10 = v9;
  v11 = [*(a1 + 40) _countBasedPriorityForSuggestion:v5 queryAssetCount:*(a1 + 48) queryCollectionCount:*(a1 + 56)];
  v12 = [*(a1 + 40) _countBasedPriorityForSuggestion:v6 queryAssetCount:*(a1 + 48) queryCollectionCount:*(a1 + 56)];
  [*(a1 + 40) _percentOverlapWithCompletionText:v5 suggestionQuery:*(a1 + 32) minPercentOverlapForPrioritization:0.5];
  v14 = v13;
  [*(a1 + 40) _percentOverlapWithCompletionText:v6 suggestionQuery:*(a1 + 32) minPercentOverlapForPrioritization:0.5];
  v16 = v15;
  v17 = [v5 suggestionComponents];
  v18 = [v17 firstObject];
  v19 = [v18 matchType];

  v20 = [v6 suggestionComponents];
  v21 = [v20 firstObject];
  v22 = [v21 matchType];

  if (v19 < v22)
  {
    goto LABEL_2;
  }

  if (v19 > v22)
  {
    goto LABEL_5;
  }

  v25 = [*(a1 + 40) _characterLengthForSuggestion:v5 suggestionQuery:*(a1 + 32)];
  v26 = [*(a1 + 40) _characterLengthForSuggestion:v6 suggestionQuery:*(a1 + 32)];
  if (*(a1 + 64) == 1)
  {
    if (v14 == 1.0)
    {
      goto LABEL_2;
    }

    if (v16 == 1.0)
    {
      goto LABEL_5;
    }
  }

  [v5 score];
  v28 = v27;
  [v6 score];
  if (vabdd_f64(v28, v29) >= 0.25)
  {
    if (v8 > v10)
    {
      goto LABEL_2;
    }

    v23 = 1;
    if (v8 < v10 || v11 > v12)
    {
      goto LABEL_6;
    }
  }

  else if (v11 > v12)
  {
    goto LABEL_5;
  }

  v23 = -1;
  if (v11 >= v12 && v14 <= v16)
  {
    if (v14 < v16)
    {
      goto LABEL_5;
    }

    v30 = [v5 suggestionComponents];
    v31 = [v30 firstObject];
    v32 = [v31 matchType];

    v33 = [v6 suggestionComponents];
    v34 = [v33 firstObject];
    v35 = [v34 matchType];

    if (v32 && v35)
    {
      v36 = v32 >= v35;
      if (v32 <= v35)
      {
        v23 = -1;
        if (!v36 || v25 < v26)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
      }

LABEL_5:
      v23 = 1;
      goto LABEL_6;
    }

    if (v25 >= v26)
    {
LABEL_27:
      if (v25 <= v26)
      {
        v37 = [v5 contentString];
        v38 = [v6 contentString];
        v23 = [v37 localizedCompare:v38];

        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_2:
    v23 = -1;
  }

LABEL_6:

  return v23;
}

+ (id)sortedSuggestionsFromSuggestions:(id)suggestions
{
  v3 = [suggestions mutableCopy];
  [v3 sortUsingComparator:&__block_literal_global_35568];
  v4 = [v3 copy];

  return v4;
}

uint64_t __56__PSISuggestionRanker_sortedSuggestionsFromSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 categoriesType] == 7 || objc_msgSend(v4, "categoriesType") == 9)
  {
    v6 = -1;
  }

  else if ([v5 categoriesType] == 7 || objc_msgSend(v5, "categoriesType") == 9)
  {
    v6 = 1;
  }

  else
  {
    v8 = [v4 matchedAssetsCount];
    if (!v8)
    {
      v8 = [v4 matchedCollectionsCount];
    }

    v9 = [v5 matchedAssetsCount];
    if (!v9)
    {
      v9 = [v5 matchedCollectionsCount];
    }

    if (v8 > v9)
    {
      v6 = -1;
    }

    else
    {
      v6 = v8 < v9;
    }
  }

  return v6;
}

+ (void)_rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:(id)type orderedSuggestionCategoryTypes:(id)types maxSuggestions:(unint64_t)suggestions suggestionQuery:(id)query suggestionType:(unint64_t)suggestionType rankedSuggestions:(id)rankedSuggestions resumingIndex:(unint64_t)index completion:(id)self0
{
  v54 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  typesCopy = types;
  queryCopy = query;
  rankedSuggestionsCopy = rankedSuggestions;
  completionCopy = completion;
  if ([rankedSuggestionsCopy count] >= suggestions)
  {
    (*(completionCopy + 2))(completionCopy, 0, MEMORY[0x1E695E0F0], 0);
    goto LABEL_49;
  }

  indexCopy = index;
  if ([typesCopy count] <= index)
  {
    indexCopy = 0;
  }

  if (indexCopy >= [typesCopy count])
  {
    v29 = indexCopy;
    goto LABEL_33;
  }

  v37 = completionCopy;
  v38 = typesCopy;
  v41 = 0;
  v19 = 0;
  do
  {
    v42 = indexCopy;
    v20 = [typesCopy objectAtIndexedSubscript:{indexCopy, v37}];
    v21 = [typeCopy objectForKeyedSubscript:v20];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
LABEL_8:
      v26 = 0;
      while (1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v48 + 1) + 8 * v26);
        if ([rankedSuggestionsCopy count] >= suggestions)
        {
          break;
        }

        if (([rankedSuggestionsCopy containsObject:v27] & 1) == 0)
        {
          if (![self _suggestionIsPrimaryPersonOrPetSuggestion:v27])
          {
            if (![self _suggestionIsOCRSuggestion:v27] || !objc_msgSend(self, "_countOfOCRSuggestionsInSuggestions:", rankedSuggestionsCopy))
            {
              [rankedSuggestionsCopy addObject:v27];
              v41 = 1;
              break;
            }

            goto LABEL_23;
          }

          if (v19 <= 2)
          {
            if (!v19)
            {
              [rankedSuggestionsCopy addObject:v27];
              v19 = 1;
              goto LABEL_22;
            }

            [self _percentOverlapWithCompletionText:v27 suggestionQuery:queryCopy minPercentOverlapForPrioritization:0.25];
            if (v28 >= 0.25)
            {
              [rankedSuggestionsCopy addObject:v27];
              ++v19;
LABEL_22:
              v41 = 1;
            }
          }
        }

LABEL_23:
        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v24)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v29 = v42;
    indexCopy = v42 + 1;
    typesCopy = v38;
  }

  while (v42 + 1 < [v38 count]);
  if (v41)
  {
    v30 = 1;
    completionCopy = v37;
    goto LABEL_48;
  }

  completionCopy = v37;
LABEL_33:
  if ([rankedSuggestionsCopy count] >= suggestions)
  {
    v30 = 0;
  }

  else
  {
    v43 = v29;
    [typeCopy objectForKeyedSubscript:&unk_1F0FBC220];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v47 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v32)
    {
      v33 = v32;
      v30 = 0;
      v34 = *v45;
LABEL_36:
      v35 = 0;
      while (1)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v44 + 1) + 8 * v35);
        if ([rankedSuggestionsCopy count] >= suggestions)
        {
          break;
        }

        if (([rankedSuggestionsCopy containsObject:v36] & 1) == 0)
        {
          [rankedSuggestionsCopy addObject:v36];
          v30 = 1;
        }

        if (v33 == ++v35)
        {
          v33 = [v31 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v33)
          {
            goto LABEL_36;
          }

          break;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    v29 = v43;
  }

LABEL_48:
  (*(completionCopy + 2))(completionCopy, v30 & 1, rankedSuggestionsCopy, v29 + 1);
LABEL_49:
}

+ (id)rankedSearchSuggestionsFromSuggestionCandidates:(id)candidates suggestionType:(unint64_t)type queryAssetCount:(unint64_t)count queryCollectionCount:(unint64_t)collectionCount suggestionLimit:(unint64_t)limit suggestionQuery:(id)query
{
  candidatesCopy = candidates;
  queryCopy = query;
  if ([candidatesCopy count])
  {
    v16 = [candidatesCopy objectForKeyedSubscript:&unk_1F0FBC208];
    v33 = v16;
    if (v16)
    {
      v17 = [self _dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:v16];
      v18 = [candidatesCopy mutableCopy];
      [v18 setObject:v17 forKeyedSubscript:&unk_1F0FBC208];
      v19 = [v18 copy];
      v20 = candidatesCopy;
      candidatesCopy = v19;
    }

    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v21 = objc_opt_new();
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __155__PSISuggestionRanker_rankedSearchSuggestionsFromSuggestionCandidates_suggestionType_queryAssetCount_queryCollectionCount_suggestionLimit_suggestionQuery___block_invoke;
    v50[3] = &unk_1E756B6D8;
    selfCopy = self;
    countCopy = count;
    collectionCountCopy = collectionCount;
    typeCopy = type;
    v22 = queryCopy;
    v51 = v22;
    v34 = v21;
    v52 = v34;
    v53 = &v58;
    [candidatesCopy enumerateKeysAndObjectsUsingBlock:v50];
    v24 = type == 2 && limit > 1;
    v25 = limit - v24;
    if (v59[3] >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v59[3];
    }

    _orderedSuggestionCategoryTypes = [self _orderedSuggestionCategoryTypes];
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__35572;
    v48 = __Block_byref_object_dispose__35573;
    v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:v26];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    do
    {
      if ([*(v45 + 5) count] >= v26)
      {
        break;
      }

      v28 = *(v45 + 5);
      v29 = v37[3];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __155__PSISuggestionRanker_rankedSearchSuggestionsFromSuggestionCandidates_suggestionType_queryAssetCount_queryCollectionCount_suggestionLimit_suggestionQuery___block_invoke_3;
      v35[3] = &unk_1E756B700;
      v35[4] = buf;
      v35[5] = &v40;
      v35[6] = &v36;
      [self _rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:v34 orderedSuggestionCategoryTypes:_orderedSuggestionCategoryTypes maxSuggestions:v26 suggestionQuery:v22 suggestionType:type rankedSuggestions:v28 resumingIndex:v29 completion:v35];
      if (type == 2)
      {
        break;
      }
    }

    while ((v41[3] & 1) != 0);
    v30 = [self sortedSuggestionsFromSuggestions:*(v45 + 5)];
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v58, 8);
    v31 = v33;
  }

  else
  {
    v31 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_INFO, "No suggestion candidates provided for suggestion ranking", buf, 2u);
    }

    v30 = MEMORY[0x1E695E0F0];
  }

  return v30;
}

void __155__PSISuggestionRanker_rankedSearchSuggestionsFromSuggestionCandidates_suggestionType_queryAssetCount_queryCollectionCount_suggestionLimit_suggestionQuery___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v5 _rankedSearchSuggestionsFromSuggestions:a3 queryAssetCount:v6 queryCollectionCount:v7 suggestionType:v8 suggestionQuery:v9];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];

  *(*(*(a1 + 48) + 8) + 24) += [v11 count];
}

void __155__PSISuggestionRanker_rankedSearchSuggestionsFromSuggestionCandidates_suggestionType_queryAssetCount_queryCollectionCount_suggestionLimit_suggestionQuery___block_invoke_3(void *a1, char a2, void *a3, uint64_t a4)
{
  v7 = [a3 mutableCopy];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a4;
}

@end