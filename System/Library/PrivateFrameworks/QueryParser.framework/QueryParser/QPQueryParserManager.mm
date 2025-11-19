@interface QPQueryParserManager
+ (QPQueryParserManager)defaultManager;
+ (id)memoryCreationManager;
+ (id)notesManager;
+ (id)photosParserManager;
+ (id)remindersParserManager;
+ (id)spotlightManager;
+ (id)visualGenerationManager;
- (BOOL)available;
- (QPQueryParserManager)initWithOptions:(id)a3;
- (id)dateFromParseAttributes:(id)a3;
- (id)embeddingForString:(id)a3 extendedContextLength:(BOOL)a4;
- (id)locale;
- (id)resourcesInfo;
- (void)cooldown;
- (void)dealloc;
- (void)enumerateDateParseResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5;
- (void)enumerateParseResultsForStartDateString:(id)a3 startDateContext:(id)a4 endDateString:(id)a5 endDateContext:(id)a6 options:(id)a7 withBlock:(id)a8;
- (void)enumerateParseResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5;
- (void)enumerateSpotlightResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5;
- (void)preheat;
- (void)reset;
- (void)setOptions:(id)a3;
- (void)updateWithOptions:(id)a3;
@end

@implementation QPQueryParserManager

+ (QPQueryParserManager)defaultManager
{
  if (+[QPQueryParserManager defaultManager]::defaultOnceToken != -1)
  {
    +[QPQueryParserManager defaultManager];
  }

  v3 = +[QPQueryParserManager defaultManager]::__DefaultManager;

  return v3;
}

void __38__QPQueryParserManager_defaultManager__block_invoke()
{
  v2 = QPQueryParserCopyDefaultOptionsForContext(@"com.apple.QueryParser");
  v0 = [[QPQueryParserManager alloc] initWithOptions:v2];
  v1 = +[QPQueryParserManager defaultManager]::__DefaultManager;
  +[QPQueryParserManager defaultManager]::__DefaultManager = v0;
}

+ (id)spotlightManager
{
  if (+[QPQueryParserManager spotlightManager]::spotlightOnceToken != -1)
  {
    +[QPQueryParserManager spotlightManager];
  }

  v3 = +[QPQueryParserManager spotlightManager]::__SpotlightManager;

  return v3;
}

void __40__QPQueryParserManager_spotlightManager__block_invoke()
{
  v2 = QPQueryParserCopyDefaultOptionsForContext(kQPParseAttributeSpotlightContextIdentifier);
  v0 = [[QPQueryParserManager alloc] initWithOptions:v2];
  v1 = +[QPQueryParserManager spotlightManager]::__SpotlightManager;
  +[QPQueryParserManager spotlightManager]::__SpotlightManager = v0;
}

+ (id)remindersParserManager
{
  if (+[QPQueryParserManager remindersParserManager]::reminderParserOnceToken != -1)
  {
    +[QPQueryParserManager remindersParserManager];
  }

  v3 = +[QPQueryParserManager remindersParserManager]::__RemindersParserManager;

  return v3;
}

void __46__QPQueryParserManager_remindersParserManager__block_invoke()
{
  v2 = QPQueryParserCopyDefaultOptionsForContext(kQPParseAttributeRemindersParserContextIdentifier);
  v0 = [[QPQueryParserManager alloc] initWithOptions:v2];
  v1 = +[QPQueryParserManager remindersParserManager]::__RemindersParserManager;
  +[QPQueryParserManager remindersParserManager]::__RemindersParserManager = v0;
}

+ (id)photosParserManager
{
  if (+[QPQueryParserManager photosParserManager]::photosOnceToken != -1)
  {
    +[QPQueryParserManager photosParserManager];
  }

  v3 = +[QPQueryParserManager photosParserManager]::__PhotosParserManager;

  return v3;
}

void __43__QPQueryParserManager_photosParserManager__block_invoke()
{
  v2 = QPQueryParserCopyDefaultOptionsForContext(@"com.apple.Photos.Parser");
  v0 = [[QPQueryParserManager alloc] initWithOptions:v2];
  v1 = +[QPQueryParserManager photosParserManager]::__PhotosParserManager;
  +[QPQueryParserManager photosParserManager]::__PhotosParserManager = v0;
}

