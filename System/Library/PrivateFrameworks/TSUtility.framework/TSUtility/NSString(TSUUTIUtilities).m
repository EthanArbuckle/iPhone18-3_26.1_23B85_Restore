@interface NSString(TSUUTIUtilities)
- (__CFString)tsu_UTIFilenameExtension;
- (__CFString)tsu_pathUTI;
- (uint64_t)tsu_conformsToAnyUTI:()TSUUTIUtilities;
- (uint64_t)tsu_pathConformsToUTI:()TSUUTIUtilities;
- (uint64_t)tsu_pathExtensionConformsToUTI:()TSUUTIUtilities;
@end

@implementation NSString(TSUUTIUtilities)

- (uint64_t)tsu_conformsToAnyUTI:()TSUUTIUtilities
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        if ([a1 tsu_conformsToUTI:*(*(&v9 + 1) + 8 * v8)])
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (__CFString)tsu_UTIFilenameExtension
{
  v1 = UTTypeCopyPreferredTagWithClass(a1, *MEMORY[0x277CC1F58]);

  return v1;
}

- (__CFString)tsu_pathUTI
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [a1 isAbsolutePath];
  v3 = *MEMORY[0x277CC1F58];
  v4 = [a1 pathExtension];
  if (v2)
  {
    AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(v3, v4, 0);
    if ([(__CFArray *)AllIdentifiersForTag count]>= 2)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = [(__CFArray *)AllIdentifiersForTag countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = 0;
        v10 = *v23;
        v11 = *MEMORY[0x277CC2058];
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(AllIdentifiersForTag);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            if (UTTypeConformsTo(v13, v11))
            {
              v8 = v13;
            }

            else
            {
              v9 = v13;
            }

            if (v8)
            {
              v14 = v9 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (!v14)
            {
              v21 = 1;
              v18 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
              if (v21)
              {
                v19 = v8;
              }

              else
              {
                v19 = v9;
              }

              if (v18)
              {
                v15 = v19;
              }

              else
              {
                v15 = v8;
              }

              goto LABEL_28;
            }
          }

          v7 = [(__CFArray *)AllIdentifiersForTag countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    v15 = [(__CFArray *)AllIdentifiersForTag objectAtIndex:0];
LABEL_28:
    v20 = v15;

    return v15;
  }

  else
  {
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v3, v4, 0);

    return PreferredIdentifierForTag;
  }
}

- (uint64_t)tsu_pathConformsToUTI:()TSUUTIUtilities
{
  v4 = [a1 pathExtension];

  return [v4 tsu_pathExtensionConformsToUTI:a3];
}

- (uint64_t)tsu_pathExtensionConformsToUTI:()TSUUTIUtilities
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], inTag, a3);
  v4 = PreferredIdentifierForTag;
  if (PreferredIdentifierForTag)
  {
    v5 = [(__CFString *)PreferredIdentifierForTag hasPrefix:@"dyn."]^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end