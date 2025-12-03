@interface PLNLP
+ (BOOL)nlpSearchSupportsLocale:(id)locale;
+ (id)_englishStopWords;
+ (id)dateFilterForCMMWithAttributes:(id)attributes withReferenceDate:(id)date;
+ (id)dateIntervalsFromMessage:(id)message onDate:(id)date;
+ (id)lemmasForToken:(id)token locale:(id)locale options:(int64_t)options;
+ (id)ngramsFromTokens:(id)tokens ofSize:(unint64_t)size usingSeparator:(id)separator;
+ (id)stopWordsForLanguageCode:(id)code;
+ (id)stringWithoutDiacriticsFromString:(id)string;
+ (id)tokensFromString:(id)string options:(int64_t)options;
@end

@implementation PLNLP

+ (BOOL)nlpSearchSupportsLocale:(id)locale
{
  languageCode = [locale languageCode];
  v4 = [&unk_1F0FC0078 containsObject:languageCode];

  return v4;
}

+ (id)_englishStopWords
{
  v2 = _englishStopWords_stopWords;
  if (!_englishStopWords_stopWords)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"a", @"about", @"above", @"after", @"again", @"against", @"all", @"also", @"am", @"an", @"and", @"another", @"any", @"are", @"as", @"at", @"back", @"be", @"because", @"been", @"before", @"being", @"below", @"between", @"both", @"but", @"by", @"can", @"could", @"did", @"do", @"does", @"doing", @"down", @"during", @"each", @"even", @"ever", @"every", @"few", @"first", @"five", @"for", @"four", @"from", @"further", @"get", @"go", @"goes", @"had", @"has", @"have", @"having", @"he", @"her", @"here", @"hers", @"herself", @"high", @"him", @"himself"}];
    v4 = _englishStopWords_stopWords;
    _englishStopWords_stopWords = v3;

    v2 = _englishStopWords_stopWords;
  }

  return v2;
}

+ (id)stopWordsForLanguageCode:(id)code
{
  v12 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"en", @"fr", 0}];
  if (![v5 containsObject:codeCopy])
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = codeCopy;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "We don't have a stop word list for language %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (![codeCopy isEqualToString:@"en"])
  {
    if ([codeCopy isEqualToString:@"fr"])
    {
      _frenchStopWords = [self _frenchStopWords];
      goto LABEL_10;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_11;
  }

  _frenchStopWords = [self _englishStopWords];
LABEL_10:
  v8 = _frenchStopWords;
LABEL_11:

  return v8;
}

+ (id)dateFilterForCMMWithAttributes:(id)attributes withReferenceDate:(id)date
{
  v53 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  dateCopy = date;
  v7 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3550]];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [currentCalendar components:540 fromDate:dateCopy];
  v48 = v9;
  if (!v7)
  {
    v17 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3578]];
    v18 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3570]];
    v19 = 0;
    if (v17)
    {
      goto LABEL_50;
    }

    goto LABEL_11;
  }

  v10 = v9;
  v11 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3568]];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  if (unsignedIntegerValue == 3 || unsignedIntegerValue == 8)
  {
    v14 = [currentCalendar dateFromComponents:v7];
    v15 = [currentCalendar dateByAddingUnit:0x2000 value:1 toDate:v14 options:0];
    v16 = v15;
    if (v14)
    {
      v17 = [currentCalendar components:28 fromDate:v14];
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    v18 = [currentCalendar components:28 fromDate:v16];
    goto LABEL_37;
  }

  if (unsignedIntegerValue != 38 || ((v21 = [v7 month], v22 = objc_msgSend(v7, "year"), objc_msgSend(v7, "day") != 0x7FFFFFFFFFFFFFFFLL) ? (v23 = v21 == 0x7FFFFFFFFFFFFFFFLL) : (v23 = 1), !v23 ? (v24 = v22 == 0x7FFFFFFFFFFFFFFFLL) : (v24 = 0), !v24))
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
LABEL_22:
    v18 = 0;
LABEL_37:
    v19 = v7;
    goto LABEL_38;
  }

  v19 = [v7 copy];
  [v19 setYear:{objc_msgSend(v10, "year")}];
  v45 = [currentCalendar dateFromComponents:v19];
  if ([v45 compare:dateCopy] == 1)
  {
    [v19 setYear:{objc_msgSend(v10, "year") - 1}];
  }

  v46 = PLBackendGetLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v7;
    v51 = 2112;
    v52 = v19;
    _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Adjusting date component %@ to date component %@", buf, 0x16u);
  }

  v14 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_38:
  v36 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3560]];
  unsignedIntegerValue2 = [v36 unsignedIntegerValue];

  if (unsignedIntegerValue2 == 2)
  {
    if (v17)
    {
      v40 = v17;
    }

    else
    {
      v40 = v19;
    }

    v41 = v40;

    v39 = 0;
    v17 = v41;
  }

  else
  {
    if (unsignedIntegerValue2 != 1)
    {
      goto LABEL_49;
    }

    if (v18)
    {
      v38 = v18;
    }

    else
    {
      v38 = v19;
    }

    v39 = v38;
    v17 = 0;
  }

  v18 = v39;
