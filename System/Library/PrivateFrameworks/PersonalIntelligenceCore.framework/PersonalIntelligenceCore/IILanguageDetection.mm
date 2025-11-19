@interface IILanguageDetection
+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)a3 maxLength:(uint64_t)a4 minimumProbability:;
+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)a3 maxLength:(uint64_t)a4 minimumProbability:hints:hintsCount:;
+ (id)_userLanguagesWithKeyboardDefaults:(uint64_t)a1;
+ (id)defaultLanguage;
+ (id)detectLanguageFromLanguageTags:(id)a3;
+ (id)detectLanguageFromText:(id)a3;
+ (id)detectLanguageFromTextHeuristically:(id)a3;
+ (id)detectLanguageFromTextHeuristicallyWithLanguages:(id)a3 languages:(id)a4 defaultLanguage:(id)a5;
+ (id)detectLanguageFromTextIfMultilingual:(id)a3;
+ (id)detectLanguageFromTextWithMaxLength:(id)a3 maxLength:(unint64_t)a4 minimumProbability:(double)a5;
+ (id)dominantLanguageTagFromLanguageTags:(id)a3;
+ (id)languageForLocaleIdentifier:(id)a3;
+ (id)userLanguages;
+ (id)userLanguagesWithoutCanonicalSuffixes;
+ (int)languageIdForLanguageString:(id)a3;
@end

@implementation IILanguageDetection

+ (id)dominantLanguageTagFromLanguageTags:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_self();
  [v3 count];
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v3];
      if ([v5 count] == 1)
      {
        v4 = [v3 firstObject];
      }

      else if ([v5 count] <= 2)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = 0;
          v11 = *v21;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v6);
              }

              v13 = *(*(&v20 + 1) + 8 * i);
              v14 = [v6 countForObject:{v13, v20}];
              if (v14 >= v10)
              {
                v15 = v14;
                v16 = v13;

                v9 = v16;
                v10 = v15;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v8);
          v17 = v10;
        }

        else
        {
          v9 = 0;
          v17 = 0.0;
        }

        if (v17 / [v3 count] >= 0.6)
        {
          v4 = v9;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)a3 maxLength:(uint64_t)a4 minimumProbability:
{
  v6 = a3;
  objc_opt_self();
  v7 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:a1 maxLength:IILanguageDetection minimumProbability:v6 hints:a4 hintsCount:?];

  return v7;
}

+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)a3 maxLength:(uint64_t)a4 minimumProbability:hints:hintsCount:
{
  v6 = a3;
  objc_opt_self();
  if ([v6 length])
  {
    if (_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasOnceToken3 != -1)
    {
      dispatch_once(&_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasOnceToken3, &__block_literal_global_442);
    }

    v7 = [_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasExprOnceResult result];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __111__IILanguageDetection__dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___block_invoke_449;
    v10[3] = &unk_2789458F8;
    v12 = &v15;
    v13 = a4;
    v11 = v6;
    v14 = a1;
    [v7 runWithLockAcquired:v10];
    v8 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __111__IILanguageDetection__dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___block_invoke_449(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3[1];
  if (CFStringGetLength(*(a1 + 32)) >= *(a1 + 48))
  {
    v6 = *(a1 + 48);
  }

  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 regionCode];
  if (([v8 isEqualToString:@"IN"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"PK") & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"BD"))
  {
    NLLanguageIdentifierConsumeString();
    NLLanguageIdentifierGetTopHypotheses();
    NLLanguageIdentifierReset();
    if (*(a1 + 56) > 0.0 || 0.0 + 0.1 >= 0.0)
    {
      NLLanguageIdentifierSetModelID();
      NLLanguageIdentifierConsumeString();
      NLLanguageIdentifierGetTopHypotheses();
      NLLanguageIdentifierReset();
      if (0.0 < 0.8)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    objc_opt_self();
    v9 = 0;
    goto LABEL_16;
  }

  NLLanguageIdentifierSetModelID();
  NLLanguageIdentifierConsumeString();
  NLLanguageIdentifierGetTopHypotheses();
  NLLanguageIdentifierReset();
  if (0.0 >= 0.8)
  {
    goto LABEL_15;
  }

  NLLanguageIdentifierConsumeString();
  NLLanguageIdentifierGetTopHypotheses();
  NLLanguageIdentifierReset();
  if (*(a1 + 56) <= 0.0 && 0.0 + 0.1 < 0.0)
  {
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
LABEL_16:
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];
}

void __111__IILanguageDetection__dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_446];
  v2 = _dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasExprOnceResult;
  _dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __111__IILanguageDetection__dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___block_invoke_2()
{
  v0 = objc_opt_new();
  v0[1] = NLLanguageIdentifierCreate();
  v1 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v0];

  return v1;
}

