@interface RKPersistentPersonalizer
+ (id)nonEmptyStringsPredicate;
- (NSDate)lastDynamicDataCreationCheckDate;
- (NSDate)lastObservedDynamicDataCreationDate;
- (RKPersistentPersonalizer)initWithLanguageIdentifier:(id)identifier andDynamicDataURL:(id)l displayStringsProvider:(id)provider;
- (id)dynamicDataCreationDate;
- (id)headwordsForSynonym:(id)synonym;
- (id)headwordsForSynonymPrefix:(id)prefix;
- (id)topSynonymsForSpeechAct:(id)act headword:(id)headword recipientContext:(id)context maxCount:(unint64_t)count;
- (void)createLanguageModel;
- (void)dealloc;
- (void)flushDynamicData;
- (void)initializeDynamicLanguageModel;
- (void)model;
- (void)trainSynonymForSpeechAct:(id)act headword:(id)headword userResponse:(id)response recipientContext:(id)context weight:(unint64_t)weight effectiveDate:(id)date;
@end

@implementation RKPersistentPersonalizer

+ (id)nonEmptyStringsPredicate
{
  if (nonEmptyStringsPredicate_onceToken != -1)
  {
    +[RKPersistentPersonalizer nonEmptyStringsPredicate];
  }

  v3 = nonEmptyStringsPredicate_sNonEmptyStringsPredicate;

  return v3;
}

uint64_t __52__RKPersistentPersonalizer_nonEmptyStringsPredicate__block_invoke()
{
  nonEmptyStringsPredicate_sNonEmptyStringsPredicate = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];

  return MEMORY[0x2821F96F8]();
}

- (RKPersistentPersonalizer)initWithLanguageIdentifier:(id)identifier andDynamicDataURL:(id)l displayStringsProvider:(id)provider
{
  identifierCopy = identifier;
  lCopy = l;
  providerCopy = provider;
  v30.receiver = self;
  v30.super_class = RKPersistentPersonalizer;
  v12 = [(RKPersistentPersonalizer *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_languageID, identifier);
    v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifierCopy];
    languageLocale = v13->_languageLocale;
    v13->_languageLocale = v14;

    objc_storeStrong(&v13->_dynamicDataURL, l);
    if (!v13->_dynamicDataURL)
    {
      v16 = NSHomeDirectory();
      v17 = [v16 stringByAppendingPathComponent:@"Library/ResponseKit"];

      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:1];
      dynamicDataURL = v13->_dynamicDataURL;
      v13->_dynamicDataURL = v18;
    }

    objc_storeStrong(&v13->_displayStringsProvider, provider);
    v13->_model = [(RKPersistentPersonalizer *)v13 createLanguageModel];
    dynamicDataCreationDate = [(RKPersistentPersonalizer *)v13 dynamicDataCreationDate];
    objc_storeWeak(&v13->_lastObservedDynamicDataCreationDate, dynamicDataCreationDate);

    date = [MEMORY[0x277CBEAA8] date];
    objc_storeWeak(&v13->_lastDynamicDataCreationCheckDate, date);

    if (!v13->_model)
    {
      v28 = 0;
      goto LABEL_10;
    }

    languageID = [(RKPersistentPersonalizer *)v13 languageID];
    v23 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:languageID];

    v24 = +[RKAssets synonyms];
    v25 = [v24 objectForKeyedSubscript:v23];
    synonyms = v13->_synonyms;
    v13->_synonyms = v25;

    model = v13->_model;
    if (LMLanguageModelDynamicModelIsEmpty())
    {
      [(RKPersistentPersonalizer *)v13 initializeDynamicLanguageModel];
    }
  }

  v28 = v13;
LABEL_10:

  return v28;
}