LABEL_49:

  if (v17)
  {
LABEL_50:
    v42 = [PSIDateFilter alloc];
    if (v18)
    {
      v20 = [(PSIDateFilter *)v42 initWithStartDateComponents:v17 endDateComponents:v18];
    }

    else
    {
      v20 = [(PSIDateFilter *)v42 initWithStartDateComponents:v17];
    }

    goto LABEL_53;
  }

LABEL_11:
  if (v18)
  {
    v20 = [[PSIDateFilter alloc] initWithEndDateComponents:v18];
LABEL_53:
    v25 = v20;
    goto LABEL_54;
  }

  if (v19)
  {
    v25 = [[PSIDateFilter alloc] initWithSingleDateComponents:v19];
    weekday = [v19 weekday];
    if (!v25)
    {
      v27 = weekday;
      if (weekday != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = [v19 copy];
        month = [v19 month];
        year = [v19 year];
        if ([v19 day] == 0x7FFFFFFFFFFFFFFFLL && month == 0x7FFFFFFFFFFFFFFFLL && year == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = (v27 - [v48 weekday] - 7) % 7uLL;
          if (v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = -7;
          }

          v32 = [currentCalendar dateByAddingUnit:16 value:v31 toDate:dateCopy options:0];
          currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
          v34 = [currentCalendar2 components:28 fromDate:v32];

          v35 = PLBackendGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v50 = v19;
            v51 = 2112;
            v52 = v34;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Adjusting date component %@ to date component %@", buf, 0x16u);
          }
        }

        else
        {
          v34 = v47;
          [v47 setWeekday:0x7FFFFFFFFFFFFFFFLL];
        }

        v25 = [[PSIDateFilter alloc] initWithSingleDateComponents:v34];
      }
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_54:
  v43 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69B3558]];
  [(PSIDateFilter *)v25 setDisplayString:v43];

  return v25;
}

+ (id)dateIntervalsFromMessage:(id)message onDate:(id)date
{
  messageCopy = message;
  dateCopy = date;
  array = [MEMORY[0x1E695DF70] array];
  defaultManager = [MEMORY[0x1E69B3580] defaultManager];
  v10 = [messageCopy length];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__PLNLP_dateIntervalsFromMessage_onDate___block_invoke;
  v19[3] = &unk_1E7574C60;
  v23 = 0;
  v24 = v10;
  selfCopy = self;
  v20 = dateCopy;
  v21 = currentCalendar;
  v12 = array;
  v22 = v12;
  v13 = currentCalendar;
  v14 = dateCopy;
  v15 = [defaultManager tokenizeAndEnumerateAttributedParsesForQuery:messageCopy options:MEMORY[0x1E695E0F8] withBlock:v19];
  v16 = v22;
  v17 = v12;

  return v12;
}

void __41__PLNLP_dateIntervalsFromMessage_onDate___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PLNLP_dateIntervalsFromMessage_onDate___block_invoke_2;
  v4[3] = &unk_1E7574C38;
  v8 = *(a1 + 72);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 enumerateAttributesInRange:*(a1 + 56) options:*(a1 + 64) usingBlock:{0, v4}];
}

uint64_t __41__PLNLP_dateIntervalsFromMessage_onDate___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 count];
  if (v3)
  {
    v4 = [*(a1 + 56) dateFilterForCMMWithAttributes:v22 withReferenceDate:*(a1 + 32)];
    v5 = v4;
    if (!v4)
    {
LABEL_11:

      goto LABEL_12;
    }

    v6 = [v4 singleDate];

    if (v6)
    {
      v7 = [v5 singleDate];
      v8 = [v7 dateComponents];

      v9 = [*(a1 + 40) dateFromComponents:v8];
      if (!v9)
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = [*(a1 + 40) dateByAddingUnit:16 value:1 toDate:v9 options:0];
      v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
      [*(a1 + 48) addObject:v11];
    }

    else
    {
      v12 = [v5 startDate];
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = v12;
      v14 = [v5 endDate];

      if (!v14)
      {
        goto LABEL_11;
      }

      v15 = *(a1 + 40);
      v16 = [v5 startDate];
      v17 = [v16 dateComponents];
      v8 = [v15 dateFromComponents:v17];

      v18 = *(a1 + 40);
      v19 = [v5 endDate];
      v20 = [v19 dateComponents];
      v9 = [v18 dateFromComponents:v20];

      v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v9];
      [*(a1 + 48) addObject:v10];
    }

    goto LABEL_10;
  }

