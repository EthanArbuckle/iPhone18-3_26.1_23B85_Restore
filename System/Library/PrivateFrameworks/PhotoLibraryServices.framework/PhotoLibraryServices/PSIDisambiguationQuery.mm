@interface PSIDisambiguationQuery
+ (BOOL)_disambiguationQueryTextIsExactMatchOfGroup:(id)group disambiguation:(id)disambiguation normalizedQueryText:(id)text;
+ (BOOL)_disambiguationQueryTextIsSubstringMatchOfGroup:(id)group disambiguation:(id)disambiguation normalizedQueryText:(id)text;
+ (id)_consolidateDisambiguationIntermediateResults:(id)results;
+ (id)_disambiguationResultForDisambiguation:(id)disambiguation sortedResults:(id)results;
+ (id)_fetchGroupsWithFTS5FormattedString:(id)string indexingCategories:(id)categories delegate:(id)delegate;
+ (id)_sortedResultsForDisambiguation:(id)disambiguation exactMatchResults:(id)results fullTokenMatchResults:(id)matchResults wildcardMatchResults:(id)wildcardMatchResults;
+ (id)_sortedResultsForDisambiguationType:(unint64_t)type maxNumberOfResults:(unint64_t)results exactMatchResults:(id)matchResults fullTokenMatchResults:(id)tokenMatchResults wildcardMatchResults:(id)wildcardMatchResults;
- (BOOL)cancelled;
- (PSIDisambiguationQuery)initWithDisambiguation:(id)disambiguation photoLibrary:(id)library photosEntityStore:(id)store;
- (PSIDisambiguationQuery)initWithDisambiguations:(id)disambiguations photosEntityStore:(id)store;
- (id)_disambiguationIntermediateResultWithDisambiguation:(id)disambiguation delegate:(id)delegate;
- (id)_disambiguationResultWithDisambiguation:(id)disambiguation delegate:(id)delegate;
- (id)_groupsForMatchType:(unint64_t)type fromGroups:(id)groups disambiguation:(id)disambiguation normalizedQueryText:(id)text;
- (id)performDisambiguationQuery;
- (void)setCancelled:(BOOL)cancelled;
@end

@implementation PSIDisambiguationQuery

- (id)_groupsForMatchType:(unint64_t)type fromGroups:(id)groups disambiguation:(id)disambiguation normalizedQueryText:(id)text
{
  disambiguationCopy = disambiguation;
  textCopy = text;
  v12 = MEMORY[0x1E695DF70];
  groupsCopy = groups;
  v14 = objc_alloc_init(v12);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__PSIDisambiguationQuery__groupsForMatchType_fromGroups_disambiguation_normalizedQueryText___block_invoke;
  v21[3] = &unk_1E7574A60;
  v21[4] = self;
  v22 = disambiguationCopy;
  v23 = textCopy;
  typeCopy = type;
  v15 = v14;
  v24 = v15;
  v16 = textCopy;
  v17 = disambiguationCopy;
  [groupsCopy enumerateObjectsUsingBlock:v21];

  v18 = v24;
  v19 = v15;

  return v15;
}

