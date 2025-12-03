@interface VTUIStringsHelper
+ (id)sharedStringsHelper;
+ (void)initialize;
- (VTUIStringsHelper)init;
- (id)_bundleStringTableForAllValidLanguages:(id)languages inLocalizedStringsFileName:(id)name;
- (id)_bundleStringTableForLanguages:(id)languages inLocalizedStringsFileName:(id)name;
- (id)_siriLanguageSubstitutedString:(id)string;
- (id)uiLocalizedStringForKey:(id)key;
- (id)uiLocalizedStringForKey:(id)key languageCode:(id)code;
- (id)uiLocalizedStringForKey:(id)key usesMultipleTriggers:(BOOL)triggers siriVoice:(id)voice;
- (void)setSiriLanguage:(id)language;
- (void)setupForCurrentLocaleAndSiriLanguage;
@end

@implementation VTUIStringsHelper

+ (id)sharedStringsHelper
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__VTUIStringsHelper_sharedStringsHelper__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStringsHelper_onceToken != -1)
  {
    dispatch_once(&sharedStringsHelper_onceToken, block);
  }

  v2 = sharedStringsHelper__sharedInstance;

  return v2;
}

uint64_t __40__VTUIStringsHelper_sharedStringsHelper__block_invoke(uint64_t a1)
{
  sharedStringsHelper__sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___VTUIStringsHelper;
  objc_msgSendSuper2(&v2, sel_initialize);
  if (initialize_onceToken != -1)
  {
    +[VTUIStringsHelper initialize];
  }
}

uint64_t __31__VTUIStringsHelper_initialize__block_invoke()
{
  __siriLangRegex = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"%SIRI_LANGUAGE__([^%]+)%" options:0 error:0];

  return MEMORY[0x2821F96F8]();
}

