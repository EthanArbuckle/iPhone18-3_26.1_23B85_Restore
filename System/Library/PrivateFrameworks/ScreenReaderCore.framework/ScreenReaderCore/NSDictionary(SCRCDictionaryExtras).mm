@interface NSDictionary(SCRCDictionaryExtras)
- (void)scrc_deepMutableCopyWithZone:()SCRCDictionaryExtras;
@end

@implementation NSDictionary(SCRCDictionaryExtras)

- (void)scrc_deepMutableCopyWithZone:()SCRCDictionaryExtras
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277CBEB38] "allocWithZone:{"initWithCapacity:", objc_msgSend(self, "count")}")];
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [selfCopy objectForKey:{v11, v18}];
          v13 = SCRCDeepMutableCopyClasses();
          v14 = [v13 containsObjectClass:v12];

          if (v14)
          {
            v15 = [v12 scrc_deepMutableCopyWithZone:a3];

            v12 = v15;
          }

          [v5 setObject:v12 forKey:v11];
        }

        v8 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v16 = v5;
  }

  return v5;
}

@end