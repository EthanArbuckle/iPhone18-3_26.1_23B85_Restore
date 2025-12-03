@interface SCROBrailleTranslationManager
+ (SCROBrailleTranslationManager)sharedManager;
+ (id)inputManager;
+ (id)serviceManager;
- (BOOL)primaryTableSupportsRoundTripping;
- (NSString)defaultLanguage;
- (SCROBrailleTranslationManager)init;
- (id)printBrailleForText:(id)text language:(id)language mode:(unint64_t)mode textPositionsRange:(_NSRange)range locations:(id *)locations textFormattingRanges:(id)ranges;
- (id)serviceIdentifier;
- (id)textForPrintBraille:(id)braille language:(id)language mode:(unint64_t)mode locations:(id *)locations;
- (void)loadTranslatorWithServiceIdentifier:(id)identifier forUnitTesting:(BOOL)testing input:(BOOL)input;
- (void)setDefaultLanguage:(id)language;
@end

@implementation SCROBrailleTranslationManager

+ (SCROBrailleTranslationManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SCROBrailleTranslationManager sharedManager];
  }

  v3 = _sharedManager;

  return v3;
}

uint64_t __46__SCROBrailleTranslationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleTranslationManager);
  _sharedManager = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (id)inputManager
{
  if (inputManager_onceToken != -1)
  {
    +[SCROBrailleTranslationManager inputManager];
  }

  v3 = inputManager__inputManager;

  return v3;
}

uint64_t __45__SCROBrailleTranslationManager_inputManager__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleTranslationManager);
  inputManager__inputManager = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (id)serviceManager
{
  if (serviceManager_onceToken != -1)
  {
    +[SCROBrailleTranslationManager serviceManager];
  }

  v3 = serviceManager__serviceManager;

  return v3;
}

uint64_t __47__SCROBrailleTranslationManager_serviceManager__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleTranslationManager);
  serviceManager__serviceManager = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (SCROBrailleTranslationManager)init
{
  v8.receiver = self;
  v8.super_class = SCROBrailleTranslationManager;
  v2 = [(SCROBrailleTranslationManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.ScreenReaderOutput.brailleTranslationService.clientQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    translationService = v2->_translationService;
    v2->_translationService = 0;
  }

  return v2;
}

void __75__SCROBrailleTranslationManager_loadTranslatorWithServiceIdentifier_input___block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  loadTranslatorWithServiceIdentifier_input__isXcTest = [v0 isEqualToString:@"xctest"];
}

- (void)loadTranslatorWithServiceIdentifier:(id)identifier forUnitTesting:(BOOL)testing input:(BOOL)input
{
  identifierCopy = identifier;
  queue = [(SCROBrailleTranslationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SCROBrailleTranslationManager_loadTranslatorWithServiceIdentifier_forUnitTesting_input___block_invoke;
  block[3] = &unk_279B74688;
  block[4] = self;
  v12 = identifierCopy;
  testingCopy = testing;
  inputCopy = input;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __90__SCROBrailleTranslationManager_loadTranslatorWithServiceIdentifier_forUnitTesting_input___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) translationService];
  v3 = [v2 serviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if ((v4 & 1) == 0)
  {
    v5 = _SCROD_BRAILLE_LOG();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = "";
      if (*(a1 + 48))
      {
        v7 = "(UNIT TESTING)";
      }

      v10 = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Loading service with identifier: %@ %s", &v10, 0x16u);
    }

    v8 = [MEMORY[0x277CF3370] serviceForIdentifier:*(a1 + 40) input:*(a1 + 49) loopback:*(a1 + 48)];
    [*(a1 + 32) setTranslationService:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)defaultLanguage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  queue = [(SCROBrailleTranslationManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SCROBrailleTranslationManager_defaultLanguage__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDefaultLanguage:(id)language
{
  languageCopy = language;
  queue = [(SCROBrailleTranslationManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SCROBrailleTranslationManager_setDefaultLanguage___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = languageCopy;
  v6 = languageCopy;
  dispatch_async(queue, v7);
}

void __52__SCROBrailleTranslationManager_setDefaultLanguage___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isEqual:*(a1 + 40)] & 1) == 0)
  {
    v2 = objc_alloc(MEMORY[0x277CF3340]);
    v3 = [*(a1 + 32) translationService];
    v4 = [v3 serviceIdentifier];
    v5 = [v2 initWithServiceIdentifier:v4 tableIdentifier:*(a1 + 40)];

    *(*(a1 + 32) + 9) = [v5 supportsTranslationMode8Dot];
    *(*(a1 + 32) + 8) = [v5 supportsTranslationModeContracted];
    v6 = _SCROD_BRAILLE_LOG();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __52__SCROBrailleTranslationManager_setDefaultLanguage___block_invoke_cold_1(v5, v6);
    }
  }

  v7 = [*(a1 + 40) copy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;
}

- (id)serviceIdentifier
{
  translationService = [(SCROBrailleTranslationManager *)self translationService];
  serviceIdentifier = [translationService serviceIdentifier];

  return serviceIdentifier;
}

- (id)printBrailleForText:(id)text language:(id)language mode:(unint64_t)mode textPositionsRange:(_NSRange)range locations:(id *)locations textFormattingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  textCopy = text;
  languageCopy = language;
  rangesCopy = ranges;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__1;
  v48 = __Block_byref_object_dispose__1;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  queue = [(SCROBrailleTranslationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke;
  block[3] = &unk_279B746D8;
  v17 = languageCopy;
  v28 = v17;
  selfCopy = self;
  v18 = rangesCopy;
  v30 = v18;
  modeCopy = mode;
  v36 = location;
  v37 = length;
  v19 = textCopy;
  v31 = v19;
  v33 = &v44;
  v34 = &v38;
  v20 = v15;
  v32 = v20;
  dispatch_async(queue, block);

  v21 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v20, v21))
  {
    v22 = _SCROD_BRAILLE_LOG();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [SCROBrailleTranslationManager printBrailleForText:language:mode:textPositionsRange:locations:textFormattingRanges:];
    }
  }

  if (locations)
  {
    *locations = v39[5];
  }

  v23 = v45[5];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v23;
}