- (VTUIStringsHelper)init
{
  v6.receiver = self;
  v6.super_class = VTUIStringsHelper;
  v2 = [(VTUIStringsHelper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(VTUIStringsHelper *)v2 setupForCurrentLocaleAndSiriLanguage];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)setupForCurrentLocaleAndSiriLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages inLocalizedStringsFileName:@"Localizable"];
  localizedStringTable = self->_localizedStringTable;
  self->_localizedStringTable = v4;

  v100 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages2 inLocalizedStringsFileName:@"Localizable-b364"];

  if (v7)
  {
    [v100 addEntriesFromDictionary:v7];
    objc_storeStrong(&self->_localizedStringTable, v100);
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages3 inLocalizedStringsFileName:@"Localizable-b419"];

  if (v10)
  {
    [v8 addEntriesFromDictionary:v10];
    objc_storeStrong(&self->_localizedStringTable, v8);
  }

  v95 = v10;
  v96 = v8;
  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v13 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages4 inLocalizedStringsFileName:@"Localizable-b298"];

  if (v13)
  {
    [v11 addEntriesFromDictionary:v13];
    objc_storeStrong(&self->_localizedStringTable, v11);
  }

  v94 = v11;
  v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v16 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages5 inLocalizedStringsFileName:@"Localizable-b515"];

  if (v16)
  {
    [v14 addEntriesFromDictionary:v16];
    objc_storeStrong(&self->_localizedStringTable, v14);
  }

  v92 = v16;
  v93 = v13;
  v97 = v7;
  v98 = v14;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages6 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v19 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages6 inLocalizedStringsFileName:@"Localizable-Themis"];

  if (v19)
  {
    [v17 addEntriesFromDictionary:v19];
    objc_storeStrong(&self->_localizedStringTable, v17);
  }

  v90 = v19;
  v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages7 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v22 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages7 inLocalizedStringsFileName:@"Localizable-b688"];

  if (v22)
  {
    [v20 addEntriesFromDictionary:v22];
    objc_storeStrong(&self->_localizedStringTable, v20);
  }

  v91 = v17;
  v89 = v22;
  v99 = v20;
  v23 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages8 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v25 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages8 inLocalizedStringsFileName:@"Localizable-b494"];

  if (v25)
  {
    [v23 addEntriesFromDictionary:v25];
    objc_storeStrong(&self->_localizedStringTable, v23);
  }

  v87 = v25;
  v26 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages9 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v28 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages9 inLocalizedStringsFileName:@"Localizable-b698"];

  if (v28)
  {
    [v26 addEntriesFromDictionary:v28];
    objc_storeStrong(&self->_localizedStringTable, v26);
  }

  v88 = v23;
  v85 = v28;
  v86 = v26;
  v29 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages10 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v31 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages10 inLocalizedStringsFileName:@"Localizable-b607"];

  if (v31)
  {
    [v29 addEntriesFromDictionary:v31];
    objc_storeStrong(&self->_localizedStringTable, v29);
  }

  v84 = v29;
  v32 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages11 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v34 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages11 inLocalizedStringsFileName:@"Localizable-b453"];

  if (v34)
  {
    [v32 addEntriesFromDictionary:v34];
    objc_storeStrong(&self->_localizedStringTable, v32);
  }

  v82 = v32;
  v83 = v31;
  v81 = v34;
  v35 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages12 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v37 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages12 inLocalizedStringsFileName:@"Localizable-b698c"];

  if (v37)
  {
    [v35 addEntriesFromDictionary:v37];
    objc_storeStrong(&self->_localizedStringTable, v35);
  }

  v38 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages13 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v40 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages13 inLocalizedStringsFileName:@"Localizable-b465"];

  if (v40)
  {
    [v38 addEntriesFromDictionary:v40];
    objc_storeStrong(&self->_localizedStringTable, v38);
  }

  v80 = v35;
  v77 = v40;
  v78 = v38;
  v41 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages14 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v43 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages14 inLocalizedStringsFileName:@"Localizable-b498"];

  if (v43)
  {
    [v41 addEntriesFromDictionary:v43];
    objc_storeStrong(&self->_localizedStringTable, v41);
  }

  v44 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages15 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v46 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages15 inLocalizedStringsFileName:@"Localizable-b515c"];

  if (v46)
  {
    [v44 addEntriesFromDictionary:v46];
    objc_storeStrong(&self->_localizedStringTable, v44);
  }

  v73 = v46;
  v74 = v44;
  v75 = v43;
  v47 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages16 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v49 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages16 inLocalizedStringsFileName:@"Localizable-b768"];

  if (v49)
  {
    [v47 addEntriesFromDictionary:v49];
    objc_storeStrong(&self->_localizedStringTable, v47);
  }

  v71 = v49;
  v76 = v41;
  v50 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages17 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v52 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages17 inLocalizedStringsFileName:@"Localizable-b788"];

  if (v52)
  {
    [v50 addEntriesFromDictionary:v52];
    objc_storeStrong(&self->_localizedStringTable, v50);
  }

  v72 = v47;
  v79 = v37;
  v53 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{self->_localizedStringTable, v50}];
  preferredLanguages18 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v55 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages18 inLocalizedStringsFileName:@"Localizable-b494b"];

  if (v55)
  {
    [v53 addEntriesFromDictionary:v55];
    objc_storeStrong(&self->_localizedStringTable, v53);
  }

  v56 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages19 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v58 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages19 inLocalizedStringsFileName:@"Localizable-v59"];

  if (v58)
  {
    [v56 addEntriesFromDictionary:v58];
    objc_storeStrong(&self->_localizedStringTable, v56);
  }

  v59 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_localizedStringTable];
  preferredLanguages20 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v61 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:preferredLanguages20 inLocalizedStringsFileName:@"Localizable-GM"];

  if (v61)
  {
    [v59 addEntriesFromDictionary:v61];
    objc_storeStrong(&self->_localizedStringTable, v59);
  }

  siriLanguageCode = self->_siriLanguageCode;
  v63 = v99;
  if (!siriLanguageCode)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v65 = [mEMORY[0x277CEF368] bestSupportedLanguageCodeForLanguageCode:0];
    v66 = self->_siriLanguageCode;
    self->_siriLanguageCode = v65;

    v63 = v99;
    siriLanguageCode = self->_siriLanguageCode;
  }

  [(VTUIStringsHelper *)self setSiriLanguage:siriLanguageCode];
  v67 = v98;
  if (!self->_languageLocalizedStringTables)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    [(VTUIStringsHelper *)self setSiriLanguage:localeIdentifier];

    v67 = v98;
    v63 = v99;
  }
}