+ (id)memoryCreationManager
{
  if (+[QPQueryParserManager memoryCreationManager]::memoryCreationOnceToken != -1)
  {
    +[QPQueryParserManager memoryCreationManager];
  }

  v3 = +[QPQueryParserManager memoryCreationManager]::__MemoryCreationManager;

  return v3;
}

void __45__QPQueryParserManager_memoryCreationManager__block_invoke()
{
  if (queryParserManagerLogger(void)::token != -1)
  {
    __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
  }

  v0 = queryParserManagerLogger(void)::log;
  if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C6584000, v0, OS_LOG_TYPE_DEFAULT, "QueryParserManager: initializing a memoryCreationManager", v4, 2u);
  }

  v1 = QPQueryParserCopyDefaultOptionsForContext(kQPParseAttributeMemoryCreationContextIdentifier);
  v2 = [[QPQueryParserManager alloc] initWithOptions:v1];
  v3 = +[QPQueryParserManager memoryCreationManager]::__MemoryCreationManager;
  +[QPQueryParserManager memoryCreationManager]::__MemoryCreationManager = v2;
}

+ (id)notesManager
{
  if (+[QPQueryParserManager notesManager]::notesOnceToken != -1)
  {
    +[QPQueryParserManager notesManager];
  }

  v3 = +[QPQueryParserManager notesManager]::__NotesManager;

  return v3;
}

void __36__QPQueryParserManager_notesManager__block_invoke()
{
  v2 = QPQueryParserCopyDefaultOptionsForContext(kQPParseAttributeNotesContextIdentifier);
  v0 = [[QPQueryParserManager alloc] initWithOptions:v2];
  v1 = +[QPQueryParserManager notesManager]::__NotesManager;
  +[QPQueryParserManager notesManager]::__NotesManager = v0;
}

+ (id)visualGenerationManager
{
  if (+[QPQueryParserManager visualGenerationManager]::visualGenerationOnceToken != -1)
  {
    +[QPQueryParserManager visualGenerationManager];
  }

  v3 = +[QPQueryParserManager visualGenerationManager]::__VisualGenerationManager;

  return v3;
}

void __47__QPQueryParserManager_visualGenerationManager__block_invoke()
{
  if (queryParserManagerLogger(void)::token != -1)
  {
    __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
  }

  v0 = queryParserManagerLogger(void)::log;
  if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C6584000, v0, OS_LOG_TYPE_DEFAULT, "QueryParserManager: initializing a visualGenerationManager", v4, 2u);
  }

  v1 = QPQueryParserCopyDefaultOptionsForContext(kQPParseAttributeVisualGenerationContextIdentifier);
  v2 = [[QPQueryParserManager alloc] initWithOptions:v1];
  v3 = +[QPQueryParserManager visualGenerationManager]::__VisualGenerationManager;
  +[QPQueryParserManager visualGenerationManager]::__VisualGenerationManager = v2;
}

- (QPQueryParserManager)initWithOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = QPQueryParserManager;
  v5 = [(QPQueryParserManager *)&v8 init];
  if (v5)
  {
    v5->_modelIsLoaded = 0;
    QPQueryParserCreate();
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  queue = self->_queue;
  if (!queue || (dispatch_get_current_queue(), v4 = objc_claimAutoreleasedReturnValue(), v4, queue == v4))
  {
    parser = self->_parser;
    if (parser)
    {
      CFRelease(parser);
    }
  }

  else
  {
    v5 = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__QPQueryParserManager_dealloc__block_invoke;
    block[3] = &unk_1E8267580;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  v7.receiver = self;
  v7.super_class = QPQueryParserManager;
  [(QPQueryParserManager *)&v7 dealloc];
}

void __31__QPQueryParserManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)setOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__QPQueryParserManager_setOptions___block_invoke;
    v7[3] = &unk_1E82675A8;
    v7[4] = self;
    v8 = v5;
    dispatch_sync(queue, v7);
  }
}

