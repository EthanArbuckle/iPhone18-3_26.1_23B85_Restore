@interface SPCacheManager
+ (SPCacheManager)defaultManager;
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)key;
+ (id)defaults;
+ (int64_t)version;
+ (void)removeDefaults;
+ (void)removeKey:(id)key;
+ (void)setDefaultWithKey:(id)key value:(id)value;
+ (void)setVersionWithValue:(int64_t)value;
- (SPCacheManager)init;
- (id)_createRecentsFromEngagedResults:(id)results maxCount:(unint64_t)count;
- (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate;
- (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string;
- (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (void)cacheResult:(id)result title:(id)title searchString:(id)string;
- (void)deleteAllResults;
- (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score;
- (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class;
- (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score;
- (void)deleteResult:(id)result title:(id)title;
- (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block;
- (void)enumerateRecentResultsUsingBlock:(id)block;
- (void)updateRecentsWithBundleIdentifiers:(id)identifiers;
@end

@implementation SPCacheManager

+ (SPCacheManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[SPCacheManager defaultManager];
  }

  v3 = defaultManager___DefaultManager;

  return v3;
}

uint64_t __32__SPCacheManager_defaultManager__block_invoke()
{
  defaultManager___DefaultManager = objc_alloc_init(SPCacheManager);

  return MEMORY[0x2821F96F8]();
}

- (SPCacheManager)init
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SPCacheManager;
  v2 = [(SPCacheManager *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D007C8]) initWithId:@"com.apple.spotlight" userAgent:@"spotlight/1.0" factory:0];
    v4 = logForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: initializing session with configuration: %@", buf, 0xCu);
    }

    v5 = [MEMORY[0x277D007C0] sessionWithConfiguration:v3];
    session = v2->_session;
    v2->_session = v5;

    if (+[SPCacheManager version]!= 25)
    {
      [(SPCacheManager *)v2 deleteAllResults];
    }

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (int64_t)version
{
  v2 = [SPCacheManager defaultValueWithKey:@"Version"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

+ (id)defaultProperties
{
  defaults = [objc_opt_class() defaults];
  dictionaryRepresentation = [defaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation objectForKey:@"Recents"];

  return v4;
}

+ (id)defaults
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[SPCacheManager identifier];
  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

+ (void)setDefaultWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  defaults = [objc_opt_class() defaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  if (defaultProperties)
  {
    defaultProperties2 = [objc_opt_class() defaultProperties];
    v9 = [defaultProperties2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v9 setObject:valueCopy forKey:keyCopy];
  [defaults setObject:v9 forKey:@"Recents"];
}

+ (id)defaultValueWithKey:(id)key
{
  keyCopy = key;
  defaultProperties = [objc_opt_class() defaultProperties];
  v5 = [defaultProperties objectForKey:keyCopy];

  return v5;
}

+ (void)removeKey:(id)key
{
  keyCopy = key;
  defaults = [objc_opt_class() defaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  v5 = [defaultProperties mutableCopy];

  [v5 removeObjectForKey:keyCopy];
  [defaults setObject:v5 forKey:@"Recents"];
}

+ (void)removeDefaults
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = +[SPCacheManager identifier];
  [standardUserDefaults removePersistentDomainForName:v3];

  v4 = MEMORY[0x277CBEBD0];

  [v4 resetStandardUserDefaults];
}

+ (void)setVersionWithValue:(int64_t)value
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  [v4 setDefaultWithKey:@"Version" value:v5];
}

- (void)updateRecentsWithBundleIdentifiers:(id)identifiers
{
  v36 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v5 = [(SPCacheManager *)self recentResultsWithOptions:MEMORY[0x277CBEC10]];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = 0x277D4C000uLL;
    do
    {
      v10 = 0;
      v30 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        topic = [v11 topic];
        v13 = *(v9 + 1064);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          topic2 = [v11 topic];
          identifier = [topic2 identifier];
          v17 = searchResultWithTopicIdentifier(identifier, 1.0);

          if ([v17 type] == 2)
          {
            resultBundleId = [v17 resultBundleId];
            v19 = [resultBundleId componentsSeparatedByString:@":"];

            firstObject = [v19 firstObject];
            lastObject = [v19 lastObject];
            if (([identifiersCopy containsObject:lastObject] & 1) == 0)
            {
              [v17 identifier];
              v22 = v8;
              v23 = v9;
              v24 = v5;
              v26 = v25 = identifiersCopy;
              [(SPCacheManager *)selfCopy deleteLocalResult:v17 identifier:v26 bundleIdentifier:lastObject protectionClass:firstObject];

              identifiersCopy = v25;
              v5 = v24;
              v9 = v23;
              v8 = v22;
            }

            v7 = v30;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)cacheResult:(id)result title:(id)title searchString:(id)string
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  stringCopy = string;
  titleCopy = title;
  v11 = [SPCachedResult alloc];
  normalizedTopic = [resultCopy normalizedTopic];
  v13 = [(SPCachedResult *)v11 initWithResult:resultCopy topic:normalizedTopic title:titleCopy searchString:stringCopy];

  if (!v13)
  {
    v17 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cacheResult:resultCopy title:? searchString:?];
    }

    goto LABEL_10;
  }

  encodedNormalizedTopic = [(SPCachedResult *)v13 encodedNormalizedTopic];

  if (encodedNormalizedTopic)
  {
    if ([stringCopy length])
    {
      [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v15 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      type = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v15, OS_LOG_TYPE_DEFAULT, "spotlight cache: spotlight cache: caching result with type: %d", buf, 8u);
    }

    session = self->_session;
    v19 = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [(PARSession *)session addEngagedResults:v17 completion:&__block_literal_global_35];
LABEL_10:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__SPCacheManager_cacheResult_title_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__SPCacheManager_cacheResult_title_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cacheLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  classCopy = class;
  stringCopy = string;
  if (![bundleIdentifierCopy isEqualToString:@"com.apple.Preferences"] || (objc_msgSend(identifierCopy, "containsString:", @"SAFETY_CHECK") & 1) == 0)
  {
    v17 = [[SPCachedResult alloc] initWithResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy searchString:stringCopy];
    if (v17)
    {
      if ([stringCopy length])
      {
        [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
      }

      v18 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        type = [resultCopy type];
        _os_log_impl(&dword_26B79D000, v18, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching result with type: %d", buf, 8u);
      }

      session = self->_session;
      v22 = v17;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
      [(PARSession *)session addEngagedResults:v20 completion:&__block_literal_global_43];
    }

    else
    {
      v20 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SPCacheManager cacheResult:resultCopy title:? searchString:?];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __92__SPCacheManager_cacheLocalResult_identifier_bundleIdentifier_protectionClass_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __92__SPCacheManager_cacheLocalResult_identifier_bundleIdentifier_protectionClass_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cachePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  v20[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v14 = [[SPCachedResult alloc] initWithPersonName:personCopy personQueryIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];

  if (v14)
  {
    if ([stringCopy length])
    {
      [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v15 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26B79D000, v15, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching person with type", v19, 2u);
    }

    session = self->_session;
    v20[0] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(PARSession *)session addEngagedResults:v17 completion:&__block_literal_global_45];
  }

  else
  {
    v17 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cachePerson:personQueryIdentifier:score:searchString:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __71__SPCacheManager_cachePerson_personQueryIdentifier_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __71__SPCacheManager_cachePerson_personQueryIdentifier_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)cacheContact:(id)contact contactIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  v20[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v14 = [[SPCachedResult alloc] initWithContactName:contactCopy contactIdentifier:identifierCopy score:scoreCopy searchString:stringCopy];

  if (v14)
  {
    if ([stringCopy length])
    {
      [(PARSession *)self->_session clearEngagementsWithTitle:stringCopy type:&unk_287C3DEB0];
    }

    v15 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26B79D000, v15, OS_LOG_TYPE_DEFAULT, "spotlight cache: caching contact with type", v19, 2u);
    }

    session = self->_session;
    v20[0] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(PARSession *)session addEngagedResults:v17 completion:&__block_literal_global_47];
  }

  else
  {
    v17 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager cacheContact:contactIdentifier:score:searchString:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __68__SPCacheManager_cacheContact_contactIdentifier_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __68__SPCacheManager_cacheContact_contactIdentifier_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

void __58__SPCacheManager_cacheSuggestion_type_score_searchString___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __58__SPCacheManager_cacheSuggestion_type_score_searchString___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deleteResult:(id)result title:(id)title
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  titleCopy = title;
  v8 = [SPCachedResult alloc];
  normalizedTopic = [resultCopy normalizedTopic];
  v10 = [(SPCachedResult *)v8 initWithResult:resultCopy topic:normalizedTopic title:titleCopy searchString:0];

  if (v10)
  {
    v11 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      type = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v11, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting result with type: %d", buf, 8u);
    }

    session = self->_session;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__SPCacheManager_deleteResult_title___block_invoke;
    v14[3] = &unk_279D025F8;
    v15 = resultCopy;
    v16 = titleCopy;
    selfCopy = self;
    [(PARSession *)session clearEngagedResult:v10 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __37__SPCacheManager_deleteResult_title___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }

LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = [*(a1 + 32) requestedTopic];

  if (v4)
  {
    v5 = [SPCachedResult alloc];
    v6 = *(a1 + 32);
    v7 = [v6 requestedTopic];
    v8 = [(SPCachedResult *)v5 initWithResult:v6 topic:v7 title:*(a1 + 40) searchString:0];

    if (v8)
    {
      v9 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) type];
        v14[0] = 67109120;
        v14[1] = v10;
        _os_log_impl(&dword_26B79D000, v9, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting result with type: %d", v14, 8u);
      }

      [*(*(a1 + 48) + 8) clearEngagedResult:v8 completion:&__block_literal_global_52];
    }

    goto LABEL_11;
  }

  v12 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];
  v13 = *MEMORY[0x277D85DE8];

  notify_post(v12);
}

void __37__SPCacheManager_deleteResult_title___block_invoke_50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deleteLocalResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class
{
  v19 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  classCopy = class;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v14 = [[SPCachedResult alloc] initWithResult:resultCopy identifier:identifierCopy bundleIdentifier:bundleIdentifierCopy protectionClass:classCopy searchString:0];

  v15 = logForSPLogCategoryCaching();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = [resultCopy type];
      _os_log_impl(&dword_26B79D000, v16, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting local result with type: %d", v18, 8u);
    }

    [(PARSession *)self->_session clearEngagedResult:v14 completion:&__block_literal_global_54];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deleteLocalResult:resultCopy identifier:? bundleIdentifier:? protectionClass:?];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __80__SPCacheManager_deleteLocalResult_identifier_bundleIdentifier_protectionClass___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = logForSPLogCategoryCaching();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __37__SPCacheManager_deleteResult_title___block_invoke_cold_1();
    }
  }

  else
  {
    v3 = [@"SPSpotlightRecentsCacheDidChange" UTF8String];

    notify_post(v3);
  }
}

- (void)deletePerson:(id)person personQueryIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  personCopy = person;
  v11 = [[SPCachedResult alloc] initWithPersonName:personCopy personQueryIdentifier:identifierCopy score:scoreCopy searchString:0];

  v12 = logForSPLogCategoryCaching();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_26B79D000, v13, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting person with type", v18, 2u);
    }

    session = self->_session;
    title = [(SPCachedResult *)v11 title];
    [(PARSession *)session clearEngagementsWithTitle:title type:&unk_287C3DEC8];

    v16 = self->_session;
    title2 = [(SPCachedResult *)v11 title];
    [(PARSession *)v16 clearEngagementsWithTitle:title2 type:&unk_287C3DEE0];

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deletePerson:personQueryIdentifier:score:];
    }
  }
}

