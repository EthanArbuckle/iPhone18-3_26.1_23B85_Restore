@interface _PSAppUsageUtilities
+ (id)addBiomeDataToCache:(id)a3 event:(id)a4;
+ (id)appUsageDurations;
+ (id)boostAppsForSourceBundleId:(id)a3;
+ (id)mostUsedAppBundleIdsUsingPredicate:(id)a3 knowledgeStore:(id)a4;
+ (id)mostUsedAppShareExtensionsWithAppBundleIdsToShareExtensionBundleIdsMapping:(id)a3 sourceBundleId:(id)a4 sharesFromSourceToTargetBundle:(id)a5 appUsageDurations:(id)a6;
+ (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(int64_t)a4 knowledgeStore:(id)a5;
+ (id)shareExtensionsUsedAndInstalledDaysAgo:(int64_t)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4 knowledgeStore:(id)a5;
+ (id)sharesFromSourceToTargetBundleValues;
+ (id)suggestionArrayWithArray:(id)a3 appendingUniqueElementsByBundleIdFromArray:(id)a4;
+ (id)suggestionsFromAppBundleIds:(id)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4;
+ (id)suggestionsFromShareBundleIds:(id)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4;
+ (void)cacheAppUsageDurations:(id)a3;
+ (void)cacheSharesForEachApp;
@end

@implementation _PSAppUsageUtilities

+ (id)mostUsedAppBundleIdsUsingPredicate:(id)a3 knowledgeStore:(id)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E6997968];
  v8 = [MEMORY[0x1E69979E8] appUsageStream];
  v54[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v53 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v37 = v5;
  v12 = [v7 eventQueryWithPredicate:v5 eventStreams:v9 offset:0 limit:5000 sortDescriptors:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSAppUsageUtilities.m"];
  v14 = [v13 stringByAppendingFormat:@":%d", 39];
  [v12 setClientName:v14];

  [v12 setTracker:&__block_literal_global_23];
  [v12 setExecuteConcurrently:1];
  [v12 setResultType:5];
  [v12 setGroupByProperties:&unk_1F2D8C3A8];
  v50 = 0;
  v35 = v12;
  v36 = v6;
  v15 = [v6 executeQuery:v12 error:&v50];
  v34 = v50;
  v41 = v15;
  v16 = [v15 valueForKeyPath:@"@distinctUnionOfObjects.valueString"];
  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v16;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v17)
  {
    v18 = v17;
    v39 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * i);
        v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", v20];
        v22 = [v41 filteredArrayUsingPredicate:v21];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          v26 = 0.0;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v28 = [*(*(&v42 + 1) + 8 * j) objectForKeyedSubscript:@"duration"];
              [v28 doubleValue];
              v26 = v26 + v29;
            }

            v24 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v24);
        }

        else
        {
          v26 = 0.0;
        }

        v30 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
        [v40 setObject:v30 forKey:v20];
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v18);
  }

  v31 = [v40 keysSortedByValueUsingComparator:&__block_literal_global_39_0];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)shareExtensionsUsedAndInstalledDaysAgo:(int64_t)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4 knowledgeStore:(id)a5
{
  v105[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69979D0];
  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * a3)];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v9 predicateForEventsWithStartInDateRangeFrom:v10 to:v11];

  v13 = MEMORY[0x1E69979D0];
  v14 = [v7 allKeys];
  v15 = [v13 predicateForEventsWithStringValueInValues:v14];

  v16 = MEMORY[0x1E6997968];
  v17 = MEMORY[0x1E696AB28];
  v71 = v15;
  v72 = v12;
  v105[0] = v12;
  v105[1] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  v20 = [MEMORY[0x1E69979E8] appInstallStream];
  v104 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v22 = [v16 eventQueryWithPredicate:v19 eventStreams:v21 offset:0 limit:8 sortDescriptors:0];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSAppUsageUtilities.m"];
  v24 = [v23 stringByAppendingFormat:@":%d", 83];
  [v22 setClientName:v24];

  [v22 setTracker:&__block_literal_global_44];
  [v22 setExecuteConcurrently:1];
  v97 = 0;
  v78 = v8;
  v70 = v22;
  v25 = [v8 executeQuery:v22 error:&v97];
  v69 = v97;
  v26 = [MEMORY[0x1E695DFA8] set];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v25;
  v27 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v94;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v94 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = [*(*(&v93 + 1) + 8 * i) value];
        v32 = [v31 stringValue];

        if (v32)
        {
          v33 = [v7 objectForKey:v32];

          if (v33)
          {
            [v26 addObject:v32];
          }
        }
      }

      v28 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v28);
  }

  if ([v26 count] && objc_msgSend(v26, "count") <= 2)
  {
    v35 = [MEMORY[0x1E69979D0] startDateSortDescriptorAscending:0];
    v102 = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];

    v37 = MEMORY[0x1E6997968];
    v38 = [MEMORY[0x1E69979E8] appUsageStream];
    v101 = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    v67 = v36;
    v40 = [v37 eventQueryWithPredicate:0 eventStreams:v39 offset:0 limit:1 sortDescriptors:v36];

    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSAppUsageUtilities.m"];
    v42 = [v41 stringByAppendingFormat:@":%d", 112];
    [v40 setClientName:v42];

    [v40 setTracker:&__block_literal_global_47];
    [v40 setExecuteConcurrently:1];
    v77 = v40;
    [v40 setResultType:2];
    v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v75 = v26;
    v43 = [v75 countByEnumeratingWithState:&v89 objects:v100 count:16];
    v68 = v26;
    if (v43)
    {
      v44 = v43;
      v45 = *v90;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v90 != v45)
          {
            objc_enumerationMutation(v75);
          }

          v47 = *(*(&v89 + 1) + 8 * j);
          v48 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValue:v47];
          [v77 setPredicate:v48];
          v88 = 0;
          v49 = [v78 executeQuery:v77 error:&v88];
          v50 = v88;
          v51 = [v49 firstObject];
          v52 = v51;
          if (v51)
          {
            v53 = [v51 startDate];
            [v74 setObject:v53 forKeyedSubscript:v47];
          }
        }

        v44 = [v75 countByEnumeratingWithState:&v89 objects:v100 count:16];
      }

      while (v44);
    }

    v54 = [v74 keysSortedByValueUsingComparator:&__block_literal_global_49];
    v34 = [MEMORY[0x1E695DF70] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v73 = v54;
    v55 = [v73 countByEnumeratingWithState:&v84 objects:v99 count:16];
    if (v55)
    {
      v56 = v55;
      v76 = *v85;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v85 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v58 = v7;
          v59 = [v7 objectForKeyedSubscript:*(*(&v84 + 1) + 8 * k)];
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v60 = [v59 countByEnumeratingWithState:&v80 objects:v98 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v81;
            do
            {
              for (m = 0; m != v61; ++m)
              {
                if (*v81 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = [[_PSSuggestion alloc] initWithBundleID:*(*(&v80 + 1) + 8 * m) conversationIdentifier:0 groupName:0 recipients:0];
                if (v64)
                {
                  [v34 addObject:v64];
                }
              }

              v61 = [v59 countByEnumeratingWithState:&v80 objects:v98 count:16];
            }

            while (v61);
          }

          v7 = v58;
        }

        v56 = [v73 countByEnumeratingWithState:&v84 objects:v99 count:16];
      }

      while (v56);
    }

    v26 = v68;
  }

  else
  {
    v34 = MEMORY[0x1E695E0F0];
  }

  v65 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)suggestionsFromAppBundleIds:(id)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v23 = *v31;
    do
    {
      v11 = 0;
      v24 = v9;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [v6 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v11)];
        v13 = v12;
        if (v12 && [v12 count])
        {
          v14 = v6;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v27;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v27 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [[_PSSuggestion alloc] initWithBundleID:*(*(&v26 + 1) + 8 * i) conversationIdentifier:0 groupName:0 recipients:0];
                if (v20)
                {
                  [v7 addObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v17);
          }

          v6 = v14;
          v10 = v23;
          v9 = v24;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)suggestionsFromShareBundleIds:(id)a3 appBundleIdsToShareExtensionBundleIdsMapping:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v9 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        if ([v8 containsObject:{v20, v24}])
        {
          v21 = [[_PSSuggestion alloc] initWithBundleID:v20 conversationIdentifier:0 groupName:0 recipients:0];
          if (v21)
          {
            [v7 addObject:v21];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)boostAppsForSourceBundleId:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = +[_PSConstants mobilePhotosBundleId];
  v7 = +[_PSConstants appleNewsBundleId];
  v8 = [v5 initWithObjects:{v6, v7, 0}];

  objc_autoreleasePoolPop(v4);
  LODWORD(v6) = [v8 containsObject:v3];
  v9 = +[_PSLogging heuristicsChannel];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Rank default (Journal > Reminders) apps for source bundleId: %@", buf, 0xCu);
    }

    v11 = +[_PSConstants notesBundleId];
    v21[0] = v11;
    v12 = +[_PSConstants journalBundleId];
    v21[1] = v12;
    v13 = +[_PSConstants remindersBundleId];
    v21[2] = v13;
    v14 = +[_PSConstants freeformBundleId];
    v21[3] = v14;
    v15 = +[_PSConstants booksBundleId];
    v21[4] = v15;
    v16 = v21;
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Rank default (Reminders > Journal) apps for source bundleId: %@", buf, 0xCu);
    }

    v11 = +[_PSConstants notesBundleId];
    v20[0] = v11;
    v12 = +[_PSConstants remindersBundleId];
    v20[1] = v12;
    v13 = +[_PSConstants journalBundleId];
    v20[2] = v13;
    v14 = +[_PSConstants booksBundleId];
    v20[3] = v14;
    v15 = +[_PSConstants freeformBundleId];
    v20[4] = v15;
    v16 = v20;
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)mostUsedAppShareExtensionsWithAppBundleIdsToShareExtensionBundleIdsMapping:(id)a3 sourceBundleId:(id)a4 sharesFromSourceToTargetBundle:(id)a5 appUsageDurations:(id)a6
{
  v46[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 objectForKeyedSubscript:v11];

  if (v14)
  {
    v15 = [v12 objectForKeyedSubscript:v11];
    v16 = [v15 keysSortedByValueUsingComparator:&__block_literal_global_56];
    v17 = [a1 suggestionsFromShareBundleIds:v16 appBundleIdsToShareExtensionBundleIdsMapping:v10];

    if (v13)
    {
LABEL_3:
      v37 = v12;
      v18 = [v13 keysSortedByValueUsingComparator:&__block_literal_global_59];
      v19 = [a1 suggestionsFromAppBundleIds:v18 appBundleIdsToShareExtensionBundleIdsMapping:v10];
      v34 = [a1 boostAppsForSourceBundleId:v11];
      v38 = v10;
      v20 = [a1 suggestionsFromAppBundleIds:? appBundleIdsToShareExtensionBundleIdsMapping:?];
      v35 = v19;
      v36 = v17;
      v46[0] = v17;
      v46[1] = v20;
      v33 = v20;
      v46[2] = v19;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v42 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        v25 = MEMORY[0x1E695E0F0];
        do
        {
          v26 = 0;
          v27 = v25;
          do
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v25 = [a1 suggestionArrayWithArray:v27 appendingUniqueElementsByBundleIdFromArray:*(*(&v39 + 1) + 8 * v26)];

            ++v26;
            v27 = v25;
          }

          while (v23 != v26);
          v23 = [v21 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v23);
      }

      else
      {
        v25 = MEMORY[0x1E695E0F0];
      }

      v29 = +[_PSLogging heuristicsChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
        *buf = 138412290;
        v44 = v30;
        _os_log_impl(&dword_1B5ED1000, v29, OS_LOG_TYPE_INFO, "Returning %@ share extension suggestions based on sharing app usage and most shared apps", buf, 0xCu);
      }

      v12 = v37;
      v10 = v38;
      v17 = v36;
      goto LABEL_21;
    }
  }

  else
  {
    v28 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v28, OS_LOG_TYPE_INFO, "No value for app shares found, returning no share extension suggestions based on app share values.", buf, 2u);
    }

    v17 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v18 = +[_PSLogging heuristicsChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v18, OS_LOG_TYPE_INFO, "No value for app usage durations found, returning no share extension suggestions based on app usage.", buf, 2u);
  }

  v25 = MEMORY[0x1E695E0F0];
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)relativeAppUsageProbabilitiesForCandidateBundleIds:(id)a3 daysAgo:(int64_t)a4 knowledgeStore:(id)a5
{
  v86[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (v7 && [v7 count])
  {
    v9 = MEMORY[0x1E69979D0];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:(-86400 * a4)];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v9 predicateForEventsWithStartInDateRangeFrom:v10 to:v11];

    v62 = v7;
    v13 = [MEMORY[0x1E69979D0] predicateForEventsWithStringValueInValues:v7];
    v14 = MEMORY[0x1E696AB28];
    v86[0] = v12;
    v86[1] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = MEMORY[0x1E6997968];
    v18 = [MEMORY[0x1E69979E8] appUsageStream];
    v85 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v84 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v58 = v16;
    v22 = [v17 eventQueryWithPredicate:v16 eventStreams:v19 offset:0 limit:5000 sortDescriptors:v21];

    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSAppUsageUtilities.m"];
    v24 = [v23 stringByAppendingFormat:@":%d", 287];
    [v22 setClientName:v24];

    [v22 setTracker:&__block_literal_global_61];
    [v22 setResultType:5];
    [v22 setGroupByProperties:&unk_1F2D8C3C0];
    [v22 setExecuteConcurrently:1];
    v80 = 0;
    v61 = v8;
    v57 = v22;
    v25 = [v8 executeQuery:v22 error:&v80];
    v26 = v80;
    v66 = v25;
    v27 = [v25 valueForKeyPath:@"@distinctUnionOfObjects.valueString"];
    v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v27;
    v28 = 0x1E696A000uLL;
    v67 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
    v59 = v13;
    v60 = v12;
    v56 = v26;
    if (v67)
    {
      v64 = *v77;
      v29 = 0.0;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v77 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v28;
          v32 = *(*(&v76 + 1) + 8 * i);
          v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", v32];
          v34 = [v66 filteredArrayUsingPredicate:v33];
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v35 = [v34 countByEnumeratingWithState:&v72 objects:v82 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v73;
            v38 = 0.0;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v73 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = [*(*(&v72 + 1) + 8 * j) objectForKeyedSubscript:@"duration"];
                [v40 doubleValue];
                v38 = v38 + v41;
              }

              v36 = [v34 countByEnumeratingWithState:&v72 objects:v82 count:16];
            }

            while (v36);
          }

          else
          {
            v38 = 0.0;
          }

          v29 = v29 + v38;
          v28 = v31;
          v42 = [*(v31 + 3480) numberWithDouble:v38];
          [v65 setObject:v42 forKey:v32];
        }

        v67 = [obj countByEnumeratingWithState:&v76 objects:v83 count:16];
      }

      while (v67);
    }

    else
    {
      v29 = 0.0;
    }

    v43 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v65, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v44 = v65;
    v45 = [v44 countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v69;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v69 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v68 + 1) + 8 * k);
          v50 = *(v28 + 3480);
          v51 = [v44 objectForKeyedSubscript:v49];
          [v51 doubleValue];
          v53 = [v50 numberWithDouble:v52 / v29];
          [v43 setObject:v53 forKeyedSubscript:v49];
        }

        v46 = [v44 countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v46);
    }

    v8 = v61;
    v7 = v62;
  }

  else
  {
    v43 = 0;
  }

  v54 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)sharesFromSourceToTargetBundleValues
{
  v2 = [MEMORY[0x1E6997A60] userContext];
  v3 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/appShares/value"];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (id)appUsageDurations
{
  v2 = [MEMORY[0x1E6997A60] userContext];
  v3 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/appUsage/durations"];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (void)cacheAppUsageDurations:(id)a3
{
  v70[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E6997A60] userContext];
  v5 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/appUsage/durations"];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v4 lastModifiedDateForContextualKeyPath:v5];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF00] distantPast];
  }

  [v6 timeIntervalSinceDate:v7];
  if (v8 <= 0.0 || v8 >= 72000.0)
  {
    v49 = v3;
    v43 = v7;
    v44 = v6;
    v45 = v5;
    v46 = v4;
    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = 0;
    v51 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x1E6997000uLL;
    v12 = 0x1E6997000uLL;
    do
    {
      v50 = objc_autoreleasePoolPush();
      v13 = *(v11 + 2408);
      v14 = [*(v12 + 2536) appUsageStream];
      v70[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
      v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
      v69 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
      v18 = [v13 eventQueryWithPredicate:0 eventStreams:v15 offset:v10 limit:500 sortDescriptors:v17];

      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PSAppUsageUtilities.m"];
      v20 = [v19 stringByAppendingFormat:@":%d", 379];
      [v18 setClientName:v20];

      [v18 setTracker:&__block_literal_global_74];
      [v18 setResultType:5];
      [v18 setGroupByProperties:&unk_1F2D8C3D8];
      [v18 setExecuteConcurrently:1];
      v64 = 0;
      v21 = [v49 executeQuery:v18 error:&v64];
      v22 = v64;
      if (v22)
      {
        obj = +[_PSLogging generalChannel];
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v68 = v22;
          _os_log_error_impl(&dword_1B5ED1000, obj, OS_LOG_TYPE_ERROR, "_PSAppUsageUtilities: Error fetching app usage %@", buf, 0xCu);
        }

        v23 = v50;
      }

      else
      {
        v47 = v18;
        v48 = v10;
        v51 = [v21 count];
        v24 = [v21 valueForKeyPath:@"@distinctUnionOfObjects.valueString"];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = v24;
        v55 = [v24 countByEnumeratingWithState:&v60 objects:v66 count:16];
        if (v55)
        {
          v54 = *v61;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v61 != v54)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v60 + 1) + 8 * i);
              v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", v26];
              v28 = v21;
              v29 = [v21 filteredArrayUsingPredicate:v27];
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v30 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v57;
                v33 = 0.0;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v57 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v35 = [*(*(&v56 + 1) + 8 * j) objectForKeyedSubscript:@"duration"];
                    [v35 doubleValue];
                    v33 = v33 + v36;
                  }

                  v31 = [v29 countByEnumeratingWithState:&v56 objects:v65 count:16];
                }

                while (v31);
              }

              else
              {
                v33 = 0.0;
              }

              v37 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
              [v53 setObject:v37 forKey:v26];

              v21 = v28;
            }

            v55 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
          }

          while (v55);
        }

        v18 = v47;
        v10 = v48 + 500;
        v11 = 0x1E6997000;
        v12 = 0x1E6997000;
        v23 = v50;
        v22 = 0;
      }

      objc_autoreleasePoolPop(v23);
      if (v22)
      {
        break;
      }

      v38 = v51 == 500;
      v51 = 500;
    }

    while (v38);
    v39 = +[_PSLogging heuristicsChannel];
    v9 = v53;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v53 count];
      *buf = 134217984;
      v68 = v40;
      _os_log_impl(&dword_1B5ED1000, v39, OS_LOG_TYPE_DEFAULT, "Caching sharing app usage durations for %tu apps", buf, 0xCu);
    }

    v41 = [v53 copy];
    v5 = v45;
    v4 = v46;
    [v46 setObject:v41 forKeyedSubscript:v45];

    v7 = v43;
    v6 = v44;
    v3 = v49;
  }

  else
  {
    v9 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_INFO, "Sharing app usage is still fresh, skipping refresh.", buf, 2u);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