LABEL_12:

  return MEMORY[0x1EEE66BE0](v3);
}

+ (id)ngramsFromTokens:(id)tokens ofSize:(unint64_t)size usingSeparator:(id)separator
{
  v21 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  separatorCopy = separator;
  v9 = [tokensCopy count];
  v10 = v9 - size;
  if (v9 >= size)
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0;
    do
    {
      v14 = [tokensCopy subarrayWithRange:{v13, size}];
      v15 = [v14 componentsJoinedByString:separatorCopy];

      [array addObject:v15];
      ++v13;
    }

    while (v13 <= v10);
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      sizeCopy = size;
      v19 = 2112;
      v20 = tokensCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Cannot generate %lu-grams from tokens %@", &v17, 0x16u);
    }

    array = 0;
  }

  return array;
}

+ (id)stringWithoutDiacriticsFromString:(id)string
{
  v3 = [string mutableCopy];
  CFStringTransform(v3, 0, *MEMORY[0x1E695E998], 0);

  return v3;
}

+ (id)tokensFromString:(id)string options:(int64_t)options
{
  optionsCopy = options;
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ((optionsCopy & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD00] dominantLanguageForString:stringCopy];
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Detected language from string: %@", buf, 0xCu);
    }

    v7 = [self stopWordsForLanguageCode:v8];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v28 = *MEMORY[0x1E696A530];
  v11 = v28;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v13 = [objc_alloc(MEMORY[0x1E696AD00]) initWithTagSchemes:v12 options:0];
  [v13 setString:stringCopy];
  v14 = [stringCopy length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__PLNLP_tokensFromString_options___block_invoke;
  v21[3] = &unk_1E7574C10;
  v22 = stringCopy;
  v23 = v7;
  v26 = (optionsCopy & 2) != 0;
  selfCopy = self;
  v27 = (optionsCopy & 4) != 0;
  v15 = array;
  v24 = v15;
  v16 = v7;
  v17 = stringCopy;
  [v13 enumerateTagsInRange:0 unit:v14 scheme:0 options:v11 usingBlock:{6, v21}];
  v18 = v24;
  v19 = v15;

  return v15;
}

void __34__PLNLP_tokensFromString_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v9 = *(a1 + 40);
  v10 = [v8 lowercaseString];
  LODWORD(v9) = [v9 containsObject:v10];

  if (v9)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v23 = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Tokens from string %@: ignoring stop word %@", &v23, 0x16u);
    }

    goto LABEL_19;
  }

  if (*(a1 + 64) == 1)
  {
    v13 = [v7 lowercaseString];
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Lemmatization: token %@ -> lemma %@", &v23, 0x16u);
    }

    if (v13)
    {
      v15 = v13;

      v8 = v15;
    }
  }

  if (v8)
  {
    v16 = [*(a1 + 56) stringWithoutDiacriticsFromString:v8];
    v11 = v16;
    if (*(a1 + 65) == 1)
    {
      v17 = *(a1 + 40);
      v18 = [v16 lowercaseString];
      LODWORD(v17) = [v17 containsObject:v18];

      if (v17)
      {
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          v23 = 138412546;
          v24 = v20;
          v25 = 2112;
          v26 = v8;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Tokens from string %@: ignoring stop word %@", &v23, 0x16u);
        }

        goto LABEL_19;
      }

      v21 = *(a1 + 48);
      v22 = v11;
    }

    else
    {
      v21 = *(a1 + 48);
      v22 = v8;
    }

    [v21 addObject:v22];
LABEL_19:
  }
}

+ (id)lemmasForToken:(id)token locale:(id)locale options:(int64_t)options
{
  v23 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  localeCopy = locale;
  v8 = localeCopy;
  if (localeCopy)
  {
    currentLocale = localeCopy;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v10 = currentLocale;
  array = [MEMORY[0x1E695DF70] array];
  localeIdentifier = [v10 localeIdentifier];
  v13 = LXLemmatizerCreate();
  if (v13)
  {
    v14 = v13;
    lowercaseString = [tokenCopy lowercaseString];
    if (lowercaseString)
    {
      v16 = array;
      LXLemmatizerEnumerateLemmasforString();
      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v20 = tokenCopy;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Token Lemmatization: token %@ -> lemma %@", buf, 0x16u);
      }
    }

    CFRelease(v14);
  }

  return array;
}

void __39__PLNLP_lemmasForToken_locale_options___block_invoke(uint64_t a1, __CFString *theString1)
{
  if (CFStringCompare(theString1, *(a1 + 40), 1uLL))
  {
    v4 = theString1;
    if (*(a1 + 56) == 1)
    {
      v6 = v4;
      v5 = [*(a1 + 48) stringWithoutDiacriticsFromString:v4];

      v4 = v5;
    }

    v7 = v4;
    [*(a1 + 32) addObject:v4];
  }
}

@end