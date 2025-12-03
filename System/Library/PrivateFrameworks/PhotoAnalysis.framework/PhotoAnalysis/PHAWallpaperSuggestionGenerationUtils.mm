@interface PHAWallpaperSuggestionGenerationUtils
+ (BOOL)isGraphDependentSubtype:(unsigned __int16)subtype;
+ (BOOL)suggestionsExistInPhotoLibrary:(id)library subtypePredicate:(id)predicate;
+ (id)generateSuggestionsWithOptionsDictionary:(id)dictionary contentMode:(signed __int16)mode suggestionController:(id)controller progressReporter:(id)reporter shouldReload:(BOOL *)reload;
+ (id)subtypePredicateWithContentMode:(signed __int16)mode;
+ (id)suggestionOptionsWithDictionary:(id)dictionary contentMode:(signed __int16)mode isGraphReady:(BOOL)ready loggingConnection:(id)connection;
+ (unsigned)suggestionProfileForContentMode:(signed __int16)mode;
@end

@implementation PHAWallpaperSuggestionGenerationUtils

+ (BOOL)suggestionsExistInPhotoLibrary:(id)library subtypePredicate:(id)predicate
{
  predicateCopy = predicate;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPredicate:predicateCopy];

  [librarySpecificFetchOptions setFetchLimit:1];
  v7 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  v8 = [v7 count] != 0;

  return v8;
}

+ (id)subtypePredicateWithContentMode:(signed __int16)mode
{
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode == 1)
      {
        self = [MEMORY[0x277CD99E0] predicateForAllTopWallpaperSuggestions];
      }
    }

    else
    {
      self = [MEMORY[0x277CD99E0] predicateForAllShuffleWallpaperSuggestions];
    }
  }

  else
  {
    if (mode == 2)
    {
      v3 = MEMORY[0x277CCAC30];
      v4 = 680;
LABEL_10:
      self = [v3 predicateWithFormat:@"%K = %d", @"subtype", v4];
      goto LABEL_13;
    }

    if (mode != 3)
    {
      if (mode != 4)
      {
        goto LABEL_13;
      }

      v3 = MEMORY[0x277CCAC30];
      v4 = 901;
      goto LABEL_10;
    }

    self = [MEMORY[0x277CD99E0] predicateForAllAmbientSuggestions];
  }

LABEL_13:

  return self;
}

+ (unsigned)suggestionProfileForContentMode:(signed __int16)mode
{
  if (mode == 3)
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

+ (id)suggestionOptionsWithDictionary:(id)dictionary contentMode:(signed __int16)mode isGraphReady:(BOOL)ready loggingConnection:(id)connection
{
  modeCopy = mode;
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  connectionCopy = connection;
  v12 = 0;
  if (modeCopy <= 1)
  {
    if (!modeCopy)
    {
      v28 = MEMORY[0x277CBEB58];
      allShuffleWallpaperSuggestionSubtypes = [MEMORY[0x277CD99E0] allShuffleWallpaperSuggestionSubtypes];
      v13 = [v28 setWithSet:allShuffleWallpaperSuggestionSubtypes];

      v12 = 200;
      if (ready)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v13 = 0;
    if (modeCopy == 1)
    {
      v14 = MEMORY[0x277CBEB58];
      allTopWallpaperSuggestionSubtypes = [MEMORY[0x277CD99E0] allTopWallpaperSuggestionSubtypes];
      v13 = [v14 setWithSet:allTopWallpaperSuggestionSubtypes];

LABEL_9:
      v12 = 25;
      if (ready)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (modeCopy == 2)
    {
      v13 = [MEMORY[0x277CBEB58] setWithObject:&unk_2844CC918];
      v12 = 100;
      if (ready)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (modeCopy == 3)
    {
      v16 = MEMORY[0x277CBEB58];
      allAmbientSuggestionSubtypes = [MEMORY[0x277CD99E0] allAmbientSuggestionSubtypes];
      v13 = [v16 setWithSet:allAmbientSuggestionSubtypes];

      v12 = 400;
    }

    else
    {
      v13 = 0;
      if (modeCopy == 4)
      {
        v13 = [MEMORY[0x277CBEB58] setWithObject:&unk_2844CC930];
        goto LABEL_9;
      }
    }
  }

  if (ready)
  {
    goto LABEL_29;
  }

LABEL_15:
  v30 = v12;
  v31 = connectionCopy;
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
        if ([self isGraphDependentSubtype:{objc_msgSend(v24, "integerValue", v30)}])
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  v12 = v30;
  connectionCopy = v31;
  if ([v18 count])
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = v18;
      v38 = 1024;
      v39 = modeCopy;
      _os_log_impl(&dword_22FA28000, v31, OS_LOG_TYPE_DEFAULT, "[PHAWallpaperSuggestionGenerationWeeklyTask] Graph is not ready; removing suggestions for %@ for content mode %hd", buf, 0x12u);
    }

    [v19 minusSet:{v18, v30}];
  }

LABEL_29:
  v25 = [MEMORY[0x277D3BBF0] suggestionOptionsWithDictionary:dictionaryCopy subtypes:{v13, v30}];
  v26 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D3B0A0]];

  if (!v26)
  {
    [v25 setMaximumNumberOfSuggestions:v12];
  }

  return v25;
}

