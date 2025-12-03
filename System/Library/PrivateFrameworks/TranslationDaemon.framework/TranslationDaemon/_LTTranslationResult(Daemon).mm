@interface _LTTranslationResult(Daemon)
+ (id)passthroughResultWithString:()Daemon sanitizedString:locale:;
+ (id)resultWithLocale:()Daemon translations:;
- (void)updateAlignmentWithSourceSpans:()Daemon offlineTargetSpans:;
@end

@implementation _LTTranslationResult(Daemon)

+ (id)passthroughResultWithString:()Daemon sanitizedString:locale:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CE1C18];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 setLocale:v8];

  v12 = [objc_alloc(MEMORY[0x277CE1BF8]) initWithFormattedString:v10 sanitizedFormattedString:v9 confidence:0 lowConfidence:0 romanization:0 tokens:0 preToPostITN:1000.0];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v11 setTranslations:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)resultWithLocale:()Daemon translations:
{
  v5 = MEMORY[0x277CE1C18];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setLocale:v7];

  [v8 setTranslations:v6];
  [v8 setIdentifier:@"NO_IDENTIFIER"];

  return v8;
}

- (void)updateAlignmentWithSourceSpans:()Daemon offlineTargetSpans:
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] && objc_msgSend(v7, "count") && NSClassFromString(&cfstr_Emtprojection.isa))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          identifier = [v14 identifier];
          [dictionary setObject:v14 forKeyedSubscript:identifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    translations = [self translations];
    firstObject = [translations firstObject];
    formattedString = [firstObject formattedString];

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke;
    v26 = &unk_2789B7D98;
    v27 = dictionary;
    v28 = formattedString;
    v19 = formattedString;
    v20 = dictionary;
    v21 = [v7 _ltCompactMap:&v23];
    [self setAlignments:{v21, v23, v24, v25, v26}];
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end