+ (id)detectLanguageFromLanguageTags:(id)a3
{
  v3 = [a1 dominantLanguageTagFromLanguageTags:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[IILanguageDetection defaultLanguage];
  }

  v6 = v5;

  return v6;
}

+ (id)detectLanguageFromTextIfMultilingual:(id)a3
{
  v3 = a3;
  objc_opt_self();
  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 count];

  if (v5 < 2)
  {
    +[IILanguageDetection defaultLanguage];
  }

  else
  {
    [IILanguageDetection detectLanguageFromText:v3];
  }
  v6 = ;

  return v6;
}

+ (id)detectLanguageFromTextWithMaxLength:(id)a3 maxLength:(unint64_t)a4 minimumProbability:(double)a5
{
  v5 = [(IILanguageDetection *)a5 _dominantLanguageTagFromTextWithMaxLength:a3 maxLength:a4 minimumProbability:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[IILanguageDetection defaultLanguage];
  }

  v8 = v7;

  return v8;
}

+ (id)detectLanguageFromTextHeuristicallyWithLanguages:(id)a3 languages:(id)a4 defaultLanguage:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 allObjects];
  v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_25];

  v11 = v10;
  objc_opt_self();
  v12 = malloc_type_malloc(8 * [v11 count], 0x100004000313F17uLL);
  v13 = [v11 count];
  if ([v11 count])
  {
    v14 = 0;
    v15 = 0.2 / v13;
    v16 = v12 + 1;
    do
    {
      v17 = [v11 objectAtIndexedSubscript:v14];
      *(v16 - 1) = [v17 intValue];

      *v16 = v15;
      v16 += 2;
      ++v14;
    }

    while (v14 < [v11 count]);
  }

  [v11 count];
  v18 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:IILanguageDetection maxLength:v7 minimumProbability:30 hints:? hintsCount:?];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v8;
  }

  v21 = v20;

  if (![v21 length])
  {
    [v11 count];
    v22 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:IILanguageDetection maxLength:v7 minimumProbability:500 hints:? hintsCount:?];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v8;
    }

    v25 = v24;

    v21 = v25;
  }

  free(v12);

  return v21;
}

uint64_t __98__IILanguageDetection_detectLanguageFromTextHeuristicallyWithLanguages_languages_defaultLanguage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [IILanguageDetection languageIdForLanguageString:a2];

  return [v2 numberWithInt:v3];
}

+ (id)detectLanguageFromTextHeuristically:(id)a3
{
  v3 = a3;
  v4 = +[IILanguageDetection userLanguages];
  v5 = [IILanguageDetection detectLanguageFromTextHeuristicallyWithLanguages:v3 languages:v4 defaultLanguage:0];

  return v5;
}

+ (id)detectLanguageFromText:(id)a3
{
  v3 = [IILanguageDetection dominantLanguageTagFromText:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[IILanguageDetection defaultLanguage];
  }

  v6 = v5;

  return v6;
}

+ (id)userLanguagesWithoutCanonicalSuffixes
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 stringArrayForKey:@"AppleKeyboards"];
  v5 = [IILanguageDetection _userLanguagesWithKeyboardDefaults:v4];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [IILanguageDetection languageForLocaleIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_userLanguagesWithKeyboardDefaults:(uint64_t)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  if (v2 && [v2 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          if (([v9 containsString:@"Emoji"] & 1) == 0 && (objc_msgSend(v9, "containsString:", @"emoji") & 1) == 0)
          {
            v10 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v9];
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }
  }

  if (![v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v19 + 1) + 8 * j)];
          [v3 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)userLanguages
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringArrayForKey:@"AppleKeyboards"];
  v4 = [IILanguageDetection _userLanguagesWithKeyboardDefaults:v3];

  return v4;
}

