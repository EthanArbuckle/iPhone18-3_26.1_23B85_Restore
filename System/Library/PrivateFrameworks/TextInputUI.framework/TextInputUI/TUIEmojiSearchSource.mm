@interface TUIEmojiSearchSource
- (BOOL)shouldSupplyVerbatimResultsFor:(id)for;
- (NSArray)suggestedEmojis;
- (TUIEmojiSearchSource)initWithLocale:(id)locale;
- (TUIEmojiSearchSourceDelegate)delegate;
- (id)_emojiResultSetForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (id)_filteredTokensIgnoringModifiers:(id)modifiers;
- (id)_repeatSearchQuery:(id)query forLocales:(id)locales;
- (id)languagesForMultilingualSearch;
- (void)_deliverResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
- (void)beginSearchForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery;
@end

@implementation TUIEmojiSearchSource

- (TUIEmojiSearchSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deliverResults:(id)results forExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  resultsCopy = results;
  queryCopy = query;
  autocorrectedQueryCopy = autocorrectedQuery;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__TUIEmojiSearchSource__deliverResults_forExactQuery_autocorrectedQuery___block_invoke;
  v14[3] = &unk_1E72D8110;
  v14[4] = self;
  v15 = queryCopy;
  v16 = autocorrectedQueryCopy;
  v17 = resultsCopy;
  v11 = resultsCopy;
  v12 = autocorrectedQueryCopy;
  v13 = queryCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __73__TUIEmojiSearchSource__deliverResults_forExactQuery_autocorrectedQuery___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) isEqualToString:*(a1 + 40)])
  {
    if ([*(*(a1 + 32) + 16) isEqualToString:*(a1 + 48)])
    {
      objc_storeStrong((*(a1 + 32) + 24), *(a1 + 56));
      v2 = [*(a1 + 32) delegate];

      if (v2)
      {
        v3 = [*(a1 + 32) delegate];
        [v3 emojiSearchSource:*(a1 + 32) didProduceResults:*(*(a1 + 32) + 24) forExactQuery:*(*(a1 + 32) + 8) autocorrectedQuery:*(*(a1 + 32) + 16)];
      }
    }
  }
}

