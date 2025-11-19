@interface SPCoreSpotlightTask
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)queryID;
- (BOOL)addJob:(id)a3;
- (SPCoreSpotlightTask)initWithQueryString:(id)a3 queryContext:(id)a4;
- (__CFArray)copyMatchInfo;
- (__SIQuery)_makeSIQueryWithQueryString:(id)a3 queryContext:(id)a4;
- (id)_makeAdditionalQueryStringForQueryContext:(id)a3;
- (id)_makeBundleQueryStringForField:(id)a3 withBundleIDs:(id)a4;
- (id)_makeBundleQueryStringForQueryContext:(id)a3;
- (id)_makeDisabledBundlesQueryStringForQueryContext:(id)a3;
- (id)_makeFilterQueryStringForQueryContext:(id)a3;
- (id)_makeInstantAnswersQueryStringForQueryContext:(id)a3;
- (id)_makePrefsQueryStringWithBundleIDs:(id)a3 prefsDisabledBundles:(id)a4;
- (id)_pommesBundlesWithQueryContext:(id)a3 queryID:(unint64_t)a4;
- (void)addMatchInfo:(_MDPlistContainer *)a3;
- (void)cancel;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)pauseResults;
- (void)removeJob:(id)a3;
- (void)resumeResults;
- (void)schedule;
- (void)start;
@end

@implementation SPCoreSpotlightTask

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 clientBundleID];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "Failed to create the query for queryString:%@, clientBundleID:%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)queryID
{
  internalQueryId = self->_queryID.internalQueryId;
  queryId = self->_queryID.queryId;
  result.var1 = internalQueryId;
  result.var0 = queryId;
  return result;
}

- (void)schedule
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v1, v2, "schedule query %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (!self->_finished)
  {
    [SPCoreSpotlightTask dealloc];
  }

  if (!self->_canceled)
  {
    [(SPCoreSpotlightTask *)self cancel];
  }

  if (self->_siQuery)
  {
    SIQueryRelease();
  }

  v3.receiver = self;
  v3.super_class = SPCoreSpotlightTask;
  [(SPCoreSpotlightTask *)&v3 dealloc];
}

- (void)cancel
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(SPCoreSpotlightTask *)v2 setCanceled:1];
  jobs = v2->_jobs;
  if (jobs)
  {
    v4 = jobs;
    v5 = v2->_jobs;
  }

  else
  {
    v5 = 0;
  }

  v2->_jobs = 0;

  objc_sync_exit(v2);
  v6 = [(NSMutableArray *)jobs count];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = jobs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }

  [(SPQueryResultsQueue *)v2->_resultsQueue cancel];
  [(SPCoreSpotlightTask *)v2 resumeResults];
  v11 = logForCSLogCategoryQuery();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v18 = v2;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_231A35000, v11, OS_LOG_TYPE_INFO, "Canceled task:%p (%lu jobs)", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resumeResults
{
  obj = self;
  objc_sync_enter(obj);
  if ([(SPCoreSpotlightTask *)obj hasPausedResults])
  {
    [(SPCoreSpotlightTask *)obj setHasPausedResults:0];
    [(SPQueryResultsQueue *)obj->_resultsQueue resumeResults];
  }

  objc_sync_exit(obj);
}

