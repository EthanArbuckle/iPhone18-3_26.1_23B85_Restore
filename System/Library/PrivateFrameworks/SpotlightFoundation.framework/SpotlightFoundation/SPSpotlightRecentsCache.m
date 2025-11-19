@interface SPSpotlightRecentsCache
+ (BOOL)topic:(id)a3 isSameAsTopic:(id)a4;
+ (id)filteredTopics:(id)a3;
+ (id)recentResults;
+ (id)recentResultsWithOptions:(id)a3;
+ (id)recentResultsWithOptions:(id)a3 rankAndDeduplicate:(id)a4;
+ (id)resultFromTopic:(id)a3;
+ (void)cacheContact:(id)a3 contactIdentifier:(id)a4 score:(id)a5 searchString:(id)a6;
+ (void)cacheLocalResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6 searchString:(id)a7;
+ (void)cachePerson:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5 searchString:(id)a6;
+ (void)cacheResult:(id)a3 title:(id)a4 searchString:(id)a5;
+ (void)deleteAllRecentResults;
+ (void)deleteContact:(id)a3 contactIdentifier:(id)a4 score:(id)a5;
+ (void)deleteLocalResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6;
+ (void)deletePerson:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5;
+ (void)deleteResult:(id)a3 title:(id)a4;
+ (void)enumerateRecentCompletionsWithSearchString:(id)a3 usingBlock:(id)a4;
+ (void)enumerateRecentResultsUsingBlock:(id)a3;
+ (void)updateApplicationContexts:(id)a3;
@end

@implementation SPSpotlightRecentsCache

+ (void)updateApplicationContexts:(id)a3
{
  v3 = a3;
  v4 = +[SPCacheManager defaultManager];
  [v4 updateRecentsWithBundleIdentifiers:v3];
}

+ (id)recentResults
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SPSpotlightRecentsCacheOptionMaxCountKey";
  v7[0] = &unk_287C3DF28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [SPSpotlightRecentsCache recentResultsWithOptions:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)recentResultsWithOptions:(id)a3
{
  v3 = a3;
  v4 = +[SPCacheManager defaultManager];
  v5 = [v4 recentResultsWithOptions:v3 rankAndDeduplicate:0];

  return v5;
}

+ (id)recentResultsWithOptions:(id)a3 rankAndDeduplicate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SPCacheManager defaultManager];
  v8 = [v7 recentResultsWithOptions:v6 rankAndDeduplicate:v5];

  return v8;
}

+ (void)enumerateRecentResultsUsingBlock:(id)a3
{
  v3 = a3;
  v4 = +[SPCacheManager defaultManager];
  [v4 enumerateRecentResultsUsingBlock:v3];
}

+ (void)enumerateRecentCompletionsWithSearchString:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SPCacheManager defaultManager];
  [v7 enumerateRecentCompletionsWithSearchString:v6 usingBlock:v5];
}

+ (void)cacheResult:(id)a3 title:(id)a4 searchString:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SPCacheManager defaultManager];
  [v10 cacheResult:v9 title:v8 searchString:v7];
}

+ (void)cacheLocalResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6 searchString:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[SPCacheManager defaultManager];
  [v16 cacheLocalResult:v15 identifier:v14 bundleIdentifier:v13 protectionClass:v12 searchString:v11];
}

+ (void)cachePerson:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5 searchString:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[SPCacheManager defaultManager];
  [v13 cachePerson:v12 personQueryIdentifier:v11 score:v10 searchString:v9];
}

+ (void)cacheContact:(id)a3 contactIdentifier:(id)a4 score:(id)a5 searchString:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[SPCacheManager defaultManager];
  [v13 cacheContact:v12 contactIdentifier:v11 score:v10 searchString:v9];
}

+ (void)deleteResult:(id)a3 title:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SPCacheManager defaultManager];
  [v7 deleteResult:v6 title:v5];
}

+ (void)deleteLocalResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[SPCacheManager defaultManager];
  [v13 deleteLocalResult:v12 identifier:v11 bundleIdentifier:v10 protectionClass:v9];
}

+ (void)deletePerson:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SPCacheManager defaultManager];
  [v10 deletePerson:v9 personQueryIdentifier:v8 score:v7];
}

+ (void)deleteContact:(id)a3 contactIdentifier:(id)a4 score:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[SPCacheManager defaultManager];
  [v10 deleteContact:v9 contactIdentifier:v8 score:v7];
}

+ (void)deleteAllRecentResults
{
  v2 = +[SPCacheManager defaultManager];
  [v2 deleteAllResults];
}

+ (BOOL)topic:(id)a3 isSameAsTopic:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v8) = 0;
  if (!v6 || (isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v8) = 0;
    goto LABEL_17;
  }

  v9 = [v5 identifier];
  v10 = attributesForTopicIdentifier(v9, 0);

  v11 = [v6 identifier];
  v12 = attributesForTopicIdentifier(v11, 0);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v12;
  v8 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v13);
        }

        if ([v10 containsObject:{*(*(&v18 + 1) + 8 * i), v18}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_16;
        }
      }

      v8 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)filteredTopics:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    v10 = 0x277D4C000uLL;
    v28 = *v36;
    do
    {
      v11 = 0;
      v29 = v8;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = *(v10 + 1064);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = 0;
          v14 = [v12 identifier];
          v15 = attributesForTopicIdentifier(v14, &v34);

          if (v34 == 1)
          {
            v16 = v6;
            v17 = v4;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v18 = v15;
            v19 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v31;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v31 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if ([v5 containsObject:{*(*(&v30 + 1) + 8 * i), v28}])
                  {

                    v4 = v17;
                    v6 = v16;
                    v9 = v28;
                    v8 = v29;
                    v10 = 0x277D4C000;
                    goto LABEL_22;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v30 objects:v39 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v4 = v17;
            v6 = v16;
            v9 = v28;
            v8 = v29;
            v10 = 0x277D4C000;
          }

          [v4 addObject:{v12, v28}];
          if ((v34 & 1) == 0)
          {
            [v5 addObjectsFromArray:v15];
          }

LABEL_22:
        }

        else
        {
          v23 = [v12 identifier];
          v24 = [v5 containsObject:v23];

          if ((v24 & 1) == 0)
          {
            [v4 addObject:v12];
            v25 = [v12 identifier];
            [v5 addObject:v25];
          }
        }

        ++v11;
      }

      while (v11 != v8);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)resultFromTopic:(id)a3
{
  if (a3)
  {
    v3 = [a3 identifier];
    v4 = searchResultWithTopicIdentifier(v3, 1.0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end