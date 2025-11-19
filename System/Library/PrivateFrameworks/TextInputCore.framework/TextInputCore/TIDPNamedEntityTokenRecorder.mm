@interface TIDPNamedEntityTokenRecorder
- (BOOL)report;
- (id)delegate;
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPNamedEntityTokenRecorder

- (BOOL)report
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(TIDPRecorder *)self characterExplodedRecords];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v25;
    do
    {
      v5 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * v5);
        v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [(TIDPNamedEntityTokenRecorder *)self records];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v20 + 1) + 8 * v12) toDPWordRecord];
              [v7 addObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v14 = [v7 copy];
        if ([v14 count])
        {
          v15 = [(TIDPNamedEntityTokenRecorder *)self delegate];
          [v15 record:v14];
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)records
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(TIDPRecorder *)self typingSessionAligned];
  v5 = [v4 alignedEntries];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v8;
      v11 = v7;
      v12 = [(TIDPRecorder *)self typingSessionAligned];
      v13 = [v12 alignedEntries];
      v7 = [v13 objectAtIndexedSubscript:v9];

      v14 = [v7 originalWord];
      v8 = [v14 acceptedString];

      v15 = [v7 originalWord];
      v16 = [v15 acceptedCandidate];

      v17 = v16;
      LODWORD(v16) = [v17 sourceMask] & 8;
      LODWORD(v16) = v16 | [v17 sourceMask] & 0x10;

      if (v16)
      {
        v18 = [TIDPWordRecord word:v8 atPosition:&unk_28400BE20];
        [v3 addObject:v18];
      }

      ++v9;
      v19 = [(TIDPRecorder *)self typingSessionAligned];
      v20 = [v19 alignedEntries];
      v21 = [v20 count];
    }

    while (v9 < v21);
  }

  v22 = [v3 copy];

  return v22;
}

- (id)recordingKey
{
  v2 = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v3 = [@"com.apple.TextInput.AddressBookNameMatch." stringByAppendingString:v2];

  return v3;
}

- (id)delegate
{
  v11.receiver = self;
  v11.super_class = TIDPNamedEntityTokenRecorder;
  v3 = [(TIDPRecorder *)&v11 delegate];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D05320]);
    v5 = [(TIDPNamedEntityTokenRecorder *)self recordingKey];
    v6 = [v4 initWithKey:v5];

    v10.receiver = self;
    v10.super_class = TIDPNamedEntityTokenRecorder;
    [(TIDPRecorder *)&v10 setDelegate:v6];
  }

  v9.receiver = self;
  v9.super_class = TIDPNamedEntityTokenRecorder;
  v7 = [(TIDPRecorder *)&v9 delegate];

  return v7;
}

@end