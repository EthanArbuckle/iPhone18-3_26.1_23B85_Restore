@interface PSIDisambiguationQuery
+ (BOOL)_disambiguationQueryTextIsExactMatchOfGroup:(id)a3 disambiguation:(id)a4 normalizedQueryText:(id)a5;
+ (BOOL)_disambiguationQueryTextIsSubstringMatchOfGroup:(id)a3 disambiguation:(id)a4 normalizedQueryText:(id)a5;
+ (id)_consolidateDisambiguationIntermediateResults:(id)a3;
+ (id)_disambiguationResultForDisambiguation:(id)a3 sortedResults:(id)a4;
+ (id)_fetchGroupsWithFTS5FormattedString:(id)a3 indexingCategories:(id)a4 delegate:(id)a5;
+ (id)_sortedResultsForDisambiguation:(id)a3 exactMatchResults:(id)a4 fullTokenMatchResults:(id)a5 wildcardMatchResults:(id)a6;
+ (id)_sortedResultsForDisambiguationType:(unint64_t)a3 maxNumberOfResults:(unint64_t)a4 exactMatchResults:(id)a5 fullTokenMatchResults:(id)a6 wildcardMatchResults:(id)a7;
- (BOOL)cancelled;
- (PSIDisambiguationQuery)initWithDisambiguation:(id)a3 photoLibrary:(id)a4 photosEntityStore:(id)a5;
- (PSIDisambiguationQuery)initWithDisambiguations:(id)a3 photosEntityStore:(id)a4;
- (id)_disambiguationIntermediateResultWithDisambiguation:(id)a3 delegate:(id)a4;
- (id)_disambiguationResultWithDisambiguation:(id)a3 delegate:(id)a4;
- (id)_groupsForMatchType:(unint64_t)a3 fromGroups:(id)a4 disambiguation:(id)a5 normalizedQueryText:(id)a6;
- (id)performDisambiguationQuery;
- (void)setCancelled:(BOOL)a3;
@end

@implementation PSIDisambiguationQuery

- (id)_groupsForMatchType:(unint64_t)a3 fromGroups:(id)a4 disambiguation:(id)a5 normalizedQueryText:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x1E695DF70];
  v13 = a4;
  v14 = objc_alloc_init(v12);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__PSIDisambiguationQuery__groupsForMatchType_fromGroups_disambiguation_normalizedQueryText___block_invoke;
  v21[3] = &unk_1E7574A60;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v25 = a3;
  v15 = v14;
  v24 = v15;
  v16 = v11;
  v17 = v10;
  [v13 enumerateObjectsUsingBlock:v21];

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
  v2 = self;
  objc_sync_enter(v2);
  cancelled = v2->_cancelled;
  objc_sync_exit(v2);

  return cancelled;
}

- (void)setCancelled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = a3;
  objc_sync_exit(obj);
}

- (id)_disambiguationResultWithDisambiguation:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = [(PSIDisambiguationQuery *)self _disambiguationIntermediateResultWithDisambiguation:v6 delegate:a4];
  v8 = [v7 exactMatchResults];
  v9 = [v7 fullTokenMatchResults];
  v10 = [v7 wildcardMatchResults];
  v11 = [objc_opt_class() _sortedResultsForDisambiguation:v6 exactMatchResults:v8 fullTokenMatchResults:v9 wildcardMatchResults:v10];
  v12 = [objc_opt_class() _disambiguationResultForDisambiguation:v6 sortedResults:v11];

  return v12;
}

