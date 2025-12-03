@interface PSGStructuredInfoSuggestionCache
+ (BOOL)_matchesPredictedValue:(id)value prefixValue:(id)prefixValue;
+ (PSGStructuredInfoSuggestionCache)sharedInstance;
+ (id)emptySuggestionsPlaceholder;
- (BOOL)_isCacheEmpty;
- (BOOL)_maybeClearCache;
- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)seconds;
- (id)searchWithContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (id)searchWithTrigger:(id)trigger localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions;
- (void)addEmptyPlaceholderForTrigger:(id)trigger localeIdentifier:(id)identifier;
- (void)addStructuredInfoSuggestions:(id)suggestions localeIdentifier:(id)identifier;
- (void)invalidate;
@end

@implementation PSGStructuredInfoSuggestionCache

- (BOOL)_maybeClearCache
{
  [(NSDate *)self->_startTime timeIntervalSinceNow];
  v4 = -v3;
  ttlSeconds = self->_ttlSeconds;
  if (ttlSeconds < -v3)
  {
    [(PSGStructuredInfoSuggestionCache *)self invalidate];
  }

  return ttlSeconds < v4;
}

- (BOOL)_isCacheEmpty
{
  cachedSuggestions = self->_cachedSuggestions;
  if (!cachedSuggestions)
  {
    return 1;
  }

  first = [(_PASTuple2 *)cachedSuggestions first];
  if (first)
  {
    second = [(_PASTuple2 *)self->_cachedSuggestions second];
    if (second)
    {
      second2 = [(_PASTuple2 *)self->_cachedSuggestions second];
      emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];
      if (second2 == emptySuggestionsPlaceholder)
      {
        v9 = 0;
      }

      else
      {
        second3 = [(_PASTuple2 *)self->_cachedSuggestions second];
        v9 = [second3 count] == 0;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)invalidate
{
  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = 0;
  MEMORY[0x2821F96F8]();
}

- (id)searchWithContext:(id)context localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![identifierCopy isEqualToString:self->_localeIdentifier])
  {
    v11 = 0;
  }

  else
  {
    v9 = [contextCopy componentsSeparatedByString:@" "];
    lastObject = [v9 lastObject];

    if ([lastObject length] && !-[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
    {
      v22 = identifierCopy;
      v23 = contextCopy;
      v11 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      second = [(_PASTuple2 *)self->_cachedSuggestions second];
      v13 = [second countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(second);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = objc_opt_class();
          predictedValue = [v17 predictedValue];
          LODWORD(v18) = [v18 _matchesPredictedValue:predictedValue prefixValue:lastObject];

          if (v18)
          {
            [v11 addObject:v17];
            if ([v11 count] == suggestions)
            {
              break;
            }
          }

          if (v14 == ++v16)
          {
            v14 = [second countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v14)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      if (![v11 count])
      {
        [(PSGStructuredInfoSuggestionCache *)self invalidate];
      }

      identifierCopy = v22;
      contextCopy = v23;
    }

    else
    {
      v11 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)searchWithTrigger:(id)trigger localeIdentifier:(id)identifier maxSuggestions:(unint64_t)suggestions
{
  v50 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  identifierCopy = identifier;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![identifierCopy isEqualToString:self->_localeIdentifier] || -[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
  {
    second3 = 0;
    goto LABEL_5;
  }

  first = [(_PASTuple2 *)self->_cachedSuggestions first];
  triggerAttributes = [first triggerAttributes];

  triggerAttributes2 = [triggerCopy triggerAttributes];
  v16 = [triggerAttributes isEqualToDictionary:triggerAttributes2];

  if (v16)
  {
    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v17, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Exact trigger match", buf, 2u);
    }

    second = [(_PASTuple2 *)self->_cachedSuggestions second];
    goto LABEL_16;
  }

  triggerCategory = [triggerCopy triggerCategory];
  if (triggerCategory != @"TaggedTextFieldContactsAutocomplete")
  {

LABEL_15:
    second = 0;
    goto LABEL_16;
  }

  first2 = [(_PASTuple2 *)self->_cachedSuggestions first];
  triggerCategory2 = [first2 triggerCategory];

  if (triggerCategory2 != @"TaggedTextFieldContactsAutocomplete")
  {
    goto LABEL_15;
  }

  triggerAttributes3 = [triggerCopy triggerAttributes];
  v24 = [PSGProactiveTrigger getSearchTerm:triggerAttributes3];

  v25 = [PSGProactiveTrigger getSearchTerm:triggerAttributes];
  if (![v24 length] || !objc_msgSend(v25, "length") || !objc_msgSend(v24, "hasPrefix:", v25))
  {
    second = 0;
LABEL_41:

LABEL_16:
    if ([second count])
    {
      if ([second count] <= suggestions)
      {
        v22 = second;
        second = v22;
      }

      else
      {
        v22 = [second subarrayWithRange:{0, suggestions}];
      }

      second3 = v22;
    }

    else
    {
      second3 = 0;
    }

    goto LABEL_22;
  }

  v26 = psg_default_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_260D18000, v26, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Partial trigger match for Contacts Autocomplete", buf, 2u);
  }

  second2 = [(_PASTuple2 *)self->_cachedSuggestions second];
  emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];

  if (second2 != emptySuggestionsPlaceholder)
  {
    v39 = v25;
    second = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [(_PASTuple2 *)self->_cachedSuggestions second];
    v43 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v43)
    {
      v42 = *v45;
      v40 = v24;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v44 + 1) + 8 * i);
          portraitItem = [v30 portraitItem];
          name = [portraitItem name];

          if ([name length])
          {
            if (_PASInsensitiveStringContainsString())
            {
              v33 = [PSGStructuredInfoSuggestion alloc];
              portraitItem2 = [v30 portraitItem];
              operationalItem = [v30 operationalItem];
              v36 = [(PSGStructuredInfoSuggestion *)v33 initWithProactiveTrigger:triggerCopy portraitItem:portraitItem2 operationalItem:operationalItem];

              [second addObject:v36];
              v37 = [second count];

              v38 = v37 == suggestions;
              v24 = v40;
              if (v38)
              {

                goto LABEL_44;
              }
            }
          }
        }

        v43 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v43)
        {
          continue;
        }

        break;
      }
    }