- (void)setSiriLanguage:(id)language
{
  v36 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v6 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[VTUIStringsHelper setSiriLanguage:]";
    v34 = 2112;
    v35 = languageCopy;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Setting Siri Language to: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_siriLanguageCode, language);
  if (languageCopy)
  {
    v30 = 0;
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    v8 = [mEMORY[0x277CEF368] allSiriLanguageCodesForSystemLanguageCode:languageCopy isGoodFit:&v30];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v9 addObject:languageCopy];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 addObject:{*(*(&v26 + 1) + 8 * v14++), v26}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    allObjects = [v9 allObjects];
    v16 = [(VTUIStringsHelper *)self _bundleStringTableForAllValidLanguages:allObjects inLocalizedStringsFileName:@"Localizable"];
    languageLocalizedStringTables = self->_languageLocalizedStringTables;
    self->_languageLocalizedStringTables = v16;

    allObjects2 = [v9 allObjects];
    v19 = [(VTUIStringsHelper *)self _bundleStringTableForAllValidLanguages:allObjects2 inLocalizedStringsFileName:@"Localizable-b364"];

    [(NSMutableDictionary *)self->_languageLocalizedStringTables addEntriesFromDictionary:v19];
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    v21 = [mEMORY[0x277D7A8D0] localizedTriggerPhraseForLanguageCode:languageCopy];
    heySiriTriggerPhrase = self->_heySiriTriggerPhrase;
    self->_heySiriTriggerPhrase = v21;

    v23 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_heySiriTriggerPhrase;
      *buf = 136315394;
      v33 = "[VTUIStringsHelper setSiriLanguage:]";
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_2728BC000, v23, OS_LOG_TYPE_DEFAULT, "%s _heySiriTriggerPhrase set to %@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_bundleStringTableForLanguages:(id)languages inLocalizedStringsFileName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  nameCopy = name;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v8 = CFBundleCopyLocalizationsForPreferences([v7 localizations], languagesCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__VTUIStringsHelper__bundleStringTableForLanguages_inLocalizedStringsFileName___block_invoke;
  v16[3] = &unk_279E54A28;
  v9 = v7;
  v17 = v9;
  v10 = nameCopy;
  v18 = v10;
  v19 = &v20;
  [(__CFArray *)v8 enumerateObjectsUsingBlock:v16];
  v11 = v21[5];
  if (!v11)
  {
    v12 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[VTUIStringsHelper _bundleStringTableForLanguages:inLocalizedStringsFileName:]";
      v28 = 2112;
      v29 = languagesCopy;
      _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s No bundle string table found for %@", buf, 0x16u);
    }

    v11 = v21[5];
  }

  v13 = v11;

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __79__VTUIStringsHelper__bundleStringTableForLanguages_inLocalizedStringsFileName___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(a1 + 32) URLForResource:*(a1 + 40) withExtension:@"strings" subdirectory:0 localization:v6];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v7 path];
    v15 = 136315650;
    v16 = "[VTUIStringsHelper _bundleStringTableForLanguages:inLocalizedStringsFileName:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Loaded stringsTable for %@ : %@", &v15, 0x20u);
  }

  *a4 = *(*(*(a1 + 48) + 8) + 40) != 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_bundleStringTableForAllValidLanguages:(id)languages inLocalizedStringsFileName:(id)name
{
  languagesCopy = languages;
  nameCopy = name;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = CFBundleCopyLocalizationsForPreferences([v7 localizations], languagesCopy);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__VTUIStringsHelper__bundleStringTableForAllValidLanguages_inLocalizedStringsFileName___block_invoke;
  v13[3] = &unk_279E54A28;
  v9 = v7;
  v14 = v9;
  v10 = nameCopy;
  v15 = v10;
  v16 = &v17;
  [(__CFArray *)v8 enumerateObjectsUsingBlock:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __87__VTUIStringsHelper__bundleStringTableForAllValidLanguages_inLocalizedStringsFileName___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) URLForResource:*(a1 + 40) withExtension:@"strings" subdirectory:0 localization:?];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  if (v4)
  {
    [*(v5 + 40) setObject:v4 forKey:v8];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [v6 setObject:v7 forKey:v8];
  }
}

