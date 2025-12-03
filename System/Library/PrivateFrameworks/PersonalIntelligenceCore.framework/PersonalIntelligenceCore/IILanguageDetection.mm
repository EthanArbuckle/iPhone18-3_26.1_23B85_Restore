@interface IILanguageDetection
+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)length maxLength:(uint64_t)maxLength minimumProbability:;
+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)length maxLength:(uint64_t)maxLength minimumProbability:hints:hintsCount:;
+ (id)_userLanguagesWithKeyboardDefaults:(uint64_t)defaults;
+ (id)defaultLanguage;
+ (id)detectLanguageFromLanguageTags:(id)tags;
+ (id)detectLanguageFromText:(id)text;
+ (id)detectLanguageFromTextHeuristically:(id)heuristically;
+ (id)detectLanguageFromTextHeuristicallyWithLanguages:(id)languages languages:(id)a4 defaultLanguage:(id)language;
+ (id)detectLanguageFromTextIfMultilingual:(id)multilingual;
+ (id)detectLanguageFromTextWithMaxLength:(id)length maxLength:(unint64_t)maxLength minimumProbability:(double)probability;
+ (id)dominantLanguageTagFromLanguageTags:(id)tags;
+ (id)languageForLocaleIdentifier:(id)identifier;
+ (id)userLanguages;
+ (id)userLanguagesWithoutCanonicalSuffixes;
+ (int)languageIdForLanguageString:(id)string;
@end

@implementation IILanguageDetection

+ (id)dominantLanguageTagFromLanguageTags:(id)tags
{
  v25 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  objc_opt_self();
  [tagsCopy count];
  if ([tagsCopy count])
  {
    if ([tagsCopy count] == 1)
    {
      firstObject = [tagsCopy firstObject];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:tagsCopy];
      if ([v5 count] == 1)
      {
        firstObject = [tagsCopy firstObject];
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

        if (v17 / [tagsCopy count] >= 0.6)
        {
          firstObject = v9;
        }

        else
        {
          firstObject = 0;
        }
      }

      else
      {
        firstObject = 0;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)length maxLength:(uint64_t)maxLength minimumProbability:
{
  lengthCopy = length;
  objc_opt_self();
  v7 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:self maxLength:IILanguageDetection minimumProbability:lengthCopy hints:maxLength hintsCount:?];

  return v7;
}

+ (id)_dominantLanguageTagFromTextWithMaxLength:(void *)length maxLength:(uint64_t)maxLength minimumProbability:hints:hintsCount:
{
  lengthCopy = length;
  objc_opt_self();
  if ([lengthCopy length])
  {
    if (_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasOnceToken3 != -1)
    {
      dispatch_once(&_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasOnceToken3, &__block_literal_global_442);
    }

    result = [_dominantLanguageTagFromTextWithMaxLength_maxLength_minimumProbability_hints_hintsCount___pasExprOnceResult result];
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
    maxLengthCopy = maxLength;
    v11 = lengthCopy;
    selfCopy = self;
    [result runWithLockAcquired:v10];
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

+ (id)detectLanguageFromLanguageTags:(id)tags
{
  v3 = [self dominantLanguageTagFromLanguageTags:tags];
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

+ (id)detectLanguageFromTextIfMultilingual:(id)multilingual
{
  multilingualCopy = multilingual;
  objc_opt_self();
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [preferredLanguages count];

  if (v5 < 2)
  {
    +[IILanguageDetection defaultLanguage];
  }

  else
  {
    [IILanguageDetection detectLanguageFromText:multilingualCopy];
  }
  v6 = ;

  return v6;
}

+ (id)detectLanguageFromTextWithMaxLength:(id)length maxLength:(unint64_t)maxLength minimumProbability:(double)probability
{
  v5 = [(IILanguageDetection *)probability _dominantLanguageTagFromTextWithMaxLength:length maxLength:maxLength minimumProbability:?];
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

+ (id)detectLanguageFromTextHeuristicallyWithLanguages:(id)languages languages:(id)a4 defaultLanguage:(id)language
{
  languagesCopy = languages;
  languageCopy = language;
  allObjects = [a4 allObjects];
  v10 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_25];

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
  v18 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:IILanguageDetection maxLength:languagesCopy minimumProbability:30 hints:? hintsCount:?];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = languageCopy;
  }

  v21 = v20;

  if (![v21 length])
  {
    [v11 count];
    v22 = [IILanguageDetection _dominantLanguageTagFromTextWithMaxLength:IILanguageDetection maxLength:languagesCopy minimumProbability:500 hints:? hintsCount:?];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = languageCopy;
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

+ (id)detectLanguageFromTextHeuristically:(id)heuristically
{
  heuristicallyCopy = heuristically;
  v4 = +[IILanguageDetection userLanguages];
  v5 = [IILanguageDetection detectLanguageFromTextHeuristicallyWithLanguages:heuristicallyCopy languages:v4 defaultLanguage:0];

  return v5;
}

+ (id)detectLanguageFromText:(id)text
{
  v3 = [IILanguageDetection dominantLanguageTagFromText:text];
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults stringArrayForKey:@"AppleKeyboards"];
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

+ (id)_userLanguagesWithKeyboardDefaults:(uint64_t)defaults
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
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v12 = [preferredLanguages countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(preferredLanguages);
          }

          v16 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:*(*(&v19 + 1) + 8 * j)];
          [v3 addObject:v16];
        }

        v13 = [preferredLanguages countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)userLanguages
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringArrayForKey:@"AppleKeyboards"];
  v4 = [IILanguageDetection _userLanguagesWithKeyboardDefaults:v3];

  return v4;
}