- (id)_makeBundleQueryStringForField:(id)a3 withBundleIDs:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithFormat:", @"FieldMatch(%@, "), v5;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = @"%@";
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendFormat:v12, *(*(&v16 + 1) + 8 * i)];
          v12 = @", %@";
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v12 = @", %@";
      }

      while (v10);
    }

    if ([v8 containsObject:@"com.apple.MobileAddressBook"] && (objc_msgSend(v8, "containsObject:", @"com.apple.CoreSuggestions") & 1) == 0)
    {
      [v7 appendString:{@", com.apple.CoreSuggestions"}];
    }

    [v7 appendString:@""]);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_makePrefsQueryStringWithBundleIDs:(id)a3 prefsDisabledBundles:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v7 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", CFSTR("(_kMDItemBundleID=com.apple.Preferences && FieldMatch(kMDItemRelatedAppBundleIdentifier"));
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendFormat:@", %@", *(*(&v24 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v7 appendFormat:@", %@", *(*(&v20 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    [v7 appendString:@"]"));
  }

  else
  {
    v7 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_makeDisabledBundlesQueryStringForQueryContext:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 disableBundles];
  if ([v4 filterOutHiddenApps])
  {
    v6 = [v4 prefsDisabledBundles];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v39 = v6;
    v41 = v4;
    v7 = [MEMORY[0x277CC33F0] fpBundleIDs];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      v13 = @"com.apple.MobileAddressBook";
      v14 = @"com.apple.spotlight.events";
      do
      {
        v15 = 0;
        v42 = v11;
        do
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v43 + 1) + 8 * v15);
          if (([v7 containsObject:v16] & 1) == 0)
          {
            if ([(NSSet *)self->_knownBundleIds containsObject:v16])
            {
              [v8 addObject:v16];
            }

            else
            {
              v17 = v12;
              v18 = v8;
              v19 = v7;
              v20 = v14;
              v21 = v13;
              v22 = v9;
              v23 = self;
              v24 = logForCSLogCategoryDefault();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v48 = v16;
                _os_log_debug_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEBUG, "Skipping unknown disabled bundle %@", buf, 0xCu);
              }

              self = v23;
              v9 = v22;
              v13 = v21;
              v14 = v20;
              v7 = v19;
              v8 = v18;
              v12 = v17;
              v11 = v42;
            }

            if ([v16 isEqualToString:v13])
            {
              [v8 addObject:@"com.apple.spotlight.contacts"];
            }

            if ([v16 isEqualToString:v14])
            {
              [v8 addObject:v14];
            }

            if ([v16 isEqualToString:@"com.apple.usernotificationsd"])
            {
              [v8 addObject:@"com.apple.usernotificationsd"];
            }
          }

          ++v15;
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v11);
    }

    v4 = v41;
    if (v8)
    {
      v25 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForField:@"_kMDItemBundleID" withBundleIDs:v8];
    }

    else
    {
      v25 = 0;
    }

    v6 = v39;
    if ([v41 filterOutHiddenApps])
    {
      v26 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [SPCoreSpotlightTask _makeDisabledBundlesQueryStringForQueryContext:v41];
      }
    }

    if ([v41 filterOutHiddenApps])
    {
      v27 = v9;
    }

    else
    {
      v27 = v8;
    }

    v28 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForField:@"kMDItemRelatedAppBundleIdentifier" withBundleIDs:v27];
    v29 = [(SPCoreSpotlightTask *)self _makePrefsQueryStringWithBundleIDs:v9 prefsDisabledBundles:v39];
    v30 = [MEMORY[0x277CC33F0] sharedInstance];
    v31 = [v30 filterForDisabledBundles:v9];

    v32 = @"false";
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = @"false";
    }

    if (v25)
    {
      v34 = v25;
    }

    else
    {
      v34 = @"false";
    }

    if (v29)
    {
      v35 = v29;
    }

    else
    {
      v35 = @"false";
    }

    if (v28)
    {
      v32 = v28;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!((%@) || (%@) || (%@) || ((%@) && _kMDItemBundleID!=\"com.apple.people.screenTimeRequest\"", v33, v34, v35, v32];

    v5 = v40;
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_makeFilterQueryStringForQueryContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a3 filterQueries];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = [v10 length];
          v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v11 + 2];
          objc_msgSend(v12, "appendString:", @"(");
          [v12 appendString:v10];
          [v12 appendString:@""]);
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 componentsJoinedByString:@" && "];
    v14 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_231A35000, v14, OS_LOG_TYPE_INFO, "With filters: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_makeAdditionalQueryStringForQueryContext:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleIDs];
  v5 = [v3 additionalBundleIDs];
  v32 = [v3 additionalQueries];
  if ([v5 count] || objc_msgSend(v32, "count"))
  {
    v28 = v3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      v31 = *MEMORY[0x277CC2500];
      v29 = *v40;
      do
      {
        v10 = 0;
        v30 = v8;
        do
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * v10);
          if ([v5 containsObject:v11])
          {
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v31, v11];
            [v33 addObject:v12];
          }

          else
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v12 = v32;
            v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v36;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v36 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v35 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"<:b:>" withString:v11];
                  [v6 addObject:v17];
                }

                v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v14);
              v9 = v29;
              v8 = v30;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v8);
    }

    v18 = [v33 allObjects];
    v19 = [v18 componentsJoinedByString:@" || "];

    v20 = [v6 allObjects];
    v21 = [v20 componentsJoinedByString:@" || "];

    if ([v19 length] && objc_msgSend(v21, "length"))
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) && (%@))", v19, v21];
    }

    else
    {
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v22 = v23;
    }

    v24 = v22;

    v4 = v27;
    v3 = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_makeInstantAnswersQueryStringForQueryContext:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleIDs];
  v5 = [v3 instantAnswersBundleIDs];
  v47 = [v3 instantAnswersQueries];
  if ([v5 count] || objc_msgSend(v47, "count"))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v44 = v5;
    if (!_os_feature_enabled_impl() || v4 && [v4 count])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v8)
      {
        v9 = v8;
        v41 = v4;
        v10 = *v54;
        v46 = *MEMORY[0x277CC2500];
        v43 = *v54;
        do
        {
          v11 = 0;
          v45 = v9;
          do
          {
            if (*v54 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v53 + 1) + 8 * v11);
            if ([v5 containsObject:v12])
            {
              v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v46, v12];
              [v48 addObject:v13];
            }

            else
            {
              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v13 = v47;
              v14 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = v7;
                v17 = *v50;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v50 != v17)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v19 = [*(*(&v49 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"<:b:>" withString:v12];
                    [v6 addObject:v19];
                  }

                  v15 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
                }

                while (v15);
                v10 = v43;
                v5 = v44;
                v7 = v16;
                v9 = v45;
              }
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [v7 countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v9);
        v4 = v41;
      }
    }

    else
    {
      v42 = v4;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v20 = v5;
      v21 = [v20 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v62;
        v24 = *MEMORY[0x277CC2500];
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v62 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ == %@)", v24, *(*(&v61 + 1) + 8 * j)];
            [v48 addObject:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v61 objects:v68 count:16];
        }

        while (v22);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v7 = v47;
      v27 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v58;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v58 != v29)
            {
              objc_enumerationMutation(v7);
            }

            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", *(*(&v57 + 1) + 8 * k)];
            [v6 addObject:v31];
          }

          v28 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v28);
      }

      v4 = v42;
      v5 = v44;
    }

    v32 = [v48 allObjects];
    v33 = [v32 componentsJoinedByString:@" || "];

    v34 = [v6 allObjects];
    v35 = [v34 componentsJoinedByString:@" || "];

    if ([v33 length] && objc_msgSend(v35, "length"))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"((%@) && (%@))", v33, v35];
    }

    else
    {
      if (v33)
      {
        v37 = v33;
      }

      else
      {
        v37 = v35;
      }

      v36 = v37;
    }

    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)_makeBundleQueryStringForQueryContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleIDs];
  v5 = [v3 additionalBundleIDs];
  v6 = [v3 instantAnswersBundleIDs];
  v7 = [v4 mutableCopy];
  v19 = v5;
  [v7 removeObjectsInArray:v5];
  [v7 removeObjectsInArray:v6];
  v20 = v4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v13 = *MEMORY[0x277CC2500];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(%@ == %@)", v13, *(*(&v21 + 1) + 8 * i)];
        [v8 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v16 = [v8 componentsJoinedByString:@" || "];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_pommesBundlesWithQueryContext:(id)a3 queryID:(unint64_t)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v5 pommes])
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v39 = a4;
      _os_log_impl(&dword_231A35000, v7, OS_LOG_TYPE_INFO, "[qid=%llu] _pBWQC: uP: YES", buf, 0xCu);
    }

    v8 = [v5 clientBundleID];

    if (v8)
    {
      v9 = [v5 clientBundleID];
      v10 = [SDPommesFeature usingPommesRankingForClientBundle:v9];

      if (v10)
      {
        v11 = [v5 clientBundleID];
        [v6 addObject:v11];
      }
    }

    v12 = [v5 bundleIDs];
    v13 = [v12 count];

    if (v13)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [v5 bundleIDs];
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (!v15)
      {
        goto LABEL_25;
      }

      v16 = v15;
      v33 = a4;
      v17 = *v35;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = [v5 clientBundleID];
          v21 = [SDPommesFeature isSearchToolClientBundle:v20];

          if (!v21)
          {
            if (![SDPommesFeature usingPommesRankingForClientBundle:v19])
            {
              continue;
            }

LABEL_17:
            [v6 addObject:v19];
            continue;
          }

          v22 = +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
          v23 = [v22 containsObject:v19];

          if (v23)
          {
            goto LABEL_17;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (!v16)
        {
          a4 = v33;
          goto LABEL_25;
        }
      }
    }

    v24 = [v5 clientBundleID];
    v25 = [SDPommesFeature isSearchToolClientBundle:v24];

    if (v25)
    {
      +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
    }

    else
    {
      +[SDPommesFeature allBundleIDsUsingPommesRanking];
    }
    v14 = ;
    [v6 addObjectsFromArray:v14];