- (void)deleteContact:(id)contact contactIdentifier:(id)identifier score:(id)score
{
  scoreCopy = score;
  identifierCopy = identifier;
  contactCopy = contact;
  v11 = [[SPCachedResult alloc] initWithContactName:contactCopy contactIdentifier:identifierCopy score:scoreCopy searchString:0];

  v12 = logForSPLogCategoryCaching();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_26B79D000, v13, OS_LOG_TYPE_DEFAULT, "spotlight cache: deleting contact with type", v18, 2u);
    }

    session = self->_session;
    title = [(SPCachedResult *)v11 title];
    [(PARSession *)session clearEngagementsWithTitle:title type:&unk_287C3DEF8];

    v16 = self->_session;
    title2 = [(SPCachedResult *)v11 title];
    [(PARSession *)v16 clearEngagementsWithTitle:title2 type:&unk_287C3DF10];

    notify_post([@"SPSpotlightRecentsCacheDidChange" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager deleteContact:contactIdentifier:score:];
    }
  }
}

- (void)deleteAllResults
{
  session = self->_session;
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v4 = [MEMORY[0x277CBEAA8] now];
  [(PARSession *)session clearEngagementsFromDate:v3 toDate:v4];

  +[SPCacheManager removeDefaults];

  [SPCacheManager setVersionWithValue:25];
}