- (id)dynamicDataCreationDate
{
  [(RKPersistentPersonalizer *)self model];
  v2 = LMLanguageModelCopyDynamicModelBundlePath();
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [defaultManager attributesOfItemAtPath:v2 error:0];

    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)model
{
  date = [MEMORY[0x277CBEAA8] date];
  lastDynamicDataCreationCheckDate = [(RKPersistentPersonalizer *)self lastDynamicDataCreationCheckDate];
  if (!lastDynamicDataCreationCheckDate || (v5 = lastDynamicDataCreationCheckDate, -[RKPersistentPersonalizer lastDynamicDataCreationCheckDate](self, "lastDynamicDataCreationCheckDate"), v6 = objc_claimAutoreleasedReturnValue(), [date timeIntervalSinceDate:v6], v8 = v7, v6, v5, v8 > 3600.0))
  {
    [(RKPersistentPersonalizer *)self setLastDynamicDataCreationCheckDate:date];
    dynamicDataCreationDate = [(RKPersistentPersonalizer *)self dynamicDataCreationDate];
    if (dynamicDataCreationDate)
    {
      lastObservedDynamicDataCreationDate = [(RKPersistentPersonalizer *)self lastObservedDynamicDataCreationDate];
      v11 = [dynamicDataCreationDate isEqualToDate:lastObservedDynamicDataCreationDate];

      if ((v11 & 1) == 0)
      {
        if ([(RKPersistentPersonalizer *)self model])
        {
          model = self->_model;
          LMLanguageModelRelease();
          self->_model = 0;
        }

        self->_model = [(RKPersistentPersonalizer *)self createLanguageModel];
        [(RKPersistentPersonalizer *)self setLastObservedDynamicDataCreationDate:dynamicDataCreationDate];
      }
    }

    else
    {
      if ([(RKPersistentPersonalizer *)self model])
      {
        v13 = self->_model;
        LMLanguageModelRelease();
      }

      self->_model = 0;
    }
  }

  v14 = self->_model;

  return v14;
}

