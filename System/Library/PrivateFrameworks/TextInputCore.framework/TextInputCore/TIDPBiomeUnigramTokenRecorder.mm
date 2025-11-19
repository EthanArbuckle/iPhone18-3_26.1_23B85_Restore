@interface TIDPBiomeUnigramTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)records;
@end

@implementation TIDPBiomeUnigramTokenRecorder

- (BOOL)report
{
  v28 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(TIDPBiomeUnigramTokenRecorder *)self records];
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

        v9 = *(*(&v23 + 1) + 8 * i);
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

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    v15 = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
      v18 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      v19 = [(TIDPBiomeUnigramTokenRecorder *)self recordingKey];
      [v17 recordTokenFrequency:v3 withLocale:v18 withTokenType:v19];
    }
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
  return v14 != 0;
}

- (id)records
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = [(TIDPRecorder *)self typingSessionAligned];
  v5 = [v4 alignedEntries];

  v6 = [v5 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    v9 = &OBJC_METACLASS___TICoreAnalyticsEventController;
    v49 = *v64;
    v50 = v5;
    do
    {
      v10 = 0;
      v51 = v7;
      do
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v63 + 1) + 8 * v10);
        v12 = [v11 originalWord];
        v13 = [v12 editedEntry];
        v14 = v13;
        v56 = v10;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [v11 originalWord];
        }

        v16 = v15;

        v17 = v16;
        v18 = [v17 acceptedString];
        v19 = [v18 length];

        v20 = v17;
        if (v19)
        {
          v21 = [v17 acceptedString];
          v22 = [v21 _containsEmoji];

          v20 = v17;
          if ((v22 & 1) == 0)
          {
            v23 = [v17 keyboardState];
            v24 = [v23 textInputTraits];
            v55 = v17;
            v25 = [v24 autocorrectionType];

            v26 = v25 == 1;
            v17 = v55;
            if (v26)
            {
              goto LABEL_30;
            }

            v27 = [v55 acceptedString];
            v62 = 8217;
            v28 = [MEMORY[0x277CCACA8] stringWithCharacters:&v62 length:1];
            [v27 rangeOfString:v28];
            v53 = v28;
            if (v29)
            {
              v30 = [v27 stringByReplacingOccurrencesOfString:v28 withString:@"'"];

              v27 = v30;
            }

            v31 = [MEMORY[0x277CCAB50] punctuationCharacterSet];
            [v31 removeCharactersInString:@"'-"];
            v52 = v31;
            v32 = [v27 stringByTrimmingCharactersInSet:v31];

            v54 = v32;
            if ([v32 length])
            {
              v33 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v34 = [v32 componentsSeparatedByCharactersInSet:v33];

              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              obj = v34;
              v35 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v59;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v59 != v37)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v39 = *(*(&v58 + 1) + 8 * i);
                    if ([v39 length])
                    {
                      v40 = objc_alloc_init(&v9[12]);
                      [v40 setAcceptedString:v39];
                      if ([(TIDPRecorder *)self isWordEntryReallyOOV:v40 caseSensitive:1])
                      {
                        [v39 lowercaseString];
                        v41 = self;
                        v42 = v3;
                        v44 = v43 = v9;
                        v45 = [TIDPWordRecord word:v44];

                        v9 = v43;
                        v3 = v42;
                        self = v41;
                      }

                      else
                      {
                        v45 = [TIDPWordRecord word:v39];
                      }

                      [v3 addObject:v45];
                    }
                  }

                  v36 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
                }

                while (v36);
              }

              v5 = v50;
              v7 = v51;
              v8 = v49;
              v17 = v55;
            }

            v20 = v54;
          }
        }

LABEL_30:
        v10 = v56 + 1;
      }

      while (v56 + 1 != v7);
      v7 = [v5 countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v7);
  }

  v46 = [v3 copy];
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)delegate
{
  v9.receiver = self;
  v9.super_class = TIDPBiomeUnigramTokenRecorder;
  v3 = [(TIDPRecorder *)&v9 delegate];

  if (!v3)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeUnigramTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeUnigramTokenRecorder;
  v5 = [(TIDPRecorder *)&v7 delegate];

  return v5;
}

@end