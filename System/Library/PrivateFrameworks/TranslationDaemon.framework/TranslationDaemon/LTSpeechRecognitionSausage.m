@interface LTSpeechRecognitionSausage
@end

@implementation LTSpeechRecognitionSausage

id __83___LTSpeechRecognitionSausage_Daemon__initWithRecognition_wordConfidenceThreshold___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCAB68] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 confidence];
        v13 = v12;
        v14 = [v5 count];
        if ([v11 hasSpaceBefore])
        {
          [v4 appendString:@" "];
        }

        v15 = [v11 tokenName];
        [v4 appendString:v15];

        if ([v11 hasSpaceAfter])
        {
          [v4 appendString:@" "];
        }

        v9 = v9 + v13 / v14;
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v17 = [v4 stringByTrimmingCharactersInSet:v16];

  v18 = objc_alloc_init(MEMORY[0x277CE1BA0]);
  [v18 setText:v17];
  [v18 setConfidence:v9];
  [v18 setLowConfidence:v9 < *(a1 + 32)];
  v19 = [v5 lastObject];
  [v18 setHasSpaceAfter:{objc_msgSend(v19, "hasSpaceAfter")}];

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

id __83___LTSpeechRecognitionSausage_Daemon__initWithRecognition_wordConfidenceThreshold___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 alternatives];
  v3 = [v2 valueForKey:@"confidence"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"(%@)", v5];

  return v6;
}

id __76___LTSpeechRecognitionSausage_Osprey__initWithOspreySausage_choices_locale___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAB68] string];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v2 tokens];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 confidence];
        v12 = [v2 tokens];
        v13 = [v12 count];

        v14 = [v10 token_text];
        [v3 appendString:v14];

        if ([v10 add_space_after])
        {
          [v3 appendString:@" "];
        }

        v8 = v8 + (v11 / v13);
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v16 = [v3 stringByTrimmingCharactersInSet:v15];

  v17 = objc_alloc_init(MEMORY[0x277CE1BA0]);
  [v17 setText:v16];
  [v17 setConfidence:v8];
  [v17 setLowConfidence:v8 < _LTPreferencesServerASRWordLevelConfidenceThreshold(*(a1 + 32))];
  v18 = [v2 tokens];
  v19 = [v18 lastObject];
  [v17 setHasSpaceAfter:{objc_msgSend(v19, "add_space_after")}];

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

id __76___LTSpeechRecognitionSausage_Osprey__initWithOspreySausage_choices_locale___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 alternatives];
  v3 = [v2 valueForKey:@"confidence"];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [v4 stringWithFormat:@"(%@)", v5];

  return v6;
}

@end