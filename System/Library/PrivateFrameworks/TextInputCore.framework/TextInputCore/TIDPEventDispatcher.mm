@interface TIDPEventDispatcher
- (TIDPEventDispatcher)initWithReportingDelegate:(id)delegate;
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
@end

@implementation TIDPEventDispatcher

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  v46 = *MEMORY[0x277D85DE8];
  endCopy = end;
  alignedCopy = aligned;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  alignedEntries = [alignedCopy alignedEntries];
  v9 = [alignedEntries countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(alignedEntries);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        originalWord = [v13 originalWord];
        if (!originalWord)
        {
          goto LABEL_22;
        }

        v15 = originalWord;
        originalWord2 = [v13 originalWord];
        acceptedString = [originalWord2 acceptedString];

        if (!acceptedString)
        {
LABEL_22:

          goto LABEL_23;
        }
      }

      v10 = [alignedEntries countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v19 = [(TIDPRecorder *)[TIDPUnknownTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  v20 = [(TIDPRecorder *)[TIDPNamedEntityTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  v35 = v19;
  [v18 addObject:v19];
  v34 = v20;
  [v18 addObject:v20];
  alignedEntries2 = [alignedCopy alignedEntries];
  lastObject = [alignedEntries2 lastObject];

  LODWORD(alignedEntries2) = [lastObject inSessionAlignmentConfidence];
  if (alignedEntries2 == 3)
  {
    v23 = [[TIDPNgramRecorderRandom alloc] initWithTypingSession:endCopy aligned:alignedCopy n:5];
    [v18 addObject:v23];
  }

  v33 = [(TIDPRecorder *)[TIDPBiomeUnigramTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:?];
  v24 = [(TIDPRecorder *)[TIDPBiomeEmojiTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:v24];
  v25 = [(TIDPRecorder *)[TIDPBiomeNamedEntityTokenRecorder alloc] initWithTypingSession:endCopy aligned:alignedCopy];
  [v18 addObject:v25];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * j);
        if (self->_reportingDelegate)
        {
          [*(*(&v36 + 1) + 8 * j) setDelegate:?];
        }

        [v31 report];
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }

LABEL_23:
  v32 = *MEMORY[0x277D85DE8];
}

- (TIDPEventDispatcher)initWithReportingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = [(TIDPEventDispatcher *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingDelegate, delegate);
  }

  return v7;
}

@end