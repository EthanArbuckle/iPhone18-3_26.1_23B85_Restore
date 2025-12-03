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
  records = [(TIDPBiomeUnigramTokenRecorder *)self records];
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

        v9 = *(*(&v23 + 1) + 8 * i);
        word = [v9 word];
        v11 = [v3 objectForKey:word];

        if (v11)
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        }

        else
        {
          v12 = [MEMORY[0x277CCABB0] numberWithInt:1];
        }

        word2 = [v9 word];
        [v3 setObject:v12 forKey:word2];
      }

      v6 = [records countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [v3 count];
  if (v14)
  {
    delegate = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(TIDPBiomeUnigramTokenRecorder *)self delegate];
      recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
      recordingKey = [(TIDPBiomeUnigramTokenRecorder *)self recordingKey];
      [delegate2 recordTokenFrequency:v3 withLocale:recordingKeyLocaleSubstring withTokenType:recordingKey];
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
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  v6 = [alignedEntries countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    v9 = &OBJC_METACLASS___TICoreAnalyticsEventController;
    v49 = *v64;
    v50 = alignedEntries;
    do
    {
      v10 = 0;
      v51 = v7;
      do
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v11 = *(*(&v63 + 1) + 8 * v10);
        originalWord = [v11 originalWord];
        editedEntry = [originalWord editedEntry];
        v14 = editedEntry;
        v56 = v10;
        if (editedEntry)
        {
          originalWord2 = editedEntry;
        }

        else
        {
          originalWord2 = [v11 originalWord];
        }

        v16 = originalWord2;

        v17 = v16;
        acceptedString = [v17 acceptedString];
        v19 = [acceptedString length];

        v20 = v17;
        if (v19)
        {
          acceptedString2 = [v17 acceptedString];
          _containsEmoji = [acceptedString2 _containsEmoji];

          v20 = v17;
          if ((_containsEmoji & 1) == 0)
          {
            keyboardState = [v17 keyboardState];
            textInputTraits = [keyboardState textInputTraits];
            v55 = v17;
            autocorrectionType = [textInputTraits autocorrectionType];

            v26 = autocorrectionType == 1;
            v17 = v55;
            if (v26)
            {
              goto LABEL_30;
            }

            acceptedString3 = [v55 acceptedString];
            v62 = 8217;
            v28 = [MEMORY[0x277CCACA8] stringWithCharacters:&v62 length:1];
            [acceptedString3 rangeOfString:v28];
            v53 = v28;
            if (v29)
            {
              v30 = [acceptedString3 stringByReplacingOccurrencesOfString:v28 withString:@"'"];

              acceptedString3 = v30;
            }

            punctuationCharacterSet = [MEMORY[0x277CCAB50] punctuationCharacterSet];
            [punctuationCharacterSet removeCharactersInString:@"'-"];
            v52 = punctuationCharacterSet;
            v32 = [acceptedString3 stringByTrimmingCharactersInSet:punctuationCharacterSet];

            v54 = v32;
            if ([v32 length])
            {
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v34 = [v32 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

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
                        selfCopy = self;
                        v42 = v3;
                        v44 = v43 = v9;
                        v45 = [TIDPWordRecord word:v44];

                        v9 = v43;
                        v3 = v42;
                        self = selfCopy;
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

              alignedEntries = v50;
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
      v7 = [alignedEntries countByEnumeratingWithState:&v63 objects:v68 count:16];
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
  delegate = [(TIDPRecorder *)&v9 delegate];

  if (!delegate)
  {
    v4 = objc_alloc_init(TIDPBiomeReportingDelegate);
    v8.receiver = self;
    v8.super_class = TIDPBiomeUnigramTokenRecorder;
    [(TIDPRecorder *)&v8 setDelegate:v4];
  }

  v7.receiver = self;
  v7.super_class = TIDPBiomeUnigramTokenRecorder;
  delegate2 = [(TIDPRecorder *)&v7 delegate];

  return delegate2;
}

@end