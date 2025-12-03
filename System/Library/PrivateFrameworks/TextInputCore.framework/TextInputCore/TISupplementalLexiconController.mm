@interface TISupplementalLexiconController
- (TISupplementalLexicon)activeLexicon;
- (TISupplementalLexiconController)initWithConnection:(id)connection;
- (TISupplementalLexiconControllerDelegate)delegate;
- (_LXLexicon)activePhraseLexicon;
- (_LXLexicon)activeWordLexicon;
- (id)identifiersOfItemsEqualToMecrabraCandidate:(id)candidate;
- (id)lexiconWithIdentifier:(unint64_t)identifier;
- (void)_sendActiveLexiconDidChangeNotification;
- (void)addLexicon:(id)lexicon;
- (void)clearActiveLexicon;
- (void)removeLexiconWithIdentifier:(unint64_t)identifier;
- (void)setActiveLexiconWithIdentifier:(unint64_t)identifier;
@end

@implementation TISupplementalLexiconController

- (TISupplementalLexiconControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)identifiersOfItemsEqualToMecrabraCandidate:(id)candidate
{
  v24 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  if (self->_activeLexiconIdentifier)
  {
    v5 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    lexicons = self->_lexicons;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_activeLexiconIdentifier, 0}];
    v8 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v7];
    items = [v8 items];

    v10 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(items);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 core_isEqualToMecabraCandidate:candidateCopy])
          {
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "identifier")}];
            [v5 addObject:v15];
          }
        }

        v11 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)lexiconWithIdentifier:(unint64_t)identifier
{
  lexicons = self->_lexicons;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v5 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v4];

  return v5;
}

- (_LXLexicon)activePhraseLexicon
{
  if (!self->_activeLexiconIdentifier)
  {
    return 0;
  }

  entityStores = self->_entityStores;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v4 = [(NSMutableDictionary *)entityStores objectForKeyedSubscript:v3];
  phraseLexicon = [v4 phraseLexicon];
  getLexiconImplementation = [phraseLexicon getLexiconImplementation];

  return getLexiconImplementation;
}

- (_LXLexicon)activeWordLexicon
{
  if (!self->_activeLexiconIdentifier)
  {
    return 0;
  }

  entityStores = self->_entityStores;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v4 = [(NSMutableDictionary *)entityStores objectForKeyedSubscript:v3];
  wordLexicon = [v4 wordLexicon];
  getLexiconImplementation = [wordLexicon getLexiconImplementation];

  return getLexiconImplementation;
}