+ (id)addBiomeDataToCache:(id)a3 event:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 eventBody];
  v8 = [v7 sourceBundleID];

  if (v8)
  {
    v9 = [v6 eventBody];
    v10 = [v9 targetBundleID];

    if (v10)
    {
      [v6 timestamp];
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
      [v11 timeIntervalSinceNow];
      v13 = v12 / -86400.0;
      v14 = [v5 mutableCopy];
      v15 = v14;
      if (v13 <= 32.0)
      {
        v16 = v13 * 0.03125;
      }

      else
      {
        v16 = 1.0;
      }

      v17 = [v14 objectForKeyedSubscript:v8];

      if (v17)
      {
        v18 = [v5 objectForKeyedSubscript:v8];
        v19 = [v18 mutableCopy];
        [v15 setObject:v19 forKeyedSubscript:v8];
      }

      else
      {
        v18 = objc_opt_new();
        [v15 setObject:v18 forKeyedSubscript:v8];
      }

      v22 = [v15 objectForKeyedSubscript:v8];
      v23 = [v22 objectForKeyedSubscript:v10];

      if (v23)
      {
        v24 = [v15 objectForKeyedSubscript:v8];
        v25 = [v24 objectForKeyedSubscript:v10];

        [v25 doubleValue];
        v27 = [MEMORY[0x1E696AD98] numberWithDouble:v16 * -0.5 + 1.0 + v26];
        v28 = [v15 objectForKeyedSubscript:v8];
        [v28 setObject:v27 forKeyedSubscript:v10];
      }

      else
      {
        v25 = [MEMORY[0x1E696AD98] numberWithDouble:v16 * -0.5 + 1.0];
        v27 = [v15 objectForKeyedSubscript:v8];
        [v27 setObject:v25 forKeyedSubscript:v10];
      }
    }

    else
    {
      v21 = +[_PSLogging feedbackChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_PSAppUsageUtilities addBiomeDataToCache:v6 event:?];
      }

      v15 = v5;
    }
  }

  else
  {
    v20 = +[_PSLogging feedbackChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_PSAppUsageUtilities addBiomeDataToCache:v6 event:?];
    }

    v15 = v5;
  }

  return v15;
}

