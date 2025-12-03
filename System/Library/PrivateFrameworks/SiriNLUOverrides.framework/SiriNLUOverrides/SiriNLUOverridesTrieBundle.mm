@interface SiriNLUOverridesTrieBundle
+ (id)getTrieURLs:(id)ls;
- (id)fetchOverrideId:(id)id;
- (id)fetchOverrideIdArray:(id)array;
- (id)fetchRuleId:(id)id locale:(id)locale overrideNamespace:(int64_t)namespace;
- (id)fetchSerializedNluRequestRule:(id)rule;
- (id)fetchSerializedUserParse:(id)parse;
- (id)init:(id)init;
- (unint64_t)fetchOverrideTimeStamp:(id)stamp;
@end

@implementation SiriNLUOverridesTrieBundle

- (id)fetchRuleId:(id)id locale:(id)locale overrideNamespace:(int64_t)namespace
{
  v27 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  idCopy = id;
  v10 = objc_opt_new();
  v11 = [SiriNLUOverridesTrieBundle buildPatternTrieLookupKey:idCopy locale:localeCopy overrideNamespace:namespace];

  v12 = OverridesLogContext;
  if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "[SiriNLUOverridesTrieBundle fetchRuleId:locale:overrideNamespace:]";
    v25 = 2112;
    v26 = v11;
    _os_log_debug_impl(&dword_268086000, v12, OS_LOG_TYPE_DEBUG, "%s TrieOverrides: Starting to fetch rule Id for lookup key:%@", buf, 0x16u);
  }

  patternTrie = self->patternTrie;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__SiriNLUOverridesTrieBundle_fetchRuleId_locale_overrideNamespace___block_invoke;
  v20[3] = &unk_279C32C08;
  v21 = v11;
  v14 = v10;
  v22 = v14;
  v15 = v11;
  [(SiriNLUMarisaTrie *)patternTrie lookupKey:v15 resultBlock:v20];
  v16 = v22;
  v17 = v14;

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

