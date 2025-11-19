@interface TITransientLexiconManagerMock
+ (id)tokenizeEntity:(id)a3;
- (BOOL)searchForWord:(id)a3;
- (BOOL)searchForWordCaseInsensitive:(id)a3;
- (BOOL)searchHelper:(_LXLexicon *)a3 forWord:(__CFString *)a4 caseSensitive:(BOOL)a5;
- (TITransientLexiconManagerMock)init;
- (TITransientLexiconManagerMock)initWithTransientData:(id)a3 namedEntities:(id)a4;
- (_LXLexicon)addressBookLexiconForLocale:(const char *)a3;
- (_LXLexicon)appNameLexiconForLocale:(const char *)a3;
- (id)addContactObserver:(id)a3;
- (void)addEntry:(id)a3 toLexicon:(_LXLexicon *)a4;
- (void)dealloc;
- (void)debugLogEntities;
- (void)provideFeedbackForString:(id)a3 type:(unsigned __int8)a4 style:(unsigned __int8)a5;
- (void)removeContactObserver:(id)a3;
- (void)setNewContactCollection:(id)a3;
@end

@implementation TITransientLexiconManagerMock

- (void)provideFeedbackForString:(id)a3 type:(unsigned __int8)a4 style:(unsigned __int8)a5
{
  if (a4 == 3)
  {
    v5 = 60;
  }

  else
  {
    if (a4 != 1)
    {
      return;
    }

    v5 = 64;
  }

  ++*(&self->super.isa + v5);
}

- (void)debugLogEntities
{
  if (self->_namedEntityLexiconRef)
  {
    v5 = [TITransientLexiconManagerMock getEntries:?];
    if ([v5 count])
    {
      v3 = [v5 componentsJoinedByString:@"|"];
      NSLog(&cfstr_NamedEntities.isa, v3);
    }

    else
    {
      NSLog(&cfstr_NamedEntitiesE.isa);
    }
  }

  if (self->_namedEntityPhraseLexiconRef)
  {
    v6 = [TITransientLexiconManagerMock getEntries:?];
    if ([v6 count])
    {
      v4 = [v6 componentsJoinedByString:@"|"];
      NSLog(&cfstr_NamedPhraseEnt.isa, v4);
    }

    else
    {
      NSLog(&cfstr_NamedPhraseEnt_0.isa);
    }
  }
}

- (_LXLexicon)appNameLexiconForLocale:(const char *)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  MEMORY[0x26D6C0670](&v36, a3);
  if (std::__hash_table<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>>>::find<KB::String>(self->_appNameLexicons, &v36))
  {
    goto LABEL_36;
  }

  v4 = v37;
  if (!v37)
  {
    v4 = v38;
  }

  if (v36)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v6 = UIKeyboardStaticUnigramsFile();
  KB::utf8_string(v35, v6, v7);

  v8 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v25];
  v9 = UIKeyboardDeltaLexiconPathForInputMode();
  KB::utf8_string(v34, v9, v10);

  MEMORY[0x26D6C0680](v33, &v36);
  MEMORY[0x26D6C0680](v32, v35);
  MEMORY[0x26D6C0680](v31, v34);
  KB::AppTrieLoader::create();
  KB::String::~String(v31);
  KB::String::~String(v32);
  KB::String::~String(v33);
  appNameLexicons = self->_appNameLexicons;
  MEMORY[0x26D6C0680](&v27, &v36);
  v30 = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v28)
  {
    v12 = v28;
  }

  else
  {
    v12 = &v29;
  }

  v13 = KB::String::hash(v12, v27);
  v14 = v13;
  v15 = appNameLexicons[1];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v15 <= v13)
    {
      v18 = v13 % v15;
    }
  }

  else
  {
    v18 = (v15 - 1) & v13;
  }

  v19 = *(*appNameLexicons + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= v15)
      {
        v21 %= v15;
      }
    }

    else
    {
      v21 &= v15 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  if (v20 + 2 != &v27 && (KB::String::equal((v20 + 2), &v27) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(&v30 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v30 + 1));
  }

  KB::String::~String(&v27);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26 + 1));
  }

  KB::String::~String(v34);
  KB::String::~String(v35);