LABEL_25:
  }

  v26 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if ([v5 pommes])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [v6 count];
    *buf = 134218498;
    if (v28)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v39 = a4;
    v40 = 2112;
    v41 = v27;
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "[qid=%llu] _pBWQC: uP: %@, iPB: %@", buf, 0x20u);
  }

  v30 = [v6 allObjects];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (__SIQuery)_makeSIQueryWithQueryString:(id)a3 queryContext:(id)a4
{
  v136[4] = *MEMORY[0x277D85DE8];
  v106 = a3;
  v5 = a4;
  v6 = [v5 filterQuery];
  v99 = v6;
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(&v95 + 1) = v7;
  cf = [v5 fetchAttributes];

  v97 = [v5 nonTopHitFetchAttributeIndexesBits];
  *&v95 = [v5 rankingQueries];

  v94 = [v5 maxCount];
  v8 = [v5 queryID];
  if ([v5 lowPriority])
  {
    v9 = 270336;
  }

  else
  {
    v9 = 270339;
  }

  v10 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = qos_class_self();
    v12 = [v5 lowPriority];
    *buf = 134218496;
    v13 = 3;
    if (v12)
    {
      v13 = 0;
    }

    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v11;
    *&buf[18] = 2048;
    *&buf[20] = v13;
    _os_log_impl(&dword_231A35000, v10, OS_LOG_TYPE_INFO, "[qid=%llu] QoS _mSIQWQS: %d prio: %lld", buf, 0x1Cu);
  }

  if ([v5 grouped])
  {
    v14 = v9 | 0x800;
  }

  else
  {
    v14 = v9;
  }

  if ([v5 live])
  {
    v14 |= 0x400uLL;
  }

  if ([v5 disableBlockingOnIndex])
  {
    v14 |= 0x10000000uLL;
  }

  if ([v5 disableResultStreaming] && objc_msgSend(v5, "attribute"))
  {
    v14 |= 0x20000000uLL;
  }

  v87 = v14;
  v15 = [v5 preferredLanguages];
  if (![v15 count])
  {
    v16 = [MEMORY[0x277CBEAF8] preferredLanguages];

    v15 = v16;
  }

  v103 = v15;
  if ([v106 length])
  {
    if ([v5 attribute])
    {
      if ([v106 characterAtIndex:0] == 64)
      {
        goto LABEL_31;
      }

      v17 = @"@(%@)";
      goto LABEL_30;
    }

    if ([v5 counting] && objc_msgSend(v106, "characterAtIndex:", 0) != 35)
    {
      v17 = @"#(%@)";
LABEL_30:
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:v17, v106];

      v106 = v18;
    }
  }

