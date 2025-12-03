@interface TITransientLexiconManager
+ (TITransientLexiconManager)sharedInstance;
+ (id)getEntries:(_LXLexicon *)entries;
+ (id)singletonInstance;
+ (void)setSharedTITransientLexiconManager:(id)manager;
- (BOOL)searchForWord:(id)word;
- (BOOL)searchForWordCaseInsensitive:(id)insensitive;
- (BOOL)searchHelper:(_LXLexicon *)helper forWord:(__CFString *)word caseSensitive:(BOOL)sensitive;
- (TISupplementalLexiconController)ensureSupplementalLexicons;
- (TITransientLexiconManager)init;
- (_LXLexicon)addressBookLexiconForLocale:(const char *)locale;
- (_LXLexicon)appNameLexiconForLocale:(const char *)locale;
- (_LXLexicon)filterLexicon:(_LXLexicon *)lexicon againstLocale:(String *)locale;
- (_LXLexicon)filteredLexicon:(_LXLexicon *)lexicon fromLexiconCache:(void *)cache forLocale:(const char *)locale;
- (id)_currentConnection;
- (id)addContactObserver:(id)observer;
- (void)dealloc;
- (void)debugLogEntities;
- (void)getOnce:(id)once;
- (void)loadLexicons;
- (void)namedEntitiesUpdateCallback;
- (void)performMaintenance;
- (void)registerNamedEntitiesUpdateCallback;
- (void)releaseCachedNamedEntityLexicons;
- (void)supplementalLexiconControllerProcessDidTerminate:(id)terminate;
@end

@implementation TITransientLexiconManager

+ (TITransientLexiconManager)sharedInstance
{
  if (__testingInstance)
  {
    v2 = __testingInstance;
  }

  else
  {
    v2 = +[TITransientLexiconManager singletonInstance];
  }

  return v2;
}

+ (id)singletonInstance
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
    {
      dispatch_once(&+[TITransientLexiconManager singletonInstance]::onceToken, &__block_literal_global_4295);
    }
  }

  else if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
  {
    TIDispatchSync();
  }

  v2 = +[TITransientLexiconManager singletonInstance]::singletonInstance;

  return v2;
}

- (void)debugLogEntities
{
  __45__TITransientLexiconManager_debugLogEntities__block_invoke(self->_namedEntityLexiconRef);
  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;

  __45__TITransientLexiconManager_debugLogEntities__block_invoke(namedEntityPhraseLexiconRef);
}

void __45__TITransientLexiconManager_debugLogEntities__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v2 = TIOSLogFacility();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        v4 = MEMORY[0x277CCACA8];
        v5 = LXLexiconCopyName();
        v6 = [TITransientLexiconManager getEntries:a1];
        v7 = [v6 componentsJoinedByString:{@", "}];
        v8 = [v4 stringWithFormat:@"%s %@ contains [ %@ ]", "-[TITransientLexiconManager debugLogEntities]_block_invoke", v5, v7];
        *buf = 138412290;
        v10 = v8;
        _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (_LXLexicon)appNameLexiconForLocale:(const char *)locale
{
  v23[2] = *MEMORY[0x277D85DE8];
  KB::String::String(&v21, locale);
  if (!std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_appNameLexicons, &v21))
  {
    v4 = v22;
    if (!v22)
    {
      v4 = v23;
    }

    if (v21)
    {
      v5 = v4;
    }

    else
    {
      v5 = "";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    v7 = UIKeyboardStaticUnigramsFile(v6);
    KB::utf8_string(v7, v20);

    v8 = [TIInputMode inputModeWithIdentifier:v6];
    v9 = UIKeyboardDeltaLexiconPathForInputMode(v8);
    KB::utf8_string(v9, v19);

    KB::String::String(v18, &v21);
    KB::String::String(v17, v20);
    KB::String::String(v16, v19);
    KB::AppTrieLoader::create();
  }

  v10 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_appNameLexicons, &v21);
  if (!v10)
  {
    abort();
  }

  (*(*v10[6] + 16))(&v14);
  v11 = *v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v22 && BYTE6(v21) == 1)
  {
    free(v22);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_LXLexicon)addressBookLexiconForLocale:(const char *)locale
{
  v23[2] = *MEMORY[0x277D85DE8];
  KB::String::String(&v21, locale);
  if (!std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_addressBookLexicons, &v21))
  {
    v4 = v22;
    if (!v22)
    {
      v4 = v23;
    }

    if (v21)
    {
      v5 = v4;
    }

    else
    {
      v5 = "";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    v7 = UIKeyboardStaticUnigramsFile(v6);
    KB::utf8_string(v7, v20);

    v8 = [TIInputMode inputModeWithIdentifier:v6];
    v9 = UIKeyboardDeltaLexiconPathForInputMode(v8);
    KB::utf8_string(v9, v19);

    KB::String::String(v18, &v21);
    KB::String::String(v17, v20);
    KB::String::String(v16, v19);
    KB::AddressBookTrieLoader::create();
  }

  v10 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(self->_addressBookLexicons, &v21);
  if (!v10)
  {
    abort();
  }

  (*(*v10[6] + 16))(&v14);
  v11 = *v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v22 && BYTE6(v21) == 1)
  {
    free(v22);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_LXLexicon)filteredLexicon:(_LXLexicon *)lexicon fromLexiconCache:(void *)cache forLocale:(const char *)locale
{
  v31 = *MEMORY[0x277D85DE8];
  if (!lexicon)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
LABEL_12:
      lexiconCopy = 0;
      goto LABEL_13;
    }

    v26 = 136315138;
    *v27 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
    v9 = MEMORY[0x277D86220];
    v10 = "%s  Lexicon being asked to filter is null - will return a null reference in return";
