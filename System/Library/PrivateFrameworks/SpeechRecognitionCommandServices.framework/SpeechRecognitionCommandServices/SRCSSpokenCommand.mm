@interface SRCSSpokenCommand
- (SRCSSpokenCommand)initWithIdentifier:(id)a3;
- (SRCSSpokenCommand)initWithStrings:(id)a3;
- (id)_initWithSpokenCommand:(id)a3;
- (id)commandRecognizer;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fstGrammar;
- (id)languageModelTree;
- (void)_replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:(id)a3;
@end

@implementation SRCSSpokenCommand

- (SRCSSpokenCommand)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SRCSSpokenCommand;
  v6 = [(SRCSSpokenCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (SRCSSpokenCommand)initWithStrings:(id)a3
{
  v4 = a3;
  v5 = [(SRCSSpokenCommand *)self _uniqueCustomCommandIdentifier];
  v6 = [(SRCSSpokenCommand *)self initWithIdentifier:v5];

  strings = v6->_strings;
  v6->_strings = v4;

  return v6;
}

- (id)_initWithSpokenCommand:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SRCSSpokenCommand;
  v5 = [(SRCSSpokenCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 strings];
    strings = v5->_strings;
    v5->_strings = v8;

    v10 = [v4 commandRecognizer];
    objc_storeWeak(&v5->_commandRecognizer, v10);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 _initWithSpokenCommand:self];
}

- (id)commandRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);

  return WeakRetained;
}

- (id)languageModelTree
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_languageModelTree)
  {
    if ([(NSArray *)v2->_strings count])
    {
      v3 = [(NSArray *)v2->_strings componentsJoinedByString:@"|"];
      v26 = 0;
      v4 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v3 parsingErrorString:&v26];
      v5 = v26;

      if (v4 && ![v5 length])
      {
        [v4 setObject:v2->_identifier forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
        v19 = v4;
        p_super = &v2->_languageModelTree->super.super;
        v2->_languageModelTree = v19;
      }

      else
      {
        p_super = SRCSLogGeneral();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          identifier = v2->_identifier;
          v8 = [(NSArray *)v2->_strings componentsJoinedByString:@"|"];
          *buf = 138412802;
          v28 = identifier;
          v29 = 2112;
          v30 = v8;
          v31 = 2112;
          v32 = v5;
          _os_log_impl(&dword_26B44D000, p_super, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for (%@) %@: %@", buf, 0x20u);
        }
      }
    }

    else if ([(NSString *)v2->_identifier length])
    {
      WeakRetained = objc_loadWeakRetained(&v2->_commandRecognizer);
      v5 = [WeakRetained commandRecognitionSystem];

      v10 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
      v11 = [v5 localeIdentifier];
      v12 = [v10 commandStringsTableForLocaleIdentifier:v11];

      v13 = v2->_identifier;
      v14 = [v5 targetTypes];
      v25 = 0;
      v15 = [v12 languageModelDictionaryForCommandIdentifier:v13 targetTypes:v14 parsingErrorString:&v25];
      v16 = v25;

      if (v15 && ![v16 length])
      {
        [v15 setObject:v2->_identifier forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
        v21 = v15;
        v17 = &v2->_languageModelTree->super.super;
        v2->_languageModelTree = v21;
      }

      else
      {
        v17 = SRCSLogGeneral();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v2->_identifier;
          *buf = 138412546;
          v28 = v18;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_26B44D000, v17, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = SRCSLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v2->_identifier;
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_26B44D000, v5, OS_LOG_TYPE_DEFAULT, "Error found while creating language model for %@", buf, 0xCu);
      }
    }

    if (v2->_languageModelTree)
    {
      [(SRCSSpokenCommand *)v2 _replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:?];
    }
  }

  objc_sync_exit(v2);

  languageModelTree = v2->_languageModelTree;
  v23 = *MEMORY[0x277D85DE8];

  return languageModelTree;
}

- (void)_replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
  if (![v5 BOOLValue])
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = [v4 objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [v4 objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    if (v8)
    {
      v5 = v8;
      WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);
      v10 = [WeakRetained commandRecognitionSystem];
      v11 = [v10 languageModelTreeForBuiltInLMIdentifier:v5];

      if (v11)
      {
        [v4 removeAllObjects];
        [v4 addEntriesFromDictionary:v11];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v4 objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SRCSSpokenCommand *)self _replaceBuiltInIdentiferNodesWithSubTreesInMutableLM:*(*(&v18 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fstGrammar
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fstGrammar)
  {
    v3 = [(SRCSSpokenCommand *)v2 languageModelTree];
    if (v3)
    {
      v4 = [CMDPGrammar alloc];
      WeakRetained = objc_loadWeakRetained(&v2->_commandRecognizer);
      v6 = [WeakRetained commandRecognitionSystem];
      v7 = [v6 localeIdentifier];
      v8 = [(CMDPGrammar *)v4 initWithCommandTreeDictionary:v3 forLocaleIdentifier:v7];
      fstGrammar = v2->_fstGrammar;
      v2->_fstGrammar = v8;
    }
  }

  objc_sync_exit(v2);

  v10 = v2->_fstGrammar;

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SRCSSpokenCommand *)self identifier];
  v5 = [(SRCSSpokenCommand *)self strings];
  v6 = [v3 stringWithFormat:@"%@, %@, Rec Params: %@", v4, v5, self->_recognizedParameters];

  return v6;
}

@end