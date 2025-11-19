@interface PSISuggestionRanker
+ (BOOL)_suggestionIsOCRSuggestion:(id)a3;
+ (BOOL)_suggestionIsPrimaryPersonOrPetSuggestion:(id)a3;
+ (double)_averageGroupRankingScoreForSuggestion:(id)a3;
+ (double)_percentOverlapWithCompletionText:(id)a3 suggestionQuery:(id)a4 minPercentOverlapForPrioritization:(double)a5;
+ (double)initialSuggestionScoreForIndexCategory:(unint64_t)a3;
+ (double)suggestionScoreForIndexCategory:(unint64_t)a3;
+ (id)_dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:(id)a3;
+ (id)_rankedSearchSuggestionsFromSuggestions:(id)a3 queryAssetCount:(unint64_t)a4 queryCollectionCount:(unint64_t)a5 suggestionType:(unint64_t)a6 suggestionQuery:(id)a7;
+ (id)rankedSearchSuggestionsFromSuggestionCandidates:(id)a3 suggestionType:(unint64_t)a4 queryAssetCount:(unint64_t)a5 queryCollectionCount:(unint64_t)a6 suggestionLimit:(unint64_t)a7 suggestionQuery:(id)a8;
+ (id)sortedSuggestionsFromSuggestions:(id)a3;
+ (unint64_t)_characterLengthForSuggestion:(id)a3 suggestionQuery:(id)a4;
+ (unint64_t)_countBasedPriorityForSuggestion:(id)a3 queryAssetCount:(unint64_t)a4 queryCollectionCount:(unint64_t)a5;
+ (unint64_t)_countOfOCRSuggestionsInSuggestions:(id)a3;
+ (void)_rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:(id)a3 orderedSuggestionCategoryTypes:(id)a4 maxSuggestions:(unint64_t)a5 suggestionQuery:(id)a6 suggestionType:(unint64_t)a7 rankedSuggestions:(id)a8 resumingIndex:(unint64_t)a9 completion:(id)a10;
@end

@implementation PSISuggestionRanker

+ (unint64_t)_countOfOCRSuggestionsInSuggestions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 += [a1 _suggestionIsOCRSuggestion:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_suggestionIsOCRSuggestion:(id)a3
{
  v3 = [a3 suggestionComponents];
  v4 = [v3 firstObject];

  v5 = [v4 indexCategory] == 1203 || objc_msgSend(v4, "indexCategory") == 1205 || objc_msgSend(v4, "indexCategory") == 1204;
  return v5;
}

+ (BOOL)_suggestionIsPrimaryPersonOrPetSuggestion:(id)a3
{
  v3 = [a3 suggestionComponents];
  v4 = [v3 firstObject];

  v5 = [v4 indexCategory];
  v6 = [v4 indexCategory];
  v8 = v5 == 1300 || v6 == 1330;

  return v8;
}

+ (id)_dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v36 = v3;
    v4 = v3;
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
        v10 = [v9 suggestionComponents];
        v11 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
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
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v47 + 1) + 8 * i) indexCategory] == 1102)
              {
                v15 = [v9 contentString];

                v38 = v15;
                goto LABEL_18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
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
            v23 = [v22 suggestionComponents];
            v24 = [v23 countByEnumeratingWithState:&v39 objects:v59 count:16];
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
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v39 + 1) + 8 * v27);
                if ([v28 indexCategory] == 1100 || objc_msgSend(v28, "indexCategory") == 1101)
                {
                  break;
                }

                if (v25 == ++v27)
                {
                  v25 = [v23 countByEnumeratingWithState:&v39 objects:v59 count:16];
                  if (v25)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_38;
                }
              }

              v29 = [v22 contentString];
              v30 = [v29 length];
              v31 = [v38 length];

              if (v30 == v31)
              {
                goto LABEL_44;
              }

              v32 = [v22 contentString];
              v33 = [v38 containsString:v32];

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

    v3 = v36;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

