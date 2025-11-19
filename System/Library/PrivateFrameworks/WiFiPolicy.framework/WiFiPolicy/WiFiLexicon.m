@interface WiFiLexicon
- (BOOL)stringContainsUnwantedWords:(id)a3;
- (WiFiLexicon)init;
- (id)_tokenizeStringForSpecialCharacters:(id)a3;
- (void)dealloc;
@end

@implementation WiFiLexicon

- (void)dealloc
{
  lexiconEnglish = self->_lexiconEnglish;
  if (lexiconEnglish)
  {
    CFRelease(lexiconEnglish);
    self->_lexiconEnglish = 0;
  }

  lexiconUserLocale = self->_lexiconUserLocale;
  if (lexiconUserLocale)
  {
    CFRelease(lexiconUserLocale);
    self->_lexiconUserLocale = 0;
  }

  v5.receiver = self;
  v5.super_class = WiFiLexicon;
  [(WiFiLexicon *)&v5 dealloc];
}

- (WiFiLexicon)init
{
  v23.receiver = self;
  v23.super_class = WiFiLexicon;
  v2 = [(WiFiLexicon *)&v23 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v4 = [v3 localeIdentifier];

    v5 = [(__CFString *)v4 hasPrefix:@"en"];
    v6 = v5;
    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = @"en";
    }

    v8 = v7;
    v2->_lexiconEnglish = _createLexiconWithLocale(v8);
    if ((v6 & 1) == 0)
    {
      v2->_lexiconUserLocale = _createLexiconWithLocale(v4);
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
    v11 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    [(NSCharacterSet *)v10 formUnionWithCharacterSet:v11];

    v12 = [MEMORY[0x277CCA900] symbolCharacterSet];
    [(NSCharacterSet *)v10 formUnionWithCharacterSet:v12];

    v13 = [(NSCharacterSet *)v10 copy];
    tokenizationCharacterSetWithoutUpperCase = v2->_tokenizationCharacterSetWithoutUpperCase;
    v2->_tokenizationCharacterSetWithoutUpperCase = v13;

    v15 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    [(NSCharacterSet *)v10 formUnionWithCharacterSet:v15];

    tokenizationCharacterSet = v2->_tokenizationCharacterSet;
    v2->_tokenizationCharacterSet = v10;
    v17 = v10;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    stringCache = v2->_stringCache;
    v2->_stringCache = v18;

    v20 = [MEMORY[0x277CBEB58] set];
    [(NSSet *)v20 addObject:@"secure"];
    [(NSSet *)v20 addObject:@"private"];
    unwantedEnglishWords = v2->_unwantedEnglishWords;
    v2->_unwantedEnglishWords = v20;

    objc_autoreleasePoolPop(v9);
  }

  return v2;
}

- (BOOL)stringContainsUnwantedWords:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = [(WiFiLexicon *)self stringCache];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(WiFiLexicon *)self stringCache];
    v8 = [v7 objectForKey:v4];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = [(WiFiLexicon *)self unwantedEnglishWords];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke;
    v22[3] = &unk_2789C6880;
    v11 = v4;
    v23 = v11;
    v24 = &v25;
    [v10 enumerateObjectsUsingBlock:v22];

    if (*(v26 + 24) == 1)
    {
      v12 = [(WiFiLexicon *)self stringCache];
      v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v26 + 24)];
      [v12 setObject:v13 forKey:v11];

      v9 = *(v26 + 24);
    }

    else
    {
      v14 = [(WiFiLexicon *)self _tokenizeStringForSpecialCharacters:v11];
      if ([v14 count])
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke_2;
        v19[3] = &unk_2789C68D0;
        v19[4] = self;
        v15 = v11;
        v20 = v15;
        v21 = &v25;
        [v14 enumerateObjectsUsingBlock:v19];
        v16 = [(WiFiLexicon *)self stringCache];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:*(v26 + 24)];
        [v16 setObject:v17 forKey:v15];

        v9 = *(v26 + 24);
      }

      else
      {
        v9 = 0;
      }
    }

    v7 = v23;
  }

  _Block_object_dispose(&v25, 8);
  return v9 & 1;
}

void __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) localizedCaseInsensitiveContainsString:?] && (!objc_msgSend(v5, "isEqualToString:", @"secure") || (objc_msgSend(*(a1 + 32), "localizedCaseInsensitiveContainsString:", @"unsecured") & 1) == 0))
  {
    NSLog(&cfstr_SFoundUnwanted.isa, "[WiFiLexicon stringContainsUnwantedWords:]_block_invoke", v5, *(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  LXLexiconEnumerateEntriesForString();
  if (*(*(a1 + 32) + 16))
  {
    v6 = v5;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    LXLexiconEnumerateEntriesForString();
  }
}

void __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke_3(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if ([v5 isEqualToString:a1[4]] && (LXEntryGetMetaFlags() & 0x3800000) != 0)
  {
    NSLog(&cfstr_SFoundUnwanted.isa, "[WiFiLexicon stringContainsUnwantedWords:]_block_invoke_3", a1[4], a1[5]);
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __43__WiFiLexicon_stringContainsUnwantedWords___block_invoke_4(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if ([v5 isEqualToString:a1[4]] && (LXEntryGetMetaFlags() & 0x3800000) != 0)
  {
    NSLog(&cfstr_SFoundUnwanted.isa, "[WiFiLexicon stringContainsUnwantedWords:]_block_invoke_4", a1[4], a1[5]);
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_tokenizeStringForSpecialCharacters:(id)a3
{
  v3 = a3;
  v19 = [MEMORY[0x277CBEB58] set];
  if ([v3 length])
  {
    context = objc_autoreleasePoolPush();
    v18 = [v3 length];
    v4 = v18 - 2;
    if (v18 >= 2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v5 + 1;
        v8 = [v3 characterAtIndex:v5 + 1];
        v9 = [(WiFiLexicon *)self tokenizationCharacterSet];
        v10 = [v9 characterIsMember:v8];

        if (v4 == v5 || v10)
        {
          v11 = v18;
          if (v4 != v5)
          {
            v11 = v5 + 1;
          }

          v12 = [v3 substringWithRange:{v6, v11 - v6}];
          v13 = [(WiFiLexicon *)self tokenizationCharacterSetWithoutUpperCase];
          v14 = [v12 stringByTrimmingCharactersInSet:v13];
          v15 = [v14 lowercaseString];

          [v19 addObject:v15];
        }

        else
        {
          v7 = v6;
        }

        ++v5;
        v6 = v7;
      }

      while (v18 - 1 != v5);
    }

    objc_autoreleasePoolPop(context);
  }

  return v19;
}

@end