- (id)locale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__QPQueryParserManager_locale__block_invoke;
  v5[3] = &unk_1E82675D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__QPQueryParserManager_locale__block_invoke(uint64_t a1)
{
  Locale = QPQueryParserGetLocale(*(*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = Locale;
}

- (BOOL)available
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_modelIsLoaded)
  {
    v4 = self->_currentLocale;
    v5 = [(NSLocale *)v4 languageCode];
    if (v5 && ([objc_opt_class() availableLanguages], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, (v7 & 1) != 0))
    {
      if (QPQueryParserAvailableForLocale(v4))
      {
        v2 = 1;
        self->_modelIsLoaded = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (QPQueryParserIsAvailable(self->_parser) && QPQueryParserIsParsingAvailable(self->_parser))
      {
        v2 = 1;
        goto LABEL_13;
      }

      if (queryParserManagerLogger(void)::token != -1)
      {
        __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
      }

      v8 = queryParserManagerLogger(void)::log;
      if (!os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_INFO))
      {
LABEL_12:
        v2 = 0;
        goto LABEL_13;
      }

      v12 = 138412290;
      v13 = v5;
      v9 = "QueryParserManager: resources unavailable for %@";
    }

    else
    {
      if (queryParserManagerLogger(void)::token != -1)
      {
        __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
      }

      v8 = queryParserManagerLogger(void)::log;
      if (!os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v12 = 138412290;
      v13 = v5;
      v9 = "QueryParserManager: unknown language %@";
    }

    _os_log_impl(&dword_1C6584000, v8, OS_LOG_TYPE_INFO, v9, &v12, 0xCu);
    goto LABEL_12;
  }

  v2 = 1;
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)updateWithOptions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"locale"];
  v6 = [v4 objectForKeyedSubscript:kQPQueryParserOptionPreferredLanguagesKey];
  if (v5)
  {
    v7 = QPQueryParserGetLocale(self->_parser);
    originalLocale = self->_originalLocale;
    self->_originalLocale = v7;

    v9 = QPQueryParserGetPreferredLanguages(self->_parser);
    originalPreferredLocales = self->_originalPreferredLocales;
    self->_originalPreferredLocales = v9;

    if (queryParserManagerLogger(void)::token != -1)
    {
      __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
    }

    v11 = queryParserManagerLogger(void)::log;
    if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1C6584000, v11, OS_LOG_TYPE_DEFAULT, "QueryParserManager: updating locale %@", &v25, 0xCu);
    }

    v12 = [(NSArray *)v6 count];
    v13 = v6;
    if (!v12)
    {
      v13 = self->_originalPreferredLocales;
    }

    v14 = [(NSArray *)v13 mutableCopy];
    v15 = normalizedLanguageForLocale(v5);
    if (v15 && ([v14 containsObject:v15] & 1) == 0)
    {
      [v14 addObject:v15];
    }

    QPQueryParserSetLocale(self->_parser, v5, v14);
    objc_storeStrong(&self->_currentLocale, v5);
    self->_modelIsLoaded = 0;
  }

  v16 = [v4 objectForKeyedSubscript:kQPQueryParserOptionCustomResourceDirectoryKey];
  if (v16)
  {
    v17 = QPQueryParserGetCustomResourceDirectory(self->_parser);
    originalCustomResourceDirectory = self->_originalCustomResourceDirectory;
    self->_originalCustomResourceDirectory = v17;

    if (queryParserManagerLogger(void)::token != -1)
    {
      [QPQueryParserManager initWithOptions:];
    }

    v19 = queryParserManagerLogger(void)::log;
    if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v16;
      _os_log_impl(&dword_1C6584000, v19, OS_LOG_TYPE_DEFAULT, "QueryParserManager: updating resource directory %@", &v25, 0xCu);
    }

    QPQueryParserSetCustomResourceDirectory(self->_parser, v16);
  }

  v20 = [v4 objectForKeyedSubscript:@"referenceDate"];
  if (v20)
  {
    v21 = QPQueryParserGetReferenceDate(self->_parser);
    originalDate = self->_originalDate;
    self->_originalDate = v21;

    if (queryParserManagerLogger(void)::token != -1)
    {
      [QPQueryParserManager initWithOptions:];
    }

    v23 = queryParserManagerLogger(void)::log;
    if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_1C6584000, v23, OS_LOG_TYPE_DEFAULT, "QueryParserManager: updating date %@", &v25, 0xCu);
    }

    QPQueryParserSetReferenceDate(self->_parser, v20);
  }

  QPQueryParserSetOptions(self->_parser, v4);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  originalLocale = self->_originalLocale;
  if (originalLocale)
  {
    objc_storeStrong(&self->_currentLocale, originalLocale);
    self->_modelIsLoaded = 0;
    QPQueryParserSetLocale(self->_parser, self->_originalLocale, self->_originalPreferredLocales);
    QPQueryParserSetUseSystemLocale(self->_parser, *MEMORY[0x1E695E4D0]);
    v4 = self->_originalLocale;
    self->_originalLocale = 0;

    self->_modelIsLoaded = [(QPQueryParserManager *)self available];
  }

  originalDate = self->_originalDate;
  if (originalDate)
  {
    QPQueryParserSetReferenceDate(self->_parser, originalDate);
    v6 = self->_originalDate;
    self->_originalDate = 0;
  }

  originalCustomResourceDirectory = self->_originalCustomResourceDirectory;
  if (originalCustomResourceDirectory)
  {
    QPQueryParserSetCustomResourceDirectory(self->_parser, originalCustomResourceDirectory);
    v8 = self->_originalCustomResourceDirectory;
    self->_originalCustomResourceDirectory = 0;
  }
}

