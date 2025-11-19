@interface TIDPUnknownTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPUnknownTokenRecorder

- (BOOL)report
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v30 = self;
  [(TIDPRecorder *)self characterExplodedRecords];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v28 = v3;
    v6 = 0;
    v7 = *v36;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * v8);
        v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v31 + 1) + 8 * i) codedWord];
              if (v17)
              {
                [v11 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v14);
        }

        v18 = [v12 firstObject];
        v6 = [v18 coderVersion];

        v19 = [v11 copy];
        if ([v19 count])
        {
          v20 = [v6 UUIDString];
          v21 = v20;
          v22 = @"UNKNOWN_VERSION";
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          v24 = [(TIDPUnknownTokenRecorder *)v30 delegate];
          v39 = @"VersionHash";
          v40 = v23;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

          [v24 record:v19 metadata:v25];
        }

        ++v8;
        v9 = v6;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v5);

    v3 = v28;
  }

  objc_autoreleasePoolPop(v3);
  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)records
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(TIDPRecorder *)self characterCoder];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(TIDPRecorder *)self typingSessionAligned];
    v6 = [v5 alignedEntries];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v9;
        v11 = [(TIDPRecorder *)self typingSessionAligned];
        v12 = [v11 alignedEntries];
        v9 = [v12 objectAtIndexedSubscript:v8];

        v13 = [v9 originalWord];
        LODWORD(v12) = [(TIDPRecorder *)self isWordEntryReallyOOV:v13 caseSensitive:0];

        if (v12)
        {
          v14 = [v9 originalWord];
          v15 = [v14 acceptedString];
          v16 = [(TIDPRecorder *)self characterCoder];
          v17 = [TIDPWordRecord word:v15 atPosition:&unk_28400BEB0 coder:v16];

          [v4 addObject:v17];
        }

        ++v8;
        v18 = [(TIDPRecorder *)self typingSessionAligned];
        v19 = [v18 alignedEntries];
        v20 = [v19 count];
      }

      while (v8 < v20);
    }

    v21 = [v4 copy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      v25 = 136315394;
      v26 = "[TIDPUnknownTokenRecorder records]";
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Not recording unknown tokens for locale '%@' because a valid character coder could not be loaded.", &v25, 0x16u);
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)recordingKey
{
  v2 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v3 = [@"com.apple.TextInput.UnknownToken." stringByAppendingString:v2];

  return v3;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPUnknownTokenRecorder;
  v3 = [(TIDPRecorder *)&v11 delegate];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D05308]);
    v5 = [(TIDPUnknownTokenRecorder *)self recordingKey];
    v6 = [v4 initWithKey:v5];

    v10.receiver = self;
    v10.super_class = TIDPUnknownTokenRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPUnknownTokenRecorder;
  v7 = [(TIDPRecorder *)&v9 delegate];

  return v7;
}

@end