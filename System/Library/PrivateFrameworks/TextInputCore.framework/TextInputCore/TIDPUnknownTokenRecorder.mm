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
  selfCopy = self;
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
    coderVersion = 0;
    v7 = *v36;
    do
    {
      v8 = 0;
      v9 = coderVersion;
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

              codedWord = [*(*(&v31 + 1) + 8 * i) codedWord];
              if (codedWord)
              {
                [v11 addObject:codedWord];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v14);
        }

        firstObject = [v12 firstObject];
        coderVersion = [firstObject coderVersion];

        v19 = [v11 copy];
        if ([v19 count])
        {
          uUIDString = [coderVersion UUIDString];
          v21 = uUIDString;
          v22 = @"UNKNOWN_VERSION";
          if (uUIDString)
          {
            v22 = uUIDString;
          }

          v23 = v22;

          delegate = [(TIDPUnknownTokenRecorder *)selfCopy delegate];
          v39 = @"VersionHash";
          v40 = v23;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

          [delegate record:v19 metadata:v25];
        }

        ++v8;
        v9 = coderVersion;
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
  characterCoder = [(TIDPRecorder *)self characterCoder];

  if (characterCoder)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
    alignedEntries = [typingSessionAligned alignedEntries];
    v7 = [alignedEntries count];

    if (v7)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v9;
        typingSessionAligned2 = [(TIDPRecorder *)self typingSessionAligned];
        alignedEntries2 = [typingSessionAligned2 alignedEntries];
        v9 = [alignedEntries2 objectAtIndexedSubscript:v8];

        originalWord = [v9 originalWord];
        LODWORD(alignedEntries2) = [(TIDPRecorder *)self isWordEntryReallyOOV:originalWord caseSensitive:0];

        if (alignedEntries2)
        {
          originalWord2 = [v9 originalWord];
          acceptedString = [originalWord2 acceptedString];
          characterCoder2 = [(TIDPRecorder *)self characterCoder];
          v17 = [TIDPWordRecord word:acceptedString atPosition:&unk_28400BEB0 coder:characterCoder2];

          [v4 addObject:v17];
        }

        ++v8;
        typingSessionAligned3 = [(TIDPRecorder *)self typingSessionAligned];
        alignedEntries3 = [typingSessionAligned3 alignedEntries];
        v20 = [alignedEntries3 count];
      }

      while (v8 < v20);
    }

    v21 = [v4 copy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      v25 = 136315394;
      v26 = "[TIDPUnknownTokenRecorder records]";
      v27 = 2112;
      v28 = recordingKeyLocaleSubstring;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Not recording unknown tokens for locale '%@' because a valid character coder could not be loaded.", &v25, 0x16u);
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)recordingKey
{
  recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v3 = [@"com.apple.TextInput.UnknownToken." stringByAppendingString:recordingKeyLocaleSubstring];

  return v3;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPUnknownTokenRecorder;
  delegate = [(TIDPRecorder *)&v11 delegate];

  if (!delegate)
  {
    v4 = objc_alloc(MEMORY[0x277D05308]);
    recordingKey = [(TIDPUnknownTokenRecorder *)self recordingKey];
    v6 = [v4 initWithKey:recordingKey];

    v10.receiver = self;
    v10.super_class = TIDPUnknownTokenRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPUnknownTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v9 delegate];

  return delegate2;
}

@end