- (id)dateFromParseAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kQPDateDisplay"];
    v6 = [v3 objectForKeyedSubscript:@"kQPDateType"];
    v7 = [v3 objectForKeyedSubscript:@"kQPDateModifier"];
    v8 = [v3 objectForKeyedSubscript:@"kQPDateComponents"];
    v9 = [v3 objectForKeyedSubscript:@"kQPStartDateComponents"];
    v10 = [v3 objectForKeyedSubscript:@"kQPEndDateComponents"];
    v11 = [v3 objectForKeyedSubscript:@"kQPFrequencyDateComponents"];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"kQPDateDisplay"];
    }

    if (v6)
    {
      [v4 setObject:v6 forKey:@"kQPDateType"];
    }

    if (v7)
    {
      [v4 setObject:v7 forKey:@"kQPDateModifier"];
    }

    if (v8)
    {
      v12 = dateComponentsForDate(v8);
      [v4 setObject:v12 forKey:@"kQPDateComponents"];
    }

    if (v9)
    {
      v13 = dateComponentsForDate(v9);
      [v4 setObject:v13 forKey:@"kQPStartDateComponents"];
    }

    if (v10)
    {
      v14 = dateComponentsForDate(v10);
      [v4 setObject:v14 forKey:@"kQPEndDateComponents"];
    }

    if (v11)
    {
      v15 = dateComponentsForDate(v11);
      [v4 setObject:v15 forKey:@"kQPFrequencyDateComponents"];
    }
  }

  return v4;
}

- (void)enumerateDateParseResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  dateParser = self->_dateParser;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__QPQueryParserManager_enumerateDateParseResultsForString_options_withBlock___block_invoke;
  v13[3] = &unk_1E82675F8;
  v13[4] = self;
  v13[5] = &v14;
  [(QPDataDetectorsParser *)dateParser enumerateDatesInString:v8 options:v9 withBlock:v13];
  v12 = 0;
  v10[2](v10, v15[5], MEMORY[0x1E695E0F8], &v12);
  _Block_object_dispose(&v14, 8);
}

void __77__QPQueryParserManager_enumerateDateParseResultsForString_options_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) dateFromParseAttributes:v7];
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v12 = @"kQPDate";
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 setAttributes:v10 range:{a3, a4}];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)enumerateParseResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && self->_parser && [v8 length])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__13;
    v40 = __Block_byref_object_dispose__13;
    v41 = objc_opt_new();
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__13;
    v34 = __Block_byref_object_dispose__13;
    v35 = objc_opt_new();
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke;
    block[3] = &unk_1E8267648;
    v19 = v9;
    v20 = self;
    v23 = &v26;
    v21 = v8;
    v12 = v10;
    v22 = v12;
    v24 = &v36;
    v25 = &v30;
    dispatch_sync(queue, block);
    if (*(v27 + 24) == 1)
    {
      v13 = 0;
      v17 = 0;
      do
      {
        if (v13 >= [v37[5] count])
        {
          break;
        }

        v14 = [v37[5] objectAtIndexedSubscript:v13];
        v15 = [v31[5] objectAtIndexedSubscript:v13];
        (*(v12 + 2))(v12, v14, v15, &v17);
        v16 = v17;

        ++v13;
      }

      while ((v16 & 1) == 0);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }
}