LABEL_40:
    _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, v10, &v26, 0xCu);
    goto LABEL_12;
  }

  if (!locale)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v26 = 136315138;
    *v27 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
    v9 = MEMORY[0x277D86220];
    v10 = "%s  localeId being asked to filter with is null - will return a null reference in return";
    goto LABEL_40;
  }

  lexiconCopy = lexicon;
  KB::String::String(&v29, locale);
  if (std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(cache, &v29))
  {
    goto LABEL_4;
  }

  v13 = [(TITransientLexiconManager *)self filterLexicon:lexiconCopy againstLocale:&v29];
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v26 = 136315138;
      *v27 = "[TITransientLexiconManager filteredLexicon:fromLexiconCache:forLocale:]";
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Failed to filter the named entity lexicon; returning an unfiltered one", &v26, 0xCu);
    }

    goto LABEL_6;
  }

  v14 = v13;
  KB::String::String(&v26, &v29);
  v28[2] = v14;
  if (*&v27[4])
  {
    v15 = *&v27[4];
  }

  else
  {
    v15 = v28;
  }

  v16 = KB::String::hash(v15, v26);
  v17 = v16;
  v18 = *(cache + 1);
  if (!v18)
  {
    goto LABEL_38;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  v20 = v19.u32[0];
  if (v19.u32[0] > 1uLL)
  {
    v21 = v16;
    if (v18 <= v16)
    {
      v21 = v16 % v18;
    }
  }

  else
  {
    v21 = (v18 - 1) & v16;
  }

  v22 = *(*cache + 8 * v21);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v24 = v23[1];
    if (v24 == v17)
    {
      break;
    }

    if (v20 > 1)
    {
      if (v24 >= v18)
      {
        v24 %= v18;
      }
    }

    else
    {
      v24 &= v18 - 1;
    }

    if (v24 != v21)
    {
      goto LABEL_38;
    }

LABEL_37:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_38;
    }
  }

  if (v23 + 2 != &v26 && !KB::String::equal((v23 + 2), &v26, 1))
  {
    goto LABEL_37;
  }

  if (*&v27[4])
  {
    v25 = v27[2] == 1;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    free(*&v27[4]);
  }

LABEL_4:
  v8 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(cache, &v29);
  if (!v8)
  {
    abort();
  }

  lexiconCopy = v8[6];
LABEL_6:
  if (v30 && BYTE6(v29) == 1)
  {
    free(v30);
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return lexiconCopy;
}

- (_LXLexicon)filterLexicon:(_LXLexicon *)lexicon againstLocale:(String *)locale
{
  v13 = *MEMORY[0x277D85DE8];
  if (lexicon)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = LXLexiconCopyName();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%u", v5, arc4random()];
    CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], v6);
    v10[7] = 0;
    LXLexiconCreateTransient();
    v9 = LXLexiconRepositoryAddOrUpdate();
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3812000000;
    v10[3] = __Block_byref_object_copy__50;
    v10[4] = __Block_byref_object_dispose__51;
    v10[5] = "";
    KB::StaticDictionary::create(v9);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[TITransientLexiconManager filterLexicon:againstLocale:]";
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Lexicon being asked to filter is null - will return a null reference in return", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