LABEL_31:
  v19 = [v5 options];
  v20 = [v19 objectForKeyedSubscript:@"SPQueryOptionDateQueryContext"];
  v91 = [v20 BOOLValue];

  v21 = [v5 options];
  v22 = [v21 objectForKeyedSubscript:@"SPQueryOptionDisableMetadataSearch"];
  v23 = [v22 BOOLValue];

  v24 = [v5 options];
  v25 = [v24 objectForKeyedSubscript:@"SPQueryOptionDisableSemanticSearch"];
  v26 = [v25 BOOLValue];

  v27 = [v5 options];
  v28 = [v27 objectForKeyedSubscript:@"SPQueryOptionDisableU2"];
  v29 = [v28 BOOLValue];

  v135[0] = @"disableMetadataSearch";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  v136[0] = v30;
  v135[1] = @"disableSemanticSearch";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:v26];
  v136[1] = v31;
  v135[2] = @"disableU2";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:v29];
  v136[2] = v32;
  v135[3] = @"maxANNResultCount";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:1000];
  v136[3] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:4];
  v104 = [v34 mutableCopy];

  if (_makeSIQueryWithQueryString_queryContext__onceToken != -1)
  {
    [SPCoreSpotlightTask _makeSIQueryWithQueryString:queryContext:];
  }

  v35 = objc_alloc(MEMORY[0x277CC3520]);
  v36 = [v5 queryEmbedding];
  v37 = [v35 initWithEncodedData:v36];

  if (v37)
  {
    dispatch_async(_makeSIQueryWithQueryString_queryContext__dasCheckpointQueue, &__block_literal_global_263);
    v38 = [v37 vectors];
    [v104 setObject:v38 forKey:@"vectors"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v37, "dimension")}];
    [v104 setObject:v39 forKey:@"vec_dimensions"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v37, "format")}];
    [v104 setObject:v40 forKey:@"vec_data_format"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v37, "version")}];
    [v104 setObject:v41 forKey:@"vec_version"];
  }

  v42 = v8;
  v43 = [(SPCoreSpotlightTask *)self _pommesBundlesWithQueryContext:v5 queryID:v8];
  v90 = v37;
  if ([v5 pommes])
  {
    v44 = [v5 clientBundleID];
    if ([SDPommesFeature isSearchToolClientBundle:v44])
    {
      v45 = objc_opt_new();
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = [v43 count] | v45;
  LODWORD(v47) = v46 != 0;
  if (v46)
  {
    v48 = [v5 clientBundleID];
    v49 = ![SDPommesFeature isSpotlightUIClientBundle:v48];
  }

  else
  {
    v49 = 0;
  }

  v50 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = [v43 count];
    v52 = @"NO";
    *buf = 134218754;
    *&buf[12] = 2048;
    if (v47)
    {
      v53 = @"YES";
    }

    else
    {
      v53 = @"NO";
    }

    *&buf[4] = v42;
    *&buf[14] = v51;
    *&buf[22] = 2112;
    if (v49)
    {
      v52 = @"YES";
    }

    *&buf[24] = v53;
    LOWORD(v110) = 2112;
    *(&v110 + 2) = v52;
    _os_log_impl(&dword_231A35000, v50, OS_LOG_TYPE_INFO, "[qid=%llu] _mSIQWQS: pRB#: %lu, pR: %@, wQO: %@", buf, 0x2Au);
  }

  v54 = [v5 filterQueries];
  v55 = [(SPCoreSpotlightTask *)self _makeBundleQueryStringForQueryContext:v5];
  v102 = [(SPCoreSpotlightTask *)self _makeAdditionalQueryStringForQueryContext:v5];
  v101 = [(SPCoreSpotlightTask *)self _makeInstantAnswersQueryStringForQueryContext:v5];
  v56 = [(SPCoreSpotlightTask *)self _makeDisabledBundlesQueryStringForQueryContext:v5];
  v57 = v56;
  v100 = v43;
  v88 = v56;
  v89 = v55;
  if (!v54)
  {
    if (v55)
    {
      if (v56)
      {
        v133[0] = v55;
        v133[1] = v56;
        v60 = MEMORY[0x277CBEA60];
        v61 = v133;
        v62 = 2;
LABEL_66:
        v54 = [v60 arrayWithObjects:v61 count:v62];
        goto LABEL_67;
      }

      v132 = v55;
      v60 = MEMORY[0x277CBEA60];
      v61 = &v132;
    }

    else
    {
      if (!v56)
      {
        v54 = 0;
        goto LABEL_67;
      }

      v131 = v56;
      v60 = MEMORY[0x277CBEA60];
      v61 = &v131;
    }

    v62 = 1;
    goto LABEL_66;
  }

  if (!v55)
  {
    if (!v56)
    {
      goto LABEL_67;
    }

    v63 = v54;
    v64 = v57;
LABEL_61:
    v65 = [v63 arrayByAddingObject:v64];

    v54 = v65;
    goto LABEL_67;
  }

  if (!v56)
  {
    v63 = v54;
    v64 = v55;
    goto LABEL_61;
  }

  v134[0] = v55;
  v134[1] = v56;
  v58 = v47;
  v47 = v54;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];
  v54 = [v54 arrayByAddingObjectsFromArray:v59];

  LOBYTE(v47) = v58;