void __67__SiriNLUOverridesTrieBundle_fetchRuleId_locale_overrideNamespace___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriNLUOverridesTrieBundle fetchRuleId:locale:overrideNamespace:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_268086000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: PatternTrie returns nil binary for lookup key:%@, exit early from the callback to prevent crash", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)fetchSerializedUserParse:(id)parse
{
  parseCopy = parse;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  userParseTrie = self->userParseTrie;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SiriNLUOverridesTrieBundle_fetchSerializedUserParse___block_invoke;
  v9[3] = &unk_279C32BE0;
  v6 = parseCopy;
  v10 = v6;
  v11 = &v12;
  [(SiriNLUMarisaTrie *)userParseTrie lookupKey:v6 resultBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__SiriNLUOverridesTrieBundle_fetchSerializedUserParse___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriNLUOverridesTrieBundle fetchSerializedUserParse:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_268086000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: UserParseTrie returns nil binary for overrideId:%@, exit early  from the callback to prevent crash", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)fetchOverrideTimeStamp:(id)stamp
{
  stampCopy = stamp;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  overrideTimeStampTrie = self->overrideTimeStampTrie;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SiriNLUOverridesTrieBundle_fetchOverrideTimeStamp___block_invoke;
  v9[3] = &unk_279C32C30;
  v6 = stampCopy;
  v10 = v6;
  v11 = v13;
  v12 = &v15;
  [(SiriNLUMarisaTrie *)overrideTimeStampTrie lookupKey:v6 resultBlock:v9];
  v7 = v16[3];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __53__SiriNLUOverridesTrieBundle_fetchOverrideTimeStamp___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (*(*(a1[5] + 8) + 24) != 1)
    {
      [v3 getBytes:*(a1[6] + 8) + 24 length:8];
      *(*(a1[5] + 8) + 24) = 1;
      goto LABEL_9;
    }

    v5 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[SiriNLUOverridesTrieBundle fetchOverrideTimeStamp:]_block_invoke";
      v6 = "%s [ERR]: OverrideId has multiple time stamps! Possibly mal-formed data, exit early from the callback and will return the first value looked up";
      v7 = v5;
      v8 = 12;
LABEL_7:
      _os_log_error_impl(&dword_268086000, v7, OS_LOG_TYPE_ERROR, v6, &v12, v8);
    }
  }

  else
  {
    v9 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v12 = 136315394;
      v13 = "[SiriNLUOverridesTrieBundle fetchOverrideTimeStamp:]_block_invoke";
      v14 = 2112;
      v15 = v10;
      v6 = "%s [ERR]: TimeStampTrie returns nil binary for overrideId:%@, exit early  from the callback to prevent crash";
      v7 = v9;
      v8 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchOverrideIdArray:(id)array
{
  arrayCopy = array;
  v5 = objc_opt_new();
  overrideIdTrie = self->overrideIdTrie;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SiriNLUOverridesTrieBundle_fetchOverrideIdArray___block_invoke;
  v12[3] = &unk_279C32C08;
  v13 = arrayCopy;
  v7 = v5;
  v14 = v7;
  v8 = arrayCopy;
  [(SiriNLUMarisaTrie *)overrideIdTrie lookupKey:v8 resultBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __51__SiriNLUOverridesTrieBundle_fetchOverrideIdArray___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriNLUOverridesTrieBundle fetchOverrideIdArray:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_268086000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: OverrideIdTrie returns nil binary for ruleId:%@, exit early from the callback to prevent crash", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)fetchOverrideId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SiriNLUOverridesTrieBundle *)self fetchOverrideIdArray:id];
  if ([v3 count])
  {
    lastObject = [v3 lastObject];
    if ([v3 count] >= 2)
    {
      v5 = OverridesLogContext;
      if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
      {
        v6 = v5;
        v10 = 136315650;
        v11 = "[SiriNLUOverridesTrieBundle fetchOverrideId:]";
        v12 = 2048;
        v13 = [v3 count];
        v14 = 2112;
        v15 = lastObject;
        _os_log_error_impl(&dword_268086000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: OverrrideId has multiple values (length:%lu), possibly mal-formed data, returning the last one from the array. OverrideId returned:%@. ", &v10, 0x20u);
      }
    }
  }

  else
  {
    v7 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[SiriNLUOverridesTrieBundle fetchOverrideId:]";
      _os_log_impl(&dword_268086000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: OverrideId not found, returning nil", &v10, 0xCu);
    }

    lastObject = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return lastObject;
}

- (id)fetchSerializedNluRequestRule:(id)rule
{
  ruleCopy = rule;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  ruleTrie = self->ruleTrie;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SiriNLUOverridesTrieBundle_fetchSerializedNluRequestRule___block_invoke;
  v9[3] = &unk_279C32BE0;
  v6 = ruleCopy;
  v10 = v6;
  v11 = &v12;
  [(SiriNLUMarisaTrie *)ruleTrie lookupKey:v6 resultBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__SiriNLUOverridesTrieBundle_fetchSerializedNluRequestRule___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SiriNLUOverridesTrieBundle fetchSerializedNluRequestRule:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_268086000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: SerializedRuleTrie returns nil binary for ruleId:%@, exit early from the callback to prevent crash", &v8, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)init:(id)init
{
  v39 = *MEMORY[0x277D85DE8];
  initCopy = init;
  +[SiriNLUOverridesLogging SiriNLUOverridesLogInitIfNeeded];
  v34.receiver = self;
  v34.super_class = SiriNLUOverridesTrieBundle;
  v5 = [(SiriNLUOverridesTrieBundle *)&v34 init];
  if (v5)
  {
    v6 = [SiriNLUOverridesTrieBundle getTrieURLs:initCopy];
    v7 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v36 = "[SiriNLUOverridesTrieBundle init:]";
      v37 = 2112;
      v38 = v6;
      _os_log_debug_impl(&dword_268086000, v7, OS_LOG_TYPE_DEBUG, "%s TrieOverrides: Reading Overrrides trie from %@", buf, 0x16u);
    }

    v8 = [SiriNLUMarisaTrie alloc];
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [(SiriNLUMarisaTrie *)v8 initWithURL:v9];
    ruleTrie = v5->ruleTrie;
    v5->ruleTrie = v10;

    v12 = [SiriNLUMarisaTrie alloc];
    v13 = [v6 objectAtIndexedSubscript:1];
    v14 = [(SiriNLUMarisaTrie *)v12 initWithURL:v13];
    patternTrie = v5->patternTrie;
    v5->patternTrie = v14;

    v16 = [SiriNLUMarisaTrie alloc];
    v17 = [v6 objectAtIndexedSubscript:2];
    v18 = [(SiriNLUMarisaTrie *)v16 initWithURL:v17];
    overrideIdTrie = v5->overrideIdTrie;
    v5->overrideIdTrie = v18;

    v20 = [SiriNLUMarisaTrie alloc];
    v21 = [v6 objectAtIndexedSubscript:3];
    v22 = [(SiriNLUMarisaTrie *)v20 initWithURL:v21];
    userParseTrie = v5->userParseTrie;
    v5->userParseTrie = v22;

    v24 = [SiriNLUMarisaTrie alloc];
    v25 = [v6 objectAtIndexedSubscript:4];
    v26 = [(SiriNLUMarisaTrie *)v24 initWithURL:v25];
    overrideTimeStampTrie = v5->overrideTimeStampTrie;
    v5->overrideTimeStampTrie = v26;

    if (v5->ruleTrie && v5->patternTrie && v5->overrideIdTrie && v5->userParseTrie && v5->overrideTimeStampTrie)
    {
      v28 = OverridesLogContext;
      if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[SiriNLUOverridesTrieBundle init:]";
        _os_log_impl(&dword_268086000, v28, OS_LOG_TYPE_INFO, "%s TrieOverrides: Successfully initialized", buf, 0xCu);
      }

      v29 = v5;
    }

    else
    {
      v30 = OverridesLogContext;
      if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v36 = "[SiriNLUOverridesTrieBundle init:]";
        _os_log_error_impl(&dword_268086000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: TrieOverrides: Failing to init without required assets", buf, 0xCu);
      }

      v29 = 0;
    }
  }

  else
  {
    v31 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[SiriNLUOverridesTrieBundle init:]";
      _os_log_error_impl(&dword_268086000, v31, OS_LOG_TYPE_ERROR, "%s [ERR]: TrieOverrides: Unable to initialized for unknown reasons", buf, 0xCu);
    }

    v29 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (id)getTrieURLs:(id)ls
{
  lsCopy = ls;
  v15 = [lsCopy stringByAppendingPathComponent:@"rule_id_to_serialized_rule.trie"];
  v4 = [lsCopy stringByAppendingPathComponent:@"pattern_to_rule_id.trie"];
  v5 = [lsCopy stringByAppendingPathComponent:@"rule_id_to_override_id.trie"];
  v6 = [lsCopy stringByAppendingPathComponent:@"override_id_to_serialized_parse.trie"];
  v7 = [lsCopy stringByAppendingPathComponent:@"override_id_to_timestamp.trie"];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, v9, v10, v11, v12, 0}];

  return v13;
}

@end