void __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"forTesting"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    [*(a1 + 40) updateWithOptions:*(a1 + 32)];
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) available];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    if (queryParserManagerLogger(void)::token != -1)
    {
      __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
    }

    v4 = queryParserManagerLogger(void)::log;
    if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_cold_4(v4);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(v6 + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_161;
    v10[3] = &unk_1E8267620;
    v10[4] = v6;
    v11 = *(a1 + 72);
    QPQueryParserEnumerateParses(v7, 0, v5, v10);
    if (v3)
    {
LABEL_9:
      [*(a1 + 40) reset];
    }
  }

  else
  {
    if (queryParserManagerLogger(void)::token != -1)
    {
      __45__QPQueryParserManager_memoryCreationManager__block_invoke_cold_1();
    }

    v8 = queryParserManagerLogger(void)::log;
    if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_DEBUG))
    {
      __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_cold_2(v8);
    }

    v9 = QPQueryParserCopyOptions(*(*(a1 + 40) + 8));
    [*(a1 + 40) enumerateDateParseResultsForString:*(a1 + 48) options:v9 withBlock:*(a1 + 56)];

    if (v3)
    {
      goto LABEL_9;
    }
  }
}

void __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_161(void *a1, void *a2)
{
  v3 = [a2 objectForKey:kQPParseResultAttributedParseKey];
  v4 = [v3 length];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  v6 = [v3 string];
  v13 = [v5 initWithString:v6];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_2;
  v7[3] = &unk_1E82675F8;
  v7[4] = a1[4];
  v7[5] = &v8;
  [v3 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  if ([v9[5] length])
  {
    [*(*(a1[5] + 8) + 40) addObject:v9[5]];
    [*(*(a1[6] + 8) + 40) addObject:MEMORY[0x1E695E0F8]];
  }

  _Block_object_dispose(&v8, 8);
}

void __73__QPQueryParserManager_enumerateParseResultsForString_options_withBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"kQPDate"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v7 objectForKeyedSubscript:@"kQPDate"];
    v11 = [v9 dateFromParseAttributes:v10];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v15 = @"kQPDate";
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v12 setAttributes:v13 range:{a3, a4}];
  }

  else if ([v7 count])
  {
    [*(*(*(a1 + 40) + 8) + 40) setAttributes:v7 range:{a3, a4}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)enumerateSpotlightResultsForString:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && self->_parser && [v8 length])
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v19 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__QPQueryParserManager_enumerateSpotlightResultsForString_options_withBlock___block_invoke;
    block[3] = &unk_1E8267698;
    v13 = v9;
    v14 = self;
    v17 = v18;
    v15 = v8;
    v16 = v10;
    dispatch_sync(queue, block);

    _Block_object_dispose(v18, 8);
  }
}

void __77__QPQueryParserManager_enumerateSpotlightResultsForString_options_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"forTesting"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    [*(a1 + 40) updateWithOptions:*(a1 + 32)];
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) available];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 40) + 8);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __77__QPQueryParserManager_enumerateSpotlightResultsForString_options_withBlock___block_invoke_2;
    v11 = &unk_1E8267670;
    v12 = *(a1 + 56);
    v13 = v14;
    QPQueryParserEnumerateParses(v5, 0, v4, &v8);

    _Block_object_dispose(v14, 8);
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:{@"forTesting", v8, v9, v10, v11}];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [*(a1 + 40) reset];
  }
}

uint64_t __77__QPQueryParserManager_enumerateSpotlightResultsForString_options_withBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateParseResultsForStartDateString:(id)a3 startDateContext:(id)a4 endDateString:(id)a5 endDateContext:(id)a6 options:(id)a7 withBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14)
  {
    if (self->_parser)
    {
      v20 = [v14 length];
      if (v16)
      {
        if (v20 && [v16 length])
        {
          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = __Block_byref_object_copy__13;
          v52 = __Block_byref_object_dispose__13;
          v53 = objc_opt_new();
          v42 = 0;
          v43 = &v42;
          v44 = 0x3032000000;
          v45 = __Block_byref_object_copy__13;
          v46 = __Block_byref_object_dispose__13;
          v47 = objc_opt_new();
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v41 = 0;
          queue = self->_queue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke;
          block[3] = &unk_1E82676C0;
          v29 = v18;
          v30 = self;
          v35 = &v38;
          v31 = v14;
          v32 = v15;
          v33 = v16;
          v34 = v17;
          v36 = &v48;
          v37 = &v42;
          dispatch_sync(queue, block);
          if (*(v39 + 24) == 1)
          {
            v26 = v17;
            v22 = 0;
            v27 = 0;
            do
            {
              if (v22 >= [v49[5] count])
              {
                break;
              }

              v23 = [v49[5] objectAtIndexedSubscript:v22];
              v24 = [v43[5] objectAtIndexedSubscript:v22];
              v19[2](v19, v23, v24, &v27);
              v25 = v27;

              ++v22;
            }

            while ((v25 & 1) == 0);
            v17 = v26;
          }

          _Block_object_dispose(&v38, 8);
          _Block_object_dispose(&v42, 8);

          _Block_object_dispose(&v48, 8);
        }
      }
    }
  }
}

