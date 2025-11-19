@interface TIDPEventDispatcher
- (TIDPEventDispatcher)initWithReportingDelegate:(id)a3;
- (void)sessionDidEnd:(id)a3 aligned:(id)a4;
@end

@implementation TIDPEventDispatcher

- (void)sessionDidEnd:(id)a3 aligned:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [v7 alignedEntries];
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 originalWord];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14;
        v16 = [v13 originalWord];
        v17 = [v16 acceptedString];

        if (!v17)
        {
LABEL_22:

          goto LABEL_23;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v19 = [(TIDPRecorder *)[TIDPUnknownTokenRecorder alloc] initWithTypingSession:v6 aligned:v7];
  v20 = [(TIDPRecorder *)[TIDPNamedEntityTokenRecorder alloc] initWithTypingSession:v6 aligned:v7];
  v35 = v19;
  [v18 addObject:v19];
  v34 = v20;
  [v18 addObject:v20];
  v21 = [v7 alignedEntries];
  v22 = [v21 lastObject];

  LODWORD(v21) = [v22 inSessionAlignmentConfidence];
  if (v21 == 3)
  {
    v23 = [[TIDPNgramRecorderRandom alloc] initWithTypingSession:v6 aligned:v7 n:5];
    [v18 addObject:v23];
  }

  v33 = [(TIDPRecorder *)[TIDPBiomeUnigramTokenRecorder alloc] initWithTypingSession:v6 aligned:v7];
  [v18 addObject:?];
  v24 = [(TIDPRecorder *)[TIDPBiomeEmojiTokenRecorder alloc] initWithTypingSession:v6 aligned:v7];
  [v18 addObject:v24];
  v25 = [(TIDPRecorder *)[TIDPBiomeNamedEntityTokenRecorder alloc] initWithTypingSession:v6 aligned:v7];
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

- (TIDPEventDispatcher)initWithReportingDelegate:(id)a3
{
  v5 = a3;
  v6 = [(TIDPEventDispatcher *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingDelegate, a3);
  }

  return v7;
}

@end