LABEL_36:
  v22 = std::__hash_table<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>>>::find<KB::String>(self->_appNameLexicons, &v36);
  if (!v22)
  {
    abort();
  }

  (*(*v22[6] + 16))(&v27);
  v23 = *v27;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  KB::String::~String(&v36);
  return v23;
}

- (_LXLexicon)addressBookLexiconForLocale:(const char *)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  MEMORY[0x26D6C0670](&v36, a3);
  if (std::__hash_table<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>>>::find<KB::String>(self->_addressBookLexicons, &v36))
  {
    goto LABEL_36;
  }

  v4 = v37;
  if (!v37)
  {
    v4 = v38;
  }

  if (v36)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v6 = UIKeyboardStaticUnigramsFile();
  KB::utf8_string(v35, v6, v7);

  v8 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:v25];
  v9 = UIKeyboardDeltaLexiconPathForInputMode();
  KB::utf8_string(v34, v9, v10);

  MEMORY[0x26D6C0680](v33, &v36);
  MEMORY[0x26D6C0680](v32, v35);
  MEMORY[0x26D6C0680](v31, v34);
  KB::AddressBookTrieLoader::create();
  KB::String::~String(v31);
  KB::String::~String(v32);
  KB::String::~String(v33);
  addressBookLexicons = self->_addressBookLexicons;
  MEMORY[0x26D6C0680](&v27, &v36);
  v30 = v26;
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v28)
  {
    v12 = v28;
  }

  else
  {
    v12 = &v29;
  }

  v13 = KB::String::hash(v12, v27);
  v14 = v13;
  v15 = addressBookLexicons[1];
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v15 <= v13)
    {
      v18 = v13 % v15;
    }
  }

  else
  {
    v18 = (v15 - 1) & v13;
  }

  v19 = *(*addressBookLexicons + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= v15)
      {
        v21 %= v15;
      }
    }

    else
    {
      v21 &= v15 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  if (v20 + 2 != &v27 && (KB::String::equal((v20 + 2), &v27) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(&v30 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v30 + 1));
  }

  KB::String::~String(&v27);
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v26 + 1));
  }

  KB::String::~String(v34);
  KB::String::~String(v35);

LABEL_36:
  v22 = std::__hash_table<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>>>::find<KB::String>(self->_addressBookLexicons, &v36);
  if (!v22)
  {
    abort();
  }

  (*(*v22[6] + 16))(&v27);
  v23 = *v27;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  KB::String::~String(&v36);
  return v23;
}

- (BOOL)searchForWordCaseInsensitive:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(TITransientLexiconManagerMock *)self searchHelper:[(TITransientLexiconManagerMock *)self namedEntityLexicon] forWord:v4 caseSensitive:0];

  return self;
}

- (BOOL)searchForWord:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(TITransientLexiconManagerMock *)self searchHelper:[(TITransientLexiconManagerMock *)self namedEntityLexicon] forWord:v4 caseSensitive:1];

  return self;
}

