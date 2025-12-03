@interface SPSpotlightRecentsCache
+ (BOOL)topic:(id)topic isSameAsTopic:(id)asTopic;
+ (id)filteredTopics:(id)topics;
+ (id)recentResults;
+ (id)recentResultsWithOptions:(id)options;
+ (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate;
+ (id)resultFromTopic:(id)topic;
+ (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string;
+ (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string;
+ (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string;
+ (void)cacheResult:(id)result title:(id)title searchString:(id)string;
+ (void)deleteAllRecentResults;
+ (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score;
+ (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class;
+ (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score;
+ (void)deleteResult:(id)result title:(id)title;
+ (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block;
+ (void)enumerateRecentResultsUsingBlock:(id)block;
+ (void)updateApplicationContexts:(id)contexts;
@end

@implementation SPSpotlightRecentsCache

+ (void)updateApplicationContexts:(id)contexts
{
  contextsCopy = contexts;
  v4 = +[SPCacheManager defaultManager];
  [v4 updateRecentsWithBundleIdentifiers:contextsCopy];
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

+ (id)recentResultsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = +[SPCacheManager defaultManager];
  v5 = [v4 recentResultsWithOptions:optionsCopy rankAndDeduplicate:0];

  return v5;
}

+ (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate
{
  deduplicateCopy = deduplicate;
  optionsCopy = options;
  v7 = +[SPCacheManager defaultManager];
  v8 = [v7 recentResultsWithOptions:optionsCopy rankAndDeduplicate:deduplicateCopy];

  return v8;
}

+ (void)enumerateRecentResultsUsingBlock:(id)block
{
  blockCopy = block;
  v4 = +[SPCacheManager defaultManager];
  [v4 enumerateRecentResultsUsingBlock:blockCopy];
}

+ (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  v7 = +[SPCacheManager defaultManager];
  [v7 enumerateRecentCompletionsWithSearchString:stringCopy usingBlock:blockCopy];
}

+ (void)cacheResult:(id)result title:(id)title searchString:(id)string
{
  stringCopy = string;
  titleCopy = title;
  resultCopy = result;
  v10 = +[SPCacheManager defaultManager];
  [v10 cacheResult:resultCopy title:titleCopy searchString:stringCopy];
}

+ (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string
{
  stringCopy = string;
  classCopy = class;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  resultCopy = result;
  v16 = +[SPCacheManager defaultManager];
  [v16 cacheLocalResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy searchString:stringCopy];
}

+ (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v13 = +[SPCacheManager defaultManager];
  [v13 cachePerson:personCopy personQueryIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];
}

+ (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v13 = +[SPCacheManager defaultManager];
  [v13 cacheContact:contactCopy contactIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];
}

+ (void)deleteResult:(id)result title:(id)title
{
  titleCopy = title;
  resultCopy = result;
  v7 = +[SPCacheManager defaultManager];
  [v7 deleteResult:resultCopy title:titleCopy];
}

+ (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class
{
  classCopy = class;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  resultCopy = result;
  v13 = +[SPCacheManager defaultManager];
  [v13 deleteLocalResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy];
}

+ (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v10 = +[SPCacheManager defaultManager];
  [v10 deletePerson:personCopy personQueryIdentifier:identifierCopy score:scoreCopy];
}

+ (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v10 = +[SPCacheManager defaultManager];
  [v10 deleteContact:contactCopy contactIdentifier:identifierCopy score:scoreCopy];
}

+ (void)deleteAllRecentResults
{
  v2 = +[SPCacheManager defaultManager];
  [v2 deleteAllResults];
}

+ (BOOL)topic:(id)topic isSameAsTopic:(id)asTopic
{
  v23 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  asTopicCopy = asTopic;
  if (!topicCopy)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  LOBYTE(v8) = 0;
  if (!asTopicCopy || (isKindOfClass & 1) == 0)
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

  identifier = [topicCopy identifier];
  v10 = attributesForTopicIdentifier(identifier, 0);

  identifier2 = [asTopicCopy identifier];
  v12 = attributesForTopicIdentifier(identifier2, 0);

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

+ (id)filteredTopics:(id)topics
{
  v41 = *MEMORY[0x277D85DE8];
  topicsCopy = topics;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = topicsCopy;
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
          identifier = [v12 identifier];
          v15 = attributesForTopicIdentifier(identifier, &v34);

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
          identifier2 = [v12 identifier];
          v24 = [v5 containsObject:identifier2];

          if ((v24 & 1) == 0)
          {
            [v4 addObject:v12];
            identifier3 = [v12 identifier];
            [v5 addObject:identifier3];
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

+ (id)resultFromTopic:(id)topic
{
  if (topic)
  {
    identifier = [topic identifier];
    v4 = searchResultWithTopicIdentifier(identifier, 1.0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end