void __57__TITransientLexiconManager_filterLexicon_againstLocale___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LXEntryCopyString();
  v3 = *(*(*(a1 + 32) + 8) + 48);
  KB::utf8_string(v2, &v9);
  v4 = KB::StaticDictionary::contains(v3, &v9, 0, 0.0);
  if (v10)
  {
    v5 = BYTE6(v9) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = 0;
    LXEntryGetTimestamp();
    v7 = *(a1 + 40);
    LXLexiconAddWithCreationTime();
    v8 = *(a1 + 40);
    LXLexiconIncrementUsageCount();
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  free(v10);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v2)
  {
LABEL_7:
    CFRelease(v2);
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getOnce:(id)once
{
  onceCopy = once;
  v5 = dispatch_semaphore_create(0);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4272;
  v17 = __Block_byref_object_dispose__4273;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__TITransientLexiconManager_getOnce___block_invoke;
  v10[3] = &unk_27872FED0;
  v12 = &v13;
  v6 = v5;
  v11 = v6;
  v7 = [(TITransientLexiconManager *)self addContactObserver:v10];
  v8 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_ICPredictionManager quickTypePredictionWithTrigger timeout", v9, 2u);
    }

    [(TITransientLexiconManager *)self removeContactObserver:v7];
  }

  else
  {
    [(TITransientLexiconManager *)self removeContactObserver:v7];
    onceCopy[2](onceCopy, v14[5]);
  }

  _Block_object_dispose(&v13, 8);
}

intptr_t __37__TITransientLexiconManager_getOnce___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (BOOL)searchForWordCaseInsensitive:(id)insensitive
{
  insensitiveCopy = insensitive;
  if (!self->_supplementalLexiconSearchEnabled)
  {
    goto LABEL_5;
  }

  supplementalLexicons = [(TITransientLexiconManager *)self supplementalLexicons];
  activeWordLexicon = [supplementalLexicons activeWordLexicon];

  if (!activeWordLexicon)
  {
    goto LABEL_5;
  }

  supplementalLexicons2 = [(TITransientLexiconManager *)self supplementalLexicons];
  v8 = -[TITransientLexiconManager searchHelper:forWord:caseSensitive:](self, "searchHelper:forWord:caseSensitive:", [supplementalLexicons2 activeWordLexicon], insensitiveCopy, 0);

  if (v8)
  {
    v9 = 1;
  }

  else
  {
LABEL_5:
    v9 = [(TITransientLexiconManager *)self searchHelper:[(TITransientLexiconManager *)self namedEntityLexicon] forWord:insensitiveCopy caseSensitive:0];
  }

  return v9;
}

- (BOOL)searchForWord:(id)word
{
  wordCopy = word;
  if (!self->_supplementalLexiconSearchEnabled)
  {
    goto LABEL_4;
  }

  supplementalLexicons = [(TITransientLexiconManager *)self supplementalLexicons];
  activeWordLexicon = [supplementalLexicons activeWordLexicon];

  if (!activeWordLexicon || (-[TITransientLexiconManager supplementalLexicons](self, "supplementalLexicons"), v7 = objc_claimAutoreleasedReturnValue(), v8 = 1, v9 = -[TITransientLexiconManager searchHelper:forWord:caseSensitive:](self, "searchHelper:forWord:caseSensitive:", [v7 activeWordLexicon], wordCopy, 1), v7, !v9))
  {
LABEL_4:
    v8 = [(TITransientLexiconManager *)self searchHelper:[(TITransientLexiconManager *)self namedEntityLexicon] forWord:wordCopy caseSensitive:1];
  }

  return v8;
}

- (BOOL)searchHelper:(_LXLexicon *)helper forWord:(__CFString *)word caseSensitive:(BOOL)sensitive
{
  if (helper)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    LXLexiconEnumerateEntriesForString();
    v5 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __64__TITransientLexiconManager_searchHelper_forWord_caseSensitive___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), *(a1 + 48) ^ 1) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  CFRelease(v5);
}

- (id)addContactObserver:(id)observer
{
  observerCopy = observer;
  [(TITransientLexiconManager *)self loadLexicons];
  v5 = [(_ICLexiconManaging *)self->_inputContextLexiconManager addContactObserver:observerCopy];

  return v5;
}

- (void)supplementalLexiconControllerProcessDidTerminate:(id)terminate
{
  v4 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "Process terminated -- removing supplemental lexicon controller", v6, 2u);
  }

  supplementalLexicons = self->_supplementalLexicons;
  self->_supplementalLexicons = 0;
}