LABEL_67:
  v66 = *MEMORY[0x277CBECE8];
  v67 = SIUserCtxCreateWithLanguages();
  [v5 entitledAttributes];
  SIUserCtxSetEntitlements();
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v110 = 0u;
  *buf = 1;
  *&buf[8] = v106;
  *&buf[16] = v102;
  *&buf[24] = v101;
  v86 = [v5 completionString];
  *(&v110 + 1) = v86;
  *&v111 = [v5 completionResultCount];
  DWORD2(v111) = [v5 completionOptions];
  v85 = [v5 completionAttributes];
  *&v112 = v85;
  v84 = [v5 completionWeights];
  *(&v112 + 1) = v84;
  v68 = [v5 scopes];
  v113 = v68;
  *&v114 = cf;
  *(&v114 + 1) = v67;
  cfa = v67;
  add = atomic_fetch_add(&gQueryID, 1u);
  v115.queryId = v42;
  v115.internalQueryId = add;
  *&v116 = v87;
  *(&v116 + 1) = [v5 maxRankedResultCount];
  *&v117 = v94;
  v70 = [v5 groupingRules];
  *(&v117 + 1) = v70;
  v118 = v95;
  *&v119 = 0;
  [v5 currentTime];
  *(&v119 + 1) = v71;
  v72 = [v5 userQuery];
  *&v120 = v72;
  *(&v120 + 1) = v54;
  v96 = v54;
  LOWORD(v121) = [v5 strongRankingQueryCount];
  WORD1(v121) = [v5 dominantRankingQueryCount];
  WORD2(v121) = [v5 dominatedRankingQueryCount];
  WORD3(v121) = [v5 shortcutBit];
  WORD4(v121) = [v5 highMatchBit];
  WORD5(v121) = [v5 lowMatchBit];
  WORD6(v121) = [v5 highRecencyBit];
  HIWORD(v121) = [v5 lowRecencyBit];
  *&v122 = v97;
  *&v123 = [v5 fuzzyMask];
  *(&v123 + 1) = v73;
  *&v124 = [v5 fuzzyMatch];
  *(&v124 + 1) = v74;
  LOBYTE(v125) = 0;
  BYTE1(v125) = v47;
  *(&v125 + 1) = v43;
  *&v126 = v45;
  v98 = v45;
  BYTE8(v126) = v49;
  v75 = [v5 rewriteContext];
  v76 = [v75 tokenRewrites];
  *&v127 = v76;
  v77 = [v5 queryUnderstandingOutput];
  *(&v127 + 1) = v77;
  *&v128 = v104;
  v78 = [v5 attributedUserQuery];
  *(&v128 + 1) = v78;
  v79 = [v5 clientBundleID];
  *&v129 = v79;
  v80 = [v5 resultMatchingAttributes];
  *(&v129 + 1) = v80;
  LOBYTE(v130) = v91;
  BYTE1(v130) = [v5 computePhotosDerivedAttributes];
  BYTE2(v130) = [v5 dateSortedL1];

  v81 = SIQueryCreateWithParameters();
  self->_queryID = v115;
  if ([v5 maximumBatchSize] && v81)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v107 = 134217984;
      v108 = [v5 maximumBatchSize];
      _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting batching parameters corresponding to requested maximum batch size %zd", v107, 0xCu);
    }

    [v5 maximumBatchSize];
    [v5 maximumBatchSize];
    [v5 maximumBatchSize];
    SIQuerySetBatchingParameters();
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  v82 = *MEMORY[0x277D85DE8];
  return v81;
}

