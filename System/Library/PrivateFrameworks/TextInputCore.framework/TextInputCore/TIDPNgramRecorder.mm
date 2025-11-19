@interface TIDPNgramRecorder
+ (void)enumerateNgramsFromSession:(id)a3 n:(unint64_t)a4 usingBlock:(id)a5;
- (BOOL)report;
- (id)_normalizedWordEntryStringForWordEntry:(id)a3;
- (id)delegate;
- (id)randomRecordsLimitedByCount:(unint64_t)a3;
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPNgramRecorder

- (id)_normalizedWordEntryStringForWordEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 originalWord];
  LOBYTE(self) = [(TIDPRecorder *)self isWordEntryReallyOOV:v5 caseSensitive:0];

  if (self)
  {
    v6 = @"u_token";
  }

  else
  {
    v7 = [v4 originalWord];
    v8 = [v7 acceptedString];

    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    v6 = [v10 lowercaseString];
  }

  return v6;
}

- (BOOL)report
{
  v59 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v40 = self;
  if ([(TIDPNgramRecorder *)self shouldDonateNgramSampleRandomly])
  {
    [(TIDPNgramRecorder *)self randomRecords];
  }

  else
  {
    [(TIDPNgramRecorder *)self records];
  }
  v3 = ;
  v41 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v51;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v8);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v46 objects:v57 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v47;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v47 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v46 + 1) + 8 * i) codedWord];
              if (v17)
              {
                [v11 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v46 objects:v57 count:16];
          }

          while (v14);
        }

        v18 = [v12 firstObject];
        v6 = [v18 coderVersion];

        [v41 addObject:v11];
        ++v8;
        v9 = v6;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v19 = [v41 copy];
  v20 = [v19 count];
  if (v20)
  {
    v35 = v20;
    v36 = v19;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obja = v19;
    v21 = [obja countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v42 + 1) + 8 * j);
          v26 = [v6 UUIDString];
          v27 = v26;
          v28 = @"UNKNOWN_VERSION";
          if (v26)
          {
            v28 = v26;
          }

          v29 = v28;

          v30 = [(TIDPNgramRecorder *)v40 delegate];
          v54 = @"VersionHash";
          v55 = v29;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          [v30 record:v25 metadata:v31];
        }

        v22 = [obja countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v22);
    }

    v20 = v35;
    v19 = v36;
  }

  v32 = v20 != 0;

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (id)randomRecordsLimitedByCount:(unint64_t)a3
{
  v5 = [(TIDPNgramRecorder *)self records];
  if ([v5 count] <= a3)
  {
    v15 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:a3];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    v8 = [(TIDPNgramRecorder *)self records];
    v9 = [v8 count];

    while ([v6 count] < a3)
    {
      v10 = arc4random_uniform(v9);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v12 = [v6 containsObject:v11];

      if ((v12 & 1) == 0 && [v5 count] >= v10)
      {
        v13 = [v5 objectAtIndex:v10];
        [v7 addObject:v13];
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        [v6 addObject:v14];
      }
    }

    v15 = [v7 copy];
  }

  return v15;
}

- (id)records
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(TIDPRecorder *)self wordCoder];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_opt_class();
    v6 = [(TIDPRecorder *)self typingSessionAligned];
    v7 = [(TIDPNgramRecorderCascading *)self n];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __28__TIDPNgramRecorder_records__block_invoke;
    v16 = &unk_278733278;
    v17 = self;
    v18 = v4;
    v8 = v4;
    [v5 enumerateNgramsFromSession:v6 n:v7 usingBlock:&v13];

    v9 = [v8 copy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      *buf = 136315394;
      v20 = "[TIDPNgramRecorder records]";
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Not recording n-grams for locale '%@' because a valid word coder could not be loaded.", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __28__TIDPNgramRecorder_records__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isStandaloneString])
        {
          v11 = [v10 wordString];
        }

        else
        {
          v12 = *(a1 + 32);
          v13 = [v10 wordEntryAligned];
          v11 = [v12 _normalizedWordEntryStringForWordEntry:v13];
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v7];
        v15 = [*(a1 + 32) wordCoder];
        v16 = [TIDPWordRecord word:v11 atPosition:v14 coder:v15];

        [v4 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) addObject:v4];
  v17 = *MEMORY[0x277D85DE8];
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPNgramRecorder;
  v3 = [(TIDPRecorder *)&v11 delegate];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D05308]);
    v5 = [(TIDPNgramRecorder *)self recordingKey];
    v6 = [v4 initWithKey:v5];

    v10.receiver = self;
    v10.super_class = TIDPNgramRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPNgramRecorder;
  v7 = [(TIDPRecorder *)&v9 delegate];

  return v7;
}

- (id)recordingKey
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.TextInput.WordNgrams.%lu.", -[TIDPNgramRecorderCascading n](self, "n")];
  v4 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

+ (void)enumerateNgramsFromSession:(id)a3 n:(unint64_t)a4 usingBlock:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 alignedEntries];
  v10 = [v9 count];

  if (v10 && v10 + 2 >= a4)
  {
    v31 = a4;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v12 = [[TIDPNgramWordEntryPair alloc] initWithWordString:@"<s>"];
    [v11 addObject:v12];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = v7;
    v13 = [v7 alignedEntries];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = [v18 originalWord];
          v20 = [v19 acceptedString];

          if (v20)
          {
            v21 = [[TIDPNgramWordEntryPair alloc] initWithWordString:v20 wordEntryAligned:v18];
            [v11 addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    v22 = [[TIDPNgramWordEntryPair alloc] initWithWordString:@"</s>"];
    [v11 addObject:v22];

    v23 = [v11 count];
    if (v23 >= v31)
    {
      v24 = v31;
    }

    else
    {
      v24 = v23;
    }

    v33 = 0;
    [v11 count];
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = v26;
      if (v33)
      {
        break;
      }

      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:v31];

      if (v24)
      {
        for (j = 0; j != v24; ++j)
        {
          if (j >= [v11 count] - 1)
          {
            break;
          }

          v29 = [v11 objectAtIndexedSubscript:v25 + j];
          [v26 addObject:v29];
        }
      }

      v8[2](v8, v26, &v33);
      ++v25;
    }

    while (v25 <= [v11 count] - v24);

    v7 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end