+ (id)defaultLanguage
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [IILanguageDetection languageForLocaleIdentifier:v3];

  return v4;
}

+ (int)languageIdForLanguageString:(id)a3
{
  v3 = a3;
  v4 = off_278945AD8;
  v5 = 59;
  while (1)
  {
    v6 = v5 - 1;
    if (v5 != 55)
    {
      break;
    }

LABEL_5:
    --v4;
    v5 = v6;
    if (v6 <= 2)
    {
      LODWORD(v6) = 1;
      goto LABEL_8;
    }
  }

  objc_opt_self();
  v7 = *v4;
  if (([v3 hasPrefix:v7] & 1) == 0)
  {

    goto LABEL_5;
  }

LABEL_8:
  return v6;
}

+ (id)languageForLocaleIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"IILanguageDetection.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier != nil"}];
  }

  if ([v5 length] > 1)
  {
    v8 = [v5 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v9 = [v8 componentsSeparatedByString:@"-"];
    v10 = [v9 firstObject];
    v11 = [v10 lowercaseString];

    v12 = [v9 lastObject];
    v13 = [v9 count];
    v14 = [v11 isEqualToString:@"zh"];
    if (v13 == 1)
    {
      if (v14)
      {
        v7 = @"zh-Hans";
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      if (v14)
      {
        v15 = [v9 objectAtIndexedSubscript:1];
        v16 = [v15 isEqualToString:@"Hans"];

        v7 = @"zh-Hans";
        if ((v16 & 1) == 0)
        {
          v17 = [v9 objectAtIndexedSubscript:1];
          v18 = [v17 isEqualToString:@"Hant"];

          if (v18 & 1) != 0 || ([v12 isEqualToString:@"HK"])
          {
            v7 = @"zh-Hant";
          }

          else
          {
            v7 = @"zh-Hant";
            if (([v12 isEqualToString:@"MO"] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", @"TW"))
            {
              v7 = @"zh-Hans";
            }
          }
        }

        goto LABEL_36;
      }

      if ([v11 isEqualToString:@"uz"])
      {
        v19 = [v9 objectAtIndexedSubscript:1];
        v20 = [v19 isEqualToString:@"Cyrl"];

        if (v20)
        {
          v7 = @"uz";
          goto LABEL_36;
        }

        v21 = [v9 objectAtIndexedSubscript:1];
        v22 = [v21 isEqualToString:@"Arab"];

        if (v22)
        {
          goto LABEL_19;
        }

        v23 = [v9 objectAtIndexedSubscript:1];
        v24 = [v23 isEqualToString:@"Latn"];

        if (v24 & 1) != 0 || ([v12 isEqualToString:@"UZ"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"AZ"))
        {
          v7 = @"uz-Latn";
          goto LABEL_36;
        }

        if ([v12 isEqualToString:@"AF"])
        {
LABEL_19:
          v7 = @"uz-Arab";
          goto LABEL_36;
        }
      }

      if ([v11 isEqualToString:@"sr"])
      {
        v25 = [v9 objectAtIndexedSubscript:1];
        v26 = [v25 isEqualToString:@"Latn"];

        if (v26)
        {
          v7 = @"sr-Latn";
          goto LABEL_36;
        }
      }

      if ([v11 isEqualToString:@"hi"])
      {
        v27 = [v9 objectAtIndexedSubscript:1];
        v28 = [v27 isEqualToString:@"Latn"];

        if (v28)
        {
          v7 = @"hi-Latn";
          goto LABEL_36;
        }
      }
    }

    v7 = v11;
    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v33 = v5;
    _os_log_fault_impl(&dword_231C94000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Provided locale identifier (%@) is not a valid identifier", buf, 0xCu);
  }

  v7 = v5;
LABEL_37:
  objc_autoreleasePoolPop(v6);

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end