void __64__SPCoreSpotlightTask__makeSIQueryWithQueryString_queryContext___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.corespotlight.das.checkpoints", v2);
  v1 = _makeSIQueryWithQueryString_queryContext__dasCheckpointQueue;
  _makeSIQueryWithQueryString_queryContext__dasCheckpointQueue = v0;
}

void __64__SPCoreSpotlightTask__makeSIQueryWithQueryString_queryContext___block_invoke_2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v4 = 0;
  v1 = [MEMORY[0x277CF07F0] reportFeatureCheckpoint:70 forFeature:900 error:&v4];
  v2 = v4;
  if ((v1 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v2;
    _os_log_impl(&dword_231A35000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to report DAS checkpoint BGSystemTaskFeatureCheckpointAvailable: %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v0);
  v3 = *MEMORY[0x277D85DE8];
}

- (SPCoreSpotlightTask)initWithQueryString:(id)a3 queryContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = SPCoreSpotlightTask;
  v9 = [(SPCoreSpotlightTask *)&v21 init];
  if (v9)
  {
    v9->_queryID.queryId = [v8 queryID];
    objc_storeStrong(&v9->_queryString, a3);
    objc_storeStrong(&v9->_queryContext, a4);
    v10 = [v8 clientBundleID];
    if (v10 || [v8 disableResultStreaming])
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%ld.%p", v10, objc_msgSend(v8, "queryID"), v9];
      v12 = [SPQueryResultsQueue alloc];
      v13 = [SPQueryResultsQueue sharedInstanceDispatchQueue:0];
      v14 = [v13 dispatchQueue];
      v15 = [(SPQueryResultsQueue *)v12 initWithIdentifier:v11 dispatchQueue:v14];
      resultsQueue = v9->_resultsQueue;
      v9->_resultsQueue = v15;
    }

    else
    {
      v20 = [SPQueryResultsQueue sharedInstanceDispatchQueue:0];
      v11 = v9->_resultsQueue;
      v9->_resultsQueue = v20;
    }

    -[SPQueryResultsQueue setLive:](v9->_resultsQueue, "setLive:", [v8 live]);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    jobs = v9->_jobs;
    v9->_jobs = v17;

    v9->_critical = 0;
  }

  return v9;
}