- (id)uiLocalizedStringForKey:(id)key usesMultipleTriggers:(BOOL)triggers siriVoice:(id)voice
{
  triggersCopy = triggers;
  v37[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  voiceCopy = voice;
  if (triggersCopy)
  {
    justSiriTriggerPhrase = self->_justSiriTriggerPhrase;
    self->_justSiriTriggerPhrase = @"Siri";
  }

  languageCode = [voiceCopy languageCode];
  if ([languageCode isEqualToString:@"he-IL"])
  {

    goto LABEL_6;
  }

  languageCode2 = [voiceCopy languageCode];
  v13 = [languageCode2 isEqualToString:@"ar-SA"];

  if (v13)
  {
LABEL_6:
    v14 = [MEMORY[0x277CCAB68] stringWithString:keyCopy];
    if ([voiceCopy gender] == 2)
    {
      v15 = @"_SIRI_FEMALE";
    }

    else
    {
      if ([voiceCopy gender] != 1)
      {
LABEL_11:
        v16 = MEMORY[0x277CBEB18];
        v37[0] = v14;
        v37[1] = keyCopy;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        v18 = [v16 arrayWithArray:v17];

        goto LABEL_13;
      }

      v15 = @"_SIRI_MALE";
    }

    [v14 appendString:v15];
    goto LABEL_11;
  }

  v19 = MEMORY[0x277CBEB18];
  v36 = keyCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v18 = [v19 arrayWithArray:v14];
LABEL_13:

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v21)
  {

LABEL_24:
    v23 = [(VTUIStringsHelper *)self uiLocalizedStringForKey:keyCopy, v31];
    goto LABEL_25;
  }

  v22 = v21;
  v23 = 0;
  v24 = *v32;
LABEL_15:
  v25 = 0;
  v26 = v23;
  while (1)
  {
    if (*v32 != v24)
    {
      objc_enumerationMutation(v20);
    }

    v27 = *(*(&v31 + 1) + 8 * v25);
    v23 = [(VTUIStringsHelper *)self uiLocalizedStringForKey:v27, v31];

    if (![v23 isEqualToString:v27])
    {
      break;
    }

    ++v25;
    v26 = v23;
    if (v22 == v25)
    {
      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        goto LABEL_15;
      }

      break;
    }
  }

  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_25:
  v28 = self->_justSiriTriggerPhrase;
  self->_justSiriTriggerPhrase = 0;

  v29 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)uiLocalizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_localizedStringTable objectForKey:keyCopy];
  v6 = v5;
  justSiriTriggerPhrase = self->_justSiriTriggerPhrase;
  if (justSiriTriggerPhrase)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    justSiriTriggerPhrase = self->_heySiriTriggerPhrase;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = keyCopy;
LABEL_3:
  v8 = [v6 stringByReplacingOccurrencesOfString:@"%TRIGGER_PHRASE%" withString:justSiriTriggerPhrase];

  v9 = [(VTUIStringsHelper *)self _siriLanguageSubstitutedString:v8];

  return v9;
}

- (id)uiLocalizedStringForKey:(id)key languageCode:(id)code
{
  v24[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  codeCopy = code;
  if (codeCopy)
  {
    allKeys = [(NSMutableDictionary *)self->_languageLocalizedStringTables allKeys];
    v9 = [allKeys containsObject:codeCopy];

    if ((v9 & 1) == 0)
    {
      v24[0] = codeCopy;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v11 = [(VTUIStringsHelper *)self _bundleStringTableForLanguages:v10 inLocalizedStringsFileName:@"Localizable"];

      languageLocalizedStringTables = self->_languageLocalizedStringTables;
      if (v11)
      {
        [(NSMutableDictionary *)self->_languageLocalizedStringTables setObject:v11 forKey:codeCopy];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEAC0]);
        [(NSMutableDictionary *)languageLocalizedStringTables setObject:v13 forKey:codeCopy];
      }
    }
  }

  v14 = [(NSMutableDictionary *)self->_languageLocalizedStringTables objectForKey:codeCopy];
  v15 = [v14 objectForKey:keyCopy];

  if (!v15)
  {
    v15 = keyCopy;
  }

  justSiriTriggerPhrase = self->_justSiriTriggerPhrase;
  if (!justSiriTriggerPhrase)
  {
    justSiriTriggerPhrase = self->_heySiriTriggerPhrase;
  }

  v17 = justSiriTriggerPhrase;
  v18 = [v15 stringByReplacingOccurrencesOfString:@"%TRIGGER_PHRASE%" withString:v17];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];

  if (languageCode != codeCopy)
  {
    v21 = [(VTUIStringsHelper *)self _siriLanguageSubstitutedString:v18];

    v18 = v21;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_siriLanguageSubstitutedString:(id)string
{
  v28 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = [__siriLangRegex matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    if ([v6 count])
    {
      v7 = [v5 mutableCopy];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v21 = v6;
      obj = [v6 reverseObjectEnumerator];
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [__siriLangRegex replacementStringForResult:v12 inString:v5 offset:0 template:@"$1"];
            v14 = [(VTUIStringsHelper *)self siriLanguageStringForKey:v13];
            if (!v14)
            {
              v18 = [(VTUIStringsHelper *)self uiLocalizedStringForKey:v13];

              goto LABEL_14;
            }

            v15 = v14;
            range = [v12 range];
            [v7 replaceCharactersInRange:range withString:{v17, v15}];
          }

          v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v18 = v7;
LABEL_14:

      v6 = v21;
    }

    else
    {
      v18 = v5;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end