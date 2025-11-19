@interface RKProactiveGrammar
+ (id)getEntities:(id)a3;
+ (id)getOTAPathForRKBundle:(id)a3;
+ (id)sharedManager;
- (RKProactiveGrammar)init;
- (id)copyAttributedTokenForText:(id)a3 forLanguage:(id)a4;
- (id)copyAttributedTokenForText:(id)a3 forLanguageModel:(void *)a4 withLanguageCode:(id)a5;
- (id)getEquivalenceClass:(id)a3;
- (void)chineseTokenizer;
- (void)dealloc;
- (void)getLanguageModel:(id)a3;
@end

@implementation RKProactiveGrammar

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__RKProactiveGrammar_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_sharedProactiveManager;

  return v2;
}

uint64_t __35__RKProactiveGrammar_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedProactiveManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (RKProactiveGrammar)init
{
  v10.receiver = self;
  v10.super_class = RKProactiveGrammar;
  v2 = [(RKProactiveGrammar *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = _localeLangModel;
    _localeLangModel = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = _localeEquivalenceClass;
    _localeEquivalenceClass = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = _localeGrammarBundlePath;
    _localeGrammarBundlePath = v7;
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = _localeLangModel;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [_localeLangModel objectForKey:*(*(&v10 + 1) + 8 * v7)];
        LMLanguageModelRelease();
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (_chineseTokenizer)
  {
    ChineseTokenizerRelease();
  }

  v9.receiver = self;
  v9.super_class = RKProactiveGrammar;
  [(RKProactiveGrammar *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)getOTAPathForRKBundle:(id)a3
{
  v3 = a3;
  v4 = CFLocaleCreate(0, v3);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  LDEnumerateAssetDataItems();
  if (!v10[5])
  {
    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
    v6 = [v5 objectForKey:*MEMORY[0x277CBE6C8]];

    CFLocaleCreate(0, v6);
    LDEnumerateAssetDataItems();

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

LABEL_6:
  v7 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v7;
}

void __44__RKProactiveGrammar_getOTAPathForRKBundle___block_invoke(uint64_t a1, const __CFURL *a2, int a3, int a4, CFTypeRef cf1, _BYTE *a6)
{
  if (CFEqual(cf1, *MEMORY[0x277D236A8]))
  {
    v9 = CFURLCopyPath(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

void __44__RKProactiveGrammar_getOTAPathForRKBundle___block_invoke_2(uint64_t a1, const __CFURL *a2, int a3, int a4, CFTypeRef cf1, _BYTE *a6)
{
  if (CFEqual(cf1, *MEMORY[0x277D236A8]))
  {
    v9 = CFURLCopyPath(a2);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a6 = 1;
  }
}

- (void)getLanguageModel:(id)a3
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [_localeLangModel objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [_localeLangModel objectForKeyedSubscript:v3];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"RK_Bundle" withExtension:0];
    v8 = [v7 path];
    [_localeGrammarBundlePath setObject:v8 forKeyedSubscript:v3];

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v10 = CFLocaleCreate(0, v3);
    v11 = MEMORY[0x277D230E0];
    cf = v10;
    CFDictionarySetValue(Mutable, *MEMORY[0x277D230E0], v10);
    v12 = MEMORY[0x277D23078];
    CFDictionarySetValue(Mutable, *MEMORY[0x277D23078], *MEMORY[0x277CBED10]);
    v13 = MEMORY[0x277D230A0];
    v14 = *MEMORY[0x277D230A0];
    v15 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];
    CFDictionarySetValue(Mutable, v14, v15);

    v5 = LMLanguageModelCreate();
    LMVocabularyGetSharedVocabulary();
    if (v5)
    {
      LMLanguageModelAddTransientVocabulary();
      [_localeLangModel setObject:v5 forKeyedSubscript:v3];
      v16 = v12;
    }

    else
    {
      v31 = v7;
      v33 = v6;
      v30 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
      v17 = [v30 objectForKey:*MEMORY[0x277CBE6C8]];
      v18 = *v12;
      v39[0] = *v11;
      v39[1] = v18;
      v40[0] = v17;
      v40[1] = MEMORY[0x277CBEC28];
      v39[2] = *v13;
      v19 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];
      v40[2] = v19;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
      v20 = LMLanguageModelCreate();

      v16 = v12;
      if (v20)
      {
        LMLanguageModelAddTransientVocabulary();
        [_localeLangModel setObject:v20 forKeyedSubscript:v3];
      }

      v7 = v31;
      v6 = v33;
    }

    v21 = [RKProactiveGrammar getOTAPathForRKBundle:v3];
    v22 = [_localeLangModel objectForKeyedSubscript:v3];

    if (!v22 && v21)
    {
      v32 = v7;
      v34 = v6;
      [_localeGrammarBundlePath setObject:v21 forKeyedSubscript:v3];
      v23 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
      v24 = [v23 languageCode];
      v25 = *v16;
      v37[0] = *MEMORY[0x277D230E0];
      v37[1] = v25;
      v38[0] = v24;
      v38[1] = MEMORY[0x277CBEC28];
      v37[2] = *MEMORY[0x277D230A0];
      v26 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];
      v38[2] = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
      v27 = LMLanguageModelCreate();

      if (v27)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "(RKProactiveGrammar) Loading grammar from OTA resources", buf, 2u);
        }

        LMLanguageModelAddTransientVocabulary();
        [_localeLangModel setObject:v27 forKeyedSubscript:v3];
      }

      v7 = v32;
      v6 = v34;
    }

    CFRelease(cf);
    CFRelease(Mutable);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)chineseTokenizer
{
  if (!_chineseTokenizer)
  {
    v2 = CFLocaleCreate(0, @"zh-Hans");
    _chineseTokenizer = ChineseTokenizerCreate();
    if (_chineseTokenizer)
    {
      ChineseTokenizerSetCustomWordCheckBlock();
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  return _chineseTokenizer;
}

BOOL __38__RKProactiveGrammar_chineseTokenizer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    return 0;
  }

  LMVocabularyGetSharedVocabulary();
  return LMVocabularyContainsLemmaForCharacters() != 0;
}

- (id)getEquivalenceClass:(id)a3
{
  v3 = a3;
  v4 = [_localeEquivalenceClass objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];

    if (!v5)
    {
      v6 = [RKProactiveGrammar getOTAPathForRKBundle:v3];
      [_localeGrammarBundlePath setObject:v6 forKeyedSubscript:v3];
    }

    v7 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];

    if (v7)
    {
      v8 = [_localeGrammarBundlePath objectForKeyedSubscript:v3];
      v9 = [v8 stringByAppendingString:@"/equivalenceClasses.plist"];

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v10 fileExistsAtPath:v9];

      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:v9];
        [_localeEquivalenceClass setObject:v12 forKeyedSubscript:v3];

        goto LABEL_10;
      }
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [_localeEquivalenceClass setObject:v13 forKeyedSubscript:v3];
  }

  v12 = [_localeEquivalenceClass objectForKeyedSubscript:v3];