- (BOOL)addJob:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SPCoreSpotlightTask *)v5 canceled];
    if (!v6)
    {
      [(NSMutableArray *)v5->_jobs addObject:v4];
    }

    objc_sync_exit(v5);

    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeJob:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableArray *)v4->_jobs count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)v4->_jobs objectAtIndex:v6];
      if (v7 == v8)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)v4->_jobs removeObjectAtIndex:v6];
  }

LABEL_7:
  objc_sync_exit(v4);
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SPCoreSpotlightTask finishWithError:?];
  }

  self->_finished = 1;
  scheduleBlock = self->_scheduleBlock;
  self->_scheduleBlock = 0;

  v7 = MEMORY[0x2383760E0](self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  if (v7)
  {
    (v7)[2](v7, v4);
  }

  if (self->_siQuery)
  {
    SIQueryRelease();
    self->_siQuery = 0;
  }

  v9 = logForCSLogCategoryQuery();
  v10 = [(SPCoreSpotlightTask *)self queryID];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_231A35000, v9, OS_SIGNPOST_INTERVAL_END, v11, "SPCoreSpotlightLatency", &unk_231AF625D, v12, 2u);
    }
  }
}

- (void)pauseResults
{
  *a5 = 134218240;
  *(a5 + 4) = a1;
  *(a5 + 12) = 2048;
  *(a5 + 14) = a4;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Pause query (%lld,%lld)", a5, 0x16u);
}

- (void)addMatchInfo:(_MDPlistContainer *)a3
{
  obj = self;
  objc_sync_enter(obj);
  matchInfo = obj->_matchInfo;
  if (!matchInfo)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = obj->_matchInfo;
    obj->_matchInfo = v5;

    matchInfo = obj->_matchInfo;
  }

  [(NSMutableArray *)matchInfo addObject:a3];
  objc_sync_exit(obj);
}

- (__CFArray)copyMatchInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_matchInfo copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_makeDisabledBundlesQueryStringForQueryContext:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 queryID];
  v2 = [a1 clientBundleID];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_231A35000, v1, v2, "Finish query %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end