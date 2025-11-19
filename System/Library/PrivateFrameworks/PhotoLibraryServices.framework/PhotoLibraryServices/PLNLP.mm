@interface PLNLP
+ (BOOL)nlpSearchSupportsLocale:(id)a3;
+ (id)_englishStopWords;
+ (id)dateFilterForCMMWithAttributes:(id)a3 withReferenceDate:(id)a4;
+ (id)dateIntervalsFromMessage:(id)a3 onDate:(id)a4;
+ (id)lemmasForToken:(id)a3 locale:(id)a4 options:(int64_t)a5;
+ (id)ngramsFromTokens:(id)a3 ofSize:(unint64_t)a4 usingSeparator:(id)a5;
+ (id)stopWordsForLanguageCode:(id)a3;
+ (id)stringWithoutDiacriticsFromString:(id)a3;
+ (id)tokensFromString:(id)a3 options:(int64_t)a4;
@end

@implementation PLNLP

+ (BOOL)nlpSearchSupportsLocale:(id)a3
{
  v3 = [a3 languageCode];
  v4 = [&unk_1F0FC0078 containsObject:v3];

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

+ (id)stopWordsForLanguageCode:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"en", @"fr", 0}];
  if (![v5 containsObject:v4])
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "We don't have a stop word list for language %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (![v4 isEqualToString:@"en"])
  {
    if ([v4 isEqualToString:@"fr"])
    {
      v6 = [a1 _frenchStopWords];
      goto LABEL_10;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = [a1 _englishStopWords];
LABEL_10:
  v8 = v6;
LABEL_11:

  return v8;
}

+ (id)dateFilterForCMMWithAttributes:(id)a3 withReferenceDate:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3550]];
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:540 fromDate:v6];
  v48 = v9;
  if (!v7)
  {
    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3578]];
    v18 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3570]];
    v19 = 0;
    if (v17)
    {
      goto LABEL_50;
    }

    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3568]];
  v12 = [v11 unsignedIntegerValue];

  if (v12 == 3 || v12 == 8)
  {
    v14 = [v8 dateFromComponents:v7];
    v15 = [v8 dateByAddingUnit:0x2000 value:1 toDate:v14 options:0];
    v16 = v15;
    if (v14)
    {
      v17 = [v8 components:28 fromDate:v14];
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

    v18 = [v8 components:28 fromDate:v16];
    goto LABEL_37;
  }

  if (v12 != 38 || ((v21 = [v7 month], v22 = objc_msgSend(v7, "year"), objc_msgSend(v7, "day") != 0x7FFFFFFFFFFFFFFFLL) ? (v23 = v21 == 0x7FFFFFFFFFFFFFFFLL) : (v23 = 1), !v23 ? (v24 = v22 == 0x7FFFFFFFFFFFFFFFLL) : (v24 = 0), !v24))
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
  v45 = [v8 dateFromComponents:v19];
  if ([v45 compare:v6] == 1)
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
  v36 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3560]];
  v37 = [v36 unsignedIntegerValue];

  if (v37 == 2)
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
    if (v37 != 1)
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
    v26 = [v19 weekday];
    if (!v25)
    {
      v27 = v26;
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = [v19 copy];
        v28 = [v19 month];
        v29 = [v19 year];
        if ([v19 day] == 0x7FFFFFFFFFFFFFFFLL && v28 == 0x7FFFFFFFFFFFFFFFLL && v29 == 0x7FFFFFFFFFFFFFFFLL)
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

          v32 = [v8 dateByAddingUnit:16 value:v31 toDate:v6 options:0];
          v33 = [MEMORY[0x1E695DEE8] currentCalendar];
          v34 = [v33 components:28 fromDate:v32];

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
  v43 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B3558]];
  [(PSIDateFilter *)v25 setDisplayString:v43];

  return v25;
}

+ (id)dateIntervalsFromMessage:(id)a3 onDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E69B3580] defaultManager];
  v10 = [v6 length];
  v11 = [MEMORY[0x1E695DEE8] currentCalendar];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__PLNLP_dateIntervalsFromMessage_onDate___block_invoke;
  v19[3] = &unk_1E7574C60;
  v23 = 0;
  v24 = v10;
  v25 = a1;
  v20 = v7;
  v21 = v11;
  v12 = v8;
  v22 = v12;
  v13 = v11;
  v14 = v7;
  v15 = [v9 tokenizeAndEnumerateAttributedParsesForQuery:v6 options:MEMORY[0x1E695E0F8] withBlock:v19];
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

+ (id)ngramsFromTokens:(id)a3 ofSize:(unint64_t)a4 usingSeparator:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v7 count];
  v10 = v9 - a4;
  if (v9 >= a4)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = 0;
    do
    {
      v14 = [v7 subarrayWithRange:{v13, a4}];
      v15 = [v14 componentsJoinedByString:v8];

      [v12 addObject:v15];
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
      v18 = a4;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Cannot generate %lu-grams from tokens %@", &v17, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)stringWithoutDiacriticsFromString:(id)a3
{
  v3 = [a3 mutableCopy];
  CFStringTransform(v3, 0, *MEMORY[0x1E695E998], 0);

  return v3;
}

+ (id)tokensFromString:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((v4 & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD00] dominantLanguageForString:v6];
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Detected language from string: %@", buf, 0xCu);
    }

    v7 = [a1 stopWordsForLanguageCode:v8];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v28 = *MEMORY[0x1E696A530];
  v11 = v28;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v13 = [objc_alloc(MEMORY[0x1E696AD00]) initWithTagSchemes:v12 options:0];
  [v13 setString:v6];
  v14 = [v6 length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __34__PLNLP_tokensFromString_options___block_invoke;
  v21[3] = &unk_1E7574C10;
  v22 = v6;
  v23 = v7;
  v26 = (v4 & 2) != 0;
  v25 = a1;
  v27 = (v4 & 4) != 0;
  v15 = v10;
  v24 = v15;
  v16 = v7;
  v17 = v6;
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

+ (id)lemmasForToken:(id)a3 locale:(id)a4 options:(int64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v10 = v9;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v10 localeIdentifier];
  v13 = LXLemmatizerCreate();
  if (v13)
  {
    v14 = v13;
    v15 = [v6 lowercaseString];
    if (v15)
    {
      v16 = v11;
      LXLemmatizerEnumerateLemmasforString();
      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Token Lemmatization: token %@ -> lemma %@", buf, 0x16u);
      }
    }

    CFRelease(v14);
  }

  return v11;
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