LABEL_10:

  return v12;
}

+ (id)getEntities:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v6 = objc_alloc(MEMORY[0x277CCAAE8]);
  v8 = *MEMORY[0x277CCA3D8];
  v22[0] = *MEMORY[0x277CCA3E8];
  v7 = v22[0];
  v22[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v10 = [v6 initWithTagSchemes:v9 options:4];

  [v10 setString:v4];
  v11 = [v10 string];
  v12 = [v11 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__RKProactiveGrammar_getEntities___block_invoke;
  v19[3] = &unk_279B102B0;
  v20 = v10;
  v13 = v5;
  v21 = v13;
  v14 = v10;
  [v14 enumerateTagsInRange:0 scheme:v12 options:v7 usingBlock:{4, v19}];

  v15 = v21;
  v16 = v13;

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void __34__RKProactiveGrammar_getEntities___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v10 = objc_opt_new();
  v8 = [*(a1 + 32) string];
  v9 = [v8 substringWithRange:{a3, a4}];
  [v10 setString:v9];

  [v10 setPartOfSpeech:v7];
  [v10 setTokenType:0];
  [v10 setLanguage:0];
  [v10 setTokenRange:{a3, a4}];
  [v10 setLemma:0];
  [*(a1 + 40) addObject:v10];
}

- (id)copyAttributedTokenForText:(id)a3 forLanguage:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RKProactiveGrammar *)self getLanguageModel:v7];
  v48 = self;
  v49 = v7;
  v9 = [(RKProactiveGrammar *)self getEquivalenceClass:v7];
  v10 = [RKProactiveGrammar getEntities:v6];
  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  string = objc_alloc_init(MEMORY[0x277CCAB68]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v10;
  v12 = 0x277CCA000uLL;
  v55 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v55)
  {
    v53 = 0;
    v54 = *v58;
    v50 = v9;
    v51 = v11;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        v15 = [v14 partOfSpeech];
        if ([v15 isEqualToString:@"Punctuation"])
        {
          v16 = 1;
        }

        else
        {
          v17 = [v14 partOfSpeech];
          if ([v17 isEqualToString:@"SentenceTerminator"])
          {
            v16 = 1;
          }

          else
          {
            v18 = [v14 string];
            if ([v18 length] == 1)
            {
              [v14 string];
              v20 = v19 = v6;
              [*(v12 + 2304) characterSetWithCharactersInString:@"！＂＃＄％＆＇（）＊＋，－．／：；＜＝＞？?＠［＼］＾＿｀｛｜｝～"];
              v22 = v21 = v8;
              [v20 rangeOfCharacterFromSet:v22];
              v16 = v23 != 0;

              v8 = v21;
              v6 = v19;
              v9 = v50;
              v11 = v51;
            }

            else
            {
              v16 = 0;
            }
          }
        }

        v24 = [v14 string];
        v25 = [v9 objectForKeyedSubscript:v24];

        if (v25)
        {
          v26 = [v14 string];
          v27 = [v9 objectForKeyedSubscript:v26];
          [(__CFString *)string appendString:v27];

          v53 = 1;
        }

        if (!v16 || ([v14 string], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v28), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29))
        {
          v30 = [v14 string];
          v31 = [v9 objectForKeyedSubscript:v30];

          if (!v31)
          {
            v32 = [v14 tokenRange];
            v34 = [v6 substringWithRange:{v32, v33}];
            [(__CFString *)string appendString:v34];
          }

          [(__CFString *)string appendString:@" "];
          if (!v16)
          {
            v35 = [v14 tokenRange];
            v37 = [v6 substringWithRange:{v35, v36}];
            [(__CFString *)v11 appendString:v37];
            [(__CFString *)v11 appendString:@" "];
          }
        }

        v12 = 0x277CCA000;
      }

      v55 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v55);
  }

  else
  {
    v53 = 0;
  }

  [(__CFString *)v11 replaceOccurrencesOfString:@"’" withString:@"'" options:1 range:0, [(__CFString *)v11 length]];
  [(__CFString *)string replaceOccurrencesOfString:@"’" withString:@"'" options:1 range:0, [(__CFString *)string length]];
  [(__CFString *)v11 replaceOccurrencesOfString:@" 's" withString:@"'s" options:1 range:0, [(__CFString *)v11 length]];
  [(__CFString *)string replaceOccurrencesOfString:@" 's" withString:@"'s" options:1 range:0, [(__CFString *)string length]];
  if ([v49 isEqualToString:@"en"])
  {
    [(__CFString *)v11 replaceOccurrencesOfString:@" 'll" withString:@"'ll" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" 'll" withString:@"'ll" options:1 range:0, [(__CFString *)string length]];
    [(__CFString *)v11 replaceOccurrencesOfString:@" 've" withString:@"'ve" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" 've" withString:@"'ve" options:1 range:0, [(__CFString *)string length]];
    [(__CFString *)v11 replaceOccurrencesOfString:@" 're" withString:@"'re" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" 're" withString:@"'re" options:1 range:0, [(__CFString *)string length]];
    [(__CFString *)v11 replaceOccurrencesOfString:@" 'd" withString:@"'d" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" 'd" withString:@"'d" options:1 range:0, [(__CFString *)string length]];
    [(__CFString *)v11 replaceOccurrencesOfString:@"y' all" withString:@"you" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@"y' all" withString:@"you" options:1 range:0, [(__CFString *)string length]];
  }

  if ([v49 isEqualToString:@"fr"])
  {
    [(__CFString *)v11 replaceOccurrencesOfString:@"c' est" withString:@"c'est" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@"c' est" withString:@"c'est" options:1 range:0, [(__CFString *)string length]];
  }

  if (([v49 isEqualToString:@"pt"] & 1) != 0 || (objc_msgSend(v49, "isEqualToString:", @"tr") & 1) != 0 || (objc_msgSend(v49, "isEqualToString:", @"it") & 1) != 0 || (objc_msgSend(v49, "isEqualToString:", @"de") & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"fr"))
  {
    [(__CFString *)v11 replaceOccurrencesOfString:@" - " withString:@"-" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" - " withString:@"-" options:1 range:0, [(__CFString *)string length]];
  }

  if (([v49 isEqualToString:@"it"] & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"fr"))
  {
    [(__CFString *)v11 replaceOccurrencesOfString:@"' " withString:@"'" options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@"' " withString:@"'" options:1 range:0, [(__CFString *)string length]];
  }

  if ([v49 isEqualToString:@"es"] && objc_msgSend(v6, "containsString:", @" c.p.") && -[__CFString containsString:](v11, "containsString:", @" c.p "))
  {
    [(__CFString *)v11 replaceOccurrencesOfString:@" c.p " withString:@" c.p. " options:1 range:0, [(__CFString *)v11 length]];
    [(__CFString *)string replaceOccurrencesOfString:@" c.p " withString:@" c.p. " options:1 range:0, [(__CFString *)string length]];
  }

  if (([v49 isEqualToString:@"es"] & 1) != 0 || (objc_msgSend(v49, "isEqualToString:", @"it") & 1) != 0 || (objc_msgSend(v49, "isEqualToString:", @"pt") & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"fr"))
  {
    v38 = *MEMORY[0x277CBF100];
    CFStringTransform(v11, 0, *MEMORY[0x277CBF100], 0);
    CFStringTransform(string, 0, v38, 0);
    v39 = [RKUtilities stripDiacritics:v11];
    v40 = [RKUtilities stripDiacritics:string];
  }

  v41 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v42 = [(__CFString *)v11 stringByTrimmingCharactersInSet:v41];

  v43 = [(RKProactiveGrammar *)v48 copyAttributedTokenForText:v42 forLanguageModel:v8 withLanguageCode:v49];
  if (((v43 == 0) & v53) == 1)
  {
    v44 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v45 = [(__CFString *)string stringByTrimmingCharactersInSet:v44];

    v43 = [(RKProactiveGrammar *)v48 copyAttributedTokenForText:v45 forLanguageModel:v8 withLanguageCode:v49];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v43;
}