- (id)_disambiguationIntermediateResultWithDisambiguation:(id)a3 delegate:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PSIDisambiguationIntermediateResult *)v6 matchOptions];
  v9 = [v7 tokenizer];
  v10 = [(PSIDisambiguationIntermediateResult *)v6 queryTerm];
  v11 = [v9 normalizeString:v10];

  if (v8)
  {
    v13 = [PSITokenizer fts5StringFromString:v11 useWildcard:1 leadingAnchored:(v8 >> 3) & 1 orderInsensitive:0];
    v14 = objc_opt_class();
    v15 = [(PSIDisambiguationIntermediateResult *)v6 indexingCategories];
    v12 = [v14 _fetchGroupsWithFTS5FormattedString:v13 indexingCategories:v15 delegate:v7];
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
      v17 = [(PSIDisambiguationIntermediateResult *)v6 queryTerm];
      *buf = 138412546;
      v31 = v17;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Disambiguation query cancelled for query term: %@ with result: %@", buf, 0x16u);
    }

    v18 = 0;
    v19 = MEMORY[0x1E695E0F0];
    goto LABEL_25;
  }

  if ((v8 & 6) != 0)
  {
    v20 = [PSITokenizer fts5StringFromString:v11 useWildcard:0 leadingAnchored:(v8 >> 3) & 1 orderInsensitive:0];
    v21 = objc_opt_class();
    v22 = [(PSIDisambiguationIntermediateResult *)v6 indexingCategories];
    v19 = [v21 _fetchGroupsWithFTS5FormattedString:v20 indexingCategories:v22 delegate:v7];
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
      v23 = [(PSIDisambiguationIntermediateResult *)v6 queryTerm];
      *buf = 138412546;
      v31 = v23;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Disambiguation query cancelled for query term: %@ with result: %@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_25;
  }

  if ((v8 & 4) == 0)
  {
    v16 = MEMORY[0x1E695E0F0];
    if ((v8 & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_21:
    v25 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  v16 = [(PSIDisambiguationQuery *)self _groupsForMatchType:2 fromGroups:v19 disambiguation:v6 normalizedQueryText:v11];
  if ((v8 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v24 = [(PSIDisambiguationQuery *)self _groupsForMatchType:1 fromGroups:v19 disambiguation:v6 normalizedQueryText:v11];
  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v25 = [(PSIDisambiguationQuery *)self _groupsForMatchType:0 fromGroups:v12 disambiguation:v6 normalizedQueryText:v11];
LABEL_22:
  v18 = [[PSIDisambiguationIntermediateResult alloc] initWithDisambiguation:v6 exactMatchResults:v16 fullTokenMatchResults:v24 wildcardMatchResults:v25];
  v26 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    [(PSIDisambiguationIntermediateResult *)v6 queryTerm];
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

  v7 = [(PSIDisambiguationQuery *)self disambiguations];
  if ([v7 count])
  {
    v8 = [(PSIDisambiguationQuery *)self photosEntityStore];
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
      v44 = v7;
      v10 = "Disambiguation query cancelled for %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v14 = [v7 firstObject];
      v15 = [v14 disambiguationType];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = v7;
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
              v26 = [(PSIDisambiguationQuery *)self _disambiguationIntermediateResultWithDisambiguation:v24 delegate:v8];
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

        if (v15 != [*(*(&v37 + 1) + 8 * v19) disambiguationType])
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

  v8 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "There is no disambiguations", buf, 2u);
  }

  v13 = 0;
LABEL_37:

  return v13;
}

- (PSIDisambiguationQuery)initWithDisambiguations:(id)a3 photosEntityStore:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v17.receiver = self;
      v17.super_class = PSIDisambiguationQuery;
      v11 = [(PSIDisambiguationQuery *)&v17 init];
      p_isa = &v11->super.isa;
      if (v11)
      {
        objc_storeStrong(&v11->_disambiguations, a3);
        objc_storeStrong(p_isa + 2, a4);
      }

      self = p_isa;
      v13 = self;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PSIDisambiguationQuery.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"disambiguations"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Unexpected nil photos entity store, aborting initialization of disambiguation queries: %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (PSIDisambiguationQuery)initWithDisambiguation:(id)a3 photoLibrary:(id)a4 photosEntityStore:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
LABEL_3:
      v20.receiver = self;
      v20.super_class = PSIDisambiguationQuery;
      v13 = [(PSIDisambiguationQuery *)&v20 init];
      if (v13)
      {
        v21 = v9;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        disambiguations = v13->_disambiguations;
        v13->_disambiguations = v14;

        objc_storeStrong(&v13->_photosEntityStore, a5);
        objc_storeStrong(&v13->_photoLibrary, a4);
      }

      self = v13;
      v16 = self;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PSIDisambiguationQuery.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"disambiguation"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v18 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unexpected nil photos entity store, aborting initialization of disambiguation query: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (id)_consolidateDisambiguationIntermediateResults:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v30 = a1;
    v5 = [v4 firstObject];
    v6 = [v5 disambiguation];

    v29 = [v6 disambiguationType];
    v28 = [v6 maxNumberOfResults];
    v31 = v6;
    v27 = [v6 matchOptions];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v4;
    obj = v4;
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
          v16 = [v15 disambiguation];
          v17 = [v16 queryTerm];
          [v7 addObject:v17];

          v18 = [v15 exactMatchResults];
          [v8 addObjectsFromArray:v18];

          v19 = [v15 fullTokenMatchResults];
          [v9 addObjectsFromArray:v19];

          v20 = [v15 wildcardMatchResults];
          [v10 addObjectsFromArray:v20];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    v21 = [PLDisambiguation alloc];
    v22 = [v7 componentsJoinedByString:{@", "}];
    v23 = [(PLDisambiguation *)v21 initWithQueryTerm:v22 disambiguationType:v29 indexingCategories:0 maxNumberOfResults:v28 matchOptions:v27];

    v24 = [v30 _sortedResultsForDisambiguationType:v29 maxNumberOfResults:v28 exactMatchResults:v8 fullTokenMatchResults:v9 wildcardMatchResults:v10];
    v25 = [v30 _disambiguationResultForDisambiguation:v23 sortedResults:v24];

    v4 = v32;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_sortedResultsForDisambiguationType:(unint64_t)a3 maxNumberOfResults:(unint64_t)a4 exactMatchResults:(id)a5 fullTokenMatchResults:(id)a6 wildcardMatchResults:(id)a7
{
  v55[1] = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = v11;
  v15 = [v11 mutableCopy];
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

  v18 = [v12 mutableCopy];
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

  v21 = [v13 mutableCopy];
  v22 = v21;
  v48 = v13;
  v49 = v12;
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
  if (v30 >= a4)
  {
    v31 = a4;
  }

  else
  {
    v31 = v30;
  }

  if (a4)
  {
    v32 = v31;
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
      if (a3 != 1)
      {
        break;
      }

      v43 = [v34 normalizedString];
      v44 = [v14 containsObject:v43];

      if ((v44 & 1) == 0)
      {
        v38 = [v35 normalizedString];
        goto LABEL_27;
      }

LABEL_30:

      if (v32 == ++v33)
      {
        goto LABEL_31;
      }
    }

    if (a3 == 2)
    {
      v39 = [PLGenericLocationTuple alloc];
      v40 = [v35 normalizedString];
      v41 = [v35 lookupIdentifier];
      v42 = -[PLGenericLocationTuple initWithText:lookupIdentifier:indexCategory:](v39, "initWithText:lookupIdentifier:indexCategory:", v40, v41, [v35 category]);

      if ([v14 containsObject:v42])
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_30;
      }

      v36 = [v34 lookupIdentifier];
      v37 = [v14 containsObject:v36];

      if (v37)
      {
        goto LABEL_30;
      }

      v38 = [v35 lookupIdentifier];
LABEL_27:
      v42 = v38;
    }

    [v14 addObject:v42];
LABEL_29:

    goto LABEL_30;
  }

LABEL_31:
  v45 = [v14 copy];

  return v45;
}

+ (id)_sortedResultsForDisambiguation:(id)a3 exactMatchResults:(id)a4 fullTokenMatchResults:(id)a5 wildcardMatchResults:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 disambiguationType];
  v15 = [v13 maxNumberOfResults];

  v16 = [a1 _sortedResultsForDisambiguationType:v14 maxNumberOfResults:v15 exactMatchResults:v12 fullTokenMatchResults:v11 wildcardMatchResults:v10];

  return v16;
}

