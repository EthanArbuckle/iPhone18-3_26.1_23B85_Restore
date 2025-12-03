@interface NSSet(SCRCSetExtras)
- (uint64_t)containsObjectClass:()SCRCSetExtras;
- (void)scrc_deepMutableCopyWithZone:()SCRCSetExtras;
@end

@implementation NSSet(SCRCSetExtras)

- (void)scrc_deepMutableCopyWithZone:()SCRCSetExtras
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277CBEB58] "allocWithZone:{"initWithCapacity:", objc_msgSend(self, "count")}")];
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

          if (!v13 || (v14 = [v11 scrc_deepMutableCopyWithZone:a3], objc_msgSend(v5, "addObject:", v14), !v14))
          {
            [v5 addObject:v11];
            v14 = 0;
          }

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

- (uint64_t)containsObjectClass:()SCRCSetExtras
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (objc_opt_isKindOfClass())
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end