void __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(*(a1 + 40) + 16);
  }

  v4 = v2;
  v5 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_cold_1(a1, v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CF3368]) initWithLanguage:v4 mode:*(a1 + 88) partial:0 useTechnicalTable:objc_msgSend(*(a1 + 40) textPositionsRange:"alwaysUsesNemethCodeForTechnicalText") textFormattingRanges:{*(a1 + 96), *(a1 + 104), *(a1 + 48)}];
  v7 = [*(a1 + 40) translationService];

  v8 = _SCROD_BRAILLE_LOG();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_cold_2(a1);
    }

    v10 = [*(a1 + 40) translationService];
    v11 = *(a1 + 56);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_35;
    v16[3] = &unk_279B746B0;
    v12 = v11;
    v13 = *(a1 + 80);
    v17 = v12;
    v19 = v13;
    v15 = *(a1 + 64);
    v14 = v15;
    v18 = v15;
    [v10 brailleForText:v12 parameters:v6 withReply:v16];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_cold_3();
    }

    dispatch_group_leave(*(a1 + 64));
  }
}

void __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = 138740483;
    v17 = v15;
    v18 = 2117;
    v19 = v5;
    v20 = 2117;
    v21 = v6;
    _os_log_debug_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEBUG, "Translated text:'%{sensitive}@' -> braille:'%{sensitive}@' locations:%{sensitive}@", &v16, 0x20u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

- (id)textForPrintBraille:(id)braille language:(id)language mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  languageCopy = language;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  queue = [(SCROBrailleTranslationManager *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke;
  v21[3] = &unk_279B74700;
  v14 = languageCopy;
  v22 = v14;
  selfCopy = self;
  locationsCopy = locations;
  v15 = brailleCopy;
  v24 = v15;
  v26 = &v36;
  v27 = &v30;
  modeCopy = mode;
  v16 = v12;
  v25 = v16;
  dispatch_async(queue, v21);

  v17 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v16, v17))
  {
    v18 = _SCROD_BRAILLE_LOG();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SCROBrailleTranslationManager textForPrintBraille:language:mode:locations:];
    }
  }

  if (locations)
  {
    *locations = v31[5];
  }

  v19 = v37[5];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v19;
}

void __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(*(a1 + 40) + 16);
  }

  v3 = v2;
  if (*(a1 + 80))
  {
    v4 = [*(a1 + 48) length];
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [objc_alloc(MEMORY[0x277CF3368]) initWithLanguage:v3 mode:*(a1 + 88) partial:0 useTechnicalTable:objc_msgSend(*(a1 + 40) textPositionsRange:"alwaysUsesNemethCodeForTechnicalText") textFormattingRanges:{v5, v4, 0}];
  v7 = [*(a1 + 40) translationService];

  v8 = _SCROD_BRAILLE_LOG();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke_cold_1(a1);
    }

    v10 = [*(a1 + 40) translationService];
    v11 = *(a1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke_37;
    v16[3] = &unk_279B746B0;
    v12 = v11;
    v13 = *(a1 + 72);
    v17 = v12;
    v19 = v13;
    v15 = *(a1 + 56);
    v14 = v15;
    v18 = v15;
    [v10 textForBraille:v12 parameters:v6 withReply:v16];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke_cold_2();
    }

    dispatch_group_leave(*(a1 + 56));
  }
}

void __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = 138412802;
    v17 = v15;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEBUG, "Translated braille:'%@' -> text:'%@' locations:%@", &v16, 0x20u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)primaryTableSupportsRoundTripping
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SCROBrailleTranslationManager_primaryTableSupportsRoundTripping__block_invoke;
  v5[3] = &unk_279B74728;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __66__SCROBrailleTranslationManager_primaryTableSupportsRoundTripping__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [&unk_287652428 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_287652428);
        }

        result = [*(*(a1 + 32) + 16) isEqualToString:*(*(&v7 + 1) + 8 * v5)];
        if (result)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [&unk_287652428 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __52__SCROBrailleTranslationManager_setDefaultLanguage___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_26490B000, a2, OS_LOG_TYPE_DEBUG, "Set new default language table: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)printBrailleForText:language:mode:textPositionsRange:locations:textFormattingRanges:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 16);
  v4 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x277D85DE8];
}

void __117__SCROBrailleTranslationManager_printBrailleForText_language_mode_textPositionsRange_locations_textFormattingRanges___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)textForPrintBraille:language:mode:locations:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__SCROBrailleTranslationManager_textForPrintBraille_language_mode_locations___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end