- (id)recentResultsWithOptions:(id)options rankAndDeduplicate:(id)deduplicate
{
  optionsCopy = options;
  deduplicateCopy = deduplicate;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"SPSpotlightRecentsCacheOptionMaxCountKey"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v9 intValue];
    }

    else
    {
      intValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v13 = logForSPLogCategoryRecents();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPCacheManager recentResultsWithOptions:rankAndDeduplicate:];
    }

    v14 = self->_session;
    if ((deduplicateCopy == 0) | ((objc_opt_respondsToSelector() & 1) == 0))
    {
      v18 = logForSPLogCategoryRecents();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B79D000, v18, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
      }

      v19 = self->_session;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke_71;
      v23[3] = &unk_279D02648;
      v25 = &v33;
      v26 = intValue;
      v23[4] = self;
      v24 = v12;
      [(PARSession *)v19 topEngagedResultsForInput:&stru_287C3D120 maxAmount:10 completion:v23];
      v17 = v24;
    }

    else
    {
      v15 = logForSPLogCategoryRecents();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B79D000, v15, OS_LOG_TYPE_DEFAULT, "spotlight cache: ranking, getting all engaged results", buf, 2u);
      }

      v16 = self->_session;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke;
      v27[3] = &unk_279D02620;
      v29 = deduplicateCopy;
      v30 = &v33;
      v27[4] = self;
      v31 = intValue;
      v28 = v12;
      [(PARSession *)v16 allEngagedResultsForInput:&stru_287C3D120 maxAmount:100 completion:v27];

      v17 = v29;
    }

    v20 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v12, v20))
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v21 = v34[5];
    }

    v11 = v21;
  }

  else
  {
    v11 = v34[5];
  }

  _Block_object_dispose(&v33, 8);

  return v11;
}

