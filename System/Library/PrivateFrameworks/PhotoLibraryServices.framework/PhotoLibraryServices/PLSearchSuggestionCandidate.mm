@interface PLSearchSuggestionCandidate
+ (id)updateCandidates:(id)a3 withTimestampsFromPreviouslyStoredCandidates:(id)a4;
- (BOOL)hasDateFilter;
- (BOOL)hasFirstCategory;
- (BOOL)hasSecondCategory;
- (BOOL)isEqual:(id)a3;
- (PLSearchSuggestionCandidate)initWithSearchSuggestionTemplate:(id)a3 firstGroup:(id)a4 secondGroup:(id)a5 assetIdsForDateFilter:(__CFArray *)a6 minAssetResultCountPerSuggestion:(unint64_t)a7;
- (float)rankingScore;
- (id)description;
- (id)jsonDictionary;
- (id)populatedTemplateQueryStringInLocalization:(id)a3;
- (unint64_t)hash;
- (unint64_t)intersectionCount;
- (void)dealloc;
@end

@implementation PLSearchSuggestionCandidate

- (void)dealloc
{
  assetIdsForDateFilter = self->_assetIdsForDateFilter;
  if (assetIdsForDateFilter)
  {
    CFRelease(assetIdsForDateFilter);
  }

  v4.receiver = self;
  v4.super_class = PLSearchSuggestionCandidate;
  [(PLSearchSuggestionCandidate *)&v4 dealloc];
}