- (void)clearActiveLexicon
{
  v3 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "Clear active lexicon", v6, 2u);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  self->_activeLexiconIdentifier = 0;
  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (void)_sendActiveLexiconDidChangeNotification
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = TISupplementalLexiconOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      activeLexicon = [self activeLexicon];
      *buf = 134217984;
      identifier = [activeLexicon identifier];
      _os_log_impl(&dword_22CA55000, v2, OS_LOG_TYPE_INFO, "Active supplemental lexicon did change (active identifier=%llu)", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    activeLexicon2 = [self activeLexicon];
    if (activeLexicon2)
    {
      activeLexicon3 = [self activeLexicon];
      v10 = activeLexicon3;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      [defaultCenter postNotificationName:@"TIActiveLexiconDidChangeNotification" object:self userInfo:v7];
    }

    else
    {
      [defaultCenter postNotificationName:@"TIActiveLexiconDidChangeNotification" object:self userInfo:MEMORY[0x277CBEC10]];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setActiveLexiconWithIdentifier:(unint64_t)identifier
{
  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  self->_activeLexiconIdentifier = identifier;
  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }
}

- (TISupplementalLexicon)activeLexicon
{
  if (self->_activeLexiconIdentifier)
  {
    lexicons = self->_lexicons;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v4 = [(NSMutableDictionary *)lexicons objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)removeLexiconWithIdentifier:(unint64_t)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "Remove supplemental lexicon with identifier=%llu", &v13, 0xCu);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  if (self->_activeLexiconIdentifier == identifier)
  {
    self->_activeLexiconIdentifier = 0;
  }

  entityStores = self->_entityStores;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  [(NSMutableDictionary *)entityStores removeObjectForKey:v8];

  lexicons = self->_lexicons;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  [(NSMutableDictionary *)lexicons removeObjectForKey:v10];

  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addLexicon:(id)lexicon
{
  v61 = *MEMORY[0x277D85DE8];
  lexiconCopy = lexicon;
  v5 = TISupplementalLexiconOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [lexiconCopy identifier];
    items = [lexiconCopy items];
    *buf = 134218240;
    v58 = identifier;
    v59 = 2048;
    v60 = [items count];
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "Add supplemental lexicon with identifier=%llu (#items=%lu)", buf, 0x16u);
  }

  activeLexicon = [(TISupplementalLexiconController *)self activeLexicon];
  if (self->_needsAtSignSearchPrefixQuirk && ![lexiconCopy searchPrefixes])
  {
    [lexiconCopy setSearchPrefixes:1];
  }

  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Supplemental-%d-%llu", self->_connectionIdentifier, objc_msgSend(lexiconCopy, "identifier")];
  items2 = [lexiconCopy items];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(items2, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = items2;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v48 + 1) + 8 * i) core_appendEntitiesToArray:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:buf count:16];
    }

    while (v12);
  }

  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  v17 = [MEMORY[0x277CBEB58] set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = enabledInputModeIdentifiers;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v44 + 1) + 8 * j);
        v24 = TIInputModeGetLanguageWithRegion();
        if (v24)
        {
          [v17 addObject:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v20);
  }

  v25 = [objc_alloc(MEMORY[0x277D1C0C0]) initWithName:v39];
  [v25 setMinimumWordLength:1];
  if (objc_opt_respondsToSelector())
  {
    [v25 setTreatHyphenatedWordAsPhrase:1];
  }

  v26 = [v17 copy];
  [v25 setAcceptedLanguages:v26];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v52 = 136315394;
    v53 = "TICreateNamedEntityStore";
    v54 = 2112;
    v55 = v17;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Setting the accepted languages as : %@", v52, 0x16u);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v27 = v9;
  v28 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [v25 addEntity:*(*(&v40 + 1) + 8 * k) isDurable:1];
      }

      v29 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v29);
  }

  entityStores = self->_entityStores;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lexiconCopy, "identifier")}];
  [(NSMutableDictionary *)entityStores setObject:v25 forKeyedSubscript:v33];

  lexicons = self->_lexicons;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(lexiconCopy, "identifier")}];
  [(NSMutableDictionary *)lexicons setObject:lexiconCopy forKeyedSubscript:v35];

  activeLexicon2 = [(TISupplementalLexiconController *)self activeLexicon];

  if (activeLexicon != activeLexicon2)
  {
    [(TISupplementalLexiconController *)self _sendActiveLexiconDidChangeNotification];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (TISupplementalLexiconController)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = TISupplementalLexiconController;
  v5 = [(TISupplementalLexiconController *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = *MEMORY[0x277CBECE8];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v9 = SecTaskCreateWithAuditToken(v8, &token);
    v10 = SecTaskCopySigningIdentifier(v9, 0);
    CFRelease(v9);
    *(v5 + 40) = [(__CFString *)v10 isEqualToString:@"com.apple.MobileSMS"];

    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    *(v5 + 11) = audit_token_to_pidversion(&token);
    v11 = objc_opt_new();
    v12 = *(v5 + 2);
    *(v5 + 2) = v11;

    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v13 = audit_token_to_pid(&token);
    v14 = dispatch_source_create(MEMORY[0x277D85D20], v13, 0x80000000uLL, MEMORY[0x277D85CD0]);
    v15 = *(v5 + 4);
    *(v5 + 4) = v14;

    objc_initWeak(&token, v5);
    v16 = *(v5 + 4);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__TISupplementalLexiconController_initWithConnection___block_invoke;
    v20[3] = &unk_278731338;
    objc_copyWeak(&v22, &token);
    v17 = v5;
    v21 = v17;
    dispatch_source_set_event_handler(v16, v20);
    dispatch_resume(*(v5 + 4));
    v18 = v17;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&token);
  }

  return v5;
}

void __54__TISupplementalLexiconController_initWithConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    dispatch_source_cancel(WeakRetained[4]);
    v3 = v6[4];
    v6[4] = 0;

    v6[3] = 0;
    [v6[2] removeAllObjects];
    v4 = objc_loadWeakRetained(v6 + 6);

    WeakRetained = v6;
    if (v4)
    {
      v5 = objc_loadWeakRetained(v6 + 6);
      [v5 supplementalLexiconControllerProcessDidTerminate:*(a1 + 32)];

      WeakRetained = v6;
    }
  }
}

@end