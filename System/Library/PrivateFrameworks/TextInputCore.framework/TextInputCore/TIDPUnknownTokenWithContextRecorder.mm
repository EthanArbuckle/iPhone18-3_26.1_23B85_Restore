@interface TIDPUnknownTokenWithContextRecorder
- (id)recordingKey;
- (id)records;
@end

@implementation TIDPUnknownTokenWithContextRecorder

- (id)records
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  typingSessionAligned = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries = [typingSessionAligned alignedEntries];

  typingSessionAligned2 = [(TIDPRecorder *)self typingSessionAligned];
  alignedEntries2 = [typingSessionAligned2 alignedEntries];
  v8 = [alignedEntries2 indexesOfObjectsPassingTest:&__block_literal_global_1889];

  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__TIDPUnknownTokenWithContextRecorder_records__block_invoke_2;
  v15[3] = &unk_278730430;
  v16 = v9;
  v17 = alignedEntries;
  v18 = v3;
  v10 = v3;
  v11 = alignedEntries;
  v12 = v9;
  [v8 enumerateIndexesUsingBlock:v15];
  v13 = [v10 copy];

  return v13;
}

uint64_t __46__TIDPUnknownTokenWithContextRecorder_records__block_invoke_2(id *a1, unint64_t a2)
{
  v4 = a1[4];
  if (a2)
  {
    v5 = [a1[5] objectAtIndexedSubscript:a2 - 1];
    v6 = [v5 originalWord];
    v7 = [v6 acceptedString];
    [v4 addObject:v7];
  }

  else
  {
    [a1[4] addObject:@"<s>"];
  }

  v8 = a1[4];
  v9 = [a1[5] objectAtIndexedSubscript:a2];
  v10 = [v9 originalWord];
  v11 = [v10 acceptedString];
  [v8 addObject:v11];

  v12 = [a1[5] count] - 1;
  v13 = a1[4];
  if (v12 <= a2)
  {
    [a1[4] addObject:@"</s>"];
  }

  else
  {
    v14 = [a1[5] objectAtIndexedSubscript:a2 + 1];
    v15 = [v14 originalWord];
    v16 = [v15 acceptedString];
    [v13 addObject:v16];
  }

  if ([a1[4] count])
  {
    v17 = 0;
    do
    {
      v18 = [a1[4] objectAtIndexedSubscript:v17];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:++v17];
      v20 = [TIDPWordRecord word:v18 atPosition:v19];

      [a1[6] addObject:v20];
    }

    while (v17 < [a1[4] count]);
  }

  v21 = a1[4];

  return [v21 removeAllObjects];
}

uint64_t __46__TIDPUnknownTokenWithContextRecorder_records__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 originalWord];
  v3 = [v2 isFromStaticLexicon];

  return v3 ^ 1u;
}

- (id)recordingKey
{
  recordingKeyLocaleSubstring = [(TIDPRecorder *)self recordingKeyLocaleSubstring];
  v3 = [@"com.apple.TextInput.UnknownTokenWithContext." stringByAppendingString:recordingKeyLocaleSubstring];

  return v3;
}

@end