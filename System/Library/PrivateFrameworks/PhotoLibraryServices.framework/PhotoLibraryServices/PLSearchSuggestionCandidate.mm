@interface PLSearchSuggestionCandidate
+ (id)updateCandidates:(id)candidates withTimestampsFromPreviouslyStoredCandidates:(id)storedCandidates;
- (BOOL)hasDateFilter;
- (BOOL)hasFirstCategory;
- (BOOL)hasSecondCategory;
- (BOOL)isEqual:(id)equal;
- (PLSearchSuggestionCandidate)initWithSearchSuggestionTemplate:(id)template firstGroup:(id)group secondGroup:(id)secondGroup assetIdsForDateFilter:(__CFArray *)filter minAssetResultCountPerSuggestion:(unint64_t)suggestion;
- (float)rankingScore;
- (id)description;
- (id)jsonDictionary;
- (id)populatedTemplateQueryStringInLocalization:(id)localization;
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
  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v25 = [v5 numberWithUnsignedInteger:{objc_msgSend(suggestionTemplate, "templateStyleType")}];
  v31[3] = v25;
  v30[4] = @"query_string";
  populatedTemplateQueryString = [(PLSearchSuggestionCandidate *)self populatedTemplateQueryString];
  string = [populatedTemplateQueryString string];
  v7 = string;
  if (!string)
  {
    string = [MEMORY[0x1E695DFB0] null];
  }

  v21 = string;
  v31[4] = string;
  v30[5] = @"suggestion_template";
  suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  suggestionTemplateKey = [suggestionTemplate2 suggestionTemplateKey];
  v9 = suggestionTemplateKey;
  if (!suggestionTemplateKey)
  {
    suggestionTemplateKey = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = suggestionTemplateKey;
  v30[6] = @"first_group";
  firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  jsonDictionary = [firstRankedGroup jsonDictionary];
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null;
  v30[7] = @"second_group";
  secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  jsonDictionary2 = [secondRankedGroup jsonDictionary];
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  v17 = [v23 initWithDictionary:v16];

  if (!jsonDictionary2)
  {
  }

  if (!jsonDictionary)
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
  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v4 = [suggestionTemplate hash];
  firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  group = [firstRankedGroup group];
  v7 = [group groupId] ^ v4;
  secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  group2 = [secondRankedGroup group];
  groupId = [group2 groupId];
  suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v12 = groupId ^ [suggestionTemplate2 templateStyleType];

  return v7 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
      templateStyleType = [suggestionTemplate templateStyleType];
      suggestionTemplate2 = [(PLSearchSuggestionCandidate *)v5 suggestionTemplate];
      templateStyleType2 = [suggestionTemplate2 templateStyleType];

      if (templateStyleType == templateStyleType2 && (-[PLSearchSuggestionCandidate suggestionTemplate](self, "suggestionTemplate"), v10 = objc_claimAutoreleasedReturnValue(), -[PLSearchSuggestionCandidate suggestionTemplate](v5, "suggestionTemplate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12) && (-[PLSearchSuggestionCandidate firstRankedGroup](self, "firstRankedGroup"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "group"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "groupId"), -[PLSearchSuggestionCandidate firstRankedGroup](v5, "firstRankedGroup"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "group"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "groupId"), v17, v16, v14, v13, v15 == v18))
      {
        secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
        group = [secondRankedGroup group];
        groupId = [group groupId];
        secondRankedGroup2 = [(PLSearchSuggestionCandidate *)v5 secondRankedGroup];
        group2 = [secondRankedGroup2 group];
        v24 = groupId == [group2 groupId];
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
  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  templateStyleType = [suggestionTemplate templateStyleType];

  if (templateStyleType == 1)
  {
    return 0;
  }

  suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  v5 = [suggestionTemplate2 templateDateType] != 0;

  return v5;
}

- (BOOL)hasSecondCategory
{
  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  templateStyleType = [suggestionTemplate templateStyleType];

  if (templateStyleType == 1)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    templateType = [suggestionTemplate2 templateType];

    return (templateType >> 1) & 1;
  }

  return v5;
}

- (BOOL)hasFirstCategory
{
  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  templateStyleType = [suggestionTemplate templateStyleType];

  if (templateStyleType == 1)
  {
    return 1;
  }

  suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  templateType = [suggestionTemplate2 templateType];

  return templateType & 1;
}

- (id)populatedTemplateQueryStringInLocalization:(id)localization
{
  v51 = *MEMORY[0x1E69E9840];
  localizationCopy = localization;
  firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
  displayString = [firstRankedGroup displayString];

  secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
  displayString2 = [secondRankedGroup displayString];

  suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  templateStyleType = [suggestionTemplate templateStyleType];

  v11 = @"SINGLE_ENTITY_KEY";
  if (templateStyleType != 1)
  {
    v11 = 0;
  }

  v12 = v11;
  if (localizationCopy)
  {
    suggestionTemplate3 = PLPhotoLibraryServicesFrameworkBundle();
    suggestionTemplate2 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    suggestionTemplateKey = [suggestionTemplate2 suggestionTemplateKey];
    v16 = [suggestionTemplate3 localizedStringForKey:suggestionTemplateKey value:&stru_1F0F06D80 table:@"PhotoLibraryServices" localization:localizationCopy];
  }

  else
  {
    suggestionTemplate3 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    suggestionTemplate2 = [suggestionTemplate3 suggestionTemplateKey];
    v16 = PLServicesLocalizedFrameworkString();
  }

  if (templateStyleType != 1 && ![v16 length])
  {
    v21 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      suggestionTemplate4 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
      suggestionTemplateKey2 = [suggestionTemplate4 suggestionTemplateKey];
      *buf = 138412290;
      v50 = suggestionTemplateKey2;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unable to locate template for key: %@.", buf, 0xCu);

LABEL_25:
    }

LABEL_26:
    v23 = 0;
    goto LABEL_54;
  }

  suggestionTemplate5 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  isDateOnlyTemplate = [suggestionTemplate5 isDateOnlyTemplate];

  suggestionTemplate6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
  isMeTemplate = [(__CFString *)suggestionTemplate6 isMeTemplate];

  v48 = v16;
  if (templateStyleType != 1)
  {
    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      if (isMeTemplate)
      {
        firstRankedGroup2 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
        isMePerson = [firstRankedGroup2 isMePerson];

        if (isMePerson)
        {
          v46 = displayString2;
        }

        else
        {
          secondRankedGroup2 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
          isMePerson2 = [secondRankedGroup2 isMePerson];

          if (!isMePerson2)
          {
            v21 = 0;
LABEL_45:
            if ([v21 length:v46])
            {
              v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
              firstRankedGroup3 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
              v22 = displayString;
              v41 = [v21 rangeOfString:displayString];
              suggestionTemplate6 = @"PLSearchQueryRankedGroupAttribute";
              [v23 addAttribute:@"PLSearchQueryRankedGroupAttribute" value:firstRankedGroup3 range:{v41, v42}];

              secondRankedGroup3 = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
              v24 = displayString2;
              v31 = [v21 rangeOfString:displayString2];
              v32 = v23;
              goto LABEL_22;
            }

            goto LABEL_47;
          }

          v46 = displayString;
        }

LABEL_44:
        v21 = PFStringWithValidatedFormat();
        goto LABEL_45;
      }

      if ([(__CFString *)displayString length]&& [(__CFString *)displayString2 length])
      {
        v46 = displayString;
        v47 = displayString2;
        goto LABEL_44;
      }

      v21 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        suggestionTemplate4 = [(PLSearchSuggestionCandidate *)self description];
        *buf = 138412290;
        v50 = suggestionTemplate4;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Unable to populate template with mutliple categories: %@.", buf, 0xCu);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
    {
      suggestionTemplate6 = displayString;
      if ([(__CFString *)displayString length])
      {
        v24 = displayString2;
        v21 = PFStringWithValidatedFormat();
        if ([v21 length])
        {
          v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
          secondRankedGroup3 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
          v26 = v21;
          v22 = suggestionTemplate6;
          v27 = suggestionTemplate6;
          goto LABEL_21;
        }

        v22 = suggestionTemplate6;
LABEL_48:
        v23 = 0;
        goto LABEL_49;
      }

      v22 = displayString;
      v24 = displayString2;
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
      v22 = displayString;
      v24 = displayString2;
      if (isDateOnlyTemplate)
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

  v21 = displayString;
  if (![v21 length])
  {
LABEL_47:
    v22 = displayString;
    v24 = displayString2;
    goto LABEL_48;
  }

  v22 = displayString;
  v23 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v21];
  v24 = displayString2;
  if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
  {
    secondRankedGroup3 = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
    v26 = v21;
    v27 = v21;
LABEL_21:
    v31 = [v26 rangeOfString:v27];
    v32 = v23;
LABEL_22:
    [v32 addAttribute:@"PLSearchQueryRankedGroupAttribute" value:secondRankedGroup3 range:{v31, v30}];
  }

LABEL_49:
  v43 = [(__CFString *)v12 length];
  suggestionTemplateKey3 = v12;
  if (!v43)
  {
    suggestionTemplate6 = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    suggestionTemplateKey3 = [(__CFString *)suggestionTemplate6 suggestionTemplateKey];
  }

  [v23 addAttribute:@"PLSearchQueryTemplateTypeAttribute" value:suggestionTemplateKey3 range:{0, objc_msgSend(v23, "length")}];
  if (!v43)
  {
  }

  displayString2 = v24;
  displayString = v22;
  v16 = v48;
LABEL_54:

  return v23;
}

- (float)rankingScore
{
  result = self->_rankingScore;
  if (result == 9.2234e18)
  {
    intersectionCount = [(PLSearchSuggestionCandidate *)self intersectionCount];
    minAssetResultCountPerSuggestion = [(PLSearchSuggestionCandidate *)self minAssetResultCountPerSuggestion];
    v6 = 1.0;
    if (intersectionCount < minAssetResultCountPerSuggestion)
    {
      if (minAssetResultCountPerSuggestion)
      {
        v6 = (intersectionCount / minAssetResultCountPerSuggestion);
      }

      else
      {
        v6 = 0.0;
      }
    }

    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
      [firstRankedGroup rankingScore];
      v9 = v8 * 0.25 + v6 * 0.5;
      secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
      [secondRankedGroup rankingScore];
      v12 = v9 + v11 * 0.25;
      self->_rankingScore = v12;
    }

    else
    {
      if (![(PLSearchSuggestionCandidate *)self hasFirstCategory])
      {
        goto LABEL_12;
      }

      firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
      [firstRankedGroup rankingScore];
      v14 = v13 * 0.5 + v6 * 0.5;
      self->_rankingScore = v14;
    }

LABEL_12:
    suggestionTemplate = [(PLSearchSuggestionCandidate *)self suggestionTemplate];
    isDateOnlyTemplate = [suggestionTemplate isDateOnlyTemplate];

    if (isDateOnlyTemplate)
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
    firstRankedGroup = [(PLSearchSuggestionCandidate *)self firstRankedGroup];
    group = [firstRankedGroup group];
    assetIds = [group assetIds];

    secondRankedGroup = [(PLSearchSuggestionCandidate *)self secondRankedGroup];
    group2 = [secondRankedGroup group];
    assetIds2 = [group2 assetIds];

    assetIdsForDateFilter = [(PLSearchSuggestionCandidate *)self assetIdsForDateFilter];
    cf = 0;
    if ([(PLSearchSuggestionCandidate *)self hasFirstCategory]&& [(PLSearchSuggestionCandidate *)self hasSecondCategory])
    {
      Copy = 0;
      if (assetIds)
      {
        Copy = CFArrayCreateCopy(0, assetIds);
      }

      cf = Copy;
      [PLScopedSearchUtilities intersectSortedArray:&cf withOtherSortedArray:assetIds2 intersectionLimit:500];
    }

    else if ([(PLSearchSuggestionCandidate *)self hasFirstCategory])
    {
      v12 = 0;
      if (assetIds)
      {
        v12 = CFArrayCreateCopy(0, assetIds);
      }

      cf = v12;
    }

    hasDateFilter = [(PLSearchSuggestionCandidate *)self hasDateFilter];
    result = cf;
    if (hasDateFilter)
    {
      if (cf)
      {
        [PLScopedSearchUtilities intersectSortedArray:&cf withOtherSortedArray:assetIdsForDateFilter intersectionLimit:500];
        result = cf;
        goto LABEL_18;
      }

      if (assetIdsForDateFilter)
      {
        result = assetIdsForDateFilter;
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

- (PLSearchSuggestionCandidate)initWithSearchSuggestionTemplate:(id)template firstGroup:(id)group secondGroup:(id)secondGroup assetIdsForDateFilter:(__CFArray *)filter minAssetResultCountPerSuggestion:(unint64_t)suggestion
{
  templateCopy = template;
  groupCopy = group;
  secondGroupCopy = secondGroup;
  templateStyleType = [templateCopy templateStyleType];
  if (templateStyleType == 1)
  {
    if (!templateCopy || !groupCopy)
    {
      v17 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Nil template and/or group provided for candidate initializer in non tier 0 locale, unable to initialize candidate";
        goto LABEL_16;
      }

LABEL_17:

      selfCopy = 0;
      goto LABEL_18;
    }
  }

  else if (!templateStyleType && !templateCopy)
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
    objc_storeStrong(&v19->_firstRankedGroup, group);
    objc_storeStrong(&v20->_suggestionTemplate, template);
    if (![templateCopy templateStyleType])
    {
      objc_storeStrong(&v20->_secondRankedGroup, secondGroup);
      if (filter)
      {
        v20->_assetIdsForDateFilter = CFRetain(filter);
      }
    }

    v20->_minAssetResultCountPerSuggestion = suggestion;
    v20->_intersectionCount = 0x7FFFFFFFFFFFFFFFLL;
    v20->_rankingScore = 9.2234e18;
  }

  self = v20;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

+ (id)updateCandidates:(id)candidates withTimestampsFromPreviouslyStoredCandidates:(id)storedCandidates
{
  v33 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  storedCandidatesCopy = storedCandidates;
  if (![storedCandidatesCopy count])
  {
    if (candidatesCopy)
    {
      v7 = candidatesCopy;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

LABEL_24:
    v19 = v7;
    goto LABEL_26;
  }

  if ([candidatesCopy count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = candidatesCopy;
    v7 = candidatesCopy;
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
          v13 = storedCandidatesCopy;
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

    candidatesCopy = v21;
    goto LABEL_24;
  }

  v19 = MEMORY[0x1E695E0F0];
LABEL_26:

  return v19;
}

@end