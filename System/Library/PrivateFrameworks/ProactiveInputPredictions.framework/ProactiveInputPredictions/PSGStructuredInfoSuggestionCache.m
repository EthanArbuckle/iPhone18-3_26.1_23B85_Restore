@interface PSGStructuredInfoSuggestionCache
+ (BOOL)_matchesPredictedValue:(id)a3 prefixValue:(id)a4;
+ (PSGStructuredInfoSuggestionCache)sharedInstance;
+ (id)emptySuggestionsPlaceholder;
- (BOOL)_isCacheEmpty;
- (BOOL)_maybeClearCache;
- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)a3;
- (id)searchWithContext:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5;
- (id)searchWithTrigger:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5;
- (void)addEmptyPlaceholderForTrigger:(id)a3 localeIdentifier:(id)a4;
- (void)addStructuredInfoSuggestions:(id)a3 localeIdentifier:(id)a4;
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

  v4 = [(_PASTuple2 *)cachedSuggestions first];
  if (v4)
  {
    v5 = [(_PASTuple2 *)self->_cachedSuggestions second];
    if (v5)
    {
      v6 = [(_PASTuple2 *)self->_cachedSuggestions second];
      v7 = [objc_opt_class() emptySuggestionsPlaceholder];
      if (v6 == v7)
      {
        v9 = 0;
      }

      else
      {
        v8 = [(_PASTuple2 *)self->_cachedSuggestions second];
        v9 = [v8 count] == 0;
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

- (id)searchWithContext:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![v8 isEqualToString:self->_localeIdentifier])
  {
    v11 = 0;
  }

  else
  {
    v9 = [v7 componentsSeparatedByString:@" "];
    v10 = [v9 lastObject];

    if ([v10 length] && !-[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
    {
      v22 = v8;
      v23 = v7;
      v11 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = [(_PASTuple2 *)self->_cachedSuggestions second];
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          v18 = objc_opt_class();
          v19 = [v17 predictedValue];
          LODWORD(v18) = [v18 _matchesPredictedValue:v19 prefixValue:v10];

          if (v18)
          {
            [v11 addObject:v17];
            if ([v11 count] == a5)
            {
              break;
            }
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

      v8 = v22;
      v7 = v23;
    }

    else
    {
      v11 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)searchWithTrigger:(id)a3 localeIdentifier:(id)a4 maxSuggestions:(unint64_t)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (-[PSGStructuredInfoSuggestionCache _isCacheEmpty](self, "_isCacheEmpty") || ![v9 isEqualToString:self->_localeIdentifier] || -[PSGStructuredInfoSuggestionCache _maybeClearCache](self, "_maybeClearCache"))
  {
    v10 = 0;
    goto LABEL_5;
  }

  v13 = [(_PASTuple2 *)self->_cachedSuggestions first];
  v14 = [v13 triggerAttributes];

  v15 = [v8 triggerAttributes];
  v16 = [v14 isEqualToDictionary:v15];

  if (v16)
  {
    v17 = psg_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_260D18000, v17, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Exact trigger match", buf, 2u);
    }

    v18 = [(_PASTuple2 *)self->_cachedSuggestions second];
    goto LABEL_16;
  }

  v19 = [v8 triggerCategory];
  if (v19 != @"TaggedTextFieldContactsAutocomplete")
  {

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v20 = [(_PASTuple2 *)self->_cachedSuggestions first];
  v21 = [v20 triggerCategory];

  if (v21 != @"TaggedTextFieldContactsAutocomplete")
  {
    goto LABEL_15;
  }

  v23 = [v8 triggerAttributes];
  v24 = [PSGProactiveTrigger getSearchTerm:v23];

  v25 = [PSGProactiveTrigger getSearchTerm:v14];
  if (![v24 length] || !objc_msgSend(v25, "length") || !objc_msgSend(v24, "hasPrefix:", v25))
  {
    v18 = 0;
LABEL_41:

LABEL_16:
    if ([v18 count])
    {
      if ([v18 count] <= a5)
      {
        v22 = v18;
        v18 = v22;
      }

      else
      {
        v22 = [v18 subarrayWithRange:{0, a5}];
      }

      v10 = v22;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_22;
  }

  v26 = psg_default_log_handle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_260D18000, v26, OS_LOG_TYPE_DEBUG, "[StructuredInfoCache] Partial trigger match for Contacts Autocomplete", buf, 2u);
  }

  v27 = [(_PASTuple2 *)self->_cachedSuggestions second];
  v28 = [objc_opt_class() emptySuggestionsPlaceholder];

  if (v27 != v28)
  {
    v39 = v25;
    v18 = objc_opt_new();
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
          v31 = [v30 portraitItem];
          v32 = [v31 name];

          if ([v32 length])
          {
            if (_PASInsensitiveStringContainsString())
            {
              v33 = [PSGStructuredInfoSuggestion alloc];
              v34 = [v30 portraitItem];
              v35 = [v30 operationalItem];
              v36 = [(PSGStructuredInfoSuggestion *)v33 initWithProactiveTrigger:v8 portraitItem:v34 operationalItem:v35];

              [v18 addObject:v36];
              v37 = [v18 count];

              v38 = v37 == a5;
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

  v10 = [(_PASTuple2 *)self->_cachedSuggestions second];

  v18 = 0;
LABEL_22:

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)addEmptyPlaceholderForTrigger:(id)a3 localeIdentifier:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D42648];
  v8 = a3;
  v9 = [objc_opt_class() emptySuggestionsPlaceholder];
  v10 = [v7 tupleWithFirst:v8 second:v9];

  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v10;

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v6;
  v15 = v6;

  v13 = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = v13;
}

- (void)addStructuredInfoSuggestions:(id)a3 localeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 count])
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

  obj = a4;
  v27 = v7;
  if ([v6 count] >= 2)
  {
    v8 = 1;
    while (1)
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 proactiveTrigger];
      v11 = [v10 triggerAttributes];
      v12 = [v6 firstObject];
      v13 = [v12 proactiveTrigger];
      v14 = [v13 triggerAttributes];
      v15 = [v11 isEqualToDictionary:v14];

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (++v8 >= [v6 count])
      {
        goto LABEL_6;
      }
    }

    v23 = psg_default_log_handle();
    v7 = v27;
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
  v17 = [v6 firstObject];
  v18 = [v17 proactiveTrigger];
  v19 = [v16 tupleWithFirst:v18 second:v6];
  cachedSuggestions = self->_cachedSuggestions;
  self->_cachedSuggestions = v19;

  objc_storeStrong(&self->_localeIdentifier, obj);
  v21 = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = v21;

  v7 = v27;
LABEL_11:
}

- (PSGStructuredInfoSuggestionCache)initWithTTLSeconds:(double)a3
{
  v5.receiver = self;
  v5.super_class = PSGStructuredInfoSuggestionCache;
  result = [(PSGStructuredInfoSuggestionCache *)&v5 init];
  if (result)
  {
    result->_ttlSeconds = a3;
  }

  return result;
}

+ (BOOL)_matchesPredictedValue:(id)a3 prefixValue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (([v5 hasPrefix:v6] & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v8 characterIsMember:{objc_msgSend(v6, "characterAtIndex:", 0)}];

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
      v15 = [v14 stringByAppendingString:v6];

      LOBYTE(v14) = [v5 hasPrefix:v15];
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
  block[4] = a1;
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