- (id)copyAttributedTokenForText:(id)a3 forLanguageModel:(void *)a4 withLanguageCode:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  LMVocabularyGetSharedVocabulary();
  v9 = [v7 componentsSeparatedByString:@" "];
  v10 = [v9 count];

  if (v10 <= 2)
  {
    v11 = [@"<s> " stringByAppendingString:v7];

    v7 = v11;
  }

  if ([v8 isEqualToString:@"zh-Hans"])
  {
    v12 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_2874A9C90];

    if ([(RKProactiveGrammar *)self chineseTokenizer])
    {
      [v12 length];
      ChineseTokenizerSetString();
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (ChineseTokenizerAdvanceToNextToken())
      {
        do
        {
          CurrentTokenRange = ChineseTokenizerGetCurrentTokenRange();
          v16 = [v12 substringWithRange:{CurrentTokenRange, v15}];
          [v13 addObject:v16];
        }

        while ((ChineseTokenizerAdvanceToNextToken() & 1) != 0);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v17 = [v7 componentsSeparatedByString:@" "];
    v13 = [v17 mutableCopy];

    v12 = v7;
  }

  v41 = 0;
  v18 = [v13 count];
  if (v18)
  {
    v35 = v8;
    v33 = v18;
    v19 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v34 = v13;
    obj = v13;
    v20 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      LODWORD(v22) = 0;
      v23 = *v38;
      do
      {
        v24 = 0;
        v22 = v22;
        do
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v37 + 1) + 8 * v24);
          v26 = [v25 lowercaseString];
          if (!LMVocabularyContainsLemma() && [v25 hasSuffix:@"'s"])
          {
            v27 = [v25 stringByReplacingOccurrencesOfString:@"'s" withString:&stru_2874A9C90];

            if (LMVocabularyContainsLemma())
            {
              v26 = v27;
            }

            else
            {
              v28 = [v25 lowercaseString];

              v26 = v28;
            }
          }

          v19[v22++] = LMLanguageModelGetTokenIDForString();

          ++v24;
        }

        while (v21 != v24);
        v21 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v21);
    }

    v8 = v35;
    v13 = v34;
  }

  else
  {
    v19 = 0;
  }

  PredictionEnumerator = LMLanguageModelCreatePredictionEnumerator();
  if (!PredictionEnumerator || !LMPredictionEnumeratorAdvance() || (LMPredictionEnumeratorGetPrediction(), !v41))
  {
    v30 = 0;
    if (!v19)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v30 = LMLanguageModelCopyTokenAttributes();
  if (v19)
  {
LABEL_32:
    free(v19);
  }

LABEL_33:
  if (PredictionEnumerator)
  {
    LMPredictionEnumeratorRelease();
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

@end