@interface WFSiriWorkflowVocabularyUpdater
- (WFSiriWorkflowVocabularyUpdater)initWithDatabaseProvider:(id)a3;
- (void)updateIfPossible;
@end

@implementation WFSiriWorkflowVocabularyUpdater

- (void)updateIfPossible
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(WFSiriWorkflowVocabularyUpdater *)self databaseProvider];
  v20 = 0;
  v4 = [v3 databaseWithError:&v20];
  v5 = v20;

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 sortedVisibleWorkflowsByLastRunOrModificationDateWithLimit:1000];
    v8 = [v7 descriptors];

    v9 = objc_alloc(MEMORY[0x277CBEB70]);
    v10 = [v8 if_map:&__block_literal_global_183];
    v11 = [v9 initWithArray:v10];

    v12 = [(WFSiriWorkflowVocabularyUpdater *)self speakableStrings];
    v13 = [v12 isEqualToOrderedSet:v11];

    if (v13)
    {
      v14 = getWFSiriVocabLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[WFSiriWorkflowVocabularyUpdater updateIfPossible]";
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Not syncing vocabulary to server, the shortcut names have not changed", buf, 0xCu);
      }
    }

    else
    {
      if ([v11 count] >= 0x3E9)
      {
        v16 = getWFSiriVocabLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v22 = "[WFSiriWorkflowVocabularyUpdater updateIfPossible]";
          _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_INFO, "%s Shortcut count >1000, some may be dropped", buf, 0xCu);
        }
      }

      v17 = getWFSiriVocabLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[WFSiriWorkflowVocabularyUpdater updateIfPossible]";
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, "%s Syncing vocabulary to server", buf, 0xCu);
      }

      [(WFSiriWorkflowVocabularyUpdater *)self setSpeakableStrings:v11];
      v18 = [MEMORY[0x277CD43E0] sharedVocabulary];
      [v18 setVocabulary:v11 ofType:50000];

      notify_post([*MEMORY[0x277D7A360] UTF8String]);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v15 = getWFSiriVocabLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[WFSiriWorkflowVocabularyUpdater updateIfPossible]";
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Failed to load database, not updating vocabulary, %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __51__WFSiriWorkflowVocabularyUpdater_updateIfPossible__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD4188];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];
  v6 = [v3 name];

  v7 = [v4 initWithVocabularyIdentifier:v5 spokenPhrase:v6 pronunciationHint:0];

  return v7;
}

- (WFSiriWorkflowVocabularyUpdater)initWithDatabaseProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFSiriWorkflowVocabularyUpdater.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];
  }

  v14.receiver = self;
  v14.super_class = WFSiriWorkflowVocabularyUpdater;
  v7 = [(WFSiriWorkflowVocabularyUpdater *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_databaseProvider, a3);
    v9 = objc_opt_new();
    speakableStrings = v8->_speakableStrings;
    v8->_speakableStrings = v9;

    v11 = v8;
  }

  return v8;
}

@end