void __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"forTesting"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    [*(a1 + 40) updateWithOptions:*(a1 + 32)];
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) available];
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v5 + 8);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke_2;
    v13[3] = &unk_1E8267620;
    v13[4] = v5;
    v14 = *(a1 + 88);
    QPQueryParserEnumerateParsesForStartAndEndDates(v6, v4, v7, v8, v9, v10, v13);
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"forTesting"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    [*(a1 + 40) reset];
  }
}

void __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = [a2 objectForKey:kQPParseResultAttributedParseKey];
  v4 = [v3 length];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  v6 = [v3 string];
  v13 = [v5 initWithString:v6];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke_3;
  v7[3] = &unk_1E82675F8;
  v7[4] = a1[4];
  v7[5] = &v8;
  [v3 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  if ([v9[5] length])
  {
    [*(*(a1[5] + 8) + 40) addObject:v9[5]];
    [*(*(a1[6] + 8) + 40) addObject:MEMORY[0x1E695E0F8]];
  }

  _Block_object_dispose(&v8, 8);
}

void __128__QPQueryParserManager_enumerateParseResultsForStartDateString_startDateContext_endDateString_endDateContext_options_withBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"kQPDate"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v7 objectForKeyedSubscript:@"kQPDate"];
    v11 = [v9 dateFromParseAttributes:v10];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v15 = @"kQPDate";
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v12 setAttributes:v13 range:{a3, a4}];
  }

  else if ([v7 count])
  {
    [*(*(*(a1 + 40) + 8) + 40) setAttributes:v7 range:{a3, a4}];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)embeddingForString:(id)a3 extendedContextLength:(BOOL)a4
{
  keys[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  valuePtr = a4;
  if (![(__CFString *)v6 length])
  {
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCharType, &valuePtr);
  values = v8;
  keys[0] = @"extendedContext";
  v9 = CFDictionaryCreate(v7, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = QPQueryParserCopyInputAttributes(self->_parser, v6, v9);
  CFRelease(v8);
  CFRelease(v9);
  if (v10)
  {
    v11 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"embeddingResultKey"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = MEMORY[0x1E696ACD0];
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v23 = 0;
      v17 = [v12 unarchivedObjectOfClasses:v16 fromData:v11 error:&v23];
      v18 = v23;

      if (v18)
      {
        if (queryParserManagerLogger(void)::token != -1)
        {
          [QPQueryParserManager initWithOptions:];
        }

        v19 = queryParserManagerLogger(void)::log;
        if (os_log_type_enabled(queryParserManagerLogger(void)::log, OS_LOG_TYPE_ERROR))
        {
          [QPQueryParserManager embeddingForString:v18 extendedContextLength:v19];
        }

        v20 = 0;
      }

      else
      {
        v20 = [v17 objectForKeyedSubscript:@"_kMDItemPrimaryTextEmbedding"];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
LABEL_11:
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)preheat
{
  parser = self->_parser;
  if (parser)
  {
    QPQueryParserPreheat(parser);
  }
}

- (void)cooldown
{
  parser = self->_parser;
  if (parser)
  {
    QPQueryParserCooldown(parser);
  }
}

- (id)resourcesInfo
{
  parser = self->_parser;
  if (parser)
  {
    parser = QPQueryParserCopyResourcesInfo(parser);
    v2 = vars8;
  }

  return parser;
}

- (void)embeddingForString:(uint64_t)a1 extendedContextLength:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6584000, a2, OS_LOG_TYPE_ERROR, "failed to deserialize the embedding data dictionary with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end