@interface UIPasteboard(OFUIPasteboardExtension)
- (void)objectsForPasteboardType:()OFUIPasteboardExtension;
@end

@implementation UIPasteboard(OFUIPasteboardExtension)

- (void)objectsForPasteboardType:()OFUIPasteboardExtension
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a1 dataForPasteboardType:a3 inItemSet:{objc_msgSend(a1, "itemSetWithPasteboardTypes:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:"))}];
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v12 = 0;
        v10 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:&v12];
        if (v10 || (v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4]) != 0)
        {
          [v4 addObject:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

@end