+ (BOOL)isGraphDependentSubtype:(unsigned __int16)subtype
{
  result = 1;
  if (subtype > 679)
  {
    if (subtype <= 909)
    {
      if ((subtype - 680) <= 0x17 && ((1 << (subtype + 88)) & 0xE0001F) != 0)
      {
        return 0;
      }

      v4 = subtype - 801;
    }

    else
    {
      if (subtype > 1200)
      {
        if ((subtype - 1401) >= 3 && (subtype - 1501) >= 2 && (subtype - 1201) > 1)
        {
          return result;
        }

        return 0;
      }

      if ((subtype - 910) < 8)
      {
        return 0;
      }

      v4 = subtype - 1101;
    }

LABEL_25:
    if (v4 >= 2)
    {
      return result;
    }

    return 0;
  }

  if (subtype <= 300)
  {
    if ((subtype - 201) < 4 || (subtype - 101) < 3 || !subtype)
    {
      return 0;
    }
  }

  else
  {
    if (subtype > 500)
    {
      if ((subtype - 601) <= 0x36 && ((1 << (subtype - 89)) & 0x60000000000019) != 0)
      {
        return 0;
      }

      v4 = subtype - 501;
      goto LABEL_25;
    }

    if ((subtype - 301) < 6 || subtype == 401)
    {
      return 0;
    }
  }

  return result;
}

+ (id)generateSuggestionsWithOptionsDictionary:(id)dictionary contentMode:(signed __int16)mode suggestionController:(id)controller progressReporter:(id)reporter shouldReload:(BOOL *)reload
{
  modeCopy = mode;
  dictionaryCopy = dictionary;
  controllerCopy = controller;
  reporterCopy = reporter;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  graphManager = [controllerCopy graphManager];
  v15 = [self subtypePredicateWithContentMode:modeCopy];
  photoLibrary = [graphManager photoLibrary];
  v25 = [self suggestionsExistInPhotoLibrary:photoLibrary subtypePredicate:v15];

  isReady = [graphManager isReady];
  workingContextForSuggestions = [graphManager workingContextForSuggestions];
  loggingConnection = [workingContextForSuggestions loggingConnection];

  v20 = [self suggestionOptionsWithDictionary:dictionaryCopy contentMode:modeCopy isGraphReady:isReady loggingConnection:loggingConnection];
  v21 = [self suggestionProfileForContentMode:modeCopy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __145__PHAWallpaperSuggestionGenerationUtils_generateSuggestionsWithOptionsDictionary_contentMode_suggestionController_progressReporter_shouldReload___block_invoke;
  v27[3] = &unk_2788B2178;
  v29 = v30;
  v22 = reporterCopy;
  v28 = v22;
  v23 = [controllerCopy generateSuggestionsWithProfile:v21 options:v20 progress:v27];
  if (reload)
  {
    *reload = v25 ^ 1;
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