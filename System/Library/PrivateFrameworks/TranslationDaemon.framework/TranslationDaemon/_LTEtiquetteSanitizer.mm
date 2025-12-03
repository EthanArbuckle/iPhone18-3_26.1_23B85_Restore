@interface _LTEtiquetteSanitizer
- (_LTEtiquetteSanitizer)initWithModelURL:(id)l language:(id)language;
- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)dictionary language:(id)language;
- (id)matchesForString:(id)string;
- (id)replacementStringForString:(id)string forToken:(id)token;
- (id)sanitizedStringForString:(id)string;
- (id)stringByReplacingMatches:(id)matches inString:(id)string;
- (id)treeForReplacementTokens:(id)tokens;
@end

@implementation _LTEtiquetteSanitizer

- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)dictionary language:(id)language
{
  dictionaryCopy = dictionary;
  languageCopy = language;
  v8 = [(_LTEtiquetteSanitizer *)self init];
  v9 = v8;
  if (v8)
  {
    v10 = [(_LTEtiquetteSanitizer *)v8 treeForReplacementTokens:dictionaryCopy];
    replacementTree = v9->_replacementTree;
    v9->_replacementTree = v10;

    objc_storeStrong(&v9->_locale, language);
    v12 = v9;
  }

  return v9;
}

- (_LTEtiquetteSanitizer)initWithModelURL:(id)l language:(id)language
{
  v15 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v7 = [l URLByAppendingPathComponent:@"etiquette.json"];
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

  v10 = [(_LTEtiquetteSanitizer *)self initWithReplacementTokenDictionary:v8 language:languageCopy];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)treeForReplacementTokens:(id)tokens
{
  v3 = MEMORY[0x277CBEB38];
  tokensCopy = tokens;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke;
  v8[3] = &unk_2789B6AC0;
  v6 = dictionary;
  v9 = v6;
  [tokensCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)matchesForString:(id)string
{
  v39 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__7;
  v35[4] = __Block_byref_object_dispose__7;
  v36 = 0;
  lowercaseString = [stringCopy lowercaseString];
  v8 = [stringCopy length];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42___LTEtiquetteSanitizer_matchesForString___block_invoke;
  v29[3] = &unk_2789B6AE8;
  objc_copyWeak(&v34, &location);
  v9 = array2;
  v30 = v9;
  v33 = v35;
  v10 = array;
  v31 = v10;
  v11 = array3;
  v32 = v11;
  [lowercaseString enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v29}];

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
        node = [v16 node];
        v18 = [node objectForKeyedSubscript:@"TOKEN"];
        [v16 setToken:v18];

        token = [v16 token];

        if (token)
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

- (id)replacementStringForString:(id)string forToken:(id)token
{
  tokenCopy = token;
  stringCopy = string;
  v7 = [stringCopy mutableCopy];
  v8 = [tokenCopy length];
  v9 = [stringCopy length];

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
  [tokenCopy enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v13}];

  return v11;
}

- (id)stringByReplacingMatches:(id)matches inString:(id)string
{
  v31 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v7 = [string mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = matchesCopy;
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
        range = [v13 range];
        v16 = [v7 substringWithRange:{range, v15}];
        token = [v13 token];
        v18 = [(_LTEtiquetteSanitizer *)self replacementStringForString:v16 forToken:token];

        v19 = [v18 length];
        v10 += v19 - [v16 length];
        range2 = [v13 range];
        [v7 replaceCharactersInRange:range2 + v10 withString:{v21, v18}];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v22 = [v7 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)sanitizedStringForString:(id)string
{
  v19 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [(_LTEtiquetteSanitizer *)self matchesForString:stringCopy];
  if ([v5 count])
  {
    v6 = [(_LTEtiquetteSanitizer *)self stringByReplacingMatches:v5 inString:stringCopy];
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
    localeIdentifier = [(NSLocale *)locale localeIdentifier];
    v13 = 138740483;
    v14 = v6;
    v15 = 2117;
    v16 = stringCopy;
    v17 = 2114;
    v18 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "sanitizedString '%{sensitive}@' forString '%{sensitive}@' locale: %{public}@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end