- (BOOL)searchHelper:(_LXLexicon *)a3 forWord:(__CFString *)a4 caseSensitive:(BOOL)a5
{
  if (!a3)
  {
    v11 = 0;
    return v11 & 1;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TITransientLexiconManagerMock_searchHelper_forWord_caseSensitive___block_invoke;
  v13[3] = &unk_279DA0630;
  v14 = a5;
  v13[4] = &v15;
  v13[5] = a4;
  v7 = v13;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getLXLexiconEnumerateEntriesForStringSymbolLoc(void)::ptr;
  v27 = getLXLexiconEnumerateEntriesForStringSymbolLoc(void)::ptr;
  if (!getLXLexiconEnumerateEntriesForStringSymbolLoc(void)::ptr)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = ___ZL46getLXLexiconEnumerateEntriesForStringSymbolLocv_block_invoke;
    v22 = &unk_279DA0658;
    v23 = &v24;
    v9 = LexiconLibrary();
    v10 = dlsym(v9, "LXLexiconEnumerateEntriesForString");
    *(v23[1] + 24) = v10;
    getLXLexiconEnumerateEntriesForStringSymbolLoc(void)::ptr = *(v23[1] + 24);
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v8)
  {
    v8(a3, a4, v7);

    v11 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
    return v11 & 1;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void __68__TITransientLexiconManagerMock_searchHelper_forWord_caseSensitive___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getLXEntryCopyStringSymbolLoc(void)::ptr;
  v13 = getLXEntryCopyStringSymbolLoc(void)::ptr;
  if (!getLXEntryCopyStringSymbolLoc(void)::ptr)
  {
    v7 = LexiconLibrary();
    v11[3] = dlsym(v7, "LXEntryCopyString");
    getLXEntryCopyStringSymbolLoc(void)::ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    dlerror();
    v9 = abort_report_np();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v8 = v6(a2);
  if (CFStringCompare(v8, *(a1 + 40), *(a1 + 48) ^ 1) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  CFRelease(v8);
}

- (void)removeContactObserver:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  observers = obj->_observers;
  v6 = MEMORY[0x26D6C0D70](v4);

  [(NSMutableArray *)observers removeObjectIdenticalTo:v6];
  objc_sync_exit(obj);
}

- (void)setNewContactCollection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_contactCollection, a3);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)addContactObserver:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = self;
  objc_sync_enter(v6);
  observers = v6->_observers;
  v8 = MEMORY[0x26D6C0D70](v5);
  [(NSMutableArray *)observers addObject:v8];

  objc_sync_exit(v6);
  (v5)[2](v5, v6->_contactCollection);
  v9 = MEMORY[0x26D6C0D70](v5);

  return v9;
}

- (void)dealloc
{
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

  addressBookLexicons = self->_addressBookLexicons;
  if (addressBookLexicons)
  {
    v6 = addressBookLexicons[2];
    if (v6)
    {
      do
      {
        v7 = *v6;
        std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair((v6 + 2));
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = *addressBookLexicons;
    *addressBookLexicons = 0;
    if (v8)
    {
      operator delete(v8);
    }

    MEMORY[0x26D6C07C0](addressBookLexicons, 0x10A0C408EF24B1CLL);
  }

  appNameLexicons = self->_appNameLexicons;
  if (appNameLexicons)
  {
    v10 = appNameLexicons[2];
    if (v10)
    {
      do
      {
        v11 = *v10;
        std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair((v10 + 2));
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    v12 = *appNameLexicons;
    *appNameLexicons = 0;
    if (v12)
    {
      operator delete(v12);
    }

    MEMORY[0x26D6C07C0](appNameLexicons, 0x10A0C408EF24B1CLL);
  }

  v13.receiver = self;
  v13.super_class = TITransientLexiconManagerMock;
  [(TITransientLexiconManagerMock *)&v13 dealloc];
}

- (TITransientLexiconManagerMock)initWithTransientData:(id)a3 namedEntities:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = TITransientLexiconManagerMock;
  v8 = [(TITransientLexiconManagerMock *)&v43 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactCollection, a3);
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = getkLXLexiconNameKey();
    CFDictionaryAddValue(Mutable, v12, @"InputContext-NamedEntityWords");
    v13 = getkLXLexiconLocaleKey();
    CFDictionaryAddValue(Mutable, v13, @"en_US");
    v42 = 0;
    v9->_namedEntityLexiconRef = __LXLexiconCreateTransient(Mutable, &v42);
    CFRelease(Mutable);
    v14 = v42;
    if (v42)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "[TITransientLexiconManagerMock initWithTransientData:namedEntities:]";
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&dword_26D490000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Error: Unable to create transient mutable lexicon for named entities: %@", buf, 0x16u);
        v14 = v42;
      }

      CFRelease(v14);
    }

    v15 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v16 = getkLXLexiconNameKey();
    CFDictionaryAddValue(v15, v16, @"InputContext-NamedEntityPhrases");
    v17 = getkLXLexiconLocaleKey();
    CFDictionaryAddValue(v15, v17, @"en_US");
    v41 = 0;
    v9->_namedEntityPhraseLexiconRef = __LXLexiconCreateTransient(v15, &v41);
    CFRelease(v15);
    v18 = v41;
    if (v41)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v47 = "[TITransientLexiconManagerMock initWithTransientData:namedEntities:]";
        v48 = 2112;
        v49 = v18;
        _os_log_impl(&dword_26D490000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Error: Unable to create transient mutable lexicon for named entity phrases: %@", buf, 0x16u);
        v18 = v41;
      }

      CFRelease(v18);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:{16, v32}];
    if (v20)
    {
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = [TITransientLexiconManagerMock tokenizeEntity:v23];
          if ([v24 count] >= 2)
          {
            [(TITransientLexiconManagerMock *)v9 addEntry:v23 toLexicon:v9->_namedEntityPhraseLexiconRef];
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v33 objects:v44 count:16];
          if (v26)
          {
            v27 = *v34;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v34 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                [(TITransientLexiconManagerMock *)v9 addEntry:*(*(&v33 + 1) + 8 * j) toLexicon:v9->_namedEntityLexiconRef];
              }

              v26 = [v25 countByEnumeratingWithState:&v33 objects:v44 count:16];
            }

            while (v26);
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v20);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v9->_observers;
    v9->_observers = v29;

    operator new();
  }

  return 0;
}