- (id)jsonDictionary
{
  v31[8] = *MEMORY[0x1E69E9840];
  v23 = objc_alloc(MEMORY[0x1E695DF90]);
  v30[0] = @"intersection_count";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLSearchSuggestionCandidate intersectionCount](self, "intersectionCount")}];
  v31[0] = v29;
  v30[1] = @"ranking_score";
  v3 = MEMORY[0x1E696AD98];
  [(PLSearchSuggestionCandidate *)self rankingScore];
  v28 = [v3 numberWithFloat:?];
  v31[1] = v28;
  v30[2] = @"time_last_used";
  v4 = MEMORY[0x1E696AD98];
  [(PLSearchSuggestionCandidate *)self dateLastUsed];
  v27 = [v4 numberWithDouble:?];
  v31[2] = v27;
  v30[3] = @"style_type";
  v5 = MEMORY[0x1E696AD98];
  v26 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v25 = [v5 numberWithUnsignedInteger:{objc_msgSend(v26, "templateStyleType")}];
  v31[3] = v25;
  v30[4] = @"query_string";
  v24 = [(PLSearchSuggestionCandidate *)self populatedTemplateQueryString];
  v6 = [v24 string];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v31[4] = v6;
  v30[5] = @"suggestion_template";
  v22 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v8 = [v22 suggestionTemplateKey];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = v8;
  v30[6] = @"first_group";
  v10 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  v11 = [v10 jsonDictionary];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = v12;
  v30[7] = @"second_group";
  v13 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  v14 = [v13 jsonDictionary];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  v17 = [v23 initWithDictionary:v16];

  if (!v14)
  {
  }

  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  v18 = [v17 copy];

  return v18;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_dateLastUsed];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PLSearchSuggestionTemplate *)self->_suggestionTemplate description];
  firstRankedGroup = self->_firstRankedGroup;
  secondRankedGroup = self->_secondRankedGroup;
  [(PLSearchSuggestionCandidate *)self rankingScore];
  v9 = [v4 stringWithFormat:@"template: %@, first entity: %@, second entity: %@, ranking score: %f, intersection count: %tu, date last used: %@", v5, firstRankedGroup, secondRankedGroup, v8, self->_intersectionCount, v3];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v4 = [v3 hash];
  v5 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  v6 = [v5 group];
  v7 = [v6 groupId] ^ v4;
  v8 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  v9 = [v8 group];
  v10 = [v9 groupId];
  v11 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v12 = v10 ^ [v11 templateStyleType];

  return v7 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
      v7 = [v6 templateStyleType];
      v8 = [(PLSearchSuggestionCandidate *)v5 suggestionTemplate];
      v9 = [v8 templateStyleType];

      if (v7 == v9 && (-[PLSearchSuggestionCandidate suggestionTemplate](self, "suggestionTemplate"), v10 = objc_claimAutoreleasedReturnValue(), -[PLSearchSuggestionCandidate suggestionTemplate](v5, "suggestionTemplate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12) && (-[PLSearchSuggestionCandidate firstRankedGroup](self, "firstRankedGroup"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "group"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "groupId"), -[PLSearchSuggestionCandidate firstRankedGroup](v5, "firstRankedGroup"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "group"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "groupId"), v17, v16, v14, v13, v15 == v18))
      {
        v19 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
        v20 = [v19 group];
        v21 = [v20 groupId];
        v22 = [(PLSearchSuggestionCandidate *)v5 secondRankedGroup];
        v23 = [v22 group];
        v24 = v21 == [v23 groupId];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (BOOL)hasDateFilter
{
  v3 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v4 = [v3 templateStyleType];

  if (v4 == 1)
  {
    return 0;
  }

  v6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v5 = [v6 templateDateType] != 0;

  return v5;
}

- (BOOL)hasSecondCategory
{
  v3 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v4 = [v3 templateStyleType];

  if (v4 == 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    v7 = [v6 templateType];

    return (v7 >> 1) & 1;
  }

  return v5;
}

- (BOOL)hasFirstCategory
{
  v3 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v4 = [v3 templateStyleType];

  if (v4 == 1)
  {
    return 1;
  }

  v6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v7 = [v6 templateType];

  return v7 & 1;
}

- (id)populatedTemplateQueryStringInLocalization:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  v6 = [v5 displayString];

  v7 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  v8 = [v7 displayString];

  v9 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v10 = [v9 templateStyleType];

  v11 = @"SINGLE_ENTITY_KEY";
  if (v10 != 1)
  {
    v11 = 0;
  }

  v12 = v11;
  if (v4)
  {
    v13 = PLPhotoLibraryServicesFrameworkBundle();
    v14 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    v15 = [v14 suggestionTemplateKey];
    v16 = [v13 localizedStringForKey:v15 value:&stru_1F0F06D80 table:@"PhotoLibraryServices" localization:v4];
  }

  else
  {
    v13 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    v14 = [v13 suggestionTemplateKey];
    v16 = PLServicesLocalizedFrameworkString();
  }

  if (v10 != 1 && ![v16 length])
  {
    v21 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
      v34 = [v33 suggestionTemplateKey];
      *buf = 138412290;
      v50 = v34;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unable to locate template for key: %@.", buf, 0xCu);

LABEL_25:
    }

LABEL_26:
    v23 = 0;
    goto LABEL_54;
  }

  v17 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v18 = [v17 isDateOnlyTemplate];

  v19 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v20 = [(__CFString *)v19 isMeTemplate];

  v48 = v16;
  if (v10 != 1)
  {
    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      if (v20)
      {
        v28 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
        v29 = [v28 isMePerson];

        if (v29)
        {
          v46 = v8;
        }

        else
        {
          v38 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
          v39 = [v38 isMePerson];

          if (!v39)
          {
            v21 = 0;
LABEL_45:
            if ([v21 length:v46])
            {
              v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
              v40 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
              v22 = v6;
              v41 = [v21 rangeOfString:v6];
              v19 = @"PLSearchQueryRankedGroupAttribute";
              [v23 addAttribute:@"PLSearchQueryRankedGroupAttribute" value:v40 range:{v41, v42}];

              v25 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
              v24 = v8;
              v31 = [v21 rangeOfString:v8];
              v32 = v23;
              goto LABEL_22;
            }

            goto LABEL_47;
          }

          v46 = v6;
        }

LABEL_44:
        v21 = PFStringWithValidatedFormat();
        goto LABEL_45;
      }

      if ([(__CFString *)v6 length]&& [(__CFString *)v8 length])
      {
        v46 = v6;
        v47 = v8;
        goto LABEL_44;
      }

      v21 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = [(PLSearchSuggestionCandidate *)self description];
        *buf = 138412290;
        v50 = v33;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unable to populate template with mutliple categories: %@.", buf, 0xCu);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
    {
      v19 = v6;
      if ([(__CFString *)v6 length])
      {
        v24 = v8;
        v21 = PFStringWithValidatedFormat();
        if ([v21 length])
        {
          v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
          v25 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
          v26 = v21;
          v22 = v19;
          v27 = v19;
          goto LABEL_21;
        }

        v22 = v19;
LABEL_48:
        v23 = 0;
        goto LABEL_49;
      }

      v22 = v6;
      v24 = v8;
      v35 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [(PLSearchSuggestionCandidate *)self description];
        *buf = 138412290;
        v50 = v36;
        v37 = "Unable to populate template with single category: %@.";
        goto LABEL_34;
      }
    }

    else
    {
      v22 = v6;
      v24 = v8;
      if (v18)
      {
        v21 = v48;
        if ([v21 length])
        {
          v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v35 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [(PLSearchSuggestionCandidate *)self description];
        *buf = 138412290;
        v50 = v36;
        v37 = "Unable to populate invalid template: %@.";
LABEL_34:
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
      }
    }

    v23 = 0;
    v21 = 0;
    goto LABEL_49;
  }

  v21 = v6;
  if (![v21 length])
  {
LABEL_47:
    v22 = v6;
    v24 = v8;
    goto LABEL_48;
  }

  v22 = v6;
  v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
  v24 = v8;
  if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
  {
    v25 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
    v26 = v21;
    v27 = v21;
LABEL_21:
    v31 = [v26 rangeOfString:v27];
    v32 = v23;
LABEL_22:
    [v32 addAttribute:@"PLSearchQueryRankedGroupAttribute" value:v25 range:{v31, v30}];
  }

LABEL_49:
  v43 = [(__CFString *)v12 length];
  v44 = v12;
  if (!v43)
  {
    v19 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    v44 = [(__CFString *)v19 suggestionTemplateKey];
  }

  [v23 addAttribute:@"PLSearchQueryTemplateTypeAttribute" value:v44 range:{0, objc_msgSend(v23, "length")}];
  if (!v43)
  {
  }

  v8 = v24;
  v6 = v22;
  v16 = v48;
LABEL_54:

  return v23;
}

- (float)rankingScore
{
  result = self->_rankingScore;
  if (result == 9.2234e18)
  {
    v4 = [(PLSearchSuggestionCandidate *)self intersectionCount];
    v5 = [(PLSearchSuggestionCandidate *)self minAssetResultCountPerSuggestion];
    v6 = 1.0;
    if (v4 < v5)
    {
      if (v5)
      {
        v6 = (v4 / v5);
      }

      else
      {
        v6 = 0.0;
      }
    }

    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      v7 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
      [v7 rankingScore];
      v9 = v8 * 0.25 + v6 * 0.5;
      v10 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
      [v10 rankingScore];
      v12 = v9 + v11 * 0.25;
      self->_rankingScore = v12;
    }

    else
    {
      if (![(PLSearchSuggestionCandidate *)self hasFirstCategory])
      {
        goto LABEL_12;
      }

      v7 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
      [v7 rankingScore];
      v14 = v13 * 0.5 + v6 * 0.5;
      self->_rankingScore = v14;
    }

LABEL_12:
    v15 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    v16 = [v15 isDateOnlyTemplate];

    if (v16)
    {
      [PSISuggestionRanker initialSuggestionScoreForIndexCategory:1102];
      result = v17;
      self->_rankingScore = result;
    }

    else
    {
      return self->_rankingScore;
    }
  }

  return result;
}

- (unint64_t)intersectionCount
{
  result = self->_intersectionCount;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
    v5 = [v4 group];
    v6 = [v5 assetIds];

    v7 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
    v8 = [v7 group];
    v9 = [v8 assetIds];

    v10 = [(PLSearchSuggestionCandidate *)self assetIdsForDateFilter];
    cf = 0;
    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      Copy = 0;
      if (v6)
      {
        Copy = CFArrayCreateCopy(0, v6);
      }

      cf = Copy;
      [PLScopedSearchUtilities intersectSortedArray:&cf withOtherSortedArray:v9 intersectionLimit:500];
    }

    else if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
    {
      v12 = 0;
      if (v6)
      {
        v12 = CFArrayCreateCopy(0, v6);
      }

      cf = v12;
    }

    v13 = [(PLSearchSuggestionCandidate *)self hasDateFilter];
    result = cf;
    if (v13)
    {
      if (cf)
      {
        [PLScopedSearchUtilities intersectSortedArray:&cf withOtherSortedArray:v10 intersectionLimit:500];
        result = cf;
        goto LABEL_18;
      }

      if (v10)
      {
        result = v10;
LABEL_18:
        result = CFArrayGetCount(result);
        v14 = cf;
        self->_intersectionCount = result;
        if (v14)
        {
          CFRelease(v14);
          return self->_intersectionCount;
        }

        return result;
      }

      result = 0;
    }

    else if (cf)
    {
      goto LABEL_18;
    }

    self->_intersectionCount = 0;
  }

  return result;
}