- (void)initializeDynamicLanguageModel
{
  v55 = *MEMORY[0x277D85DE8];
  p_displayStringsProvider = &self->_displayStringsProvider;
  displayStringsProvider = self->_displayStringsProvider;
  languageID = [(RKPersistentPersonalizer *)self languageID];
  v32 = [(RKDisplayStringsProvider *)displayStringsProvider displayStringsForPlatform:@"iOS" languageID:languageID];

  v6 = *p_displayStringsProvider;
  languageID2 = [(RKPersistentPersonalizer *)self languageID];
  v29 = [(RKDisplayStringsProvider *)v6 displayStringsForPlatform:@"watchOS" languageID:languageID2];

  v8 = MEMORY[0x277CBEB98];
  allKeys = [v32 allKeys];
  v10 = [v8 setWithArray:allKeys];
  allKeys2 = [v29 allKeys];
  v12 = [v10 setByAddingObjectsFromArray:allKeys2];
  allObjects = [v12 allObjects];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = allObjects;
  v33 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v33)
  {
    v31 = *v50;
    do
    {
      v14 = 0;
      do
      {
        if (*v50 != v31)
        {
          v15 = v14;
          objc_enumerationMutation(obj);
          v14 = v15;
        }

        v34 = v14;
        v16 = *(*(&v49 + 1) + 8 * v14);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v35 = [v32 objectForKeyedSubscript:v16];
        v17 = [v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v17)
        {
          v18 = *v46;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v35);
              }

              v20 = *(*(&v45 + 1) + 8 * i);
              v21 = [RKUtilities normalizeForPersonalization:v20];
              v22 = [(RKPersistentPersonalizer *)self headwordsForSynonym:v20];
              v39 = 0;
              v40 = &v39;
              v41 = 0x3032000000;
              v42 = __Block_byref_object_copy__0;
              v43 = __Block_byref_object_dispose__0;
              v44 = 0;
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = __58__RKPersistentPersonalizer_initializeDynamicLanguageModel__block_invoke;
              v36[3] = &unk_279B10398;
              v23 = v21;
              v37 = v23;
              v38 = &v39;
              [v22 enumerateKeysAndObjectsUsingBlock:v36];
              v24 = v40[5];
              if (v24)
              {
                goto LABEL_13;
              }

              allKeys3 = [v22 allKeys];
              v26 = [allKeys3 objectAtIndexedSubscript:0];
              v27 = v40[5];
              v40[5] = v26;

              v24 = v40[5];
              if (v24)
              {
LABEL_13:
                [(RKPersistentPersonalizer *)self trainSynonymForSpeechAct:v16 headword:v24 userResponse:v20 recipientContext:0 weight:3 effectiveDate:0];
              }

              _Block_object_dispose(&v39, 8);
            }

            v17 = [v35 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v17);
        }

        v14 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v33);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __58__RKPersistentPersonalizer_initializeDynamicLanguageModel__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [RKUtilities normalizeForPersonalization:?];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)trainSynonymForSpeechAct:(id)act headword:(id)headword userResponse:(id)response recipientContext:(id)context weight:(unint64_t)weight effectiveDate:(id)date
{
  v38[3] = *MEMORY[0x277D85DE8];
  actCopy = act;
  headwordCopy = headword;
  responseCopy = response;
  contextCopy = context;
  dateCopy = date;
  [(RKPersistentPersonalizer *)self model];
  v19 = *MEMORY[0x277D230F0];
  LMLanguageModelSetParameterValue();
  v35 = actCopy;
  actCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"A:%@", actCopy];
  v38[0] = actCopy;
  v34 = headwordCopy;
  headwordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"H:%@", headwordCopy];
  v38[1] = headwordCopy;
  v38[2] = responseCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  v33[1] = v33;
  v23 = v33 - ((4 * [v22 count] + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v22 count])
  {
    v24 = 0;
    do
    {
      [(RKPersistentPersonalizer *)self model];
      v25 = [v22 objectAtIndexedSubscript:v24];
      TokenIDForString = LMLanguageModelGetTokenIDForString();

      *buf = TokenIDForString;
      if (!TokenIDForString)
      {
        [(RKPersistentPersonalizer *)self model];
        v27 = [v22 objectAtIndexedSubscript:v24];
        LMLanguageModelAddTokenForString();

        TokenIDForString = *buf;
      }

      *&v23[4 * v24++] = TokenIDForString;
    }

    while (v24 < [v22 count]);
  }

  [dateCopy timeIntervalSinceReferenceDate];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = [v22 count];
    *buf = 134217984;
    v37 = v28;
    _os_log_impl(&dword_2620A2000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "updating dynamic lm with [%lu] candidate ngrams", buf, 0xCu);
  }

  if (weight)
  {
    v29 = 0;
    do
    {
      if ([v22 count])
      {
        v30 = 0;
        do
        {
          [(RKPersistentPersonalizer *)self model];
          v31 = *&v23[4 * v30];
          if (dateCopy)
          {
            LMLanguageModelIncrementUsageCountWithEffectiveTime();
          }

          else
          {
            LMLanguageModelIncrementUsageCount();
          }

          ++v30;
        }

        while (v30 < [v22 count]);
      }

      ++v29;
    }

    while (v29 != weight);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)topSynonymsForSpeechAct:(id)act headword:(id)headword recipientContext:(id)context maxCount:(unint64_t)count
{
  countCopy = count;
  v38[2] = *MEMORY[0x277D85DE8];
  actCopy = act;
  headwordCopy = headword;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  [(RKPersistentPersonalizer *)self model];
  v13 = *MEMORY[0x277D230F0];
  LMLanguageModelSetParameterValue();
  actCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"A:%@", actCopy];
  v38[0] = actCopy;
  headwordCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"H:%@", headwordCopy];
  v38[1] = headwordCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  v30 = &v27;
  v17 = &v27 - ((4 * [v16 count] + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v16 count])
  {
    goto LABEL_5;
  }

  v28 = contextCopy;
  v18 = array;
  v19 = headwordCopy;
  v20 = actCopy;
  v21 = 0;
  v22 = 1;
  do
  {
    [(RKPersistentPersonalizer *)self model];
    v23 = [v16 objectAtIndexedSubscript:v21];
    TokenIDForString = LMLanguageModelGetTokenIDForString();

    *&v17[4 * v21] = TokenIDForString;
    v22 &= TokenIDForString != 0;
    ++v21;
  }

  while (v21 < [v16 count]);
  actCopy = v20;
  headwordCopy = v19;
  array = v18;
  contextCopy = v28;
  if (v22)
  {
LABEL_5:
    [(RKPersistentPersonalizer *)self model];
    [v16 count];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __87__RKPersistentPersonalizer_topSynonymsForSpeechAct_headword_recipientContext_maxCount___block_invoke;
    v34 = &unk_279B103C0;
    selfCopy = self;
    v36 = array;
    v37 = countCopy;
    LMLanguageModelEnumeratePredictionsWithBlock();
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

void __87__RKPersistentPersonalizer_topSynonymsForSpeechAct_headword_recipientContext_maxCount___block_invoke(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  [*(a1 + 32) model];
  v8 = *a2;
  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if (StringForTokenID)
  {
    [*(a1 + 40) addObject:StringForTokenID];
  }

  *a5 = [*(a1 + 40) count] >= *(a1 + 48);
}

- (void)createLanguageModel
{
  v3 = MEMORY[0x277CBEAF8];
  languageID = [(RKPersistentPersonalizer *)self languageID];
  v5 = [v3 localeWithLocaleIdentifier:languageID];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithObject:v5 forKey:*MEMORY[0x277D230E0]];
    v7 = MEMORY[0x277CBEC28];
    [v6 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D23110]];
    [v6 setObject:v7 forKey:*MEMORY[0x277D23100]];
    [v6 setObject:@"com.apple.MobileSMS" forKey:*MEMORY[0x277D23088]];
    dynamicDataURL = [(RKPersistentPersonalizer *)self dynamicDataURL];
    [v6 setObject:dynamicDataURL forKey:*MEMORY[0x277D23098]];

    [v6 setObject:v7 forKey:*MEMORY[0x277D230D8]];
    v9 = LMLanguageModelCreate();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_model)
  {
    LMLanguageModelRelease();
    self->_model = 0;
  }

  synonyms = self->_synonyms;
  self->_synonyms = 0;

  v4.receiver = self;
  v4.super_class = RKPersistentPersonalizer;
  [(RKPersistentPersonalizer *)&v4 dealloc];
}