void __92__PSIDisambiguationQuery__groupsForMatchType_fromGroups_disambiguation_normalizedQueryText___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 assetIds] || CFArrayGetCount(objc_msgSend(v6, "assetIds")) < 1)
  {
    goto LABEL_19;
  }

  v3 = [objc_opt_class() _disambiguationQueryTextIsExactMatchOfGroup:v6 disambiguation:*(a1 + 40) normalizedQueryText:*(a1 + 48)];
  v4 = *(a1 + 64);
  if (v4 != 1)
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    if ((v3 | v5))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v5 = [objc_opt_class() _disambiguationQueryTextIsSubstringMatchOfGroup:v6 disambiguation:*(a1 + 40) normalizedQueryText:*(a1 + 48)];
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4 != 1)
  {
    if (v4 != 2 || (v3 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([*(a1 + 40) disambiguationType] != 3)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([v6 category] != 1301 && objc_msgSend(v6, "category") != 1331 && (objc_msgSend(objc_opt_class(), "_disambiguationQueryTextIsSubstringMatchOfGroup:disambiguation:normalizedQueryText:", v6, *(a1 + 40), *(a1 + 48)) & 1) != 0)
  {
LABEL_18:
    [*(a1 + 56) addObject:v6];
  }

LABEL_19:
}

- (BOOL)cancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (void)setCancelled:(BOOL)cancelled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = cancelled;
  objc_sync_exit(obj);
}

- (id)_disambiguationResultWithDisambiguation:(id)disambiguation delegate:(id)delegate
{
  disambiguationCopy = disambiguation;
  v7 = [(PSIDisambiguationQuery *)self _disambiguationIntermediateResultWithDisambiguation:disambiguationCopy delegate:delegate];
  exactMatchResults = [v7 exactMatchResults];
  fullTokenMatchResults = [v7 fullTokenMatchResults];
  wildcardMatchResults = [v7 wildcardMatchResults];
  v11 = [objc_opt_class() _sortedResultsForDisambiguation:disambiguationCopy exactMatchResults:exactMatchResults fullTokenMatchResults:fullTokenMatchResults wildcardMatchResults:wildcardMatchResults];
  v12 = [objc_opt_class() _disambiguationResultForDisambiguation:disambiguationCopy sortedResults:v11];

  return v12;
}

- (id)_disambiguationIntermediateResultWithDisambiguation:(id)disambiguation delegate:(id)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  disambiguationCopy = disambiguation;
  delegateCopy = delegate;
  matchOptions = [(PSIDisambiguationIntermediateResult *)disambiguationCopy matchOptions];
  tokenizer = [delegateCopy tokenizer];
  queryTerm = [(PSIDisambiguationIntermediateResult *)disambiguationCopy queryTerm];
  v11 = [tokenizer normalizeString:queryTerm];

  if (matchOptions)
  {
    v13 = [PSITokenizer fts5StringFromString:v11 useWildcard:1 leadingAnchored:(matchOptions >> 3) & 1 orderInsensitive:0];
    v14 = objc_opt_class();
    indexingCategories = [(PSIDisambiguationIntermediateResult *)disambiguationCopy indexingCategories];
    v12 = [v14 _fetchGroupsWithFTS5FormattedString:v13 indexingCategories:indexingCategories delegate:delegateCopy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  if ([(PSIDisambiguationQuery *)self cancelled])
  {
    v16 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      queryTerm2 = [(PSIDisambiguationIntermediateResult *)disambiguationCopy queryTerm];
      *buf = 138412546;
      v31 = queryTerm2;
      v32 = 2112;
      v33 = disambiguationCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Disambiguation query cancelled for query term: %@ with result: %@", buf, 0x16u);
    }

    v18 = 0;
    v19 = MEMORY[0x1E695E0F0];
    goto LABEL_25;
  }

  if ((matchOptions & 6) != 0)
  {
    v20 = [PSITokenizer fts5StringFromString:v11 useWildcard:0 leadingAnchored:(matchOptions >> 3) & 1 orderInsensitive:0];
    v21 = objc_opt_class();
    indexingCategories2 = [(PSIDisambiguationIntermediateResult *)disambiguationCopy indexingCategories];
    v19 = [v21 _fetchGroupsWithFTS5FormattedString:v20 indexingCategories:indexingCategories2 delegate:delegateCopy];
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  if ([(PSIDisambiguationQuery *)self cancelled])
  {
    v16 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      queryTerm3 = [(PSIDisambiguationIntermediateResult *)disambiguationCopy queryTerm];
      *buf = 138412546;
      v31 = queryTerm3;
      v32 = 2112;
      v33 = disambiguationCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Disambiguation query cancelled for query term: %@ with result: %@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_25;
  }

  if ((matchOptions & 4) == 0)
  {
    v16 = MEMORY[0x1E695E0F0];
    if ((matchOptions & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = MEMORY[0x1E695E0F0];
    if (matchOptions)
    {
      goto LABEL_18;
    }

LABEL_21:
    v25 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  v16 = [(PSIDisambiguationQuery *)self _groupsForMatchType:2 fromGroups:v19 disambiguation:disambiguationCopy normalizedQueryText:v11];
  if ((matchOptions & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = [(PSIDisambiguationQuery *)self _groupsForMatchType:1 fromGroups:v19 disambiguation:disambiguationCopy normalizedQueryText:v11];
  if ((matchOptions & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v25 = [(PSIDisambiguationQuery *)self _groupsForMatchType:0 fromGroups:v12 disambiguation:disambiguationCopy normalizedQueryText:v11];
LABEL_22:
  v18 = [[PSIDisambiguationIntermediateResult alloc] initWithDisambiguation:disambiguationCopy exactMatchResults:v16 fullTokenMatchResults:v24 wildcardMatchResults:v25];
  v26 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    [(PSIDisambiguationIntermediateResult *)disambiguationCopy queryTerm];
    v27 = v29 = v12;
    *buf = 138412546;
    v31 = v27;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Disambiguation query executed for query term: %@ with result: %@", buf, 0x16u);

    v12 = v29;
  }

LABEL_25:

  return v18;
}

- (id)performDisambiguationQuery
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosSearchGetLog();
  v4 = os_signpost_id_generate(v3);

  v5 = v3;
  v6 = v5;
  v30 = v4 - 1;
  spid = v4;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PLSearchBackendQueryDisambiguationQuery", "", buf, 2u);
  }

  v32 = v6;

  disambiguations = [(PSIDisambiguationQuery *)self disambiguations];
  if ([disambiguations count])
  {
    photosEntityStore = [(PSIDisambiguationQuery *)self photosEntityStore];
    if ([(PSIDisambiguationQuery *)self cancelled])
    {
      v9 = PLSearchBackendQueryGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_35:
        v13 = 0;
LABEL_36:

        goto LABEL_37;
      }

      *buf = 138412290;
      v44 = disambiguations;
      v10 = "Disambiguation query cancelled for %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      firstObject = [disambiguations firstObject];
      disambiguationType = [firstObject disambiguationType];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = disambiguations;
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (!v17)
      {
LABEL_19:

        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = v16;
        v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v21)
        {
          v22 = *v34;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v34 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v33 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              v26 = [(PSIDisambiguationQuery *)self _disambiguationIntermediateResultWithDisambiguation:v24 delegate:photosEntityStore];
              if (v26)
              {
                [v9 addObject:v26];
              }

              objc_autoreleasePoolPop(v25);
            }

            v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v21);
        }

        v27 = v32;
        v28 = v27;
        if (v30 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendQueryDisambiguationQuery", "", buf, 2u);
        }

        v13 = [objc_opt_class() _consolidateDisambiguationIntermediateResults:v9];
        goto LABEL_36;
      }

      v18 = *v38;
LABEL_13:
      v19 = 0;
      while (1)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v16);
        }

        if (disambiguationType != [*(*(&v37 + 1) + 8 * v19) disambiguationType])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v17)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }

      v9 = PLSearchBackendQueryGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 138412290;
      v44 = v16;
      v10 = "Disambiguation queries have different disambiguation type: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_19BF1F000, v11, v12, v10, buf, 0xCu);
    goto LABEL_35;
  }

  photosEntityStore = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(photosEntityStore, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, photosEntityStore, OS_LOG_TYPE_DEFAULT, "There is no disambiguations", buf, 2u);
  }

  v13 = 0;
