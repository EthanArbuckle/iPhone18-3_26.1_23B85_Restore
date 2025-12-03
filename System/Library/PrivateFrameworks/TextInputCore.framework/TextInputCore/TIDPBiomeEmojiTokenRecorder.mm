@interface TIDPBiomeEmojiTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)records;
@end

@implementation TIDPBiomeEmojiTokenRecorder

- (BOOL)report
{
  v28 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  records = [(TIDPBiomeEmojiTokenRecorder *)self records];
  v5 = [records countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(records);
        }

        word = [*(*(&v23 + 1) + 8 * i) word];
        lowercaseString = [word lowercaseString];

        v11 = [v3 objectForKey:lowercaseString];
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        [v3 setObject:v13 forKey:lowercaseString];
      }

      v6 = [records countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    delegate = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      recordingKey = [(TIDPBiomeEmojiTokenRecorder *)self recordingKey];
      [delegate2 recordTokenFrequency:v3 withLocale:recordingKeyLocaleSubstring withTokenType:recordingKey];
    }
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
  return v14 != 0;
}

- (id)records
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  v6 = [alignedEntries countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    v34 = *v42;
    do
    {
      v9 = 0;
      v35 = v7;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        originalWord = [v10 originalWord];
        editedEntry = [originalWord editedEntry];
        v13 = editedEntry;
        if (editedEntry)
        {
          originalWord2 = editedEntry;
        }

        else
        {
          originalWord2 = [v10 originalWord];
        }

        v15 = originalWord2;

        acceptedCandidate = [v15 acceptedCandidate];
        candidate = [acceptedCandidate candidate];
        _containsEmoji = [candidate _containsEmoji];

        if (_containsEmoji)
        {
          acceptedCandidate2 = [v15 acceptedCandidate];
          candidate2 = [acceptedCandidate2 candidate];
          alignedKeyboardInputs = [TIDPWordRecord word:candidate2];

          [v3 addObject:alignedKeyboardInputs];
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          alignedKeyboardInputs = [v10 alignedKeyboardInputs];
          v22 = [alignedKeyboardInputs countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v22)
          {
            v23 = v22;
            v36 = v15;
            v24 = *v38;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v38 != v24)
                {
                  objc_enumerationMutation(alignedKeyboardInputs);
                }

                v26 = *(*(&v37 + 1) + 8 * i);
                string = [v26 string];
                _containsEmoji2 = [string _containsEmoji];

                if (_containsEmoji2)
                {
                  string2 = [v26 string];
                  v30 = [TIDPWordRecord word:string2];

                  [v3 addObject:v30];
                }
              }

              v23 = [alignedKeyboardInputs countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v23);
            v8 = v34;
            v7 = v35;
            v15 = v36;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [alignedEntries countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  v31 = [v3 copy];
  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeEmojiTokenRecorder;
  delegate = [(TIDPRecorder *)&v9 delegate];

  if (!delegate)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeEmojiTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeEmojiTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v7 delegate];

  return delegate2;
}

@end