+ (double)initialSuggestionScoreForIndexCategory:(unint64_t)a3
{
  if (a3 > 1499)
  {
    if (a3 > 1799)
    {
      if (a3 < 1804)
      {
        return 0.85;
      }

      if (a3 != 2600 && a3 != 2601)
      {
        return 0.0;
      }

      return 0.95;
    }

    if (a3 <= 1599)
    {
      if (a3 == 1500 || a3 == 1501)
      {
        return 0.95;
      }
    }

    else if (a3 == 1600 || a3 == 1601 || a3 == 1610)
    {
      return 0.85;
    }

    return 0.0;
  }

  if (a3 <= 1102)
  {
    if (a3 <= 1000)
    {
      if (a3 == 5)
      {
        return 0.75;
      }

      if (a3 != 1000)
      {
        return 0.0;
      }

      return 0.95;
    }

    if (a3 == 1001)
    {
      return 0.65;
    }

    if (a3 != 1101)
    {
      if (a3 == 1102)
      {
        return 0.8;
      }

      return 0.0;
    }

    return 0.25;
  }

  if (a3 <= 1104)
  {
    if (a3 == 1103)
    {
      return 0.6;
    }

    return 0.5;
  }

  if (a3 == 1105)
  {
    return 0.5;
  }

  result = 1.0;
  if (a3 != 1300)
  {
    if (a3 == 1330)
    {
      return 0.95;
    }

    return 0.0;
  }

  return result;
}

+ (double)suggestionScoreForIndexCategory:(unint64_t)a3
{
  result = 1.0;
  if (a3 > 1510)
  {
    if (a3 > 1899)
    {
      if (a3 <= 1999)
      {
        switch(a3)
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

      if (a3 > 2500)
      {
        if (a3 <= 2699)
        {
          if (a3 != 2501 && a3 != 2600 && a3 != 2601)
          {
            return result;
          }

          return 0.4;
        }

        if (a3 <= 2899)
        {
          if (a3 == 2800)
          {
            result = 0.0;
          }

          v4 = a3 == 2700;
          goto LABEL_82;
        }

        if (a3 != 2900 && a3 != 2901)
        {
          return result;
        }
      }

      else
      {
        if (a3 <= 2299)
        {
          if (a3 != 2000)
          {
            if (a3 == 2100)
            {
              return 0.0;
            }

            if (a3 != 2200)
            {
              return result;
            }

            return 0.4;
          }

          return 0.65;
        }

        if (a3 > 2400)
        {
          if (a3 != 2401)
          {
            if (a3 != 2500)
            {
              return result;
            }

            return 0.4;
          }
        }

        else
        {
          if (a3 == 2300)
          {
            return 0.25;
          }

          if (a3 != 2400)
          {
            return result;
          }
        }
      }

      return 0.3;
    }

    if (a3 <= 1600)
    {
      if (a3 > 1530)
      {
        if (a3 > 1540)
        {
          if (a3 != 1541 && a3 != 1600)
          {
            return result;
          }
        }

        else if (a3 != 1531 && a3 != 1540)
        {
          return result;
        }
      }

      else if (a3 > 1520)
      {
        if (a3 != 1521 && a3 != 1530)
        {
          return result;
        }
      }

      else if (a3 != 1511 && a3 != 1520)
      {
        return result;
      }

      return 0.4;
    }

    if (a3 > 1700)
    {
      if (a3 <= 1800)
      {
        if (a3 != 1701 && a3 != 1800)
        {
          return result;
        }
      }

      else if (a3 != 1801 && a3 != 1802 && a3 != 1803)
      {
        return result;
      }

      return 0.4;
    }

    if (a3 <= 1610)
    {
      if (a3 != 1601 && a3 != 1610)
      {
        return result;
      }

      return 0.4;
    }

    if (a3 == 1611)
    {
      return 0.4;
    }

    if (a3 != 1700)
    {
      return result;
    }

    return 0.65;
  }

  if (a3 > 1100)
  {
    if (a3 <= 1203)
    {
      if (a3 <= 1106)
      {
        if (a3 <= 1103)
        {
          return 0.7;
        }

        if (a3 != 1104 && a3 != 1105)
        {
          v4 = a3 == 1106;
LABEL_82:
          if (v4)
          {
            return 0.0;
          }

          return result;
        }
      }

      else if (a3 <= 1199)
      {
        if (a3 == 1109)
        {
          result = 0.0;
        }

        if (a3 == 1108)
        {
          result = 0.0;
        }

        v4 = a3 == 1107;
        goto LABEL_82;
      }

      return 0.35;
    }

    if (a3 > 1399)
    {
      if (a3 > 1499)
      {
        if (a3 != 1500 && a3 != 1501 && a3 != 1510)
        {
          return result;
        }

        return 0.4;
      }

      switch(a3)
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

    if (a3 > 1319)
    {
      if (a3 - 1330 >= 2)
      {
        if (a3 == 1320 || a3 == 1321)
        {
          return 0.9;
        }

        return result;
      }
    }

    else
    {
      if (a3 == 1204 || a3 == 1205)
      {
        return 0.35;
      }

      if (a3 != 1310)
      {
        return result;
      }
    }

    return 0.8;
  }

  if (a3 <= 999)
  {
    switch(a3)
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

  if (a3 <= 1005)
  {
    if (a3 > 1002)
    {
      return 0.4;
    }

    if (a3 != 1000 && a3 != 1001)
    {
      return result;
    }

    return 0.65;
  }

  if (a3 <= 1008)
  {
    if (a3 != 1006)
    {
      if (a3 == 1008)
      {
        result = 0.0;
      }

      v4 = a3 == 1007;
      goto LABEL_82;
    }

    return 0.4;
  }

  switch(a3)
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

+ (unint64_t)_characterLengthForSuggestion:(id)a3 suggestionQuery:(id)a4
{
  v5 = a3;
  v6 = [a4 suggestionOptions];
  v7 = [v6 searchSuggestionType];

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 contentString];
    v8 = [v9 length];
  }

  return v8;
}

+ (double)_percentOverlapWithCompletionText:(id)a3 suggestionQuery:(id)a4 minPercentOverlapForPrioritization:(double)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 suggestionOptions];
  v10 = [v9 searchSuggestionType];

  v11 = 0.0;
  if (v10 == 2)
  {
    goto LABEL_19;
  }

  v12 = [v7 contentString];
  v13 = [v12 length];

  [v8 completionSuggestionTexts];
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
      v19 = [v7 suggestionComponents];
      v20 = [v19 firstObject];
      v21 = [v20 matchType];

      v22 = [v7 contentString];
      v23 = [v22 lowercaseString];
      v24 = [v18 lowercaseString];
      if (v21 != 3)
      {
        if ([v23 hasPrefix:v24])
        {
        }

        else
        {
          v26 = [v7 contentString];
          [v26 lowercaseString];
          v27 = v14;
          v28 = v7;
          v30 = v29 = v8;
          v31 = [v18 lowercaseString];
          v34 = [v30 isEqualToString:v31];

          v8 = v29;
          v7 = v28;
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

      v25 = [v23 containsString:v24];

      v11 = 0.0;
      if (v25)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v11 >= a5)
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

+ (double)_averageGroupRankingScoreForSuggestion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 suggestionComponents];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 score];
        v13 = v12;
        [a1 suggestionScoreForIndexCategory:{objc_msgSend(v11, "indexCategory")}];
        v9 = v9 + v14 + v13;
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);

    if (v9 == 0.0)
    {
      v15 = 0.0;
      goto LABEL_13;
    }

    v5 = [v4 suggestionComponents];
    v15 = v9 / [v5 count];
  }

  else
  {
    v15 = 0.0;
  }