- (void)performMaintenance
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TITransientLexiconManager performMaintenance]";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Performing maintenance in Transient Lexicon Manager", &v8, 0xCu);
  }

  lexiconManager = [MEMORY[0x277D1C0B0] lexiconManager];
  inputContextLexiconManager = self->_inputContextLexiconManager;
  self->_inputContextLexiconManager = lexiconManager;

  [(TITransientLexiconManager *)self registerNamedEntitiesUpdateCallback];
  namedEntityLexiconRef = self->_namedEntityLexiconRef;
  if (namedEntityLexiconRef)
  {
    CFRelease(namedEntityLexiconRef);
    self->_namedEntityLexiconRef = 0;
  }

  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;
  if (namedEntityPhraseLexiconRef)
  {
    CFRelease(namedEntityPhraseLexiconRef);
    self->_namedEntityPhraseLexiconRef = 0;
  }

  self->_lexiconsLoaded = 0;
  [(TITransientLexiconManager *)self loadLexicons];
  [(TITransientLexiconManager *)self namedEntitiesUpdateCallback];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadLexicons
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_lexiconsLoaded)
  {
    loadLexicons = [(_ICLexiconManaging *)self->_inputContextLexiconManager loadLexicons];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [loadLexicons countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(loadLexicons);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 typeFlags])
          {
            typeFlags = [v8 typeFlags];
            v10 = CFRetain([v8 getLexiconImplementation]);
            if ((typeFlags & 4) != 0)
            {
              v11 = 16;
            }

            else
            {
              v11 = 8;
            }

            *(&self->super.isa + v11) = v10;
          }
        }

        v5 = [loadLexicons countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    self->_lexiconsLoaded = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)namedEntitiesUpdateCallback
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[TITransientLexiconManager namedEntitiesUpdateCallback]";
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Received a named entities update callback, rebuilding the cached lexicons", &v2, 0xCu);
  }

  operator new();
}

- (void)registerNamedEntitiesUpdateCallback
{
  objc_initWeak(&location, self);
  inputContextLexiconManager = self->_inputContextLexiconManager;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_inputContextLexiconManager;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke;
    v9 = &unk_2787311D8;
    objc_copyWeak(&v10, &location);
    v5 = _Block_copy(&v6);
    [(_ICLexiconManaging *)v4 performSelector:sel_addNamedEntitiesUpdateObserver_ withObject:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

void __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  TIDispatchAsync();
  objc_destroyWeak(&v1);
}

void __64__TITransientLexiconManager_registerNamedEntitiesUpdateCallback__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained namedEntitiesUpdateCallback];
    WeakRetained = v2;
  }
}

- (TISupplementalLexiconController)ensureSupplementalLexicons
{
  supplementalLexicons = [(TITransientLexiconManager *)self supplementalLexicons];
  if (!supplementalLexicons)
  {
    v4 = [TISupplementalLexiconController alloc];
    _currentConnection = [(TITransientLexiconManager *)self _currentConnection];
    supplementalLexicons = [(TISupplementalLexiconController *)v4 initWithConnection:_currentConnection];

    [(TISupplementalLexiconController *)supplementalLexicons setDelegate:self];
    objc_storeStrong(&self->_supplementalLexicons, supplementalLexicons);
  }

  v6 = supplementalLexicons;

  return v6;
}

- (id)_currentConnection
{
  if (__overridingCurrentConnectionForTesting)
  {
    currentConnection = __overridingCurrentConnectionForTesting;
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  }

  return currentConnection;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  namedEntityPhraseLexiconRef = self->_namedEntityPhraseLexiconRef;
  if (namedEntityPhraseLexiconRef)
  {
    CFRelease(namedEntityPhraseLexiconRef);
  }

  namedEntityLexiconRef = self->_namedEntityLexiconRef;
  if (namedEntityLexiconRef)
  {
    CFRelease(namedEntityLexiconRef);
  }

  [(TITransientLexiconManager *)self releaseCachedNamedEntityLexicons];
  addressBookLexicons = self->_addressBookLexicons;
  if (addressBookLexicons)
  {
    v7 = addressBookLexicons[2];
    while (v7)
    {
      v8 = v7;
      v7 = *v7;
      v9 = v8[7];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v10 = v8[3];
      if (v10 && *(v8 + 22) == 1)
      {
        free(v10);
      }

      operator delete(v8);
    }

    v11 = *addressBookLexicons;
    *addressBookLexicons = 0;
    if (v11)
    {
      operator delete(v11);
    }

    MEMORY[0x2318BE270](addressBookLexicons, 0x10A0C408EF24B1CLL);
  }

  appNameLexicons = self->_appNameLexicons;
  if (appNameLexicons)
  {
    v13 = appNameLexicons[2];
    while (v13)
    {
      v14 = v13;
      v13 = *v13;
      v15 = v14[7];
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      v16 = v14[3];
      if (v16 && *(v14 + 22) == 1)
      {
        free(v16);
      }

      operator delete(v14);
    }

    v17 = *appNameLexicons;
    *appNameLexicons = 0;
    if (v17)
    {
      operator delete(v17);
    }

    MEMORY[0x2318BE270](appNameLexicons, 0x10A0C408EF24B1CLL);
  }

  v18.receiver = self;
  v18.super_class = TITransientLexiconManager;
  [(TITransientLexiconManager *)&v18 dealloc];
}