- (id)_repeatSearchQuery:(id)query forLocales:(id)locales
{
  v25 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  localesCopy = locales;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = localesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        locale = [(TUIEmojiSearchSource *)self locale];
        v15 = UIKeyboardInputModeLanguageMatchesLocaleLanguage();

        if ((v15 & 1) == 0)
        {
          v16 = [MEMORY[0x1E699BAD0] emojiLocaleDataWithLocaleIdentifier:v13];
          v17 = [v16 emojiTokensForText:queryCopy phoneticReading:0 options:17 searchType:2 includePrefixMatches:1];
          if ([v17 count])
          {
            [v19 addObjectsFromArray:v17];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v19;
}

- (id)languagesForMultilingualSearch
{
  if (TIGetMultilingualEmojiSearchValue_onceToken != -1)
  {
    dispatch_once(&TIGetMultilingualEmojiSearchValue_onceToken, &__block_literal_global_11509);
  }

  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v4 = [mEMORY[0x1E69D9680] valueForPreferenceKey:@"MultilingualEmojiSearch"];

  LODWORD(mEMORY[0x1E69D9680]) = [v4 BOOLValue];
  if (mEMORY[0x1E69D9680] && (-[TUIEmojiSearchSource multilingualSearchLocales](self, "multilingualSearchLocales"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    multilingualSearchLocales = [(TUIEmojiSearchSource *)self multilingualSearchLocales];
  }

  else
  {
    multilingualSearchLocales = 0;
  }

  return multilingualSearchLocales;
}

- (id)_emojiResultSetForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  queryCopy = query;
  autocorrectedQueryCopy = autocorrectedQuery;
  v8 = [queryCopy length];
  if (v8 + [autocorrectedQueryCopy length])
  {
    localeData = [(TUIEmojiSearchSource *)self localeData];
    v11 = [localeData emojiTokensForText:queryCopy phoneticReading:0 options:17 searchType:2 includePrefixMatches:1];

    if ([(TUIEmojiSearchSource *)self shouldSupplyVerbatimResultsFor:v11])
    {
      v11 = v11;
      v9 = v11;
    }

    else
    {
      languagesForMultilingualSearch = [(TUIEmojiSearchSource *)self languagesForMultilingualSearch];
      if (![v11 count] && languagesForMultilingualSearch)
      {
        v13 = [(TUIEmojiSearchSource *)self _repeatSearchQuery:queryCopy forLocales:languagesForMultilingualSearch];

        v11 = v13;
      }

      localeData2 = [(TUIEmojiSearchSource *)self localeData];
      v15 = [localeData2 emojiTokensForText:autocorrectedQueryCopy phoneticReading:0 options:17 searchType:2 includePrefixMatches:1];

      v16 = [v11 arrayByAddingObjectsFromArray:v15];
      if ([languagesForMultilingualSearch count] >= 2)
      {
        v17 = [(TUIEmojiSearchSource *)self _repeatSearchQuery:autocorrectedQueryCopy forLocales:languagesForMultilingualSearch];
        v18 = [v16 arrayByAddingObjectsFromArray:v17];

        v16 = v18;
      }

      v9 = [(TUIEmojiSearchSource *)self _filteredTokensIgnoringModifiers:v16];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (NSArray)suggestedEmojis
{
  v3 = [MEMORY[0x1E699BAC8] categoryWithIdentifier:*MEMORY[0x1E699BA70]];
  v4 = [v3 emojiTokensForLocaleData:self->_localeData];
  v5 = objc_alloc_init(MEMORY[0x1E699BAE0]);
  recentEmojis = [v5 recentEmojis];
  v7 = [recentEmojis mutableCopy];

  if ([v7 count] <= 0xE)
  {
    v8 = 0;
    do
    {
      v9 = v8 + 1;
      v10 = [v4 objectAtIndex:?];
      [v7 addObject:v10];

      v11 = [v7 count];
      v8 = v9;
    }

    while (v11 < 0xF);
  }

  v12 = [(TUIEmojiSearchSource *)self _filteredTokensIgnoringModifiers:v7];

  return v12;
}

- (id)_filteredTokensIgnoringModifiers:(id)modifiers
{
  v24 = *MEMORY[0x1E69E9840];
  modifiersCopy = modifiers;
  v4 = [MEMORY[0x1E695DFA8] set];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = modifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 supportsSkinToneVariants])
        {
          v12 = MEMORY[0x1E699BB10];
          string = [v11 string];
          string3 = [v12 _baseStringForEmojiString:string];

          if ([v4 containsObject:string3])
          {

            continue;
          }
        }

        else
        {
          string2 = [v11 string];
          v16 = [v4 containsObject:string2];

          if (v16)
          {
            continue;
          }

          string3 = [v11 string];
        }

        [v4 addObject:string3];

        [orderedSet addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  array = [orderedSet array];

  return array;
}

- (BOOL)shouldSupplyVerbatimResultsFor:(id)for
{
  v19 = *MEMORY[0x1E69E9840];
  forCopy = for;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = forCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        string = [*(*(&v14 + 1) + 8 * v9) string];
        [array addObject:string];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = shouldSupplyVerbatimResultsFor__verbatimResultSets;
  if (!shouldSupplyVerbatimResultsFor__verbatimResultSets)
  {
    v11 = &unk_1F03D9080;
    shouldSupplyVerbatimResultsFor__verbatimResultSets = &unk_1F03D9080;
  }

  v12 = [v11 containsObject:{array, v14}];

  return v12;
}

- (void)beginSearchForExactQuery:(id)query autocorrectedQuery:(id)autocorrectedQuery
{
  queryCopy = query;
  autocorrectedQueryCopy = autocorrectedQuery;
  if (![(NSString *)self->_exactQuery isEqualToString:queryCopy]|| ![(NSString *)self->_autocorrectedQuery isEqualToString:autocorrectedQueryCopy])
  {
    v8 = [queryCopy copy];
    exactQuery = self->_exactQuery;
    self->_exactQuery = v8;

    v10 = [autocorrectedQueryCopy copy];
    autocorrectedQuery = self->_autocorrectedQuery;
    self->_autocorrectedQuery = v10;

    searchQueue = self->_searchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__TUIEmojiSearchSource_beginSearchForExactQuery_autocorrectedQuery___block_invoke;
    block[3] = &unk_1E72D80E8;
    block[4] = self;
    v14 = queryCopy;
    v15 = autocorrectedQueryCopy;
    dispatch_async(searchQueue, block);
  }
}

void __68__TUIEmojiSearchSource_beginSearchForExactQuery_autocorrectedQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _emojiResultSetForExactQuery:*(a1 + 40) autocorrectedQuery:*(a1 + 48)];
  [*(a1 + 32) _deliverResults:v2 forExactQuery:*(a1 + 40) autocorrectedQuery:*(a1 + 48)];
}

- (TUIEmojiSearchSource)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = TUIEmojiSearchSource;
  v5 = [(TUIEmojiSearchSource *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.TextInputUI.emojiSearchQueue", MEMORY[0x1E69E96A8]);
    searchQueue = v5->_searchQueue;
    v5->_searchQueue = v6;

    [(TUIEmojiSearchSource *)v5 setLocale:localeCopy];
    v8 = MEMORY[0x1E699BAD0];
    localeIdentifier = [localeCopy localeIdentifier];
    v10 = [v8 emojiLocaleDataWithLocaleIdentifier:localeIdentifier];
    [(TUIEmojiSearchSource *)v5 setLocaleData:v10];
  }

  return v5;
}

@end