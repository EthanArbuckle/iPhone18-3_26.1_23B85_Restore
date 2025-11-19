@interface SACardSnippet(SiriUIUUFRShowable)
- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable;
@end

@implementation SACardSnippet(SiriUIUUFRShowable)

- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = a1;
  v33.super_class = &off_287A263A8;
  v5 = objc_msgSendSuper2(&v33, sel__uufrShownRequestedByInstrumentationManager_, v4);
  v6 = [a1 aceId];
  v7 = [v4 cardIDforSnippetAceID:v6];

  if (v7)
  {
    v8 = [a1 aceId];
    v9 = [v4 cardIDforSnippetAceID:v8];
    [v5 setViewID:v9];
  }

  else
  {
    v8 = [a1 siriui_card];
    v9 = [v8 backingCard];
    v10 = [v9 cardId];
    [v5 setViewID:v10];
  }

  v11 = [a1 siriui_card];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [a1 siriui_card];
    v14 = [v13 backingCard];
    v15 = [v14 cardSections];
    v16 = [v15 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [MEMORY[0x277CBEB18] array];
      v18 = [v16 cardSections];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            v24 = [v23 resultIdentifier];

            if (v24)
            {
              v25 = [v23 resultIdentifier];
              [v17 addObject:v25];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v20);
      }

      v26 = objc_alloc_init(MEMORY[0x277D5A8C8]);
      [v26 setResultIdentifiers:v17];
      [v5 setGridCardSection:v26];
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

@end