void __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found all %ld engaged results", &v12, 0xCu);
  }

  v5 = (*(*(a1 + 48) + 16))();

  v6 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    v12 = 134217984;
    v13 = v7;
    _os_log_impl(&dword_26B79D000, v6, OS_LOG_TYPE_DEFAULT, "spotlight cache: filtered to %ld engaged results", &v12, 0xCu);
  }

  v8 = [*(a1 + 32) _createRecentsFromEngagedResults:v5 maxCount:*(a1 + 64)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_group_leave(*(a1 + 40));
  v11 = *MEMORY[0x277D85DE8];
}

void __62__SPCacheManager_recentResultsWithOptions_rankAndDeduplicate___block_invoke_71(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found top %ld engaged results", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) _createRecentsFromEngagedResults:v3 maxCount:*(a1 + 56)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_createRecentsFromEngagedResults:(id)results maxCount:(unint64_t)count
{
  v86 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = resultsCopy;
  v8 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    do
    {
      v11 = 0;
      do
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v75 + 1) + 8 * v11);
        v13 = [[SPCachedResult alloc] initWithEngagedResult:v12];
        if (!v13)
        {
          title = logForSPLogCategoryRecents();
          if (os_log_type_enabled(title, OS_LOG_TYPE_ERROR))
          {
            [(SPCacheManager *)&v73 _createRecentsFromEngagedResults:v74 maxCount:title];
          }

          goto LABEL_13;
        }

        if ([v12 type] == 36 || objc_msgSend(v12, "type") == 32)
        {
          title = [v12 title];
          v15 = v53;
          goto LABEL_10;
        }

        if ([v12 type] == 37 || objc_msgSend(v12, "type") == 38)
        {
          title = [v12 title];
          v15 = v6;
LABEL_10:
          [v15 setObject:v13 forKey:title];
LABEL_13:

          goto LABEL_14;
        }

        if ([v12 type] == 34 || objc_msgSend(v12, "type") == 16 || objc_msgSend(v12, "type") == 17 || objc_msgSend(v12, "type") == 15 || objc_msgSend(v12, "type") == 31)
        {
          title2 = [(SPCachedResult *)v13 title];
          title = [title2 lowercaseString];

          if (([v7 containsObject:title] & 1) == 0)
          {
            [v5 addObject:v13];
          }

          [v7 addObject:title];
          goto LABEL_13;
        }

        if ([v12 type] == 30)
        {
          v17 = v54;
        }

        else
        {
          v17 = v5;
        }

        [v17 addObject:v13];
LABEL_14:

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v55 = v54;
  v19 = [v55 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v55);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        title3 = [v23 title];
        lowercaseString = [title3 lowercaseString];
        v26 = [v7 containsObject:lowercaseString];

        if ((v26 & 1) == 0)
        {
          [v5 addObject:v23];
        }
      }

      v20 = [v55 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v20);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = v53;
  v28 = [v27 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v66;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v66 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v65 + 1) + 8 * j);
        v33 = [v6 objectForKey:v32];

        if (!v33)
        {
          v34 = [v27 objectForKeyedSubscript:v32];
          [v5 addObject:v34];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v29);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v35 = v6;
  v36 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v62;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v35 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * k)];
        [v5 addObject:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v37);
  }

  v41 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v5 count];
    *buf = 134217984;
    v81 = v42;
    _os_log_impl(&dword_26B79D000, v41, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
  }

  [v5 sortUsingComparator:&__block_literal_global_74];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v43 = v5;
  v44 = [v43 countByEnumeratingWithState:&v57 objects:v79 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v58;
    while (2)
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(v43);
        }

        recentTopic = [*(*(&v57 + 1) + 8 * m) recentTopic];
        if (recentTopic)
        {
          [v51 addObject:recentTopic];
        }

        if (count != 0x7FFFFFFFFFFFFFFFLL && [v51 count] >= count)
        {

          goto LABEL_72;
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v57 objects:v79 count:16];
      if (v45)
      {
        continue;
      }

      break;
    }
  }

