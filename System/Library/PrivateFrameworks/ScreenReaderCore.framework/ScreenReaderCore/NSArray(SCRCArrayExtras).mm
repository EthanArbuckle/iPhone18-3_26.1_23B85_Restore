@interface NSArray(SCRCArrayExtras)
- (void)scrc_deepMutableCopyWithZone:()SCRCArrayExtras;
@end

@implementation NSArray(SCRCArrayExtras)

- (void)scrc_deepMutableCopyWithZone:()SCRCArrayExtras
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277CBEB18] "allocWithZone:{"initWithCapacity:", objc_msgSend(self, "count")}")];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = SCRCDeepMutableCopyClasses();
          v13 = [v12 containsObjectClass:{v11, v17}];

          if (v13)
          {
            v14 = [v11 scrc_deepMutableCopyWithZone:a3];

            v11 = v14;
          }

          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v15 = v5;
  }

  return v5;
}

@end