- (id)headwordsForSynonym:(id)synonym
{
  synonymCopy = synonym;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if ([synonymCopy length])
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v6 = [synonymCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    nonEmptyStringsPredicate = [objc_opt_class() nonEmptyStringsPredicate];
    v8 = [v6 filteredArrayUsingPredicate:nonEmptyStringsPredicate];
    v9 = [v8 componentsJoinedByString:@" "];

    v10 = [RKUtilities normalizeForPersonalization:v9];
    synonyms = [(RKPersistentPersonalizer *)self synonyms];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__RKPersistentPersonalizer_headwordsForSynonym___block_invoke;
    v15[3] = &unk_279B103E8;
    v12 = v10;
    v16 = v12;
    v18 = &v19;
    synonymCopy = v9;
    v17 = synonymCopy;
    [synonyms enumerateKeysAndObjectsUsingBlock:v15];

    v13 = v20[5];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __48__RKPersistentPersonalizer_headwordsForSynonym___block_invoke(void *a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 containsObject:a1[4]])
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = *(a1[6] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(a1[6] + 8) + 40);
    }

    [v5 setObject:a1[5] forKeyedSubscript:v9];
  }
}

- (id)headwordsForSynonymPrefix:(id)prefix
{
  v4 = MEMORY[0x277CCA900];
  prefixCopy = prefix;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = [prefixCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  nonEmptyStringsPredicate = [objc_opt_class() nonEmptyStringsPredicate];
  v9 = [v7 filteredArrayUsingPredicate:nonEmptyStringsPredicate];
  v10 = [v9 componentsJoinedByString:@" "];

  v11 = [v10 componentsSeparatedByString:@" "];
  v12 = [v11 count];
  if (v12)
  {
    if (v12 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v12;
    }

    while (1)
    {
      v14 = [v11 subarrayWithRange:{0, v13}];
      v15 = [v14 componentsJoinedByString:@" "];

      punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
      v17 = [v15 stringByTrimmingCharactersInSet:punctuationCharacterSet];

      v18 = [(RKPersistentPersonalizer *)self headwordsForSynonym:v17];

      if (v18)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v18 = 0;
  }

  return v18;
}

- (void)flushDynamicData
{
  model = [(RKPersistentPersonalizer *)self model];

  MEMORY[0x282181938](model, 0);
}

- (NSDate)lastObservedDynamicDataCreationDate
{
  WeakRetained = objc_loadWeakRetained(&self->_lastObservedDynamicDataCreationDate);

  return WeakRetained;
}

- (NSDate)lastDynamicDataCreationCheckDate
{
  WeakRetained = objc_loadWeakRetained(&self->_lastDynamicDataCreationCheckDate);

  return WeakRetained;
}

@end