LABEL_13:
  return v15;
}

+ (unint64_t)_countBasedPriorityForSuggestion:(id)a3 queryAssetCount:(unint64_t)a4 queryCollectionCount:(unint64_t)a5
{
  v7 = a3;
  v8 = v7;
  v9 = 0.0;
  v10 = 0.0;
  if (a4)
  {
    v10 = [v7 matchedAssetsCount] / a4;
  }

  if (a5)
  {
    v9 = [v8 matchedCollectionsCount] / a5;
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

+ (id)_rankedSearchSuggestionsFromSuggestions:(id)a3 queryAssetCount:(unint64_t)a4 queryCollectionCount:(unint64_t)a5 suggestionType:(unint64_t)a6 suggestionQuery:(id)a7
{
  v12 = a7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __131__PSISuggestionRanker__rankedSearchSuggestionsFromSuggestions_queryAssetCount_queryCollectionCount_suggestionType_suggestionQuery___block_invoke;
  v16[3] = &unk_1E756B748;
  v19 = a4;
  v20 = a5;
  v17 = v12;
  v18 = a1;
  v21 = a6;
  v13 = v12;
  v14 = [a3 sortedArrayUsingComparator:v16];

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

+ (id)sortedSuggestionsFromSuggestions:(id)a3
{
  v3 = [a3 mutableCopy];
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

+ (void)_rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:(id)a3 orderedSuggestionCategoryTypes:(id)a4 maxSuggestions:(unint64_t)a5 suggestionQuery:(id)a6 suggestionType:(unint64_t)a7 rankedSuggestions:(id)a8 resumingIndex:(unint64_t)a9 completion:(id)a10
{
  v54 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v15 = a4;
  v40 = a6;
  v16 = a8;
  v17 = a10;
  if ([v16 count] >= a5)
  {
    (*(v17 + 2))(v17, 0, MEMORY[0x1E695E0F0], 0);
    goto LABEL_49;
  }

  v18 = a9;
  if ([v15 count] <= a9)
  {
    v18 = 0;
  }

  if (v18 >= [v15 count])
  {
    v29 = v18;
    goto LABEL_33;
  }

  v37 = v17;
  v38 = v15;
  v41 = 0;
  v19 = 0;
  do
  {
    v42 = v18;
    v20 = [v15 objectAtIndexedSubscript:{v18, v37}];
    v21 = [v39 objectForKeyedSubscript:v20];
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
        if ([v16 count] >= a5)
        {
          break;
        }

        if (([v16 containsObject:v27] & 1) == 0)
        {
          if (![a1 _suggestionIsPrimaryPersonOrPetSuggestion:v27])
          {
            if (![a1 _suggestionIsOCRSuggestion:v27] || !objc_msgSend(a1, "_countOfOCRSuggestionsInSuggestions:", v16))
            {
              [v16 addObject:v27];
              v41 = 1;
              break;
            }

            goto LABEL_23;
          }

          if (v19 <= 2)
          {
            if (!v19)
            {
              [v16 addObject:v27];
              v19 = 1;
              goto LABEL_22;
            }

            [a1 _percentOverlapWithCompletionText:v27 suggestionQuery:v40 minPercentOverlapForPrioritization:0.25];
            if (v28 >= 0.25)
            {
              [v16 addObject:v27];
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
    v18 = v42 + 1;
    v15 = v38;
  }

  while (v42 + 1 < [v38 count]);
  if (v41)
  {
    v30 = 1;
    v17 = v37;
    goto LABEL_48;
  }

  v17 = v37;
LABEL_33:
  if ([v16 count] >= a5)
  {
    v30 = 0;
  }

  else
  {
    v43 = v29;
    [v39 objectForKeyedSubscript:&unk_1F0FBC220];
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
        if ([v16 count] >= a5)
        {
          break;
        }

        if (([v16 containsObject:v36] & 1) == 0)
        {
          [v16 addObject:v36];
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
  (*(v17 + 2))(v17, v30 & 1, v16, v29 + 1);
LABEL_49:
}

+ (id)rankedSearchSuggestionsFromSuggestionCandidates:(id)a3 suggestionType:(unint64_t)a4 queryAssetCount:(unint64_t)a5 queryCollectionCount:(unint64_t)a6 suggestionLimit:(unint64_t)a7 suggestionQuery:(id)a8
{
  v14 = a3;
  v15 = a8;
  if ([v14 count])
  {
    v16 = [v14 objectForKeyedSubscript:&unk_1F0FBC208];
    v33 = v16;
    if (v16)
    {
      v17 = [a1 _dedupeNaturalLanguageDateAndMonthOrYearDateSuggestions:v16];
      v18 = [v14 mutableCopy];
      [v18 setObject:v17 forKeyedSubscript:&unk_1F0FBC208];
      v19 = [v18 copy];
      v20 = v14;
      v14 = v19;
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
    v54 = a1;
    v55 = a5;
    v56 = a6;
    v57 = a4;
    v22 = v15;
    v51 = v22;
    v34 = v21;
    v52 = v34;
    v53 = &v58;
    [v14 enumerateKeysAndObjectsUsingBlock:v50];
    v24 = a4 == 2 && a7 > 1;
    v25 = a7 - v24;
    if (v59[3] >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v59[3];
    }

    v27 = [a1 _orderedSuggestionCategoryTypes];
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
      [a1 _rankedSuggestionsFromRankedSuggestionsBySuggestionCategoryType:v34 orderedSuggestionCategoryTypes:v27 maxSuggestions:v26 suggestionQuery:v22 suggestionType:a4 rankedSuggestions:v28 resumingIndex:v29 completion:v35];
      if (a4 == 2)
      {
        break;
      }
    }

    while ((v41[3] & 1) != 0);
    v30 = [a1 sortedSuggestionsFromSuggestions:*(v45 + 5)];
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