LABEL_44:

    v25 = v39;
    goto LABEL_41;
  }

  second3 = [(_PASTuple2 *)self->_cachedSuggestions second];

  second = 0;
LABEL_22:

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];

  return second3;
}

- (void)addEmptyPlaceholderForTrigger:(id)trigger localeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = MEMORY[0x277D42648];
  triggerCopy = trigger;
  emptySuggestionsPlaceholder = [objc_opt_class() emptySuggestionsPlaceholder];
  v10 = [v7 tupleWithFirst:triggerCopy second:emptySuggestionsPlaceholder];

  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v10;

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = identifierCopy;
  v15 = identifierCopy;

  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;
}

- (void)addStructuredInfoSuggestions:(id)suggestions localeIdentifier:(id)identifier
{
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  if (![suggestionsCopy count])
  {
    v23 = psg_default_log_handle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    v29 = 0;
    v24 = "Trying to add empty structured info array to cache.";
    v25 = &v29;
LABEL_13:
    _os_log_error_impl(&dword_260D18000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    goto LABEL_10;
  }

  obj = identifier;
  v27 = identifierCopy;
  if ([suggestionsCopy count] >= 2)
  {
    v8 = 1;
    while (1)
    {
      v9 = [suggestionsCopy objectAtIndexedSubscript:v8];
      proactiveTrigger = [v9 proactiveTrigger];
      triggerAttributes = [proactiveTrigger triggerAttributes];
      firstObject = [suggestionsCopy firstObject];
      proactiveTrigger2 = [firstObject proactiveTrigger];
      triggerAttributes2 = [proactiveTrigger2 triggerAttributes];
      v15 = [triggerAttributes isEqualToDictionary:triggerAttributes2];

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (++v8 >= [suggestionsCopy count])
      {
        goto LABEL_6;
      }
    }

    v23 = psg_default_log_handle();
    identifierCopy = v27;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v24 = "Trigger is inconsistent for the structured info array.";
    v25 = buf;
    goto LABEL_13;
  }

LABEL_6:
  v16 = MEMORY[0x277D42648];
  firstObject2 = [suggestionsCopy firstObject];
  proactiveTrigger3 = [firstObject2 proactiveTrigger];
  v19 = [v16 tupleWithFirst:proactiveTrigger3 second:suggestionsCopy];
  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v19;

  objc_storeStrong(&self->_localeIdentifier, obj);
  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;

  identifierCopy = v27;
LABEL_11:
}

- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)seconds
{
  v5.receiver = self;
  v5.super_class = PSGStructuredInfoSuggestionCache;
  result = [(PSGStructuredInfoSuggestionCache *)&v5 init];
  if (result)
  {
    result->_ttlSeconds = seconds;
  }

  return result;
}

+ (BOOL)_matchesPredictedValue:(id)value prefixValue:(id)prefixValue
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  prefixValueCopy = prefixValue;
  if (([valueCopy hasPrefix:prefixValueCopy] & 1) == 0)
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(prefixValueCopy, "characterAtIndex:", 0)}];

    if (!v9 || (v20 = 0u, v21 = 0u, v18 = 0u, v19 = 0u, (v10 = [&unk_287345570 countByEnumeratingWithState:&v18 objects:v22 count:16]) == 0))
    {
      v7 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v19;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(&unk_287345570);
      }

      v14 = [MEMORY[0x277CCACA8] stringWithString:*(*(&v18 + 1) + 8 * v13)];
      v15 = [v14 stringByAppendingString:prefixValueCopy];

      LOBYTE(v14) = [valueCopy hasPrefix:v15];
      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [&unk_287345570 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v7 = 0;
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }
  }

  v7 = 1;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)emptySuggestionsPlaceholder
{
  if (emptySuggestionsPlaceholder__pasOnceToken3 != -1)
  {
    dispatch_once(&emptySuggestionsPlaceholder__pasOnceToken3, &__block_literal_global_907);
  }

  v3 = emptySuggestionsPlaceholder__pasExprOnceResult;

  return v3;
}

void __63__PSGStructuredInfoSuggestionCache_emptySuggestionsPlaceholder__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = emptySuggestionsPlaceholder__pasExprOnceResult;
  emptySuggestionsPlaceholder__pasExprOnceResult = MEMORY[0x277CBEBF8];

  objc_autoreleasePoolPop(v0);
}

+ (PSGStructuredInfoSuggestionCache)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PSGStructuredInfoSuggestionCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_909 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_909, block);
  }

  v2 = sharedInstance__pasExprOnceResult_910;

  return v2;
}

void __50__PSGStructuredInfoSuggestionCache_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithTTLSeconds:180.0];
  v4 = sharedInstance__pasExprOnceResult_910;
  sharedInstance__pasExprOnceResult_910 = v3;

  objc_autoreleasePoolPop(v2);
}

@end