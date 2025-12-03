@interface UIPasteboard(PCXPasteboardAdditions)
+ (uint64_t)pcxPasteboardWithName:()PCXPasteboardAdditions;
- (uint64_t)pcxClearContents;
- (uint64_t)pcxTypes;
@end

@implementation UIPasteboard(PCXPasteboardAdditions)

+ (uint64_t)pcxPasteboardWithName:()PCXPasteboardAdditions
{
  if (PCInfo_IsUnitTesting())
  {
    if (pcxPasteboardWithName__s_makePasteboardOnce != -1)
    {
      +[UIPasteboard(PCXPasteboardAdditions) pcxPasteboardWithName:];
    }

    return pcxPasteboardWithName__s_utPasteboard;
  }

  else
  {
    v5 = MEMORY[0x277D75810];

    return [v5 pasteboardWithName:a3 create:1];
  }
}

- (uint64_t)pcxTypes
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = [self pasteboardTypesForItemSet:0];
  v2 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v15 + 1) + 8 * j);
              if (([v2 containsObject:v12] & 1) == 0)
              {
                [v2 addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:{objc_msgSend(v2, "array")}];

  return v13;
}

- (uint64_t)pcxClearContents
{
  [self setItems:MEMORY[0x277CBEBF8]];

  return [self changeCount];
}

@end