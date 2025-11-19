@interface _LTEtiquetteSanitizer
- (_LTEtiquetteSanitizer)initWithModelURL:(id)a3 language:(id)a4;
- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)a3 language:(id)a4;
- (id)matchesForString:(id)a3;
- (id)replacementStringForString:(id)a3 forToken:(id)a4;
- (id)sanitizedStringForString:(id)a3;
- (id)stringByReplacingMatches:(id)a3 inString:(id)a4;
- (id)treeForReplacementTokens:(id)a3;
@end

@implementation _LTEtiquetteSanitizer

- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_LTEtiquetteSanitizer *)self init];
  v9 = v8;
  if (v8)
  {
    v10 = [(_LTEtiquetteSanitizer *)v8 treeForReplacementTokens:v6];
    replacementTree = v9->_replacementTree;
    v9->_replacementTree = v10;

    objc_storeStrong(&v9->_locale, a4);
    v12 = v9;
  }

  return v9;
}

- (_LTEtiquetteSanitizer)initWithModelURL:(id)a3 language:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 URLByAppendingPathComponent:@"etiquette.json"];
  v8 = replacementDictionaryForEtiquetteFileAtURL(v7);
  if (v8)
  {
    v9 = _LTOSLogEtiquetteSanitizer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Creating etiquette sanitizer with URL: %{public}@", &v13, 0xCu);
    }
  }

  v10 = [(_LTEtiquetteSanitizer *)self initWithReplacementTokenDictionary:v8 language:v6];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)treeForReplacementTokens:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke;
  v8[3] = &unk_2789B6AC0;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)matchesForString:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v24 = a3;
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__7;
  v35[4] = __Block_byref_object_dispose__7;
  v36 = 0;
  v7 = [v24 lowercaseString];
  v8 = [v24 length];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42___LTEtiquetteSanitizer_matchesForString___block_invoke;
  v29[3] = &unk_2789B6AE8;
  objc_copyWeak(&v34, &location);
  v9 = v5;
  v30 = v9;
  v33 = v35;
  v10 = v4;
  v31 = v10;
  v11 = v6;
  v32 = v11;
  [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v29}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v38 count:16];
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 node];
        v18 = [v17 objectForKeyedSubscript:@"TOKEN"];
        [v16 setToken:v18];

        v19 = [v16 token];

        if (v19)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v25 objects:v38 count:16];
    }

    while (v13);
  }

  v20 = v32;
  v21 = v10;

  objc_destroyWeak(&v34);
  _Block_object_dispose(v35, 8);

  objc_destroyWeak(&location);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)replacementStringForString:(id)a3 forToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = [v5 length];
  v9 = [v6 length];

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61___LTEtiquetteSanitizer_replacementStringForString_forToken___block_invoke;
  v13[3] = &unk_2789B6B10;
  v11 = v7;
  v14 = v11;
  [v5 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v13}];

  return v11;
}

- (id)stringByReplacingMatches:(id)a3 inString:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 range];
        v16 = [v7 substringWithRange:{v14, v15}];
        v17 = [v13 token];
        v18 = [(_LTEtiquetteSanitizer *)self replacementStringForString:v16 forToken:v17];

        v19 = [v18 length];
        v10 += v19 - [v16 length];
        v20 = [v13 range];
        [v7 replaceCharactersInRange:v20 + v10 withString:{v21, v18}];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = [v7 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)sanitizedStringForString:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_LTEtiquetteSanitizer *)self matchesForString:v4];
  if ([v5 count])
  {
    v6 = [(_LTEtiquetteSanitizer *)self stringByReplacingMatches:v5 inString:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = _LTOSLogEtiquetteSanitizer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    locale = self->_locale;
    v9 = v7;
    v10 = [(NSLocale *)locale localeIdentifier];
    v13 = 138740483;
    v14 = v6;
    v15 = 2117;
    v16 = v4;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "sanitizedString '%{sensitive}@' forString '%{sensitive}@' locale: %{public}@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end