+ (void)cacheSharesForEachApp
{
  v3 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v3, OS_LOG_TYPE_DEFAULT, "Caching share extension counts for each share extension", buf, 2u);
  }

  v4 = [MEMORY[0x1E6997A60] userContext];
  v5 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/appShares/value"];
  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__9;
  v36 = __Block_byref_object_dispose__9;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = BiomeLibrary();
  v7 = [v6 ShareSheet];
  v8 = [v7 Feedback];

  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setMonth:-1];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v10 dateByAddingComponents:v9 toDate:v11 options:0];
  v29 = v10;
  v13 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:v11 endDate:v12 maxEvents:-1 lastN:0 reversed:1];
  v14 = [v8 publisherWithOptions:v13];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_84;
  v31[3] = &unk_1E7C25DE0;
  v31[4] = buf;
  v31[5] = a1;
  v15 = [v14 sinkWithCompletion:&__block_literal_global_83 receiveInput:v31];

  [v4 setObject:*(v33 + 5) forKeyedSubscript:v5];
  v27 = v12;
  v28 = v8;
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.coreduetd.shareSheetFeedback.biomeQueue", v16);

  v18 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:@"com.apple.coreduetd.ShareSheetFeedBackSubscription" targetQueue:v17];
  v19 = v5;
  v26 = v4;
  v20 = BiomeLibrary();
  v21 = [v20 ShareSheet];
  v22 = [v21 Feedback];

  v23 = [v22 DSLPublisher];
  v24 = [v23 subscribeOn:v18];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45___PSAppUsageUtilities_cacheSharesForEachApp__block_invoke_94;
  v30[3] = &__block_descriptor_40_e22_v16__0__BMStoreEvent_8l;
  v30[4] = a1;
  v25 = [v24 sinkWithCompletion:&__block_literal_global_93 receiveInput:v30];

  _Block_object_dispose(buf, 8);
}

+ (id)suggestionArrayWithArray:(id)a3 appendingUniqueElementsByBundleIdFromArray:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 arrayByAddingObjectsFromArray:a4];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 bundleID];
        v14 = [v6 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          [v5 addObject:v12];
          v15 = [v12 bundleID];
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)addBiomeDataToCache:(void *)a1 event:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventBody];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Event was missing targetBundleID: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)addBiomeDataToCache:(void *)a1 event:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventBody];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1B5ED1000, v2, v3, "Event was missing sourceBundleID: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end