- (PLSearchSuggestionCandidate)initWithSearchSuggestionTemplate:(id)a3 firstGroup:(id)a4 secondGroup:(id)a5 assetIdsForDateFilter:(__CFArray *)a6 minAssetResultCountPerSuggestion:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [v13 templateStyleType];
  if (v16 == 1)
  {
    if (!v13 || !v14)
    {
      v17 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Nil template and/or group provided for candidate initializer in non tier 0 locale, unable to initialize candidate";
        goto LABEL_16;
      }

LABEL_17:

      v21 = 0;
      goto LABEL_18;
    }
  }

  else if (!v16 && !v13)
  {
    v17 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Nil template provided for candidate initializer in tier 0 locale, unable to initialize candidate";
LABEL_16:
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v23.receiver = self;
  v23.super_class = PLSearchSuggestionCandidate;
  v19 = [(PLSearchSuggestionCandidate *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_firstRankedGroup, a4);
    objc_storeStrong(&v20->_suggestionTemplate, a3);
    if (![v13 templateStyleType])
    {
      objc_storeStrong(&v20->_secondRankedGroup, a5);
      if (a6)
      {
        v20->_assetIdsForDateFilter = CFRetain(a6);
      }
    }

    v20->_minAssetResultCountPerSuggestion = a7;
    v20->_intersectionCount = 0x7FFFFFFFFFFFFFFFLL;
    v20->_rankingScore = 9.2234e18;
  }

  self = v20;
  v21 = self;
LABEL_18:

  return v21;
}

+ (id)updateCandidates:(id)a3 withTimestampsFromPreviouslyStoredCandidates:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![v6 count])
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

LABEL_24:
    v19 = v7;
    goto LABEL_26;
  }

  if ([v5 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      obj = v7;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = v6;
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v23 + 1) + 8 * j);
                if ([v12 isEqual:{v18, v21}])
                {
                  [v18 dateLastUsed];
                  [v12 setDateLastUsed:?];
                  goto LABEL_18;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v5 = v21;
    goto LABEL_24;
  }

  v19 = MEMORY[0x1E695E0F0];
LABEL_26:

  return v19;
}

@end