+ (id)defaultLanguage
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [IILanguageDetection languageForLocaleIdentifier:localeIdentifier];

  return v4;
}

+ (int)languageIdForLanguageString:(id)string
{
  stringCopy = string;
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
  if (([stringCopy hasPrefix:v7] & 1) == 0)
  {

    goto LABEL_5;
  }

LABEL_8:
  return v6;
}

+ (id)languageForLocaleIdentifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = objc_autoreleasePoolPush();
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IILanguageDetection.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier != nil"}];
  }

  if ([identifierCopy length] > 1)
  {
    v8 = [identifierCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    v9 = [v8 componentsSeparatedByString:@"-"];
    firstObject = [v9 firstObject];
    lowercaseString = [firstObject lowercaseString];

    lastObject = [v9 lastObject];
    v13 = [v9 count];
    v14 = [lowercaseString isEqualToString:@"zh"];
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

          if (v18 & 1) != 0 || ([lastObject isEqualToString:@"HK"])
          {
            v7 = @"zh-Hant";
          }

          else
          {
            v7 = @"zh-Hant";
            if (([lastObject isEqualToString:@"MO"] & 1) == 0 && !objc_msgSend(lastObject, "isEqualToString:", @"TW"))
            {
              v7 = @"zh-Hans";
            }
          }
        }

        goto LABEL_36;
      }

      if ([lowercaseString isEqualToString:@"uz"])
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

        if (v24 & 1) != 0 || ([lastObject isEqualToString:@"UZ"] & 1) != 0 || (objc_msgSend(lastObject, "isEqualToString:", @"AZ"))
        {
          v7 = @"uz-Latn";
          goto LABEL_36;
        }

        if ([lastObject isEqualToString:@"AF"])
        {
LABEL_19:
          v7 = @"uz-Arab";
          goto LABEL_36;
        }
      }

      if ([lowercaseString isEqualToString:@"sr"])
      {
        v25 = [v9 objectAtIndexedSubscript:1];
        v26 = [v25 isEqualToString:@"Latn"];

        if (v26)
        {
          v7 = @"sr-Latn";
          goto LABEL_36;
        }
      }

      if ([lowercaseString isEqualToString:@"hi"])
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

    v7 = lowercaseString;
    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v33 = identifierCopy;
    _os_log_fault_impl(&dword_231C94000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Provided locale identifier (%@) is not a valid identifier", buf, 0xCu);
  }

  v7 = identifierCopy;
LABEL_37:
  objc_autoreleasePoolPop(v6);

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end