@interface TIDPBiomeNamedEntityTokenRecorder
- (BOOL)report;
- (BOOL)shouldSkipWordEntry:(id)a3;
- (id)delegate;
- (id)filterTokenFrequencies:(id)a3 forTokenClass:(unsigned int)a4;
- (id)records;
@end

@implementation TIDPBiomeNamedEntityTokenRecorder

- (BOOL)report
{
  v33 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(TIDPBiomeNamedEntityTokenRecorder *)self records];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 word];
        v11 = [v3 objectForKey:v10];

        if (v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        v13 = [v9 word];
        [v3 setObject:v12 forKey:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v14 = [(TIDPBiomeNamedEntityTokenRecorder *)self filterTokenFrequencies:v3 forTokenClass:68];
    v15 = [(TIDPBiomeNamedEntityTokenRecorder *)self filterTokenFrequencies:v3 forTokenClass:69];
    if ([v14 count] || objc_msgSend(v15, "count"))
    {
      v16 = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        if ([v14 count])
        {
          v18 = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
          v19 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
          v20 = [(TIDPBiomeNamedEntityTokenRecorder *)self givenNameRecordingKey];
          [v18 recordTokenFrequency:v14 withLocale:v19 withTokenType:v20];
        }

        if ([v15 count])
        {
          v21 = [(TIDPBiomeNamedEntityTokenRecorder *)self delegate];
          v22 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
          v23 = [(TIDPBiomeNamedEntityTokenRecorder *)self surnameRecordingKey];
          [v21 recordTokenFrequency:v15 withLocale:v22 withTokenType:v23];
        }
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)filterTokenFrequencies:(id)a3 forTokenClass:(unsigned int)a4
{
  v5 = a3;
  SharedVocabulary = LMVocabularyGetSharedVocabulary();
  v7 = [v5 allKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__TIDPBiomeNamedEntityTokenRecorder_filterTokenFrequencies_forTokenClass___block_invoke;
  v12[3] = &__block_descriptor_44_e35_B24__0__NSString_8__NSDictionary_16l;
  v12[4] = SharedVocabulary;
  v13 = a4;
  v8 = [MEMORY[0x277CCAC30] predicateWithBlock:v12];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  v10 = [v5 dictionaryWithValuesForKeys:v9];

  return v10;
}

BOOL __74__TIDPBiomeNamedEntityTokenRecorder_filterTokenFrequencies_forTokenClass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  LMVocabularyGetTokenIDForLemma();
  v3 = *(a1 + 32);
  return LMVocabularyGetClassForTokenID() == *(a1 + 40);
}

- (id)records
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [(TIDPRecorder *)self typingSessionAligned];
  v5 = [v4 alignedEntries];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v29 = *v38;
    v30 = self;
    do
    {
      v9 = 0;
      v31 = v7;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = [v10 originalWord];
        v12 = [v11 editedEntry];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v10 originalWord];
        }

        v15 = v14;

        if (![(TIDPBiomeNamedEntityTokenRecorder *)self shouldSkipWordEntry:v15])
        {
          v16 = [v15 acceptedString];
          v17 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
          v18 = [v16 componentsSeparatedByCharactersInSet:v17];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v34;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v34 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v33 + 1) + 8 * i);
                if ([v24 length])
                {
                  v25 = [TIDPWordRecord word:v24];
                  [v3 addObject:v25];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v21);
          }

          v8 = v29;
          self = v30;
          v7 = v31;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v26 = [v3 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)shouldSkipWordEntry:(id)a3
{
  v3 = [a3 acceptedCandidate];
  v4 = ([v3 sourceMask] & 8) == 0;

  return v4;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeNamedEntityTokenRecorder;
  v3 = [(TIDPRecorder *)&v9 delegate];

  if (!v3)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeNamedEntityTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeNamedEntityTokenRecorder;
  v5 = [(TIDPRecorder *)&v7 delegate];

  return v5;
}

@end