+ (id)_disambiguationResultForDisambiguation:(id)a3 sortedResults:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count])
  {
    goto LABEL_6;
  }

  v7 = [v5 disambiguationType];
  if (v7 == 1)
  {
    v8 = [PLDisambiguationResult alloc];
    v9 = v5;
    v10 = 0;
    v11 = v6;
    goto LABEL_9;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
      v8 = [PLDisambiguationResult alloc];
      v9 = v5;
      v10 = v6;
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
  v9 = v5;
  v10 = 0;
  v11 = 0;
  v13 = v6;
LABEL_10:
  v12 = [(PLDisambiguationResult *)v8 initWithDisambiguation:v9 personLookupIdentifiers:v10 locationNames:v11 genericLocationTuples:v13];
LABEL_11:

  return v12;
}

+ (id)_fetchGroupsWithFTS5FormattedString:(id)a3 indexingCategories:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = [v7 groupIdsMatchingFTSString:a3 categories:a4 textIsSearchable:1];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
  v10 = [v7 groupArraysFromGroupIdSets:v9 dateFilter:0 searchResultTypes:1 progressBlock:&__block_literal_global_96472];

  v11 = [v10 firstObject];

  return v11;
}

+ (BOOL)_disambiguationQueryTextIsSubstringMatchOfGroup:(id)a3 disambiguation:(id)a4 normalizedQueryText:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 queryTerm];
  if (![v9 length])
  {
    LOBYTE(v10) = 0;
    goto LABEL_5;
  }

  v10 = [v8 length];

  if (v10)
  {
    v9 = [v7 normalizedString];
    LOBYTE(v10) = [v9 containsString:v8];
LABEL_5:
  }

  return v10;
}

+ (BOOL)_disambiguationQueryTextIsExactMatchOfGroup:(id)a3 disambiguation:(id)a4 normalizedQueryText:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 queryTerm];
  if (![v9 length])
  {
    LOBYTE(v10) = 0;
    goto LABEL_5;
  }

  v10 = [v8 length];

  if (v10)
  {
    v9 = [v7 normalizedString];
    LOBYTE(v10) = [v8 isEqualToString:v9];
LABEL_5:
  }

  return v10;
}

@end