LABEL_72:

  v49 = *MEMORY[0x277D85DE8];

  return v51;
}

uint64_t __60__SPCacheManager__createRecentsFromEngagedResults_maxCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 engagementTime];
  v6 = [v4 engagementTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)enumerateRecentResultsUsingBlock:(id)block
{
  v107 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v101 = 1;
  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v95 = 0;
    v96 = &v95;
    v97 = 0x3032000000;
    v98 = __Block_byref_object_copy_;
    v99 = __Block_byref_object_dispose_;
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy_;
    v93 = __Block_byref_object_dispose_;
    v94 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy_;
    v87 = __Block_byref_object_dispose_;
    v88 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy_;
    v81 = __Block_byref_object_dispose_;
    v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy_;
    v75 = __Block_byref_object_dispose_;
    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy_;
    v69 = __Block_byref_object_dispose_;
    v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v8 = logForSPLogCategoryRecents();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B79D000, v8, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
    }

    v9 = self->_session;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __51__SPCacheManager_enumerateRecentResultsUsingBlock___block_invoke;
    v57[3] = &unk_279D02690;
    v59 = &v71;
    v60 = &v65;
    v61 = &v83;
    v62 = &v77;
    v63 = &v89;
    v64 = &v95;
    group = v7;
    v58 = group;
    [(PARSession *)v9 topEngagedResultsForInput:&stru_287C3D120 maxAmount:10 completion:v57];
    v10 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(group, v10))
    {
      blockCopy[2](blockCopy, 0, v5, &v101);
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v11 = v72[5];
      v12 = [v11 countByEnumeratingWithState:&v53 objects:v106 count:16];
      if (v12)
      {
        v13 = *v54;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v54 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v16 = [v84[5] objectForKey:v15];

            if (!v16)
            {
              v17 = [v72[5] objectForKeyedSubscript:v15];
              v18 = [v66[5] objectForKeyedSubscript:v15];

              v19 = [v90[5] count];
              [v90[5] addObject:v17];
              v20 = v96[5];
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
              [v20 setObject:v18 forKey:v21];

              v5 = v18;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v53 objects:v106 count:16];
        }

        while (v12);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = v84[5];
      v23 = [v22 countByEnumeratingWithState:&v49 objects:v105 count:16];
      if (v23)
      {
        v24 = *v50;
        do
        {
          v25 = 0;
          v26 = v5;
          do
          {
            if (*v50 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v49 + 1) + 8 * v25);
            v28 = [v84[5] objectForKeyedSubscript:v27];
            v5 = [v78[5] objectForKeyedSubscript:v27];

            v29 = [v90[5] count];
            [v90[5] addObject:v28];
            v30 = v96[5];
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            [v30 setObject:v5 forKey:v31];

            ++v25;
            v26 = v5;
          }

          while (v23 != v25);
          v23 = [v22 countByEnumeratingWithState:&v49 objects:v105 count:16];
        }

        while (v23);
      }

      v32 = logForSPLogCategoryRecents();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v96[5] count];
        *buf = 134217984;
        v104 = v33;
        _os_log_impl(&dword_26B79D000, v32, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
      }

      v34 = [v96[5] keysSortedByValueUsingSelector:sel_compare_];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      reverseObjectEnumerator = [v34 reverseObjectEnumerator];
      v36 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v102 count:16];
      if (v36)
      {
        v37 = *v46;
LABEL_28:
        v38 = 0;
        v39 = v5;
        while (1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v40 = *(*(&v45 + 1) + 8 * v38);
          v5 = [v96[5] objectForKeyedSubscript:v40];

          v41 = [v90[5] objectAtIndex:{objc_msgSend(v40, "intValue")}];
          (blockCopy)[2](blockCopy, v41, v5, &v101);
          v42 = v101;

          if (v42)
          {
            break;
          }

          ++v38;
          v39 = v5;
          if (v36 == v38)
          {
            v36 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v102 count:16];
            if (v36)
            {
              goto LABEL_28;
            }

            break;
          }
        }
      }
    }

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v83, 8);

    _Block_object_dispose(&v89, 8);
    _Block_object_dispose(&v95, 8);
  }

  else
  {
    blockCopy[2](blockCopy, 0, v5, &v101);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __51__SPCacheManager_enumerateRecentResultsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found %ld engaged results", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = [[SPCachedResult alloc] initWithEngagedResult:v10];
        v12 = [(SPCachedResult *)v11 searchResult];

        if (v12)
        {
          if ([v10 type] == 36 || objc_msgSend(v10, "type") == 32)
          {
            v13 = *(*(*(a1 + 40) + 8) + 40);
            v14 = [v10 title];
            [v13 setObject:v12 forKey:v14];

            v15 = *(a1 + 48);
            goto LABEL_12;
          }

          if ([v10 type] == 37 || objc_msgSend(v10, "type") == 38)
          {
            v21 = *(*(*(a1 + 56) + 8) + 40);
            v22 = [v10 title];
            [v21 setObject:v12 forKey:v22];

            v15 = *(a1 + 64);
LABEL_12:
            v16 = *(*(v15 + 8) + 40);
            v17 = MEMORY[0x277CCABB0];
            [v10 freshnessScore];
            v18 = [v17 numberWithDouble:?];
            v19 = [v10 title];
            v20 = v16;
          }

          else
          {
            v28 = [*(*(*(a1 + 72) + 8) + 40) count];
            [*(*(*(a1 + 72) + 8) + 40) addObject:v12];
            v23 = v5;
            v24 = *(*(*(a1 + 80) + 8) + 40);
            v25 = MEMORY[0x277CCABB0];
            [v10 freshnessScore];
            v18 = [v25 numberWithDouble:?];
            v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
            v20 = v24;
            v5 = v23;
          }

          [v20 setObject:v18 forKey:v19];

          goto LABEL_16;
        }

        v18 = logForSPLogCategoryRecents();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(SPCacheManager *)buf _createRecentsFromEngagedResults:v18 maxCount:?];
        }