- (void)addEntry:(id)a3 toLexicon:(_LXLexicon *)a4
{
  v5 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getLXLexiconAddSymbolLoc(void)::ptr;
  v13 = getLXLexiconAddSymbolLoc(void)::ptr;
  if (!getLXLexiconAddSymbolLoc(void)::ptr)
  {
    v7 = LexiconLibrary();
    v11[3] = dlsym(v7, "LXLexiconAdd");
    getLXLexiconAddSymbolLoc(void)::ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    goto LABEL_8;
  }

  v6(a4, v5, 0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v8 = getLXLexiconIncrementUsageCountSymbolLoc(void)::ptr;
  v13 = getLXLexiconIncrementUsageCountSymbolLoc(void)::ptr;
  if (!getLXLexiconIncrementUsageCountSymbolLoc(void)::ptr)
  {
    v9 = LexiconLibrary();
    v11[3] = dlsym(v9, "LXLexiconIncrementUsageCount");
    getLXLexiconIncrementUsageCountSymbolLoc(void)::ptr = v11[3];
    v8 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v8)
  {
    v8(a4, v5, 1);
  }

  else
  {
LABEL_8:
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

- (TITransientLexiconManagerMock)init
{
  v4.receiver = self;
  v4.super_class = TITransientLexiconManagerMock;
  v2 = [(TITransientLexiconManagerMock *)&v4 init];
  if (v2)
  {
    v2->_namedEntityLexiconRef = 0;
    v2->_namedEntityPhraseLexiconRef = 0;
    operator new();
  }

  return 0;
}

+ (id)tokenizeEntity:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 stringByAppendingString:@" "];

  v6 = [v5 length];
  v7 = [v5 length];
  MEMORY[0x28223BE20]();
  v13[0] = [v5 length];
  [v5 getBytes:v11 - ((4 * v6 + 15) & 0xFFFFFFFFFFFFFFF0) maxLength:4 * v6 usedLength:v13 encoding:4 options:0 range:0 remainingRange:{v7, 0}];
  v8 = CFLocaleCreate(0, @"en_US");
  LMStreamTokenizerCreate();
  v11[1] = MEMORY[0x277D85DD0];
  v11[2] = 3221225472;
  v11[3] = __48__TITransientLexiconManagerMock_tokenizeEntity___block_invoke;
  v11[4] = &unk_279DA0608;
  v9 = v4;
  v12 = v9;
  LMStreamTokenizerPushBytes();
  LMStreamTokenizerRelease();
  CFRelease(v8);

  return v9;
}

void __48__TITransientLexiconManagerMock_tokenizeEntity___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 500) <= 0xFFFFFE0C)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    [*(a1 + 32) addObject:?];
  }
}

@end