- (void)releaseCachedNamedEntityLexicons
{
  namedEntityLexicons = self->_namedEntityLexicons;
  if (namedEntityLexicons)
  {
    v4 = namedEntityLexicons[2];
    if (!v4)
    {
      goto LABEL_7;
    }

    do
    {
      v5 = v4[6];
      if (v5)
      {
        CFRelease(v5);
      }

      v4 = *v4;
    }

    while (v4);
    namedEntityLexicons = self->_namedEntityLexicons;
    if (namedEntityLexicons)
    {
LABEL_7:
      v6 = std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(namedEntityLexicons);
      MEMORY[0x2318BE270](v6, 0x10A0C408EF24B1CLL);
    }
  }

  namedEntityPhraseLexicons = self->_namedEntityPhraseLexicons;
  if (namedEntityPhraseLexicons)
  {
    v8 = namedEntityPhraseLexicons[2];
    if (!v8)
    {
      goto LABEL_14;
    }

    do
    {
      v9 = v8[6];
      if (v9)
      {
        CFRelease(v9);
      }

      v8 = *v8;
    }

    while (v8);
    namedEntityPhraseLexicons = self->_namedEntityPhraseLexicons;
    if (namedEntityPhraseLexicons)
    {
LABEL_14:
      std::__hash_table<std::__hash_value_type<KB::String,_LXLexicon const*>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,_LXLexicon const*>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,_LXLexicon const*>>>::~__hash_table(namedEntityPhraseLexicons);

      JUMPOUT(0x2318BE270);
    }
  }
}

- (TITransientLexiconManager)init
{
  v6.receiver = self;
  v6.super_class = TITransientLexiconManager;
  v2 = [(TITransientLexiconManager *)&v6 init];
  if (v2)
  {
    lexiconManager = [MEMORY[0x277D1C0B0] lexiconManager];
    inputContextLexiconManager = v2->_inputContextLexiconManager;
    v2->_inputContextLexiconManager = lexiconManager;

    [(TITransientLexiconManager *)v2 registerNamedEntitiesUpdateCallback];
    v2->_supplementalLexiconSearchEnabled = 1;
    [(TITransientLexiconManager *)v2 loadLexicons];
    operator new();
  }

  return 0;
}

+ (id)getEntries:(_LXLexicon *)entries
{
  array = [MEMORY[0x277CBEB18] array];
  RootCursor = LXLexiconCreateRootCursor();
  v6 = array;
  LXCursorEnumerateEntriesRecursively();
  CFRelease(RootCursor);

  return v6;
}

void __40__TITransientLexiconManager_getEntries___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = LXEntryCopyString();
  [v1 addObject:v2];
}

void __46__TITransientLexiconManager_singletonInstance__block_invoke_2(uint64_t a1)
{
  if (+[TITransientLexiconManager singletonInstance]::onceToken != -1)
  {
    dispatch_once(&+[TITransientLexiconManager singletonInstance]::onceToken, *(a1 + 32));
  }
}

uint64_t __46__TITransientLexiconManager_singletonInstance__block_invoke()
{
  +[TITransientLexiconManager singletonInstance]::singletonInstance = objc_alloc_init(TITransientLexiconManager);

  return MEMORY[0x2821F96F8]();
}

+ (void)setSharedTITransientLexiconManager:(id)manager
{
  managerCopy = manager;
  if (__testingInstance != managerCopy)
  {
    v5 = managerCopy;
    objc_storeStrong(&__testingInstance, manager);
    managerCopy = v5;
  }
}

@end