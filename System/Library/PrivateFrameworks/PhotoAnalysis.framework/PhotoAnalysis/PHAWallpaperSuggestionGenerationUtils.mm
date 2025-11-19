@interface PHAWallpaperSuggestionGenerationUtils
+ (BOOL)isGraphDependentSubtype:(unsigned __int16)a3;
+ (BOOL)suggestionsExistInPhotoLibrary:(id)a3 subtypePredicate:(id)a4;
+ (id)generateSuggestionsWithOptionsDictionary:(id)a3 contentMode:(signed __int16)a4 suggestionController:(id)a5 progressReporter:(id)a6 shouldReload:(BOOL *)a7;
+ (id)subtypePredicateWithContentMode:(signed __int16)a3;
+ (id)suggestionOptionsWithDictionary:(id)a3 contentMode:(signed __int16)a4 isGraphReady:(BOOL)a5 loggingConnection:(id)a6;
+ (unsigned)suggestionProfileForContentMode:(signed __int16)a3;
@end

@implementation PHAWallpaperSuggestionGenerationUtils

+ (BOOL)suggestionsExistInPhotoLibrary:(id)a3 subtypePredicate:(id)a4
{
  v5 = a4;
  v6 = [a3 librarySpecificFetchOptions];
  [v6 setPredicate:v5];

  [v6 setFetchLimit:1];
  v7 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v6];
  v8 = [v7 count] != 0;

  return v8;
}

+ (id)subtypePredicateWithContentMode:(signed __int16)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a1 = [MEMORY[0x277CD99E0] predicateForAllTopWallpaperSuggestions];
      }
    }

    else
    {
      a1 = [MEMORY[0x277CD99E0] predicateForAllShuffleWallpaperSuggestions];
    }
  }

  else
  {
    if (a3 == 2)
    {
      v3 = MEMORY[0x277CCAC30];
      v4 = 680;
LABEL_10:
      a1 = [v3 predicateWithFormat:@"%K = %d", @"subtype", v4];
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_13;
      }

      v3 = MEMORY[0x277CCAC30];
      v4 = 901;
      goto LABEL_10;
    }

    a1 = [MEMORY[0x277CD99E0] predicateForAllAmbientSuggestions];
  }

LABEL_13:

  return a1;
}

+ (unsigned)suggestionProfileForContentMode:(signed __int16)a3
{
  if (a3 == 3)
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

+ (id)suggestionOptionsWithDictionary:(id)a3 contentMode:(signed __int16)a4 isGraphReady:(BOOL)a5 loggingConnection:(id)a6
{
  v8 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = 0;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v28 = MEMORY[0x277CBEB58];
      v29 = [MEMORY[0x277CD99E0] allShuffleWallpaperSuggestionSubtypes];
      v13 = [v28 setWithSet:v29];

      v12 = 200;
      if (a5)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v13 = 0;
    if (v8 == 1)
    {
      v14 = MEMORY[0x277CBEB58];
      v15 = [MEMORY[0x277CD99E0] allTopWallpaperSuggestionSubtypes];
      v13 = [v14 setWithSet:v15];

LABEL_9:
      v12 = 25;
      if (a5)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v8 == 2)
    {
      v13 = [MEMORY[0x277CBEB58] setWithObject:&unk_2844CC918];
      v12 = 100;
      if (a5)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (v8 == 3)
    {
      v16 = MEMORY[0x277CBEB58];
      v17 = [MEMORY[0x277CD99E0] allAmbientSuggestionSubtypes];
      v13 = [v16 setWithSet:v17];

      v12 = 400;
    }

    else
    {
      v13 = 0;
      if (v8 == 4)
      {
        v13 = [MEMORY[0x277CBEB58] setWithObject:&unk_2844CC930];
        goto LABEL_9;
      }
    }
  }

  if (a5)
  {
    goto LABEL_29;
  }

LABEL_15:
  v30 = v12;
  v31 = v11;
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        if ([a1 isGraphDependentSubtype:{objc_msgSend(v24, "integerValue", v30)}])
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  v12 = v30;
  v11 = v31;
  if ([v18 count])
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v18;
      v38 = 1024;
      v39 = v8;
      _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] Graph is not ready; removing suggestions for %@ for content mode %hd", buf, 0x12u);
    }

    [v19 minusSet:{v18, v30}];
  }

LABEL_29:
  v25 = [MEMORY[0x277D3BBF0] suggestionOptionsWithDictionary:v10 subtypes:{v13, v30}];
  v26 = [v10 objectForKeyedSubscript:*MEMORY[0x277D3B0A0]];

  if (!v26)
  {
    [v25 setMaximumNumberOfSuggestions:v12];
  }

  return v25;
}

+ (BOOL)isGraphDependentSubtype:(unsigned __int16)a3
{
  result = 1;
  if (a3 > 679)
  {
    if (a3 <= 909)
    {
      if ((a3 - 680) <= 0x17 && ((1 << (a3 + 88)) & 0xE0001F) != 0)
      {
        return 0;
      }

      v4 = a3 - 801;
    }

    else
    {
      if (a3 > 1200)
      {
        if ((a3 - 1401) >= 3 && (a3 - 1501) >= 2 && (a3 - 1201) > 1)
        {
          return result;
        }

        return 0;
      }

      if ((a3 - 910) < 8)
      {
        return 0;
      }

      v4 = a3 - 1101;
    }

LABEL_25:
    if (v4 >= 2)
    {
      return result;
    }

    return 0;
  }

  if (a3 <= 300)
  {
    if ((a3 - 201) < 4 || (a3 - 101) < 3 || !a3)
    {
      return 0;
    }
  }

  else
  {
    if (a3 > 500)
    {
      if ((a3 - 601) <= 0x36 && ((1 << (a3 - 89)) & 0x60000000000019) != 0)
      {
        return 0;
      }

      v4 = a3 - 501;
      goto LABEL_25;
    }

    if ((a3 - 301) < 6 || a3 == 401)
    {
      return 0;
    }
  }

  return result;
}

+ (id)generateSuggestionsWithOptionsDictionary:(id)a3 contentMode:(signed __int16)a4 suggestionController:(id)a5 progressReporter:(id)a6 shouldReload:(BOOL *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v26 = a6;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v14 = [v13 graphManager];
  v15 = [a1 subtypePredicateWithContentMode:v10];
  v16 = [v14 photoLibrary];
  v25 = [a1 suggestionsExistInPhotoLibrary:v16 subtypePredicate:v15];

  v17 = [v14 isReady];
  v18 = [v14 workingContextForSuggestions];
  v19 = [v18 loggingConnection];

  v20 = [a1 suggestionOptionsWithDictionary:v12 contentMode:v10 isGraphReady:v17 loggingConnection:v19];
  v21 = [a1 suggestionProfileForContentMode:v10];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__PHAWallpaperSuggestionGenerationUtils_generateSuggestionsWithOptionsDictionary_contentMode_suggestionController_progressReporter_shouldReload___block_invoke;
  v27[3] = &unk_2788B2178;
  v29 = v30;
  v22 = v26;
  v28 = v22;
  v23 = [v13 generateSuggestionsWithProfile:v21 options:v20 progress:v27];
  if (a7)
  {
    *a7 = v25 ^ 1;
  }

  _Block_object_dispose(v30, 8);

  return v23;
}

uint64_t __145__PHAWallpaperSuggestionGenerationUtils_generateSuggestionsWithOptionsDictionary_contentMode_suggestionController_progressReporter_shouldReload___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

@end