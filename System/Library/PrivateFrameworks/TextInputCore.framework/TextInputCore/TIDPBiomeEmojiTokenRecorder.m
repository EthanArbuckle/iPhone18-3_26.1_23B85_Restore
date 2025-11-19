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
  v4 = [(TIDPBiomeEmojiTokenRecorder *)self records];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v23 + 1) + 8 * i) word];
        v10 = [v9 lowercaseString];

        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        [v3 setObject:v13 forKey:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    v15 = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(TIDPBiomeEmojiTokenRecorder *)self delegate];
      v18 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      v19 = [(TIDPBiomeEmojiTokenRecorder *)self recordingKey];
      [v17 recordTokenFrequency:v3 withLocale:v18 withTokenType:v19];
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
  v4 = [(TIDPRecorder *)self typingSessionAligned];
  v5 = [v4 alignedEntries];

  v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
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

        v16 = [v15 acceptedCandidate];
        v17 = [v16 candidate];
        v18 = [v17 _containsEmoji];

        if (v18)
        {
          v19 = [v15 acceptedCandidate];
          v20 = [v19 candidate];
          v21 = [TIDPWordRecord word:v20];

          [v3 addObject:v21];
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v21 = [v10 alignedKeyboardInputs];
          v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v37 + 1) + 8 * i);
                v27 = [v26 string];
                v28 = [v27 _containsEmoji];

                if (v28)
                {
                  v29 = [v26 string];
                  v30 = [TIDPWordRecord word:v29];

                  [v3 addObject:v30];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
      v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
  v3 = [(TIDPRecorder *)&v9 delegate];

  if (!v3)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeEmojiTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeEmojiTokenRecorder;
  v5 = [(TIDPRecorder *)&v7 delegate];

  return v5;
}

@end