LABEL_16:

        ++v9;
      }

      while (v7 != v9);
      v26 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v7 = v26;
    }

    while (v26);
  }

  dispatch_group_leave(*(a1 + 32));
  v27 = *MEMORY[0x277D85DE8];
}

- (void)enumerateRecentCompletionsWithSearchString:(id)string usingBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v8 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B79D000, v8, OS_LOG_TYPE_DEFAULT, "spotlight cache: getting top engaged results", buf, 2u);
  }

  session = self->_session;
  if (session && [(PARSession *)session enabledStatus]== 1)
  {
    v10 = self->_session;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__SPCacheManager_enumerateRecentCompletionsWithSearchString_usingBlock___block_invoke;
    v11[3] = &unk_279D026B8;
    v12 = blockCopy;
    [(PARSession *)v10 topEngagedResultsForInput:stringCopy maxAmount:10 completion:v11];
  }
}

void __72__SPCacheManager_enumerateRecentCompletionsWithSearchString_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [v3 count];
    _os_log_impl(&dword_26B79D000, v4, OS_LOG_TYPE_DEFAULT, "spotlight cache: found %ld engaged results", buf, 0xCu);
  }

  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if (resultIsSuggestionType([v11 type]))
      {
        v12 = *(a1 + 32);
        v13 = [v11 title];
        v14 = MEMORY[0x277CCABB0];
        [v11 score];
        v15 = [v14 numberWithDouble:?];
        (*(v12 + 16))(v12, v13, v15, [v11 type], &v22);

        ++v8;
        if (v22)
        {
          break;
        }
      }

      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = logForSPLogCategoryRecents();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v8;
    _os_log_impl(&dword_26B79D000, v16, OS_LOG_TYPE_DEFAULT, "spotlight cache: returning %ld engaged completions", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)cacheResult:(void *)a1 title:searchString:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not create cached result with result: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cacheSuggestion:type:score:searchString:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_26B79D000, v0, OS_LOG_TYPE_ERROR, "spotlight cache: could not create cached result with suggestion: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)deleteLocalResult:(void *)a1 identifier:bundleIdentifier:protectionClass:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not delete cached result with result: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)deleteSuggestion:type:score:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_26B79D000, v0, OS_LOG_TYPE_ERROR, "spotlight cache: could not delete cached result with suggestion: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_createRecentsFromEngagedResults:(os_log_t)log maxCount:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26B79D000, log, OS_LOG_TYPE_ERROR, "spotlight cache: could not create search result with engaged result", buf, 2u);
}

@end