LABEL_37:

  return v13;
}

- (PSIDisambiguationQuery)initWithDisambiguations:(id)disambiguations photosEntityStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  disambiguationsCopy = disambiguations;
  storeCopy = store;
  v10 = storeCopy;
  if (disambiguationsCopy)
  {
    if (storeCopy)
    {
LABEL_3:
      v17.receiver = self;
      v17.super_class = PSIDisambiguationQuery;
      v11 = [(PSIDisambiguationQuery *)&v17 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_disambiguations, disambiguations);
        objc_storeStrong(p_isa + 2, store);
      }

      self = p_isa;
      selfCopy = self;
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDisambiguationQuery.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"disambiguations"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = disambiguationsCopy;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unexpected nil photos entity store, aborting initialization of disambiguation queries: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (PSIDisambiguationQuery)initWithDisambiguation:(id)disambiguation photoLibrary:(id)library photosEntityStore:(id)store
{
  v24 = *MEMORY[0x1E69E9840];
  disambiguationCopy = disambiguation;
  libraryCopy = library;
  storeCopy = store;
  v12 = storeCopy;
  if (disambiguationCopy)
  {
    if (storeCopy)
    {
LABEL_3:
      v20.receiver = self;
      v20.super_class = PSIDisambiguationQuery;
      v13 = [(PSIDisambiguationQuery *)&v20 init];
      if (v13)
      {
        v21 = disambiguationCopy;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        disambiguations = v13->_disambiguations;
        v13->_disambiguations = v14;

        objc_storeStrong(&v13->_photosEntityStore, store);
        objc_storeStrong(&v13->_photoLibrary, library);
      }

      self = v13;
      selfCopy = self;
      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIDisambiguationQuery.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"disambiguation"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = disambiguationCopy;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unexpected nil photos entity store, aborting initialization of disambiguation query: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

+ (id)_consolidateDisambiguationIntermediateResults:(id)results
{
  v39 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if ([resultsCopy count])
  {
    selfCopy = self;
    firstObject = [resultsCopy firstObject];
    disambiguation = [firstObject disambiguation];

    disambiguationType = [disambiguation disambiguationType];
    maxNumberOfResults = [disambiguation maxNumberOfResults];
    v31 = disambiguation;
    matchOptions = [disambiguation matchOptions];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = resultsCopy;
    obj = resultsCopy;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          disambiguation2 = [v15 disambiguation];
          queryTerm = [disambiguation2 queryTerm];
          [v7 addObject:queryTerm];

          exactMatchResults = [v15 exactMatchResults];
          [v8 addObjectsFromArray:exactMatchResults];

          fullTokenMatchResults = [v15 fullTokenMatchResults];
          [v9 addObjectsFromArray:fullTokenMatchResults];

          wildcardMatchResults = [v15 wildcardMatchResults];
          [v10 addObjectsFromArray:wildcardMatchResults];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    v21 = [PLDisambiguation alloc];
    v22 = [v7 componentsJoinedByString:{@", "}];
    v23 = [(PLDisambiguation *)v21 initWithQueryTerm:v22 disambiguationType:disambiguationType indexingCategories:0 maxNumberOfResults:maxNumberOfResults matchOptions:matchOptions];

    v24 = [selfCopy _sortedResultsForDisambiguationType:disambiguationType maxNumberOfResults:maxNumberOfResults exactMatchResults:v8 fullTokenMatchResults:v9 wildcardMatchResults:v10];
    v25 = [selfCopy _disambiguationResultForDisambiguation:v23 sortedResults:v24];

    resultsCopy = v32;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_sortedResultsForDisambiguationType:(unint64_t)type maxNumberOfResults:(unint64_t)results exactMatchResults:(id)matchResults fullTokenMatchResults:(id)tokenMatchResults wildcardMatchResults:(id)wildcardMatchResults
{
  v55[1] = *MEMORY[0x1E69E9840];
  matchResultsCopy = matchResults;
  tokenMatchResultsCopy = tokenMatchResults;
  wildcardMatchResultsCopy = wildcardMatchResults;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = matchResultsCopy;
  v15 = [matchResultsCopy mutableCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v52 = v17;

  v18 = [tokenMatchResultsCopy mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v51 = v20;

  v21 = [wildcardMatchResultsCopy mutableCopy];
  v22 = v21;
  v48 = wildcardMatchResultsCopy;
  v49 = tokenMatchResultsCopy;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v24 = v23;

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
  v55[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  [v52 sortUsingDescriptors:v27];

  v54 = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  [v51 sortUsingDescriptors:v28];

  v53 = v26;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  [v24 sortUsingDescriptors:v29];

  [v25 addObjectsFromArray:v52];
  [v25 addObjectsFromArray:v51];
  v47 = v24;
  [v25 addObjectsFromArray:v24];
  v30 = [v25 count];
  if (v30 >= results)
  {
    resultsCopy = results;
  }

  else
  {
    resultsCopy = v30;
  }

  if (results)
  {
    v32 = resultsCopy;
  }

  else
  {
    v32 = v30;
  }

  if (v32)
  {
    v33 = 0;
    while (1)
    {
      v34 = [v25 objectAtIndexedSubscript:v33];
      v35 = v34;
      if (type != 1)
      {
        break;
      }

      normalizedString = [v34 normalizedString];
      v44 = [v14 containsObject:normalizedString];

      if ((v44 & 1) == 0)
      {
        normalizedString2 = [v35 normalizedString];
        goto LABEL_27;
      }

LABEL_30:

      if (v32 == ++v33)
      {
        goto LABEL_31;
      }
    }

    if (type == 2)
    {
      v39 = [PLGenericLocationTuple alloc];
      normalizedString3 = [v35 normalizedString];
      lookupIdentifier = [v35 lookupIdentifier];
      v42 = -[PLGenericLocationTuple initWithText:lookupIdentifier:indexCategory:](v39, "initWithText:lookupIdentifier:indexCategory:", normalizedString3, lookupIdentifier, [v35 category]);

      if ([v14 containsObject:v42])
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_30;
      }

      lookupIdentifier2 = [v34 lookupIdentifier];
      v37 = [v14 containsObject:lookupIdentifier2];

      if (v37)
      {
        goto LABEL_30;
      }

      normalizedString2 = [v35 lookupIdentifier];
LABEL_27:
      v42 = normalizedString2;
    }

    [v14 addObject:v42];
LABEL_29:

    goto LABEL_30;
  }

LABEL_31:
  v45 = [v14 copy];

  return v45;
}

+ (id)_sortedResultsForDisambiguation:(id)disambiguation exactMatchResults:(id)results fullTokenMatchResults:(id)matchResults wildcardMatchResults:(id)wildcardMatchResults
{
  wildcardMatchResultsCopy = wildcardMatchResults;
  matchResultsCopy = matchResults;
  resultsCopy = results;
  disambiguationCopy = disambiguation;
  disambiguationType = [disambiguationCopy disambiguationType];
  maxNumberOfResults = [disambiguationCopy maxNumberOfResults];

  v16 = [self _sortedResultsForDisambiguationType:disambiguationType maxNumberOfResults:maxNumberOfResults exactMatchResults:resultsCopy fullTokenMatchResults:matchResultsCopy wildcardMatchResults:wildcardMatchResultsCopy];

  return v16;
}

+ (id)_disambiguationResultForDisambiguation:(id)disambiguation sortedResults:(id)results
{
  disambiguationCopy = disambiguation;
  resultsCopy = results;
  if (![resultsCopy count])
  {
    goto LABEL_6;
  }

  disambiguationType = [disambiguationCopy disambiguationType];
  if (disambiguationType == 1)
  {
    v8 = [PLDisambiguationResult alloc];
    v9 = disambiguationCopy;
    v10 = 0;
    v11 = resultsCopy;
    goto LABEL_9;
  }

  if (disambiguationType != 2)
  {
    if (disambiguationType == 3)
    {
      v8 = [PLDisambiguationResult alloc];
      v9 = disambiguationCopy;
      v10 = resultsCopy;
      v11 = 0;
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_11;
  }

  v8 = [PLDisambiguationResult alloc];
  v9 = disambiguationCopy;
  v10 = 0;
  v11 = 0;
  v13 = resultsCopy;
LABEL_10:
  v12 = [(PLDisambiguationResult *)v8 initWithDisambiguation:v9 personLookupIdentifiers:v10 locationNames:v11 genericLocationTuples:v13];
LABEL_11:

  return v12;
}

+ (id)_fetchGroupsWithFTS5FormattedString:(id)string indexingCategories:(id)categories delegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = [delegateCopy groupIdsMatchingFTSString:string categories:categories textIsSearchable:1];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
  v10 = [delegateCopy groupArraysFromGroupIdSets:v9 dateFilter:0 searchResultTypes:1 progressBlock:&__block_literal_global_96472];

  firstObject = [v10 firstObject];

  return firstObject;
}

+ (BOOL)_disambiguationQueryTextIsSubstringMatchOfGroup:(id)group disambiguation:(id)disambiguation normalizedQueryText:(id)text
{
  groupCopy = group;
  textCopy = text;
  queryTerm = [disambiguation queryTerm];
  if (![queryTerm length])
  {
    LOBYTE(v10) = 0;
    goto LABEL_5;
  }

  v10 = [textCopy length];

  if (v10)
  {
    queryTerm = [groupCopy normalizedString];
    LOBYTE(v10) = [queryTerm containsString:textCopy];
LABEL_5:
  }

  return v10;
}

+ (BOOL)_disambiguationQueryTextIsExactMatchOfGroup:(id)group disambiguation:(id)disambiguation normalizedQueryText:(id)text
{
  groupCopy = group;
  textCopy = text;
  queryTerm = [disambiguation queryTerm];
  if (![queryTerm length])
  {
    LOBYTE(v10) = 0;
    goto LABEL_5;
  }

  v10 = [textCopy length];

  if (v10)
  {
    queryTerm = [groupCopy normalizedString];
    LOBYTE(v10) = [textCopy isEqualToString:queryTerm];
LABEL_5:
  }

  return v10;
}

@end